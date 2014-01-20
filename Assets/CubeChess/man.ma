//Maya ASCII 2011 scene
//Name: man.ma
//Last modified: Wed, Aug 01, 2012 12:52:45 AM
//Codeset: 950
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/uvRefine.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 Hotfix 3";
fileInfo "cutIdentifier" "201007130017-777584";
fileInfo "osv" "Microsoft Windows XP Professional Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 42.187111510980777 14.860512588074254 4.1507800930654035 ;
	setAttr ".r" -type "double3" -17.738338571622073 85.400000000000603 -1.9829160478648939e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 47.183941921703486;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.95060764825125932 -0.32551634609828783 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1176464771106573 100.53103182792142 8.3957632149095698 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.095103973955462;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.1501254845308467 1.3308858336278113 100.10492282095598 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.7408251420739744;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.44369528832948 1.0826629749592374 -0.98708370870761186 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.5153833233917471;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.39476180602810218 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "body1" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".pa" -type "double3" -55.510271835091373 0 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 -0.25938779741652762 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "head" -p "body1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 48.736826983358206 0 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0 0
		 0 0 1 0 0 0.48740030510543342 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|root|body1|head";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".radi" 0.5;
createNode joint -n "armLeft" -p "body1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".pa" -type "double3" 9.963473650550622e-015 -71.384150911297169 -53.305331220519143 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.27075417002104563 0.26154189574761499 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "handLeft" -p "|root|body1|armLeft";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 94.053896296664306 12.671061482317366 69.245498036515556 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.82040926454654484 0.26154189574761499 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "handLeft";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.2959535598101786 0.26154189574761499 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "armRight" -p "body1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 -89.999999999999986 ;
	setAttr ".pa" -type "double3" 42.469649380306421 -11.313244630728205 -12.41262141306138 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-016 0 2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -0.27075399999999999 0.26154200000000005 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "handRight" -p "|root|body1|armRight";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -15.471458692984056 -7.9513867036587909e-016 23.394653779030619 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-016 0 2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -0.82040899999999994 0.261542 -6.3517954519530055e-034 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "handRight";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 46.77514430897962 -12.445141046764249 47.825614975068902 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-016 0 2.5407181807812022e-033 1.2246467991473532e-016 -1 0
		 -1.2959499999999999 0.261542 -6.3517954519530055e-034 1;
	setAttr ".radi" 0.5;
createNode joint -n "legLeft" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.090847567003635 ;
	setAttr ".pa" -type "double3" 2.4915351625995856 -15.548017215186446 -0.27084457337605905 ;
	setAttr ".bps" -type "matrix" 0.033314830232638371 -0.99944490697915433 0 0 0.99944490697915433 0.033314830232638371 0 0
		 0 0 1 0 0.22752287045162448 -0.30664089859335036 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|root|legLeft";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 6.0580863940738424e-030 178.71700602053889 ;
	setAttr ".radi" 0.50673744049494551;
createNode joint -n "legRight" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -7.0622500768802555e-031 88.090847567003649 ;
	setAttr ".pa" -type "double3" -0.49242365131511551 -1.0613296165931363 -0.055431292520319468 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "|root|legRight";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 1.5710831664701773e-016 178.71700602053875 ;
	setAttr ".radi" 0.50673744049494551;
createNode transform -n "mesh";
createNode transform -n "gHead" -p "mesh";
	setAttr ".rp" -type "double3" 0 0.48740030510543342 0 ;
	setAttr ".sp" -type "double3" 0 0.48740030510543342 0 ;
createNode transform -n "head" -p "gHead";
	setAttr ".t" -type "double3" 0 0.76451811055972141 0 ;
	setAttr ".s" -type "double3" 1 0.5 1 ;
createNode mesh -n "headShape" -p "|mesh|gHead|head";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55977533078853492 0.42758382191465671 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.49535716 0.36203727 
		0.62419355 0.36203727 0.62419355 0.42645547 0.49535716 0.42645547 0.75441515 0.4273757 
		0.4951852 0.5544126 0.75453526 0.36136392 0.4961586 0.23474798 0.62483263 0.62034714 
		0.62345338 0.23481174 0.49478632 0.62041974 0.36513555 0.36111704 0.62438703 0.55439448 
		0.36501539 0.42712888;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.49999988 
		0.5 0.5 0.49999988 0.5 -0.5 0.49999988 -0.5 0.5 0.49999988 -0.5 -0.5 -0.5 -0.5 0.5 
		-0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 3 2 12 5 
		f 4 2 9 -4 -9 
		mu 0 4 5 12 8 10 
		f 4 3 11 -1 -11 
		mu 0 4 7 9 1 0 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 6 4 2 
		f 4 10 4 6 8 
		mu 0 4 11 0 3 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "gEar" -p "gHead";
createNode transform -n "earSquare" -p "gEar";
	setAttr ".t" -type "double3" 0.48594839290816949 0.76836091483249747 -0.030120431271334125 ;
	setAttr ".s" -type "double3" 0.5408213340374054 0.5408213340374054 0.5408213340374054 ;
createNode mesh -n "earSquareShape" -p "earSquare";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52442291610804215 0.826048949590096 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.51393908 0.78411311 
		0.5349068 0.78411311 0.51393908 0.80508107 0.5349068 0.80508107 0.51393908 0.82604891 
		0.5349068 0.82604891 0.51393908 0.84701687 0.5349068 0.84701687 0.51393908 0.86798483 
		0.5349068 0.86798483 0.55587471 0.78411311 0.55587471 0.80508107 0.49297109 0.78411311 
		0.49297109 0.80508107;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.18851133 0.094010167 0 
		-0.18851133 0.094010167 0 0.18851133 -0.094010167 0 -0.18851133 -0.094010167 0 0.18851133 
		-0.094010167 0 -0.18851133 -0.094010167 0 0.18851133 0.094010167 0 -0.18851133 0.094010167 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "earPike" -p "gEar";
	setAttr ".t" -type "double3" 0.81579761148869934 0.74820236963647202 -0.033501520438999843 ;
	setAttr ".s" -type "double3" 0.47045358830595491 0.47045358830595491 0.47045358830595491 ;
	setAttr ".rp" -type "double3" 0 -1.0446168115095909e-016 0 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503136e-016 0 ;
	setAttr ".spt" -type "double3" 0 1.1758292377407226e-016 0 ;
createNode mesh -n "earPikeShape" -p "earPike";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58019570385592656 0.84804364848763147 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.58019578 0.82212114 
		0.55672693 0.84559 0.58019578 0.86905879 0.60366458 0.84559 0.54351282 0.81136078 
		0.5618543 0.81136078 0.58019578 0.81136078 0.59853715 0.81136078 0.61687863 0.81136078 
		0.58019578 0.88472652;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  -0.73068583 0.49999991 -0.50000006 -0.73068583 
		0.5 0.49999994 -0.73068583 -0.49999997 0.5 -0.73068583 -0.49999997 -0.49999997 0.73068571 
		0.5 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0;
	setAttr -s 5 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1 
		mu 0 4 0 3 2 1 
		f 3 0 5 -5 
		mu 0 3 4 5 9 
		f 3 1 6 -6 
		mu 0 3 5 6 9 
		f 3 2 7 -7 
		mu 0 3 6 7 9 
		f 3 3 4 -8 
		mu 0 3 7 8 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode parentConstraint -n "gHead_parentConstraint1" -p "gHead";
	addAttr -ci true -k true -sn "w0" -ln "headW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "gFace" -p "gHead";
createNode transform -n "beak" -p "gFace";
	setAttr ".t" -type "double3" 0 0.53341166057625333 0.76407914086076478 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.39638018342042303 0.39638018342042303 0.39638018342042303 ;
createNode mesh -n "beakShape" -p "beak";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74352715298269645 0.78592346003366464 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 5 ".uvst[0].uvsp[0:4]" -type "float2" 0.74352723 0.81807363 
		0.71338254 0.81807363 0.74352723 0.75377327 0.74352723 0.81807363 0.77367175 0.81807363;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  9.2725848e-008 -0.7541523 -0.41527373 -0.70710683 
		-0.75415218 -1.4643993e-008 -3.090862e-008 -0.75415218 0.41527379 0.70710683 -0.75415218 
		-1.4643993e-008 0 0.75415248 6.1779929e-008;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "mask" -p "gFace";
	setAttr ".t" -type "double3" 0 0.53972316045891777 0.38172996776373413 ;
createNode mesh -n "maskShape" -p "mask";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6365169882774353 0.69526761770248413 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.61307102 0.77993286 
		0.61307102 0.69526762 0.63651699 0.69526762 0.63651699 0.77993286 0.63711441 0.7799654 
		0.63711441 0.69530016 0.6661129 0.69530016 0.6661129 0.7799654 0.66692805 0.77999812 
		0.66692805 0.69533288 0.69037396 0.69533288 0.69037396 0.77999812 0.6912117 0.77990019 
		0.6912117 0.69523495 0.72021025 0.69523495 0.72021025 0.77990019 0.63687396 0.80980349 
		0.63687396 0.78080493 0.66031986 0.78080493 0.66031986 0.80980349 0.6664471 0.80980349 
		0.6664471 0.78080493 0.68989313 0.78080493 0.68989313 0.80980349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.52439415 -0.14521819 0.17960966 0.52439415 
		-0.14521819 0.17960966 -0.52439415 0.14521819 0.17960966 0.52439415 0.14521819 0.17960966 
		-0.52439415 0.14521819 -0.17960969 0.52439415 0.14521819 -0.17960969 -0.52439415 
		-0.14521819 -0.17960969 0.52439415 -0.14521819 -0.17960969;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "eyemask" -p "gFace";
	setAttr ".t" -type "double3" -0.245 0.72228275546920562 0.3596102538620376 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.14260232986945187 0.14260232986945187 0.14260232986945187 ;
	setAttr ".rp" -type "double3" 8.499761216011755e-009 0.14260232986945187 4.2498806080058775e-009 ;
	setAttr ".rpt" -type "double3" 0 -0.14260233411933246 0.14260232561957126 ;
	setAttr ".sp" -type "double3" 5.9604644775390625e-008 1 2.9802322387695313e-008 ;
	setAttr ".spt" -type "double3" -5.110488355937887e-008 -0.85739767013054813 -2.5552441779689435e-008 ;
createNode mesh -n "eyemaskShape" -p "eyemask";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.86678086409141508 0.9702261614754768 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.8799783 0.95702875 
		0.86678088 0.95156217 0.85358346 0.95702875 0.84811682 0.97022611 0.85358346 0.98342353 
		0.86678088 0.98889011 0.8799783 0.98342353 0.88544488 0.97022611 0.86678088 0.96947956;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 1 -0.70710671 0 1 -0.99999988 
		-0.70710671 1 -0.70710671 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 
		0.70710677 1 0.70710677 1 1 0 0 1 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 0 0 0 8 1 1 8 1 
		2 8 1 3 8 1 4 8 1 5 8 1 
		6 8 1 7 8 1;
	setAttr -s 8 ".fc[0:7]" -type "polyFaces" 
		f 3 0 9 -9 
		mu 0 3 6 5 8 
		f 3 1 10 -10 
		mu 0 3 5 4 8 
		f 3 2 11 -11 
		mu 0 3 4 3 8 
		f 3 3 12 -12 
		mu 0 3 3 2 8 
		f 3 4 13 -13 
		mu 0 3 2 1 8 
		f 3 5 14 -14 
		mu 0 3 1 0 8 
		f 3 6 15 -15 
		mu 0 3 0 7 8 
		f 3 7 8 -16 
		mu 0 3 7 6 8 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "glasses" -p "gFace";
createNode mesh -n "glassesShape" -p "glasses";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.86318139215273659 0.93337365017599283 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.86557412 0.93337363 
		0.86002886 0.94297141 0.8585847 0.94043869 0.86266661 0.93337363 0.84893835 0.94297141 
		0.85042077 0.94043869 0.84339309 0.93337363 0.84633887 0.93337363 0.84893835 0.92377585 
		0.85042077 0.92630857 0.86002886 0.92377585 0.8585847 0.92630857 0.89018971 0.93337363 
		0.88464445 0.94297141 0.8831811 0.94043869 0.88726312 0.93337363 0.87355393 0.94297141 
		0.87501723 0.94043869 0.86800867 0.93337363 0.87093532 0.93337363 0.87355393 0.92377585 
		0.87501723 0.92630857 0.88464445 0.92377585 0.8831811 0.92630857;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.13030471 0.78766143 0.59170669 -0.26969525 
		0.78766143 0.59170669 -0.33939052 0.66703212 0.59115976 -0.26969528 0.54640281 0.59061283 
		-0.13030474 0.54640281 0.59061283 -0.060609475 0.66703212 0.59115976 -0.16112095 
		0.73406249 0.59146374 -0.23857646 0.73406249 0.59146374 -0.27730423 0.66703212 0.59115976 
		-0.23857649 0.60000175 0.59085578 -0.16112095 0.60000175 0.59085578 -0.12239319 0.66703212 
		0.59115976 0.26981905 0.78766143 0.59170669 0.13042849 0.78766143 0.59170669 0.060733214 
		0.66703212 0.59115976 0.13042846 0.54640281 0.59061283 0.26981899 0.54640281 0.59061283 
		0.33951426 0.66703212 0.59115976 0.2388515 0.73406249 0.59146374 0.16139601 0.73406249 
		0.59146374 0.12266822 0.66703212 0.59115976 0.16139597 0.60000175 0.59085578 0.23885149 
		0.60000175 0.59085578 0.27757925 0.66703212 0.59115976;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 0 0 
		0 6 1 1 7 1 2 8 1 3 9 1 
		4 10 1 5 11 1 11 6 0 6 7 0 
		7 8 0 8 9 0 9 10 0 10 11 0 
		12 13 0 13 14 0 14 15 0 15 16 0 
		16 17 0 17 12 0 12 18 1 13 19 1 
		14 20 1 15 21 1 16 22 1 17 23 1 
		23 18 0 18 19 0 19 20 0 20 21 0 
		21 22 0 22 23 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 5 6 -13 -12 
		mu 0 4 0 1 2 3 
		f 4 0 7 -14 -7 
		mu 0 4 1 4 5 2 
		f 4 1 8 -15 -8 
		mu 0 4 4 6 7 5 
		f 4 2 9 -16 -9 
		mu 0 4 6 8 9 7 
		f 4 3 10 -17 -10 
		mu 0 4 8 10 11 9 
		f 4 4 11 -18 -11 
		mu 0 4 10 0 3 11 
		f 4 23 24 -31 -30 
		mu 0 4 12 13 14 15 
		f 4 18 25 -32 -25 
		mu 0 4 13 16 17 14 
		f 4 19 26 -33 -26 
		mu 0 4 16 18 19 17 
		f 4 20 27 -34 -27 
		mu 0 4 18 20 21 19 
		f 4 21 28 -35 -28 
		mu 0 4 20 22 23 21 
		f 4 22 29 -36 -29 
		mu 0 4 22 12 15 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "gHat" -p "gHead";
createNode transform -n "hat4" -p "gHat";
	setAttr ".t" -type "double3" 0 1.2109426954102687 0.0194911453187816 ;
	setAttr ".s" -type "double3" 1.1971931120246624 0.59859655601233119 1.1971931120246624 ;
createNode mesh -n "hat4Shape" -p "hat4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.84010306000709534 0.89482584595680237 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.73862088 0.90628022 
		0.81430483 0.8821665 0.81493789 0.90677363 0.76414227 0.90738857 0.81457752 0.9577601 
		0.76407486 0.95748842 0.84042364 0.95780706 0.76417446 0.83232808 0.81483644 0.98330414 
		0.81401491 0.83235306 0.7639187 0.98333263 0.73826057 0.95726681 0.81466204 0.95748127 
		0.76410657 0.9573139 0.81458634 0.8821665 0.84015983 0.90677363 0.81458634 0.90738857 
		0.81458634 0.90738857 0.76414227 0.90738857 0.76386076 0.8821665 0.76414227 0.8821665 
		0.76384294 0.90628022;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.49999988 
		0.5 0.5 0.49999988 0.5 -0.5 0.49999988 -0.5 0.5 0.49999988 -0.5 -0.5 -0.5 -0.5 0.5 
		-0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 20 14 16 18 
		f 4 1 7 -3 -7 
		mu 0 4 3 17 12 5 
		f 4 2 9 -4 -9 
		mu 0 4 5 12 8 10 
		f 4 3 11 -1 -11 
		mu 0 4 7 9 1 19 
		f 4 -12 -10 -8 -6 
		mu 0 4 15 6 4 2 
		f 4 10 4 6 8 
		mu 0 4 11 0 21 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode mesh -n "hat4Shape2Orig" -p "hat4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.35075077 0.36474639 
		0.6492492 0.36474639 0.6492492 0.51399559 0.35075077 0.51399559 0.9509573 0.51612765 
		0.35035229 0.81045711 0.95123565 0.36318627 0.35260761 0.069832176 0.65072984 0.96321952 
		0.64753431 0.069979906 0.34942818 0.96338761 0.049042702 0.36261433 0.6496976 0.81041491 
		0.048764318 0.5155558;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.49999988 
		0.5 0.5 0.49999988 0.5 -0.5 0.49999988 -0.5 0.5 0.49999988 -0.5 -0.5 -0.5 -0.5 0.5 
		-0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 3 2 12 5 
		f 4 2 9 -4 -9 
		mu 0 4 5 12 8 10 
		f 4 3 11 -1 -11 
		mu 0 4 7 9 1 0 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 6 4 2 
		f 4 10 4 6 8 
		mu 0 4 11 0 3 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "hat1" -p "gHat";
	setAttr ".t" -type "double3" 0 1.5466007147745238 0 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 1.1 1.1 1.1 ;
createNode mesh -n "hatShape1" -p "hat1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52284854090777211 0.90717701420998709 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.5769527 0.9887352 
		0.64128017 0.9887352 0.64128017 0.92440784 0.5769527 0.92440778 0.64971328 0.93104881 
		0.5702467 0.93104881 0.5702467 0.98724002 0.47865668 0.93028712 0.5606429 0.93028712 
		0.51964974 0.98826015 0.5606429 0.93028712 0.47865668 0.93028712 0.5606429 0.9161222 
		0.5702467 0.93104881 0.64971328 0.93104881 0.5702467 0.91731918 0.64971328 0.91731918 
		0.64971328 0.91731918 0.47865668 0.9161222 0.47865668 0.9161222 0.5606429 0.9161222 
		0.5702467 0.91731918;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  7.6630634e-008 -0.35355335 -0.70710695 -0.70710695 
		-0.35355335 -7.6630634e-008 0 -0.35355335 0.70710695 0.70710695 -0.35355335 0 -0.35355347 
		0.3535538 0.35355347 0.70710695 -0.52632606 0 7.6630634e-008 -0.52632606 -0.70710695 
		0 -0.52632606 0.70710695 -0.70710695 -0.52632606 -7.6630634e-008;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0;
	setAttr -s 9 ".fc[0:8]" -type "polyFaces" 
		f 4 -11 -13 -15 -16 
		mu 0 4 0 1 2 3 
		f 3 0 5 -5 
		mu 0 3 4 5 6 
		f 3 1 6 -6 
		mu 0 3 7 8 9 
		f 3 2 7 -7 
		mu 0 3 13 14 6 
		f 3 3 4 -8 
		mu 0 3 10 11 9 
		f 4 -4 8 10 -10 
		mu 0 4 11 10 12 18 
		f 4 -3 11 12 -9 
		mu 0 4 14 13 15 16 
		f 4 -2 13 14 -12 
		mu 0 4 8 7 19 20 
		f 4 -1 9 15 -14 
		mu 0 4 5 4 17 21 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "hat2" -p "gHat";
	setAttr ".t" -type "double3" 0 1.4621703199755964 0 ;
	setAttr ".s" -type "double3" 1.1081068426081451 1.1081068426081451 1.1081068426081451 ;
createNode mesh -n "hatShape2" -p "hat2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67824838259065023 0.90510990075054132 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.65846443 0.82597417 
		0.69803226 0.82597417 0.65846443 0.86554199 0.69803226 0.86554199 0.65846443 0.90510988 
		0.69803226 0.90510988 0.65846443 0.94467765 0.69803226 0.94467765 0.65846443 0.98424566 
		0.69803226 0.98424566 0.73760015 0.82597417 0.73760015 0.86554199 0.61889654 0.82597417 
		0.61889654 0.86554199;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -5.9604645e-008 0 0 -5.9604645e-008 
		0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 -5.9604645e-008 
		0 0 -5.9604645e-008 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.50000006 0.5 0.5 -0.50000006 0.5 
		-0.5 0.50000006 0.5 0.5 0.50000006 0.5 -0.5 0.50000006 -0.5 0.5 0.50000006 -0.5 -0.5 
		-0.50000006 -0.5 0.5 -0.50000006 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "hat3" -p "gHat";
	setAttr ".t" -type "double3" 0 0.96614734054774343 0 ;
	setAttr ".s" -type "double3" 1.5501583984079899 1.5501583984079899 1.5501583984079899 ;
createNode mesh -n "hatShape3" -p "hat3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.93931884960818057 0.91436963390006798 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.89143854 0.91404611 
		0.89143854 0.84090358 0.89643383 0.84090358 0.89643383 0.91404611 0.8970778 0.84095705 
		0.97022033 0.84095705 0.97022033 0.91409957 0.8970778 0.91409957 0.97092521 0.91415983 
		0.97092521 0.84101713 0.97592056 0.84101713 0.97592056 0.91415983 0.89680928 0.91469312 
		0.96995175 0.91469312 0.96995175 0.98783571 0.89680928 0.98783571 0.97656471 0.91404611 
		0.97656471 0.84090358 0.98155981 0.84090358 0.98155981 0.91404611 0.98220384 0.91404611 
		0.98220384 0.84090358 0.98719913 0.84090358 0.98719913 0.91404611;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.034147441 0.5 0.5 -0.034147441 0.5 
		-0.5 0.034147441 0.5 0.5 0.034147441 0.5 -0.5 0.034147441 -0.5 0.5 0.034147441 -0.5 
		-0.5 -0.034147441 -0.5 0.5 -0.034147441 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
createNode transform -n "ponyTail" -p "gHat";
	setAttr ".t" -type "double3" 0 0.76690619811980276 -0.9448339166668196 ;
	setAttr ".s" -type "double3" 0.46551146385437731 0.46551146385437731 0.46551146385437731 ;
createNode mesh -n "outputCloth2" -p "ponyTail";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.39963601529598236 0.5122436136007309 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.38278753 0.53541344 
		0.4086796 0.50513327 0.44135407 0.50818622 0.40052471 0.5494203 0.35492924 0.54612476 
		0.35998848 0.56094205 0.3181833 0.50388527 0.31692442 0.51783508 0.41819686 0.45627061 
		0.45207655 0.4401736 0.45876586 0.53795415 0.41121578 0.57341009 0.36711499 0.58431363 
		0.31692442 0.53806227 0.48234761 0.48773396 0.40052471 0.5494203 0.44135407 0.50818622 
		0.35998848 0.56094205 0.31692442 0.51783508 0.45207655 0.4401736;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1.9429349e-016 -0.0074701863 -0.38211757 
		-2.8804406e-016 0.4758783 0.031186696 -2.7077735e-016 0.64685875 0.47587767 2.0422307e-017 
		-0.027390955 1.0624371 -5.1621444e-017 -0.78744423 -0.53403807 0.62502992 0.041263018 
		-0.9036864 0.43301275 0.69946432 -0.25194502 0.2081347 0.88338447 0.39511859 0.20813471 
		0.19528462 1.0825316 0.43301275 -1.0443941 -1.0748452 -0.62503004 0.041263018 -0.9036864 
		-0.43301275 0.69946432 -0.25194502 -0.2081348 0.88338447 0.39511859 -0.20813476 0.19528462 
		1.0825316 -0.43301275 -1.0443941 -1.0748452 -4.693328e-016 -0.28520864 -1.5580493 
		-5.9604645e-008 0.51643646 -1.1816241 -4.2805236e-016 1.0824044 -0.4226014 -5.2154068e-008 
		1.2564532 0.28136089 -2.2351742e-008 0.51816189 1.0825316;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 4 0 0 5 6 0 6 7 0 
		7 8 0 9 5 0 10 11 0 11 12 0 
		12 13 0 14 10 0 0 5 0 1 6 0 
		2 7 0 3 8 0 4 9 0 5 16 0 
		6 17 0 7 18 0 8 19 0 9 15 0 
		10 0 0 11 1 0 12 2 0 13 3 0 
		14 4 0 15 14 0 16 10 0 15 16 0 
		17 11 0 16 17 0 18 12 0 17 18 0 
		19 13 0 18 19 0 15 4 0 19 3 0 
		16 9 0 16 14 0;
	setAttr -s 22 ".fc[0:21]" -type "polyFaces" 
		f 4 -1 12 4 -14 
		mu 0 4 0 1 2 3 
		f 4 -2 13 5 -15 
		mu 0 4 4 0 3 5 
		f 4 -3 14 6 -16 
		mu 0 4 6 4 5 7 
		f 4 -4 16 7 -13 
		mu 0 4 1 8 9 2 
		f 4 -5 17 31 -19 
		mu 0 4 3 2 10 11 
		f 4 -6 18 33 -20 
		mu 0 4 5 3 11 12 
		f 4 -7 19 35 -21 
		mu 0 4 7 5 12 13 
		f 3 38 21 29 
		mu 0 3 10 9 14 
		f 4 -9 22 0 -24 
		mu 0 4 15 16 1 0 
		f 4 -10 23 1 -25 
		mu 0 4 17 15 0 4 
		f 4 -11 24 2 -26 
		mu 0 4 18 17 4 6 
		f 4 -12 26 3 -23 
		mu 0 4 16 19 8 1 
		f 3 36 -27 -28 
		mu 0 3 14 8 19 
		f 3 20 37 15 
		mu 0 3 7 13 6 
		f 3 39 11 -29 
		mu 0 3 10 19 16 
		f 4 -32 28 8 -31 
		mu 0 4 11 10 16 15 
		f 4 -34 30 9 -33 
		mu 0 4 12 11 15 17 
		f 4 -36 32 10 -35 
		mu 0 4 13 12 17 18 
		f 3 -17 -37 -22 
		mu 0 3 9 8 14 
		f 3 -38 34 25 
		mu 0 3 6 13 18 
		f 3 -8 -39 -18 
		mu 0 3 2 9 10 
		f 3 -30 27 -40 
		mu 0 3 10 14 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
	setAttr ".dr" 1;
	setAttr ".qsp" 0;
