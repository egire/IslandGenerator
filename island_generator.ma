//Maya ASCII 2015 scene
//Name: island_generator.ma
//Last modified: Thu, Nov 13, 2014 12:02:24 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -83.574302351893166 0.2333457028887691 49.112813319033236 ;
	setAttr ".r" -type "double3" 353.53561031709694 11.399999999997171 359.99999999993736 ;
	setAttr ".rp" -type "double3" 2.8421709430404007e-014 -1.404432126150823e-014 2.8421709430404007e-014 ;
	setAttr ".rpt" -type "double3" -7.3827077184308353e-014 1.9790997073422551e-014 
		-3.6617998569103884e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 1.455264021621874;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -83.860117136037346 0.069503828184679151 47.695329942804392 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.60987689275731305 100.1 -0.52940114871069777 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.053143526393161;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0015384009206230315 0.76820614165473111 100.12230357578269 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.22870548020866355;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.6192328193789116;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Tree";
	setAttr ".t" -type "double3" 0 0 37.599313968356938 ;
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-016 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-016 0 ;
createNode mesh -n "TreeShape" -p "Tree";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50773680210113525 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 151 ".uvst[0].uvsp[0:150]" -type "float2" 0.375 0.68843985
		 0.4107143 0.68843985 0.4464286 0.68843985 0.4821429 0.68843985 0.51785719 0.68843985
		 0.55357146 0.68843985 0.58928573 0.68843985 0.625 0.68843985 0.59742022 0.72158879
		 0.46523106 0.69141752 0.3592236 0.77595568 0.35922363 0.91154438 0.46523112 0.99608248
		 0.59742028 0.96591115 0.65625 0.84375 0.4821429 0.68535537 0.4464286 0.68535537 0.4107143
		 0.68535537 0.625 0.68535537 0.375 0.68535537 0.58928573 0.68535537 0.55357146 0.68535537
		 0.51785719 0.68535537 0.4464286 0.68535537 0.4821429 0.68535537 0.4107143 0.68535537
		 0.375 0.68535537 0.58928573 0.68535537 0.625 0.68535537 0.55357146 0.68535537 0.51785719
		 0.68535537 0.4464286 0.68535537 0.4464286 0.68535537 0.4464286 0.68535537 0.4464286
		 0.68535537 0.4821429 0.68535537 0.4821429 0.68535537 0.4821429 0.68535537 0.4821429
		 0.68535537 0.4821429 0.68843985 0.4821429 0.68843985 0.4821429 0.68843985 0.4821429
		 0.68843985 0.4464286 0.68843985 0.4464286 0.68843985 0.4464286 0.68843985 0.4464286
		 0.68843985 0.4107143 0.68535537 0.4107143 0.68535537 0.4107143 0.68535537 0.4107143
		 0.68535537 0.4464286 0.68535537 0.4464286 0.68535537 0.4464286 0.68535537 0.4464286
		 0.68535537 0.4464286 0.68843985 0.4464286 0.68843985 0.4464286 0.68843985 0.4464286
		 0.68843985 0.4107143 0.68843985 0.4107143 0.68843985 0.4107143 0.68843985 0.4107143
		 0.68843985 0.375 0.68535537 0.375 0.68535537 0.375 0.68535537 0.375 0.68535537 0.4107143
		 0.68535537 0.4107143 0.68535537 0.4107143 0.68535537 0.4107143 0.68535537 0.4107143
		 0.68843985 0.4107143 0.68843985 0.4107143 0.68843985 0.4107143 0.68843985 0.375 0.68843985
		 0.375 0.68843985 0.375 0.68843985 0.375 0.68843985 0.58928573 0.68535537 0.58928573
		 0.68535537 0.58928573 0.68535537 0.58928573 0.68535537 0.625 0.68535537 0.625 0.68535537
		 0.625 0.68535537 0.625 0.68535537 0.625 0.68843985 0.625 0.68843985 0.625 0.68843985
		 0.625 0.68843985 0.58928573 0.68843985 0.58928573 0.68843985 0.58928573 0.68843985
		 0.58928573 0.68843985 0.55357146 0.68535537 0.55357146 0.68535537 0.55357146 0.68535537
		 0.55357146 0.68535537 0.58928573 0.68535537 0.58928573 0.68535537 0.58928573 0.68535537
		 0.58928573 0.68535537 0.58928573 0.68843985 0.58928573 0.68843985 0.58928573 0.68843985
		 0.58928573 0.68843985 0.55357146 0.68843985 0.55357146 0.68843985 0.55357146 0.68843985
		 0.55357146 0.68843985 0.51785719 0.68535537 0.51785719 0.68535537 0.51785719 0.68535537
		 0.51785719 0.68535537 0.55357146 0.68535537 0.55357146 0.68535537 0.55357146 0.68535537
		 0.55357146 0.68535537 0.55357146 0.68843985 0.55357146 0.68843985 0.55357146 0.68843985
		 0.55357146 0.68843985 0.51785719 0.68843985 0.51785719 0.68843985 0.51785719 0.68843985
		 0.51785719 0.68843985 0.4821429 0.68535537 0.4821429 0.68535537 0.4821429 0.68535537
		 0.4821429 0.68535537 0.51785719 0.68535537 0.51785719 0.68535537 0.51785719 0.68535537
		 0.51785719 0.68535537 0.51785719 0.68843985 0.51785719 0.68843985 0.51785719 0.68843985
		 0.51785719 0.68843985 0.4821429 0.68843985 0.4821429 0.68843985 0.4821429 0.68843985
		 0.4821429 0.68843985 0.55357146 0.31586692 0.51785719 0.31586692 0.4821429 0.31586692
		 0.4464286 0.31586692 0.41071433 0.31586692 0.625 0.31586692 0.375 0.31586692 0.58928573
		 0.31586692;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 140 ".vt[0:139]"  0.026232393 2.14609885 -0.031150274 -0.0075105205 2.14609885 -0.038856376
		 -0.034570254 2.14609885 -0.0172766 -0.034570254 2.14609885 0.017337652 -0.0075105233 2.14609885 0.038917426
		 0.026232393 2.14609885 0.031211324 0.041249424 2.14609885 3.052007e-005 -0.017361175 2.12600803 0.0094833374
		 -0.017361175 2.12600803 -0.0094223022 -0.0025851417 2.12600803 -0.021202087 0.015840264 2.12600803 -0.016998291
		 0.024040345 2.12600803 3.0517578e-005 0.015840264 2.12600803 0.017059326 -0.0025851429 2.12600803 0.021263123
		 -0.038612396 2.14101648 0.019183025 -0.038612396 2.14101648 -0.01912199 -0.0086674159 2.14101648 -0.04300271
		 0.028673356 2.14101648 -0.034474954 0.045291565 2.14101648 3.0517578e-005 0.028673353 2.14101648 0.034535989
		 -0.0086674206 2.14101648 0.043063745 -0.1670212 2.14178014 0.026779175 -0.23077351 2.11163831 0.022018433
		 -0.27592081 2.071748018 0.018623352 -0.29853719 2.037442684 0.015457153 -0.1670212 2.14178014 -0.02671051
		 -0.23077351 2.11163831 -0.021957397 -0.27592081 2.071748018 -0.018547058 -0.29853719 2.037442684 -0.015396118
		 -0.1670212 2.15796471 0.026779175 -0.23077351 2.12494493 0.022018433 -0.27592081 2.082994938 0.018623352
		 -0.29853719 2.046777248 0.015457153 -0.1670212 2.15796471 -0.02671051 -0.23077351 2.12494493 -0.021957397
		 -0.27592081 2.082994938 -0.018547058 -0.29853719 2.046777248 -0.015396118 -0.12513176 2.14178014 -0.1137085
		 -0.16189331 2.11163831 -0.16499329 -0.18859302 2.071748018 -0.19989014 -0.20189746 2.037442684 -0.21608734
		 -0.083318911 2.14178014 -0.14704895 -0.12751621 2.11163831 -0.19239807 -0.15953696 2.071748018 -0.22306824
		 -0.17778194 2.037442684 -0.23531342 -0.12513176 2.15796471 -0.1137085 -0.16189331 2.12494493 -0.16499329
		 -0.1885931 2.082994938 -0.19989014 -0.20189746 2.046777248 -0.21608734 -0.083318911 2.15796471 -0.14704895
		 -0.12751621 2.12494493 -0.19239807 -0.15953702 2.082994938 -0.22306824 -0.17778194 2.046777248 -0.23531342
		 0.010827643 2.14178014 -0.16851807 0.027292009 2.11163831 -0.22773743 0.036732398 2.071748018 -0.26784515
		 0.039415363 2.037442684 -0.28486633 0.062967375 2.14178014 -0.15660858 0.070159562 2.11163831 -0.21794128
		 0.072964609 2.071748018 -0.25956726 0.06948714 2.037442684 -0.27799988 0.010827643 2.15796471 -0.16851807
		 0.027292009 2.12494493 -0.22773743 0.036732398 2.082994938 -0.26784515 0.039415363 2.046777248 -0.28486633
		 0.062967375 2.15796471 -0.15660858 0.070159562 2.12494493 -0.21794128 0.072964609 2.082994938 -0.25956726
		 0.06948714 2.046777248 -0.27799988 0.13843668 2.14178014 -0.096443176 0.19425619 2.11163831 -0.11897278
		 0.23029736 2.071748018 -0.13409424 0.2435956 2.037442684 -0.13912964 0.16164103 2.14178014 -0.04826355
		 0.21333392 2.11163831 -0.079353333 0.24642187 2.071748018 -0.10061646 0.25697887 2.037442684 -0.11135101
		 0.13843668 2.15796471 -0.096443176 0.19425619 2.12494493 -0.11897278 0.23029736 2.082994938 -0.13409424
		 0.2435956 2.046777248 -0.13912964 0.16164103 2.15796471 -0.04826355 0.21333392 2.12494493 -0.079353333
		 0.24642187 2.082994938 -0.10061646 0.25697887 2.046777248 -0.11135101 0.16164103 2.14178014 0.048324585
		 0.21333392 2.11163831 0.079414368 0.24642187 2.071748018 0.10068512 0.25697887 2.037442684 0.11140442
		 0.13843668 2.14178014 0.096496582 0.19425619 2.11163831 0.11902618 0.23029736 2.071748018 0.1341629
		 0.24359553 2.037442684 0.1391983 0.16164103 2.15796471 0.048324585 0.21333392 2.12494493 0.079414368
		 0.24642187 2.082994938 0.10068512 0.25697887 2.046777248 0.11140442 0.13843668 2.15796471 0.096496582
		 0.19425619 2.12494493 0.11902618 0.23029736 2.082994938 0.1341629 0.24359553 2.046777248 0.1391983
		 0.06295561 2.14178014 0.1566925 0.070140168 2.11163831 0.21800232 0.072940141 2.071748018 0.25965118
		 0.069459923 2.037442684 0.27806091 0.010815873 2.14178014 0.16859436 0.02727266 2.11163831 0.2277832
		 0.036707856 2.071748018 0.26792908 0.039388143 2.037442684 0.28492737 0.06295561 2.15796471 0.1566925
		 0.070140168 2.12494493 0.21800232 0.072940141 2.082994938 0.25965118 0.069459923 2.046777248 0.27806091
		 0.010815873 2.15796471 0.16859436 0.02727266 2.12494493 0.2277832 0.036707856 2.082994938 0.26792908
		 0.039388143 2.046777248 0.28492737 -0.083310977 2.14178014 0.14710999 -0.12750316 2.11163831 0.19247437
		 -0.15952048 2.071748018 0.22315216 -0.1777636 2.037442684 0.23538208 -0.12512381 2.14178014 0.11376953
		 -0.16188025 2.11163831 0.16506195 -0.18857652 2.071748018 0.19997406 -0.20187908 2.037442684 0.21614838
		 -0.083310977 2.15796471 0.14710999 -0.12750316 2.12494493 0.19247437 -0.15952048 2.082994938 0.22315216
		 -0.1777636 2.046777248 0.23538208 -0.12512381 2.15796471 0.11376953 -0.16188025 2.12494493 0.16506195
		 -0.18857652 2.082994938 0.19997406 -0.20187908 2.046777248 0.21614838 0.041814659 0.019333614 0.052436829
		 -0.014895773 0.019333614 0.065383911 -0.060373984 0.019333614 0.02911377 -0.060373984 0.019333614 -0.029052734
		 -0.014895766 0.019333614 -0.065322876 0.041814663 0.019333614 -0.052375793 0.067053154 0.019333614 3.0517578e-005;
	setAttr -s 273 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 7 0 7 14 0 8 15 0 14 15 0 14 3 0 15 2 0 9 16 0
		 15 16 0 16 1 0 10 17 0 16 17 0 17 0 0 11 18 0 17 18 0 18 6 0 12 19 0 18 19 0 19 5 0
		 13 20 0 19 20 0 20 4 0 20 14 0 14 21 0 21 22 0 22 23 0 23 24 0 15 25 0 25 26 0 26 27 0
		 27 28 0 21 25 1 22 26 1 23 27 1 24 28 0 3 29 0 29 30 0 30 31 0 31 32 0 21 29 1 22 30 1
		 23 31 1 24 32 0 2 33 0 33 34 0 34 35 0 35 36 0 33 29 1 34 30 1 35 31 1 36 32 0 25 33 1
		 26 34 1 27 35 1 28 36 0 15 37 0 37 38 0 38 39 0 39 40 0 16 41 0 41 42 0 42 43 0 43 44 0
		 37 41 1 38 42 1 39 43 1 40 44 0 2 45 0 45 46 0 46 47 0 47 48 0 37 45 1 38 46 1 39 47 1
		 40 48 0 1 49 0 49 50 0 50 51 0 51 52 0 49 45 1 50 46 1 51 47 1 52 48 0 41 49 1 42 50 1
		 43 51 1 44 52 0 16 53 0 53 54 0 54 55 0 55 56 0 17 57 0 57 58 0 58 59 0 59 60 0 53 57 1
		 54 58 1 55 59 1 56 60 0 1 61 0 61 62 0 62 63 0 63 64 0 53 61 1 54 62 1 55 63 1 56 64 0
		 0 65 0 65 66 0 66 67 0 67 68 0 65 61 1 66 62 1 67 63 1 68 64 0 57 65 1 58 66 1 59 67 1
		 60 68 0 17 69 0 69 70 0 70 71 0 71 72 0 18 73 0 73 74 0 74 75 0 75 76 0 69 73 1 70 74 1
		 71 75 1 72 76 0 0 77 0 77 78 0 78 79 0 79 80 0 69 77 1 70 78 1 71 79 1 72 80 0 6 81 0
		 81 82 0 82 83 0 83 84 0 81 77 1 82 78 1 83 79 1 84 80 0 73 81 1 74 82 1 75 83 1 76 84 0
		 18 85 0 85 86 0 86 87 0;
	setAttr ".ed[166:272]" 87 88 0 19 89 0 89 90 0 90 91 0 91 92 0 85 89 1 86 90 1
		 87 91 1 88 92 0 6 93 0 93 94 0 94 95 0 95 96 0 85 93 1 86 94 1 87 95 1 88 96 0 5 97 0
		 97 98 0 98 99 0 99 100 0 97 93 1 98 94 1 99 95 1 100 96 0 89 97 1 90 98 1 91 99 1
		 92 100 0 19 101 0 101 102 0 102 103 0 103 104 0 20 105 0 105 106 0 106 107 0 107 108 0
		 101 105 1 102 106 1 103 107 1 104 108 0 5 109 0 109 110 0 110 111 0 111 112 0 101 109 1
		 102 110 1 103 111 1 104 112 0 4 113 0 113 114 0 114 115 0 115 116 0 113 109 1 114 110 1
		 115 111 1 116 112 0 105 113 1 106 114 1 107 115 1 108 116 0 20 117 0 117 118 0 118 119 0
		 119 120 0 14 121 0 121 122 0 122 123 0 123 124 0 117 121 1 118 122 1 119 123 1 120 124 0
		 4 125 0 125 126 0 126 127 0 127 128 0 117 125 1 118 126 1 119 127 1 120 128 0 3 129 0
		 129 130 0 130 131 0 131 132 0 129 125 1 130 126 1 131 127 1 132 128 0 121 129 1 122 130 1
		 123 131 1 124 132 0 133 12 0 134 13 0 133 134 0 135 7 0 134 135 0 136 8 0 135 136 0
		 137 9 0 136 137 0 138 10 0 137 138 0 139 11 0 138 139 0 139 133 0;
	setAttr -s 42 ".n[0:41]" -type "float3"  0 1 -1.7115473e-006 0 1 -1.7115473e-006
		 0 1 -1.7115473e-006 0 1 -1.7115473e-006 0 1 -1.7115473e-006 0 1 -1.7115473e-006 0
		 1 -1.7115473e-006 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 134 -ch 539 ".fc[0:133]" -type "polyFaces" 
		f 7 0 1 2 3 4 5 6
		mu 0 7 13 12 11 10 9 8 14
		f 4 -47 54 -63 -67
		mu 0 4 34 38 42 46
		f 4 -79 86 -95 -99
		mu 0 4 50 54 58 62
		f 4 -111 118 -127 -131
		mu 0 4 66 70 74 78
		f 4 -143 150 -159 -163
		mu 0 4 82 86 90 94
		f 4 -175 182 -191 -195
		mu 0 4 98 102 106 110
		f 4 -207 214 -223 -227
		mu 0 4 114 118 122 126
		f 4 -239 246 -255 -259
		mu 0 4 130 134 138 142
		f 4 -8 14 16 -16
		mu 0 4 16 15 24 23
		f 4 -9 15 20 -20
		mu 0 4 17 16 23 25
		f 4 -10 19 23 -23
		mu 0 4 19 17 25 26
		f 4 -11 22 26 -26
		mu 0 4 20 18 28 27
		f 4 -12 25 29 -29
		mu 0 4 21 20 27 29
		f 4 -13 28 32 -32
		mu 0 4 22 21 29 30
		f 4 -14 31 34 -15
		mu 0 4 15 22 30 24
		f 4 -17 35 43 -40
		mu 0 4 23 24 35 31
		f 4 -44 36 44 -41
		mu 0 4 31 35 36 32
		f 4 -45 37 45 -42
		mu 0 4 32 36 37 33
		f 4 -46 38 46 -43
		mu 0 4 33 37 38 34
		f 4 17 47 -52 -36
		mu 0 4 24 3 39 35
		f 4 51 48 -53 -37
		mu 0 4 35 39 40 36
		f 4 52 49 -54 -38
		mu 0 4 36 40 41 37
		f 4 53 50 -55 -39
		mu 0 4 37 41 42 38
		f 4 -3 55 59 -48
		mu 0 4 3 2 43 39
		f 4 -60 56 60 -49
		mu 0 4 39 43 44 40
		f 4 -61 57 61 -50
		mu 0 4 40 44 45 41
		f 4 -62 58 62 -51
		mu 0 4 41 45 46 42
		f 4 -19 39 63 -56
		mu 0 4 2 23 31 43
		f 4 -64 40 64 -57
		mu 0 4 43 31 32 44
		f 4 -65 41 65 -58
		mu 0 4 44 32 33 45
		f 4 -66 42 66 -59
		mu 0 4 45 33 34 46
		f 4 -21 67 75 -72
		mu 0 4 25 23 51 47
		f 4 -76 68 76 -73
		mu 0 4 47 51 52 48
		f 4 -77 69 77 -74
		mu 0 4 48 52 53 49
		f 4 -78 70 78 -75
		mu 0 4 49 53 54 50
		f 4 18 79 -84 -68
		mu 0 4 23 2 55 51
		f 4 83 80 -85 -69
		mu 0 4 51 55 56 52
		f 4 84 81 -86 -70
		mu 0 4 52 56 57 53
		f 4 85 82 -87 -71
		mu 0 4 53 57 58 54
		f 4 -2 87 91 -80
		mu 0 4 2 1 59 55
		f 4 -92 88 92 -81
		mu 0 4 55 59 60 56
		f 4 -93 89 93 -82
		mu 0 4 56 60 61 57
		f 4 -94 90 94 -83
		mu 0 4 57 61 62 58
		f 4 -22 71 95 -88
		mu 0 4 1 25 47 59
		f 4 -96 72 96 -89
		mu 0 4 59 47 48 60
		f 4 -97 73 97 -90
		mu 0 4 60 48 49 61
		f 4 -98 74 98 -91
		mu 0 4 61 49 50 62
		f 4 -24 99 107 -104
		mu 0 4 26 25 67 63
		f 4 -108 100 108 -105
		mu 0 4 63 67 68 64
		f 4 -109 101 109 -106
		mu 0 4 64 68 69 65
		f 4 -110 102 110 -107
		mu 0 4 65 69 70 66
		f 4 21 111 -116 -100
		mu 0 4 25 1 71 67
		f 4 115 112 -117 -101
		mu 0 4 67 71 72 68
		f 4 116 113 -118 -102
		mu 0 4 68 72 73 69
		f 4 117 114 -119 -103
		mu 0 4 69 73 74 70
		f 4 -1 119 123 -112
		mu 0 4 1 0 75 71
		f 4 -124 120 124 -113
		mu 0 4 71 75 76 72
		f 4 -125 121 125 -114
		mu 0 4 72 76 77 73
		f 4 -126 122 126 -115
		mu 0 4 73 77 78 74
		f 4 -25 103 127 -120
		mu 0 4 0 26 63 75
		f 4 -128 104 128 -121
		mu 0 4 75 63 64 76
		f 4 -129 105 129 -122
		mu 0 4 76 64 65 77
		f 4 -130 106 130 -123
		mu 0 4 77 65 66 78
		f 4 -27 131 139 -136
		mu 0 4 27 28 83 79
		f 4 -140 132 140 -137
		mu 0 4 79 83 84 80
		f 4 -141 133 141 -138
		mu 0 4 80 84 85 81
		f 4 -142 134 142 -139
		mu 0 4 81 85 86 82
		f 4 24 143 -148 -132
		mu 0 4 28 7 87 83
		f 4 147 144 -149 -133
		mu 0 4 83 87 88 84
		f 4 148 145 -150 -134
		mu 0 4 84 88 89 85
		f 4 149 146 -151 -135
		mu 0 4 85 89 90 86
		f 4 -7 151 155 -144
		mu 0 4 7 6 91 87
		f 4 -156 152 156 -145
		mu 0 4 87 91 92 88
		f 4 -157 153 157 -146
		mu 0 4 88 92 93 89
		f 4 -158 154 158 -147
		mu 0 4 89 93 94 90
		f 4 -28 135 159 -152
		mu 0 4 6 27 79 91
		f 4 -160 136 160 -153
		mu 0 4 91 79 80 92
		f 4 -161 137 161 -154
		mu 0 4 92 80 81 93
		f 4 -162 138 162 -155
		mu 0 4 93 81 82 94
		f 4 -30 163 171 -168
		mu 0 4 29 27 99 95
		f 4 -172 164 172 -169
		mu 0 4 95 99 100 96
		f 4 -173 165 173 -170
		mu 0 4 96 100 101 97
		f 4 -174 166 174 -171
		mu 0 4 97 101 102 98
		f 4 27 175 -180 -164
		mu 0 4 27 6 103 99
		f 4 179 176 -181 -165
		mu 0 4 99 103 104 100
		f 4 180 177 -182 -166
		mu 0 4 100 104 105 101
		f 4 181 178 -183 -167
		mu 0 4 101 105 106 102
		f 4 -6 183 187 -176
		mu 0 4 6 5 107 103
		f 4 -188 184 188 -177
		mu 0 4 103 107 108 104
		f 4 -189 185 189 -178
		mu 0 4 104 108 109 105
		f 4 -190 186 190 -179
		mu 0 4 105 109 110 106
		f 4 -31 167 191 -184
		mu 0 4 5 29 95 107
		f 4 -192 168 192 -185
		mu 0 4 107 95 96 108
		f 4 -193 169 193 -186
		mu 0 4 108 96 97 109
		f 4 -194 170 194 -187
		mu 0 4 109 97 98 110
		f 4 -33 195 203 -200
		mu 0 4 30 29 115 111
		f 4 -204 196 204 -201
		mu 0 4 111 115 116 112
		f 4 -205 197 205 -202
		mu 0 4 112 116 117 113
		f 4 -206 198 206 -203
		mu 0 4 113 117 118 114
		f 4 30 207 -212 -196
		mu 0 4 29 5 119 115
		f 4 211 208 -213 -197
		mu 0 4 115 119 120 116
		f 4 212 209 -214 -198
		mu 0 4 116 120 121 117
		f 4 213 210 -215 -199
		mu 0 4 117 121 122 118
		f 4 -5 215 219 -208
		mu 0 4 5 4 123 119
		f 4 -220 216 220 -209
		mu 0 4 119 123 124 120
		f 4 -221 217 221 -210
		mu 0 4 120 124 125 121
		f 4 -222 218 222 -211
		mu 0 4 121 125 126 122
		f 4 -34 199 223 -216
		mu 0 4 4 30 111 123
		f 4 -224 200 224 -217
		mu 0 4 123 111 112 124
		f 4 -225 201 225 -218
		mu 0 4 124 112 113 125
		f 4 -226 202 226 -219
		mu 0 4 125 113 114 126
		f 4 -35 227 235 -232
		mu 0 4 24 30 131 127
		f 4 -236 228 236 -233
		mu 0 4 127 131 132 128
		f 4 -237 229 237 -234
		mu 0 4 128 132 133 129
		f 4 -238 230 238 -235
		mu 0 4 129 133 134 130
		f 4 33 239 -244 -228
		mu 0 4 30 4 135 131
		f 4 243 240 -245 -229
		mu 0 4 131 135 136 132
		f 4 244 241 -246 -230
		mu 0 4 132 136 137 133
		f 4 245 242 -247 -231
		mu 0 4 133 137 138 134
		f 4 -4 247 251 -240
		mu 0 4 4 3 139 135
		f 4 -252 248 252 -241
		mu 0 4 135 139 140 136
		f 4 -253 249 253 -242
		mu 0 4 136 140 141 137
		f 4 -254 250 254 -243
		mu 0 4 137 141 142 138
		f 4 -18 231 255 -248
		mu 0 4 3 24 127 139
		f 4 -256 232 256 -249
		mu 0 4 139 127 128 140
		f 4 -257 233 257 -250
		mu 0 4 140 128 129 141
		f 4 -258 234 258 -251
		mu 0 4 141 129 130 142
		f 4 -262 259 12 -261
		mu 0 4 144 143 21 22
		f 4 -264 260 13 -263
		mu 0 4 145 144 22 15
		f 4 -266 262 7 -265
		mu 0 4 146 145 15 16
		f 4 -268 264 8 -267
		mu 0 4 147 146 16 17
		f 4 -270 266 9 -269
		mu 0 4 149 147 17 19
		f 4 -272 268 10 -271
		mu 0 4 150 148 18 20
		f 4 -273 270 11 -260
		mu 0 4 143 150 20 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Structure";
	setAttr ".t" -type "double3" -83.897632394826658 0 47.657826128107132 ;
	setAttr ".s" -type "double3" 0.125 0.5 0.125 ;
	setAttr ".rp" -type "double3" -0.024999999999784219 0 -0.024999999999993541 ;
	setAttr ".sp" -type "double3" -0.50000000000022737 0 -0.49999999999988631 ;
	setAttr ".spt" -type "double3" 0.47500000000044318 0 0.47499999999989279 ;
