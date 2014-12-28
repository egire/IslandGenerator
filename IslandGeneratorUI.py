#
# Island Generator.py - Generates islands using displacement and density maps (Maya 2015)
#
# The MIT License (MIT)
# Copyright (c) 2014 Eric Gire
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
    
    # Civilzation options
    num_civilizations = cmds.intField( 'ui_num_civilizations', q = True, v = True )
    max_civ_population = cmds.intField( 'ui_max_civ_population', q = True, v = True ) 
    
    # Layer options
    generate_ocean_layer = cmds.checkBox( 'ui_generate_ocean', q = True, v = True )
    generate_flora_layer = cmds.checkBox( 'ui_generate_flora', q = True, v = True )
    generate_civil_layer = cmds.checkBox( 'ui_generate_civil', q = True, v = True )
    
    # Normalize Values
    absolute_ocean_level = ocean_level_offset * island_height - island_height / 2.0
    
    # TODO: Put all vars here
    if generate_flora_layer : flora = generate_flora( density_map, terrain, flora_density_bias, [flora_x_jitter, flora_z_jitter] )
    if generate_civil_layer : civil = generate_civilization( terrain, num_civilizations, max_civ_population, absolute_ocean_level )
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

def ui_state_civs( enabled = True ):
    cmds.intField( 'ui_num_civilizations', edit = True, enable = enabled )
    cmds.intField( 'ui_max_civ_population', edit = True, enable = enabled )
    
def ui_state_flora( enabled = True ):
    cmds.symbolButton( 'ui_densitymap_preview', edit = True, enable = enabled )
    cmds.button( 'ui_dm_browse', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_density_bias', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_x_jitter', edit = True, enable = enabled )
    cmds.floatField( 'ui_flora_z_jitter', edit = True, enable = enabled )

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

def generate_civilization( terrain = '', max_civs = 1, max_pop = 10, water_level = 0.0 ):   
    terrain_smooth = terrain + '_smooth'
    
    plane_width = cmds.polyPlane(terrain, q = True, w = True)
    plane_divisions = cmds.polyPlane(terrain, q = True, sx = True)
    civilizations = []
    
    locations = locations_above_water( terrain, water_level )
    
    # Terrain is not above the water, so early exit
    if not locations:
        return
    
    for x in xrange( max_civs ):
        structures = []
        
        rand_pop = random.randint( 2, max_pop )
        rand_index = random.randint( 0, len(locations) )
        rand_pos = locations.pop( (rand_index + int( plane_width ) ) % len( locations ) )
        street_spacing = 0.1
        
        map = ViralMap( rand_pop )
        map.generate_nodes()
        map.infect_nodes( Generators.rand() )
        
        for node in map:
            cmds.refresh()
            
            if node.is_infected():
                node_loc = node.get_location()
                structure = cmds.duplicate( 'Structure' )
                house_pos = [ node_loc[0] * street_spacing * max_pop + rand_pos[0],\
                                    node_loc[2] * street_spacing * max_pop + rand_pos[2] ]
                mesh_place_object( structure, terrain_smooth, house_pos )
                cmds.move( 0, -0.005, 0, r = True )
                structures += structure
        if structures: civilizations += [ cmds.group( structures, n = 'Civilization' ) ]
        
    return cmds.group( civilizations, n = 'Civilizations' )

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
            if randIntNorm( pixel[0], dm_dims[0] - ( bias * dm_dims[0] ) ):
                tree = cmds.duplicate( 'Tree' )
                jitter = [ random.uniform(-flora_jitter[0], flora_jitter[0]),\
                            random.uniform(-flora_jitter[1], flora_jitter[1]) ]
                surface_point = [ float(x + jitter[0]) / dm_dims[0] * plane_width - plane_width / 2.0,\
                                    -1.0*(float(y + jitter[1]) / dm_dims[1] * plane_width - plane_width / 2.0) ]
                mesh_place_object( tree, terrain_smooth, surface_point )

                trees += tree

    return cmds.group( trees, n = 'Flora' )

def mesh_point( mesh, pos = [ 0, 0 ] ):
    # Filter selection to kMesh
    selection = om.MSelectionList()
    selection.clear()
    dag = om.MDagPath()
    selection.add( mesh )
    selection.getDagPath( 0, dag )
    mFnMeshTarget  = om.MFnMesh( dag )

    surface_point = om.MFloatPoint()
    found_point = False
    # Use Maya API to cast ray from remote location to target mesh,
    # return the location of the hit position as a point on the surface
    try:
        found_point = mFnMeshTarget.closestIntersection(
                    om.MFloatPoint( pos[0], 1000.0, pos[1] ),
        			om.MFloatVector( 0.0, -1.0, 0.0 ),
        			None, None,
        			False,
        			om.MSpace.kWorld,
        			100000.0,
        			False,
        			None,
        			surface_point,
        			None, None, None, None, None, 
        			1**-10)
    except:
        print 'Error in intersection'
        pass
    # Did the ray hit the surface and return a valid point?
    if found_point:
        return ( surface_point[0], surface_point[1], surface_point[2] )
    else:
        return ( 0, 0, 0 )

def mesh_place_object( object, mesh, pos = [ 0, 0 ] ):
    cmds.select( object )
    surface_point = mesh_point( mesh, pos )
    cmds.move( surface_point[0], surface_point[1], surface_point[2] )

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
    '''Creates an icon using an image file and specified dimensions, 
        and places it into the specified icon folder, outputting the icon name.'''
    
    image_name = os.path.basename( image_file ).split( '.' )[0] # Image name
    icon_file = icons_folder + '\\' + image_name + '.png'
    
    img = om.MImage()                             # Image container
    img.readFromFile( image_file )                # Load the image
    
    img.resize( icon_size[0], icon_size[1] )      # Resize Image
    img.writeToFile( icon_file, 'png' )           # Write out file
    
    return image_name                             # Output icon name