createNode mesh -n "outputCloth2Orig" -p "ponyTail";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.7630704 0.25906348 
		0.82332832 0.18859342 0.89937073 0.19569853 0.80434972 0.29166138 0.69823653 0.28399169 
		0.71001083 0.31847608 0.61271864 0.18568906 0.60978895 0.21815419 0.84547764 0.074876666 
		0.92432493 0.037414521 0.93989283 0.26497668 0.82923073 0.34749234 0.72659618 0.37286782 
		0.60978895 0.26522827 0.99477392 0.14810038 0.80434972 0.29166138 0.89937073 0.19569853 
		0.71001083 0.31847608 0.60978895 0.21815419 0.92432493 0.037414521;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  5.5511151e-017 -0.0074701863 -0.38211757 
		-5.5511135e-017 0.4758783 0.031186696 -1.110223e-016 0.64685875 0.47587767 -5.5511164e-017 
		-0.027390955 1.0624371 1.110223e-016 -0.78744423 -0.53403807 0.62502992 0.041263018 
		-0.9036864 0.43301275 0.69946432 -0.25194502 0.2081347 0.88338447 0.39511859 0.20813471 
		0.19528462 1.0825316 0.43301275 -1.0443941 -1.0748452 -0.62503004 0.041263018 -0.9036864 
		-0.43301275 0.69946432 -0.25194502 -0.2081348 0.88338447 0.39511859 -0.20813476 0.19528462 
		1.0825316 -0.43301275 -1.0443941 -1.0748452 0 -0.28520864 -1.5580493 -5.9604645e-008 
		0.51643646 -1.1816241 0 1.0824044 -0.4226014 -5.2154068e-008 1.2564532 0.28136089 
		-2.2351742e-008 0.51816189 1.0825316;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 4 0 0 5 6 0 6 7 0 
		7 8 0 9 5 0 10 11 0 11 12 0 
		12 13 0 14 10 0 0 5 0 1 6 0 
		2 7 0 3 8 0 4 9 0 5 16 0 
		6 17 0 7 18 0 8 19 0 9 15 0 
		10 0 0 11 1 0 12 2 0 13 3 0 
		14 4 0 15 14 0 16 10 0 15 16 0 
		17 11 0 16 17 0 18 12 0 17 18 0 
		19 13 0 18 19 0 15 4 0 19 3 0 
		16 9 0 16 14 0;
	setAttr -s 22 ".fc[0:21]" -type "polyFaces" 
		f 4 -1 12 4 -14 
		mu 0 4 0 1 2 3 
		f 4 -2 13 5 -15 
		mu 0 4 4 0 3 5 
		f 4 -3 14 6 -16 
		mu 0 4 6 4 5 7 
		f 4 -4 16 7 -13 
		mu 0 4 1 8 9 2 
		f 4 -5 17 31 -19 
		mu 0 4 3 2 10 11 
		f 4 -6 18 33 -20 
		mu 0 4 5 3 11 12 
		f 4 -7 19 35 -21 
		mu 0 4 7 5 12 13 
		f 3 38 21 29 
		mu 0 3 10 9 14 
		f 4 -9 22 0 -24 
		mu 0 4 15 16 1 0 
		f 4 -10 23 1 -25 
		mu 0 4 17 15 0 4 
		f 4 -11 24 2 -26 
		mu 0 4 18 17 4 6 
		f 4 -12 26 3 -23 
		mu 0 4 16 19 8 1 
		f 3 36 -27 -28 
		mu 0 3 14 8 19 
		f 3 20 37 15 
		mu 0 3 7 13 6 
		f 3 39 11 -29 
		mu 0 3 10 19 16 
		f 4 -32 28 8 -31 
		mu 0 4 11 10 16 15 
		f 4 -34 30 9 -33 
		mu 0 4 12 11 15 17 
		f 4 -36 32 10 -35 
		mu 0 4 13 12 17 18 
		f 3 -17 -37 -22 
		mu 0 3 9 8 14 
		f 3 -38 34 25 
		mu 0 3 6 13 18 
		f 3 -8 -39 -18 
		mu 0 3 2 9 10 
		f 3 -30 27 -40 
		mu 0 3 10 14 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "meshHat" -p "gHat";
	setAttr ".t" -type "double3" 0 1.4574745020774347 0 ;
	setAttr ".s" -type "double3" 0.91576619549232496 1.3844924821807256 1.3844924821807256 ;
createNode mesh -n "meshHatShape" -p "meshHat";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87501609478732856 0.73612117733785409 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.81387269 0.7431677 
		0.97921151 0.79903919 0.83432907 0.67320317 0.94075561 0.67320317 0.97468638 0.67320317 
		0.94075561 0.67320317 0.83432907 0.67320317 0.77082068 0.67320317;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.70710665 -0.35355353 0.32296109 -3.090862e-008 
		-0.35355353 0.70710689 0.70710665 -0.35355353 0.32296115 -7.7271549e-009 0.06964352 
		0.44669634 0.60834479 -0.35355353 -0.32078528 -0.60834479 -0.35355353 -0.32078534 
		7.4505806e-009 0.4075954 -0.55339491 0 -0.35355353 -0.52602381;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 
		2 4 0 1 3 0 5 0 0 4 7 0 
		4 6 0 6 5 0 3 6 0 7 5 0 
		7 6 0 2 3 0 0 3 0 6 2 0 
		6 0 0;
	setAttr -s 9 ".fc[0:8]" -type "polyFaces" 
		f 3 8 14 12 
		mu 0 3 0 1 2 
		f 6 -10 -6 -3 -2 -1 -5 
		mu 0 6 3 4 5 6 7 2 
		f 3 5 10 -7 
		mu 0 3 5 4 1 
		f 3 11 -4 1 
		mu 0 3 6 0 7 
		f 3 9 -8 -11 
		mu 0 3 4 3 1 
		f 3 13 2 6 
		mu 0 3 1 6 5 
		f 3 -13 0 3 
		mu 0 3 0 2 7 
		f 3 -9 -12 -14 
		mu 0 3 1 0 6 
		f 3 -15 7 4 
		mu 0 3 2 1 3 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "gDec" -p "gHat";
createNode transform -n "ribbon" -p "gDec";
	setAttr ".t" -type "double3" 0 1.1333964922843163 0.42877307196589487 ;
	setAttr ".r" -type "double3" 70.941703377765592 0 0 ;
	setAttr ".s" -type "double3" 0.6335178686433538 0.6335178686433538 0.6335178686433538 ;
createNode mesh -n "ribbonShape" -p "ribbon";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56793664395809174 0.8910815417766571 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.49086115 0.87977087 
		0.48695621 0.87586594 0.51738811 0.90629798 0.64891624 0.90022719 0.50565982 0.89456785 
		0.54043943 0.88877273 0.64891708 0.90022624 0.50308877 0.89199704 0.54043865 0.88877344 
		0.49086198 0.87977016 0.50565886 0.89456868 0.48695704 0.8758651 0.50308818 0.89199787 
		0.51738888 0.90629727;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.9317884e-008 0.01206534 -1.003584 -0.93382728 
		-0.80399156 -1.45824 0.93382728 -0.80399156 -1.45824 -0.74414444 -0.23650296 -0.85754883 
		-1.5803472e-008 -0.033092912 -0.56420213 0.74414444 -0.23650296 -0.85754883 1.1597906e-008 
		-0.39325845 -0.64651263 -1.5106941e-008 -0.1408792 -0.25936112;
	setAttr -s 18 ".ed[0:17]"  0 1 0 2 0 0 
		3 1 0 4 0 0 5 2 0 6 0 0 
		3 6 0 4 3 0 5 4 0 5 6 0 
		7 4 0 7 6 0 7 3 0 5 7 0 
		2 6 0 1 6 0 0 5 0 0 3 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 -2 14 5 
		mu 0 3 2 3 10 
		f 3 -7 2 15 
		mu 0 3 4 5 6 
		f 3 3 17 -8 
		mu 0 3 7 13 5 
		f 3 1 16 4 
		mu 0 3 3 2 8 
		f 3 -10 13 11 
		mu 0 3 10 8 0 
		f 3 12 6 -12 
		mu 0 3 9 5 4 
		f 3 -13 10 7 
		mu 0 3 5 11 7 
		f 3 -14 8 -11 
		mu 0 3 1 8 12 
		f 3 -15 -5 9 
		mu 0 3 10 3 8 
		f 3 -16 -1 -6 
		mu 0 3 4 6 13 
		f 3 -17 -4 -9 
		mu 0 3 8 2 12 
		f 3 -18 0 -3 
		mu 0 3 5 13 6 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode mesh -n "ribbonShape4Orig" -p "ribbon";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.049972177 0.5808267 
		0.31104258 0.77491868 0.25956881 0.79043019 0.24263829 0.77349973 0.3110393 0.77492201 
		0.3745811 0.9054426 0.94484359 0.87912202 0.32373068 0.85458493 0.47452411 0.82945907 
		0.94484717 0.87911808 0.31258413 0.84343874 0.47452083 0.82946241 0.25957224 0.79042673 
		0.32372704 0.85458845 0.2426416 0.77349621 0.31258079 0.8434422 0.37458453 0.90543914 
		0.049968779 0.5808301;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3.090862e-008 -0.3535535 0.70710671 1.9317884e-008 
		-0.042521521 -0.84557474 -1.0589654 -0.63094163 -1.9591575 1.0589654 -0.63094163 
		-1.9591575 -0.31226617 -0.23650296 -0.85754883 -1.5803472e-008 -0.033092912 -0.56420213 
		0.31226614 -0.23650296 -0.85754883 1.1597906e-008 -0.19750883 -0.57888776 -0.11889054 
		-0.18414831 -0.37072292 -2.2622567e-008 -0.078399986 -0.23444338 0.11889048 -0.18414831 
		-0.37072292 -7.5913151e-009 -0.20335841 -0.28427884;
	setAttr -s 26 ".ed[0:25]"  1 2 1 3 1 1 
		0 8 1 0 9 1 0 10 1 0 11 0 
		4 2 1 5 1 1 6 3 1 7 1 0 
		4 7 1 5 4 1 6 5 1 6 7 1 
		8 4 1 9 5 1 10 6 1 11 7 0 
		8 11 1 9 8 1 10 9 1 10 11 1 
		5 3 0 2 5 0 3 7 0 2 7 0;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 3 2 18 -6 
		mu 0 3 0 1 12 
		f 3 3 19 -3 
		mu 0 3 0 14 1 
		f 3 4 20 -4 
		mu 0 3 17 4 3 
		f 3 -2 24 9 
		mu 0 3 5 6 13 
		f 3 -11 6 25 
		mu 0 3 7 8 9 
		f 3 23 7 0 
		mu 0 3 9 10 16 
		f 3 22 1 -8 
		mu 0 3 15 6 5 
		f 4 -14 -17 21 17 
		mu 0 4 13 11 4 2 
		f 4 -19 14 10 -18 
		mu 0 4 12 1 8 7 
		f 4 -20 15 11 -15 
		mu 0 4 1 14 10 8 
		f 4 -21 16 12 -16 
		mu 0 4 3 4 11 15 
		f 3 -22 -5 5 
		mu 0 3 2 4 17 
		f 3 -13 8 -23 
		mu 0 3 15 11 6 
		f 3 -12 -24 -7 
		mu 0 3 8 10 9 
		f 3 -25 -9 13 
		mu 0 3 13 6 11 
		f 3 -26 -1 -10 
		mu 0 3 7 9 16 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode transform -n "meshShepherd" -p "gDec";
	setAttr ".t" -type "double3" 0 2.2471742244434356 -0.83834237774653686 ;
	setAttr ".r" -type "double3" 12.441077944289431 0 0 ;
createNode mesh -n "meshShepherdShape" -p "meshShepherd";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87010910528413266 0.78248814190082661 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.75101483 0.73928654 
		0.82050413 0.79094809 0.80680335 0.79507679 0.80229688 0.79057038 0.82050329 0.79094899 
		0.83741623 0.82568973 0.98920327 0.8186841 0.82388133 0.81215292 0.86401808 0.80546516 
		0.98920423 0.81868303 0.82091445 0.8091861 0.86401725 0.805466 0.80680424 0.79507589 
		0.82388037 0.81215382 0.80229777 0.79056948 0.82091361 0.80918705 0.83741707 0.82568878 
		0.75101399 0.73928744;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3.090862e-008 -0.3535535 0.70710671 1.9317884e-008 
		-0.042521521 -0.84557474 -1.0589654 -0.63094163 -1.9591575 1.0589654 -0.63094163 
		-1.9591575 -0.31226617 -0.23650296 -0.85754883 -1.5803472e-008 -0.033092912 -0.56420213 
		0.31226614 -0.23650296 -0.85754883 1.1597906e-008 -0.19750883 -0.57888776 -0.11889054 
		-0.18414831 -0.37072292 -2.2622567e-008 -0.078399986 -0.23444338 0.11889048 -0.18414831 
		-0.37072292 -7.5913151e-009 -0.20335841 -0.28427884;
	setAttr -s 26 ".ed[0:25]"  1 2 1 3 1 1 
		0 8 1 0 9 1 0 10 1 0 11 0 
		4 2 1 5 1 1 6 3 1 7 1 0 
		4 7 1 5 4 1 6 5 1 6 7 1 
		8 4 1 9 5 1 10 6 1 11 7 0 
		8 11 1 9 8 1 10 9 1 10 11 1 
		5 3 0 2 5 0 3 7 0 2 7 0;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 3 2 18 -6 
		mu 0 3 0 1 12 
		f 3 3 19 -3 
		mu 0 3 0 14 1 
		f 3 4 20 -4 
		mu 0 3 17 4 3 
		f 3 -2 24 9 
		mu 0 3 5 6 13 
		f 3 -11 6 25 
		mu 0 3 7 8 9 
		f 3 23 7 0 
		mu 0 3 9 10 16 
		f 3 22 1 -8 
		mu 0 3 15 6 5 
		f 4 -14 -17 21 17 
		mu 0 4 13 11 4 2 
		f 4 -19 14 10 -18 
		mu 0 4 12 1 8 7 
		f 4 -20 15 11 -15 
		mu 0 4 1 14 10 8 
		f 4 -21 16 12 -16 
		mu 0 4 3 4 11 15 
		f 3 -22 -5 5 
		mu 0 3 2 4 17 
		f 3 -13 8 -23 
		mu 0 3 15 11 6 
		f 3 -12 -24 -7 
		mu 0 3 8 10 9 
		f 3 -25 -9 13 
		mu 0 3 13 6 11 
		f 3 -26 -1 -10 
		mu 0 3 7 9 16 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode transform -n "emCone" -p "gHead";
	setAttr ".t" -type "double3" 0 0.6643380115780475 1.1652023422851474 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 90.000000000000142 ;
	setAttr ".s" -type "double3" 0.66953550993947308 0.66953550993947308 0.66953550993947308 ;
createNode mesh -n "emConeShape" -p "emCone";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35642516613006592 0.67024834227606678 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "emGetta" -p "gHead";
	setAttr ".t" -type "double3" 0 0.6643380115780475 1.1752952421217127 ;
	setAttr ".s" -type "double3" 0.66953550993947308 0.66953550993947308 0.66953550993947308 ;
	setAttr ".rp" -type "double3" 0 0.34659731379128411 -0.95952844961922001 ;
	setAttr ".sp" -type "double3" 0 0.51766830682754517 -1.4331255555152893 ;
	setAttr ".spt" -type "double3" 0 -0.17107099303626105 0.47359710589606929 ;
createNode mesh -n "emGettaShape" -p "emGetta";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.19179940223693848 0.90801877331331116 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape10" -p "emGetta";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.62500006 0.033493668 
		0.37500003 0.033493623 0.25 0.24999997 0.37499997 0.46650636 0.625 0.46650636 0.75 
		0.25 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 
		0.74999994 0.5 0.5 1 0.62500006 0.033493668 0.75 0.25 0.625 0.46650636 0.37499997 
		0.46650636 0.25 0.24999997 0.37500003 0.033493623;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0:5]" -type "float3" 0 0.92739606 0  0 0 0.17681286  0 0.32339817 
		0.17681286  0 0 0.17681286  0 0.92739606 0  0 -0.17269228 0 ;
	setAttr ".pt[7:9]" -type "float3" 0 -0.32293585 4.4408921e-016  0 0.052559122 
		0  0 0.052559122 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.17577723 -1.2907771 ;
	setAttr -s 13 ".vt[0:12]"  -1.6009011 0.84209824 -1 -0.86602545 -0.44559598 
		-1 -1.1920929e-007 -0.73415768 -1 0.86602545 -0.44559622 -1 1.6009011 0.842098 -1 
		0 1.0067775 -1 0 0 -0.27258956 0 0.92250681 -2.5936615 -0.86602527 0.50000024 -2.5258803 
		0.86602545 0.5 -2.5258803 0.86602545 -0.44559622 -2.5258803 -1.1920929e-007 -0.73415768 
		-2.5258803 -0.86602545 -0.44559598 -2.5258803;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 0 0 
		0 6 0 1 6 0 2 6 0 3 6 0 
		4 6 0 5 6 0 5 7 0 0 8 0 
		7 8 0 4 9 0 9 7 0 3 10 0 
		10 9 0 2 11 0 11 10 0 1 12 0 
		12 11 0 8 12 0 7 11 0 7 4 0 
		7 0 0;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 4 -24 -15 24 -23 
		mu 0 4 19 14 15 18 
		f 3 0 7 -7 
		mu 0 3 6 7 13 
		f 3 1 8 -8 
		mu 0 3 7 8 13 
		f 3 2 9 -9 
		mu 0 3 8 9 13 
		f 3 3 10 -10 
		mu 0 3 9 10 13 
		f 3 4 11 -11 
		mu 0 3 10 11 13 
		f 3 5 6 -12 
		mu 0 3 11 12 13 
		f 3 -6 12 26 
		mu 0 3 0 5 15 
		f 3 25 15 16 
		mu 0 3 15 4 16 
		f 4 -4 17 18 -16 
		mu 0 4 4 3 17 16 
		f 4 -3 19 20 -18 
		mu 0 4 3 2 18 17 
		f 4 -2 21 22 -20 
		mu 0 4 2 1 19 18 
		f 4 -1 13 23 -22 
		mu 0 4 1 0 14 19 
		f 4 -21 -25 -17 -19 
		mu 0 4 17 18 15 16 
		f 3 -5 -26 -13 
		mu 0 3 5 4 15 
		f 3 -27 14 -14 
		mu 0 3 0 15 14 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "emPyramid" -p "gHead";
	setAttr ".t" -type "double3" 0 1.7054309417755595 0 ;
createNode mesh -n "emPyramidShape" -p "emPyramid";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43164741788487332 0.79199522733688354 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[8:9]" -type "float3"  0 0 -8.9406967e-008 0 0 -8.9406967e-008;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "gWeapon" -p "mesh";
	setAttr ".rp" -type "double3" -1.29595 0.261542 -6.3517954519530055e-034 ;
	setAttr ".sp" -type "double3" -1.29595 0.261542 -6.3517954519530055e-034 ;
createNode transform -n "wCrossbow" -p "gWeapon";
	setAttr ".r" -type "double3" -90 -1.987846675914698e-016 2.6359074554374828 ;
	setAttr ".rp" -type "double3" -1.2825507481417149 4.007288699585192e-017 0.32086476700492877 ;
	setAttr ".rpt" -type "double3" -0.013399251858285111 0.26154199999999966 -0.32086476700492872 ;
	setAttr ".sp" -type "double3" -1.2825507481417149 4.007288699585192e-017 0.32086476700492877 ;
createNode mesh -n "wCrossbowShape" -p "wCrossbow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.15166375041007996 0.43678590655326843 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.15166375 0.60402411 
		0.19483998 0.57227898 0.17156431 0.4043017 0.15166375 0.40668935 0.15166375 0.4162994 
		0.15166375 0.36584634 0.15166375 0.37820753 0.15166375 0.60402411 0.18512335 0.30454949 
		0.15166375 0.30454949 0.22328511 0.39194474 0.22285125 0.41841045 0.29403868 0.42687884 
		0.13176319 0.4043017 0.10848755 0.57227898 0.11820415 0.30454949 0.080042362 0.39194474 
		0.080476254 0.41841045 0.0092887878 0.42687884;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -0.88738328 -1.2490009e-016 
		-0.8132599 -0.88738328 -1.1921748e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 
		-0.88738328 -1.110223e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 -0.88738328 
		-1.1921748e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 -0.88738328 -1.110223e-016 
		-0.8132599 -0.88738328 -1.1921748e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 
		-0.88738328 -1.110223e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 -0.88738328 
		-1.110223e-016 -0.8132599 -0.88738328 -1.1921748e-016 -0.8132599 -0.88738328 -1.1921748e-016 
		-0.8132599 -0.88738328 -1.110223e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599 
		-0.88738328 -1.110223e-016 -0.8132599 -0.88738328 -1.110223e-016 -0.8132599;
	setAttr -s 19 ".vt[0:18]"  8.5138201e-018 -0.075855054 2.5460587 0.13456441 
		2.2351742e-008 2.5622034 3.8999197e-017 0.19480419 2.8222322 1.2952047e-017 0.22549184 
		1.2117136 1.1537279e-017 -0.22549184 1.2117136 0.29195046 0 1.426369 -4.364639e-017 
		-0.43504095 3.2367115 0.22624832 -0.43504095 3.2367115 -3.2644663e-017 5.5196068e-017 
		2.7386479 3.4581423e-018 0.1899353 2.481077 0.484292 0.29777378 2.6457593 0.96271598 
		0.19637078 2.4095407 0.48135799 0.19315302 2.4668024 -0.29195046 -3.6938551e-017 
		1.426369 -0.13456441 2.2351742e-008 2.5622034 -0.22624832 -0.43504095 3.2367115 -0.484292 
		0.29777378 2.6457593 -0.48135799 0.19315302 2.4668024 -0.96271598 0.19637078 2.4095407;
	setAttr -s 45 ".ed[0:44]"  0 1 0 4 5 0 
		1 2 0 2 9 0 3 5 0 4 0 0 
		5 1 0 1 8 0 3 4 0 0 6 0 
		1 7 0 6 7 0 8 6 0 2 8 0 
		9 3 0 9 1 0 1 10 0 9 10 0 
		10 2 0 9 12 0 1 11 0 10 11 0 
		12 11 0 12 1 0 12 10 0 5 9 0 
		4 13 0 13 14 0 0 14 0 13 9 0 
		9 14 0 14 8 0 14 2 0 3 13 0 
		14 15 0 6 15 0 14 16 0 16 2 0 
		9 16 0 9 17 0 17 14 0 17 16 0 
		16 18 0 17 18 0 14 18 0;
	setAttr -s 28 ".fc[0:27]" -type "polyFaces" 
		f 4 1 6 -1 -6 
		mu 0 4 0 1 2 3 
		f 3 -7 25 15 
		mu 0 3 2 1 4 
		f 3 13 -8 2 
		mu 0 3 5 6 2 
		f 3 -9 4 -2 
		mu 0 3 0 7 1 
		f 4 0 10 -12 -10 
		mu 0 4 3 2 8 9 
		f 4 7 12 11 -11 
		mu 0 4 2 6 9 8 
		f 3 -3 16 18 
		mu 0 3 5 2 10 
		f 3 -18 -4 -19 
		mu 0 3 10 4 5 
		f 3 -16 19 23 
		mu 0 3 2 4 11 
		f 3 24 21 -23 
		mu 0 3 11 10 12 
		f 3 -17 20 -22 
		mu 0 3 10 2 12 
		f 3 -24 22 -21 
		mu 0 3 2 11 12 
		f 3 17 -25 -20 
		mu 0 3 4 10 11 
		f 3 -26 -5 -15 
		mu 0 3 4 1 7 
		f 4 5 28 -28 -27 
		mu 0 4 0 3 13 14 
		f 3 -31 -30 27 
		mu 0 3 13 4 14 
		f 3 -33 31 -14 
		mu 0 3 5 13 6 
		f 3 26 -34 8 
		mu 0 3 0 14 7 
		f 4 9 35 -35 -29 
		mu 0 4 3 9 15 13 
		f 4 34 -36 -13 -32 
		mu 0 4 13 15 9 6 
		f 3 -38 -37 32 
		mu 0 3 5 16 13 
		f 3 37 3 38 
		mu 0 3 16 5 4 
		f 3 -41 -40 30 
		mu 0 3 13 17 4 
		f 3 43 -43 -42 
		mu 0 3 17 18 16 
		f 3 42 -45 36 
		mu 0 3 16 18 13 
		f 3 44 -44 40 
		mu 0 3 13 18 17 
		f 3 39 41 -39 
		mu 0 3 4 17 16 
		f 3 14 33 29 
		mu 0 3 4 7 14 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wSword" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10831030527841617 0.62628710329304038 ;
	setAttr ".rp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
createNode mesh -n "wSwordShape" -p "wSword";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.2488679 0.022902727 
		0.22810498 0.022902727 0.22810498 0.17833942 0.20734218 0.022902727 0.22810498 0.022902727 
		0.22810498 0.011440992 0.23564687 0.011440992 0.22056308 0.011440992 0.22810498 0.011440992;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[1]" -type "float3" -0.079856284 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.079856284 0 0 ;
	setAttr -s 9 ".vt[0:8]"  0 0.29178977 1.1305993 -0.063783407 0.29178977 
		1.450668 0 0.29178977 1.7707366 0.063783407 0.29178977 1.450668 0 2.6879199 1.450668 
		0.063783407 0.11510098 1.450668 0 0.11510098 1.334406 0 0.11510098 1.5669302 -0.063783407 
		0.11510098 1.450668;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0;
	setAttr -s 8 ".fc[0:7]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wEdge" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10831030527841617 -0.27796906098977914 ;
	setAttr ".rp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
createNode mesh -n "wEdgeShape" -p "wEdge";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.29444703 0.022902727 
		0.28532335 0.022902727 0.27610764 0.075331569 0.29401466 0.075331569 0.26456055 0.022902727 
		0.25820073 0.075331569 0.28532335 0.022902727 0.27610764 0.075331569 0.28532335 0.011440992 
		0.29286525 0.011440992 0.27778146 0.011440992 0.28532335 0.011440992 0.27651939 0.13021052 
		0.29485962 0.13021052 0.26468703 0.13021052 0.27651939 0.13021052 0.29831192 0.17833942;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[9]" -type "float3" -0.064442419 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.064442419 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.042581558 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.042581558 0 0 ;
	setAttr -s 17 ".vt[0:16]"  0 0.29178977 1.3100221 -0.063783407 0.29178977 
		1.4506681 0 0.29178977 1.7707367 0.063783407 0.29178977 1.4506681 0 2.6879199 1.2504419 
		0.063783407 0.11510098 1.4506681 0 0.11510098 1.3344061 0 0.11510098 1.5669301 -0.063783407 
		0.11510098 1.4506681 -0.0550102 1.1000047 1.5927312 0 1.1000049 1.8687751 0.05501008 
		1.1000044 1.5927315 0 1.1000048 1.3166873 -0.036349058 1.9459896 1.5863855 0 1.9459896 
		1.7687867 0.036348939 1.9459896 1.5863855 0 1.9459896 1.3036616;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 
		2 3 0 3 0 0 1 9 0 2 10 0 
		3 11 0 3 5 0 0 6 0 5 6 0 
		2 7 0 7 5 0 1 8 0 8 7 0 
		6 8 0 0 12 0 9 13 0 10 14 0 
		11 15 0 12 16 0 9 12 1 10 9 1 
		11 10 1 12 11 1 13 4 0 14 4 0 
		15 4 0 16 4 0 13 16 1 14 13 1 
		15 14 1 16 15 1;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 4 0 4 20 -16 
		mu 0 4 0 1 2 3 
		f 4 1 5 21 -5 
		mu 0 4 1 4 5 2 
		f 4 2 6 22 -6 
		mu 0 4 4 6 7 5 
		f 4 3 15 23 -7 
		mu 0 4 6 0 3 7 
		f 4 -4 7 9 -9 
		mu 0 4 0 6 8 9 
		f 4 -3 10 11 -8 
		mu 0 4 6 4 10 8 
		f 4 -2 12 13 -11 
		mu 0 4 4 1 11 10 
		f 4 -1 8 14 -13 
		mu 0 4 1 0 9 11 
		f 4 -21 16 28 -20 
		mu 0 4 3 2 12 13 
		f 4 -22 17 29 -17 
		mu 0 4 2 5 14 12 
		f 4 -23 18 30 -18 
		mu 0 4 5 7 15 14 
		f 4 -24 19 31 -19 
		mu 0 4 7 3 13 15 
		f 3 -29 24 -28 
		mu 0 3 13 12 16 
		f 3 -30 25 -25 
		mu 0 3 12 14 16 
		f 3 -31 26 -26 
		mu 0 3 14 15 16 
		f 3 -32 27 -27 
		mu 0 3 15 13 16 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wEdgeShape2Orig" -p "wEdge";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wHook" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10831030527841617 1.3829748286610202 ;
	setAttr ".rp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
