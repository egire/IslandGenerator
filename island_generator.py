#
# Island Generator.py - Generates islands using displacement and density maps (Maya 2015/Windows 7)
#
# The MIT License (MIT)
# Copyright (c) 2016 Eric Gire
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

import maya.cmds as cmds
import maya.OpenMaya as om
import sys, os, math, random

def generate_island():
    
    # Island options
    height_map = cmds.textField( 'ui_heightmap', q = True, tx = True )
    island_width = cmds.intField( 'ui_island_width', q = True, v = True )
    island_height = cmds.intField( 'ui_island_height', q = True, v = True )
    island_divisions = cmds.intField( 'ui_island_divisions', q = True, v = True )
    terrain = generate_terrain( height_map, island_width, island_divisions, island_height )
    
    # Flora options
    density_map = cmds.textField( 'ui_densitymap', q = True, tx = True )
    flora_density_bias = cmds.floatField( 'ui_flora_density_bias', q = True, v = True )
    flora_x_jitter = cmds.floatField( 'ui_flora_x_jitter', q = True, v = True )
    flora_z_jitter = cmds.floatField( 'ui_flora_z_jitter', q = True, v = True )
    
    # Ocean options
    ocean_level_offset = cmds.floatSliderGrp( 'ui_ocean_level_offset', q = True, v = True )
    
    # Civilization options
    civ_map = cmds.textField( 'ui_civmap', q = True, tx = True )
    civ_density_bias = cmds.floatField( 'ui_civ_density_bias', q = True, v = True )
    
    # Layer options
    generate_ocean_layer = cmds.checkBox( 'ui_generate_ocean', q = True, v = True )
    generate_flora_layer = cmds.checkBox( 'ui_generate_flora', q = True, v = True )
    generate_civil_layer = cmds.checkBox( 'ui_generate_civil', q = True, v = True )
    
    # Normalize Values
    absolute_ocean_level = ocean_level_offset * island_height - island_height / 2.0
    
    # TODO: Put all vars here
    if generate_flora_layer : flora = generate_flora( density_map, terrain, flora_density_bias, [flora_x_jitter, flora_z_jitter] )
    if generate_civil_layer : civil = generate_civilization( civ_map, terrain, civ_density_bias )
    if generate_ocean_layer : ocean = generate_ocean( island_width, absolute_ocean_level )
    
def get_heightmap():
    imageFilter = "Images (*.jpg *.jpeg *.png *.tiff *.tif *.psd)"
    heightmap = cmds.fileDialog2( fileMode=1, fileFilter=imageFilter, dialogStyle=2, cap = "Select Heightmap..." )
    cmds.textField( 'ui_heightmap', e = True, tx = heightmap[0] )
    icon = create_icon( heightmap[0], (300, 300) )
    cmds.symbolButton( 'ui_heightmap_preview', e=True, image = icon, ann = icon, h = 300 )
    cmds.button( 'ui_generate_island', edit = True, enable = True )
    
def get_densitymap():
    imageFilter = "Images (*.jpg *.jpeg *.png *.tiff *.tif *.psd)"
    densitymap = cmds.fileDialog2( fileMode=1, fileFilter=imageFilter, dialogStyle=2, cap = "Select Heightmap..." )
    cmds.textField( 'ui_densitymap', e = True, tx = densitymap[0] )
    icon = create_icon( densitymap[0], (300, 300) )
    cmds.symbolButton( 'ui_densitymap_preview', e=True, image = icon, ann = icon, h = 300 )
    
def get_civmap():
    imageFilter = "Images (*.jpg *.jpeg *.png *.tiff *.tif *.psd)"
    civmap = cmds.fileDialog2( fileMode=1, fileFilter=imageFilter, dialogStyle=2, cap = "Select Civmap..." )
    cmds.textField( 'ui_civmap', e = True, tx = civmap[0] )
    icon = create_icon( civmap[0], (300, 300) )
    cmds.symbolButton( 'ui_civmap_preview', e=True, image = icon, ann = icon, h = 300 )
    