class ViralMap(object):

    class Node:
        def __init__( self, location = [0, 0, 0], infected = False ):
            self.__location = location
            self.__infected = infected
        
        def get_location( self ):
            return self.__location
        
        def set_location( self, location ):
            self.__location = location
        
        def is_infected( self ):
            return self.__infected
            
        def infect( self ):
            self.__infected = True
            
        def cure( self ):
            self.__infected = False
            
        def __str__( self ):
            return "Node " + str( self.__location ) + ", Infected: " + str( self.__infected )

    def __init__( self, max_nodes = 10 ):
        self.__max_nodes = max_nodes
        self.__nodes = dict()
        self.__connection_maxtix = list()
        
    def get_max_nodes( self ):
        return self.__max_nodes
        
    def generate_nodes(self):
        if len(self.__nodes) >= self.__max_nodes:
            return
        
        randomPoint = self.__random_unique_point()
        self.add_node( self.Node(randomPoint) )
        self.generate_nodes()
    
    def __random_unique_point(self):
        randomPoint = (random.random(), random.random(), random.random())
        
        if randomPoint not in self.__nodes.keys() or randomPoint is not None:
            return randomPoint
        
        self.__random_unique_point()
    
    def add_node(self, node):
        if node.get_location() not in self.__nodes.keys():
            self.__nodes[node.get_location()] = node
        
    def remove_node(self, node):
        if node.get_location() not in self.__nodes.keys():
            del self.__nodes[node.get_location()]
    
    def find_node(self, node):
        return self.__nodes[node.get_location()]
    
    def patient_zero(self):
        zero = random.randint(0, len(self))
        nodes = self.__nodes.keys()
        self.__nodes[nodes[zero]]
    
    def spread_infection(self):
        #TODO: Allow infection to spread to adjacent nodes
        raise ValueError("Function not implemented.")
        
    def infect_nodes(self, algo):
        for node in self:
            if algo.next():
                node.infect()
    
    def cure_nodes(self, algo):
        for node in self:
            if algo.next():
                node.cure()
    
    def __len__(self):
        return len(self.__nodes.keys())
    
    def __iter__(self):
        for k in self.__nodes:
            yield self.__nodes[k]
    
    def __str__(self):
        s = ''
        for node in self:
            s += str(node) + '\n'
        return s

class Generators:
    '''Provides methods to generate random numbers'''
    
    @staticmethod
    def rand():
        while True:
            yield random.getrandbits(1)

    @staticmethod
    def cos():
        for x in xrange(sys.maxint):
            yield math.floor(math.cos(x))

    @staticmethod
    def tan():
        for x in xrange(sys.maxint):
            yield math.floor(math.tan(x))

    @staticmethod 
    def sin():
        for x in xrange(sys.maxint):
            yield math.floor(math.sin(x))
            
    @staticmethod
    def mod(i):
        for x in xrange(sys.maxint):
            yield not x % i
            
    @staticmethod
    def triangle(low, high, mode):
        while True:
            yield not math.floor(random.triangular(low, high, mode))
            
    @staticmethod  
    def const(x):
        while True:
            yield x

    @staticmethod
    def integer(max):
        while True:
            yield not random.randint(0, max-1)

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
cmds.intField( 'ui_island_width', min = 1, max = 512, s = 10, v = 100, width = 50 )
cmds.text( label='Height: ', align='left' )
cmds.intField( 'ui_island_height', min = 1, s = 512, v = 10, width = 50 )
cmds.text( label='Divisions: ', align='left' )
cmds.intField( 'ui_island_divisions', min = 0, max = 1000, s = 10, v = 10, width = 50 )
cmds.setParent( '..' )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Flora
cmds.frameLayout( label = 'Flora Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Flora Active: ', align='left' )
cmds.checkBox( 'ui_generate_flora', v = True, label='', offCommand = 'ui_state_flora( False )', onCommand = 'ui_state_flora( True )', align='left' )
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

# Ocean
cmds.frameLayout( label = 'Ocean Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Ocean Active: ', align='left' )
cmds.checkBox( 'ui_generate_ocean', value = True, label='', offCommand = 'ui_state_ocean( False )', onCommand = 'ui_state_ocean( True )' )
cmds.setParent( '..' )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Level Offset: ', align='left' )
cmds.floatSliderGrp( 'ui_ocean_level_offset', min = -0.1, max = 1.0, s = 0.01, v = 0.50, field = True, width = 200 )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Civilization
cmds.frameLayout( label = 'Civilization Options', borderStyle = 'in', cll = True )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Civilizations Active: ', align='left' )
cmds.checkBox( 'ui_generate_civil', v = True, label='', offCommand = 'ui_state_civs( False )', onCommand = 'ui_state_civs( True )' )
cmds.setParent( '..' )
cmds.rowColumnLayout( nc = 2 )
cmds.text( label='Number of civilizations: ', align='left' )
cmds.intField( 'ui_num_civilizations', min = 0, max = 100, step = 1, value = 10, width = 50 )
cmds.text( label='Civilization Population Max: ', align='left' )
cmds.intField( 'ui_max_civ_population', min = 1, max = 100, s = 20, value = 12, width = 50 )
cmds.setParent( '..' )
cmds.setParent( '..' )

cmds.separator( h = 8, st = 'none' )

# Generate Button
cmds.columnLayout()
cmds.button( 'ui_generate_island', label='Generate Island', command = 'generate_island()', enable = False, align='center', w = 300 )

cmds.showWindow( ui_window )
# UI End