createNode mesh -n "wHookShape" -p "wHook";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 21 ".uvst[0].uvsp[0:20]" -type "float2" 0.26698568 0.2191903 
		0.257862 0.2191903 0.22214879 0.24905866 0.23204459 0.25175118 0.23709919 0.2191903 
		0.20326747 0.2460587 0.257862 0.2191903 0.22214873 0.24905866 0.257862 0.20772856 
		0.2654039 0.20772856 0.25032011 0.20772856 0.257862 0.20772856 0.22735168 0.31662938 
		0.23723491 0.30283499 0.21214052 0.33358648 0.2269354 0.31679395 0.2704657 0.32498011 
		0.27122679 0.34030482 0.31744507 0.30996656 0.27126363 0.3594667 0.27067468 0.34111574;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  -6.2221062e-008 0.29178977 1.310022 -0.063783482 
		0.29178977 1.450668 -9.3259942e-008 0.29178974 1.7707366 0.063783333 0.29178977 1.450668 
		-9.816004e-009 1.6911485 0.53216618 0.063783333 0.11510097 1.450668 -6.3863844e-008 
		0.11510097 1.334406 -7.9529251e-008 0.11510097 1.5669299 -0.063783482 0.11510097 
		1.450668 -0.055010308 0.75222427 2.0012043 -1.2839612e-007 0.70597816 2.292268 0.055009972 
		0.75222397 2.0012045 -9.8509453e-008 0.79373085 1.8486558 -0.044390261 2.1588275 
		1.2446431 -0.041204035 2.454217 1.2440754 0.026615443 2.1713283 1.2531546 0.041203916 
		1.9225895 1.2563757 -0.050155625 1.7938596 1.9209989 0.018835332 1.5812117 1.768644 
		0.042030111 1.7963963 1.9274157 -0.018835545 2.0552616 2.1554861;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 0 0 1 9 0 2 10 0 
		3 11 0 3 5 0 0 6 0 5 6 0 
		2 7 0 7 5 0 1 8 0 8 7 0 
		6 8 0 0 12 0 9 17 0 10 20 0 
		11 19 0 12 18 0 9 12 1 10 9 1 
		11 10 1 12 11 1 13 4 0 14 4 0 
		15 4 0 16 4 0 13 16 1 14 13 1 
		15 14 1 16 15 1 17 13 0 18 16 0 
		17 18 1 19 15 0 18 19 1 20 14 0 
		19 20 1 20 17 1;
	setAttr -s 20 ".fc[0:19]" -type "polyFaces" 
		f 4 0 4 20 -16 
		mu 0 4 0 1 2 3 
		f 4 1 5 21 -5 
		mu 0 4 1 4 5 2 
		f 4 2 6 22 -6 
		mu 0 4 4 6 7 5 
		f 4 3 15 23 -7 
		mu 0 4 6 0 3 7 
		f 4 -4 7 9 -9 
		mu 0 4 0 6 8 9 
		f 4 -3 10 11 -8 
		mu 0 4 6 4 10 8 
		f 4 -2 12 13 -11 
		mu 0 4 4 1 11 10 
		f 4 -1 8 14 -13 
		mu 0 4 1 0 9 11 
		f 4 -21 16 34 -20 
		mu 0 4 3 2 12 13 
		f 4 -22 17 39 -17 
		mu 0 4 2 5 14 12 
		f 4 -23 18 38 -18 
		mu 0 4 5 7 15 14 
		f 4 -24 19 36 -19 
		mu 0 4 7 3 13 15 
		f 3 -29 24 -28 
		mu 0 3 16 17 18 
		f 3 -30 25 -25 
		mu 0 3 17 19 18 
		f 3 -31 26 -26 
		mu 0 3 19 20 18 
		f 3 -32 27 -27 
		mu 0 3 20 16 18 
		f 4 -35 32 28 -34 
		mu 0 4 13 12 17 16 
		f 4 -37 33 31 -36 
		mu 0 4 15 13 16 20 
		f 4 -39 35 30 -38 
		mu 0 4 14 15 20 19 
		f 4 -40 37 29 -33 
		mu 0 4 12 14 19 17 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wHookShape2Orig" -p "wHook";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "wHook";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[4]" -type "float3"  0 0 0.31703225;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wLance" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10831030527841617 2.5767324627683941 ;
	setAttr ".rp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10831030527841617 1.4506681414923435 ;
createNode mesh -n "wLanceShape" -p "wLance";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.35879865 0.024343461 
		0.33803585 0.024343461 0.33803585 0.41500112 0.31727299 0.024343461 0.33803585 0.024343461 
		0.33803585 0.012881726 0.34365872 0.012881726 0.33241299 0.012881726 0.33803585 0.012881726;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  8.1256182e-008 0.29178977 1.1305991 -0.28977779 
		0.29178977 1.450668 9.5286524e-008 0.29178977 1.7707368 0.28977796 0.29178977 1.4506679 
		8.8271356e-008 6.313962 1.450668 0.04755339 0.11510098 1.450668 8.6371564e-008 0.11510098 
		1.3639895 9.0171149e-008 0.11510098 1.5373465 -0.047553211 0.11510098 1.450668;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0;
	setAttr -s 8 ".fc[0:7]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wLanceShape2Orig" -p "wLance";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wAxe" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.63877445695179047 3.6948789744098471 ;
	setAttr ".rp" -type "double3" 0 0.63877445695179047 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.63877445695179047 1.4506681414923435 ;
createNode mesh -n "wAxeShape" -p "wAxe";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.19449849 0.04575032 
		0.18537481 0.04575032 0.15588339 0.053101301 0.19406612 0.063972175 0.13710631 0.011543334 
		0.11099692 0.063972175 0.18537481 0.04575032 0.15588339 0.053101301 0.18537481 0.034288526 
		0.19291671 0.034288526 0.17783286 0.034288526 0.18537481 0.034288526 0.15728725 0.099532425 
		0.19491108 0.086333215 0.11893304 0.12196887 0.15728725 0.099532425 0.1805553 0.099861324 
		0.18301244 0.14613539;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0:1]" -type "float3" -3.1770107e-009 1.5543122e-014 0  -0.062499877 
		1.9095836e-014 0 ;
	setAttr ".pt[3:9]" -type "float3" 0.062499855 1.9095836e-014 0  1.5974186e-009 
		0 0  0.051503863 1.6098234e-014 0  -2.9663731e-009 1.1546319e-014 0  1.5914394e-009 
		1.1546319e-014 0  -0.051503878 1.6098234e-014 0  -0.169929 1.5543122e-014 0 ;
	setAttr ".pt[11:13]" -type "float3" 0.16992867 1.5543122e-014 0  -3.0289684e-009 
		0 0  -0.11228386 0 0 ;
	setAttr ".pt[15:16]" -type "float3" 0.11228355 0 0  -3.3182883e-009 0 0 ;
	setAttr -s 18 ".vt[0:17]"  3.5989345e-008 0.81910622 1.3100218 -0.06378337 
		0.81910622 1.4506677 4.2351257e-008 0.29178977 2.1947489 0.063783444 0.81910622 1.4506677 
		3.7534946e-008 1.6532537 1.5249628 0.063783444 0.64241743 1.4506677 3.6164685e-008 
		0.64241743 1.3344058 3.7836728e-008 0.64241743 1.5669302 -0.06378337 0.64241743 1.4506677 
		-0.055010159 0.93242574 1.9052919 4.5245478e-008 1.1000049 2.5972371 0.055010121 
		0.9324255 1.9052919 3.6037271e-008 1.1000048 1.316687 -0.036349017 1.6481832 1.8836502 
		4.4365763e-008 1.9940521 2.4748983 0.03634898 1.6481832 1.8836502 3.5943611e-008 
		1.4447109 1.3036617 3.726257e-008 2.36659 1.4870843;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 
		2 3 0 3 0 0 1 9 0 2 10 0 
		3 11 0 3 5 0 0 6 0 5 6 0 
		2 7 0 7 5 0 1 8 0 8 7 0 
		6 8 0 0 12 0 9 13 0 10 14 0 
		11 15 0 12 16 0 9 12 1 10 9 1 
		11 10 1 12 11 1 13 4 0 14 17 0 
		15 4 0 16 4 0 13 16 1 14 13 1 
		15 14 1 16 15 1 17 4 0 17 13 0 
		17 15 0;
	setAttr -s 18 ".fc[0:17]" -type "polyFaces" 
		f 4 0 4 20 -16 
		mu 0 4 0 1 2 3 
		f 4 1 5 21 -5 
		mu 0 4 1 4 5 2 
		f 4 2 6 22 -6 
		mu 0 4 4 6 7 5 
		f 4 3 15 23 -7 
		mu 0 4 6 0 3 7 
		f 4 -4 7 9 -9 
		mu 0 4 0 6 8 9 
		f 4 -3 10 11 -8 
		mu 0 4 6 4 10 8 
		f 4 -2 12 13 -11 
		mu 0 4 4 1 11 10 
		f 4 -1 8 14 -13 
		mu 0 4 1 0 9 11 
		f 4 -21 16 28 -20 
		mu 0 4 3 2 12 13 
		f 4 -22 17 29 -17 
		mu 0 4 2 5 14 12 
		f 4 -23 18 30 -18 
		mu 0 4 5 7 15 14 
		f 4 -24 19 31 -19 
		mu 0 4 7 3 13 15 
		f 3 -29 24 -28 
		mu 0 3 13 12 16 
		f 3 -30 25 33 
		mu 0 3 12 14 17 
		f 3 34 26 -33 
		mu 0 3 17 15 16 
		f 3 -32 27 -27 
		mu 0 3 15 13 16 
		f 3 -34 32 -25 
		mu 0 3 12 17 16 
		f 3 -31 -35 -26 
		mu 0 3 14 15 17 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wAxeShape2Orig" -p "wAxe";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "wAxe";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[4]" -type "float3"  0 0 0.31703225;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wGreatSword" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10090329924858671 5.5811939879956842 ;
	setAttr ".rp" -type "double3" 0 0.10090329924858671 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10090329924858671 1.4506681414923435 ;
createNode mesh -n "wGreatSwordShape" -p "wGreatSword";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.09962067 0.044994265 
		0.078857809 0.044994265 0.07885775 0.22300997 0.091827482 0.22300997 0.058094949 
		0.044994265 0.065888137 0.22300997 0.078857809 0.044994265 0.07885775 0.22300997 
		0.078857809 0.03353247 0.084480613 0.03353247 0.073235005 0.03353247 0.078857809 
		0.03353247 0.078857809 0.26756456;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".vt[0:12]"  6.630961e-008 0.29178971 1.1305988 -0.15016238 
		0.29178971 1.4506676 7.2633895e-008 0.29178971 1.7707365 0.15016253 0.29178971 1.4506676 
		6.9471753e-008 3.7228155 1.4506676 0.047553372 0.11510098 1.4506676 6.8615414e-008 
		0.11510098 1.3639896 7.0328099e-008 0.11510098 1.5373461 -0.04755323 0.11510098 1.4506676 
		6.7496494e-008 3.0359859 1.2507341 -0.057804871 3.0359859 1.4506681 7.1447012e-008 
		3.0359859 1.6506011 0.057805013 3.0359859 1.4506681;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 9 0 1 10 0 
		2 11 0 3 12 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 9 4 0 10 4 0 
		11 4 0 12 4 0 10 9 1 11 10 1 
		12 11 1 9 12 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 5 20 -5 
		mu 0 4 0 1 2 3 
		f 4 1 6 21 -6 
		mu 0 4 1 4 5 2 
		f 4 2 7 22 -7 
		mu 0 4 4 6 7 5 
		f 4 3 4 23 -8 
		mu 0 4 6 0 3 7 
		f 4 -4 8 10 -10 
		mu 0 4 0 6 8 9 
		f 4 -3 11 12 -9 
		mu 0 4 6 4 10 8 
		f 4 -2 13 14 -12 
		mu 0 4 4 1 11 10 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 9 11 
		f 3 -21 17 -17 
		mu 0 3 3 2 12 
		f 3 -22 18 -18 
		mu 0 3 2 5 12 
		f 3 -23 19 -19 
		mu 0 3 5 7 12 
		f 3 -24 16 -20 
		mu 0 3 7 3 12 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wGreatSwordShape2Orig" -p "wGreatSword";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wMace" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.11956842615191399 6.9450953567857692 ;
	setAttr ".rp" -type "double3" 0 0.11956842615191399 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.11956842615191399 1.4506681414923435 ;
createNode mesh -n "wMaceShape" -p "wMace";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.3019639 0.2480385 
		0.2860457 0.2480385 0.28604564 0.28632018 0.30479059 0.28632012 0.27012756 0.2480385 
		0.2673009 0.28632012 0.2860457 0.2480385 0.28604564 0.28632018 0.2860457 0.23657671 
		0.2916685 0.23657671 0.2804229 0.23657671 0.2860457 0.23657671 0.2860457 0.29979602;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".vt[0:12]"  9.5641475e-008 0.29178971 1.2052819 -0.26284683 
		0.29178971 1.450668 9.7389176e-008 0.29178971 1.6960541 0.2628471 0.29178971 1.4506681 
		9.6515322e-008 1.0896566 1.450668 0.066467017 0.11510098 1.4506681 9.6206655e-008 
		0.11510098 1.3639904 9.6823996e-008 0.11510098 1.5373465 -0.066466831 0.11510098 
		1.450668 9.54863e-008 0.8819195 1.1617075 -0.27289617 0.88191974 1.4506689 9.7544351e-008 
		0.8819195 1.7396284 0.27289644 0.88191974 1.4506691;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 9 0 1 10 0 
		2 11 0 3 12 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 9 4 0 10 4 0 
		11 4 0 12 4 0 10 9 1 11 10 1 
		12 11 1 9 12 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 5 20 -5 
		mu 0 4 0 1 2 3 
		f 4 1 6 21 -6 
		mu 0 4 1 4 5 2 
		f 4 2 7 22 -7 
		mu 0 4 4 6 7 5 
		f 4 3 4 23 -8 
		mu 0 4 6 0 3 7 
		f 4 -4 8 10 -10 
		mu 0 4 0 6 8 9 
		f 4 -3 11 12 -9 
		mu 0 4 6 4 10 8 
		f 4 -2 13 14 -12 
		mu 0 4 4 1 11 10 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 9 11 
		f 3 -21 17 -17 
		mu 0 3 3 2 12 
		f 3 -22 18 -18 
		mu 0 3 2 5 12 
		f 3 -23 19 -19 
		mu 0 3 5 7 12 
		f 3 -24 16 -20 
		mu 0 3 7 3 12 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wMaceShape2Orig" -p "wMace";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape9" -p "wMace";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[*]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "vtx[*]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.9635631e-008 0 -4.0856207e-014 
		-0.086379074 0 -4.0856207e-014 -9.8785033e-009 0 -4.0856207e-014 0.086379074 0 -4.0856207e-014 
		0 1.0348958 0 -0.016230037 -1.3877788e-017 1.6396912e-008 -2.1283122e-009 -1.3877788e-017 
		0.029583536 7.0943762e-010 -1.3877788e-017 -0.029583536 0.016230037 -1.3877788e-017 
		1.6396912e-008 0 -0.78359836 0 0 -0.78359884 0 0 -0.78359884 0;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "wRapier" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 -0.10877196668315381 8.1746433205156812 ;
	setAttr ".rp" -type "double3" 0 0.10877196668315381 1.4506681414923435 ;
	setAttr ".sp" -type "double3" 0 0.10877196668315381 1.4506681414923435 ;
createNode mesh -n "wRapierShape" -p "wRapier";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.073370188 0.016367614 
		0.040286984 0.016367614 0.040286925 0.017861068 0.047246959 0.017861068 0.0072037838 
		0.016367614 0.033326946 0.017861068 0.040286984 0.016367614 0.040286925 0.017861068 
		0.040286984 0.011411011 0.045909788 0.011411011 0.034664117 0.011411011 0.040286984 
		0.011411011 0.040286984 0.18227041;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".vt[0:12]"  4.7506703e-008 0.19150932 0.94067466 -0.095866874 
		0.19150932 1.4506673 3.9483325e-008 0.19150932 1.9606608 0.095866963 0.19150932 1.4506673 
		4.3495017e-008 2.74898 1.4506673 0.047553346 0.11510098 1.4506673 4.4176836e-008 
		0.11510098 1.3639897 4.2813184e-008 0.11510098 1.5373467 -0.047553256 0.11510098 
		1.4506673 4.4338989e-008 0.21453118 1.343376 -0.057804897 0.21453118 1.4506682 4.2651042e-008 
		0.21453118 1.5579594 0.057804987 0.21453118 1.4506682;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 9 0 1 10 0 
		2 11 0 3 12 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 9 4 0 10 4 0 
		11 4 0 12 4 0 10 9 1 11 10 1 
		12 11 1 9 12 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 5 20 -5 
		mu 0 4 0 1 2 3 
		f 4 1 6 21 -6 
		mu 0 4 1 4 5 2 
		f 4 2 7 22 -7 
		mu 0 4 4 6 7 5 
		f 4 3 4 23 -8 
		mu 0 4 6 0 3 7 
		f 4 -4 8 10 -10 
		mu 0 4 0 6 8 9 
		f 4 -3 11 12 -9 
		mu 0 4 6 4 10 8 
		f 4 -2 13 14 -12 
		mu 0 4 4 1 11 10 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 9 11 
		f 3 -21 17 -17 
		mu 0 3 3 2 12 
		f 3 -22 18 -18 
		mu 0 3 2 5 12 
		f 3 -23 19 -19 
		mu 0 3 5 7 12 
		f 3 -24 16 -20 
		mu 0 3 7 3 12 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "wRapierShape2Orig" -p "wRapier";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape9" -p "wRapier";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[*]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "vtx[*]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.9635631e-008 0 -4.0856207e-014 
		-0.086379074 0 -4.0856207e-014 -9.8785033e-009 0 -4.0856207e-014 0.086379074 0 -4.0856207e-014 
		0 1.0348958 0 -0.016230037 -1.3877788e-017 1.6396912e-008 -2.1283122e-009 -1.3877788e-017 
		0.029583536 7.0943762e-010 -1.3877788e-017 -0.029583536 0.016230037 -1.3877788e-017 
		1.6396912e-008 0 -0.78359836 0 0 -0.78359884 0 0 -0.78359884 0;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "hShort" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 0.3948631364584701 -2.8990857570439843 ;
	setAttr ".rp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
	setAttr ".sp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
createNode mesh -n "hShortShape" -p "hShort";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.38025498 0.15498413 
		0.37271309 0.15498413 0.37271309 0.11890139 0.37652433 0.12269409 0.36517119 0.15498413 
		0.36890173 0.12269409 0.37271309 0.15498413;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[0]" -type "float3" 0.04584774 -3.0669911e-015 0 ;
	setAttr ".pt[3]" -type "float3" -0.045847833 -3.7053693e-015 0 ;
	setAttr -s 7 ".vt[0:6]"  0.063783415 0.11510096 1.4506681 1.0034164e-008 
		0.11510096 1.3344061 8.5430054e-009 0.11510095 1.5669302 -0.0637834 0.11510096 1.4506681 
		9.2885841e-009 -0.44113183 1.4506682 9.6653601e-009 -0.38266543 1.3919156 8.9118091e-009 
		-0.38266543 1.5094208;
	setAttr -s 10 ".ed[0:9]"  0 1 0 2 0 0 
		3 2 0 1 3 0 0 4 0 1 5 0 
		4 5 0 2 6 0 6 4 0 3 4 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 -1 4 6 -6 
		mu 0 4 0 1 2 3 
		f 4 -2 7 8 -5 
		mu 0 4 1 4 5 2 
		f 4 -3 9 -9 -8 
		mu 0 4 4 6 2 5 
		f 4 -4 5 -7 -10 
		mu 0 4 6 0 3 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "hShortShape2Orig" -p "hShort";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "hShort";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[4]" -type "float3"  0 0 0.31703225;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "hSpear" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 2.0553511017772328 -4.411515610500123 ;
	setAttr ".rp" -type "double3" 0 -2.0553511017772328 1.4506681414923426 ;
	setAttr ".sp" -type "double3" 0 -2.0553511017772328 1.4506681414923426 ;
createNode mesh -n "hSpearShape" -p "hSpear";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.40451705 0.33887291 
		0.39902973 0.33887291 0.39902973 0.0092678666 0.40284097 0.024142325 0.39354241 0.33887291 
		0.39521849 0.024142325 0.39902973 0.33887291;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[0]" -type "float3" 0.045847747 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.045847822 0 0 ;
	setAttr -s 7 ".vt[0:6]"  0.063783422 2.0439456 1.4506677 1.62619e-008 
		2.0439456 1.3660783 1.7132811e-008 2.0439456 1.5352575 -0.063783385 2.0439456 1.4506677 
		2.0743778e-007 -3.0370715 1.450668 1.9852757e-007 -2.8077745 1.3919152 1.9913247e-007 
		-2.8077745 1.5094205;
	setAttr -s 10 ".ed[0:9]"  0 1 0 2 0 0 
		3 2 0 1 3 0 0 4 0 1 5 0 
		4 5 0 2 6 0 6 4 0 3 4 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 -1 4 6 -6 
		mu 0 4 0 1 2 3 
		f 4 -2 7 8 -5 
		mu 0 4 1 4 5 2 
		f 4 -3 9 -9 -8 
		mu 0 4 4 6 2 5 
		f 4 -4 5 -7 -10 
		mu 0 4 6 0 3 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "hSpearShape2Orig" -p "hSpear";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 1.8705177 
		1.8377066 0.64332342 1.8705177 1.4506683 2.8120564e-008 1.8705177 1.0636302 -0.64332342 
		1.8705177 1.4506683 2.2266719e-014 10.481735 1.4506683 -0.64332342 1.2355335 1.4506683 
		-8.436168e-008 1.2355335 1.5912564 2.8120564e-008 1.2355335 1.3100802 0.64332342 
		1.2355335 1.4506683 -2.7209618e-015 -0.76345652 1.4506682 -8.436168e-008 -0.55334008 
		1.521714 2.8120564e-008 -0.55334008 1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "hSpear";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  3.1319331e-015 1.2421132 
		3.5527137e-014 3.13638e-015 1.2421132 3.5527137e-014 3.1319331e-015 1.2421132 3.5527137e-014 
		3.13638e-015 1.2421132 3.5527137e-014 2.2266707e-014 8.2432585 0.31703225 1.7624791e-015 
		0.72585398 2.8421709e-014 1.7209484e-015 0.72585398 2.8421709e-014 1.7209484e-015 
		0.72585398 2.8421709e-014 1.7624791e-015 0.72585398 2.8421709e-014 -2.7209614e-015 
		-0.8993789 1.1546319e-014 -2.2540656e-015 -0.72854823 1.4210855e-014 -2.2540658e-015 
		-0.72854823 1.4210855e-014;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "hHands" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 0.3948631364584701 -3.6699851697558512 ;
	setAttr ".rp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
	setAttr ".sp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
createNode mesh -n "hHandsShape" -p "hHands";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.38131225 0.10603327 
		0.37377024 0.10603327 0.37377024 0.015135527 0.3775816 0.018928289 0.36622834 0.10603327 
		0.369959 0.018928289 0.37377024 0.10603327;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[0]" -type "float3" 0.045847747 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.045847833 0 0 ;
	setAttr -s 7 ".vt[0:6]"  0.063783422 0.11510097 1.4506681 1.5286018e-008 
		0.11510097 1.3344061 1.3764184e-008 0.11510098 1.5669301 -0.063783392 0.11510098 
		1.4506681 1.45251e-008 -1.2861305 1.4506681 1.4909627e-008 -1.2276641 1.3919156 1.4140574e-008 
		-1.2276641 1.5094206;
	setAttr -s 10 ".ed[0:9]"  0 1 0 2 0 0 
		3 2 0 1 3 0 0 4 0 1 5 0 
		4 5 0 2 6 0 6 4 0 3 4 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 -1 4 6 -6 
		mu 0 4 0 1 2 3 
		f 4 -2 7 8 -5 
		mu 0 4 1 4 5 2 
		f 4 -3 9 -9 -8 
		mu 0 4 4 6 2 5 
		f 4 -4 5 -7 -10 
		mu 0 4 6 0 3 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "hHandsShape2Orig" -p "hHands";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "hHands";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[4]" -type "float3"  0 0 0.31703225;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "hWand" -p "gWeapon";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.1176464771106573 0.3948631364584701 -6.5694265206124687 ;
	setAttr ".rp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
	setAttr ".sp" -type "double3" 0 -0.3948631364584701 1.4506681414923426 ;