def ui_state_flora( enabled = True ):
    cmds.symbolButton( 'ui_densitymap_preview', edit = True, enable = enabled )
    cmds.button( 'ui_dm_browse', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_density_bias', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_x_jitter', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_z_jitter', edit = True, enable = enabled )
    
def ui_state_civs( enabled = True ):
    cmds.symbolButton( 'ui_civmap_preview', edit = True, enable = enabled )
    cmds.button( 'ui_cm_browse', edit = True, enable = enabled )
    cmds.floatField( 'ui_civ_density_bias', edit = True, enable = enabled )

def ui_state_ocean( enabled = True ):
    cmds.floatSliderGrp( 'ui_ocean_level_offset', edit = True, enable = enabled )

def generate_terrain( height_map = '', width = 10, divisions = 100, depth = 10 ):
    hm = create_file_texture( height_map )
    terrain = cmds.polyPlane( n = 'Terrain', w = width, h = width, sx = divisions, sy = divisions, ax = [ 0, 1, 0 ] )
    
    dim_max = divisions + 1
    
    for y in xrange( dim_max ):
        cmds.refresh()
        for x in xrange( dim_max ):
            pixel = cmds.colorAtPoint( hm, o='RGB', u=x/float( divisions ), v=y/float( divisions ) )
            index = y * dim_max + x
            cmds.select( terrain[0] + '.vtx[' + str( index ) + ']' )
            cmds.move( 0, (0.5-pixel[0])*-depth if pixel[0] < 0.5 else (pixel[0] - 0.5)*depth, 0, r=True )
    smooth_terrain = cmds.duplicate( terrain[0], n = terrain[0] + '_smooth' )
    
    # Smooth Mesh
    cmds.polySmooth( smooth_terrain, mth=0, sdt=2, ovb=1, ofb=3, ofc=0, ost=1, ocr=0, dv=1, bnr=1,\
                   c=1, kb=1, ksb=1, khe=0, kt=1, kmb=1, suv=1, peh=0, sl=1, dpe=1, ps=0.1, ro=1, ch=1 )
    # Hide original mesh
    cmds.hide( terrain )
    # Maintain original mesh
    return terrain[0]

def generate_ocean( width = 10, ocean_level = 0.0 ):
    ocean = cmds.polyPlane( n = 'Ocean', w = width, h = width, sx = 1, sy = 1, ax = [0, 1, 0] )
    oceanShader = create_shader( 'oceanShader' )
    apply_shader( oceanShader, ocean )
    
    cmds.move(0, ocean_level, 0, ocean, r=True)
    
    return ocean[0]

def locations_above_water( terrain, water_level ):
    plane_width = int( cmds.polyPlane(terrain, q = True, w = True) )
    mid_point = plane_width / 2.0
    points = []
    for x in xrange( plane_width ):
        for z in xrange( plane_width ):
            point = mesh_point( terrain, ( x - mid_point, z - mid_point) )
            if point[1] >= water_level:
                points.append( point )
    return points

def generate_civilization( civ_map = '', terrain = '', bias = 0.95 ):
    terrain_smooth = terrain + '_smooth'
    
    cm = create_file_texture( civ_map )
    
    cm_dims = cmds.getAttr( cm + '.outSize' )
    cm_dims = cm_dims[0]
    
    plane_width = cmds.polyPlane( terrain, q = True, w = True )
    plane_divisions = cmds.polyPlane( terrain, q = True, h = True )
    
    houses = []
    for y in xrange( 32, int( cm_dims[1] ), 32 ):
        for x in xrange( 32,  int( cm_dims[0] ), 32 ):
            place_house = True
            pixel = None
            house_dim = 16
            for j in xrange(0, house_dim):
                for i in xrange(0, house_dim):
                    pixel = cmds.colorAtPoint( cm, o = 'RGB', u = float(x+i) / cm_dims[0], v = float(y+j) / cm_dims[1] )[0]
                    if ( pixel <= 0.001 ):
                        place_house = False
                        break
            #place house if no black pixel found 
            if ( place_house and randIntNorm( pixel, cm_dims[0] - ( bias * cm_dims[0] ) ) ):           
                house = cmds.duplicate( 'House' )
                surface_point = [ float(x) / cm_dims[0] * plane_width - plane_width / 2.0,\
                                    -1.0*(float(y) / cm_dims[1] * plane_width - plane_width / 2.0) ]
                mesh_place_object( house, terrain_smooth, surface_point )
    
                houses += house
                cmds.refresh()

    return cmds.group( houses, n = 'Civilizations' )

def generate_flora( density_map = '', terrain = '', bias = 0.95, flora_jitter = [0.0, 0.0] ):
    terrain_smooth = terrain + '_smooth'
    
    dm = create_file_texture( density_map )
    
    dm_dims = cmds.getAttr( dm + '.outSize' )
    dm_dims = dm_dims[0]
    
    plane_width = cmds.polyPlane( terrain, q = True, w = True )
    plane_divisions = cmds.polyPlane( terrain, q = True, h = True )
    
    trees = []
    for y in xrange( int( dm_dims[1] ) ):
        cmds.refresh()
        for x in xrange( int( dm_dims[0] ) ):
            pixel = cmds.colorAtPoint( dm, o = 'RGB', u = float(x) / dm_dims[0], v = float(y) / dm_dims[1] )
            if ( randIntNorm( pixel[0], dm_dims[0] - ( bias * dm_dims[0] ) ) ):
                tree = cmds.duplicate( 'Tree' )
                jitter = [ random.uniform(-flora_jitter[0], flora_jitter[0]),\
                            random.uniform(-flora_jitter[1], flora_jitter[1]) ]
                surface_point = [ float(x + jitter[0]) / dm_dims[0] * plane_width - plane_width / 2.0,\
                                    -1.0*(float(y + jitter[1]) / dm_dims[1] * plane_width - plane_width / 2.0) ]
                mesh_place_object( tree, terrain_smooth, surface_point )

                trees += tree

    return cmds.group( trees, n = 'Flora' )

def mesh_intersect( mesh, pos = [ 0, 0 ] ):
    mFnMesh = get_OM_mesh( mesh )
    
    surface_point = om.MFloatPoint()
    hit = False
    
    face_util = om.MScriptUtil()
    face_util.createFromInt(-1)
    face_ptr = face_util.asIntPtr()
    
    # Use Maya API to cast ray from remote location to target mesh,
    # return the face id of the hit point
    try:
        hit = mFnMesh.closestIntersection(
                    om.MFloatPoint( pos[0], 1000.0, pos[1] ),
        			om.MFloatVector( 0.0, -1.0, 0.0 ),
        			None, None,
        			False,
        			om.MSpace.kWorld,
        			100000.0,
        			False,
        			None,
        			surface_point,
        			None, face_ptr, None, None, None, 
        			1**-10)
    except:
        print 'Error in intersection'
        pass
    # Intersection occur?
    if hit:
        return (surface_point, face_util.getInt(face_ptr))
    else:
        return None

def mesh_place_object( object, mesh, pos = [ 0, 0 ], orient = True ):
    cmds.select( object )
    intersect = mesh_intersect( mesh, pos )
    cmds.move( intersect[0][0], intersect[0][1], intersect[0][2] )
    
    if ( orient ):
        face_orient_object( object, mesh, intersect[1] )
    
def face_orient_object( object, mesh, face ):
    norm = face_norm( mesh, face )
    norm = (norm.x, norm.y, norm.z)
    up = (0.0, 1.0, 0.0)
    rotation = cmds.angleBetween(er=True, v1=up, v2=norm)
    cmds.rotate( rotation[0], rotation[1], rotation[2] )

def face_norm( mesh, faceid ):
    selection = om.MSelectionList()
    selection.clear()
    dag = om.MDagPath()
    selection.add( mesh )
    selection.getDagPath( 0, dag )
    mFnMesh = om.MFnMesh( dag )
    
    norms = om.MFloatVectorArray()
    
    mFnMesh.getFaceVertexNormals( faceid, norms, om.MSpace.kObject )
    
    return norms[0]

def get_OM_mesh( mesh ):
    # Filter selection to kMesh
    selection = om.MSelectionList()
    selection.clear()   
    dag = om.MDagPath()
    selection.add( mesh )
    selection.getDagPath( 0, dag )
    
    return om.MFnMesh( dag )

def apply_shader( shader = '', objects = '' ):
    if not ( object or shader ):
        print 'Error: no objects selected or shader not assigned.'
        
    SG = cmds.sets( empty=True, renderable=True, noSurfaceShader=True, name=shader+'SG' )
    cmds.connectAttr( shader + '.outColor', SG + '.surfaceShader', force=True )
    #image = cmds.shadingNode( 'file', asTexture=True )
    #cmds.setAttr( image+'.fileTextureName', name, type='string' )
    #cmds.connectAttr( image+'.outColor', shader+'.outColor', force=True )
    cmds.sets( objects[0], e=True, forceElement=SG )
    
def create_shader( type = 'lambert' ):
    if type == '':
        print 'Error: No type or name specified.'
    return cmds.shadingNode( type, asShader=True )
    
def create_file_texture( filename='' ):
    if type == '' or filename == '':
        print "Error: No type or name specified."
    node = cmds.shadingNode( 'file', asTexture=True )
    cmds.setAttr( node + '.ftn', filename, type='string' )
    return node
    
def create_utility( type = 'place2dtexture' ):
    if type == "":
        print "Error: No type or name specified."
    return cmds.shadingNode( type, asUtility=True )

def randIntNorm( magnitude = 1.0, scalar = 1.0 ):
    if magnitude == 0:
        return False
    return not random.randint( 0, int( (1.0 - magnitude) * scalar ) )

def create_icon( image_file, icon_size = (32, 32), icons_folder = os.environ['XBMLANGPATH'].split(';')[0] ):
    '''Creates an icon using an image file with specified dimensions, 
        and places it into the specified icon folder, outputting the icon name.'''
    
    image_name = os.path.basename( image_file ).split( '.' )[0] # Image name
    icon_file = icons_folder + '\\' + image_name + '.png'
    
    img = om.MImage()                             # Image container
    img.readFromFile( image_file )                # Load the image
    
    img.resize( icon_size[0], icon_size[1] )      # Resize Image
    img.writeToFile( icon_file, 'png' )           # Write out file
    
    return image_name                             # Output icon name

# UI Start
ui_window = cmds.window( title = 'Island Generator', wh = (330, 630), s=False )
cmds.scrollLayout()
cmds.columnLayout( adjustableColumn = True )

cmds.separator( h = 5, st = 'none' )

# Island
cmds.frameLayout( label = 'Island Options', borderStyle = 'in', cll = True )
# Height Map Start
cmds.columnLayout()
cmds.text( label='Height Map', align='center', w = 300 )
cmds.symbolButton( 'ui_heightmap_preview', w = 300 )
cmds.rowColumnLayout( nc = 2 )
cmds.textField( 'ui_heightmap', tx = 'Browse for heightmap...', w = 250, ed = False )
cmds.button( 'ui_hm_browse', l='Browse...', command = 'get_heightmap()' )
cmds.setParent( '..' )
# Height Map End
cmds.separator( h = 5, st = 'none' )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Width: ', align='left' )
cmds.intField( 'ui_island_width', min = 1, max = 1024, s = 10, v = 10, width = 50 )
cmds.text( label='Height: ', align='left' )
cmds.intField( 'ui_island_height', min = 0, s = 1024, v = 1, width = 50 )
cmds.text( label='Divisions: ', align='left' )
cmds.intField( 'ui_island_divisions', min = 0, max = 1000, s = 10, v = 50, width = 50 )
cmds.setParent( '..' )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Flora
cmds.frameLayout( label = 'Flora Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Flora Active: ', align='left' )
cmds.checkBox( 'ui_generate_flora', v = False, label='', offCommand = 'ui_state_flora( False )', onCommand = 'ui_state_flora( True )', align='left' )
cmds.setParent( '..' )
# Density Map Start
cmds.columnLayout()
cmds.text( label='Density Map', align='center', w = 300 )
cmds.symbolButton( 'ui_densitymap_preview', w = 300 )
cmds.rowColumnLayout( nc = 2 )
cmds.textField( 'ui_densitymap', tx = 'Browse for densitymap...', w = 250, ed = False )
cmds.button( 'ui_dm_browse', l='Browse...', command = 'get_densitymap()' )
cmds.setParent( '..' )
# Density Map End
cmds.separator( h = 5, st = 'none' )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Density Bias: ', align='left' )
cmds.floatField( 'ui_flora_density_bias', min = 0.0, max = 1.0, s = 0.10, v = 0.95, width = 50 )
cmds.text( label='X Jitter Foliage: ', align='left' )
cmds.floatField( 'ui_flora_x_jitter',  v = 2.0, width = 50 )
cmds.text( label='Z Jitter Foliage: ', align='left' )
cmds.floatField( 'ui_flora_z_jitter',  v = 2.0, width = 50 )
cmds.setParent( '..' )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Civilization
cmds.frameLayout( label = 'Civilization Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Civilizations Active: ', align='left' )
cmds.checkBox( 'ui_generate_civil', v = True, label='', offCommand = 'ui_state_civs( False )', onCommand = 'ui_state_civs( True )' )
cmds.setParent( '..' )
# Civ Map Start
cmds.columnLayout()
cmds.text( label='Civ Map', align='center', w = 300 )
cmds.symbolButton( 'ui_civmap_preview', w = 300 )
cmds.rowColumnLayout( nc = 2 )
cmds.textField( 'ui_civmap', tx = 'Browse for civmap...', w = 250, ed = False )
cmds.button( 'ui_cm_browse', l='Browse...', command = 'get_civmap()' )
cmds.setParent( '..' )
# Civ Map End
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Density Bias: ', align='left' )
cmds.floatField( 'ui_civ_density_bias', min = 0.0, max = 1.0, s = 0.10, v = 0.95, width = 50 )
cmds.setParent( '..' )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Ocean
cmds.frameLayout( label = 'Ocean Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Ocean Active: ', align='left' )
cmds.checkBox( 'ui_generate_ocean', value = False, label='', offCommand = 'ui_state_ocean( False )', onCommand = 'ui_state_ocean( True )' )
cmds.setParent( '..' )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Level Offset: ', align='left' )
cmds.floatSliderGrp( 'ui_ocean_level_offset', min = -0.1, max = 1.0, s = 0.01, v = 0.50, field = True, width = 200 )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Generate Button
cmds.columnLayout()
cmds.button( 'ui_generate_island', label='Generate Island', command = 'generate_island()', enable = False, align='center', w = 300 )

cmds.showWindow( ui_window )
# UI End