createNode mesh -n "StructureShape" -p "Structure";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.073950052 -0.29327214 
		0.073936515 0.073950052 -0.29327214 0.073936515 -0.073950052 0.001648032 0.073936515 
		0.073950052 0.001648032 0.073936515 -0.073950052 0.001648032 -0.073936515 0.073950052 
		0.001648032 -0.073936515 -0.073950052 -0.29327211 -0.073936515 0.073950052 -0.29327211 
		-0.073936515 0 0.00090364489 0 0 0.00090364489 0 0 0.00090364489 0 0 0.00090364489 
		0 0.026012128 0.00090364489 0 -0.026012128 0.00090364489 0 -0.026012128 0.00090364489 
		0 0.026012128 0.00090364489 0 0.043759093 0.0045434125 -0.043751102 0.043759093 0.0045434125 
		0.043751102 -0.043759093 0.0045434125 0.043751102 -0.043759093 0.0045434125 -0.043751102 
		-0.03441418 0.00090364489 0.035204753 -0.03441418 0.00090364489 -0.035204753 0.03441418 
		0.00090364489 -0.035204753 0.03441418 0.00090364489 0.035204753;
createNode mesh -n "polySurfaceShape1" -p "Structure";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 -0.81212443 0 0 -0.81212443 
		0 0 -0.81212443 0 0 -0.81212443 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -1068.2297346419482 -2908.3333333333339 ;
	setAttr ".vh" -type "double2" 5680.1344965467115 1055.952380952381 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 107 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -802.85711669921875;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1.4285714626312256;
	setAttr ".hyp[1].y" -698.5714111328125;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 1270;
	setAttr ".hyp[2].y" -72.857139587402344;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 2360;
	setAttr ".hyp[3].y" -595.71429443359375;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n"
		+ "                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 8 100 -ps 2 92 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.050000000000000003 0 0 0 0 0.25 0 0 0 0 0.050000000000000003 0
		 -83.897632394826431 0 47.657826128107132 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -83.897629 0.046968892 47.657825 ;
	setAttr ".rs" 63104;
	setAttr ".lt" -type "double3" 0 -7.0986804384963612e-015 0.03038542236555683 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -83.922632394826437 0.046968892216682434 47.632826128107133 ;
	setAttr ".cbx" -type "double3" -83.872632394826425 0.046968892216682434 47.682826128107131 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 2.9802322e-008 -0.049586065 0 ;
	setAttr ".tk[3]" -type "float3" -2.9802322e-008 -0.049586065 0 ;
	setAttr ".tk[4]" -type "float3" 2.9802322e-008 -0.049586065 0 ;
	setAttr ".tk[5]" -type "float3" -2.9802322e-008 -0.049586065 0 ;
	setAttr ".tk[8]" -type "float3" -5.9604645e-008 -1.4901161e-008 2.9802322e-008 ;
	setAttr ".tk[9]" -type "float3" 5.9604645e-008 -1.4901161e-008 2.9802322e-008 ;
	setAttr ".tk[10]" -type "float3" 5.9604645e-008 -1.4901161e-008 -2.9802322e-008 ;
	setAttr ".tk[11]" -type "float3" -5.9604645e-008 -1.4901161e-008 -2.9802322e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.050000000000000003 0 0 0 0 0.25 0 0 0 0 0.050000000000000003 0
		 -83.897632394826431 0 47.657826128107132 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -83.897629 0.077354312 47.657829 ;
	setAttr ".rs" 42312;
	setAttr ".lt" -type "double3" -1.4210854715202004e-014 7.4873843873106509e-018 0.033720181536671917 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -83.922632397806666 0.077354311943054199 47.632826128107133 ;
	setAttr ".cbx" -type "double3" -83.872626288330579 0.077354311943054199 47.682829179864946 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.016943514 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.016943514 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.016943514 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.016943514 0 ;
	setAttr ".tk[8]" -type "float3" -0.30769229 -0.15418424 0.30763572 ;
	setAttr ".tk[9]" -type "float3" 0.30769229 -0.15418424 0.30763572 ;
	setAttr ".tk[10]" -type "float3" 0.30769229 -0.15418424 -0.30763572 ;
	setAttr ".tk[11]" -type "float3" -0.30769229 -0.15418424 -0.30763572 ;
	setAttr ".tk[12]" -type "float3" 0.45473149 -0.15638623 0 ;
	setAttr ".tk[13]" -type "float3" -0.45473149 -0.15638623 0 ;
	setAttr ".tk[14]" -type "float3" -0.45473149 -0.15638623 0 ;
	setAttr ".tk[15]" -type "float3" 0.45473149 -0.15638623 0 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 0.41213042770081065 0 0 0 0 2.0606521385040528 0 0 0 0 0.41213042770081065 0
		 -83.716567180975943 0 47.838891341957499 1;
	setAttr ".wt" 0.8709712028503418;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 0.41213042770081065 0 0 0 0 2.0606521385040528 0 0 0 0 0.41213042770081065 0
		 -83.716567180975943 0 47.838891341957499 1;
	setAttr ".wt" 0.039605066180229187;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file6";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file7";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file9";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file10";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file11";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file12";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file13";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file14";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file15";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file16";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file17";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file18";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file19";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file20";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file21";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file22";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file23";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file24";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file25";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file26";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file27";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file28";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file29";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file30";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file31";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file32";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file33";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode oceanShader -n "oceanShader1";
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0.015 0.13 0.145 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.55000001192092896;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".wh[0]"  0 0.16 1;
	setAttr ".wtb[0]"  0 1 1;
	setAttr -s 2 ".wp[0:1]"  0 0.30000001 1 1 0.5 1;
	setAttr ".d" -0.016506798565387726;