createNode mesh -n "hWandShape" -p "hWand";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.46429825 0.19056088 
		0.45742834 0.19056088 0.44987381 0.1447112 0.45630419 0.1447112 0.45055842 0.19056088 
		0.44344342 0.1447112 0.45742834 0.19056088 0.44987381 0.1447112 0.46196103 0.093340456 
		0.46789896 0.093340456 0.45602298 0.093340456 0.46196103 0.093340456 0.45214009 0.04801333 
		0.45764363 0.04801333 0.44663668 0.04801333 0.45214009 0.04801333 0.45742834 0.010056019 
		0.46260428 0.013848782 0.45225227 0.013848782;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.057254501 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.057254501 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.044996504 0 0 ;
	setAttr ".pt[10:11]" -type "float3" -0.044996504 0 0  0.054061145 -5.6621374e-015 
		0 ;
	setAttr ".pt[14:15]" -type "float3" -0.05406107 -5.6621374e-015 0  0.051997967 
		0 0 ;
	setAttr ".pt[18]" -type "float3" -0.051997967 0 0 ;
	setAttr -s 19 ".vt[0:18]"  0.079652503 1.4181339 1.4506681 7.3530309e-008 
		1.4181339 1.3447654 7.5382118e-008 1.4181339 1.5565712 -0.079652354 1.4181339 1.4506681 
		7.4456217e-008 -1.3644336 1.4506686 7.3758606e-008 -1.3059672 1.3708775 7.5153821e-008 
		-1.3059672 1.5304592 0.059420183 0.71133912 1.5671246 7.4607719e-008 0.71133912 1.4679973 
		7.634106e-008 0.71133912 1.6662529 -0.059420034 0.71133912 1.5671246 0.036751583 
		-0.080565229 1.3807948 7.3045008e-008 -0.080565169 1.2892578 7.4645619e-008 -0.080565169 
		1.4723318 -0.036751315 -0.080565229 1.3807948 0.016749695 -0.77930427 1.5321882 7.4427192e-008 
		-0.77930421 1.4473488 7.5910684e-008 -0.77930421 1.617027 -0.016749546 -0.77930427 
		1.5321882;
	setAttr -s 34 ".ed[0:33]"  0 1 0 2 0 0 
		3 2 0 1 3 0 0 7 0 1 8 0 
		4 5 0 2 9 0 6 4 0 3 10 0 
		7 11 0 8 12 0 9 13 0 10 14 0 
		7 8 1 9 7 1 10 9 1 8 10 1 
		11 15 0 12 16 0 13 17 0 14 18 0 
		11 12 1 13 11 1 14 13 1 12 14 1 
		15 4 0 16 5 0 17 6 0 18 4 0 
		15 16 1 17 15 1 18 17 1 16 18 1;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 4 -1 4 14 -6 
		mu 0 4 0 1 2 3 
		f 4 -2 7 15 -5 
		mu 0 4 1 4 5 2 
		f 4 -3 9 16 -8 
		mu 0 4 4 6 7 5 
		f 4 -4 5 17 -10 
		mu 0 4 6 0 3 7 
		f 4 -15 10 22 -12 
		mu 0 4 3 2 8 9 
		f 4 -16 12 23 -11 
		mu 0 4 2 5 10 8 
		f 4 -17 13 24 -13 
		mu 0 4 5 7 11 10 
		f 4 -18 11 25 -14 
		mu 0 4 7 3 9 11 
		f 4 -23 18 30 -20 
		mu 0 4 9 8 12 13 
		f 4 -24 20 31 -19 
		mu 0 4 8 10 14 12 
		f 4 -25 21 32 -21 
		mu 0 4 10 11 15 14 
		f 4 -26 19 33 -22 
		mu 0 4 11 9 13 15 
		f 4 -31 26 6 -28 
		mu 0 4 13 12 16 17 
		f 4 -32 28 8 -27 
		mu 0 4 12 14 18 16 
		f 4 -33 29 -9 -29 
		mu 0 4 14 15 16 18 
		f 4 -34 27 -7 -30 
		mu 0 4 15 13 17 16 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "hWandShape2Orig" -p "hWand";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -8.436168e-008 0.62840503 
		1.8377066 0.64332342 0.62840503 1.4506683 2.8120564e-008 0.62840503 1.0636302 -0.64332342 
		0.62840503 1.4506683 0 2.2384708 1.4506683 -0.64332342 0.50968003 1.4506683 -8.436168e-008 
		0.50968003 1.5912564 2.8120564e-008 0.50968003 1.3100802 0.64332342 0.50968003 1.4506683 
		0 0.13592264 1.4506682 -8.436168e-008 0.17520879 1.521714 2.8120564e-008 0.17520879 
		1.3796226;
	setAttr -s 12 ".vt[0:11]"  9.2725855e-008 -0.33661526 -0.70710731 -0.70710677 
		-0.33661526 -3.7949508e-007 -3.0908623e-008 -0.33661526 0.70710653 0.70710677 -0.33661526 
		-3.7949508e-007 0 0.44944912 -3.7949508e-007 0.70710677 -0.39457905 -3.7949508e-007 
		9.2725855e-008 -0.39457905 -0.25685033 -3.0908623e-008 -0.39457905 0.25684983 -0.70710677 
		-0.39457905 -3.7949508e-007 0 -0.57705444 -1.1613378e-007 9.2725855e-008 -0.5578742 
		-0.12979852 -3.0908623e-008 -0.5578742 0.12979802;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode mesh -n "polySurfaceShape6" -p "hWand";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81508171558380127 0.47369644045829773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.88024294 0.47369644 
		0.81508172 0.47369644 0.81508172 0.96151263 0.74992061 0.47369644 0.81508172 0.47369644 
		0.81508172 0.43772528 0.8387509 0.43772528 0.79141253 0.43772528 0.81508172 0.43772528 
		0.81508172 0.32448459 0.82704294 0.33638749 0.80312055 0.33638749;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[4]" -type "float3"  0 0 0.31703225;
	setAttr -s 12 ".vt[0:11]"  8.3641751e-009 0.29178977 1.1305993 -0.063783348 
		0.29178977 1.450668 -2.7880596e-009 0.29178977 1.7707367 0.063783348 0.29178977 1.450668 
		0 2.6879199 1.450668 0.063783348 0.11510098 1.450668 8.3641751e-009 0.11510098 1.334406 
		-2.7880596e-009 0.11510098 1.5669301 -0.063783348 0.11510098 1.450668 0 -0.4411318 
		1.4506681 8.3641751e-009 -0.3826654 1.3919154 -2.7880596e-009 -0.3826654 1.5094206;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 
		2 3 0 3 0 0 0 4 0 1 4 0 
		2 4 0 3 4 0 3 5 0 0 6 0 
		5 6 0 2 7 0 7 5 0 1 8 0 
		8 7 0 6 8 0 5 9 0 6 10 0 
		9 10 0 7 11 0 11 9 0 8 9 0;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 3 0 5 -5 
		mu 0 3 0 1 2 
		f 3 1 6 -6 
		mu 0 3 1 3 2 
		f 3 2 7 -7 
		mu 0 3 3 4 2 
		f 3 3 4 -8 
		mu 0 3 4 0 2 
		f 4 -4 8 10 -10 
		mu 0 4 0 4 5 6 
		f 4 -3 11 12 -9 
		mu 0 4 4 3 7 5 
		f 4 -2 13 14 -12 
		mu 0 4 3 1 8 7 
		f 4 -1 9 15 -14 
		mu 0 4 1 0 6 8 
		f 4 -11 16 18 -18 
		mu 0 4 6 5 9 10 
		f 4 -13 19 20 -17 
		mu 0 4 5 7 11 9 
		f 4 -15 21 -21 -20 
		mu 0 4 7 8 9 11 
		f 4 -16 17 -19 -22 
		mu 0 4 8 6 10 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode parentConstraint -n "gWeapon_parentConstraint1" -p "gWeapon";
	addAttr -ci true -k true -sn "w0" -ln "joint9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "gSubWeapon" -p "mesh";
	setAttr ".rp" -type "double3" 1.2959535598101786 0.26154189574761499 0 ;
	setAttr ".sp" -type "double3" 1.2959535598101786 0.26154189574761499 0 ;
createNode transform -n "pCylinder1" -p "gSubWeapon";
	setAttr ".t" -type "double3" 1.2617385542675024 0.22734218349289548 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58189450007914312 0.11638902448551067 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.68671322 0.11638901 
		0.65601254 0.19050705 0.58189452 0.11638901 0.65601254 0.042271025 0.58189452 0.011570334 
		0.5077765 0.042271025 0.47707582 0.11638901 0.5077765 0.19050705 0.58189452 0.22120774 
		0.58189452 0.11638901;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.70710671 2.220446e-016 -0.70710671 2.8204492e-010 
		0 -0.99999988 -0.70710671 0 -0.70710671 -0.99999988 -2.220446e-016 0 -0.70710671 
		0 0.70710671 2.8204492e-010 0 0.99999994 0.70710677 2.220446e-016 0.70710677 0.99999994 
		2.220446e-016 0 3.2694453e-010 -0.20086002 0 2.3714533e-010 0.20086002 0;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 0 0 8 0 0 8 1 0 
		8 2 0 8 3 0 8 4 0 8 5 0 
		8 6 0 8 7 0 0 9 0 1 9 0 
		2 9 0 3 9 0 4 9 0 5 9 0 
		6 9 0 7 9 0;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 3 -1 -9 9 
		mu 0 3 0 1 2 
		f 3 -2 -10 10 
		mu 0 3 3 0 2 
		f 3 -3 -11 11 
		mu 0 3 4 3 2 
		f 3 -4 -12 12 
		mu 0 3 5 4 2 
		f 3 -5 -13 13 
		mu 0 3 6 5 2 
		f 3 -6 -14 14 
		mu 0 3 7 6 2 
		f 3 -7 -15 15 
		mu 0 3 8 7 2 
		f 3 -8 -16 8 
		mu 0 3 1 8 2 
		f 3 0 17 -17 
		mu 0 3 1 0 9 
		f 3 1 18 -18 
		mu 0 3 0 3 9 
		f 3 2 19 -19 
		mu 0 3 3 4 9 
		f 3 3 20 -20 
		mu 0 3 4 5 9 
		f 3 4 21 -21 
		mu 0 3 5 6 9 
		f 3 5 22 -22 
		mu 0 3 6 7 9 
		f 3 6 23 -23 
		mu 0 3 7 8 9 
		f 3 7 16 -24 
		mu 0 3 8 1 9 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "shield1" -p "gSubWeapon";
	setAttr ".t" -type "double3" 1.2959535598101786 0.26154189574761499 -1.7038805038911624 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 0 1.7038805038911624 ;
	setAttr ".sp" -type "double3" 0 0 1.7038805038911624 ;
createNode mesh -n "shieldShape1" -p "shield1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.84021438469490883 0.11198858916759491 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.7079075 0.056033432 
		0.77154601 0.051696226 0.77154601 0.18731964 0.84524417 0.20548171 0.90888274 0.20548171 
		0.77154601 0.01849547 0.97252125 0.20548171 0.83518469 0.056033432 0.90888274 0.01849547 
		0.97252125 0.056033432 0.77154601 0.20548171 0.83518469 0.20548171 0.84524417 0.056033432 
		0.7079075 0.20548171;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.4396323 1.6149228 0.5 -0.4396323 
		1.6149228 -0.5 0.73456359 1.6149228 0.5 0.73456359 1.6149228 0 0.59186685 1.7580975 
		0 0.73456359 1.6496633 0 -0.73456359 1.6496633 0 -0.47370926 1.7580975;
	setAttr -s 14 ".ed[0:13]"  0 7 0 2 4 0 
		2 5 0 0 6 0 0 2 0 1 3 0 
		4 3 0 5 3 0 4 5 0 6 1 0 
		5 6 0 7 1 0 6 7 0 7 4 0;
	setAttr -s 8 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5 
		mu 0 4 0 1 2 13 
		f 3 1 8 -3 
		mu 0 3 13 2 10 
		f 4 2 10 -4 4 
		mu 0 4 3 4 8 12 
		f 3 3 12 -1 
		mu 0 3 0 5 1 
		f 3 6 -8 -9 
		mu 0 3 2 11 10 
		f 4 -11 7 -6 -10 
		mu 0 4 8 4 6 9 
		f 3 -13 9 -12 
		mu 0 3 1 5 7 
		f 4 -14 11 5 -7 
		mu 0 4 2 1 7 11 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gSubWeapon_parentConstraint1" -p "gSubWeapon";
	addAttr -ci true -k true -sn "w0" -ln "joint9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "gBody" -p "mesh";
	setAttr ".rp" -type "double3" 0 -0.25938779741652762 0 ;
	setAttr ".sp" -type "double3" 0 -0.25938779741652762 0 ;
createNode transform -n "meshBody" -p "gBody";
createNode mesh -n "meshBodyShape" -p "meshBody";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.82388034462928772 0.44224350899457932 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.77144158 0.23248868 
		0.87631905 0.23248868 0.77144158 0.33736616 0.87631905 0.33736616 0.77144158 0.44224352 
		0.87631905 0.44224352 0.77144158 0.54712093 0.87631905 0.54712093 0.77144158 0.65199834 
		0.87631905 0.65199834 0.98119646 0.23248868 0.98119646 0.33736616 0.66656423 0.23248868 
		0.66656423 0.33736616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gBody_parentConstraint1" -p "gBody";
	addAttr -ci true -k true -sn "w0" -ln "body1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "gArmRight" -p "mesh";
createNode transform -n "armRight" -p "gArmRight";
createNode mesh -n "armRightShape" -p "|mesh|gArmRight|armRight";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.69851437211036682 0.82749354839324951 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.93463564 0.35650319 
		0.98191589 0.35650322 0.98191589 0.4902319 0.9346357 0.49023193 0.98185426 0.52993256 
		0.9346357 0.52993262 0.88735551 0.49023193 0.9346357 0.49023193 0.93463564 0.35650319 
		0.88735551 0.35650319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.110223e-016 0.2718375 0.35355338 -1.110223e-016 
		0.62539089 -2.7755576e-017 -1 0.2718375 0.35355338 -1 0.62539089 2.7755576e-017 -1 
		-0.081715882 2.7755576e-017 -1 0.2718375 -0.35355338 1.110223e-016 -0.081715882 -2.7755576e-017 
		0 0.2718375 -0.35355338;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 5 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 3 2 4 5 
		f 4 2 9 -4 -9 
		mu 0 4 6 7 8 9 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 8 7 2 
		f 4 10 4 6 8 
		mu 0 4 9 0 3 6 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gRightArm_parentConstraint1" -p "gArmRight";
	addAttr -ci true -k true -sn "w0" -ln "armRightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.270754 0.26154200000000005 -3.2029657314259711e-017 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "gArmLeft" -p "mesh";
createNode transform -n "armLeft" -p "gArmLeft";
createNode mesh -n "armLeftShape" -p "|mesh|gArmLeft|armLeft";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.9346356987953186 0.4432179375951778 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.93463564 0.35650319 
		0.9346357 0.49023193 0.98191589 0.4902319 0.98191589 0.35650322 0.9346357 0.52993262 
		0.98185426 0.52993256 0.88735551 0.49023193 0.88735551 0.35650319 0.93463564 0.35650319 
		0.9346357 0.49023193;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  3.3306691e-016 0.2718375 0.35355338 3.3306691e-016 
		0.62539089 -2.7755576e-017 1 0.62539089 2.7755576e-017 1 0.2718375 0.35355338 1 0.2718375 
		-0.35355338 1 -0.081715882 2.7755576e-017 2.220446e-016 0.2718375 -0.35355338 1.110223e-016 
		-0.081715882 -2.7755576e-017;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 
		3 2 0 0 3 0 2 4 0 5 4 0 
		3 5 0 4 6 0 7 6 0 5 7 0 
		6 1 0 7 0 0;
	setAttr -s 5 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 -2 -1 
		mu 0 4 0 1 2 3 
		f 4 6 5 -5 -3 
		mu 0 4 1 4 5 2 
		f 4 9 8 -8 -6 
		mu 0 4 6 7 8 9 
		f 4 1 4 7 10 
		mu 0 4 3 2 9 8 
		f 4 -10 -7 -4 -12 
		mu 0 4 7 6 1 0 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gArmLeft_parentConstraint1" -p "gArmLeft";
	addAttr -ci true -k true -sn "w0" -ln "armLeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.27075417002104563 -0.26154189574761499 0 ;
	setAttr -k on ".w0";
createNode transform -n "gLegRight" -p "mesh";
createNode transform -n "legRight" -p "gLegRight";
	setAttr ".rp" -type "double3" -1.3890672756211881 0.085569994327408416 -0.19933617747089644 ;
	setAttr ".sp" -type "double3" -1.3890672756211881 0.085569994327408416 -0.19933617747089644 ;
createNode mesh -n "legRightShape" -p "|mesh|gLegRight|legRight";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.69851437904679659 0.54275914235477374 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.69851434 0.44768459 
		0.7503528 0.44768459 0.7503528 0.59430563 0.69851434 0.59430563 0.75028521 0.63783365 
		0.6985144 0.63783365 0.64667594 0.59430557 0.69851434 0.59430563 0.69851434 0.44768459 
		0.64667594 0.44768459;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.053150717 0.085569993 0.24288195 0.053150717 
		-0.91443002 0.24288195 -0.4468492 -0.91443002 0.24288194 -0.4468492 0.085569993 0.24288194 
		0.053150762 -0.91443002 -0.25711802 -0.44684917 -0.91443002 -0.25711802 0.053150762 
		0.085569993 -0.25711802 -0.44684917 0.085569993 -0.25711802;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 
		3 2 0 0 3 0 1 4 0 4 5 0 
		2 5 0 4 6 0 6 7 0 5 7 0 
		6 0 0 7 3 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 3 2 -2 -1 
		mu 0 4 0 1 2 3 
		f 4 1 6 -6 -5 
		mu 0 4 3 2 4 5 
		f 4 5 9 -9 -8 
		mu 0 4 6 7 8 9 
		f 4 8 11 -4 -11 
		mu 0 4 9 8 1 0 
		f 4 -12 -10 -7 -3 
		mu 0 4 1 8 7 2 
		f 4 10 0 4 7 
		mu 0 4 9 0 3 6 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gLegRight_parentConstraint1" -p "gLegRight";
	addAttr -ci true -k true -sn "w0" -ln "legRightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.31405067584001545 0.21718101071325174 -2.6597002960557073e-017 ;
	setAttr ".tg[0].tor" -type "double3" 180 7.0128143721739552e-015 88.090847567003649 ;
	setAttr ".lr" -type "double3" -6.7829488194624123e-015 7.0128143721739567e-015 -4.1510527800730327e-031 ;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 0 ;
	setAttr ".rsrr" -type "double3" -6.7829488194624123e-015 7.0128143721739567e-015 
		-4.1510527800730327e-031 ;
	setAttr -k on ".w0";
createNode transform -n "gLegLeft" -p "mesh";
createNode transform -n "legLeft" -p "gLegLeft";
	setAttr ".rp" -type "double3" 0 0.085569994327408416 -0.19933617747089633 ;
	setAttr ".sp" -type "double3" 0 0.085569994327408416 -0.19933617747089633 ;
createNode mesh -n "legLeftShape" -p "|mesh|gLegLeft|legLeft";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.69851434 0.44768459 
		0.69851434 0.59430563 0.7503528 0.59430563 0.7503528 0.44768459 0.6985144 0.63783365 
		0.75028521 0.63783365 0.64667594 0.59430557 0.64667594 0.44768459 0.69851434 0.44768459 
		0.69851434 0.59430563;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.057781853 0.085569993 0.24288195 0.44221812 
		0.085569993 0.24288197 0.44221812 -0.91443002 0.24288197 -0.057781853 -0.91443002 
		0.24288195 0.4422181 -0.91443002 -0.25711802 -0.057781849 -0.91443002 -0.25711802 
		0.4422181 0.085569993 -0.25711802 -0.057781849 0.085569993 -0.25711802;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 
		3 2 0 0 3 0 2 4 0 5 4 0 
		3 5 0 4 6 0 7 6 0 5 7 0 
		6 1 0 7 0 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 3 2 -2 -1 
		mu 0 4 0 1 2 3 
		f 4 6 5 -5 -3 
		mu 0 4 1 4 5 2 
		f 4 9 8 -8 -6 
		mu 0 4 6 7 8 9 
		f 4 11 0 -11 -9 
		mu 0 4 7 0 3 8 
		f 4 1 4 7 10 
		mu 0 4 3 2 9 8 
		f 4 -10 -7 -4 -12 
		mu 0 4 7 6 1 0 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 3;
createNode parentConstraint -n "gLegLeft_parentConstraint1" -p "gLegLeft";
	addAttr -ci true -k true -sn "w0" -ln "legLeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.31405057017377386 -0.21718088461513285 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 88.090847567003635 ;
	setAttr ".rst" -type "double3" 2.7755575615628914e-017 5.5511151231257827e-017 0 ;
	setAttr -k on ".w0";
createNode transform -n "pCube1" -p "gLegLeft";
	setAttr ".t" -type "double3" 0.1913757536635991 -0.78652653067802492 0.079463764236878565 ;
	setAttr ".s" -type "double3" 0.56277575779239652 0.56277575779239652 0.56277575779239652 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58383760464132128 0.69713195666363281 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.56927824 0.64008117 
		0.603145 0.64008117 0.56927824 0.67394781 0.603145 0.67394781 0.56927824 0.70781463 
		0.603145 0.70781463 0.56927824 0.7416814 0.603145 0.7416814 0.56927824 0.77554816 
		0.603145 0.77554816 0.63701165 0.64008117 0.63701165 0.67394781 0.53541136 0.64008117 
		0.53541136 0.67394781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.22624367 0.16607277 0 
		0.22624367 0.16607277 0 -0.22624367 0.16607277 0 -0.22624367 0.16607277 0 -0.22624367 
		-0.16607277 0 -0.22624367 -0.16607277 0 0.22624367 -0.16607277 0 0.22624367 -0.16607277;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode transform -n "pCube2" -p "gLegLeft";
	setAttr ".t" -type "double3" 0.21460128191245958 -0.78652653067802492 0.085654475294493215 ;
	setAttr ".s" -type "double3" 0.56277575779239652 0.56277575779239652 0.56277575779239652 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4720545895632976 0.70878540177953631 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.45518744 0.64131653 
		0.48892179 0.64131653 0.45518744 0.67505097 0.48892179 0.67505097 0.45518744 0.70878541 
		0.48892179 0.70878541 0.45518744 0.74251992 0.48892179 0.74251992 0.45518744 0.7762543 
		0.48892179 0.7762543 0.52265632 0.64131653 0.52265632 0.67505097 0.42145288 0.64131653 
		0.42145288 0.67505097 0.47205457 0.64131653 0.47205457 0.7762543;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0:3]" -type "float3" 0 0 -0.34201929  -0.074977532 0 -0.34201929  
		0 0 -0.34201929  -0.074977532 0 -0.34201929 ;
	setAttr ".pt[5]" -type "float3" -0.074977532 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.074977532 0 0 ;
	setAttr -s 9 ".vt[0:8]"  -0.5 -0.27375633 0.66607279 0.5 -0.27375633 
		0.66607279 -0.5 0.27375633 0.66607279 0.5 0.27375633 0.66607279 -0.5 0.27375633 -0.66607279 
		0.5 0.27375633 -0.66607279 -0.5 -0.27375633 -0.66607279 0.5 -0.27375633 -0.66607279 
		0 -0.27375633 1.1722612;
	setAttr -s 15 ".ed[0:14]"  0 8 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0 8 1 0 3 8 0 
		2 8 0;
	setAttr -s 8 ".fc[0:7]" -type "polyFaces" 
		f 3 13 12 5 
		mu 0 3 3 14 1 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 5 3 11 -13 -1 -11 
		mu 0 5 6 7 9 15 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 
		f 3 14 -14 -2 
		mu 0 3 2 14 3 
		f 3 0 -15 -5 
		mu 0 3 0 14 2 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".vbc" no;
	setAttr ".bw" 4;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 20 ".lnk";
	setAttr -s 20 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 6;
	setAttr -s 9 ".dli[1:8]"  1 2 3 4 5 6 7 8;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n"
		+ "                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n"
		+ "            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"hwRender_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n"
		+ "                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"hwRender_OpenGL_Renderer\" \n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n"
		+ "            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 1\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n"
		+ "                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 1\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 1\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 1\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.83\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.83\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 9 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "E:/game_gm_rm_unity/Mercenary/mayaFile/character//texture/face_00.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/face.psd";
createNode place2dTexture -n "place2dTexture2";
createNode cloth -n "cloth1";
	setAttr ".uwi" 0.71942448616027832;
createNode place2dTexture -n "place2dTexture3";
	setAttr ".re" -type "float2" 8 8 ;
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/hat.psd";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/bodyArm.png";
createNode place2dTexture -n "place2dTexture5";
createNode shadingEngine -n "bodySG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "E:/game_gm_rm_unity/Mercenary/mayaFile/character//texture/arm.psd";
createNode place2dTexture -n "place2dTexture6";
createNode shadingEngine -n "armSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file6";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/shield.psd";
createNode place2dTexture -n "place2dTexture7";
createNode shadingEngine -n "shieldSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode animCurveTL -n "joint5_translateZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 3.6719010209635756e-023 11 3.6719010209635756e-023 
		19 3.6719010209635756e-023 20 3.6719010209635756e-023 28 3.6719010209635756e-023 
		29 3.6719010209635756e-023 37 3.6719010209635756e-023 38 3.6719010209635756e-023 
		54 3.6719010209635756e-023 55 3.6719010209635756e-023 64 3.6719010209635756e-023 
		65 3.6719010209635756e-023 77 0 83 3.6719010209635756e-023 84 3.6719010209635756e-023 
		93 3.6719010209635756e-023 94 3.6719010209635756e-023 96 0 97 0 102 3.6719010209635756e-023 
		103 3.6719010209635756e-023 120 3.6719010209635756e-023;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint5_translateY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -2.9983347224482593e-007 11 -2.9983347224482593e-007 
		19 -2.9983347224482593e-007 20 -2.9983347224482593e-007 28 -2.9983347224482593e-007 
		29 -2.9983347224482593e-007 37 -2.9983347224482593e-007 38 -2.9983347224482593e-007 
		54 -2.9983347224482593e-007 55 -2.9983347224482593e-007 64 -2.9983347224482593e-007 
		65 -2.9983347224482593e-007 77 -2.9983347224482593e-007 83 -2.9983347224482593e-007 
		84 -2.9983347224482593e-007 93 -2.9983347224482593e-007 94 -2.9983347224482593e-007 
		96 -2.9983347224482593e-007 97 -2.9983347224482593e-007 102 -2.9983347224482593e-007 
		103 -2.9983347224482593e-007 120 -2.9983347224482593e-007;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint5_translateX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -0.55613971926568062 11 -0.55613971926568062 
		19 -0.55613971926568062 20 -0.55613971926568062 28 -0.55613971926568062 29 -0.55613971926568062 
		37 -0.55613971926568062 38 -0.55613971926568062 54 -0.55613971926568062 55 -0.55613971926568062 
		64 -0.55613971926568062 65 -0.55613971926568062 77 -0.55613971926568062 83 -0.55613971926568062 
		84 -0.55613971926568062 93 -0.55613971926568062 94 -0.55613971926568062 96 -0.55613971926568062 
		97 -0.55613971926568062 102 -0.55613971926568062 103 -0.55613971926568062 120 -0.55613971926568062;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_visibility1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTL -n "legRight_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 30 0 37 0 38 0 43 0 44 0 54 0 55 0 55.004 0 64 0 64.004 0 77 0 84 0 89 0 93 
		0 94 0 96 0 97 0 102 0 103 0 106 -0.21871479395151872 114 -0.21871479395151872 115 
		0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "legRight_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0.088120806028102183 2 0.088120806028102183 
		6 0.088120806028102183 10 0.088120806028102183 11 0.088120806028102183 19 0.088120806028102183 
		20 0.088120806028102183 22 0.088120806028102183 28 0.088120806028102183 29 0.088120806028102183 
		30 0.088120806028102183 37 0.088120806028102183 38 0.088120806028102183 43 0.088120806028102183 
		44 0.088120806028102183 54 0.088120806028102183 55 0.088120806028102183 55.004 0.088120806028102183 
		64 0.088120806028102183 64.004 0.088120806028102183 77 0.088120806028102183 84 0.088120806028102183 
		89 0.088120806028102183 93 0.088120806028102183 94 0.088120806028102183 96 0.088120806028102183 
		97 0.088120806028102183 102 0.088120806028102183 103 0.088120806028102183 106 0.088120806028102183 
		114 0.088120806028102183 115 0.088120806028102183 117 0.088120806028102183 119 0.088120806028102183 
		120 0.088120806028102183;
	setAttr ".pre" 3;
createNode animCurveTL -n "legRight_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 -0.227523 2 -0.227523 6 -0.227523 10 
		-0.227523 11 -0.227523 19 -0.227523 20 -0.227523 22 -0.227523 28 -0.227523 29 -0.227523 
		30 -0.227523 37 -0.227523 38 -0.227523 43 -0.227523 44 -0.227523 54 -0.227523 55 
		-0.227523 55.004 -0.227523 64 -0.227523 64.004 -0.227523 77 -0.227523 84 -0.227523 
		89 -0.227523 93 -0.227523 94 -0.227523 96 -0.227523 97 -0.227523 102 -0.227523 103 
		-0.227523 106 -0.227523 114 -0.227523 115 -0.227523 117 -0.227523 119 -0.227523 120 
		-0.227523;
	setAttr ".pre" 3;
createNode animCurveTU -n "legRight_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 55.004 1 64 1 64.004 1 77 1 84 1 89 1 93 
		1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "legRight_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 30 0 37 0 38 0 43 11.760247986381492 44 11.760247986381492 54 0 55 0 55.004 
		0 64 0 64.004 0 77 0 84 0 89 0 93 0 94 6.0232574086819044 96 6.0232574086819044 97 
		6.0232574086819044 102 0 103 0 106 -0.055431292520319468 114 -0.055431292520319468 
		115 0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "legRight_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 42.223010588023328 6 -32.574839957293257 
		10 42.223010588023328 11 0 19 0 20 0 22 -26.305407424801146 28 0 29 0 30 -77.636138663726101 
		37 0 38 0 43 0 44 0 54 0 55 0 55.004 0 64 0 64.004 0 77 0 84 46.71689292707115 89 
		-51.058241283802779 93 46.71689292707115 94 21.128089058301651 96 21.128089058301651 
		97 21.128089058301651 102 0 103 0 106 -1.0613296165931363 114 -1.0613296165931363 
		115 13.877868787975615 117 -24.761014998929113 119 13.877868787975615 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "legRight_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 30 0 37 0 38 0 43 0 44 0 54 0 55 0 55.004 0 64 0 64.004 0 77 0 84 0 89 0 93 
		0 94 2.1780917135041618 96 2.1780917135041618 97 2.1780917135041618 102 0 103 0 106 
		-0.49242365131511551 114 -0.49242365131511551 115 0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "legRight_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 55.004 1 64 1 64.004 1 77 1 84 1 89 1 93 
		1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "legRight_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 55.004 1 64 1 64.004 1 77 1 84 1 89 1 93 
		1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "legRight_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 55.004 1 64 1 64.004 1 77 1 84 1 89 1 93 
		1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint5_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint5_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 -5.5511151231257827e-017 11 -5.5511151231257827e-017 
		19 -5.5511151231257827e-017 20 -5.5511151231257827e-017 28 -5.5511151231257827e-017 
		29 -5.5511151231257827e-017 37 -5.5511151231257827e-017 38 -5.5511151231257827e-017 
		54 -5.5511151231257827e-017 55 -5.5511151231257827e-017 64 -5.5511151231257827e-017 
		65 -5.5511151231257827e-017 77 0 83 -5.5511151231257827e-017 84 -5.5511151231257827e-017 
		93 -5.5511151231257827e-017 94 -5.5511151231257827e-017 96 0 97 0 102 -5.5511151231257827e-017 
		103 -5.5511151231257827e-017 120 -5.5511151231257827e-017;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint5_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0.55613970373214483 11 0.55613970373214483 
		19 0.55613970373214483 20 0.55613970373214483 28 0.55613970373214483 29 0.55613970373214483 
		37 0.55613970373214483 38 0.55613970373214483 54 0.55613970373214483 55 0.55613970373214483 
		64 0.55613970373214483 65 0.55613970373214483 77 0.55613970373214483 83 0.55613970373214483 
		84 0.55613970373214483 93 0.55613970373214483 94 0.55613970373214483 96 0.55613970373214483 
		97 0.55613970373214483 102 0.55613970373214483 103 0.55613970373214483 120 0.55613970373214483;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint5_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint5_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTL -n "legLeft_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 68.996 0 77 0 83 0 84 0 89 0 93 0 94 0 96 0 
		97 0 102 0 103 0 106 -0.077328319911225241 114 -0.077328319911225241 115 0 117 0 
		119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "legLeft_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0.088120907434751816 2 0.088120907434751816 
		6 0.088120907434751816 10 0.088120907434751816 11 0.088120907434751816 19 0.088120907434751816 
		20 0.088120907434751816 22 0.088120907434751816 28 0.088120907434751816 29 0.088120907434751816 
		37 0.088120907434751816 38 0.088120907434751816 54 0.088120907434751816 55 0.088120907434751816 
		64 0.088120907434751816 65 0.088120907434751816 68.996 0.088120907434751816 77 0.088120907434751816 
		83 0.088120907434751816 84 0.088120907434751816 89 0.088120907434751816 93 0.088120907434751816 
		94 0.088120907434751816 96 0.088120907434751816 97 0.088120907434751816 102 0.088120907434751816 
		103 0.088120907434751816 106 0.088120907434751816 114 0.088120907434751816 115 0.088120907434751816 
		117 0.088120907434751816 119 0.088120907434751816 120 0.088120907434751816;
	setAttr ".pre" 3;
createNode animCurveTL -n "legLeft_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0.22752287045162448 2 0.22752287045162448 
		6 0.22752287045162448 10 0.22752287045162448 11 0.22752287045162448 19 0.22752287045162448 
		20 0.22752287045162448 22 0.22752287045162448 28 0.22752287045162448 29 0.22752287045162448 
		37 0.22752287045162448 38 0.22752287045162448 54 0.22752287045162448 55 0.22752287045162448 
		64 0.22752287045162448 65 0.22752287045162448 68.996 0.22752287045162448 77 0.22752287045162448 
		83 0.22752287045162448 84 0.22752287045162448 89 0.22752287045162448 93 0.22752287045162448 
		94 0.22752287045162448 96 0.22752287045162448 97 0.22752287045162448 102 0.22752287045162448 
		103 0.22752287045162448 106 0.22752287045162448 114 0.22752287045162448 115 0.22752287045162448 
		117 0.22752287045162448 119 0.22752287045162448 120 0.22752287045162448;
	setAttr ".pre" 3;
createNode animCurveTU -n "legLeft_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 89 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "legLeft_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 68.996 12.257036376236382 77 7.4298977833384532 
		83 0 84 6.0758637539668534 89 11.889247913418032 93 6.0758637539668534 94 8.1916957963344199 
		96 8.1916957963344199 97 8.1916957963344199 102 0 103 0 106 -0.27084457337605905 
		114 -0.27084457337605905 115 -0.27084457337605905 117 0.59996019558870251 119 -0.27084457337605905 
		120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "legLeft_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 2 -28.378516424728851 6 44.660473392175597 
		10 -28.378516424728851 11 0 19 0 20 0 22 24.141793139082694 28 0 29 0 37 0 38 0 54 
		0 55 0 64 0 65 0 68.996 0 77 0 83 0 84 -53.881428256726203 89 45.14342801379167 93 
		-53.881428256726203 94 0 96 0 97 0 102 0 103 0 106 -15.548017215186446 114 -15.548017215186446 
		115 -15.548017215186446 117 9.7280562394751886 119 -15.548017215186446 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "legLeft_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 2 0 6 0 10 0 11 0 19 0 20 0 22 0 28 
		0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 68.996 0 77 0 83 0 84 4.1497204885983816 89 
		3.4670658250719568 93 4.1497204885983816 94 0 96 0 97 0 102 0 103 0 106 2.4915351625995856 
		114 2.4915351625995856 115 2.4915351625995856 117 2.0772260681284553 119 2.4915351625995856 
		120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "legLeft_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 89 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "legLeft_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 89 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "legLeft_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 1 2 1 6 1 10 1 11 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 89 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint9_scaleZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 30 1 37 1 38 1 54 1 55 1 64 1 65 1 73 1 77 1 79 1 83 1 84 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 110 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTU -n "joint9_scaleY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 30 1 37 1 38 1 54 1 55 1 64 1 65 1 73 1 77 1 79 1 83 1 84 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 110 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTU -n "joint9_scaleX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 30 1 37 1 38 1 54 1 55 1 64 1 65 1 73 1 77 1 79 1 83 1 84 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 110 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTA -n "joint9_rotateZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 2 0 10 0 11 0 19 0 20 0 22 -49.527410662362314 
		24 -72.764770209123824 28 0 29 0 30 -38.302983819911404 37 0 38 0 54 0 55 0 64 0 
		65 0 73 -67.854554612102575 77 -60.797688387169181 79 -67.854554612102575 83 0 84 
		-55.816380124455065 93 -55.816380124455065 94 0 96 0 97 0 102 0 103 0 106 47.825614975068902 
		110 44.404321773081328 114 47.825614975068902 115 47.825614975068902 116 -21.450595031557224 
		117 5.3203495657463407 119 47.825614975068902 120 0;
createNode animCurveTA -n "joint9_rotateY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 2 53.714149966136233 10 53.714149966136233 
		11 0 19 0 20 0 22 -4.180770900378544 24 0 28 0 29 0 30 0 37 0 38 0 54 0 55 0 64 0 
		65 0 73 0 77 0 79 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 106 -12.445141046764249 
		110 -9.5827566171383758 114 -12.445141046764249 115 -12.445141046764249 116 23.363859324854584 
		117 -11.187403503257302 119 -12.445141046764249 120 0;
createNode animCurveTA -n "joint9_rotateX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 2 0 10 0 11 0 19 0 20 0 22 -17.336956717077513 
		24 -8.8713431130311644 28 0 29 0 30 -72.673754740133106 37 0 38 0 54 0 55 0 64 0 
		65 0 73 0 77 0 79 0 83 0 84 -50.496254916188605 93 -50.496254916188605 94 0 96 0 
		97 0 102 0 103 0 106 46.77514430897962 110 42.947252460139751 114 46.77514430897962 
		115 46.77514430897962 116 26.673072089157181 117 44.596596882423974 119 46.77514430897962 
		120 0;
createNode animCurveTU -n "joint9_visibility1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 30 1 37 1 38 1 54 1 55 1 64 1 65 1 73 1 77 1 79 1 83 1 84 1 93 1 94 1 96 1 
		97 1 102 1 103 1 106 1 110 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTL -n "joint9_translateZ1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 2 0 10 0 11 0 19 0 20 0 22 0 24 0 28 
		0 29 0 30 0 37 0 38 0 54 0 55 0 64 0 65 0 73 0 77 0 79 0 83 0 84 0 93 0 94 0 96 0 
		97 0 102 0 103 0 106 0 110 0 114 0 115 0 116 0 117 0 119 0 120 0;
createNode animCurveTL -n "joint9_translateY1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 2 0 10 0 11 0 19 0 20 0 22 0 24 0 28 
		0 29 0 30 0 37 0 38 0 54 0 55 0 64 0 65 0 73 0 77 0 79 0 83 0 84 0 93 0 94 0 96 0 
		97 0 102 0 103 0 106 0 110 0 114 0 115 0 116 0 117 0 119 0 120 0;
createNode animCurveTL -n "joint9_translateX1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 -0.475541 2 -0.475541 10 -0.475541 11 
		-0.475541 19 -0.475541 20 -0.475541 22 -0.475541 24 -0.475541 28 -0.475541 29 -0.475541 
		30 -0.475541 37 -0.475541 38 -0.475541 54 -0.475541 55 -0.475541 64 -0.475541 65 
		-0.475541 73 -0.475541 77 -0.475541 79 -0.475541 83 -0.475541 84 -0.475541 93 -0.475541 
		94 -0.475541 96 -0.475541 97 -0.475541 102 -0.475541 103 -0.475541 106 -0.475541 
		110 -0.475541 114 -0.475541 115 -0.475541 116 -0.475541 117 -0.475541 119 -0.475541 
		120 -0.475541;
createNode animCurveTU -n "handRight_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 23 
		1 24 1 28 1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 93 1 94 1 
		96 1 97 1 102 1 103 1 106 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTU -n "handRight_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 23 
		1 24 1 28 1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 93 1 94 1 
		96 1 97 1 102 1 103 1 106 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTU -n "handRight_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 23 
		1 24 1 28 1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 93 1 94 1 
		96 1 97 1 102 1 103 1 106 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTL -n "handRight_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 -6.1629758220391547e-033 2 -6.1629758220391547e-033 
		10 -6.1629758220391547e-033 11 -6.1629758220391547e-033 15 -6.1629758220391547e-033 
		19 -6.1629758220391547e-033 20 -6.1629758220391547e-033 22 -6.1629758220391547e-033 
		23 -6.1629758220391547e-033 24 -6.1629758220391547e-033 28 -6.1629758220391547e-033 
		29 -6.1629758220391547e-033 37 -6.1629758220391547e-033 38 -6.1629758220391547e-033 
		54 -6.1629758220391547e-033 55 -6.1629758220391547e-033 64 -6.1629758220391547e-033 
		65 -6.1629758220391547e-033 68.996 -6.1629758220391547e-033 77 0 83 -6.1629758220391547e-033 
		84 -6.1629758220391547e-033 93 -6.1629758220391547e-033 94 -6.1629758220391547e-033 
		96 0 97 0 102 -6.1629758220391547e-033 103 -6.1629758220391547e-033 106 -5.3298388780163499e-033 
		114 -5.3298388780163499e-033 115 -5.3298388780163499e-033 116 -4.4970494089650125e-033 
		117 -3.3311496164420087e-033 119 -5.3298388780163499e-033 120 -6.1629758220391547e-033;
createNode animCurveTL -n "handRight_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 5.5511151231257827e-017 2 5.5511151231257827e-017 
		10 5.5511151231257827e-017 11 5.5511151231257827e-017 15 5.5511151231257827e-017 
		19 5.5511151231257827e-017 20 5.5511151231257827e-017 22 5.5511151231257827e-017 
		23 5.5511151231257827e-017 24 5.5511151231257827e-017 28 5.5511151231257827e-017 
		29 5.5511151231257827e-017 37 5.5511151231257827e-017 38 5.5511151231257827e-017 
		54 5.5511151231257827e-017 55 5.5511151231257827e-017 64 5.5511151231257827e-017 
		65 5.5511151231257827e-017 68.996 5.5511151231257827e-017 77 0 83 5.5511151231257827e-017 
		84 5.5511151231257827e-017 93 5.5511151231257827e-017 94 5.5511151231257827e-017 
		96 0 97 0 102 5.5511151231257827e-017 103 5.5511151231257827e-017 106 4.8006920769958432e-017 
		114 4.8006920769958432e-017 115 4.8006920769958432e-017 116 4.0505820084963079e-017 
		117 3.0004328342647202e-017 119 4.8006920769958432e-017 120 5.5511151231257827e-017;
createNode animCurveTL -n "handRight_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 -0.549655 2 -0.549655 10 -0.549655 11 
		-0.549655 15 -0.549655 19 -0.549655 20 -0.549655 22 -0.549655 23 -0.549655 24 -0.549655 
		28 -0.549655 29 -0.549655 37 -0.549655 38 -0.549655 54 -0.549655 55 -0.549655 64 
		-0.549655 65 -0.549655 68.996 -0.549655 77 -0.549655 83 -0.549655 84 -0.549655 93 
		-0.549655 94 -0.549655 96 -0.549655 97 -0.549655 102 -0.549655 103 -0.549655 106 
		-0.549655 114 -0.549655 115 -0.549655 116 -0.549655 117 -0.549655 119 -0.549655 120 
		-0.549655;
createNode animCurveTU -n "handRight_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 23 
		1 24 1 28 1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 68.996 1 77 1 83 1 84 1 93 1 94 1 
		96 1 97 1 102 1 103 1 106 1 114 1 115 1 116 1 117 1 119 1 120 1;
createNode animCurveTA -n "handRight_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 8.6648256306292151 10 8.6648256306292151 
		11 29.251549651071894 15 38.26448103071688 19 29.251549651071894 20 29.251549651071894 
		22 -8.8114825317869947 23 5.9858126375946989 24 -6.7960459468555019 28 29.251549651071894 
		29 29.251549651071894 37 29.251549651071894 38 29.251549651071894 54 29.251549651071894 
		55 -10.579085888975452 64 -10.579085888975452 65 29.251549651071894 68.996 -9.4143047974887288 
		77 5.8133107946363172 83 29.251549651071894 84 29.251549651071894 93 29.251549651071894 
		94 29.251549651071894 96 29.251549651071894 97 29.251549651071894 102 29.251549651071894 
		103 29.251549651071894 106 23.394653779030619 114 23.394653779030619 115 23.394653779030619 
		116 8.3622590582620351 117 -82.780434446950409 119 23.394653779030619 120 29.251549651071894;
createNode animCurveTA -n "handRight_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 10 0 11 0 15 0 19 0 20 0 22 -34.969493117074471 
		23 22.608842798590178 24 -4.2615338177482487 28 0 29 0 37 0 38 0 54 0 55 3.9026240559368288 
		64 3.9026240559368288 65 0 68.996 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 
		0 106 -7.9513867036587909e-016 114 -7.9513867036587909e-016 115 -7.9513867036587909e-016 
		116 -15.761844822062878 117 55.217436292317771 119 -7.9513867036587909e-016 120 0;
createNode animCurveTA -n "handRight_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 10 0 11 0 15 -4.1322162101729125 
		19 0 20 0 22 -77.639931053610695 23 -85.181768824235832 24 21.552811579813358 28 
		0 29 0 37 0 38 0 54 0 55 -51.758868008069207 64 -51.758868008069207 65 0 68.996 0 
		77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 106 -15.471458692984056 114 -15.471458692984056 
		115 -15.471458692984056 116 23.313864664954838 117 -47.032855397492746 119 -15.471458692984056 
		120 0;
createNode animCurveTL -n "armRight_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 10 0 11 0 15 0 19 0 20 0 22 0 24 
		0 28 0 29 0 30 0 37 0 38 0 43 0 44 0 54 0 55 0 57 0 61 0 64 0 65 0 73 0 77 0 79 0 
		83 0 84 0 89 0 93 0 94 0 96 0 97 0 102 0 103 0 106 0 114 0 115 0 117 0 119 0 120 
		0;
createNode animCurveTL -n "armRight_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.27075400000000011 2 0.27075400000000011 
		10 0.27075400000000011 11 0.27075400000000011 15 0.27075400000000011 19 0.27075400000000011 
		20 0.27075400000000011 22 0.27075400000000011 24 0.27075400000000011 28 0.27075400000000011 
		29 0.27075400000000011 30 0.27075400000000011 37 0.27075400000000011 38 0.27075400000000011 
		43 0.27075400000000011 44 0.27075400000000011 54 0.27075400000000011 55 0.27075400000000011 
		57 0.27075400000000011 61 0.27075400000000011 64 0.27075400000000011 65 0.27075400000000011 
		73 0.27075400000000011 77 0.27075400000000011 79 0.27075400000000011 83 0.27075400000000011 
		84 0.27075400000000011 89 0.27075400000000011 93 0.27075400000000011 94 0.27075400000000011 
		96 0.27075400000000011 97 0.27075400000000011 102 0.27075400000000011 103 0.27075400000000011 
		106 0.27075400000000011 114 0.27075400000000011 115 0.27075400000000011 117 0.27075400000000011 
		119 0.27075400000000011 120 0.27075400000000011;
createNode animCurveTL -n "armRight_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.52092979741652756 2 0.52092979741652756 
		10 0.52092979741652756 11 0.52092979741652756 15 0.52092979741652756 19 0.52092979741652756 
		20 0.52092979741652756 22 0.52092979741652756 24 0.52092979741652756 28 0.52092979741652756 
		29 0.52092979741652756 30 0.52092979741652756 37 0.52092979741652756 38 0.52092979741652756 
		43 0.52092979741652756 44 0.52092979741652756 54 0.52092979741652756 55 0.52092979741652756 
		57 0.52092979741652756 61 0.52092979741652756 64 0.52092979741652756 65 0.52092979741652756 
		73 0.52092979741652756 77 0.52092979741652756 79 0.52092979741652756 83 0.52092979741652756 
		84 0.52092979741652756 89 0.52092979741652756 93 0.52092979741652756 94 0.52092979741652756 
		96 0.52092979741652756 97 0.52092979741652756 102 0.52092979741652756 103 0.52092979741652756 
		106 0.52092979741652756 114 0.52092979741652756 115 0.52092979741652756 117 0.52092979741652756 
		119 0.52092979741652756 120 0.52092979741652756;
createNode animCurveTU -n "armRight_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 24 
		1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 73 1 77 1 79 1 
		83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 
		1;
createNode animCurveTA -n "armRight_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -29.936692889409432 10 -29.936692889409432 
		11 -54.027214777701865 15 -51.540223706288685 19 -54.027214777701865 20 -54.027214777701865 
		22 53.345231747435442 24 5.5577687698316582 28 -54.027214777701865 29 -54.027214777701865 
		30 11.768176516133034 37 -54.027214777701865 38 -54.027214777701865 43 -12.034145990739949 
		44 -12.034145990739949 54 -54.027214777701865 55 -13.686291134557953 57 -20.224272973550978 
		61 2.0203738469713506 64 -13.686291134557953 65 -54.027214777701865 73 47.368694034227097 
		77 23.894147698671741 79 33.145448313242376 83 -54.027214777701865 84 36.965239803396351 
		89 13.514120028685346 93 36.965239803396351 94 -54.027214777701865 96 -54.027214777701865 
		97 -54.027214777701865 102 -54.027214777701865 103 -54.027214777701865 106 -12.41262141306138 
		114 -12.41262141306138 115 -12.41262141306138 117 -14.406282149612577 119 -12.41262141306138 
		120 -54.027214777701865;
createNode animCurveTA -n "armRight_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -5.1197042691901746 10 -5.1197042691901746 
		11 0 15 1.7400195626239408 19 0 20 0 22 49.316906896903888 24 -32.118665355594366 
		28 0 29 0 30 32.559743016011865 37 0 38 0 43 -14.769176903673587 44 -14.769176903673587 
		54 0 55 -71.698044922593752 57 -49.584947542930472 61 -47.976915825405584 64 -71.698044922593752 
		65 0 73 -4.9671688726452947 77 -5.8997764318077497 79 -23.954697091210587 83 0 84 
		34.991191889786393 89 -15.033949578988995 93 34.991191889786393 94 0 96 0 97 0 102 
		0 103 0 106 -11.313244630728205 114 -11.313244630728205 115 -11.313244630728205 117 
		-35.942387820318089 119 -11.313244630728205 120 0;
createNode animCurveTA -n "armRight_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 31.529368112960288 10 31.529368112960288 
		11 55.004769715921078 15 55.042542351503734 19 55.004769715921078 20 55.004769715921078 
		22 121.73405607248992 24 55.478993892221652 28 55.004769715921078 29 55.004769715921078 
		30 76.400341781703503 37 55.004769715921078 38 55.004769715921078 43 86.624848170170964 
		44 86.624848170170964 54 55.004769715921078 55 42.409908889170957 57 50.320590972597984 
		61 30.542158566827482 64 42.409908889170957 65 55.004769715921078 73 -14.174314045292297 
		77 -5.8084242859607977 79 -12.981566359054844 83 55.004769715921078 84 76.93637465775106 
		89 40.529908878003603 93 76.93637465775106 94 55.004769715921078 96 55.004769715921078 
		97 55.004769715921078 102 55.004769715921078 103 55.004769715921078 106 42.469649380306421 
		114 42.469649380306421 115 42.469649380306421 117 38.987093229849393 119 42.469649380306421 
		120 55.004769715921078;
createNode animCurveTU -n "armRight_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 24 
		1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 73 1 77 1 79 1 
		83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 
		1;
createNode animCurveTU -n "armRight_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 24 
		1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 73 1 77 1 79 1 
		83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 
		1;
createNode animCurveTU -n "armRight_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 24 
		1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 73 1 77 1 79 1 
		83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 
		1;
createNode animCurveTU -n "joint9_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 37 1 
		38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
createNode animCurveTU -n "joint9_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 37 1 
		38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
createNode animCurveTU -n "joint9_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 37 1 
		38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
createNode animCurveTA -n "joint9_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 11 0 19 0 20 0 28 0 29 0 30 23.268248452018508 
		37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 19.107550454955195 
		102 0 103 0 120 0;
createNode animCurveTA -n "joint9_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 37 0 
		38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 -3.0463672222033362 102 
		0 103 0 120 0;
createNode animCurveTA -n "joint9_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 37 0 
		38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 -1.3240682734909168 102 
		0 103 0 120 0;
createNode animCurveTU -n "joint9_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 37 1 
		38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
createNode animCurveTL -n "joint9_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 37 0 
		38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
createNode animCurveTL -n "joint9_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 37 0 
		38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
createNode animCurveTL -n "joint9_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0.47554429526363373 11 0.47554429526363373 
		19 0.47554429526363373 20 0.47554429526363373 28 0.47554429526363373 29 0.47554429526363373 
		30 0.47554429526363373 37 0.47554429526363373 38 0.47554429526363373 54 0.47554429526363373 
		55 0.47554429526363373 64 0.47554429526363373 65 0.47554429526363373 77 0.47554429526363373 
		83 0.47554429526363373 84 0.47554429526363373 93 0.47554429526363373 94 0.47554429526363373 
		96 0.47554429526363373 97 0.47554429526363373 102 0.47554429526363373 103 0.47554429526363373 
		120 0.47554429526363373;
createNode animCurveTU -n "joint7_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 
		1 106 1 114 1 115 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint7_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 
		1 106 1 114 1 115 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint7_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 
		1 106 1 114 1 115 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint7_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 10 0 11 0 15 0 19 0 20 0 22 0 28 
		0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 
		0 106 0 114 0 115 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint7_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 0 10 0 11 0 15 0 19 0 20 0 22 0 28 
		0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 
		0 106 0 114 0 115 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint7_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0.54965509452549921 2 0.54965509452549921 
		10 0.54965509452549921 11 0.54965509452549921 15 0.54965509452549921 19 0.54965509452549921 
		20 0.54965509452549921 22 0.54965509452549921 28 0.54965509452549921 29 0.54965509452549921 
		37 0.54965509452549921 38 0.54965509452549921 54 0.54965509452549921 55 0.54965509452549921 
		64 0.54965509452549921 65 0.54965509452549921 77 0.54965509452549921 83 0.54965509452549921 
		84 0.54965509452549921 93 0.54965509452549921 94 0.54965509452549921 96 0.54965509452549921 
		97 0.54965509452549921 102 0.54965509452549921 103 0.54965509452549921 106 0.54965509452549921 
		114 0.54965509452549921 115 0.54965509452549921 119 0.54965509452549921 120 0.54965509452549921;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint7_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 1 2 1 10 1 11 1 15 1 19 1 20 1 22 1 28 
		1 29 1 37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 
		1 106 1 114 1 115 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint7_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 83.514296582359975 10 83.514296582359975 
		11 32.093898991752901 15 36.174882977228073 19 32.093898991752901 20 32.093898991752901 
		22 32.093898991752951 28 32.093898991752901 29 32.093898991752901 37 32.093898991752901 
		38 32.093898991752901 54 32.093898991752901 55 32.093898991752901 64 32.093898991752901 
		65 32.093898991752901 77 32.093898991752901 83 32.093898991752901 84 6.3672045731298272 
		93 6.3672045731298272 94 13.059034282152236 96 13.059034282152236 97 13.059034282152236 
		102 32.093898991752901 103 32.093898991752901 106 69.245498036515556 114 69.245498036515556 
		115 69.245498036515556 119 69.245498036515556 120 32.093898991752901;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint7_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 -27.92567873248106 10 -27.92567873248106 
		11 0 15 0 19 0 20 0 22 1.5902773407317588e-015 28 0 29 0 37 0 38 0 54 0 55 0 64 0 
		65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 106 12.671061482317366 114 12.671061482317366 
		115 12.671061482317366 119 12.671061482317366 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint7_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 0 2 6.2286225548354377 10 6.2286225548354377 
		11 0 15 0 19 0 20 0 22 53.354822474360873 28 0 29 0 37 0 38 0 54 0 55 0 64 0 65 0 
		77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 106 94.053896296664306 114 94.053896296664306 
		115 94.053896296664306 119 94.053896296664306 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "handLeft_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 6 0 10 0 11 0 15 0 19 0 20 0 22 
		0 24 0 28 0 29 0 30 0 37 0 38 0 43 0 44 0 54 0 55 0 57 0 61 0 64 0 65 0 68.996 0 
		77 0 83 0 84 0 89 0 93 0 94 0 96 0 97 0 102 0 103 0 106 0 110 0 114 0 115 0 117 0 
		119 0 120 0;