createNode shadingEngine -n "oceanShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file34";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file35";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file36";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file37";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file38";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file39";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file40";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file41";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file42";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode oceanShader -n "oceanShader2";
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0.015 0.13 0.145 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.55000001192092896;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".wh[0]"  0 0.16 1;
	setAttr ".wtb[0]"  0 1 1;
	setAttr -s 2 ".wp[0:1]"  0 0.30000001 1 1 0.5 1;
	setAttr ".d" -0.016506798565387726;
createNode shadingEngine -n "oceanShader2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file43";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file44";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file45";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file46";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file47";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file48";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/hm.jpg";
createNode oceanShader -n "oceanShader3";
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0.015 0.13 0.145 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.55000001192092896;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".wh[0]"  0 0.16 1;
	setAttr ".wtb[0]"  0 1 1;
	setAttr -s 2 ".wp[0:1]"  0 0.30000001 1 1 0.5 1;
	setAttr ".d" -0.016506798565387726;
createNode shadingEngine -n "oceanShader3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file49";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/hm.jpg";
createNode file -n "file50";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/hm.jpg";
createNode oceanShader -n "oceanShader4";
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0.015 0.13 0.145 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.55000001192092896;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".wh[0]"  0 0.16 1;
	setAttr ".wtb[0]"  0 1 1;
	setAttr -s 2 ".wp[0:1]"  0 0.30000001 1 1 0.5 1;
	setAttr ".d" -0.016506798565387726;