createNode animCurveTL -n "handLeft_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.27075417002104551 2 -0.27075417002104551 
		6 -0.27075417002104551 10 -0.27075417002104551 11 -0.27075417002104551 15 -0.27075417002104551 
		19 -0.27075417002104551 20 -0.27075417002104551 22 -0.27075417002104551 24 -0.27075417002104551 
		28 -0.27075417002104551 29 -0.27075417002104551 30 -0.27075417002104551 37 -0.27075417002104551 
		38 -0.27075417002104551 43 -0.27075417002104551 44 -0.27075417002104551 54 -0.27075417002104551 
		55 -0.27075417002104551 57 -0.27075417002104551 61 -0.27075417002104551 64 -0.27075417002104551 
		65 -0.27075417002104551 68.996 -0.27075417002104551 77 -0.27075417002104551 83 -0.27075417002104551 
		84 -0.27075417002104551 89 -0.27075417002104551 93 -0.27075417002104551 94 -0.27075417002104551 
		96 -0.27075417002104551 97 -0.27075417002104551 102 -0.27075417002104551 103 -0.27075417002104551 
		106 -0.27075417002104551 110 -0.27075417002104551 114 -0.27075417002104551 115 -0.27075417002104551 
		117 -0.27075417002104551 119 -0.27075417002104551 120 -0.27075417002104551;
createNode animCurveTL -n "handLeft_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.52092969316414273 2 0.52092969316414273 
		6 0.52092969316414273 10 0.52092969316414273 11 0.52092969316414273 15 0.52092969316414273 
		19 0.52092969316414273 20 0.52092969316414273 22 0.52092969316414273 24 0.52092969316414273 
		28 0.52092969316414273 29 0.52092969316414273 30 0.52092969316414273 37 0.52092969316414273 
		38 0.52092969316414273 43 0.52092969316414273 44 0.52092969316414273 54 0.52092969316414273 
		55 0.52092969316414273 57 0.52092969316414273 61 0.52092969316414273 64 0.52092969316414273 
		65 0.52092969316414273 68.996 0.52092969316414273 77 0.52092969316414273 83 0.52092969316414273 
		84 0.52092969316414273 89 0.52092969316414273 93 0.52092969316414273 94 0.52092969316414273 
		96 0.52092969316414273 97 0.52092969316414273 102 0.52092969316414273 103 0.52092969316414273 
		106 0.52092969316414273 110 0.52092969316414273 114 0.52092969316414273 115 0.52092969316414273 
		117 0.52092969316414273 119 0.52092969316414273 120 0.52092969316414273;
createNode animCurveTU -n "handLeft_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 6 1 10 1 11 1 15 1 19 1 20 1 22 
		1 24 1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 68.996 1 
		77 1 83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 110 1 114 1 115 1 117 1 
		119 1 120 1;
createNode animCurveTA -n "handLeft_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 -59.808351653287637 6 -44.228193616101329 
		10 -59.808351653287637 11 -53.305331220518752 15 -51.11026287232292 19 -53.305331220518752 
		20 -53.305331220518752 22 -53.305331220518781 24 -12.480366460967694 28 -53.305331220518752 
		29 -53.305331220518752 30 1.9567512037504324 37 -53.305331220518752 38 -53.305331220518752 
		43 -53.305331220518752 44 -53.305331220518752 54 -53.305331220518752 55 -53.305331220518902 
		57 6.9377887755706249 61 -53.174042319957501 64 -53.305331220518902 65 -53.305331220518752 
		68.996 -32.361330471116496 77 -40.609620775870098 83 -53.305331220518752 84 24.852136535864275 
		89 24.852136535864258 93 24.852136535864275 94 -27.463789094640397 96 -27.463789094640397 
		97 -10.322287708913951 102 -53.305331220518752 103 -53.305331220518752 106 -53.305331220519143 
		110 -53.305331220519214 114 -53.305331220519143 115 -53.305331220519143 117 -162.84769564476832 
		119 -53.305331220519143 120 -53.305331220518752;
createNode animCurveTA -n "handLeft_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  1 0 11 0 15 0 19 0 20 0 22 -60.387759975953287 
		24 23.461031009850412 28 0 29 0 30 0 37 0 38 0 43 -74.395205244201819 44 -74.395205244201819 
		54 0 55 -73.948738200980486 57 -59.899411710170789 61 -48.540611005278599 64 -73.948738200980486 
		65 0 68.996 0 77 0 83 0 84 0 89 25.398969519910331 93 0 94 -23.826263144121565 96 
		-23.826263144121565 97 -25.081387260578982 102 0 103 0 106 -71.384150911297169 110 
		-66.434896304820754 114 -71.384150911297169 115 -71.384150911297169 117 -41.625444193203052 
		119 -71.384150911297169 120 0;
createNode animCurveTA -n "handLeft_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 6 0 10 0 11 0 15 0 19 0 20 0 22 
		-6.4367071443438091e-015 24 -46.301800572900504 28 0 29 0 30 0 37 0 38 0 43 0 44 
		0 54 0 55 0 57 -56.542453937885462 61 -5.0953151193007047 64 0 65 0 68.996 0 77 0 
		83 0 84 0 89 0 93 0 94 3.4022137434271933 96 3.4022137434271933 97 -3.6647437221369854 
		102 0 103 0 106 9.963473650550622e-015 110 0 114 9.963473650550622e-015 115 9.963473650550622e-015 
		117 98.55840325460295 119 9.963473650550622e-015 120 0;
createNode animCurveTU -n "handLeft_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 6 1 10 1 11 1 15 1 19 1 20 1 22 
		1 24 1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 68.996 1 
		77 1 83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 110 1 114 1 115 1 117 1 
		119 1 120 1;
createNode animCurveTU -n "handLeft_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 6 1 10 1 11 1 15 1 19 1 20 1 22 
		1 24 1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 68.996 1 
		77 1 83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 110 1 114 1 115 1 117 1 
		119 1 120 1;
createNode animCurveTU -n "handLeft_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 6 1 10 1 11 1 15 1 19 1 20 1 22 
		1 24 1 28 1 29 1 30 1 37 1 38 1 43 1 44 1 54 1 55 1 57 1 61 1 64 1 65 1 68.996 1 
		77 1 83 1 84 1 89 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 110 1 114 1 115 1 117 1 
		119 1 120 1;
createNode animCurveTU -n "joint3_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint3_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint3_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint3_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint3_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1.1233858397317045e-016 11 1.1233858397317045e-016 
		19 1.1233858397317045e-016 20 1.1233858397317045e-016 28 1.1233858397317045e-016 
		29 1.1233858397317045e-016 37 1.1233858397317045e-016 38 1.1233858397317045e-016 
		54 1.1233858397317045e-016 55 1.1233858397317045e-016 64 1.1233858397317045e-016 
		65 1.1233858397317045e-016 77 0 83 1.1233858397317045e-016 84 1.1233858397317045e-016 
		93 1.1233858397317045e-016 94 1.1233858397317045e-016 96 0 97 0 102 1.1233858397317045e-016 
		103 1.1233858397317045e-016 120 1.1233858397317045e-016;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint3_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0.50592800492089962 11 0.50592800492089962 
		19 0.50592800492089962 20 0.50592800492089962 28 0.50592800492089962 29 0.50592800492089962 
		37 0.50592800492089962 38 0.50592800492089962 54 0.50592800492089962 55 0.50592800492089962 
		64 0.50592800492089962 65 0.50592800492089962 77 0.50592800492089962 83 0.50592800492089962 
		84 0.50592800492089962 93 0.50592800492089962 94 0.50592800492089962 96 0.50592800492089962 
		97 0.50592800492089962 102 0.50592800492089962 103 0.50592800492089962 120 0.50592800492089962;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint3_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 1 11 1 19 1 20 1 28 1 29 1 37 1 38 1 
		54 1 55 1 64 1 65 1 77 1 83 1 84 1 93 1 94 1 96 1 97 1 102 1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint3_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint3_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint3_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 11 0 19 0 20 0 28 0 29 0 37 0 38 0 
		54 0 55 0 64 0 65 0 77 0 83 0 84 0 93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint2_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 10 0 11 0 19 0 20 0 22 0 24 0 28 
		0 29 0 37 0 38 0 43 0 44 0 46 0 54 0 55 0 64 0 65 0 68.996 0 73 0 77 0 79 0 83 0 
		84 0 93 0 94 0 96 0 97 0 102 0 103 0 106 0 114 0 115 0 117 0 119 0 120 0;
createNode animCurveTL -n "joint2_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1.6582026918720262e-016 2 1.6582026918720262e-016 
		10 1.6582026918720262e-016 11 1.6582026918720262e-016 19 1.6582026918720262e-016 
		20 1.6582026918720262e-016 22 1.6582026918720262e-016 24 1.6582026918720262e-016 
		28 1.6582026918720262e-016 29 1.6582026918720262e-016 37 1.6582026918720262e-016 
		38 1.6582026918720262e-016 43 1.6582026918720262e-016 44 1.6582026918720262e-016 
		46 1.6582026918720262e-016 54 1.6582026918720262e-016 55 1.6582026918720262e-016 
		64 1.6582026918720262e-016 65 1.6582026918720262e-016 68.996 1.6582026918720262e-016 
		73 1.6582026918720262e-016 77 0 79 0 83 1.6582026918720262e-016 84 1.6582026918720262e-016 
		93 1.6582026918720262e-016 94 1.6582026918720262e-016 96 0 97 0 102 1.6582026918720262e-016 
		103 1.6582026918720262e-016 106 1.1335374133634864e-016 114 1.1335374133634864e-016 
		115 1.1335374133634864e-016 117 0 119 1.1335374133634864e-016 120 1.6582026918720262e-016;
createNode animCurveTL -n "joint2_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0.74678810252196104 2 0.74678810252196104 
		10 0.74678810252196104 11 0.74678810252196104 19 0.74678810252196104 20 0.74678810252196104 
		22 0.74678810252196104 24 0.74678810252196104 28 0.74678810252196104 29 0.74678810252196104 
		37 0.74678810252196104 38 0.74678810252196104 43 0.74678810252196104 44 0.74678810252196104 
		46 0.74678810252196104 54 0.74678810252196104 55 0.74678810252196104 64 0.74678810252196104 
		65 0.74678810252196104 68.996 0.74678810252196104 73 0.74678810252196104 77 0.74678810252196104 
		79 0.74678810252196104 83 0.74678810252196104 84 0.74678810252196104 93 0.74678810252196104 
		94 0.74678810252196104 96 0.74678810252196104 97 0.74678810252196104 102 0.74678810252196104 
		103 0.74678810252196104 106 0.74678810252196104 114 0.74678810252196104 115 0.74678810252196104 
		117 0.74678810252196104 119 0.74678810252196104 120 0.74678810252196104;
createNode animCurveTU -n "joint2_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 
		84 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
createNode animCurveTA -n "joint2_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 10 0 11 0 19 0 20 0 22 0 24 0 28 
		0 29 0 37 0 38 0 43 0 44 0 46 -4.600374313016947 54 0 55 0 64 0 65 0 68.996 -8.2459703681596466 
		73 7.6882457107084941 77 7.295962653765617 79 4.0018376098603792 83 0 84 0 93 0 94 
		-6.466515402637393 96 -6.466515402637393 97 -17.714566093510104 102 0 103 0 106 0 
		114 0 115 0 117 0 119 0 120 0;
createNode animCurveTA -n "joint2_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 18.587760534576965 10 18.587760534576965 
		11 0 19 0 20 0 22 0 24 0 28 0 29 0 37 0 38 0 43 0 44 0 46 -6.6264891541108426 54 
		0 55 0 64 0 65 0 68.996 3.564239773555228 73 10.147519944466335 77 7.8901618253967118 
		79 8.3321835753018636 83 0 84 0 93 0 94 -2.7781125511876965 96 -2.7781125511876965 
		97 -6.5803954233616819 102 0 103 0 106 0 114 0 115 0 117 0 119 0 120 0;
createNode animCurveTA -n "joint2_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 10 0 11 0 19 0 20 0 22 21.155216109946551 
		24 -37.977325058730557 28 0 29 0 37 0 38 0 43 37.307306272329001 44 37.307306272329001 
		46 34.887648662701686 54 0 55 0 64 0 65 0 68.996 23.218120648133404 73 -26.210297563176528 
		77 -23.840159313430835 79 -26.802489117400562 83 0 84 0 93 0 94 66.847391724225858 
		96 66.847391724225858 97 67.482074976588379 102 0 103 0 106 48.736826983358206 114 
		48.736826983358206 115 48.736826983358206 117 -41.553664128504153 119 48.736826983358206 
		120 0;
createNode animCurveTU -n "joint2_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 
		84 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
createNode animCurveTU -n "joint2_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 
		84 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
createNode animCurveTU -n "joint2_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 10 1 11 1 19 1 20 1 22 1 24 1 28 
		1 29 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 
		84 1 93 1 94 1 96 1 97 1 102 1 103 1 106 1 114 1 115 1 117 1 119 1 120 1;
createNode animCurveTL -n "joint1_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 4 0.052569867039242116 6 0 8 0.052662861332986949 
		10 0 11 0 13 0.019606412281114149 15 0 17 0 19 0 20 0 22 0 24 0 28 0 29 0 30 -0.074539181976974372 
		34 -0.0465869884384979 37 0 38 0 43 0 44 0 46 -0.11306295146715051 54 0 55 0 60 0.073918549209555096 
		64 0 65 0 68.996 0 73 0 77 0 79 0 83 0 84 0 86 0 89 0 91 0 93 0 94 -0.034127326977957839 
		96 -0.16093490538253841 97 -0.090968651800247602 102 0 103 0 106 -0.19372548188336269 
		110 -0.19372548188336269 114 -0.19372548188336269 115 -0.19372548188336269 117 0.10456047379067246 
		119 -0.19372548188336269 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint1_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0.13537400861157456 2 0.13537400861157456 
		4 0.27104333710462958 6 0.13537400861157456 8 0.27128333149869244 10 0.13537400861157456 
		11 0.13537400861157456 13 0.13537400861157456 15 0.13537400861157456 17 0.13537400861157456 
		19 0.13537400861157456 20 0.13537400861157456 22 0.13537400861157456 24 0.13537400861157456 
		28 0.13537400861157456 29 0.13537400861157456 30 0.27027589345968261 34 0.21968768599925995 
		37 0.13537400861157456 38 0.13537400861157456 43 0.13537400861157456 44 0.13537400861157456 
		46 0.13537400861157456 54 0.13537400861157456 55 0.13537400861157456 60 0.13537400861157456 
		64 0.13537400861157456 65 0.13537400861157456 68.996 0.13537400861157456 73 0.13537400861157456 
		77 0.13537400861157456 79 0.13537400861157456 83 0.13537400861157456 84 0.13537400861157456 
		86 0.13537400861157456 89 0.13537400861157456 91 0.13537400861157456 93 0.13537400861157456 
		94 0.13537400861157456 96 0.13537400861157456 97 0.13537400861157456 102 0.13537400861157456 
		103 0.13537400861157456 106 0.13537400861157456 110 0.13537400861157456 114 0.13537400861157456 
		115 0.13537400861157456 117 0.13537400861157456 119 0.13537400861157456 120 0.13537400861157456;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint1_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 4 4.1752604132118643e-021 6 0 8 
		1.6176931139057609e-017 10 0 11 0 13 -0.027743677915857148 15 0 17 0.0070859205201363462 
		19 0 20 0 22 0 24 0 28 0 29 0 30 0 34 1.8149906168502183e-017 37 0 38 0 43 0.065742035435350066 
		44 0.065742035435350066 46 0.061008614135268306 54 0 55 0 60 0 64 0 65 0 68.996 0 
		73 -0.11528616120509749 77 -0.10329641310548542 79 -0.11528616120509749 83 0 84 0 
		86 0 89 0 91 0 93 0 94 0 96 0 97 0 102 0 103 0 106 0 110 0.039696612239843221 114 
		0 115 0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint1_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 13 1 15 1 
		17 1 19 1 20 1 22 1 24 1 28 1 29 1 30 1 34 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 60 
		1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 
		102 1 103 1 106 1 110 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint1_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 4 0 6 0 8 0 10 0 11 0 13 -1.0871209453053441 
		15 0 17 2.9521071731636899 19 0 20 0 22 -1.9111063152711474 24 -16.420765837513127 
		28 0 29 0 30 0 34 -4.7882580696761927 37 0 38 0 43 0 44 0 46 -5.2133286036103801 
		54 0 55 0 60 0 64 0 65 0 68.996 9.5992561971467474 73 -21.62535377971637 77 -11.097541419406705 
		79 -21.62535377971637 83 0 84 0 86 14.824652364807509 89 0 91 -14.133248593111475 
		93 0 94 0.77990473989206666 96 0.77990473989206666 97 0.26519403051316104 102 0 103 
		0 106 0 110 0 114 0 115 0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint1_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 -21.18061595350817 4 -21.180615953508163 
		6 -21.180615953508152 8 -21.180615953508163 10 -21.18061595350817 11 0 13 2.6305126743056331 
		15 0 17 0 19 0 20 0 22 4.2114112840261742 24 -12.518554692246331 28 0 29 0 30 28.922567068975741 
		34 -6.3456993860404145 37 0 38 0 43 0 44 0 46 6.8753173530368903 54 0 55 0 60 2.3319058659110401 
		64 0 65 0 68.996 0 73 9.7839061464139885 77 4.7898842476858148 79 9.7839061464139885 
		83 0 84 0 86 3.917365115285107 89 11.510831778369928 91 5.3016209943287347 93 0 94 
		9.6614679500771121 96 9.6614679500771121 97 19.515317867050186 102 0 103 0 106 0 
		110 0 114 0 115 0 117 0 119 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint1_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 5.5080083255890431 4 -0.038714936327985172 
		6 -5.5854374543714966 8 -0.038713076644124884 10 5.5080083255890431 11 0 13 -0.21512888889769108 
		15 0 17 0 19 0 20 0 22 -24.435611565204859 24 44.59740787774119 28 0 29 0 30 18.199680246332161 
		34 -2.5767809980756633 37 0 38 0 43 -39.871846162327039 44 -39.871846162327039 46 
		-37.31445936793186 54 0 55 0 60 0 64 0 65 0 68.996 -21.188772426867953 73 28.214273039365874 
		77 26.259363729357904 79 28.214273039365874 83 0 84 0 86 1.0358954029760352 89 0 
		91 -1.3328016607274698 93 0 94 -70.3784975909211 96 -70.3784975909211 97 -70.045023901724193 
		102 0 103 0 106 -55.510271835091373 110 -55.510271835091373 114 -55.510271835091373 
		115 -55.510271835091373 117 45.155133469405044 119 -55.510271835091373 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint1_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 13 1 15 1 
		17 1 19 1 20 1 22 1 24 1 28 1 29 1 30 1 34 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 60 
		1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 
		102 1 103 1 106 1 110 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint1_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 13 1 15 1 
		17 1 19 1 20 1 22 1 24 1 28 1 29 1 30 1 34 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 60 
		1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 
		102 1 103 1 106 1 110 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint1_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 13 1 15 1 
		17 1 19 1 20 1 22 1 24 1 28 1 29 1 30 1 34 1 37 1 38 1 43 1 44 1 46 1 54 1 55 1 60 
		1 64 1 65 1 68.996 1 73 1 77 1 79 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 
		102 1 103 1 106 1 110 1 114 1 115 1 117 1 119 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint8_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 34 0 
		37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 86 0 89 0 91 0 93 0 94 0 96 0 97 0 102 
		0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint8_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 34 16.825753027654162 
		37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 86 0 89 0 91 0 93 0 94 0 96 0 97 0 102 
		0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTA -n "joint8_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 34 0 
		37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 86 0 89 0 91 0 93 0 94 0 96 0 97 0 102 
		0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint8_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 11 0 19 0 20 0 28 0 29 0 30 -0.27052076090610172 
		34 -0.169075473456794 37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 86 0 89 0 91 0 
		93 0 94 0 96 0 97 0 102 0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint8_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 -0.39476180602810218 11 -0.39476180602810218 
		19 -0.39476180602810218 20 -0.39476180602810218 28 -0.39476180602810218 29 -0.39476180602810218 
		30 -0.39476180602810218 34 -0.39476180602810218 37 -0.39476180602810218 38 -0.39476180602810218 
		54 -0.39476180602810218 55 -0.39476180602810218 64 -0.39476180602810218 65 -0.39476180602810218 
		77 -0.39476180602810218 83 -0.39476180602810218 84 -0.39476180602810218 86 -0.22975349571700843 
		89 -0.39476180602810218 91 -0.23347281540925324 93 -0.39476180602810218 94 -0.39476180602810218 
		96 -0.39476180602810218 97 -0.39476180602810218 102 -0.39476180602810218 103 -0.39476180602810218 
		120 -0.39476180602810218;
	setAttr ".pre" 3;
createNode animCurveTL -n "joint8_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 11 0 19 0 20 0 28 0 29 0 30 0 34 0 
		37 0 38 0 54 0 55 0 64 0 65 0 77 0 83 0 84 0 86 0 89 0 91 0 93 0 94 0 96 0 97 0 102 
		0 103 0 120 0;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint8_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 34 1 
		37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 102 
		1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint8_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 34 1 
		37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 102 
		1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint8_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 34 1 
		37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 102 
		1 103 1 120 1;
	setAttr ".pre" 3;
createNode animCurveTU -n "joint8_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 11 1 19 1 20 1 28 1 29 1 30 1 34 1 
		37 1 38 1 54 1 55 1 64 1 65 1 77 1 83 1 84 1 86 1 89 1 91 1 93 1 94 1 96 1 97 1 102 
		1 103 1 120 1;
	setAttr ".pre" 3;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode file -n "file7";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/weapon.png";
createNode place2dTexture -n "place2dTexture8";
createNode shadingEngine -n "body2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode displayLayer -n "hide";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode displayLayer -n "lock";
	setAttr ".do" 6;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/hairSchor.tif";
createNode place2dTexture -n "place2dTexture9";
createNode shadingEngine -n "horse:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo1";
createNode file -n "horse:file1";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/desktop/Mercenary/mayaFile/character//texture/face_00.jpg";
createNode place2dTexture -n "horse:place2dTexture1";
createNode shadingEngine -n "horse:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo2";
createNode shadingEngine -n "horse:lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo3";
createNode file -n "horse:file2";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/desktop/Mercenary/mayaFile/character//texture/outUV.psd";
createNode place2dTexture -n "horse:place2dTexture2";
createNode cloth -n "horse:cloth1";
	setAttr ".uwi" 0.71942448616027832;
createNode place2dTexture -n "horse:place2dTexture3";
	setAttr ".re" -type "float2" 8 8 ;
createNode shadingEngine -n "horse:lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo4";
createNode file -n "horse:file3";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/hat.psd";
createNode place2dTexture -n "horse:place2dTexture4";
createNode file -n "horse:file4";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/desktop/Mercenary/mayaFile/character//texture/body.psd";
createNode place2dTexture -n "horse:place2dTexture5";
createNode shadingEngine -n "horse:bodySG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo5";
createNode file -n "horse:file5";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/世仇/maya/horse.psd";
createNode place2dTexture -n "horse:place2dTexture6";
createNode shadingEngine -n "horse:armSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo6";
createNode file -n "horse:file6";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/shield.psd";
createNode place2dTexture -n "horse:place2dTexture7";
createNode shadingEngine -n "horse:shieldSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "horse:materialInfo7";
createNode nucleus -n "horse:nucleus1";
createNode nucleus -n "horse:nucleus2";
	setAttr ".ady" 0.95808380842208862;
	setAttr ".wisp" 3.2934131622314453;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode file -n "file9";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/AllInOne.tif";
createNode place2dTexture -n "place2dTexture10";
createNode shadingEngine -n "allinoneSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode file -n "file10";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/AllInOne.png";
createNode place2dTexture -n "place2dTexture11";
createNode lambert -n "allinone";
	setAttr ".dc" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert7SG";
	setAttr ".ihi" 0;
	setAttr -s 40 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode file -n "file11";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Administrator/桌面/cwhistleLovie/model/texture/aioEnemy.tif";
createNode place2dTexture -n "place2dTexture12";
createNode polyCone -n "polyCone1";
	setAttr ".sa" 6;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" -1.6353342256656863e-015 0.66953550993947308 0 0 1.1150006084084226e-016 0 0.66953550993947308 0
		 0.66953550993947308 1.598167538718739e-015 -1.4866674778778967e-016 0 0 0.6643380115780475 1.1652023422851474 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9953713e-008 0.66433799 0.49566683 ;
	setAttr ".rs" 38172;
	setAttr ".c[0]"  0 1 1;
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483626;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[7:12]" -type "float3"  0 -1.5258805 2.5411012e-016 
		0 -1.5258805 0 0 -1.5258805 0 0 -1.5258805 0 -1.110223e-016 -1.5258805 2.5411012e-016 
		0 -1.5258805 0;
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483624 -2147483628;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0:5]" -type "float3" 0 0 1.1175871e-008  0.054403946 0 1.110223e-016  
		0.26584232 0 5.8874666e-016  0.054403946 0 1.110223e-016  0 0 -1.8626451e-008  0.0067776032 
		0 -2.7539877e-017 ;
	setAttr ".tk[7:12]" -type "float3" 0.50908673 -0.60741889 1.2784536e-015  
		0 0 1.1175871e-008  0 0 -1.8626451e-008  0.054403946 0 1.110223e-016  0.26584232 
		0 5.8874666e-016  0.054403946 0 1.110223e-016 ;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483625;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483644;
createNode polySplit -n "polySplit5";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483643;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 4 "e[14]" "e[16]" "e[18:19]" "e[23]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit6";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483632 -2147483633;
createNode polySplit -n "polySplit7";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483631 -2147483633;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".ix" -type "matrix" 0.66953550993947308 0 0 0 0 0.66953550993947308 0 0
		 0 0 0.66953550993947308 0 0 0.6643380115780475 1.1752952421217127 1;
	setAttr ".pc" -type "double3" 9.0949470177292824e-013 0.81595777177433715 -0.82010808053357431 ;
	setAttr ".ro" -type "double3" -180 0 -90 ;
	setAttr ".ps" -type "double2" 2.1437203884124756 1.5585947930812836 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 0.10854282 4.4408921e-016;
createNode polyDelEdge -n "polyDelEdge2";
	setAttr ".ics" -type "componentList" 2 "e[25]" "e[29]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[9:13]" -type "float3"  0.58473396 0 0.52789605 -0.58473396 
		0 0.52789605 0 0 0 0.36192572 0.41636202 0.41670698 -0.36192572 0.41636202 0.41670698;
createNode polySplit -n "polySplit8";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483626;
createNode polySplit -n "polySplit9";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483625;
createNode polyCone -n "polyCone2";
	setAttr ".sa" 6;
	setAttr ".cuv" 3;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0 1;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.7054309417755595 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9604645e-008 0.91413456 0.34939164 ;
	setAttr ".rs" 50918;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[0:6]" -type "float3"  0.23485777 0.20870364 -0.10913561 
		0.23485777 0.20870364 0.05439632 0 0.20870364 0.50499505 -0.23485777 0.20870364 0.054396346 
		-0.23485777 0.20870364 -0.10913566 0 0.20870364 0.19378819 0 0 -0.2225146;
createNode polySplit -n "polySplit10";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483631 -2147483628;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0:5]" -type "float3" 0 -5.9604645e-008 0  0 -5.9604645e-008 
		0  0 -5.9604645e-008 -0.60645425  0 -5.9604645e-008 0  0 -5.9604645e-008 0  0 -5.9604645e-008 
		0 ;
	setAttr ".tk[7:12]" -type "float3" -5.4259912e-009 -0.37299365 0.10519807  
		0.057457093 -0.37299365 0.087257676  -0.057457104 -0.37299365 0.087257639  -0.057457104 
		-0.37299365 -0.018662212  8.138989e-009 -0.37299365 0.095935866  0.057457104 -0.37299365 
		-0.018662181 ;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483629;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.7054309417755595 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5.9604644775390625e-008 1.6232860088348389 0.39735954999923706 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2.4071427583694458 2.4071427583694458 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 0.11735694 ;
	setAttr ".tk[5]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.12704213 ;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" -0.45023179 0.7415511 -0.4367896 
		0.7415511 -0.45023167 0.7415511 -0.079744026 0.7415511 0.26298079 0.7415511 -0.079744086 
		0.7415511 -0.46945423 0.6215412 -0.049040511 0.6215412 -0.32370907 0.045195378 0.07474754 
		0.6215412 -0.049040452 0.6215412 -0.46945417 0.6215412 -0.5115124 0.6215412;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.66953550993947308 0 0 0 0 0.66953550993947308 0 0
		 0 0 0.66953550993947308 0 0 0.6643380115780475 1.1752952421217127 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.95060782134532928 -0.32551634311676025 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.5669879913330078 2.5669879913330078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[0]" -type "float3" -0.31609058 -0.35598394 0 ;
	setAttr ".tk[4:7]" -type "float3" 0.31609058 -0.35598394 0  0 -0.32491484 
		0  0 0 -0.39389539  0 0 0.09952835 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.66953550993947308 0 0 0 0 0.66953550993947308 0 0
		 0 0 0.66953550993947308 0 0 0.6643380115780475 1.1752952421217127 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.95060770213603973 -0.32551634311676025 ;
	setAttr ".ps" -type "double2" 2.5669879913330078 2.5669879913330078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" 0.011481944 0.23274475 -0.16377991 
		0.54277408 -0.3082006 0.45468837 -0.30820063 0.5369646 -0.45262128 0.54277414 -0.62788326 
		0.23274475 -0.3082006 0.38673398 -0.3082006 0.39913183 -0.46674427 0.41131788 -0.30820063 
		0.56158233 -0.48185644 0.55632722 -0.13454477 0.55632722 -0.14965695 0.41131788;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" -1.6353342256656863e-015 0.66953550993947308 0 0 1.1150006084084226e-016 0 0.66953550993947308 0
		 0.66953550993947308 1.598167538718739e-015 -1.4866674778778967e-016 0 0 0.6643380115780475 1.1652023422851474 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.92375919967889786 0.4510425329208374 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2.7673907279968262 2.7673907279968262 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" -0.49661744 0.14302164 -0.56528437 
		0.010744283 -0.49449793 0.3173672 -0.21618521 0.14302166 -0.21618521 0.31683734 0.11110047 
		0.25769562 -0.21618521 0.37783521 -0.21618521 0.3168374 -0.21618521 0.14302178 -0.21618521 
		0.092943758 -0.49661744 0.14302176 -0.49449793 0.31736726 -0.46588451 0.37783521;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 19 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 19 ".u";
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "joint8_scaleX.o" "root.sx";
connectAttr "joint8_scaleY.o" "root.sy";
connectAttr "joint8_scaleZ.o" "root.sz";
connectAttr "joint8_visibility.o" "root.v";
connectAttr "joint8_translateX.o" "root.tx";
connectAttr "joint8_translateY.o" "root.ty";
connectAttr "joint8_translateZ.o" "root.tz";
connectAttr "joint8_rotateX.o" "root.rx";
connectAttr "joint8_rotateY.o" "root.ry";
connectAttr "joint8_rotateZ.o" "root.rz";
connectAttr "joint1_scaleX.o" "body1.sx";
connectAttr "joint1_scaleY.o" "body1.sy";
connectAttr "joint1_scaleZ.o" "body1.sz";
connectAttr "root.s" "body1.is";
connectAttr "joint1_rotateX.o" "body1.rx";
connectAttr "joint1_rotateY.o" "body1.ry";
connectAttr "joint1_rotateZ.o" "body1.rz";
connectAttr "joint1_visibility.o" "body1.v";
connectAttr "joint1_translateX.o" "body1.tx";
connectAttr "joint1_translateY.o" "body1.ty";
connectAttr "joint1_translateZ.o" "body1.tz";
connectAttr "body1.s" "|root|body1|head.is";
connectAttr "joint2_scaleX.o" "|root|body1|head.sx";
connectAttr "joint2_scaleY.o" "|root|body1|head.sy";
connectAttr "joint2_scaleZ.o" "|root|body1|head.sz";
connectAttr "joint2_rotateX.o" "|root|body1|head.rx";
connectAttr "joint2_rotateY.o" "|root|body1|head.ry";
connectAttr "joint2_rotateZ.o" "|root|body1|head.rz";
connectAttr "joint2_visibility.o" "|root|body1|head.v";
connectAttr "joint2_translateX.o" "|root|body1|head.tx";
connectAttr "joint2_translateY.o" "|root|body1|head.ty";
connectAttr "joint2_translateZ.o" "|root|body1|head.tz";
connectAttr "|root|body1|head.s" "joint3.is";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "handLeft_scaleX.o" "|root|body1|armLeft.sx";
connectAttr "handLeft_scaleY.o" "|root|body1|armLeft.sy";
connectAttr "handLeft_scaleZ.o" "|root|body1|armLeft.sz";
connectAttr "body1.s" "|root|body1|armLeft.is";
connectAttr "handLeft_rotateX.o" "|root|body1|armLeft.rx";
connectAttr "handLeft_rotateY.o" "|root|body1|armLeft.ry";
connectAttr "handLeft_rotateZ.o" "|root|body1|armLeft.rz";
connectAttr "handLeft_visibility.o" "|root|body1|armLeft.v";
connectAttr "handLeft_translateX.o" "|root|body1|armLeft.tx";
connectAttr "handLeft_translateY.o" "|root|body1|armLeft.ty";
connectAttr "handLeft_translateZ.o" "|root|body1|armLeft.tz";
connectAttr "|root|body1|armLeft.s" "handLeft.is";
connectAttr "joint7_rotateX.o" "handLeft.rx";
connectAttr "joint7_rotateY.o" "handLeft.ry";
connectAttr "joint7_rotateZ.o" "handLeft.rz";
connectAttr "joint7_visibility.o" "handLeft.v";
connectAttr "joint7_translateX.o" "handLeft.tx";
connectAttr "joint7_translateY.o" "handLeft.ty";
connectAttr "joint7_translateZ.o" "handLeft.tz";
connectAttr "joint7_scaleX.o" "handLeft.sx";
connectAttr "joint7_scaleY.o" "handLeft.sy";
connectAttr "joint7_scaleZ.o" "handLeft.sz";
connectAttr "handLeft.s" "|root|body1|armLeft|handLeft|joint9.is";
connectAttr "joint9_translateX.o" "|root|body1|armLeft|handLeft|joint9.tx";
connectAttr "joint9_translateY.o" "|root|body1|armLeft|handLeft|joint9.ty";
connectAttr "joint9_translateZ.o" "|root|body1|armLeft|handLeft|joint9.tz";
connectAttr "joint9_visibility.o" "|root|body1|armLeft|handLeft|joint9.v";
connectAttr "joint9_rotateX.o" "|root|body1|armLeft|handLeft|joint9.rx";
connectAttr "joint9_rotateY.o" "|root|body1|armLeft|handLeft|joint9.ry";
connectAttr "joint9_rotateZ.o" "|root|body1|armLeft|handLeft|joint9.rz";
connectAttr "joint9_scaleX.o" "|root|body1|armLeft|handLeft|joint9.sx";
connectAttr "joint9_scaleY.o" "|root|body1|armLeft|handLeft|joint9.sy";
connectAttr "joint9_scaleZ.o" "|root|body1|armLeft|handLeft|joint9.sz";
connectAttr "armRight_scaleX.o" "|root|body1|armRight.sx";
connectAttr "armRight_scaleY.o" "|root|body1|armRight.sy";
connectAttr "armRight_scaleZ.o" "|root|body1|armRight.sz";
connectAttr "body1.s" "|root|body1|armRight.is";
connectAttr "armRight_rotateX.o" "|root|body1|armRight.rx";
connectAttr "armRight_rotateY.o" "|root|body1|armRight.ry";
connectAttr "armRight_rotateZ.o" "|root|body1|armRight.rz";
connectAttr "armRight_visibility.o" "|root|body1|armRight.v";
connectAttr "armRight_translateX.o" "|root|body1|armRight.tx";
connectAttr "armRight_translateY.o" "|root|body1|armRight.ty";
connectAttr "armRight_translateZ.o" "|root|body1|armRight.tz";
connectAttr "|root|body1|armRight.s" "handRight.is";
connectAttr "handRight_rotateX.o" "handRight.rx";
connectAttr "handRight_rotateY.o" "handRight.ry";
connectAttr "handRight_rotateZ.o" "handRight.rz";
connectAttr "handRight_visibility.o" "handRight.v";
connectAttr "handRight_translateX.o" "handRight.tx";
connectAttr "handRight_translateY.o" "handRight.ty";
connectAttr "handRight_translateZ.o" "handRight.tz";
connectAttr "handRight_scaleX.o" "handRight.sx";
connectAttr "handRight_scaleY.o" "handRight.sy";
connectAttr "handRight_scaleZ.o" "handRight.sz";
connectAttr "handRight.s" "|root|body1|armRight|handRight|joint9.is";
connectAttr "joint9_translateX1.o" "|root|body1|armRight|handRight|joint9.tx";
connectAttr "joint9_translateY1.o" "|root|body1|armRight|handRight|joint9.ty";
connectAttr "joint9_translateZ1.o" "|root|body1|armRight|handRight|joint9.tz";
connectAttr "joint9_visibility1.o" "|root|body1|armRight|handRight|joint9.v";
connectAttr "joint9_rotateX1.o" "|root|body1|armRight|handRight|joint9.rx";
connectAttr "joint9_rotateY1.o" "|root|body1|armRight|handRight|joint9.ry";
connectAttr "joint9_rotateZ1.o" "|root|body1|armRight|handRight|joint9.rz";
connectAttr "joint9_scaleX1.o" "|root|body1|armRight|handRight|joint9.sx";
connectAttr "joint9_scaleY1.o" "|root|body1|armRight|handRight|joint9.sy";
connectAttr "joint9_scaleZ1.o" "|root|body1|armRight|handRight|joint9.sz";
connectAttr "legLeft_rotateX.o" "|root|legLeft.rx";
connectAttr "legLeft_rotateY.o" "|root|legLeft.ry";
connectAttr "legLeft_rotateZ.o" "|root|legLeft.rz";
connectAttr "legLeft_scaleX.o" "|root|legLeft.sx";
connectAttr "legLeft_scaleY.o" "|root|legLeft.sy";
connectAttr "legLeft_scaleZ.o" "|root|legLeft.sz";
connectAttr "root.s" "|root|legLeft.is";
connectAttr "legLeft_visibility.o" "|root|legLeft.v";
connectAttr "legLeft_translateX.o" "|root|legLeft.tx";
connectAttr "legLeft_translateY.o" "|root|legLeft.ty";
connectAttr "legLeft_translateZ.o" "|root|legLeft.tz";
connectAttr "|root|legLeft.s" "|root|legLeft|joint5.is";
connectAttr "joint5_scaleX.o" "|root|legLeft|joint5.sx";
connectAttr "joint5_scaleY.o" "|root|legLeft|joint5.sy";
connectAttr "joint5_scaleZ.o" "|root|legLeft|joint5.sz";
connectAttr "joint5_rotateX.o" "|root|legLeft|joint5.rx";
connectAttr "joint5_rotateY.o" "|root|legLeft|joint5.ry";
connectAttr "joint5_rotateZ.o" "|root|legLeft|joint5.rz";
connectAttr "joint5_visibility.o" "|root|legLeft|joint5.v";
connectAttr "joint5_translateX.o" "|root|legLeft|joint5.tx";
connectAttr "joint5_translateY.o" "|root|legLeft|joint5.ty";
connectAttr "joint5_translateZ.o" "|root|legLeft|joint5.tz";
connectAttr "legRight_scaleX.o" "|root|legRight.sx";
connectAttr "legRight_scaleY.o" "|root|legRight.sy";
connectAttr "legRight_scaleZ.o" "|root|legRight.sz";
connectAttr "root.s" "|root|legRight.is";
connectAttr "legRight_rotateX.o" "|root|legRight.rx";
connectAttr "legRight_rotateY.o" "|root|legRight.ry";
connectAttr "legRight_rotateZ.o" "|root|legRight.rz";
connectAttr "legRight_visibility.o" "|root|legRight.v";
connectAttr "legRight_translateX.o" "|root|legRight.tx";
connectAttr "legRight_translateY.o" "|root|legRight.ty";
connectAttr "legRight_translateZ.o" "|root|legRight.tz";
connectAttr "lock.di" "|root|legRight.do";
connectAttr "|root|legRight.s" "|root|legRight|joint5.is";
connectAttr "joint5_scaleX1.o" "|root|legRight|joint5.sx";
connectAttr "joint5_scaleY1.o" "|root|legRight|joint5.sy";
connectAttr "joint5_scaleZ1.o" "|root|legRight|joint5.sz";
connectAttr "joint5_rotateX1.o" "|root|legRight|joint5.rx";
connectAttr "joint5_rotateY1.o" "|root|legRight|joint5.ry";
connectAttr "joint5_rotateZ1.o" "|root|legRight|joint5.rz";
connectAttr "joint5_visibility1.o" "|root|legRight|joint5.v";
connectAttr "joint5_translateX1.o" "|root|legRight|joint5.tx";
connectAttr "joint5_translateY1.o" "|root|legRight|joint5.ty";
connectAttr "joint5_translateZ1.o" "|root|legRight|joint5.tz";
connectAttr "gHead_parentConstraint1.ctx" "gHead.tx";
connectAttr "gHead_parentConstraint1.cty" "gHead.ty";
connectAttr "gHead_parentConstraint1.ctz" "gHead.tz";
connectAttr "gHead_parentConstraint1.crx" "gHead.rx";
connectAttr "gHead_parentConstraint1.cry" "gHead.ry";
connectAttr "gHead_parentConstraint1.crz" "gHead.rz";
connectAttr "lock.di" "|mesh|gHead|head.do";
connectAttr "hide.di" "earSquare.do";
connectAttr "hide.di" "earPike.do";
connectAttr "gHead.ro" "gHead_parentConstraint1.cro";
connectAttr "gHead.pim" "gHead_parentConstraint1.cpim";
connectAttr "gHead.rp" "gHead_parentConstraint1.crp";
connectAttr "gHead.rpt" "gHead_parentConstraint1.crt";
connectAttr "|root|body1|head.t" "gHead_parentConstraint1.tg[0].tt";
connectAttr "|root|body1|head.rp" "gHead_parentConstraint1.tg[0].trp";
connectAttr "|root|body1|head.rpt" "gHead_parentConstraint1.tg[0].trt";
connectAttr "|root|body1|head.r" "gHead_parentConstraint1.tg[0].tr";
connectAttr "|root|body1|head.ro" "gHead_parentConstraint1.tg[0].tro";
connectAttr "|root|body1|head.s" "gHead_parentConstraint1.tg[0].ts";
connectAttr "|root|body1|head.pm" "gHead_parentConstraint1.tg[0].tpm";
connectAttr "|root|body1|head.jo" "gHead_parentConstraint1.tg[0].tjo";
connectAttr "gHead_parentConstraint1.w0" "gHead_parentConstraint1.tg[0].tw";
connectAttr "hide.di" "beak.do";
connectAttr "defaultLayer.di" "mask.do";
connectAttr "hide.di" "gHat.do";
connectAttr "defaultLayer.di" "hat4.do";
connectAttr "hide.di" "hat1.do";
connectAttr "hide.di" "hat2.do";
connectAttr "defaultLayer.di" "hat3.do";
connectAttr "hide.di" "ponyTail.do";
connectAttr "hide.di" "meshHat.do";
connectAttr "hide.di" "ribbon.do";
connectAttr "defaultLayer.di" "meshShepherd.do";
connectAttr "hide.di" "emCone.do";
connectAttr "polyTweakUV3.out" "emConeShape.i";
connectAttr "polyTweakUV3.uvtk[0]" "emConeShape.uvst[0].uvtw";
connectAttr "defaultLayer.di" "emGetta.do";
connectAttr "polyTweakUV2.out" "emGettaShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "emGettaShape.uvst[0].uvtw";
connectAttr "hide.di" "emPyramid.do";
connectAttr "polyTweakUV1.out" "emPyramidShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "emPyramidShape.uvst[0].uvtw";
connectAttr "defaultLayer.di" "gWeapon.do";
connectAttr "gWeapon_parentConstraint1.ctx" "gWeapon.tx";
connectAttr "gWeapon_parentConstraint1.cty" "gWeapon.ty";
connectAttr "gWeapon_parentConstraint1.ctz" "gWeapon.tz";
connectAttr "gWeapon_parentConstraint1.crx" "gWeapon.rx";
connectAttr "gWeapon_parentConstraint1.cry" "gWeapon.ry";
connectAttr "gWeapon_parentConstraint1.crz" "gWeapon.rz";
connectAttr "defaultLayer.di" "wCrossbow.do";
connectAttr "gWeapon.ro" "gWeapon_parentConstraint1.cro";
connectAttr "gWeapon.pim" "gWeapon_parentConstraint1.cpim";
connectAttr "gWeapon.rp" "gWeapon_parentConstraint1.crp";
connectAttr "gWeapon.rpt" "gWeapon_parentConstraint1.crt";
connectAttr "|root|body1|armRight|handRight|joint9.t" "gWeapon_parentConstraint1.tg[0].tt"
		;
connectAttr "|root|body1|armRight|handRight|joint9.rp" "gWeapon_parentConstraint1.tg[0].trp"
		;
connectAttr "|root|body1|armRight|handRight|joint9.rpt" "gWeapon_parentConstraint1.tg[0].trt"
		;
connectAttr "|root|body1|armRight|handRight|joint9.r" "gWeapon_parentConstraint1.tg[0].tr"
		;
connectAttr "|root|body1|armRight|handRight|joint9.ro" "gWeapon_parentConstraint1.tg[0].tro"
		;
connectAttr "|root|body1|armRight|handRight|joint9.s" "gWeapon_parentConstraint1.tg[0].ts"
		;
connectAttr "|root|body1|armRight|handRight|joint9.pm" "gWeapon_parentConstraint1.tg[0].tpm"
		;
connectAttr "|root|body1|armRight|handRight|joint9.jo" "gWeapon_parentConstraint1.tg[0].tjo"
		;
connectAttr "gWeapon_parentConstraint1.w0" "gWeapon_parentConstraint1.tg[0].tw";
connectAttr "gSubWeapon_parentConstraint1.ctx" "gSubWeapon.tx";
connectAttr "gSubWeapon_parentConstraint1.cty" "gSubWeapon.ty";
connectAttr "gSubWeapon_parentConstraint1.ctz" "gSubWeapon.tz";
connectAttr "gSubWeapon_parentConstraint1.crx" "gSubWeapon.rx";
connectAttr "gSubWeapon_parentConstraint1.cry" "gSubWeapon.ry";
connectAttr "gSubWeapon_parentConstraint1.crz" "gSubWeapon.rz";
connectAttr "hide.di" "pCylinder1.do";
connectAttr "hide.di" "shield1.do";
connectAttr "gSubWeapon.ro" "gSubWeapon_parentConstraint1.cro";
connectAttr "gSubWeapon.pim" "gSubWeapon_parentConstraint1.cpim";
connectAttr "gSubWeapon.rp" "gSubWeapon_parentConstraint1.crp";
connectAttr "gSubWeapon.rpt" "gSubWeapon_parentConstraint1.crt";
connectAttr "|root|body1|armLeft|handLeft|joint9.t" "gSubWeapon_parentConstraint1.tg[0].tt"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.rp" "gSubWeapon_parentConstraint1.tg[0].trp"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.rpt" "gSubWeapon_parentConstraint1.tg[0].trt"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.r" "gSubWeapon_parentConstraint1.tg[0].tr"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.ro" "gSubWeapon_parentConstraint1.tg[0].tro"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.s" "gSubWeapon_parentConstraint1.tg[0].ts"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.pm" "gSubWeapon_parentConstraint1.tg[0].tpm"
		;
connectAttr "|root|body1|armLeft|handLeft|joint9.jo" "gSubWeapon_parentConstraint1.tg[0].tjo"
		;
connectAttr "gSubWeapon_parentConstraint1.w0" "gSubWeapon_parentConstraint1.tg[0].tw"
		;
connectAttr "gBody_parentConstraint1.ctx" "gBody.tx";
connectAttr "gBody_parentConstraint1.cty" "gBody.ty";
connectAttr "gBody_parentConstraint1.ctz" "gBody.tz";
connectAttr "gBody_parentConstraint1.crx" "gBody.rx";
connectAttr "gBody_parentConstraint1.cry" "gBody.ry";
connectAttr "gBody_parentConstraint1.crz" "gBody.rz";
connectAttr "lock.di" "meshBody.do";
connectAttr "gBody.ro" "gBody_parentConstraint1.cro";
connectAttr "gBody.pim" "gBody_parentConstraint1.cpim";
connectAttr "gBody.rp" "gBody_parentConstraint1.crp";
connectAttr "gBody.rpt" "gBody_parentConstraint1.crt";
connectAttr "body1.t" "gBody_parentConstraint1.tg[0].tt";
connectAttr "body1.rp" "gBody_parentConstraint1.tg[0].trp";
connectAttr "body1.rpt" "gBody_parentConstraint1.tg[0].trt";
connectAttr "body1.r" "gBody_parentConstraint1.tg[0].tr";
connectAttr "body1.ro" "gBody_parentConstraint1.tg[0].tro";
connectAttr "body1.s" "gBody_parentConstraint1.tg[0].ts";
connectAttr "body1.pm" "gBody_parentConstraint1.tg[0].tpm";
connectAttr "body1.jo" "gBody_parentConstraint1.tg[0].tjo";
connectAttr "gBody_parentConstraint1.w0" "gBody_parentConstraint1.tg[0].tw";
connectAttr "gRightArm_parentConstraint1.ctx" "gArmRight.tx";
connectAttr "gRightArm_parentConstraint1.cty" "gArmRight.ty";
connectAttr "gRightArm_parentConstraint1.ctz" "gArmRight.tz";
connectAttr "gRightArm_parentConstraint1.crx" "gArmRight.rx";
connectAttr "gRightArm_parentConstraint1.cry" "gArmRight.ry";
connectAttr "gRightArm_parentConstraint1.crz" "gArmRight.rz";
connectAttr "lock.di" "|mesh|gArmRight|armRight.do";
connectAttr "gArmRight.ro" "gRightArm_parentConstraint1.cro";
connectAttr "gArmRight.pim" "gRightArm_parentConstraint1.cpim";
connectAttr "gArmRight.rp" "gRightArm_parentConstraint1.crp";
connectAttr "gArmRight.rpt" "gRightArm_parentConstraint1.crt";
connectAttr "|root|body1|armRight.t" "gRightArm_parentConstraint1.tg[0].tt";
connectAttr "|root|body1|armRight.rp" "gRightArm_parentConstraint1.tg[0].trp";
connectAttr "|root|body1|armRight.rpt" "gRightArm_parentConstraint1.tg[0].trt";
connectAttr "|root|body1|armRight.r" "gRightArm_parentConstraint1.tg[0].tr";
connectAttr "|root|body1|armRight.ro" "gRightArm_parentConstraint1.tg[0].tro";
connectAttr "|root|body1|armRight.s" "gRightArm_parentConstraint1.tg[0].ts";
connectAttr "|root|body1|armRight.pm" "gRightArm_parentConstraint1.tg[0].tpm";
connectAttr "|root|body1|armRight.jo" "gRightArm_parentConstraint1.tg[0].tjo";
connectAttr "gRightArm_parentConstraint1.w0" "gRightArm_parentConstraint1.tg[0].tw"
		;
connectAttr "gArmLeft_parentConstraint1.ctx" "gArmLeft.tx";
connectAttr "gArmLeft_parentConstraint1.cty" "gArmLeft.ty";
connectAttr "gArmLeft_parentConstraint1.ctz" "gArmLeft.tz";
connectAttr "gArmLeft_parentConstraint1.crx" "gArmLeft.rx";
connectAttr "gArmLeft_parentConstraint1.cry" "gArmLeft.ry";
connectAttr "gArmLeft_parentConstraint1.crz" "gArmLeft.rz";
connectAttr "lock.di" "|mesh|gArmLeft|armLeft.do";
connectAttr "gArmLeft.ro" "gArmLeft_parentConstraint1.cro";
connectAttr "gArmLeft.pim" "gArmLeft_parentConstraint1.cpim";
connectAttr "gArmLeft.rp" "gArmLeft_parentConstraint1.crp";
connectAttr "gArmLeft.rpt" "gArmLeft_parentConstraint1.crt";
connectAttr "|root|body1|armLeft.t" "gArmLeft_parentConstraint1.tg[0].tt";
connectAttr "|root|body1|armLeft.rp" "gArmLeft_parentConstraint1.tg[0].trp";
connectAttr "|root|body1|armLeft.rpt" "gArmLeft_parentConstraint1.tg[0].trt";
connectAttr "|root|body1|armLeft.r" "gArmLeft_parentConstraint1.tg[0].tr";
connectAttr "|root|body1|armLeft.ro" "gArmLeft_parentConstraint1.tg[0].tro";
connectAttr "|root|body1|armLeft.s" "gArmLeft_parentConstraint1.tg[0].ts";
connectAttr "|root|body1|armLeft.pm" "gArmLeft_parentConstraint1.tg[0].tpm";
connectAttr "|root|body1|armLeft.jo" "gArmLeft_parentConstraint1.tg[0].tjo";
connectAttr "gArmLeft_parentConstraint1.w0" "gArmLeft_parentConstraint1.tg[0].tw"
		;
connectAttr "gLegRight_parentConstraint1.ctx" "gLegRight.tx";
connectAttr "gLegRight_parentConstraint1.cty" "gLegRight.ty";
connectAttr "gLegRight_parentConstraint1.ctz" "gLegRight.tz";
connectAttr "gLegRight_parentConstraint1.crx" "gLegRight.rx";
connectAttr "gLegRight_parentConstraint1.cry" "gLegRight.ry";
connectAttr "gLegRight_parentConstraint1.crz" "gLegRight.rz";
connectAttr "lock.di" "|mesh|gLegRight|legRight.do";
connectAttr "gLegRight.ro" "gLegRight_parentConstraint1.cro";
connectAttr "gLegRight.pim" "gLegRight_parentConstraint1.cpim";
connectAttr "gLegRight.rp" "gLegRight_parentConstraint1.crp";
connectAttr "gLegRight.rpt" "gLegRight_parentConstraint1.crt";
connectAttr "|root|legRight.t" "gLegRight_parentConstraint1.tg[0].tt";
connectAttr "|root|legRight.rp" "gLegRight_parentConstraint1.tg[0].trp";
connectAttr "|root|legRight.rpt" "gLegRight_parentConstraint1.tg[0].trt";
connectAttr "|root|legRight.r" "gLegRight_parentConstraint1.tg[0].tr";
connectAttr "|root|legRight.ro" "gLegRight_parentConstraint1.tg[0].tro";
connectAttr "|root|legRight.s" "gLegRight_parentConstraint1.tg[0].ts";
connectAttr "|root|legRight.pm" "gLegRight_parentConstraint1.tg[0].tpm";
connectAttr "|root|legRight.jo" "gLegRight_parentConstraint1.tg[0].tjo";
connectAttr "gLegRight_parentConstraint1.w0" "gLegRight_parentConstraint1.tg[0].tw"
		;