createNode shadingEngine -n "oceanShader4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file51";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/hm.jpg";
createNode file -n "file52";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/hm.jpg";
createNode file -n "file53";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file54";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode file -n "file55";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
createNode oceanShader -n "oceanShader5";
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0.015 0.13 0.145 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.55000001192092896;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".wh[0]"  0 0.16 1;
	setAttr ".wtb[0]"  0 1 1;
	setAttr -s 2 ".wp[0:1]"  0 0.30000001 1 1 0.5 1;
	setAttr ".d" -0.016506798565387726;
createNode shadingEngine -n "oceanShader5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file56";
	setAttr ".ftn" -type "string" "E:/Parkland/CSC233/Project1/hm.jpg";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 56 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polySplitRing2.out" "StructureShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanShader3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanShader4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanShader4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanShader5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "uiConfigurationScriptNode.msg" "hyperLayout1.hyp[0].dn";
connectAttr "sceneConfigurationScriptNode.msg" "hyperLayout1.hyp[1].dn";
connectAttr "Tree.msg" "hyperLayout1.hyp[2].dn";
connectAttr "TreeShape.msg" "hyperLayout1.hyp[3].dn";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "StructureShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "StructureShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplitRing1.ip";
connectAttr "StructureShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "StructureShape.wm" "polySplitRing2.mp";
connectAttr "oceanShader1.oc" "oceanShader1SG.ss";
connectAttr "oceanShader1SG.msg" "materialInfo1.sg";
connectAttr "oceanShader1.msg" "materialInfo1.m";
connectAttr "oceanShader1.msg" "materialInfo1.t" -na;
connectAttr "oceanShader2.oc" "oceanShader2SG.ss";
connectAttr "oceanShader2SG.msg" "materialInfo2.sg";
connectAttr "oceanShader2.msg" "materialInfo2.m";
connectAttr "oceanShader2.msg" "materialInfo2.t" -na;
connectAttr "oceanShader3.oc" "oceanShader3SG.ss";
connectAttr "oceanShader3SG.msg" "materialInfo3.sg";
connectAttr "oceanShader3.msg" "materialInfo3.m";
connectAttr "oceanShader3.msg" "materialInfo3.t" -na;
connectAttr "oceanShader4.oc" "oceanShader4SG.ss";
connectAttr "oceanShader4SG.msg" "materialInfo4.sg";
connectAttr "oceanShader4.msg" "materialInfo4.m";
connectAttr "oceanShader4.msg" "materialInfo4.t" -na;
connectAttr "oceanShader5.oc" "oceanShader5SG.ss";
connectAttr "oceanShader5SG.msg" "materialInfo5.sg";
connectAttr "oceanShader5.msg" "materialInfo5.m";
connectAttr "oceanShader5.msg" "materialInfo5.t" -na;
connectAttr "oceanShader1SG.pa" ":renderPartition.st" -na;
connectAttr "oceanShader2SG.pa" ":renderPartition.st" -na;
connectAttr "oceanShader3SG.pa" ":renderPartition.st" -na;
connectAttr "oceanShader4SG.pa" ":renderPartition.st" -na;
connectAttr "oceanShader5SG.pa" ":renderPartition.st" -na;
connectAttr "oceanShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "oceanShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "oceanShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "oceanShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "oceanShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "file31.msg" ":defaultTextureList1.tx" -na;
connectAttr "file32.msg" ":defaultTextureList1.tx" -na;
connectAttr "file33.msg" ":defaultTextureList1.tx" -na;
connectAttr "file34.msg" ":defaultTextureList1.tx" -na;
connectAttr "file35.msg" ":defaultTextureList1.tx" -na;
connectAttr "file36.msg" ":defaultTextureList1.tx" -na;
connectAttr "file37.msg" ":defaultTextureList1.tx" -na;
connectAttr "file38.msg" ":defaultTextureList1.tx" -na;
connectAttr "file39.msg" ":defaultTextureList1.tx" -na;
connectAttr "file40.msg" ":defaultTextureList1.tx" -na;
connectAttr "file41.msg" ":defaultTextureList1.tx" -na;
connectAttr "file42.msg" ":defaultTextureList1.tx" -na;
connectAttr "file43.msg" ":defaultTextureList1.tx" -na;
connectAttr "file44.msg" ":defaultTextureList1.tx" -na;
connectAttr "file45.msg" ":defaultTextureList1.tx" -na;
connectAttr "file46.msg" ":defaultTextureList1.tx" -na;
connectAttr "file47.msg" ":defaultTextureList1.tx" -na;
connectAttr "file48.msg" ":defaultTextureList1.tx" -na;
connectAttr "file49.msg" ":defaultTextureList1.tx" -na;
connectAttr "file50.msg" ":defaultTextureList1.tx" -na;
connectAttr "file51.msg" ":defaultTextureList1.tx" -na;
connectAttr "file52.msg" ":defaultTextureList1.tx" -na;
connectAttr "file53.msg" ":defaultTextureList1.tx" -na;
connectAttr "file54.msg" ":defaultTextureList1.tx" -na;
connectAttr "file55.msg" ":defaultTextureList1.tx" -na;
connectAttr "file56.msg" ":defaultTextureList1.tx" -na;
connectAttr "TreeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "StructureShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n4\n\"file5\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n5\n\"file6\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n6\n\"file7\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n7\n\"file8\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n8\n\"file9\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n9\n\"file10\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n10\n\"file11\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n11\n\"file12\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n12\n\"file13\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n13\n\"file14\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n14\n\"file15\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n15\n\"file16\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n16\n\"file17\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n17\n\"file18\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n18\n\"file19\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n19\n\"file20\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n20\n\"file21\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n21\n\"file22\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n22\n\"file23\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n23\n\"file24\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n24\n\"file25\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n25\n\"file26\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n26\n\"file27\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n27\n\"file28\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n28\n\"file29\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n29\n\"file30\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n30\n\"file31\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n31\n\"file32\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n32\n\"file33\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n33\n\"file34\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n34\n\"file35\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n35\n\"file36\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n36\n\"file37\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n37\n\"file38\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n38\n\"file39\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n39\n\"file40\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n40\n\"file41\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n41\n\"file42\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n42\n\"file43\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n43\n\"file44\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n44\n\"file45\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n45\n\"file46\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n46\n\"file47\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n47\n\"file48\" \"fileTextureName\" \"E:/Parkland/CSC233/hm.jpg\" 3720569302 \"E:/Parkland/CSC233/hm.jpg\" \"sourceImages\"\n48\n\"file49\" \"fileTextureName\" \"E:/Parkland/CSC233/hm.jpg\" 3720569302 \"E:/Parkland/CSC233/hm.jpg\" \"sourceImages\"\n49\n\"file50\" \"fileTextureName\" \"E:/Parkland/CSC233/hm.jpg\" 3720569302 \"E:/Parkland/CSC233/hm.jpg\" \"sourceImages\"\n50\n\"file51\" \"fileTextureName\" \"E:/Parkland/CSC233/hm.jpg\" 3720569302 \"E:/Parkland/CSC233/hm.jpg\" \"sourceImages\"\n51\n\"file52\" \"fileTextureName\" \"E:/Parkland/CSC233/hm.jpg\" 3720569302 \"E:/Parkland/CSC233/hm.jpg\" \"sourceImages\"\n52\n\"file53\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n53\n\"file54\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n54\n\"file55\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\n55\n\"file56\" \"fileTextureName\" \"E:/Parkland/CSC233/Project1/hm.jpg\" 3938832060 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of island_generator.ma