connectAttr "gLegLeft_parentConstraint1.ctx" "gLegLeft.tx";
connectAttr "gLegLeft_parentConstraint1.cty" "gLegLeft.ty";
connectAttr "gLegLeft_parentConstraint1.ctz" "gLegLeft.tz";
connectAttr "gLegLeft_parentConstraint1.crx" "gLegLeft.rx";
connectAttr "gLegLeft_parentConstraint1.cry" "gLegLeft.ry";
connectAttr "gLegLeft_parentConstraint1.crz" "gLegLeft.rz";
connectAttr "lock.di" "|mesh|gLegLeft|legLeft.do";
connectAttr "gLegLeft.ro" "gLegLeft_parentConstraint1.cro";
connectAttr "gLegLeft.pim" "gLegLeft_parentConstraint1.cpim";
connectAttr "gLegLeft.rp" "gLegLeft_parentConstraint1.crp";
connectAttr "gLegLeft.rpt" "gLegLeft_parentConstraint1.crt";
connectAttr "|root|legLeft.t" "gLegLeft_parentConstraint1.tg[0].tt";
connectAttr "|root|legLeft.rp" "gLegLeft_parentConstraint1.tg[0].trp";
connectAttr "|root|legLeft.rpt" "gLegLeft_parentConstraint1.tg[0].trt";
connectAttr "|root|legLeft.r" "gLegLeft_parentConstraint1.tg[0].tr";
connectAttr "|root|legLeft.ro" "gLegLeft_parentConstraint1.tg[0].tro";
connectAttr "|root|legLeft.s" "gLegLeft_parentConstraint1.tg[0].ts";
connectAttr "|root|legLeft.pm" "gLegLeft_parentConstraint1.tg[0].tpm";
connectAttr "|root|legLeft.jo" "gLegLeft_parentConstraint1.tg[0].tjo";
connectAttr "gLegLeft_parentConstraint1.w0" "gLegLeft_parentConstraint1.tg[0].tw"
		;
connectAttr "hide.di" "pCube1.do";
connectAttr "defaultLayer.di" "pCube2.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "armSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shieldSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "body2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:bodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:armSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "horse:shieldSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "allinoneSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "armSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shieldSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "body2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:bodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:armSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "horse:shieldSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "allinoneSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.o" "cloth1.uv";
connectAttr "place2dTexture3.ofs" "cloth1.fs";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "place2dTexture4.c" "file3.c";
connectAttr "place2dTexture4.tf" "file3.tf";
connectAttr "place2dTexture4.rf" "file3.rf";
connectAttr "place2dTexture4.mu" "file3.mu";
connectAttr "place2dTexture4.mv" "file3.mv";
connectAttr "place2dTexture4.s" "file3.s";
connectAttr "place2dTexture4.wu" "file3.wu";
connectAttr "place2dTexture4.wv" "file3.wv";
connectAttr "place2dTexture4.re" "file3.re";
connectAttr "place2dTexture4.of" "file3.of";
connectAttr "place2dTexture4.r" "file3.ro";
connectAttr "place2dTexture4.n" "file3.n";
connectAttr "place2dTexture4.vt1" "file3.vt1";
connectAttr "place2dTexture4.vt2" "file3.vt2";
connectAttr "place2dTexture4.vt3" "file3.vt3";
connectAttr "place2dTexture4.vc1" "file3.vc1";
connectAttr "place2dTexture4.o" "file3.uv";
connectAttr "place2dTexture4.ofs" "file3.fs";
connectAttr "place2dTexture5.c" "file4.c";
connectAttr "place2dTexture5.tf" "file4.tf";
connectAttr "place2dTexture5.rf" "file4.rf";
connectAttr "place2dTexture5.mu" "file4.mu";
connectAttr "place2dTexture5.mv" "file4.mv";
connectAttr "place2dTexture5.s" "file4.s";
connectAttr "place2dTexture5.wu" "file4.wu";
connectAttr "place2dTexture5.wv" "file4.wv";
connectAttr "place2dTexture5.re" "file4.re";
connectAttr "place2dTexture5.of" "file4.of";
connectAttr "place2dTexture5.r" "file4.ro";
connectAttr "place2dTexture5.n" "file4.n";
connectAttr "place2dTexture5.vt1" "file4.vt1";
connectAttr "place2dTexture5.vt2" "file4.vt2";
connectAttr "place2dTexture5.vt3" "file4.vt3";
connectAttr "place2dTexture5.vc1" "file4.vc1";
connectAttr "place2dTexture5.o" "file4.uv";
connectAttr "place2dTexture5.ofs" "file4.fs";
connectAttr "expression1.out[0]" "file4.fe";
connectAttr "bodySG.msg" "materialInfo5.sg";
connectAttr "place2dTexture6.c" "file5.c";
connectAttr "place2dTexture6.tf" "file5.tf";
connectAttr "place2dTexture6.rf" "file5.rf";
connectAttr "place2dTexture6.mu" "file5.mu";
connectAttr "place2dTexture6.mv" "file5.mv";
connectAttr "place2dTexture6.s" "file5.s";
connectAttr "place2dTexture6.wu" "file5.wu";
connectAttr "place2dTexture6.wv" "file5.wv";
connectAttr "place2dTexture6.re" "file5.re";
connectAttr "place2dTexture6.of" "file5.of";
connectAttr "place2dTexture6.r" "file5.ro";
connectAttr "place2dTexture6.n" "file5.n";
connectAttr "place2dTexture6.vt1" "file5.vt1";
connectAttr "place2dTexture6.vt2" "file5.vt2";
connectAttr "place2dTexture6.vt3" "file5.vt3";
connectAttr "place2dTexture6.vc1" "file5.vc1";
connectAttr "place2dTexture6.o" "file5.uv";
connectAttr "place2dTexture6.ofs" "file5.fs";
connectAttr "armSG.msg" "materialInfo6.sg";
connectAttr "place2dTexture7.c" "file6.c";
connectAttr "place2dTexture7.tf" "file6.tf";
connectAttr "place2dTexture7.rf" "file6.rf";
connectAttr "place2dTexture7.mu" "file6.mu";
connectAttr "place2dTexture7.mv" "file6.mv";
connectAttr "place2dTexture7.s" "file6.s";
connectAttr "place2dTexture7.wu" "file6.wu";
connectAttr "place2dTexture7.wv" "file6.wv";
connectAttr "place2dTexture7.re" "file6.re";
connectAttr "place2dTexture7.of" "file6.of";
connectAttr "place2dTexture7.r" "file6.ro";
connectAttr "place2dTexture7.n" "file6.n";
connectAttr "place2dTexture7.vt1" "file6.vt1";
connectAttr "place2dTexture7.vt2" "file6.vt2";
connectAttr "place2dTexture7.vt3" "file6.vt3";
connectAttr "place2dTexture7.vc1" "file6.vc1";
connectAttr "place2dTexture7.o" "file6.uv";
connectAttr "place2dTexture7.ofs" "file6.fs";
connectAttr "shieldSG.msg" "materialInfo7.sg";
connectAttr ":time1.o" "expression1.tim";
connectAttr "place2dTexture8.c" "file7.c";
connectAttr "place2dTexture8.tf" "file7.tf";
connectAttr "place2dTexture8.rf" "file7.rf";
connectAttr "place2dTexture8.mu" "file7.mu";
connectAttr "place2dTexture8.mv" "file7.mv";
connectAttr "place2dTexture8.s" "file7.s";
connectAttr "place2dTexture8.wu" "file7.wu";
connectAttr "place2dTexture8.wv" "file7.wv";
connectAttr "place2dTexture8.re" "file7.re";
connectAttr "place2dTexture8.of" "file7.of";
connectAttr "place2dTexture8.r" "file7.ro";
connectAttr "place2dTexture8.n" "file7.n";
connectAttr "place2dTexture8.vt1" "file7.vt1";
connectAttr "place2dTexture8.vt2" "file7.vt2";
connectAttr "place2dTexture8.vt3" "file7.vt3";
connectAttr "place2dTexture8.vc1" "file7.vc1";
connectAttr "place2dTexture8.o" "file7.uv";
connectAttr "place2dTexture8.ofs" "file7.fs";
connectAttr "body2SG.msg" "materialInfo8.sg";
connectAttr "layerManager.dli[6]" "hide.id";
connectAttr "layerManager.dli[7]" "lock.id";
connectAttr "lambert6SG.msg" "materialInfo9.sg";
connectAttr "place2dTexture9.c" "file8.c";
connectAttr "place2dTexture9.tf" "file8.tf";
connectAttr "place2dTexture9.rf" "file8.rf";
connectAttr "place2dTexture9.mu" "file8.mu";
connectAttr "place2dTexture9.mv" "file8.mv";
connectAttr "place2dTexture9.s" "file8.s";
connectAttr "place2dTexture9.wu" "file8.wu";
connectAttr "place2dTexture9.wv" "file8.wv";
connectAttr "place2dTexture9.re" "file8.re";
connectAttr "place2dTexture9.of" "file8.of";
connectAttr "place2dTexture9.r" "file8.ro";
connectAttr "place2dTexture9.n" "file8.n";
connectAttr "place2dTexture9.vt1" "file8.vt1";
connectAttr "place2dTexture9.vt2" "file8.vt2";
connectAttr "place2dTexture9.vt3" "file8.vt3";
connectAttr "place2dTexture9.vc1" "file8.vc1";
connectAttr "place2dTexture9.o" "file8.uv";
connectAttr "place2dTexture9.ofs" "file8.fs";
connectAttr "horse:lambert2SG.msg" "horse:materialInfo1.sg";
connectAttr "horse:place2dTexture1.c" "horse:file1.c";
connectAttr "horse:place2dTexture1.tf" "horse:file1.tf";
connectAttr "horse:place2dTexture1.rf" "horse:file1.rf";
connectAttr "horse:place2dTexture1.mu" "horse:file1.mu";
connectAttr "horse:place2dTexture1.mv" "horse:file1.mv";
connectAttr "horse:place2dTexture1.s" "horse:file1.s";
connectAttr "horse:place2dTexture1.wu" "horse:file1.wu";
connectAttr "horse:place2dTexture1.wv" "horse:file1.wv";
connectAttr "horse:place2dTexture1.re" "horse:file1.re";
connectAttr "horse:place2dTexture1.of" "horse:file1.of";
connectAttr "horse:place2dTexture1.r" "horse:file1.ro";
connectAttr "horse:place2dTexture1.n" "horse:file1.n";
connectAttr "horse:place2dTexture1.vt1" "horse:file1.vt1";
connectAttr "horse:place2dTexture1.vt2" "horse:file1.vt2";
connectAttr "horse:place2dTexture1.vt3" "horse:file1.vt3";
connectAttr "horse:place2dTexture1.vc1" "horse:file1.vc1";
connectAttr "horse:place2dTexture1.o" "horse:file1.uv";
connectAttr "horse:place2dTexture1.ofs" "horse:file1.fs";
connectAttr "horse:lambert3SG.msg" "horse:materialInfo2.sg";
connectAttr "horse:lambert4SG.msg" "horse:materialInfo3.sg";
connectAttr "horse:place2dTexture2.c" "horse:file2.c";
connectAttr "horse:place2dTexture2.tf" "horse:file2.tf";
connectAttr "horse:place2dTexture2.rf" "horse:file2.rf";
connectAttr "horse:place2dTexture2.mu" "horse:file2.mu";
connectAttr "horse:place2dTexture2.mv" "horse:file2.mv";
connectAttr "horse:place2dTexture2.s" "horse:file2.s";
connectAttr "horse:place2dTexture2.wu" "horse:file2.wu";
connectAttr "horse:place2dTexture2.wv" "horse:file2.wv";
connectAttr "horse:place2dTexture2.re" "horse:file2.re";
connectAttr "horse:place2dTexture2.of" "horse:file2.of";
connectAttr "horse:place2dTexture2.r" "horse:file2.ro";
connectAttr "horse:place2dTexture2.n" "horse:file2.n";
connectAttr "horse:place2dTexture2.vt1" "horse:file2.vt1";
connectAttr "horse:place2dTexture2.vt2" "horse:file2.vt2";
connectAttr "horse:place2dTexture2.vt3" "horse:file2.vt3";
connectAttr "horse:place2dTexture2.vc1" "horse:file2.vc1";
connectAttr "horse:place2dTexture2.o" "horse:file2.uv";
connectAttr "horse:place2dTexture2.ofs" "horse:file2.fs";
connectAttr "horse:place2dTexture3.o" "horse:cloth1.uv";
connectAttr "horse:place2dTexture3.ofs" "horse:cloth1.fs";
connectAttr "horse:lambert5SG.msg" "horse:materialInfo4.sg";
connectAttr "horse:place2dTexture4.c" "horse:file3.c";
connectAttr "horse:place2dTexture4.tf" "horse:file3.tf";
connectAttr "horse:place2dTexture4.rf" "horse:file3.rf";
connectAttr "horse:place2dTexture4.mu" "horse:file3.mu";
connectAttr "horse:place2dTexture4.mv" "horse:file3.mv";
connectAttr "horse:place2dTexture4.s" "horse:file3.s";
connectAttr "horse:place2dTexture4.wu" "horse:file3.wu";
connectAttr "horse:place2dTexture4.wv" "horse:file3.wv";
connectAttr "horse:place2dTexture4.re" "horse:file3.re";
connectAttr "horse:place2dTexture4.of" "horse:file3.of";
connectAttr "horse:place2dTexture4.r" "horse:file3.ro";
connectAttr "horse:place2dTexture4.n" "horse:file3.n";
connectAttr "horse:place2dTexture4.vt1" "horse:file3.vt1";
connectAttr "horse:place2dTexture4.vt2" "horse:file3.vt2";
connectAttr "horse:place2dTexture4.vt3" "horse:file3.vt3";
connectAttr "horse:place2dTexture4.vc1" "horse:file3.vc1";
connectAttr "horse:place2dTexture4.o" "horse:file3.uv";
connectAttr "horse:place2dTexture4.ofs" "horse:file3.fs";
connectAttr "horse:place2dTexture5.c" "horse:file4.c";
connectAttr "horse:place2dTexture5.tf" "horse:file4.tf";
connectAttr "horse:place2dTexture5.rf" "horse:file4.rf";
connectAttr "horse:place2dTexture5.mu" "horse:file4.mu";
connectAttr "horse:place2dTexture5.mv" "horse:file4.mv";
connectAttr "horse:place2dTexture5.s" "horse:file4.s";
connectAttr "horse:place2dTexture5.wu" "horse:file4.wu";
connectAttr "horse:place2dTexture5.wv" "horse:file4.wv";
connectAttr "horse:place2dTexture5.re" "horse:file4.re";
connectAttr "horse:place2dTexture5.of" "horse:file4.of";
connectAttr "horse:place2dTexture5.r" "horse:file4.ro";
connectAttr "horse:place2dTexture5.n" "horse:file4.n";
connectAttr "horse:place2dTexture5.vt1" "horse:file4.vt1";
connectAttr "horse:place2dTexture5.vt2" "horse:file4.vt2";
connectAttr "horse:place2dTexture5.vt3" "horse:file4.vt3";
connectAttr "horse:place2dTexture5.vc1" "horse:file4.vc1";
connectAttr "horse:place2dTexture5.o" "horse:file4.uv";
connectAttr "horse:place2dTexture5.ofs" "horse:file4.fs";
connectAttr "horse:bodySG.msg" "horse:materialInfo5.sg";
connectAttr "horse:place2dTexture6.c" "horse:file5.c";
connectAttr "horse:place2dTexture6.tf" "horse:file5.tf";
connectAttr "horse:place2dTexture6.rf" "horse:file5.rf";
connectAttr "horse:place2dTexture6.mu" "horse:file5.mu";
connectAttr "horse:place2dTexture6.mv" "horse:file5.mv";
connectAttr "horse:place2dTexture6.s" "horse:file5.s";
connectAttr "horse:place2dTexture6.wu" "horse:file5.wu";
connectAttr "horse:place2dTexture6.wv" "horse:file5.wv";
connectAttr "horse:place2dTexture6.re" "horse:file5.re";
connectAttr "horse:place2dTexture6.of" "horse:file5.of";
connectAttr "horse:place2dTexture6.r" "horse:file5.ro";
connectAttr "horse:place2dTexture6.n" "horse:file5.n";
connectAttr "horse:place2dTexture6.vt1" "horse:file5.vt1";
connectAttr "horse:place2dTexture6.vt2" "horse:file5.vt2";
connectAttr "horse:place2dTexture6.vt3" "horse:file5.vt3";
connectAttr "horse:place2dTexture6.vc1" "horse:file5.vc1";
connectAttr "horse:place2dTexture6.o" "horse:file5.uv";
connectAttr "horse:place2dTexture6.ofs" "horse:file5.fs";
connectAttr "horse:armSG.msg" "horse:materialInfo6.sg";
connectAttr "horse:place2dTexture7.c" "horse:file6.c";
connectAttr "horse:place2dTexture7.tf" "horse:file6.tf";
connectAttr "horse:place2dTexture7.rf" "horse:file6.rf";
connectAttr "horse:place2dTexture7.mu" "horse:file6.mu";
connectAttr "horse:place2dTexture7.mv" "horse:file6.mv";
connectAttr "horse:place2dTexture7.s" "horse:file6.s";
connectAttr "horse:place2dTexture7.wu" "horse:file6.wu";
connectAttr "horse:place2dTexture7.wv" "horse:file6.wv";
connectAttr "horse:place2dTexture7.re" "horse:file6.re";
connectAttr "horse:place2dTexture7.of" "horse:file6.of";
connectAttr "horse:place2dTexture7.r" "horse:file6.ro";
connectAttr "horse:place2dTexture7.n" "horse:file6.n";
connectAttr "horse:place2dTexture7.vt1" "horse:file6.vt1";
connectAttr "horse:place2dTexture7.vt2" "horse:file6.vt2";
connectAttr "horse:place2dTexture7.vt3" "horse:file6.vt3";
connectAttr "horse:place2dTexture7.vc1" "horse:file6.vc1";
connectAttr "horse:place2dTexture7.o" "horse:file6.uv";
connectAttr "horse:place2dTexture7.ofs" "horse:file6.fs";
connectAttr "horse:shieldSG.msg" "horse:materialInfo7.sg";
connectAttr ":time1.o" "horse:nucleus1.cti";
connectAttr ":time1.o" "horse:nucleus2.cti";
connectAttr "place2dTexture10.c" "file9.c";
connectAttr "place2dTexture10.tf" "file9.tf";
connectAttr "place2dTexture10.rf" "file9.rf";
connectAttr "place2dTexture10.mu" "file9.mu";
connectAttr "place2dTexture10.mv" "file9.mv";
connectAttr "place2dTexture10.s" "file9.s";
connectAttr "place2dTexture10.wu" "file9.wu";
connectAttr "place2dTexture10.wv" "file9.wv";
connectAttr "place2dTexture10.re" "file9.re";
connectAttr "place2dTexture10.of" "file9.of";
connectAttr "place2dTexture10.r" "file9.ro";
connectAttr "place2dTexture10.n" "file9.n";
connectAttr "place2dTexture10.vt1" "file9.vt1";
connectAttr "place2dTexture10.vt2" "file9.vt2";
connectAttr "place2dTexture10.vt3" "file9.vt3";
connectAttr "place2dTexture10.vc1" "file9.vc1";
connectAttr "place2dTexture10.o" "file9.uv";
connectAttr "place2dTexture10.ofs" "file9.fs";
connectAttr "allinoneSG.msg" "materialInfo10.sg";
connectAttr "place2dTexture11.c" "file10.c";
connectAttr "place2dTexture11.tf" "file10.tf";
connectAttr "place2dTexture11.rf" "file10.rf";
connectAttr "place2dTexture11.mu" "file10.mu";
connectAttr "place2dTexture11.mv" "file10.mv";
connectAttr "place2dTexture11.s" "file10.s";
connectAttr "place2dTexture11.wu" "file10.wu";
connectAttr "place2dTexture11.wv" "file10.wv";
connectAttr "place2dTexture11.re" "file10.re";
connectAttr "place2dTexture11.of" "file10.of";
connectAttr "place2dTexture11.r" "file10.ro";
connectAttr "place2dTexture11.n" "file10.n";
connectAttr "place2dTexture11.vt1" "file10.vt1";
connectAttr "place2dTexture11.vt2" "file10.vt2";
connectAttr "place2dTexture11.vt3" "file10.vt3";
connectAttr "place2dTexture11.vc1" "file10.vc1";
connectAttr "place2dTexture11.o" "file10.uv";
connectAttr "place2dTexture11.ofs" "file10.fs";
connectAttr "file11.oc" "allinone.c";
connectAttr "allinone.oc" "lambert7SG.ss";
connectAttr "pCubeShape2.iog" "lambert7SG.dsm" -na;
connectAttr "pCubeShape1.iog" "lambert7SG.dsm" -na;
connectAttr "legLeftShape.iog" "lambert7SG.dsm" -na;
connectAttr "legRightShape.iog" "lambert7SG.dsm" -na;
connectAttr "armLeftShape.iog" "lambert7SG.dsm" -na;
connectAttr "armRightShape.iog" "lambert7SG.dsm" -na;
connectAttr "meshBodyShape.iog" "lambert7SG.dsm" -na;
connectAttr "shieldShape1.iog" "lambert7SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "lambert7SG.dsm" -na;
connectAttr "hWandShape.iog" "lambert7SG.dsm" -na;
connectAttr "hHandsShape.iog" "lambert7SG.dsm" -na;
connectAttr "hSpearShape.iog" "lambert7SG.dsm" -na;
connectAttr "hShortShape.iog" "lambert7SG.dsm" -na;
connectAttr "wRapierShape.iog" "lambert7SG.dsm" -na;
connectAttr "wMaceShape.iog" "lambert7SG.dsm" -na;
connectAttr "wGreatSwordShape.iog" "lambert7SG.dsm" -na;
connectAttr "wAxeShape.iog" "lambert7SG.dsm" -na;
connectAttr "wLanceShape.iog" "lambert7SG.dsm" -na;
connectAttr "wHookShape.iog" "lambert7SG.dsm" -na;
connectAttr "wEdgeShape.iog" "lambert7SG.dsm" -na;
connectAttr "wSwordShape.iog" "lambert7SG.dsm" -na;
connectAttr "wCrossbowShape.iog" "lambert7SG.dsm" -na;
connectAttr "meshShepherdShape.iog" "lambert7SG.dsm" -na;
connectAttr "ribbonShape.iog" "lambert7SG.dsm" -na;
connectAttr "meshHatShape.iog" "lambert7SG.dsm" -na;
connectAttr "outputCloth2.iog" "lambert7SG.dsm" -na;
connectAttr "hatShape3.iog" "lambert7SG.dsm" -na;
connectAttr "hatShape2.iog" "lambert7SG.dsm" -na;
connectAttr "hatShape1.iog" "lambert7SG.dsm" -na;
connectAttr "hat4Shape.iog" "lambert7SG.dsm" -na;
connectAttr "glassesShape.iog" "lambert7SG.dsm" -na;
connectAttr "eyemaskShape.iog" "lambert7SG.dsm" -na;
connectAttr "maskShape.iog" "lambert7SG.dsm" -na;
connectAttr "beakShape.iog" "lambert7SG.dsm" -na;
connectAttr "earPikeShape.iog" "lambert7SG.dsm" -na;
connectAttr "earSquareShape.iog" "lambert7SG.dsm" -na;
connectAttr "headShape.iog" "lambert7SG.dsm" -na;
connectAttr "emPyramidShape.iog" "lambert7SG.dsm" -na;
connectAttr "emGettaShape.iog" "lambert7SG.dsm" -na;
connectAttr "emConeShape.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo11.sg";
connectAttr "allinone.msg" "materialInfo11.m";
connectAttr "file11.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture12.c" "file11.c";
connectAttr "place2dTexture12.tf" "file11.tf";
connectAttr "place2dTexture12.rf" "file11.rf";
connectAttr "place2dTexture12.mu" "file11.mu";
connectAttr "place2dTexture12.mv" "file11.mv";
connectAttr "place2dTexture12.s" "file11.s";
connectAttr "place2dTexture12.wu" "file11.wu";
connectAttr "place2dTexture12.wv" "file11.wv";
connectAttr "place2dTexture12.re" "file11.re";
connectAttr "place2dTexture12.of" "file11.of";
connectAttr "place2dTexture12.r" "file11.ro";
connectAttr "place2dTexture12.n" "file11.n";
connectAttr "place2dTexture12.vt1" "file11.vt1";
connectAttr "place2dTexture12.vt2" "file11.vt2";
connectAttr "place2dTexture12.vt3" "file11.vt3";
connectAttr "place2dTexture12.vc1" "file11.vc1";
connectAttr "place2dTexture12.o" "file11.uv";
connectAttr "place2dTexture12.ofs" "file11.fs";
connectAttr "polyCone1.out" "polyExtrudeFace1.ip";
connectAttr "emConeShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplit2.ip";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySurfaceShape10.o" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak3.out" "polyCut1.ip";
connectAttr "emGettaShape.wm" "polyCut1.mp";
connectAttr "polySplit7.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyDelEdge2.ip";
connectAttr "polyCut1.out" "polyTweak4.ip";
connectAttr "polyDelEdge2.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polyCone2.out" "transformGeometry1.ig";
connectAttr "polyTweak5.out" "polyExtrudeFace2.ip";
connectAttr "emPyramidShape.wm" "polyExtrudeFace2.mp";
connectAttr "transformGeometry1.og" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplit10.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak6.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyTweak7.out" "polyPlanarProj1.ip";
connectAttr "emPyramidShape.wm" "polyPlanarProj1.mp";
connectAttr "polySplit11.out" "polyTweak7.ip";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweak8.out" "polyPlanarProj2.ip";
connectAttr "emGettaShape.wm" "polyPlanarProj2.mp";
connectAttr "polySplit9.out" "polyTweak8.ip";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "emGettaShape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV2.ip";
connectAttr "polySplit5.out" "polyPlanarProj4.ip";
connectAttr "emConeShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyTweakUV3.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "bodySG.pa" ":renderPartition.st" -na;
connectAttr "armSG.pa" ":renderPartition.st" -na;
connectAttr "shieldSG.pa" ":renderPartition.st" -na;
connectAttr "body2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "horse:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "horse:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "horse:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "horse:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "horse:bodySG.pa" ":renderPartition.st" -na;
connectAttr "horse:armSG.pa" ":renderPartition.st" -na;
connectAttr "horse:shieldSG.pa" ":renderPartition.st" -na;
connectAttr "allinoneSG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "allinone.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "cloth1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:cloth1.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "horse:file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "horse:place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
// End of man.ma
