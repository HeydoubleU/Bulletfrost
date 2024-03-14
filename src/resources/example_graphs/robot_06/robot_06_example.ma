//Maya ASCII 2024 scene
//Name: 06_robot.ma
//Last modified: Wed, Mar 13, 2024 08:53:53 PM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "bifrostGraphShape" -dataType "bifData" "bifrostGraph" "2.8.0.0-202311081356-7a0d165";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Mac OS X 14.2.1";
fileInfo "UUID" "3D53063A-084D-ABFF-D2CE-188E64385EBC";
fileInfo "exportedFrom" "A:/Playground2/Scenes/bullet_demos/06_robot.ma";
createNode transform -s -n "persp";
	rename -uid "8A9B17F7-440E-F999-25E5-63AEDE6C57A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 33.620528105644674 8.0487023133916473 3.6890842359383331 ;
	setAttr ".r" -type "double3" -10.538352729645149 90.599999999997479 -7.6333312355124402e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "54F09723-407E-4748-5527-74A5B3917B18";
	setAttr -k off ".v" no;
	setAttr ".fl" 28.29999999999999;
	setAttr ".coi" 17.222463806270007;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 43.302267734451732 2.761937913071689 36.445792476870153 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3EFFA059-4B22-5001-76C4-9D8AFC8AC730";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B6971231-43D3-244A-37B2-67A7A08EE428";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F80D7EF8-4D6B-79F6-14A9-A082DCF4FCDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5538F428-48FF-2ED8-5483-AD982AA66F5E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3E85CF0A-4323-9D5A-1808-4B961A0534E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "34710936-4D2D-ECEC-6057-6599C6EBB182";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "bifrostGraph1";
	rename -uid "DF87F058-47BC-2F60-391E-9E8BE7E6923E";
createNode bifrostGraphShape -n "bifrostGraphShape1" -p "bifrostGraph1";
	rename -uid "CAB2B8D5-4A83-24A3-0268-B1B74F23F3E0";
	addAttr -w false -ci true -sn "Core__Graph__terminal__diagnostic" -ln "Core__Graph__terminal__diagnostic" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__final" -ln "Core__Graph__terminal__final" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__proxy" -ln "Core__Graph__terminal__proxy" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -r false -ci true -k true -m -sn "outMesh_array" -ln "outMesh_array" -dt "bifData" 
		-dt "vectorArray" -dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -r false -ci true -k true -m -sn "worldMatrix_array" -ln "worldMatrix_array" 
		-at "fltMatrix";
	addAttr -r false -ci true -k true -sn "projectile_worldMatrix" -ln "projectile_worldMatrix" 
		-at "fltMatrix";
	addAttr -r false -ci true -k true -sn "projectile_outMesh" -ln "projectile_outMesh" 
		-dt "bifData" -dt "vectorArray" -dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -r false -ci true -k true -sn "JobPorts__Math_epsilonFloat" -ln "JobPorts__Math_epsilonFloat" 
		-at "float";
	addAttr -r false -ci true -k true -sn "JobPorts__time" -ln "JobPorts__time" -at "time";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"namespaces\": [],\n    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"bifrostGraphShape1\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Input_by_Path\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1612 -679\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"outMesh_array\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"52.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"input\",\n"
		+ "                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1745 -443\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"worldMatrix_array\"\n                                                }\n                                            ]\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"51.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"input1\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2473 46\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"projectile_outMesh\"\n                                                },\n                                                {\n                                                    \"metaName\": \"projectile_worldMatrix\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"66.000000\"\n                                        }\n                                    ]\n                                }\n"
		+ "                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Fixed body constraints\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-450.607 -647.892 1101.17 695.99\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop1\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Springy antena\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1038.3 116.019 1764.41 925.531\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop2\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"fontScaleOffset\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Construct base robot source\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#117120e6\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1628.29 -849.542 2990.34 1896.8\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"fontScaleOffset\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#117120e6\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Duplicate source\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1573.71 -1084.33 1346.65 946.792\"\n                        }\n                    ]\n                },\n                {\n"
		+ "                    \"metaName\": \"sticky_note\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffd78282\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"These transforms are from the animated controls for the arms/legs. We accumulate them so that we can offset the animation for each robot.\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1745.28 -550.262 533.433 104\"\n                        },\n"
		+ "                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"50.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note1\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffa58bd7\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"We use a for-each to duplicate the source and add variation, to the starting position of the robot, as well as offset its walking animation.\\n\\nWe animate the robot through motorized constraints.  Rather than apply the animation data directly, we give it to the constraint as a target pose. The constraint tries to achieve this pose through motors with certain physical properties.\\n\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1606.96 -986.278 739.641 224\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"47.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note2\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"The parts of the robot we renamed such that their number in the outliner matches their array index\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffa58bd7\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-176.181 -544.616 512.348 104\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"48.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note3\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Since each source instances the same meshes, we can merge them so they all use the same set of shapes.\"\n                        },\n                        {\n                            \"metaName\": \"fontSize\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"10\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffa58bd7\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"4529.77 -1070.15 474.17 104\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"69.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop3\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2462.92 -43.855 1615.11 691.137\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Cannon ball because why not\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"internal\",\n                    \"metaValue\": \"true\"\n                },\n"
		+ "                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"3571.03 -1429.05 2653.86 1557.75\"\n                },\n                {\n                    \"metaName\": \"_recentNode_\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"BifrostGraph,Simulation::Common,memory_cache\"\n                }\n            ],\n            \"ports\": [\n                {\n                    \"portName\": \"outMesh_array\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"array<Object>\"\n                },\n                {\n                    \"portName\": \"worldMatrix_array\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"array<Math::float4x4>\"\n                },\n                {\n                    \"portName\": \"projectile_outMesh\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Object\"\n                },\n                {\n                    \"portName\": \"projectile_worldMatrix\",\n"
		+ "                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\"\n                }\n            ],\n            \"compounds\": [\n                {\n                    \"name\": \"prep\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-1856.9 -583.569\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"mesh\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"35.000000\"\n"
		+ "                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"input1\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-762.328 379.691\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n"
		+ "                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"mass_scalar\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"base_mass\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"42.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"908.636 -522.605\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"out_mesh\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"50.000000\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"output1\",\n                                            \"metadata\": [\n"
		+ "                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-1100.14 -493.769\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"center\"\n                                                        }\n"
		+ "                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"32.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"sticky_note\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"sticky_note\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"text\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Important to disable sleep. If the robot comes to rest for too long the motors will not be enough to wake the bodies back up\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"463.079 -691.971 444.155 94\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"31.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop\",\n                            \"metadata\": [\n                                {\n"
		+ "                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Set mass based on object size\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1131.25 80.691 1992.82 1080.31\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"sticky_note1\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"sticky_note\"\n                                },\n                                {\n                                    \"metaName\": \"text\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"parts near the ground (ie. the legs) get a boost in mass to aid stability.\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-744.119 991.653 384 66\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"49.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"sticky_note2\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"sticky_note\"\n                                },\n                                {\n                                    \"metaName\": \"fontSize\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"12\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1507.9 -711.284 542.566 106\"\n                                },\n                                {\n                                    \"metaName\": \"text\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Here we prep the mesh's properties. We compute translate using the center of the bounding box, and mass based on its extents.\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"52.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1863.76 -626.056 3791.95 1526.25\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"mesh\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"Object\"\n                        },\n                        {\n                            \"portName\": \"mass_scalar\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n"
		+ "                        {\n                            \"portName\": \"out_mesh\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"base_mass\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        },\n                        {\n                            \"portName\": \"center\",\n                            \"portDirection\": \"output\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"value16\",\n                            \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"522.508 291.505\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"48.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_position_property\",\n                            \"nodeType\": \"Simulation::Influence::Internal::get_position_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1597.79 -367.825\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"compute_bounding_box\",\n                            \"nodeType\": \"Bullet::Utility::compute_bounding_box\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1364.42 -327.641\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"SRT_to_matrix\",\n                            \"nodeType\": \"Core::Math::SRT_to_matrix\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-173.948 -352.546\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"primitive_collision_shape\",\n                            \"nodeType\": \"Bullet::Collision::primitive_collision_shape\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"Primitive.Box\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"Primitive\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"Common\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-181.562 -137.115\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"length\",\n                            \"nodeType\": \"Core::Math::length\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-748.328 160.691\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"39.000000\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"multiply\",\n                            \"nodeType\": \"Core::Math::multiply\",\n                            \"multiInPortNames\": [\n                                \"length\",\n                                \"port\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-465.328 258.691\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"40.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"prep_rigid_body_mesh\",\n                            \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"596.156 -540.666\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n"
		+ "                                        {\n                                            \"metaName\": \"Properties\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"53.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"negate\",\n                            \"nodeType\": \"Core::Math::negate\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-742.905 -433.694\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"add\",\n                            \"nodeType\": \"Core::Math::add\",\n                            \"multiInPortNames\": [\n                                \"output1\",\n                                \"port\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-197.328 342.691\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"41.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"if\",\n                            \"nodeType\": \"Core::Logic::if\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"257.231 301.155\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"47.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"vector3_to_scalar\",\n                            \"nodeType\": \"Core::Conversion::vector3_to_scalar\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-638.027 716.547\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"45.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"less\",\n                            \"nodeType\": \"Core::Logic::less\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-315.288 732.589\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"46.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"add1\",\n                            \"nodeType\": \"Core::Math::add\",\n                            \"multiInPortNames\": [\n                                \"output1\",\n                                \"output2\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"47.4773 862.074\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"43.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value\",\n                            \"valueType\": \"float\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-326.029 948.338\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"44.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_point_position\",\n                            \"nodeType\": \"Geometry::Properties::get_point_position\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"69.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-781.748 -669.289\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"set_point_position\",\n                            \"nodeType\": \"Geometry::Properties::set_point_position\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"67.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-113.741 -787.032\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"subtract\",\n                            \"nodeType\": \"Core::Math::subtract\",\n                            \"multiInPortNames\": [\n                                \"point_position\",\n                                \"center\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"68.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-378.38 -685.95\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \".mesh\",\n                            \"target\": \"get_position_property.body\"\n                        },\n                        {\n                            \"source\": \"get_position_property.positions\",\n                            \"target\": \"compute_bounding_box.point_position\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.center\",\n"
		+ "                            \"target\": \"SRT_to_matrix.translation\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.extents\",\n                            \"target\": \"primitive_collision_shape.extents\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.extents\",\n                            \"target\": \"length.vector\"\n                        },\n                        {\n                            \"source\": \"length.length\",\n                            \"target\": \"multiply.first.length\"\n                        },\n                        {\n                            \"source\": \".mass_scalar\",\n                            \"target\": \"multiply.first.port\"\n                        },\n                        {\n                            \"source\": \"value16.output\",\n                            \"target\": \"prep_rigid_body_mesh.physical_material\"\n                        },\n                        {\n                            \"source\": \"SRT_to_matrix.transform\",\n"
		+ "                            \"target\": \"prep_rigid_body_mesh.transform\"\n                        },\n                        {\n                            \"source\": \"primitive_collision_shape.collision_shape\",\n                            \"target\": \"prep_rigid_body_mesh.collision_shape\"\n                        },\n                        {\n                            \"source\": \"prep_rigid_body_mesh.out_mesh\",\n                            \"target\": \".out_mesh\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.center\",\n                            \"target\": \"negate.value\"\n                        },\n                        {\n                            \"source\": \"multiply.output\",\n                            \"target\": \"add.first.output1\"\n                        },\n                        {\n                            \"source\": \".base_mass\",\n                            \"target\": \"add.first.port\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.center\",\n"
		+ "                            \"target\": \".center\"\n                        },\n                        {\n                            \"source\": \"vector3_to_scalar.y\",\n                            \"target\": \"less.first\"\n                        },\n                        {\n                            \"source\": \"less.output\",\n                            \"target\": \"if.condition\"\n                        },\n                        {\n                            \"source\": \"add.output\",\n                            \"target\": \"if.false_case\"\n                        },\n                        {\n                            \"source\": \"add.output\",\n                            \"target\": \"add1.first.output1\"\n                        },\n                        {\n                            \"source\": \"value.output\",\n                            \"target\": \"add1.first.output2\"\n                        },\n                        {\n                            \"source\": \"add1.output\",\n                            \"target\": \"if.true_case\"\n                        },\n"
		+ "                        {\n                            \"source\": \"if.output\",\n                            \"target\": \"value16.value.mass\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.center\",\n                            \"target\": \"vector3_to_scalar.vector3\"\n                        },\n                        {\n                            \"source\": \".mesh\",\n                            \"target\": \"get_point_position.geometry\"\n                        },\n                        {\n                            \"source\": \"get_point_position.point_position\",\n                            \"target\": \"subtract.first.point_position\"\n                        },\n                        {\n                            \"source\": \"compute_bounding_box.center\",\n                            \"target\": \"subtract.first.center\"\n                        },\n                        {\n                            \"source\": \".mesh\",\n                            \"target\": \"set_point_position.geometry\"\n"
		+ "                        },\n                        {\n                            \"source\": \"subtract.output\",\n                            \"target\": \"set_point_position.positions\"\n                        },\n                        {\n                            \"source\": \"set_point_position.out_geometry\",\n                            \"target\": \"prep_rigid_body_mesh.mesh\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"value16.value\",\n                            \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                            \"value\": {\n                                \"mass\": \"1f\",\n                                \"friction\": \"0.800000012f\",\n                                \"restitution\": \"0.100000001f\",\n                                \"linear_damping\": \"0.00999999978f\",\n                                \"angular_damping\": \"0.00999999978f\"\n                            }\n                        },\n                        {\n"
		+ "                            \"valueName\": \"SRT_to_matrix.quaternion\",\n                            \"valueType\": \"Math::float4\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\",\n                                \"w\": \"1f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"prep_rigid_body_mesh.mode\",\n                            \"valueType\": \"Bullet::RBD::RigidBodyMode\",\n                            \"value\": \"Dynamic\"\n                        },\n                        {\n                            \"valueName\": \"prep_rigid_body_mesh.transform\",\n                            \"valueType\": \"Math::float4x4\",\n                            \"value\": {\n                                \"c0\": {\n                                    \"x\": \"1f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n"
		+ "                                },\n                                \"c1\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"1f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c2\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"1f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c3\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"1f\"\n                                }\n                            }\n                        },\n                        {\n                            \"valueName\": \"prep_rigid_body_mesh.physical_material\",\n                            \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n"
		+ "                            \"value\": {\n                                \"mass\": \"1f\",\n                                \"friction\": \"0.5f\",\n                                \"restitution\": \"0.5f\",\n                                \"linear_damping\": \"0.00999999978f\",\n                                \"angular_damping\": \"0.00999999978f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"prep_rigid_body_mesh.enabled\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"true\"\n                        },\n                        {\n                            \"valueName\": \"prep_rigid_body_mesh.initial_state\",\n                            \"valueType\": \"uchar\",\n                            \"value\": \"4\"\n                        },\n                        {\n                            \"valueName\": \"less.second\",\n                            \"valueType\": \"float\",\n                            \"value\": \"1.5f\"\n                        },\n"
		+ "                        {\n                            \"valueName\": \"value.value\",\n                            \"valueType\": \"float\",\n                            \"value\": \"2f\"\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        },\n                        {\n                            \"name\": \"input1\"\n                        },\n                        {\n                            \"name\": \"output1\"\n                        }\n                    ]\n                },\n                {\n                    \"name\": \"body_relationships\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1322.77 23.368\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n"
		+ "                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"x\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"y\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"43.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n"
		+ "                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28da9652\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-2355.12 -157.358 272.914 479.336\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Body\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop1\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28da9652\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Leg to foot\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1987.16 187.849 264.638 420.117\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop3\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28da9652\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1672.95 494.073 621.579 547.109\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Upper body to arms/head\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop4\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28da9652\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Head\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-123.705 321.536 616.42 433.321\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop5\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"color\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"#28da9652\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Ears\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-112.6 765.556 616.42 433.321\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1931.71 -299.384 3480.86 1618.25\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n"
		+ "                            \"portName\": \"x\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"y\",\n                            \"portDirection\": \"output\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"vector2_to_scalar\",\n                            \"nodeType\": \"Core::Conversion::vector2_to_scalar\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"977.006 23.5869\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"42.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output1\",\n                                \"output7\",\n                                \"output\",\n                                \"output8\",\n                                \"array1\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-905.193 -45.15\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"49.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array1\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output2\",\n                                \"output3\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1301.4 648.463\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array3\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output1\"\n                            ],\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"229.781 465.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array4\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"array1\",\n"
		+ "                                \"array2\",\n                                \"array3\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"677.781 48.5562\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"39.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array5\",\n"
		+ "                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output1\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"240.781 910.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n"
		+ "                        },\n                        {\n                            \"nodeName\": \"value1\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-2330.78 -57.8706\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"46.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value12\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n"
		+ "                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-111.219 570.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"35.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value14\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n"
		+ "                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-99.219 1014.56\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"41.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value15\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-106.219 845.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"40.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value3\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n"
		+ "                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1961.18 261.349\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"31.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value4\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-2334.19 111.645\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"47.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value5\",\n                            \"valueType\": \"Math::long2\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1969.18 426.349\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"32.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value6\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1641.74 864.139\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"48.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value7\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1659.4 571.463\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value8\",\n"
		+ "                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n"
		+ "                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-116.219 401.556\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value9\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1660.46 727.019\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"45.000000\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"vector2_to_scalar.x\",\n                            \"target\": \".x\"\n                        },\n                        {\n                            \"source\": \"vector2_to_scalar.y\",\n                            \"target\": \".y\"\n                        },\n                        {\n                            \"source\": \"value7.output\",\n                            \"target\": \"build_array1.first.output\"\n                        },\n                        {\n                            \"source\": \"value9.output\",\n                            \"target\": \"build_array1.first.output2\"\n                        },\n                        {\n"
		+ "                            \"source\": \"value8.output\",\n                            \"target\": \"build_array3.first.output\"\n                        },\n                        {\n                            \"source\": \"value12.output\",\n                            \"target\": \"build_array3.first.output1\"\n                        },\n                        {\n                            \"source\": \"build_array3.array\",\n                            \"target\": \"build_array4.first.array2\"\n                        },\n                        {\n                            \"source\": \"build_array5.array\",\n                            \"target\": \"build_array4.first.array3\"\n                        },\n                        {\n                            \"source\": \"value15.output\",\n                            \"target\": \"build_array5.first.output\"\n                        },\n                        {\n                            \"source\": \"value14.output\",\n                            \"target\": \"build_array5.first.output1\"\n                        },\n"
		+ "                        {\n                            \"source\": \"build_array4.array\",\n                            \"target\": \"vector2_to_scalar.vector2\"\n                        },\n                        {\n                            \"source\": \"value4.output\",\n                            \"target\": \"build_array.first.output7\"\n                        },\n                        {\n                            \"source\": \"value1.output\",\n                            \"target\": \"build_array.first.output1\"\n                        },\n                        {\n                            \"source\": \"value6.output\",\n                            \"target\": \"build_array1.first.output3\"\n                        },\n                        {\n                            \"source\": \"value3.output\",\n                            \"target\": \"build_array.first.output\"\n                        },\n                        {\n                            \"source\": \"value5.output\",\n                            \"target\": \"build_array.first.output8\"\n                        },\n"
		+ "                        {\n                            \"source\": \"build_array1.array\",\n                            \"target\": \"build_array.first.array1\"\n                        },\n                        {\n                            \"source\": \"build_array.array\",\n                            \"target\": \"build_array4.first.array1\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"value1.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"0\",\n                                \"y\": \"3\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value12.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"7\",\n                                \"y\": \"8\"\n                            }\n                        },\n"
		+ "                        {\n                            \"valueName\": \"value14.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"16\",\n                                \"y\": \"8\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value15.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"8\",\n                                \"y\": \"9\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value3.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"1\",\n                                \"y\": \"2\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value4.value\",\n"
		+ "                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"3\",\n                                \"y\": \"4\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value5.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"25\",\n                                \"y\": \"26\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value6.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"4\",\n                                \"y\": \"5\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value7.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n"
		+ "                                \"x\": \"4\",\n                                \"y\": \"5\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value8.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"4\",\n                                \"y\": \"7\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value9.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"4\",\n                                \"y\": \"23\"\n                            }\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                },\n                {\n                    \"name\": \"transform_cache\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n"
		+ "                                                            \"metaName\": \"cached\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"worldMatrix_array\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"reset_frame\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"38.000000\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-684.398 -49.7148\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n"
		+ "                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"474 -72\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"array\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n"
		+ "                                                    \"metaValue\": \"32.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1167.25 -548.533 2284.13 1008.9\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"cached\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"array<array<Math::float4x4>>\",\n                            \"linkedFeedbackPort\": \"array\"\n                        },\n                        {\n                            \"portName\": \"worldMatrix_array\",\n                            \"portDirection\": \"input\",\n"
		+ "                            \"portType\": \"array<Math::float4x4>\"\n                        },\n                        {\n                            \"portName\": \"array\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"reset_frame\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"build_array\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"worldMatrix_array\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"62 -87\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"if\",\n                            \"nodeType\": \"Core::Logic::if\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-244 -202\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"time\",\n                            \"nodeType\": \"Core::Time::time\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1076 -351\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"equal\",\n                            \"nodeType\": \"Core::Logic::equal\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"-476 -393\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"35.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"to_long\",\n                            \"nodeType\": \"Core::Type_Conversion::to_long\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-732 -376\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"build_array.array\",\n                            \"target\": \".array\"\n                        },\n                        {\n                            \"source\": \"if.output\",\n                            \"target\": \"build_array.first.output\"\n                        },\n                        {\n                            \"source\": \"time.frame\",\n                            \"target\": \"to_long.from\"\n                        },\n                        {\n                            \"source\": \"equal.output\",\n                            \"target\": \"if.condition\"\n                        },\n"
		+ "                        {\n                            \"source\": \"to_long.long\",\n                            \"target\": \"equal.first\"\n                        },\n                        {\n                            \"source\": \".cached\",\n                            \"target\": \"if.false_case\"\n                        },\n                        {\n                            \"source\": \".worldMatrix_array\",\n                            \"target\": \"build_array.first.worldMatrix_array\"\n                        },\n                        {\n                            \"source\": \".reset_frame\",\n                            \"target\": \"equal.second\"\n                        }\n                    ],\n                    \"values\": [],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                },\n                {\n                    \"name\": \"for_each\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"icon\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"<NATIVE>../icons/LoopForEach.svg\"\n                        },\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"max_iterations\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"current_index\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-1990.21 1057.3\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"68.000000\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"input1\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n"
		+ "                                                    \"metaValue\": \"-98.3341 -1181.41\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"source\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"56.000000\"\n                                                }\n                                            ]\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"input2\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-499.294 272.17\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n"
		+ "                                                            \"metaName\": \"xform_cache\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"57.000000\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"input3\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n"
		+ "                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"seed\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-261.476 1542.55\"\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"65.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"out_points\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"95.000000\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"3063.27 208.429\"\n"
		+ "                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-295.476 1398.83 1541.91 627.02\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"Random starting position\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop1\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Sample transform cache using current frame minus some random offset\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1542.26 431.475 1684.42 602.786\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"backdrop2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-484.299 -643.193 578 735.997\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Limb constraints\"\n                                }\n                            ]\n                        },\n"
		+ "                        {\n                            \"metaName\": \"backdrop3\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"type\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"backdrop\"\n                                },\n                                {\n                                    \"metaName\": \"title\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"First frame used as reference point\"\n                                },\n                                {\n                                    \"metaName\": \"coords\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-177.183 132.404 383.224 265\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1494.38 -1296.26 4488.43 2086.67\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"max_iterations\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\",\n                            \"portIterationLimit\": \"true\"\n                        },\n                        {\n                            \"portName\": \"current_index\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\",\n                            \"portIterationCounter\": \"true\"\n                        },\n                        {\n                            \"portName\": \"source\",\n                            \"portDirection\": \"input\"\n                        },\n                        {\n                            \"portName\": \"xform_cache\",\n                            \"portDirection\": \"input\"\n"
		+ "                        },\n                        {\n                            \"portName\": \"out_points\",\n                            \"portDirection\": \"output\",\n                            \"portIterationTarget\": \"true\"\n                        },\n                        {\n                            \"portName\": \"seed\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"build_array\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output1\",\n                                \"output2\",\n                                \"output3\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-141.299 -420.193\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array10\",\n                            \"nodeType\": \"Core::Array::build_array\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output1\",\n                                \"output2\",\n"
		+ "                                \"output3\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1127.4 848.891\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"51.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"build_array11\",\n                            \"nodeType\": \"Core::Array::build_array\",\n"
		+ "                            \"multiInPortNames\": [\n                                \"value\",\n                                \"constraint\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"86.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1978.72 -925.626\"\n                                }\n                            ]\n                        },\n                        {\n"
		+ "                            \"nodeName\": \"constraint_motors1\",\n                            \"nodeType\": \"Bullet::Constrain::constraint_motors\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"Motors\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1441.99 168.195\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"80.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_from_array4\",\n                            \"nodeType\": \"Core::Array::get_from_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"467.701 -41.1959\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_from_array5\",\n                            \"nodeType\": \"Core::Array::get_from_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"467.701 -209.196\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"35.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_point_position\",\n                            \"nodeType\": \"Geometry::Properties::get_point_position\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"262.701 -788.193\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"41.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_property\",\n                            \"nodeType\": \"Core::Object::get_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"91.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1566.83 -907.765\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"matrix_to_SRT\",\n                            \"nodeType\": \"Core::Math::matrix_to_SRT\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"79.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"365.27 528.341\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"quaternion_invert\",\n                            \"nodeType\": \"Core::Math::quaternion_invert\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"805.421 619.013\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"52.000000\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"quaternion_to_euler\",\n                            \"nodeType\": \"Core::Math::quaternion_to_euler\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1075.68 603.434\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"53.000000\"\n                                }\n"
		+ "                            ]\n                        },\n                        {\n                            \"nodeName\": \"rigid_body_constraint2\",\n                            \"nodeType\": \"Bullet::Constrain::rigid_body_constraint\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"Common\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"Frames\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"Limits\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1434.7 -424.413\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"81.000000\"\n                                }\n                            ]\n"
		+ "                        },\n                        {\n                            \"nodeName\": \"set_property3\",\n                            \"nodeType\": \"Core::Object::set_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"NodeValueDisplay\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"show\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"format\",\n                                            \"metaType\": \"string\",\n"
		+ "                                            \"metaValue\": \"Set property {key}\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"87.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2318.69 -1160.59\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"subtract2\",\n                            \"nodeType\": \"Core::Math::subtract\",\n                            \"multiInPortNames\": [\n                                \"translation\",\n                                \"value\"\n"
		+ "                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"830.701 -216.196\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"40.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"subtract3\",\n                            \"nodeType\": \"Core::Math::subtract\",\n                            \"multiInPortNames\": [\n"
		+ "                                \"translation\",\n                                \"value\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"830.701 -69.1959\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"39.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"subtract4\",\n"
		+ "                            \"nodeType\": \"Core::Math::subtract\",\n                            \"multiInPortNames\": [\n                                \"translation\",\n                                \"stored_value\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1034.54 323.773\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"54.000000\"\n                                }\n                            ]\n"
		+ "                        },\n                        {\n                            \"nodeName\": \"value\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-469.299 -563.193\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n                        {\n"
		+ "                            \"nodeName\": \"value10\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n"
		+ "                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-474.299 -423.193\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value11\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-458.299 -92.1959\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"32.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value13\",\n                            \"valueType\": \"Math::long2\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"PortExpandedState\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"value\",\n                                            \"metaType\": \"string\",\n"
		+ "                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-458.299 -254.196\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"31.000000\"\n                                }\n                            ]\n                        },\n                        {\n"
		+ "                            \"nodeName\": \"value16\",\n                            \"valueType\": \"float\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"826.751 827.983\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"50.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value17\",\n                            \"valueType\": \"float\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"75.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"819.371 973.721\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"vector2_to_scalar\",\n                            \"nodeType\": \"Core::Conversion::vector2_to_scalar\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"108.701 -353.193\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"matrix_to_SRT1\",\n                            \"nodeType\": \"Core::Math::matrix_to_SRT\",\n                            \"metadata\": [\n                                {\n"
		+ "                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"365.171 294.267\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"46.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"first_in_array\",\n                            \"nodeType\": \"Core::Array::first_in_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"77.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-110.344 209.82\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_from_array6\",\n                            \"nodeType\": \"Core::Array::get_from_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"78.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-150.996 575.548\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"random_value\",\n                            \"nodeType\": \"Core::Randomization::random_value\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"412.177 1768.85\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"64.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"random_value1\",\n                            \"nodeType\": \"Core::Randomization::random_value\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"414.838 1478.83\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"62.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"rotation_vector_to_quaternion\",\n                            \"nodeType\": \"Core::Math::rotation_vector_to_quaternion\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"699.213 1517.55\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"63.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"SRT_to_matrix\",\n                            \"nodeType\": \"Core::Math::SRT_to_matrix\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1011.43 1515.25\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"61.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"transform_points\",\n                            \"nodeType\": \"Modeling::Points::transform_points\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"96.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2785.19 202.184\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"max\",\n                            \"nodeType\": \"Core::Math::max\",\n                            \"multiInPortNames\": [\n                                \"output\",\n                                \"output1\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-857.218 651.548\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"72.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value18\",\n                            \"valueType\": \"float\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1212.56 849.261\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"70.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"random_value2\",\n                            \"nodeType\": \"Core::Randomization::random_value\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"-1532.26 748.061\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"74.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"time\",\n                            \"nodeType\": \"Core::Time::time\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-1528.47 511.475\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"71.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"subtract5\",\n                            \"nodeType\": \"Core::Math::subtract\",\n                            \"multiInPortNames\": [\n                                \"frame\",\n                                \"output1\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"-1211.93 610.764\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"69.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"to_long1\",\n                            \"nodeType\": \"Core::Type_Conversion::to_long\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-504.669 628.443\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"73.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"add\",\n                            \"nodeType\": \"Core::Math::add\",\n                            \"multiInPortNames\": [\n                                \"seed\",\n                                \"output1\"\n                            ],\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"19.5242 1620.55\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"66.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"value19\",\n                            \"valueType\": \"long\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-285.476 1839.55\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"67.000000\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"value.output\",\n                            \"target\": \"build_array.first.output\"\n                        },\n                        {\n                            \"source\": \"value10.output\",\n                            \"target\": \"build_array.first.output1\"\n                        },\n                        {\n                            \"source\": \"value13.output\",\n                            \"target\": \"build_array.first.output2\"\n                        },\n                        {\n                            \"source\": \"value11.output\",\n                            \"target\": \"build_array.first.output3\"\n"
		+ "                        },\n                        {\n                            \"source\": \"value16.output\",\n                            \"target\": \"build_array10.first.output\"\n                        },\n                        {\n                            \"source\": \"value17.output\",\n                            \"target\": \"build_array10.first.output1\"\n                        },\n                        {\n                            \"source\": \"value16.output\",\n                            \"target\": \"build_array10.first.output2\"\n                        },\n                        {\n                            \"source\": \"value17.output\",\n                            \"target\": \"build_array10.first.output3\"\n                        },\n                        {\n                            \"source\": \"get_property.value\",\n                            \"target\": \"build_array11.first.value\"\n                        },\n                        {\n                            \"source\": \"rigid_body_constraint2.constraint\",\n                            \"target\": \"build_array11.first.constraint\"\n"
		+ "                        },\n                        {\n                            \"source\": \"build_array10.array\",\n                            \"target\": \"constraint_motors1.linear_velocity\"\n                        },\n                        {\n                            \"source\": \"subtract4.output\",\n                            \"target\": \"constraint_motors1.linear_target\"\n                        },\n                        {\n                            \"source\": \"build_array10.array\",\n                            \"target\": \"constraint_motors1.angular_velocity\"\n                        },\n                        {\n                            \"source\": \"quaternion_to_euler.euler_radians\",\n                            \"target\": \"constraint_motors1.angular_target\"\n                        },\n                        {\n                            \"source\": \"get_point_position.point_position\",\n                            \"target\": \"get_from_array4.array\"\n                        },\n                        {\n                            \"source\": \"vector2_to_scalar.y\",\n"
		+ "                            \"target\": \"get_from_array4.index\"\n                        },\n                        {\n                            \"source\": \"get_point_position.point_position\",\n                            \"target\": \"get_from_array5.array\"\n                        },\n                        {\n                            \"source\": \"vector2_to_scalar.x\",\n                            \"target\": \"get_from_array5.index\"\n                        },\n                        {\n                            \"source\": \"get_from_array6.value\",\n                            \"target\": \"matrix_to_SRT.transform\"\n                        },\n                        {\n                            \"source\": \"matrix_to_SRT.quaternion\",\n                            \"target\": \"quaternion_invert.quaternion\"\n                        },\n                        {\n                            \"source\": \"quaternion_invert.inverse\",\n                            \"target\": \"quaternion_to_euler.quaternion\"\n                        },\n                        {\n"
		+ "                            \"source\": \"vector2_to_scalar.x\",\n                            \"target\": \"rigid_body_constraint2.rigid_body_a\"\n                        },\n                        {\n                            \"source\": \"subtract2.output\",\n                            \"target\": \"rigid_body_constraint2.pivot_a\"\n                        },\n                        {\n                            \"source\": \"vector2_to_scalar.y\",\n                            \"target\": \"rigid_body_constraint2.rigid_body_b\"\n                        },\n                        {\n                            \"source\": \"subtract3.output\",\n                            \"target\": \"rigid_body_constraint2.pivot_b\"\n                        },\n                        {\n                            \"source\": \"constraint_motors1.motors\",\n                            \"target\": \"rigid_body_constraint2.motors\"\n                        },\n                        {\n                            \"source\": \"build_array11.array\",\n                            \"target\": \"set_property3.value\"\n"
		+ "                        },\n                        {\n                            \"source\": \"matrix_to_SRT1.translation\",\n                            \"target\": \"subtract2.first.translation\"\n                        },\n                        {\n                            \"source\": \"get_from_array5.value\",\n                            \"target\": \"subtract2.first.value\"\n                        },\n                        {\n                            \"source\": \"matrix_to_SRT1.translation\",\n                            \"target\": \"subtract3.first.translation\"\n                        },\n                        {\n                            \"source\": \"get_from_array4.value\",\n                            \"target\": \"subtract3.first.value\"\n                        },\n                        {\n                            \"source\": \"matrix_to_SRT.translation\",\n                            \"target\": \"subtract4.first.translation\"\n                        },\n                        {\n                            \"source\": \"matrix_to_SRT1.translation\",\n"
		+ "                            \"target\": \"subtract4.first.stored_value\"\n                        },\n                        {\n                            \"source\": \"build_array.array\",\n                            \"target\": \"vector2_to_scalar.vector2\"\n                        },\n                        {\n                            \"source\": \"first_in_array.first\",\n                            \"target\": \"matrix_to_SRT1.transform\"\n                        },\n                        {\n                            \"source\": \"random_value1.random_value\",\n                            \"target\": \"rotation_vector_to_quaternion.vector\"\n                        },\n                        {\n                            \"source\": \"rotation_vector_to_quaternion.quaternion\",\n                            \"target\": \"SRT_to_matrix.quaternion\"\n                        },\n                        {\n                            \"source\": \"random_value.random_value\",\n                            \"target\": \"SRT_to_matrix.translation\"\n                        },\n"
		+ "                        {\n                            \"source\": \"set_property3.out_object\",\n                            \"target\": \"transform_points.points\"\n                        },\n                        {\n                            \"source\": \"SRT_to_matrix.transform\",\n                            \"target\": \"transform_points.transform\"\n                        },\n                        {\n                            \"source\": \"value18.output\",\n                            \"target\": \"max.first.output1\"\n                        },\n                        {\n                            \"source\": \".source\",\n                            \"target\": \"get_point_position.geometry\"\n                        },\n                        {\n                            \"source\": \".source\",\n                            \"target\": \"get_property.object\"\n                        },\n                        {\n                            \"source\": \".source\",\n                            \"target\": \"set_property3.object\"\n                        },\n"
		+ "                        {\n                            \"source\": \".xform_cache\",\n                            \"target\": \"first_in_array.array\"\n                        },\n                        {\n                            \"source\": \".xform_cache\",\n                            \"target\": \"get_from_array6.array\"\n                        },\n                        {\n                            \"source\": \".current_index\",\n                            \"target\": \"random_value2.index\"\n                        },\n                        {\n                            \"source\": \"time.frame\",\n                            \"target\": \"subtract5.first.frame\"\n                        },\n                        {\n                            \"source\": \"random_value2.random_value\",\n                            \"target\": \"subtract5.first.output1\"\n                        },\n                        {\n                            \"source\": \"max.maximum\",\n                            \"target\": \"to_long1.from\"\n                        },\n                        {\n"
		+ "                            \"source\": \".current_index\",\n                            \"target\": \"random_value.index\"\n                        },\n                        {\n                            \"source\": \".current_index\",\n                            \"target\": \"random_value1.index\"\n                        },\n                        {\n                            \"source\": \"transform_points.out_points\",\n                            \"target\": \".out_points\"\n                        },\n                        {\n                            \"source\": \".seed\",\n                            \"target\": \"random_value1.seed\"\n                        },\n                        {\n                            \"source\": \".seed\",\n                            \"target\": \"add.first.seed\"\n                        },\n                        {\n                            \"source\": \"value19.output\",\n                            \"target\": \"add.first.output1\"\n                        },\n                        {\n                            \"source\": \"add.output\",\n"
		+ "                            \"target\": \"random_value.seed\"\n                        },\n                        {\n                            \"source\": \"to_long1.long\",\n                            \"target\": \"get_from_array6.index\"\n                        },\n                        {\n                            \"source\": \"subtract5.output\",\n                            \"target\": \"max.first.output\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"constraint_motors1.linear_stiffness\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.linear_damping\",\n                            \"valueType\": \"Math::float3\",\n"
		+ "                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_stiffness\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_damping\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.linear_force\",\n"
		+ "                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"3087f\",\n                                \"y\": \"3087f\",\n                                \"z\": \"3087f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.linear_velocity\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0.495700002f\",\n                                \"y\": \"0.495700002f\",\n                                \"z\": \"0.495700002f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.linear_servo\",\n                            \"valueType\": \"Math::bool3\",\n                            \"value\": {\n                                \"x\": \"true\",\n                                \"y\": \"true\",\n                                \"z\": \"true\"\n"
		+ "                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_force\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"1370f\",\n                                \"y\": \"1370f\",\n                                \"z\": \"1370f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_velocity\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0.513999999f\",\n                                \"y\": \"0.513999999f\",\n                                \"z\": \"0.513999999f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_servo\",\n                            \"valueType\": \"Math::bool3\",\n"
		+ "                            \"value\": {\n                                \"x\": \"true\",\n                                \"y\": \"true\",\n                                \"z\": \"true\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"constraint_motors1.angular_target\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"get_property.default_and_type\",\n                            \"valueType\": \"array<Object>\",\n                            \"value\": []\n                        },\n                        {\n                            \"valueName\": \"get_property.key\",\n                            \"valueType\": \"string\",\n                            \"value\": \"proto_constraints\"\n"
		+ "                        },\n                        {\n                            \"valueName\": \"quaternion_to_euler.rotation_order\",\n                            \"valueType\": \"Math::rotation_order\",\n                            \"value\": \"XYZ\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.type\",\n                            \"valueType\": \"uint\",\n                            \"value\": \"0U\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.rigid_body_a\",\n                            \"valueType\": \"long\",\n                            \"value\": \"0\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.pivot_a\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n"
		+ "                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.orient_a\",\n                            \"valueType\": \"Math::float4\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\",\n                                \"w\": \"1f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.rigid_body_b\",\n                            \"valueType\": \"long\",\n                            \"value\": \"-1\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.pivot_b\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n"
		+ "                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.orient_b\",\n                            \"valueType\": \"Math::float4\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\",\n                                \"w\": \"1f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.breaking_threshold\",\n                            \"valueType\": \"float\",\n                            \"value\": \"5f\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.world_space\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"false\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.enabled\",\n"
		+ "                            \"valueType\": \"bool\",\n                            \"value\": \"true\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.linear_limits\",\n                            \"valueType\": \"Math::bool3\",\n                            \"value\": {\n                                \"x\": \"false\",\n                                \"y\": \"false\",\n                                \"z\": \"false\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.angular_limits\",\n                            \"valueType\": \"Math::bool3\",\n                            \"value\": {\n                                \"x\": \"false\",\n                                \"y\": \"false\",\n                                \"z\": \"false\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.motors\",\n                            \"valueType\": \"Object\",\n"
		+ "                            \"value\": {}\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.disable_collision\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"true\"\n                        },\n                        {\n                            \"valueName\": \"rigid_body_constraint2.update\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"true\"\n                        },\n                        {\n                            \"valueName\": \"set_property3.key\",\n                            \"valueType\": \"string\",\n                            \"value\": \"proto_constraints\"\n                        },\n                        {\n                            \"valueName\": \"set_property3.value\",\n                            \"valueType\": \"array<Object>\",\n                            \"value\": []\n                        },\n                        {\n                            \"valueName\": \"value.value\",\n"
		+ "                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"0\",\n                                \"y\": \"1\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value10.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"5\",\n                                \"y\": \"6\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value11.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n                                \"x\": \"23\",\n                                \"y\": \"24\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value13.value\",\n                            \"valueType\": \"Math::long2\",\n                            \"value\": {\n"
		+ "                                \"x\": \"0\",\n                                \"y\": \"25\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"value16.value\",\n                            \"valueType\": \"float\",\n                            \"value\": \"1.227f\"\n                        },\n                        {\n                            \"valueName\": \"value17.value\",\n                            \"valueType\": \"float\",\n                            \"value\": \"2.80699992f\"\n                        },\n                        {\n                            \"valueName\": \"random_value.index\",\n                            \"valueType\": \"long\",\n                            \"value\": \"0\"\n                        },\n                        {\n                            \"valueName\": \"random_value.min\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"-15f\",\n                                \"y\": \"0f\",\n"
		+ "                                \"z\": \"-15f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"random_value.max\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"15f\",\n                                \"y\": \"0f\",\n                                \"z\": \"15f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"random_value.seed\",\n                            \"valueType\": \"long\",\n                            \"value\": \"3\"\n                        },\n                        {\n                            \"valueName\": \"random_value1.index\",\n                            \"valueType\": \"long\",\n                            \"value\": \"0\"\n                        },\n                        {\n                            \"valueName\": \"random_value1.min\",\n                            \"valueType\": \"Math::float3\",\n"
		+ "                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"random_value1.max\",\n                            \"valueType\": \"Math::float3\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"6.28000021f\",\n                                \"z\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"random_value1.seed\",\n                            \"valueType\": \"long\",\n                            \"value\": \"6\"\n                        },\n                        {\n                            \"valueName\": \"transform_points.transform\",\n                            \"valueType\": \"Math::float4x4\",\n                            \"value\": {\n                                \"c0\": {\n"
		+ "                                    \"x\": \"1f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c1\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"1f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c2\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"1f\",\n                                    \"w\": \"0f\"\n                                },\n                                \"c3\": {\n                                    \"x\": \"0f\",\n                                    \"y\": \"0f\",\n                                    \"z\": \"0f\",\n                                    \"w\": \"1f\"\n                                }\n                            }\n"
		+ "                        },\n                        {\n                            \"valueName\": \"random_value2.min\",\n                            \"valueType\": \"float\",\n                            \"value\": \"0f\"\n                        },\n                        {\n                            \"valueName\": \"random_value2.max\",\n                            \"valueType\": \"float\",\n                            \"value\": \"120f\"\n                        },\n                        {\n                            \"valueName\": \"random_value2.seed\",\n                            \"valueType\": \"long\",\n                            \"value\": \"55\"\n                        },\n                        {\n                            \"valueName\": \"value19.value\",\n                            \"valueType\": \"long\",\n                            \"value\": \"13\"\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n"
		+ "                            \"name\": \"output\"\n                        },\n                        {\n                            \"name\": \"input1\"\n                        },\n                        {\n                            \"name\": \"input2\"\n                        },\n                        {\n                            \"name\": \"input3\"\n                        }\n                    ],\n                    \"forEachCompound\": {\n                        \"ports\": []\n                    }\n                },\n                {\n                    \"name\": \"post_process\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n"
		+ "                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"10 303\"\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"31.000000\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2095.8 179.369\"\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"39.000000\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n"
		+ "                                                        {\n                                                            \"metaName\": \"out_geometry\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-476.958 -537.32 2446.58 1137.41\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"output\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"array<Object>\"\n                        },\n"
		+ "                        {\n                            \"portName\": \"out_geometry\",\n                            \"portDirection\": \"output\",\n                            \"portType\": \"Object\"\n                        }\n                    ],\n                    \"compounds\": [\n                        {\n                            \"name\": \"compound\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"ViewportRect\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-882.376 -526.298 1766.14 1008.9\"\n                                },\n                                {\n                                    \"metaName\": \"io_nodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"io_inodes\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"input\",\n"
		+ "                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"DisplayMode\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"2\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"LayoutPos\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"-557 -61\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"zValue\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"31.000000\"\n"
		+ "                                                        },\n                                                        {\n                                                            \"metaName\": \"io_ports\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"output\"\n                                                                }\n                                                            ]\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"io_onodes\",\n                                            \"metadata\": [\n                                                {\n"
		+ "                                                    \"metaName\": \"output\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"DisplayMode\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"2\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"LayoutPos\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"333 -61\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"zValue\",\n                                                            \"metaType\": \"string\",\n"
		+ "                                                            \"metaValue\": \"32.000000\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"io_ports\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"point_position\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"data1\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"data\"\n                                                                }\n"
		+ "                                                            ]\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ],\n                            \"ports\": [\n                                {\n                                    \"portName\": \"output\",\n                                    \"portDirection\": \"input\",\n                                    \"portType\": \"Object\"\n                                },\n                                {\n                                    \"portName\": \"point_position\",\n                                    \"portDirection\": \"output\"\n                                },\n                                {\n                                    \"portName\": \"data1\",\n                                    \"portDirection\": \"output\"\n"
		+ "                                },\n                                {\n                                    \"portName\": \"data\",\n                                    \"portDirection\": \"output\"\n                                }\n                            ],\n                            \"compoundNodes\": [\n                                {\n                                    \"nodeName\": \"get_geo_property\",\n                                    \"nodeType\": \"Geometry::Properties::get_geo_property\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"39.000000\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-156.493 299.741\"\n                                        },\n                                        {\n                                            \"metaName\": \"NodeValueDisplay\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"show\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1\"\n                                                },\n                                                {\n                                                    \"metaName\": \"format\",\n                                                    \"metaType\": \"string\",\n"
		+ "                                                    \"metaValue\": \"Get geo {property}\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"nodeName\": \"get_point_position1\",\n                                    \"nodeType\": \"Geometry::Properties::get_point_position\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-163.238 -170.675\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"33.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"nodeName\": \"get_geo_property1\",\n                                    \"nodeType\": \"Geometry::Properties::get_geo_property\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"38.000000\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-145.996 17.9806\"\n                                        }\n                                    ]\n                                }\n                            ],\n                            \"connections\": [\n                                {\n                                    \"source\": \"get_geo_property.data\",\n                                    \"target\": \".data\"\n                                },\n                                {\n                                    \"source\": \"get_point_position1.point_position\",\n                                    \"target\": \".point_position\"\n                                },\n"
		+ "                                {\n                                    \"source\": \"get_geo_property1.data\",\n                                    \"target\": \".data1\"\n                                },\n                                {\n                                    \"source\": \".output\",\n                                    \"target\": \"get_geo_property.geometry\"\n                                },\n                                {\n                                    \"source\": \".output\",\n                                    \"target\": \"get_point_position1.geometry\"\n                                },\n                                {\n                                    \"source\": \".output\",\n                                    \"target\": \"get_geo_property1.geometry\"\n                                }\n                            ],\n                            \"values\": [\n                                {\n                                    \"valueName\": \"get_geo_property.property\",\n                                    \"valueType\": \"string\",\n"
		+ "                                    \"value\": \"point_instance_id\"\n                                },\n                                {\n                                    \"valueName\": \"get_geo_property.type\",\n                                    \"valueType\": \"array<long>\",\n                                    \"value\": [\n                                        \"0\"\n                                    ]\n                                },\n                                {\n                                    \"valueName\": \"get_geo_property1.property\",\n                                    \"valueType\": \"string\",\n                                    \"value\": \"point_orientation\"\n                                },\n                                {\n                                    \"valueName\": \"get_geo_property1.type\",\n                                    \"valueType\": \"array<Math::float4>\",\n                                    \"value\": [\n                                        {\n                                            \"x\": \"0f\",\n"
		+ "                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        }\n                                    ]\n                                }\n                            ],\n                            \"reservedNodeNames\": [\n                                {\n                                    \"name\": \"input\"\n                                },\n                                {\n                                    \"name\": \"output\"\n                                }\n                            ]\n                        },\n                        {\n                            \"name\": \"instance_shapes_to_geometry\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"ViewportRect\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-507.224 -31 2175.45 523\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"io_nodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"io_inodes\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"input\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"DisplayMode\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"2\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"10 58\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"io_ports\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"instance_shapes\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"prefer_preview_geometry\"\n                                                                }\n                                                            ]\n                                                        }\n"
		+ "                                                    ]\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"io_onodes\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"output\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"DisplayMode\",\n                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"2\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                                            \"metaType\": \"string\",\n                                                            \"metaValue\": \"925 126\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"io_ports\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"geometry\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"instance_pretransform\"\n                                                                }\n                                                            ]\n                                                        }\n                                                    ]\n"
		+ "                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ],\n                            \"ports\": [\n                                {\n                                    \"portName\": \"instance_shapes\",\n                                    \"portDirection\": \"input\",\n                                    \"portType\": \"Object\"\n                                },\n                                {\n                                    \"portName\": \"prefer_preview_geometry\",\n                                    \"portDirection\": \"input\",\n                                    \"portType\": \"bool\"\n                                },\n                                {\n                                    \"portName\": \"geometry\",\n                                    \"portDirection\": \"output\"\n                                },\n                                {\n                                    \"portName\": \"instance_pretransform\",\n"
		+ "                                    \"portDirection\": \"output\"\n                                }\n                            ],\n                            \"compounds\": [\n                                {\n                                    \"name\": \"get_geometry\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"ViewportRect\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1007.86 -100 3700.73 1167\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_nodes\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"io_inodes\",\n                                                    \"metadata\": [\n                                                        {\n"
		+ "                                                            \"metaName\": \"input\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"DisplayMode\",\n                                                                    \"metaType\": \"string\",\n                                                                    \"metaValue\": \"2\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"LayoutPos\",\n                                                                    \"metaType\": \"string\",\n                                                                    \"metaValue\": \"-459 -60.5\"\n                                                                },\n                                                                {\n"
		+ "                                                                    \"metaName\": \"io_ports\",\n                                                                    \"metadata\": [\n                                                                        {\n                                                                            \"metaName\": \"object\"\n                                                                        },\n                                                                        {\n                                                                            \"metaName\": \"prefer_preview_geometry\"\n                                                                        }\n                                                                    ]\n                                                                }\n                                                            ]\n                                                        }\n                                                    ]\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"io_onodes\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output\",\n                                                            \"metadata\": [\n                                                                {\n                                                                    \"metaName\": \"DisplayMode\",\n                                                                    \"metaType\": \"string\",\n                                                                    \"metaValue\": \"2\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"LayoutPos\",\n                                                                    \"metaType\": \"string\",\n"
		+ "                                                                    \"metaValue\": \"1918.28 246.472\"\n                                                                },\n                                                                {\n                                                                    \"metaName\": \"io_ports\",\n                                                                    \"metadata\": [\n                                                                        {\n                                                                            \"metaName\": \"value\"\n                                                                        }\n                                                                    ]\n                                                                }\n                                                            ]\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n"
		+ "                                        }\n                                    ],\n                                    \"ports\": [\n                                        {\n                                            \"portName\": \"object\",\n                                            \"portDirection\": \"input\",\n                                            \"portType\": \"Object\"\n                                        },\n                                        {\n                                            \"portName\": \"prefer_preview_geometry\",\n                                            \"portDirection\": \"input\"\n                                        },\n                                        {\n                                            \"portName\": \"value\",\n                                            \"portDirection\": \"output\"\n                                        }\n                                    ],\n                                    \"compoundNodes\": [\n                                        {\n                                            \"nodeName\": \"get_property5\",\n"
		+ "                                            \"nodeType\": \"Core::Object::get_property\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"275.385 212.541\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"value\",\n                                            \"valueType\": \"Object\",\n"
		+ "                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-413.351 798.838\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"if\",\n                                            \"nodeType\": \"Core::Logic::if\",\n                                            \"metadata\": [\n"
		+ "                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1535 239\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"is_empty\",\n                                            \"nodeType\": \"Core::Object::is_empty\",\n                                            \"metadata\": [\n                                                {\n"
		+ "                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"623.301 -15.7595\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"or\",\n                                            \"nodeType\": \"Core::Logic::or\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"925 14\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"get_property6\",\n                                            \"nodeType\": \"Core::Object::get_property\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n"
		+ "                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-47.6312 802.525\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"is_empty1\",\n                                            \"nodeType\": \"Core::Object::is_empty\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n"
		+ "                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"620 260.867\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"not\",\n                                            \"nodeType\": \"Core::Logic::not\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n"
		+ "                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"925 233\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"nodeName\": \"and\",\n                                            \"nodeType\": \"Core::Logic::and\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"1230 128\"\n                                                }\n                                            ]\n                                        }\n                                    ],\n                                    \"connections\": [\n                                        {\n                                            \"source\": \"get_property5.value\",\n                                            \"target\": \"is_empty.object\"\n                                        },\n                                        {\n                                            \"source\": \"get_property5.value\",\n                                            \"target\": \"if.false_case\"\n                                        },\n                                        {\n                                            \"source\": \"value.output\",\n"
		+ "                                            \"target\": \"get_property5.default_and_type\"\n                                        },\n                                        {\n                                            \"source\": \"value.output\",\n                                            \"target\": \"get_property6.default_and_type\"\n                                        },\n                                        {\n                                            \"source\": \"if.output\",\n                                            \"target\": \".value\"\n                                        },\n                                        {\n                                            \"source\": \"is_empty.empty\",\n                                            \"target\": \"or.first\"\n                                        },\n                                        {\n                                            \"source\": \"or.output\",\n                                            \"target\": \"and.first\"\n                                        },\n"
		+ "                                        {\n                                            \"source\": \"get_property6.value\",\n                                            \"target\": \"is_empty1.object\"\n                                        },\n                                        {\n                                            \"source\": \"get_property6.value\",\n                                            \"target\": \"if.true_case\"\n                                        },\n                                        {\n                                            \"source\": \"is_empty1.empty\",\n                                            \"target\": \"not.value\"\n                                        },\n                                        {\n                                            \"source\": \"not.output\",\n                                            \"target\": \"and.second\"\n                                        },\n                                        {\n                                            \"source\": \"and.output\",\n                                            \"target\": \"if.condition\"\n"
		+ "                                        },\n                                        {\n                                            \"source\": \".object\",\n                                            \"target\": \"get_property5.object\"\n                                        },\n                                        {\n                                            \"source\": \".object\",\n                                            \"target\": \"get_property6.object\"\n                                        },\n                                        {\n                                            \"source\": \".prefer_preview_geometry\",\n                                            \"target\": \"or.second\"\n                                        }\n                                    ],\n                                    \"values\": [\n                                        {\n                                            \"valueName\": \"get_property5.key\",\n                                            \"valueType\": \"string\",\n                                            \"value\": \"render_geometry\"\n"
		+ "                                        },\n                                        {\n                                            \"valueName\": \"value.value\",\n                                            \"valueType\": \"Object\",\n                                            \"value\": {}\n                                        },\n                                        {\n                                            \"valueName\": \"get_property6.key\",\n                                            \"valueType\": \"string\",\n                                            \"value\": \"preview_geometry\"\n                                        }\n                                    ],\n                                    \"reservedNodeNames\": [\n                                        {\n                                            \"name\": \"input\"\n                                        },\n                                        {\n                                            \"name\": \"output\"\n                                        }\n                                    ]\n"
		+ "                                }\n                            ],\n                            \"compoundNodes\": [\n                                {\n                                    \"nodeName\": \"get_geometry\",\n                                    \"nodeType\": \"get_geometry\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"315 9\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"nodeName\": \"get_property\",\n"
		+ "                                    \"nodeType\": \"Core::Object::get_property\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"611.267 209.477\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"nodeName\": \"value\",\n                                    \"valueType\": \"Math::float4x4\",\n                                    \"metadata\": [\n                                        {\n"
		+ "                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"315 276\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n"
		+ "                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"0\"\n                                        },\n                                        {\n                                            \"metaName\": \"valuenode_defaultvalue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1\"\n                                        }\n                                    ]\n                                }\n"
		+ "                            ],\n                            \"connections\": [\n                                {\n                                    \"source\": \"get_geometry.value\",\n                                    \"target\": \".geometry\"\n                                },\n                                {\n                                    \"source\": \"get_property.value\",\n                                    \"target\": \".instance_pretransform\"\n                                },\n                                {\n                                    \"source\": \"value.output\",\n                                    \"target\": \"get_property.default_and_type\"\n                                },\n                                {\n                                    \"source\": \".instance_shapes\",\n                                    \"target\": \"get_geometry.object\"\n                                },\n                                {\n                                    \"source\": \".instance_shapes\",\n                                    \"target\": \"get_property.object\"\n"
		+ "                                },\n                                {\n                                    \"source\": \".prefer_preview_geometry\",\n                                    \"target\": \"get_geometry.prefer_preview_geometry\"\n                                }\n                            ],\n                            \"values\": [\n                                {\n                                    \"valueName\": \"get_property.default_and_type\",\n                                    \"valueType\": \"Math::float4x4\",\n                                    \"value\": {\n                                        \"c0\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c1\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n"
		+ "                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c2\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c3\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        }\n                                    }\n                                },\n                                {\n                                    \"valueName\": \"get_property.key\",\n                                    \"valueType\": \"string\",\n                                    \"value\": \"transform\"\n"
		+ "                                },\n                                {\n                                    \"valueName\": \"value.value\",\n                                    \"valueType\": \"Math::float4x4\",\n                                    \"value\": {\n                                        \"c0\": {\n                                            \"x\": \"1f\",\n                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c1\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"1f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c2\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n"
		+ "                                            \"z\": \"1f\",\n                                            \"w\": \"0f\"\n                                        },\n                                        \"c3\": {\n                                            \"x\": \"0f\",\n                                            \"y\": \"0f\",\n                                            \"z\": \"0f\",\n                                            \"w\": \"1f\"\n                                        }\n                                    }\n                                }\n                            ],\n                            \"reservedNodeNames\": [\n                                {\n                                    \"name\": \"input\"\n                                },\n                                {\n                                    \"name\": \"output\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"compound\",\n"
		+ "                            \"nodeType\": \"compound\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"315 207\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"33.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"construct_points\",\n                            \"nodeType\": \"Geometry::Points::construct_points\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"925 10\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"36.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"flatten_nested_array\",\n                            \"nodeType\": \"Core::Array::flatten_nested_array\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"620 64\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"34.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"flatten_nested_array1\",\n                            \"nodeType\": \"Core::Array::flatten_nested_array\",\n                            \"metadata\": [\n                                {\n"
		+ "                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1230 372\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"32.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"flatten_nested_array2\",\n                            \"nodeType\": \"Core::Array::flatten_nested_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"925 204\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"35.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"set_geo_property\",\n                            \"nodeType\": \"Geometry::Properties::set_geo_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1230 81\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"37.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"set_geo_property1\",\n                            \"nodeType\": \"Geometry::Properties::set_geo_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n"
		+ "                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1535 149\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"38.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"first_in_array\",\n                            \"nodeType\": \"Core::Array::first_in_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"321.308 595.604\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"44.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"instance_shapes_to_geometry\",\n                            \"nodeType\": \"instance_shapes_to_geometry\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"947.609 1010.05\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"41.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"flatten_instance_selection1\",\n                            \"nodeType\": \"Geometry::Instances::flatten_instance_selection\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n"
		+ "                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"732.498 898.267\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"40.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"get_property\",\n                            \"nodeType\": \"Core::Object::get_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1275.33 582.019\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"43.000000\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"set_property\",\n                            \"nodeType\": \"Core::Object::set_property\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"1824.02 177.376\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"42.000000\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \".output\",\n                            \"target\": \"compound.output\"\n                        },\n                        {\n                            \"source\": \"compound.point_position\",\n                            \"target\": \"flatten_nested_array.nested_array\"\n                        },\n                        {\n                            \"source\": \"compound.data1\",\n                            \"target\": \"flatten_nested_array2.nested_array\"\n                        },\n                        {\n                            \"source\": \"compound.data\",\n"
		+ "                            \"target\": \"flatten_nested_array1.nested_array\"\n                        },\n                        {\n                            \"source\": \"flatten_nested_array.flattened_array\",\n                            \"target\": \"construct_points.point_position\"\n                        },\n                        {\n                            \"source\": \"construct_points.points\",\n                            \"target\": \"set_geo_property.geometry\"\n                        },\n                        {\n                            \"source\": \"flatten_nested_array1.flattened_array\",\n                            \"target\": \"set_geo_property1.data\"\n                        },\n                        {\n                            \"source\": \"flatten_nested_array2.flattened_array\",\n                            \"target\": \"set_geo_property.data\"\n                        },\n                        {\n                            \"source\": \"set_geo_property.out_geometry\",\n                            \"target\": \"set_geo_property1.geometry\"\n"
		+ "                        },\n                        {\n                            \"source\": \".output\",\n                            \"target\": \"first_in_array.array\"\n                        },\n                        {\n                            \"source\": \"flatten_instance_selection1.instance_shapes\",\n                            \"target\": \"instance_shapes_to_geometry.instance_shapes\"\n                        },\n                        {\n                            \"source\": \"first_in_array.first\",\n                            \"target\": \"flatten_instance_selection1.instances\"\n                        },\n                        {\n                            \"source\": \"first_in_array.first\",\n                            \"target\": \"get_property.object\"\n                        },\n                        {\n                            \"source\": \"get_property.value\",\n                            \"target\": \"set_property.value\"\n                        },\n                        {\n                            \"source\": \"set_geo_property1.out_geometry\",\n"
		+ "                            \"target\": \"set_property.object\"\n                        },\n                        {\n                            \"source\": \"set_property.out_object\",\n                            \"target\": \".out_geometry\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"compound.output\",\n                            \"valueType\": \"Object\",\n                            \"value\": {}\n                        },\n                        {\n                            \"valueName\": \"set_geo_property.property\",\n                            \"valueType\": \"string\",\n                            \"value\": \"point_orientation\"\n                        },\n                        {\n                            \"valueName\": \"set_geo_property.data\",\n                            \"valueType\": \"Math::float4\",\n                            \"value\": {\n                                \"x\": \"0f\",\n                                \"y\": \"0f\",\n                                \"z\": \"0f\",\n"
		+ "                                \"w\": \"0f\"\n                            }\n                        },\n                        {\n                            \"valueName\": \"set_geo_property.target\",\n                            \"valueType\": \"string\",\n                            \"value\": \"point_component\"\n                        },\n                        {\n                            \"valueName\": \"set_geo_property1.property\",\n                            \"valueType\": \"string\",\n                            \"value\": \"point_instance_id\"\n                        },\n                        {\n                            \"valueName\": \"set_geo_property1.data\",\n                            \"valueType\": \"long\",\n                            \"value\": \"0\"\n                        },\n                        {\n                            \"valueName\": \"set_geo_property1.target\",\n                            \"valueType\": \"string\",\n                            \"value\": \"point_component\"\n                        },\n                        {\n                            \"valueName\": \"get_property.default_and_type\",\n"
		+ "                            \"valueType\": \"Object\",\n                            \"value\": {}\n                        },\n                        {\n                            \"valueName\": \"get_property.key\",\n                            \"valueType\": \"string\",\n                            \"value\": \"instance_shape\"\n                        },\n                        {\n                            \"valueName\": \"set_property.key\",\n                            \"valueType\": \"string\",\n                            \"value\": \"instance_shape\"\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                },\n                {\n                    \"name\": \"compound\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-624 -61\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"31.000000\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"frame\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n"
		+ "                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n"
		+ "                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"400 -61\"\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"32.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1508.11 -687.729 2891.91 1521.7\"\n"
		+ "                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"output\",\n                            \"portDirection\": \"output\",\n                            \"portType\": \"bool\"\n                        },\n                        {\n                            \"portName\": \"frame\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"float\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"greater\",\n                            \"nodeType\": \"Core::Logic::greater\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"39.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-27.9506 -35.9757\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"time\",\n                            \"nodeType\": \"Core::Time::time\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"37.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-273.686 -190.91\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \"time.frame\",\n                            \"target\": \"greater.first\"\n                        },\n                        {\n                            \"source\": \"greater.output\",\n                            \"target\": \".output\"\n                        },\n                        {\n                            \"source\": \".frame\",\n                            \"target\": \"greater.second\"\n                        }\n                    ],\n                    \"values\": [],\n                    \"reservedNodeNames\": [\n"
		+ "                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                },\n                {\n                    \"name\": \"pop_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_nodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"io_inodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"input\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n"
		+ "                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"-695 -60.5\"\n                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"31.000000\"\n                                                },\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n                                                            \"metaName\": \"output\"\n"
		+ "                                                        },\n                                                        {\n                                                            \"metaName\": \"index\"\n                                                        }\n                                                    ]\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"io_onodes\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"output\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"io_ports\",\n                                                    \"metadata\": [\n                                                        {\n"
		+ "                                                            \"metaName\": \"out_array\"\n                                                        },\n                                                        {\n                                                            \"metaName\": \"value\"\n                                                        }\n                                                    ]\n                                                },\n                                                {\n                                                    \"metaName\": \"DisplayMode\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"2\"\n                                                },\n                                                {\n                                                    \"metaName\": \"LayoutPos\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"471 -60.5\"\n"
		+ "                                                },\n                                                {\n                                                    \"metaName\": \"zValue\",\n                                                    \"metaType\": \"string\",\n                                                    \"metaValue\": \"32.000000\"\n                                                }\n                                            ]\n                                        }\n                                    ]\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"ViewportRect\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1134.87 -318.425 2319.22 933.483\"\n                        }\n                    ],\n                    \"ports\": [\n                        {\n                            \"portName\": \"output\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"array<Object>\"\n"
		+ "                        },\n                        {\n                            \"portName\": \"out_array\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"value\",\n                            \"portDirection\": \"output\"\n                        },\n                        {\n                            \"portName\": \"index\",\n                            \"portDirection\": \"input\",\n                            \"portType\": \"long\"\n                        }\n                    ],\n                    \"compoundNodes\": [\n                        {\n                            \"nodeName\": \"get_from_array4\",\n                            \"nodeType\": \"Core::Array::get_from_array\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"43.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-89.2141 75.2838\"\n                                }\n                            ]\n                        },\n                        {\n                            \"nodeName\": \"remove_from_array\",\n                            \"nodeType\": \"Core::Array::remove_from_array\",\n                            \"fanInPortNames\": {\n                                \"indices_to_remove\": [\n                                    \"index\"\n                                ]\n                            },\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"DisplayMode\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"2\"\n                                },\n                                {\n                                    \"metaName\": \"zValue\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"42.000000\"\n                                },\n                                {\n                                    \"metaName\": \"LayoutPos\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"-104.484 -183.662\"\n                                }\n                            ]\n                        }\n                    ],\n                    \"connections\": [\n                        {\n                            \"source\": \".output\",\n                            \"target\": \"get_from_array4.array\"\n                        },\n                        {\n                            \"source\": \"get_from_array4.value\",\n                            \"target\": \".value\"\n"
		+ "                        },\n                        {\n                            \"source\": \".output\",\n                            \"target\": \"remove_from_array.array\"\n                        },\n                        {\n                            \"source\": \"remove_from_array.out_array\",\n                            \"target\": \".out_array\"\n                        },\n                        {\n                            \"source\": \".index\",\n                            \"target\": \"get_from_array4.index\"\n                        },\n                        {\n                            \"source\": \".index\",\n                            \"target\": \"remove_from_array.indices_to_remove.index\"\n                        }\n                    ],\n                    \"values\": [\n                        {\n                            \"valueName\": \"remove_from_array.preserve_order\",\n                            \"valueType\": \"bool\",\n                            \"value\": \"false\"\n                        }\n                    ],\n                    \"reservedNodeNames\": [\n"
		+ "                        {\n                            \"name\": \"input\"\n                        },\n                        {\n                            \"name\": \"output\"\n                        }\n                    ]\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"rigid_body_constraint\",\n                    \"nodeType\": \"Bullet::Constrain::rigid_body_constraint\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Frames\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"Common\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"384 -475\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"53.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"bullet_simulation_settings\",\n                    \"nodeType\": \"Bullet::bullet_simulation_settings\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3709 -623\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"56.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"terminal\",\n                    \"nodeType\": \"Core::Graph::terminal\",\n                    \"fanInPortNames\": {\n                        \"final\": [],\n                        \"proxy\": [],\n                        \"diagnostic\": [\n                            \"out_objects\"\n                        ]\n                    },\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n"
		+ "                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::proxy\",\n                            \"enabled\": \"false\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::final\",\n                            \"enabled\": \"false\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"diagnostic\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                }\n"
		+ "                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"5470 -877\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"70.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_from_array\",\n                    \"nodeType\": \"Core::Array::get_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-125 -351\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"43.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_from_array1\",\n                    \"nodeType\": \"Core::Array::get_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-138 -157\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"45.000000\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"subtract\",\n                    \"nodeType\": \"Core::Math::subtract\",\n                    \"multiInPortNames\": [\n                        \"value\",\n                        \"value1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"141 -303\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"44.000000\"\n                        }\n                    ]\n                },\n                {\n"
		+ "                    \"nodeName\": \"rigid_body_constraint1\",\n                    \"nodeType\": \"Bullet::Constrain::rigid_body_constraint\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Frames\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Common\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n"
		+ "                        {\n                            \"metaName\": \"NodeValueDisplay\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"{type} constraint ({rigid_body_a} : {rigid_body_b})\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"488 219\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"42.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"sequence_array\",\n                    \"nodeType\": \"Core::Array::sequence_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1028 394\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"40.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"sequence_array1\",\n                    \"nodeType\": \"Core::Array::sequence_array\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1022 192\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"39.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"build_array6\",\n                    \"nodeType\": \"Core::Array::build_array\",\n                    \"multiInPortNames\": [\n                        \"sequence\",\n                        \"sequence1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-737 271\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"38.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"increment\",\n                    \"nodeType\": \"Core::Math::increment\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"-449 353\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"41.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"subtract1\",\n                    \"nodeType\": \"Core::Math::subtract\",\n                    \"multiInPortNames\": [\n                        \"value\",\n                        \"value1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"156 424\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"34.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_from_array2\",\n                    \"nodeType\": \"Core::Array::get_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-114 547\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"33.000000\"\n                        }\n                    ]\n                },\n"
		+ "                {\n                    \"nodeName\": \"get_from_array3\",\n                    \"nodeType\": \"Core::Array::get_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-117 371\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"32.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"build_array7\",\n                    \"nodeType\": \"Core::Array::build_array\",\n                    \"multiInPortNames\": [\n                        \"constraint\",\n"
		+ "                        \"constraint1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"822 -516\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"31.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep\",\n                    \"nodeType\": \"prep\",\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n"
		+ "                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-897 -745\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"72.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"constraint_motors\",\n                    \"nodeType\": \"Bullet::Constrain::constraint_motors\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Motors.Linear\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Motors.Angular\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Motors\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Springs\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"206 809\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"36.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"sequence_array2\",\n                    \"nodeType\": \"Core::Array::sequence_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"-367 809\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"37.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"build_array8\",\n                    \"nodeType\": \"Core::Array::build_array\",\n                    \"multiInPortNames\": [\n                        \"sequence\",\n                        \"sequence1\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-64 809\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"35.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"body_relationships\",\n                    \"nodeType\": \"body_relationships\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-420 -484\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"49.000000\"\n                        }\n"
		+ "                    ]\n                },\n                {\n                    \"nodeName\": \"transform_cache\",\n                    \"nodeType\": \"transform_cache\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2040 -451\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"54.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"for_each\",\n                    \"nodeType\": \"for_each\",\n                    \"terminalStates\": [\n                        {\n"
		+ "                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2385 -863\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"55.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"post_process\",\n                    \"nodeType\": \"post_process\",\n                    \"metadata\": [\n                        {\n"
		+ "                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"4664 -971\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"67.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"source_rigid_bodies3\",\n                    \"nodeType\": \"Bullet::RBD::source_rigid_bodies\",\n                    \"fanInPortNames\": {\n                        \"geometry\": [\n                            \"out_mesh\"\n                        ],\n                        \"constraints\": [\n                            \"array\"\n                        ]\n                    },\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1074 -751\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"46.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"simulate_bullet1\",\n                    \"nodeType\": \"Bullet::simulate_bullet\",\n                    \"fanInPortNames\": {\n                        \"sources\": [\n                            \"source\",\n                            \"out_points\"\n                        ]\n                    },\n"
		+ "                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::final\",\n                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::proxy\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"sources\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3993 -859\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"57.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"source_rigid_bodies\",\n                    \"nodeType\": \"Bullet::RBD::source_rigid_bodies\",\n                    \"fanInPortNames\": {\n                        \"geometry\": [\n                            \"out_mesh\"\n                        ],\n                        \"constraints\": []\n                    },\n                    \"metadata\": [\n"
		+ "                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Default Properties\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"geometry\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3843 57\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"64.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"compound\",\n                    \"nodeType\": \"compound\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"NodeValueDisplay\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"launch on frame {frame}\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3565 299\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"58.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh\",\n                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Properties\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3565 36\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"65.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"primitive_collision_shape\",\n                    \"nodeType\": \"Bullet::Collision::primitive_collision_shape\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Primitive.Box\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Primitive.Sphere\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"Primitive\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3259 208\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"62.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"compute_bounding_sphere\",\n                    \"nodeType\": \"Geometry::Common::compute_bounding_sphere\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"3027 226\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"60.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_point_position\",\n                    \"nodeType\": \"Geometry::Properties::get_point_position\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2764 235\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"59.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"rotate_by_quaternion\",\n                    \"nodeType\": \"Core::Math::rotate_by_quaternion\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"3256 407\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"63.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"matrix_to_SRT\",\n                    \"nodeType\": \"Core::Math::matrix_to_SRT\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2740 414\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"61.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"build_array\",\n                    \"nodeType\": \"Core::Array::build_array\",\n                    \"multiInPortNames\": [\n                        \"out_geometry\",\n                        \"value\"\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"4937 -779\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"68.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"pop_from_array\",\n                    \"nodeType\": \"pop_from_array\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"4290.26 -880.392\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"73.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"memory_cache\",\n                    \"nodeType\": \"Simulation::Common::memory_cache\",\n                    \"fanInPortNames\": {\n                        \"objects\": [\n                            \"array\"\n                        ]\n                    },\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"80.000000\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"5192.16 -822.092\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"objects\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                }\n                            ]\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \"get_from_array.value\",\n                    \"target\": \"subtract.first.value\"\n                },\n                {\n                    \"source\": \"get_from_array1.value\",\n                    \"target\": \"subtract.first.value1\"\n                },\n"
		+ "                {\n                    \"source\": \"subtract.output\",\n                    \"target\": \"rigid_body_constraint.pivot_b\"\n                },\n                {\n                    \"source\": \"sequence_array1.sequence\",\n                    \"target\": \"build_array6.first.sequence\"\n                },\n                {\n                    \"source\": \"sequence_array.sequence\",\n                    \"target\": \"build_array6.first.sequence1\"\n                },\n                {\n                    \"source\": \"build_array6.array\",\n                    \"target\": \"increment.value\"\n                },\n                {\n                    \"source\": \"build_array6.array\",\n                    \"target\": \"rigid_body_constraint1.rigid_body_a\"\n                },\n                {\n                    \"source\": \"increment.output\",\n                    \"target\": \"rigid_body_constraint1.rigid_body_b\"\n                },\n                {\n                    \"source\": \"get_from_array2.value\",\n                    \"target\": \"subtract1.first.value1\"\n"
		+ "                },\n                {\n                    \"source\": \"get_from_array3.value\",\n                    \"target\": \"subtract1.first.value\"\n                },\n                {\n                    \"source\": \"build_array6.array\",\n                    \"target\": \"get_from_array3.index\"\n                },\n                {\n                    \"source\": \"increment.output\",\n                    \"target\": \"get_from_array2.index\"\n                },\n                {\n                    \"source\": \"subtract1.output\",\n                    \"target\": \"rigid_body_constraint1.pivot_b\"\n                },\n                {\n                    \"source\": \"rigid_body_constraint.constraint\",\n                    \"target\": \"build_array7.first.constraint\"\n                },\n                {\n                    \"source\": \"rigid_body_constraint1.constraint\",\n                    \"target\": \"build_array7.first.constraint1\"\n                },\n                {\n                    \"source\": \"constraint_motors.motors\",\n                    \"target\": \"rigid_body_constraint1.motors\"\n"
		+ "                },\n                {\n                    \"source\": \"sequence_array2.sequence\",\n                    \"target\": \"build_array8.first.sequence\"\n                },\n                {\n                    \"source\": \"sequence_array2.sequence\",\n                    \"target\": \"build_array8.first.sequence1\"\n                },\n                {\n                    \"source\": \"build_array8.array\",\n                    \"target\": \"constraint_motors.angular_force\"\n                },\n                {\n                    \"source\": \"prep.center\",\n                    \"target\": \"get_from_array.array\"\n                },\n                {\n                    \"source\": \"prep.center\",\n                    \"target\": \"get_from_array1.array\"\n                },\n                {\n                    \"source\": \"prep.center\",\n                    \"target\": \"get_from_array3.array\"\n                },\n                {\n                    \"source\": \"prep.center\",\n                    \"target\": \"get_from_array2.array\"\n                },\n"
		+ "                {\n                    \"source\": \"body_relationships.x\",\n                    \"target\": \"rigid_body_constraint.rigid_body_a\"\n                },\n                {\n                    \"source\": \"body_relationships.x\",\n                    \"target\": \"get_from_array.index\"\n                },\n                {\n                    \"source\": \"body_relationships.y\",\n                    \"target\": \"rigid_body_constraint.rigid_body_b\"\n                },\n                {\n                    \"source\": \"body_relationships.y\",\n                    \"target\": \"get_from_array1.index\"\n                },\n                {\n                    \"source\": \".worldMatrix_array\",\n                    \"target\": \"transform_cache.worldMatrix_array\"\n                },\n                {\n                    \"source\": \"transform_cache.array\",\n                    \"target\": \"for_each.xform_cache\"\n                },\n                {\n                    \"source\": \"prep.out_mesh\",\n                    \"target\": \"source_rigid_bodies3.geometry.out_mesh\"\n"
		+ "                },\n                {\n                    \"source\": \"build_array7.array\",\n                    \"target\": \"source_rigid_bodies3.constraints.array\"\n                },\n                {\n                    \"source\": \"source_rigid_bodies3.source\",\n                    \"target\": \"for_each.source\"\n                },\n                {\n                    \"source\": \"bullet_simulation_settings.settings\",\n                    \"target\": \"simulate_bullet1.settings\"\n                },\n                {\n                    \"source\": \".outMesh_array\",\n                    \"target\": \"prep.mesh\"\n                },\n                {\n                    \"source\": \".projectile_outMesh\",\n                    \"target\": \"prep_rigid_body_mesh.mesh\"\n                },\n                {\n                    \"source\": \".projectile_worldMatrix\",\n                    \"target\": \"prep_rigid_body_mesh.transform\"\n                },\n                {\n                    \"source\": \"source_rigid_bodies.source\",\n                    \"target\": \"simulate_bullet1.sources.source\"\n"
		+ "                },\n                {\n                    \"source\": \"for_each.out_points\",\n                    \"target\": \"simulate_bullet1.sources.out_points\"\n                },\n                {\n                    \"source\": \"compound.output\",\n                    \"target\": \"prep_rigid_body_mesh.enabled\"\n                },\n                {\n                    \"source\": \"prep_rigid_body_mesh.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh\"\n                },\n                {\n                    \"source\": \"primitive_collision_shape.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh.collision_shape\"\n                },\n                {\n                    \"source\": \".projectile_outMesh\",\n                    \"target\": \"get_point_position.geometry\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"compute_bounding_sphere.positions\"\n                },\n                {\n                    \"source\": \"compute_bounding_sphere.radius\",\n"
		+ "                    \"target\": \"primitive_collision_shape.radius\"\n                },\n                {\n                    \"source\": \".projectile_worldMatrix\",\n                    \"target\": \"matrix_to_SRT.transform\"\n                },\n                {\n                    \"source\": \"matrix_to_SRT.quaternion\",\n                    \"target\": \"rotate_by_quaternion.quaternion\"\n                },\n                {\n                    \"source\": \"rotate_by_quaternion.rotated_vector\",\n                    \"target\": \"prep_rigid_body_mesh.linear_velocity\"\n                },\n                {\n                    \"source\": \"post_process.out_geometry\",\n                    \"target\": \"build_array.first.out_geometry\"\n                },\n                {\n                    \"source\": \"simulate_bullet1.output\",\n                    \"target\": \"pop_from_array.output\"\n                },\n                {\n                    \"source\": \"pop_from_array.value\",\n                    \"target\": \"build_array.first.value\"\n                },\n                {\n"
		+ "                    \"source\": \"pop_from_array.out_array\",\n                    \"target\": \"post_process.output\"\n                },\n                {\n                    \"source\": \"build_array.array\",\n                    \"target\": \"memory_cache.objects.array\"\n                },\n                {\n                    \"source\": \"memory_cache.out_objects\",\n                    \"target\": \"terminal.diagnostic.out_objects\"\n                }\n            ],\n            \"values\": [\n                {\n                    \"valueName\": \"rigid_body_constraint.type\",\n                    \"valueType\": \"uint\",\n                    \"value\": \"1U\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint.breaking_threshold\",\n                    \"valueType\": \"float\",\n                    \"value\": \"10f\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint.world_space\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n"
		+ "                    \"valueName\": \"rigid_body_constraint.disable_collision\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint.update\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.gravity_vector\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"-60f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.substeps\",\n                    \"valueType\": \"uint\",\n                    \"value\": \"20U\"\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.default_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n"
		+ "                        \"mass\": \"1f\",\n                        \"friction\": \"1f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n                        \"angular_damping\": \"0.00999999978f\"\n                    }\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.ground\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint1.type\",\n                    \"valueType\": \"uint\",\n                    \"value\": \"0U\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint1.breaking_threshold\",\n                    \"valueType\": \"float\",\n                    \"value\": \"10f\"\n                },\n                {\n                    \"valueName\": \"rigid_body_constraint1.disable_collision\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n"
		+ "                {\n                    \"valueName\": \"rigid_body_constraint1.update\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"sequence_array.size\",\n                    \"valueType\": \"long\",\n                    \"value\": \"6\"\n                },\n                {\n                    \"valueName\": \"sequence_array.start\",\n                    \"valueType\": \"long\",\n                    \"value\": \"16\"\n                },\n                {\n                    \"valueName\": \"sequence_array.step\",\n                    \"valueType\": \"long\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"valueName\": \"sequence_array1.size\",\n                    \"valueType\": \"long\",\n                    \"value\": \"6\"\n                },\n                {\n                    \"valueName\": \"sequence_array1.start\",\n                    \"valueType\": \"long\",\n                    \"value\": \"9\"\n                },\n                {\n"
		+ "                    \"valueName\": \"sequence_array1.step\",\n                    \"valueType\": \"long\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"valueName\": \"prep.mesh\",\n                    \"valueType\": \"Object\",\n                    \"value\": {}\n                },\n                {\n                    \"valueName\": \"prep.mass_scalar\",\n                    \"valueType\": \"float\",\n                    \"value\": \"2f\"\n                },\n                {\n                    \"valueName\": \"prep.base_mass\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"constraint_motors.linear_stiffness\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.linear_damping\",\n"
		+ "                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_stiffness\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"31070000f\",\n                        \"y\": \"31070000f\",\n                        \"z\": \"31070000f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_damping\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_force\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n"
		+ "                        \"x\": \"17.7199993f\",\n                        \"y\": \"17.7199993f\",\n                        \"z\": \"17.7199993f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_velocity\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"1633f\",\n                        \"y\": \"1633f\",\n                        \"z\": \"1633f\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_servo\",\n                    \"valueType\": \"Math::bool3\",\n                    \"value\": {\n                        \"x\": \"true\",\n                        \"y\": \"true\",\n                        \"z\": \"true\"\n                    }\n                },\n                {\n                    \"valueName\": \"constraint_motors.angular_target\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n"
		+ "                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"sequence_array2.size\",\n                    \"valueType\": \"long\",\n                    \"value\": \"6\"\n                },\n                {\n                    \"valueName\": \"sequence_array2.start\",\n                    \"valueType\": \"float\",\n                    \"value\": \"34.9099998f\"\n                },\n                {\n                    \"valueName\": \"sequence_array2.step\",\n                    \"valueType\": \"float\",\n                    \"value\": \"-4.2750001f\"\n                },\n                {\n                    \"valueName\": \"transform_cache.cached\",\n                    \"valueType\": \"array<array<Math::float4x4>>\",\n                    \"value\": []\n                },\n                {\n                    \"valueName\": \"transform_cache.reset_frame\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n                {\n                    \"valueName\": \"for_each.max_iterations\",\n"
		+ "                    \"valueType\": \"long\",\n                    \"value\": \"10\"\n                },\n                {\n                    \"valueName\": \"for_each.seed\",\n                    \"valueType\": \"long\",\n                    \"value\": \"20\"\n                },\n                {\n                    \"valueName\": \"post_process.output\",\n                    \"valueType\": \"array<Object>\",\n                    \"value\": []\n                },\n                {\n                    \"valueName\": \"source_rigid_bodies3.update_source\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"source_rigid_bodies3.initial_state\",\n                    \"valueType\": \"uchar\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"valueName\": \"source_rigid_bodies3.fallback_collision_shape\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n                {\n                    \"valueName\": \"source_rigid_bodies.enabled\",\n"
		+ "                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"compound.frame\",\n                    \"valueType\": \"float\",\n                    \"value\": \"400f\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh.linear_velocity\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"200f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n                        \"mass\": \"10f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n                        \"angular_damping\": \"0.00999999978f\"\n                    }\n"
		+ "                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh.enabled\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"primitive_collision_shape.shape_type\",\n                    \"valueType\": \"long\",\n                    \"value\": \"5\"\n                },\n                {\n                    \"valueName\": \"rotate_by_quaternion.vector\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"200f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"pop_from_array.output\",\n                    \"valueType\": \"array<Object>\",\n                    \"value\": []\n                },\n                {\n                    \"valueName\": \"pop_from_array.index\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n"
		+ "                {\n                    \"valueName\": \"memory_cache.active_frame_range\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                }\n            ],\n            \"reservedNodeNames\": [\n                {\n                    \"name\": \"Input_by_Path\"\n                },\n                {\n                    \"name\": \"input\"\n                },\n                {\n                    \"name\": \"input1\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr ".dirtyFlag" yes;
	setAttr -s 27 ".outMesh_array";
	setAttr -k on ".outMesh_array[0]";
	setAttr -k on ".outMesh_array[1]";
	setAttr -k on ".outMesh_array[2]";
	setAttr -k on ".outMesh_array[3]";
	setAttr -k on ".outMesh_array[4]";
	setAttr -k on ".outMesh_array[5]";
	setAttr -k on ".outMesh_array[6]";
	setAttr -k on ".outMesh_array[7]";
	setAttr -k on ".outMesh_array[8]";
	setAttr -k on ".outMesh_array[9]";
	setAttr -k on ".outMesh_array[10]";
	setAttr -k on ".outMesh_array[11]";
	setAttr -k on ".outMesh_array[12]";
	setAttr -k on ".outMesh_array[13]";
	setAttr -k on ".outMesh_array[14]";
	setAttr -k on ".outMesh_array[15]";
	setAttr -k on ".outMesh_array[16]";
	setAttr -k on ".outMesh_array[17]";
	setAttr -k on ".outMesh_array[18]";
	setAttr -k on ".outMesh_array[19]";
	setAttr -k on ".outMesh_array[20]";
	setAttr -k on ".outMesh_array[21]";
	setAttr -k on ".outMesh_array[22]";
	setAttr -k on ".outMesh_array[23]";
	setAttr -k on ".outMesh_array[24]";
	setAttr -k on ".outMesh_array[25]";
	setAttr -k on ".outMesh_array[26]";
	setAttr -k on ".outMesh_array";
	setAttr -s 4 ".worldMatrix_array";
	setAttr -k on ".worldMatrix_array[0]";
	setAttr -k on ".worldMatrix_array[1]";
	setAttr -k on ".worldMatrix_array[2]";
	setAttr -k on ".worldMatrix_array[3]";
	setAttr -k on ".worldMatrix_array";
	setAttr -k on ".projectile_worldMatrix";
	setAttr -k on ".projectile_outMesh";
	setAttr -k on ".JobPorts__time";
createNode transform -n "robot";
	rename -uid "92B7AE9A-469C-D07F-9B85-0D9AFB758B91";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.801637169624365e-15 2.4786001803883049 3.1104420923626252e-30 ;
	setAttr ".sp" -type "double3" -2.801637169624365e-15 2.4786001803883049 3.1104420923626252e-30 ;
createNode mesh -n "robotShape" -p "robot";
	rename -uid "11C633BB-4E3B-9DE9-5B2F-83BE8081A329";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.63214285714285712 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.38347071 0.30773896
		 0.61652929 0.30773896 0.38347071 0.4699409 0.61652929 0.4699409 0.38347071 0.63214284
		 0.61652929 0.63214284 0.38347071 0.79434484 0.61652929 0.79434484 0.38347071 0.95654678
		 0.61652929 0.95654678 0.84958792 0.30773896 0.84958792 0.4699409 0.15041208 0.30773896
		 0.15041208 0.4699409;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.3965054 2.7622261 -0.84056431 
		0.39650539 2.7622261 -0.15943572 -0.39650539 1.7622261 -0.84056431 -1.3965054 1.7622261 
		-0.15943572 -0.39650539 2.1949742 0.15943572 -1.3965054 2.1949742 0.84056431 1.3965054 
		3.1949744 0.15943572 0.39650539 3.1949744 0.84056431;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
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
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_01" -p "robot";
	rename -uid "654549B1-4A43-3312-9CFE-A88F9B4FE3B5";
	setAttr ".rp" -type "double3" 0.58407069463398076 1.3172967325108433 -0.026157909553117375 ;
	setAttr ".sp" -type "double3" 0.58407069463398076 1.3172967325108433 -0.026157909553117375 ;
createNode mesh -n "part_Shape1" -p "part_01";
	rename -uid "434243A3-46A1-8BA0-C992-4183977AC483";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39308977 0.94843745
		 0.39308977 0.31048036 0.60691017 0.94843745 0.62818098 0.3104803 0.3930898 0.46719956
		 0.60691023 0.46719956 0.62818104 0.46719956 0.16206381 0.3104803 0.39308977 0.62403357
		 0.60691017 0.62403357 0.83793616 0.46719956 0.83793616 0.31048036 0.60691017 0.80245411
		 0.3930898 0.79160351 0.60691017 0.79160345 0.60691011 0.31048036 0.39308977 0.47805017
		 0.60691017 0.47805017 0.39308983 0.63488418 0.60691035 0.63488418 0.39308977 0.80245411
		 0.37181902 0.31048036 0.37181896 0.46719956 0.16206384 0.46719956 0.38347071 0.95143336
		 0.37612349 0.30773896 0.38949305 0.30773896 0.38949305 0.95654678 0.38246971 0.31046635
		 0.62387651 0.30773896 0.61652929 0.95143336 0.61753023 0.31046635 0.61050695 0.95654678
		 0.61050695 0.30773896 0.37612349 0.4699409 0.38347071 0.47505432 0.38246971 0.46721351
		 0.3929686 0.47252446 0.61652929 0.47505432 0.62387651 0.4699409 0.60703146 0.4725244
		 0.61753035 0.46721351 0.15041208 0.46825802 0.38347071 0.63382578 0.38347071 0.62702942
		 0.15775931 0.4699409 0.39296862 0.62955934 0.61652929 0.63382578 0.84958792 0.46825802
		 0.60703146 0.62955934 0.84224069 0.4699409 0.61652929 0.62702942 0.15775931 0.30773896
		 0.38347071 0.79945821 0.38347071 0.79266191 0.15041208 0.30942184 0.3929686 0.79692835
		 0.61652929 0.79945821 0.84224069 0.30773896 0.60703135 0.79692835 0.84958792 0.30942184
		 0.61652929 0.79266191 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.29738486 0.38435292 -0.40267742 0.29738486 0.37502414 -0.38015577
		 0.27486321 0.38435292 -0.38015577 0.26553443 0.40687457 -0.38015577 0.27486321 0.40687457 -0.40267742
		 0.29738486 0.40687457 -0.4120062 0.29738486 0.38435292 0.35036159 0.29738486 0.40687457 0.35969037
		 0.27486321 0.40687457 0.35036159 0.26553443 0.40687457 0.32783994 0.27486321 0.38435292 0.32783994
		 0.29738486 0.37502414 0.32783994 0.29738486 2.25024056 -0.40267742 0.29738486 2.22771907 -0.4120062
		 0.27486321 2.22771907 -0.40267742 0.26553443 2.22771907 -0.38015577 0.27486321 2.25024056 -0.38015577
		 0.29738486 2.25956941 -0.38015577 0.29738486 2.25024056 0.35036159 0.29738486 2.25956941 0.32783994
		 0.27486321 2.25024056 0.32783994 0.26553443 2.22771907 0.32783994 0.27486321 2.22771907 0.35036159
		 0.29738486 2.22771907 0.35969037 0.89327818 2.22771907 -0.40267742 0.87075651 2.22771907 -0.4120062
		 0.87075651 2.25024056 -0.40267742 0.87075651 2.25956941 -0.38015577 0.89327818 2.25024056 -0.38015577
		 0.90260696 2.22771907 -0.38015577 0.89327818 2.22771907 0.35036159 0.90260696 2.22771907 0.32783994
		 0.89327818 2.25024056 0.32783994 0.87075651 2.25956941 0.32783994 0.87075651 2.25024056 0.35036159
		 0.87075651 2.22771907 0.35969037 0.87075651 0.38435292 -0.40267742 0.87075651 0.40687457 -0.4120062
		 0.89327818 0.40687457 -0.40267742 0.90260696 0.40687457 -0.38015577 0.89327818 0.38435292 -0.38015577
		 0.87075651 0.37502414 -0.38015577 0.87075651 0.38435292 0.35036159 0.87075651 0.37502414 0.32783994
		 0.89327818 0.38435292 0.32783994 0.90260696 0.40687457 0.32783994 0.89327818 0.40687457 0.35036159
		 0.87075651 0.40687457 0.35969037 0.27900243 0.38849214 -0.3985382 0.27900243 0.38849214 0.34622237
		 0.27900243 2.24610138 -0.3985382 0.27900243 2.24610138 0.34622237 0.88913894 2.24610138 -0.3985382
		 0.88913894 2.24610138 0.34622237 0.88913894 0.38849214 -0.3985382 0.88913894 0.38849214 0.34622237;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_02" -p "part_01";
	rename -uid "79C47EBE-4D1F-7002-DD59-4EA2C8E2B23E";
	setAttr ".rp" -type "double3" 0.68407069463398096 0.21187362816216326 0.16114072074182431 ;
	setAttr ".sp" -type "double3" 0.68407069463398096 0.21187362816216326 0.16114072074182431 ;
createNode mesh -n "part_Shape2" -p "part_02";
	rename -uid "76946789-4FBF-E398-FCB6-11A87D3044EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.38613048 0.95426923
		 0.38613048 0.31584823 0.61386955 0.95426923 0.6198017 0.31584823 0.38613045 0.46183157
		 0.61386955 0.46183157 0.6198017 0.46183157 0.15368456 0.31584823 0.38613048 0.62986535
		 0.61386955 0.62986535 0.84631538 0.46183157 0.8463155 0.31584823 0.61386955 0.79662234
		 0.38613048 0.78623551 0.61386955 0.78623551 0.61386955 0.31584823 0.38613045 0.47221839
		 0.61386955 0.47221839 0.38613048 0.64025217 0.61386955 0.64025211 0.38613048 0.79662228
		 0.38019824 0.31584823 0.38019827 0.46183157 0.15368456 0.46183157 0.38347071 0.95515186
		 0.38146636 0.30773896 0.38509637 0.30773896 0.38509637 0.95654678 0.38317832 0.31572396
		 0.61853361 0.30773896 0.61652929 0.95515186 0.61682171 0.3157239 0.61490363 0.95654678
		 0.61490363 0.30773896 0.38146636 0.4699409 0.38347071 0.47133583 0.38317832 0.4619559
		 0.38612133 0.46705461 0.61652929 0.47133583 0.61853361 0.4699409 0.61387867 0.46705461
		 0.61682171 0.4619559 0.15041208 0.46482748 0.38347071 0.63725626 0.38347071 0.63074791
		 0.15241647 0.4699409 0.38612136 0.63502914 0.61652929 0.63725626 0.84958792 0.46482748
		 0.61387867 0.63502908 0.84758353 0.4699409 0.61652929 0.63074791 0.15241647 0.30773896
		 0.38347071 0.79573977 0.38347071 0.78923136 0.15041208 0.31285232 0.38612136 0.79145855
		 0.61652929 0.79573977 0.84758353 0.30773896 0.61387867 0.79145855 0.84958792 0.31285232
		 0.61652929 0.78923136 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.085838206 0.044066176 -0.59109348 0.085838206 0.039003432 -0.57887095
		 0.073615655 0.044066176 -0.57887095 0.068552911 0.056288723 -0.57887095 0.073615655 0.056288723 -0.59109348
		 0.085838206 0.056288723 -0.59615624 0.085838206 0.044066176 0.9133749 0.085838206 0.056288723 0.91843766
		 0.073615655 0.056288723 0.9133749 0.068552911 0.056288723 0.90115237 0.073615655 0.044066176 0.90115237
		 0.085838206 0.039003432 0.90115237 0.085838206 0.37968111 -0.59109348 0.085838206 0.36745855 -0.59615624
		 0.073615655 0.36745855 -0.59109348 0.068552911 0.36745855 -0.57887095 0.073615655 0.37968111 -0.57887095
		 0.085838206 0.38474384 -0.57887095 0.085838206 0.37968111 0.9133749 0.085838206 0.38474384 0.90115237
		 0.073615655 0.37968111 0.90115237 0.068552911 0.36745855 0.90115237 0.073615655 0.36745855 0.9133749
		 0.085838206 0.36745855 0.91843766 1.29452574 0.36745855 -0.59109348 1.28230321 0.36745855 -0.59615624
		 1.28230321 0.37968111 -0.59109348 1.28230321 0.38474384 -0.57887095 1.29452574 0.37968111 -0.57887095
		 1.29958856 0.36745855 -0.57887095 1.29452562 0.36745855 0.91337496 1.29958844 0.36745855 0.90115243
		 1.29452562 0.37968111 0.90115243 1.28230309 0.38474384 0.90115243 1.28230309 0.37968111 0.91337496
		 1.28230309 0.36745855 0.91843772 1.28230321 0.044066176 -0.59109348 1.28230321 0.056288723 -0.59615624
		 1.29452574 0.056288723 -0.59109348 1.29958856 0.056288723 -0.57887095 1.29452574 0.044066176 -0.57887095
		 1.28230321 0.039003432 -0.57887095 1.28230309 0.044066176 0.91337496 1.28230309 0.039003432 0.90115243
		 1.29452562 0.044066176 0.90115243 1.29958844 0.056288723 0.90115243 1.29452562 0.056288723 0.91337496
		 1.28230309 0.056288723 0.91843772 0.07586202 0.046312541 -0.58884716 0.07586202 0.046312541 0.91112858
		 0.07586202 0.37743473 -0.58884716 0.07586202 0.37743473 0.91112858 1.29227948 0.37743473 -0.58884716
		 1.29227936 0.37743473 0.91112864 1.29227948 0.046312541 -0.58884716 1.29227936 0.046312541 0.91112864;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "part_01_parentConstraint1" -p "part_01";
	rename -uid "08C665E7-4CBC-A431-D228-02B3EC763324";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.016821515053233038 -0.92580773839925401 
		-0.0052575624827774885 ;
	setAttr ".lr" -type "double3" 3.9153364521071081 -8.1783719068356415 -1.845040496629478 ;
	setAttr ".rst" -type "double3" 0 1.1256093683797985e-05 0 ;
	setAttr -k on ".w0";
createNode transform -n "part_03" -p "robot";
	rename -uid "5FB78331-4328-AA1F-E4E9-37B9E4C3FF3E";
	setAttr ".rp" -type "double3" 0 2.9854936124907887 0 ;
	setAttr ".sp" -type "double3" 0 2.9854936124907887 0 ;
createNode mesh -n "part_Shape3" -p "part_03";
	rename -uid "BD5BD7B4-4E35-7EF9-E37F-479EBACA9DDE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39448383 0.95360386
		 0.39448383 0.31584823 0.60551608 0.95360386 0.62075776 0.31584823 0.39448383 0.46183157
		 0.6055162 0.46183157 0.62075776 0.46183157 0.15464059 0.31584823 0.39448383 0.62919998
		 0.60551608 0.62919998 0.84535944 0.46183157 0.84535944 0.31584823 0.6055159 0.79728776
		 0.39448383 0.78623551 0.6055162 0.78623551 0.6055162 0.31584823 0.39448389 0.47288382
		 0.60551602 0.47288382 0.39448383 0.64025217 0.6055162 0.64025217 0.39448401 0.79728776
		 0.37924221 0.31584823 0.37924221 0.46183157 0.15464059 0.46183157 0.38347071 0.95473832
		 0.38087231 0.30773896 0.39039961 0.30773896 0.39039961 0.95654678 0.38670847 0.31572396
		 0.61912763 0.30773896 0.61652929 0.95473832 0.61329156 0.31572396 0.60960042 0.95654678
		 0.60960042 0.30773896 0.38087231 0.4699409 0.38347071 0.47174931 0.38670847 0.46195585
		 0.39432454 0.46746874 0.61652929 0.47174931 0.61912763 0.4699409 0.6056754 0.46746874
		 0.61329156 0.4619559 0.15041208 0.46482742 0.38347071 0.63725632 0.38347071 0.63033444
		 0.15301049 0.4699409 0.39432451 0.634615 0.61652929 0.63725632 0.84958792 0.46482742
		 0.60567546 0.634615 0.84698951 0.4699409 0.61652929 0.63033444 0.15301049 0.30773896
		 0.38347071 0.79615319 0.38347071 0.78923136 0.15041208 0.31285238 0.3943246 0.79187268
		 0.61652929 0.79615319 0.84698951 0.30773896 0.60567534 0.79187268 0.84958792 0.31285238
		 0.61652929 0.78923136 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.76313561 2.70653677 -0.29562062 -0.76313561 2.69812059 -0.27530232
		 -0.78345394 2.70653677 -0.27530232 -0.79187006 2.72685504 -0.27530232 -0.78345394 2.72685504 -0.29562062
		 -0.76313561 2.72685504 -0.30403674 -0.76313567 2.70653677 0.29562062 -0.76313567 2.72685504 0.30403674
		 -0.783454 2.72685504 0.29562062 -0.79187012 2.72685504 0.27530232 -0.783454 2.70653677 0.27530232
		 -0.76313567 2.69812059 0.27530232 -0.76313561 3.26445031 -0.29562062 -0.76313561 3.24413204 -0.30403674
		 -0.78345394 3.24413204 -0.29562062 -0.79187006 3.24413204 -0.27530232 -0.78345394 3.26445031 -0.27530232
		 -0.76313561 3.27286649 -0.27530232 -0.76313567 3.26445031 0.29562062 -0.76313567 3.27286649 0.27530232
		 -0.783454 3.26445031 0.27530232 -0.79187012 3.24413204 0.27530232 -0.783454 3.24413204 0.29562062
		 -0.76313567 3.24413204 0.30403674 0.783454 3.24413204 -0.29562062 0.76313567 3.24413204 -0.30403674
		 0.76313567 3.26445031 -0.29562062 0.76313567 3.27286649 -0.27530232 0.783454 3.26445031 -0.27530232
		 0.79187012 3.24413204 -0.27530232 0.78345394 3.24413204 0.29562062 0.79187006 3.24413204 0.27530232
		 0.78345394 3.26445031 0.27530232 0.76313561 3.27286649 0.27530232 0.76313561 3.26445031 0.29562062
		 0.76313561 3.24413204 0.30403674 0.76313567 2.70653677 -0.29562062 0.76313567 2.72685504 -0.30403674
		 0.783454 2.72685504 -0.29562062 0.79187012 2.72685504 -0.27530232 0.783454 2.70653677 -0.27530232
		 0.76313567 2.69812059 -0.27530232 0.76313561 2.70653677 0.29562062 0.76313561 2.69812059 0.27530232
		 0.78345394 2.70653677 0.27530232 0.79187006 2.72685504 0.27530232 0.78345394 2.72685504 0.29562062
		 0.76313561 2.72685504 0.30403674 -0.77971965 2.71027088 -0.29188636 -0.77971971 2.71027088 0.29188636
		 -0.77971965 3.2607162 -0.29188636 -0.77971971 3.2607162 0.29188636 0.77971971 3.2607162 -0.29188636
		 0.77971965 3.2607162 0.29188636 0.77971971 2.71027088 -0.29188636 0.77971965 2.71027088 0.29188636;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_04" -p "part_03";
	rename -uid "040E613E-4A49-36A4-546C-B8B5ACE0AE6B";
	setAttr ".rp" -type "double3" 0 3.9209628791801543 0 ;
	setAttr ".sp" -type "double3" 0 3.9209628791801543 0 ;
createNode mesh -n "part_Shape4" -p "part_04";
	rename -uid "36C80900-43A3-E6F0-684F-5BAD5BE00294";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39512247 0.95242447
		 0.39512247 0.31419355 0.60487753 0.95242447 0.62245244 0.31419361 0.39512247 0.46348625
		 0.60487753 0.46348625 0.62245244 0.46348625 0.1563352 0.31419361 0.39512247 0.62802052
		 0.60487753 0.62802052 0.84366477 0.46348625 0.84366477 0.31419361 0.60487765 0.7984671
		 0.39512247 0.78789014 0.60487753 0.78789014 0.60487753 0.31419355 0.39512241 0.47406316
		 0.60487765 0.4740631 0.39512247 0.63859743 0.60487759 0.63859743 0.39512253 0.7984671
		 0.37754756 0.31419361 0.37754756 0.46348625 0.1563352 0.46348625 0.38347071 0.95399874
		 0.37980965 0.30773896 0.39081791 0.30773896 0.39081791 0.95654678 0.38623178 0.31411523
		 0.62019032 0.30773896 0.61652929 0.95399874 0.61376822 0.31411523 0.60918212 0.95654678
		 0.60918212 0.30773896 0.37980965 0.4699409 0.38347071 0.47248888 0.38623178 0.46356463
		 0.39494383 0.46882772 0.61652929 0.47248888 0.62019032 0.4699409 0.60505617 0.46882766
		 0.61376822 0.46356463 0.15041208 0.46590465 0.38347071 0.63617909 0.38347071 0.62959486
		 0.15407315 0.4699409 0.39494389 0.63325596 0.61652929 0.63617909 0.84958792 0.46590465
		 0.60505617 0.63325602 0.84592688 0.4699409 0.61652929 0.62959486 0.15407315 0.30773896
		 0.38347071 0.79689276 0.38347071 0.79030854 0.15041208 0.31177521 0.39494392 0.79323173
		 0.61652929 0.79689276 0.84592688 0.30773896 0.60505617 0.79323173 0.84958792 0.31177521
		 0.61652929 0.79030854 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.96580297 3.28625917 -0.50210619 -0.96580297 3.27111053 -0.46553442
		 -1.0023747683 3.28625917 -0.46553442 -1.017523289 3.32283092 -0.46553442 -1.0023747683 3.32283092 -0.50210619
		 -0.96580297 3.32283092 -0.51725471 -0.96580285 3.28625917 0.50210613 -0.96580285 3.32283092 0.51725465
		 -1.002374649 3.32283092 0.50210613 -1.01752317 3.32283092 0.46553436 -1.002374649 3.28625917 0.46553436
		 -0.96580291 3.27111053 0.46553436 -0.96580297 4.55566692 -0.50210619 -0.96580297 4.51909542 -0.51725471
		 -1.0023747683 4.51909542 -0.50210619 -1.017523289 4.51909542 -0.46553442 -1.0023747683 4.55566692 -0.46553442
		 -0.96580297 4.57081556 -0.46553442 -0.96580285 4.55566692 0.50210613 -0.96580291 4.57081556 0.46553436
		 -1.002374649 4.55566692 0.46553436 -1.01752317 4.51909542 0.46553436 -1.002374649 4.51909542 0.50210613
		 -0.96580285 4.51909542 0.51725465 1.002374649 4.51909542 -0.50210613 0.96580291 4.51909542 -0.51725465
		 0.96580291 4.55566692 -0.50210613 0.96580291 4.57081556 -0.46553436 1.002374649 4.55566692 -0.46553436
		 1.01752317 4.51909542 -0.46553436 1.0023747683 4.51909542 0.50210619 1.017523289 4.51909542 0.46553442
		 1.0023747683 4.55566692 0.46553442 0.96580297 4.57081556 0.46553442 0.96580297 4.55566692 0.50210619
		 0.96580297 4.51909542 0.51725471 0.96580285 3.28625917 -0.50210613 0.96580285 3.32283092 -0.51725465
		 1.002374649 3.32283092 -0.50210613 1.01752317 3.32283092 -0.46553436 1.002374649 3.28625917 -0.46553436
		 0.96580291 3.27111053 -0.46553436 0.96580297 3.28625917 0.50210619 0.96580297 3.27111053 0.46553442
		 1.0023747683 3.28625917 0.46553442 1.017523289 3.32283092 0.46553442 1.0023747683 3.32283092 0.50210619
		 0.96580297 3.32283092 0.51725471 -0.99565327 3.29298067 -0.49538472 -0.99565315 3.29298067 0.49538466
		 -0.99565327 4.54894543 -0.49538472 -0.99565315 4.54894543 0.49538466 0.99565321 4.54894543 -0.49538466
		 0.99565327 4.54894543 0.49538472 0.99565315 3.29298067 -0.49538466 0.99565327 3.29298067 0.49538472;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_05" -p "part_04";
	rename -uid "F43444A2-4F16-A14D-30C2-30B008110FA9";
	setAttr ".rp" -type "double3" 1.0722229975304085 4.2466166320581209 -1.1551922255469578e-15 ;
	setAttr ".sp" -type "double3" 1.0722229975304085 4.2466166320581209 -1.1551922255469578e-15 ;
createNode mesh -n "part_Shape5" -p "part_05";
	rename -uid "8DC8E4BB-401C-9256-0205-089F41DBC9AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.38578245 0.94843757
		 0.38578245 0.30968785 0.61421758 0.94843757 0.62818128 0.30968791 0.38578245 0.46799201
		 0.61421752 0.46799201 0.62818092 0.46799201 0.16206408 0.30968791 0.38578245 0.62403363
		 0.61421758 0.62403363 0.83793628 0.46799201 0.83793628 0.30968791 0.61421758 0.80245405
		 0.38578245 0.79239589 0.61421752 0.79239589 0.61421758 0.30968785 0.38578245 0.47805011
		 0.61421758 0.47805011 0.38578245 0.63409168 0.61421758 0.63409173 0.38578245 0.80245405
		 0.37181872 0.30968791 0.37181902 0.46799201 0.16206381 0.46799201 0.38347071 0.95143336
		 0.37612349 0.30773896 0.38488197 0.30773896 0.38488197 0.95654678 0.37884596 0.30968082
		 0.62387651 0.30773896 0.61652929 0.95143336 0.62115401 0.30968082 0.61511803 0.95654678
		 0.61511803 0.30773896 0.37612349 0.4699409 0.38347071 0.47505432 0.37884611 0.46799904
		 0.38577557 0.47299385 0.61652929 0.47505432 0.62387651 0.4699409 0.61422437 0.47299385
		 0.62115383 0.46799904 0.15041208 0.46874911 0.38347071 0.63333464 0.38347071 0.62702942
		 0.15775931 0.4699409 0.38577557 0.62908989 0.61652929 0.63333464 0.84958792 0.46874911
		 0.61422443 0.62908989 0.84224069 0.4699409 0.61652929 0.62702942 0.15775931 0.30773896
		 0.38347071 0.79945821 0.38347071 0.79315305 0.15041208 0.3089307 0.38577557 0.79739779
		 0.61652929 0.79945821 0.84224069 0.30773896 0.61422437 0.79739779 0.84958792 0.3089307
		 0.61652929 0.79315305 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  1.022851586 4.019968033 -0.2748827 1.022851586 4.018361568 -0.27100417
		 1.018973112 4.019968033 -0.27100417 1.017366529 4.023846626 -0.27100417 1.018973112 4.023846626 -0.2748827
		 1.022851586 4.023846626 -0.27648926 1.022851467 4.019968033 0.2748827 1.022851467 4.023846626 0.27648926
		 1.018972993 4.023846626 0.2748827 1.017366409 4.023846626 0.27100417 1.018972993 4.019968033 0.27100417
		 1.022851467 4.018361568 0.27100417 1.022851586 4.47326517 -0.2748827 1.022851586 4.46938658 -0.27648926
		 1.018973112 4.46938658 -0.2748827 1.017366529 4.46938658 -0.27100417 1.018973112 4.47326517 -0.27100417
		 1.022851586 4.47487164 -0.27100417 1.022851467 4.47326517 0.2748827 1.022851467 4.47487164 0.27100417
		 1.018972993 4.47326517 0.27100417 1.017366409 4.46938658 0.27100417 1.018972993 4.46938658 0.2748827
		 1.022851467 4.46938658 0.27648926 1.1254729 4.46938658 -0.2748827 1.12159443 4.46938658 -0.27648926
		 1.12159443 4.47326517 -0.2748827 1.12159443 4.47487164 -0.27100417 1.1254729 4.47326517 -0.27100417
		 1.12707949 4.46938658 -0.27100417 1.1254729 4.46938658 0.2748827 1.12707949 4.46938658 0.27100417
		 1.1254729 4.47326517 0.27100417 1.12159443 4.47487164 0.27100417 1.12159443 4.47326517 0.2748827
		 1.12159443 4.46938658 0.27648926 1.12159443 4.019968033 -0.2748827 1.12159443 4.023846626 -0.27648926
		 1.1254729 4.023846626 -0.2748827 1.12707949 4.023846626 -0.27100417 1.1254729 4.019968033 -0.27100417
		 1.12159443 4.018361568 -0.27100417 1.12159443 4.019968033 0.2748827 1.12159443 4.018361568 0.27100417
		 1.1254729 4.019968033 0.27100417 1.12707949 4.023846626 0.27100417 1.1254729 4.023846626 0.2748827
		 1.12159443 4.023846626 0.27648926 1.019685864 4.020680904 -0.27416989 1.019685745 4.020680904 0.27416989
		 1.019685864 4.4725523 -0.27416989 1.019685745 4.4725523 0.27416989 1.12476015 4.4725523 -0.27416989
		 1.12476015 4.4725523 0.27416989 1.12476015 4.020680904 -0.27416989 1.12476015 4.020680904 0.27416989;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_06" -p "part_05";
	rename -uid "778B4F23-4359-D0CE-6D8A-2980F1FF1D1B";
	setAttr ".rp" -type "double3" 1.3869968367035377 3.3802448972838306 -1.6378180673622391e-15 ;
	setAttr ".sp" -type "double3" 1.3869968367035377 3.3802448972838306 -1.6378180673622391e-15 ;
createNode mesh -n "part_Shape6" -p "part_06";
	rename -uid "37BDF08E-4F02-DCE7-4FF4-EE882F8704D0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39368352 0.94843745
		 0.39368349 0.3095324 0.60631645 0.94843745 0.62818098 0.30953223 0.39368355 0.46814734
		 0.60631645 0.46814734 0.62818104 0.46814734 0.16206381 0.30953223 0.39368355 0.62403357
		 0.60631645 0.62403357 0.8379361 0.46814734 0.83793652 0.30953223 0.60631645 0.80245411
		 0.39368352 0.79255128 0.60631645 0.79255128 0.60631627 0.3095324 0.39368352 0.47805017
		 0.60631645 0.47805017 0.39368349 0.63393646 0.60631627 0.63393646 0.39368352 0.80245411
		 0.37181932 0.30953223 0.37181896 0.46814734 0.16206384 0.46814734 0.38347071 0.95143336
		 0.37612349 0.30773896 0.38987806 0.30773896 0.38987806 0.95654678 0.3827585 0.30952638
		 0.62387651 0.30773896 0.61652929 0.95143336 0.61724156 0.30952638 0.61012191 0.95654678
		 0.61012191 0.30773896 0.37612349 0.4699409 0.38347071 0.47505432 0.38275832 0.4681533
		 0.39354676 0.47297311 0.61652929 0.47505432 0.62387651 0.4699409 0.6064533 0.47297311
		 0.61724168 0.4681533 0.15041208 0.46884495 0.38347071 0.63323873 0.38347071 0.62702942
		 0.15775931 0.4699409 0.39354673 0.62911069 0.61652929 0.63323873 0.84958792 0.46884495
		 0.60645318 0.62911069 0.84224069 0.4699409 0.61652929 0.62702942 0.15775931 0.30773896
		 0.38347071 0.79945821 0.38347071 0.79324889 0.15041208 0.30883485 0.39354673 0.79737705
		 0.61652929 0.79945821 0.84224069 0.30773896 0.6064533 0.79737705 0.84958792 0.30883485
		 0.61652929 0.79324889 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  1.15601134 2.227355 -0.28529143 1.15601134 2.21983862 -0.26714551
		 1.13786542 2.227355 -0.26714551 1.13034916 2.2455008 -0.26714551 1.13786542 2.2455008 -0.28529143
		 1.15601134 2.2455008 -0.2928077 1.15601134 2.227355 0.28529143 1.15601134 2.2455008 0.2928077
		 1.13786542 2.2455008 0.28529143 1.13034916 2.2455008 0.26714551 1.13786542 2.227355 0.26714551
		 1.15601134 2.21983862 0.26714551 1.15601134 4.53313494 -0.28529143 1.15601134 4.5149889 -0.2928077
		 1.13786542 4.5149889 -0.28529143 1.13034916 4.5149889 -0.26714551 1.13786542 4.53313494 -0.26714551
		 1.15601134 4.54065132 -0.26714551 1.15601134 4.53313494 0.28529143 1.15601134 4.54065132 0.26714551
		 1.13786542 4.53313494 0.26714551 1.13034916 4.5149889 0.26714551 1.13786542 4.5149889 0.28529143
		 1.15601134 4.5149889 0.2928077 1.63612831 4.5149889 -0.2852914 1.61798239 4.5149889 -0.2928077
		 1.61798239 4.53313494 -0.28529143 1.61798239 4.54065132 -0.26714551 1.63612831 4.53313494 -0.26714551
		 1.64364457 4.5149889 -0.26714548 1.63612819 4.5149889 0.28529143 1.64364445 4.5149889 0.26714551
		 1.63612819 4.53313494 0.26714551 1.61798227 4.54065132 0.26714551 1.61798227 4.53313494 0.28529143
		 1.61798227 4.5149889 0.2928077 1.61798239 2.227355 -0.28529143 1.61798239 2.2455008 -0.2928077
		 1.63612831 2.2455008 -0.2852914 1.64364457 2.2455008 -0.26714548 1.63612831 2.227355 -0.26714551
		 1.61798239 2.21983862 -0.26714551 1.61798227 2.227355 0.28529143 1.61798227 2.21983862 0.26714551
		 1.63612819 2.227355 0.26714551 1.64364445 2.2455008 0.26714551 1.63612819 2.2455008 0.28529143
		 1.61798227 2.2455008 0.2928077 1.14120042 2.23069 -0.2819564 1.14120042 2.23069 0.2819564
		 1.14120042 4.52979994 -0.2819564 1.14120042 4.52979994 0.2819564 1.63279331 4.52979994 -0.2819564
		 1.63279319 4.52979994 0.2819564 1.63279331 2.23069 -0.2819564 1.63279319 2.23069 0.2819564;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "part_06_parentConstraint1" -p "part_06";
	rename -uid "65E15AEF-43F1-C47D-68E4-19939019D6C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_l_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.053704424570734988 -0.87730963589059829 0.020900347070338249 ;
	setAttr ".lr" -type "double3" -1.3863492459177105 3.4142027696093917 15.892898764139129 ;
	setAttr ".rst" -type "double3" 0 0 2.3910604013316364e-19 ;
	setAttr -k on ".w0";
createNode transform -n "part_07" -p "part_04";
	rename -uid "DDE010EB-415A-A02A-800F-C69E1BEE232D";
	setAttr ".rp" -type "double3" 0 4.6452305278184731 0 ;
	setAttr ".sp" -type "double3" 0 4.6452305278184731 0 ;
createNode mesh -n "part_Shape7" -p "part_07";
	rename -uid "E178209C-4495-2A56-F491-458FC1CA7C81";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.38723239 0.95439965
		 0.38723239 0.31584835 0.61276764 0.95439965 0.61961442 0.31584829 0.38723239 0.46183145
		 0.61276764 0.46183145 0.61961442 0.46183145 0.15349719 0.31584829 0.38723239 0.6299957
		 0.61276764 0.6299957 0.84650278 0.46183145 0.84650278 0.31584829 0.61276764 0.79649192
		 0.38723239 0.78623539 0.61276764 0.78623539 0.61276764 0.31584835 0.38723239 0.47208798
		 0.61276764 0.47208798 0.38723239 0.64025223 0.61276764 0.64025223 0.38723242 0.79649192
		 0.38038564 0.31584829 0.38038558 0.46183145 0.15349722 0.46183145 0.38347071 0.95523256
		 0.38158232 0.30773896 0.38577855 0.30773896 0.38577855 0.95654678 0.38379359 0.31572402
		 0.61841762 0.30773896 0.61652929 0.95523256 0.61620641 0.31572402 0.61422145 0.95654678
		 0.61422145 0.30773896 0.38158232 0.4699409 0.38347071 0.47125512 0.38379359 0.46195579
		 0.38721412 0.46700269 0.61652929 0.47125512 0.61841762 0.4699409 0.61278594 0.46700269
		 0.61620641 0.46195579 0.15041208 0.46482748 0.38347071 0.63725626 0.38347071 0.63082862
		 0.15230048 0.4699409 0.38721412 0.63508105 0.61652929 0.63725626 0.84958792 0.46482748
		 0.61278594 0.63508105 0.84769952 0.4699409 0.61652929 0.63082862 0.15230048 0.30773896
		 0.38347071 0.79565901 0.38347071 0.78923142 0.15041208 0.31285232 0.38721412 0.79140669
		 0.61652929 0.79565901 0.84769952 0.30773896 0.61278594 0.79140663 0.84958792 0.31285232
		 0.61652929 0.78923142 0.38347071 0.95654678 0.38347071 0.30773896 0.61652929 0.30773896
		 0.61652929 0.95654678 0.38347071 0.4699409 0.61652929 0.4699409 0.15041208 0.4699409
		 0.38347071 0.63214284 0.61652929 0.63214284 0.84958792 0.4699409 0.15041208 0.30773896
		 0.38347071 0.79434484 0.61652929 0.79434484 0.84958792 0.30773896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.28913507 4.56889629 -0.24127424 -0.28913507 4.56659317 -0.23571429
		 -0.29469502 4.56889629 -0.23571429 -0.29699802 4.57445621 -0.23571429 -0.29469502 4.57445621 -0.24127424
		 -0.28913507 4.57445621 -0.24357724 -0.28913507 4.56889629 0.24127421 -0.28913507 4.57445621 0.24357721
		 -0.29469502 4.57445621 0.24127421 -0.29699802 4.57445621 0.23571426 -0.29469502 4.56889629 0.23571426
		 -0.28913507 4.56659317 0.23571426 -0.28913507 4.72156477 -0.24127424 -0.28913507 4.71600485 -0.24357724
		 -0.29469502 4.71600485 -0.24127424 -0.29699802 4.71600485 -0.23571429 -0.29469502 4.72156477 -0.23571429
		 -0.28913507 4.72386789 -0.23571429 -0.28913507 4.72156477 0.24127421 -0.28913507 4.72386789 0.23571426
		 -0.29469502 4.72156477 0.23571426 -0.29699802 4.71600485 0.23571426 -0.29469502 4.71600485 0.24127421
		 -0.28913507 4.71600485 0.24357721 0.29469502 4.71600485 -0.24127421 0.28913507 4.71600485 -0.24357721
		 0.28913507 4.72156477 -0.24127421 0.28913507 4.72386789 -0.23571426 0.29469502 4.72156477 -0.23571426
		 0.29699802 4.71600485 -0.23571426 0.29469502 4.71600485 0.24127424 0.29699802 4.71600485 0.23571429
		 0.29469502 4.72156477 0.23571429 0.28913507 4.72386789 0.23571429 0.28913507 4.72156477 0.24127424
		 0.28913507 4.71600485 0.24357724 0.28913507 4.56889629 -0.24127421 0.28913507 4.57445621 -0.24357721
		 0.29469502 4.57445621 -0.24127421 0.29699802 4.57445621 -0.23571426 0.29469502 4.56889629 -0.23571426
		 0.28913507 4.56659317 -0.23571426 0.28913507 4.56889629 0.24127424 0.28913507 4.56659317 0.23571429
		 0.29469502 4.56889629 0.23571429 0.29699802 4.57445621 0.23571429 0.29469502 4.57445621 0.24127424
		 0.28913507 4.57445621 0.24357724 -0.29367316 4.56991816 -0.24025238 -0.29367316 4.56991816 0.24025235
		 -0.29367316 4.72054291 -0.24025238 -0.29367316 4.72054291 0.24025235 0.29367316 4.72054291 -0.24025235
		 0.29367316 4.72054291 0.24025238 0.29367316 4.56991816 -0.24025235 0.29367316 4.56991816 0.24025238;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_08" -p "part_07";
	rename -uid "474EB92B-49E3-C070-D076-798DB5588C1A";
	setAttr ".rp" -type "double3" 0 5.4311084513738574 0.0048705339431762695 ;
	setAttr ".sp" -type "double3" 0 5.4311084513738574 0.0048705339431762695 ;
createNode mesh -n "part_08Shape" -p "part_08";
	rename -uid "188A890F-44C2-9978-9136-42A7D280E3BB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:45]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "robo_face";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "vtx[0:81]";
	setAttr ".pv" -type "double2" 0.5 0.68214287161827081 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 172 ".uvst[0].uvsp[0:171]" -type "float2" 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.091882437 0.058807254
		 0.90811753 0.058807254 0.90811753 0.23047847 0.091882437 0.23047847 0.41882035 0.058807254
		 0.58117956 0.058807254 0.54058981 0.1017251 0.45941019 0.1017251 0.73118001 0.071874976
		 0.61558998 0.1082589 0.84598535 0.096020877 0.67299271 0.12033188 0.90811753 0.12756908
		 0.70405877 0.13610601 0.90811753 0.16171664 0.70405877 0.15317971 0.84598535 0.19326484
		 0.67299271 0.16895384 0.73118001 0.21741074 0.61558998 0.18102682 0.58117956 0.23047847
		 0.54058975 0.18756068 0.41882035 0.23047847 0.45941019 0.18756068 0.26881987 0.21741074
		 0.38440993 0.18102682 0.15401462 0.19326478 0.32700729 0.16895384 0.091882437 0.16171664
		 0.29594123 0.15317971 0.091882467 0.12756908 0.29594123 0.13610601 0.15401474 0.096020877
		 0.32700735 0.12033188 0.26882005 0.071874917 0.38441002 0.1082589 0.41882035 0.058807254
		 0.58117956 0.058807254 0.54058981 0.1017251 0.45941019 0.1017251 0.73118001 0.071874976
		 0.61558998 0.1082589 0.84598535 0.096020877 0.67299271 0.12033188 0.90811753 0.12756908
		 0.70405877 0.13610601 0.90811753 0.16171664 0.70405877 0.15317971 0.84598535 0.19326484
		 0.67299271 0.16895384 0.73118001 0.21741074 0.61558998 0.18102682 0.58117956 0.23047847
		 0.54058975 0.18756068 0.41882035 0.23047847 0.45941019 0.18756068 0.26881987 0.21741074
		 0.38440993 0.18102682 0.15401462 0.19326478 0.32700729 0.16895384 0.091882437 0.16171664
		 0.29594123 0.15317971 0.091882467 0.12756908 0.29594123 0.13610601 0.15401474 0.096020877
		 0.32700735 0.12033188 0.26882005 0.071874917 0.38441002 0.1082589 0.38580108 0.8537389
		 0.38580102 0.51063263 0.61419892 0.8537389 0.61844051 0.51063263 0.38580108 0.59519947
		 0.61419892 0.59519947 0.61844051 0.59519947 0.15232328 0.51063263 0.38580108 0.68143642
		 0.61419892 0.68143642 0.84767675 0.59519947 0.84767675 0.51063263 0.61419898 0.76900059
		 0.38580108 0.76750189 0.61419892 0.76750189 0.61419892 0.51063263 0.38580102 0.59669811
		 0.61419898 0.59669811 0.38580102 0.68293506 0.61419892 0.68293506 0.38580102 0.76900059
		 0.38155949 0.51063263 0.38155952 0.59519947 0.15232328 0.59519947 0.38347071 0.85401464
		 0.38230556 0.50984043 0.38489342 0.50984043 0.38489342 0.85444534 0.38367856 0.51063043
		 0.61769444 0.50984043 0.61652929 0.85401464 0.61632144 0.51063043 0.61510652 0.85444534
		 0.61510652 0.50984043 0.38230556 0.59599167 0.38347071 0.59642237 0.38367856 0.59520161
		 0.38579404 0.59594917 0.61652929 0.59642237 0.61769444 0.59599167 0.61420596 0.59594917
		 0.61632144 0.59520161 0.15041208 0.59550828 0.38347071 0.68262619 0.38347071 0.68171215
		 0.15157726 0.59599167 0.38579404 0.68218535 0.61652929 0.68262619 0.84958792 0.59550828
		 0.61420596 0.68218535 0.84842277 0.59599167 0.61652929 0.68171215 0.15157726 0.50984043
		 0.38347071 0.7687248 0.38347071 0.76781076 0.15041208 0.51032376 0.38579404 0.76825166
		 0.61652929 0.7687248 0.84842277 0.50984043 0.61420596 0.76825166 0.84958792 0.51032376
		 0.61652929 0.76781076 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 138 ".vt[0:137]"  -0.18090111 5.30081129 0.66210526 -0.15388368 5.25191736 0.66210526
		 -0.11180305 5.21311522 0.66210526 -0.058778394 5.18820238 0.66210526 -1.0220315e-07 5.17961836 0.66210526
		 0.058778189 5.18820238 0.66210526 0.11180285 5.21311522 0.66210526 0.15388347 5.25191736 0.66210526
		 0.18090089 5.30081129 0.66210526 -0.21854979 5.2847209 0.66210526 -0.18450943 5.22262144 0.66210526
		 -0.13294467 5.17476559 0.66210526 -0.06947495 5.14478874 0.66210526 -1.0210535e-07 5.13459444 0.66210526
		 0.069474749 5.14478874 0.66210526 0.13294449 5.17476559 0.66210526 0.18450922 5.22262144 0.66210526
		 0.21854953 5.2847209 0.66210526 -0.54039109 5.14095354 0.66210532 -0.46160889 5.14095354 0.66210532
		 -0.38882369 5.17110252 0.66210532 -0.33311623 5.2268095 0.66210532 -0.30296761 5.29959488 0.66210526
		 -0.30296767 5.37837696 0.66210526 -0.33311623 5.45116234 0.66210532 -0.38882369 5.50686979 0.66210526
		 -0.46160895 5.5370183 0.66210526 -0.54039109 5.5370183 0.66210532 -0.61317635 5.50686979 0.66210532
		 -0.66888374 5.45116234 0.66210526 -0.69903237 5.37837696 0.66210532 -0.69903231 5.29959488 0.66210526
		 -0.66888368 5.2268095 0.66210532 -0.61317629 5.17110252 0.66210532 -0.53418648 5.17214632 0.66210532
		 -0.46781352 5.17214632 0.66210532 -0.40649295 5.19754648 0.66210532 -0.35956025 5.24447918 0.66210532
		 -0.33416033 5.30579948 0.66210532 -0.33416033 5.37217236 0.66210526 -0.35956025 5.43349314 0.66210532
		 -0.40649301 5.48042583 0.66210532 -0.46781358 5.50582552 0.66210532 -0.53418648 5.50582552 0.66210526
		 -0.59550703 5.48042583 0.66210526 -0.64243984 5.43349314 0.66210526 -0.66783965 5.37217236 0.66210526
		 -0.66783965 5.30579948 0.66210532 -0.64243978 5.24447918 0.66210532 -0.59550697 5.19754601 0.66210532
		 0.46117207 5.14095354 0.66210526 0.53995425 5.14095354 0.66210526 0.61273944 5.17110205 0.66210526
		 0.66844684 5.2268095 0.66210526 0.69859552 5.29959488 0.66210526 0.69859546 5.37837696 0.66210526
		 0.66844684 5.45116234 0.66210526 0.61273944 5.50686979 0.66210526 0.53995419 5.5370183 0.66210526
		 0.46117207 5.5370183 0.66210526 0.38838679 5.50686979 0.66210526 0.33267939 5.45116234 0.66210526
		 0.3025308 5.37837696 0.66210526 0.30253083 5.29959488 0.66210526 0.33267945 5.2268095 0.66210526
		 0.38838688 5.17110205 0.66210526 0.46737668 5.17214632 0.66210526 0.53374958 5.17214632 0.66210526
		 0.59507018 5.19754601 0.66210526 0.64200294 5.2444787 0.66210526 0.6674028 5.30579948 0.66210526
		 0.6674028 5.37217236 0.66210526 0.64200294 5.43349314 0.66210526 0.59507012 5.48042583 0.66210526
		 0.53374958 5.50582552 0.66210526 0.46737668 5.50582552 0.66210526 0.40605611 5.48042583 0.66210526
		 0.35912335 5.43349266 0.66210526 0.33372349 5.37217236 0.66210526 0.33372349 5.30579948 0.66210526
		 0.35912338 5.2444787 0.66210526 0.4060562 5.19754601 0.66210526 -0.78239328 4.72556257 -0.64854318
		 -0.78239328 4.72174168 -0.63931829 -0.79161817 4.72556257 -0.63931829 -0.79543924 4.73478746 -0.63931829
		 -0.79161817 4.73478746 -0.64854318 -0.78239328 4.73478746 -0.65236425 -0.78239328 4.72556257 0.64854312
		 -0.78239328 4.73478746 0.65236419 -0.79161817 4.73478746 0.64854312 -0.79543924 4.73478746 0.63931823
		 -0.79161817 4.72556257 0.63931823 -0.78239328 4.72174168 0.63931823 -0.78239328 6.13665438 -0.64854318
		 -0.78239328 6.12742949 -0.65236425 -0.79161817 6.12742949 -0.64854318 -0.79543924 6.12742949 -0.63931829
		 -0.79161817 6.13665438 -0.63931829 -0.78239328 6.14047527 -0.63931829 -0.78239328 6.13665438 0.64854312
		 -0.78239328 6.14047527 0.63931823 -0.79161817 6.13665438 0.63931823 -0.79543924 6.12742949 0.63931823
		 -0.79161817 6.12742949 0.64854312 -0.78239328 6.12742949 0.65236419 0.79161817 6.12742949 -0.64854312
		 0.78239328 6.12742949 -0.65236419 0.78239328 6.13665438 -0.64854312 0.78239328 6.14047527 -0.63931823
		 0.79161817 6.13665438 -0.63931823 0.79543924 6.12742949 -0.63931823 0.79161817 6.12742949 0.64854318
		 0.79543924 6.12742949 0.63931829 0.79161817 6.13665438 0.63931829 0.78239328 6.14047527 0.63931829
		 0.78239328 6.13665438 0.64854318 0.78239328 6.12742949 0.65236425 0.78239328 4.72556257 -0.64854312
		 0.78239328 4.73478746 -0.65236419 0.79161817 4.73478746 -0.64854312 0.79543924 4.73478746 -0.63931823
		 0.79161817 4.72556257 -0.63931823 0.78239328 4.72174168 -0.63931823 0.78239328 4.72556257 0.64854318
		 0.78239328 4.72174168 0.63931829 0.79161817 4.72556257 0.63931829 0.79543924 4.73478746 0.63931829
		 0.79161817 4.73478746 0.64854318 0.78239328 4.73478746 0.65236425 -0.78992271 4.72725821 -0.64684772
		 -0.78992271 4.72725821 0.64684767 -0.78992271 6.13495874 -0.64684772 -0.78992271 6.13495874 0.64684767
		 0.78992271 6.13495874 -0.64684767 0.78992271 6.13495874 0.64684772 0.78992271 4.72725821 -0.64684767
		 0.78992271 4.72725821 0.64684772;
	setAttr -s 229 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 0 9 0
		 1 10 1 9 10 0 2 11 1 10 11 0 3 12 1 11 12 0 4 13 1 12 13 0 5 14 1 13 14 0 6 15 1
		 14 15 0 7 16 1 15 16 0 8 17 0 16 17 0 18 19 0 19 35 1 35 34 0 34 18 1 19 20 0 20 36 1
		 36 35 0 20 21 0 21 37 1 37 36 0 21 22 0 22 38 1 38 37 0 22 23 0 23 39 1 39 38 0 23 24 0
		 24 40 1 40 39 0 24 25 0 25 41 1 41 40 0 25 26 0 26 42 1 42 41 0 26 27 0 27 43 1 43 42 0
		 27 28 0 28 44 1 44 43 0 28 29 0 29 45 1 45 44 0 29 30 0 30 46 1 46 45 0 30 31 0 31 47 1
		 47 46 0 31 32 0 32 48 1 48 47 0 32 33 0 33 49 1 49 48 0 33 18 0 34 49 0 50 51 0 51 67 1
		 67 66 0 66 50 1 51 52 0 52 68 1 68 67 0 52 53 0 53 69 1 69 68 0 53 54 0 54 70 1 70 69 0
		 54 55 0 55 71 1 71 70 0 55 56 0 56 72 1 72 71 0 56 57 0 57 73 1 73 72 0 57 58 0 58 74 1
		 74 73 0 58 59 0 59 75 1 75 74 0 59 60 0 60 76 1 76 75 0 60 61 0 61 77 1 77 76 0 61 62 0
		 62 78 1 78 77 0 62 63 0 63 79 1 79 78 0 63 64 0 64 80 1 80 79 0 64 65 0 65 81 1 81 80 0
		 65 50 0 66 81 0 83 82 1 82 118 0 118 123 1 123 83 1 82 87 1 87 119 1 119 118 1 85 84 1
		 84 92 0 92 91 1 91 85 1 84 83 1 83 93 1 93 92 1 87 86 1 86 96 0 96 95 1 95 87 1 86 85 1
		 85 97 1 97 96 1 89 88 1 88 124 0 124 129 1 129 89 1 88 93 1 93 125 1 125 124 1 91 90 1
		 90 104 0 104 103 1 103 91 1 90 89 1 89 105 1 105 104 1 95 94 1 94 108 0 108 107 1
		 107 95 1 94 99 1 99 109 1 109 108 1 99 98 1 98 102 0 102 101 1;
	setAttr ".ed[166:228]" 101 99 1 98 97 1 97 103 1 103 102 1 101 100 1 100 116 0
		 116 115 1 115 101 1 100 105 1 105 117 1 117 116 1 107 106 1 106 120 0 120 119 1 119 107 1
		 106 111 1 111 121 1 121 120 1 111 110 1 110 114 0 114 113 1 113 111 1 110 109 1 109 115 1
		 115 114 1 113 112 1 112 128 0 128 127 1 127 113 1 112 117 1 117 129 1 129 128 1 123 122 1
		 122 126 0 126 125 1 125 123 1 122 121 1 121 127 1 127 126 1 82 130 0 130 86 0 84 130 0
		 88 131 0 131 92 0 90 131 0 94 132 0 132 98 0 96 132 0 100 133 0 133 104 0 102 133 0
		 106 134 0 134 110 0 108 134 0 112 135 0 135 116 0 114 135 0 118 136 0 136 122 0 120 136 0
		 124 137 0 137 128 0 126 137 0;
	setAttr -s 94 -ch 376 ".fc[0:93]" -type "polyFaces" 
		f 4 -1 8 10 -10
		mu 0 4 0 1 2 3
		f 4 -2 9 12 -12
		mu 0 4 4 5 6 7
		f 4 -3 11 14 -14
		mu 0 4 8 9 10 11
		f 4 -4 13 16 -16
		mu 0 4 12 13 14 15
		f 4 -5 15 18 -18
		mu 0 4 16 17 18 19
		f 4 -6 17 20 -20
		mu 0 4 20 21 22 23
		f 4 -7 19 22 -22
		mu 0 4 24 25 26 27
		f 4 -8 21 24 -24
		mu 0 4 28 29 30 31
		f 4 25 26 27 28
		mu 0 4 32 33 34 35
		f 4 29 30 31 -27
		mu 0 4 33 36 37 34
		f 4 32 33 34 -31
		mu 0 4 36 38 39 37
		f 4 35 36 37 -34
		mu 0 4 38 40 41 39
		f 4 38 39 40 -37
		mu 0 4 40 42 43 41
		f 4 41 42 43 -40
		mu 0 4 42 44 45 43
		f 4 44 45 46 -43
		mu 0 4 44 46 47 45
		f 4 47 48 49 -46
		mu 0 4 46 48 49 47
		f 4 50 51 52 -49
		mu 0 4 48 50 51 49
		f 4 53 54 55 -52
		mu 0 4 50 52 53 51
		f 4 56 57 58 -55
		mu 0 4 52 54 55 53
		f 4 59 60 61 -58
		mu 0 4 54 56 57 55
		f 4 62 63 64 -61
		mu 0 4 56 58 59 57
		f 4 65 66 67 -64
		mu 0 4 58 60 61 59
		f 4 68 69 70 -67
		mu 0 4 60 62 63 61
		f 4 71 -29 72 -70
		mu 0 4 62 32 35 63
		f 4 73 74 75 76
		mu 0 4 64 65 66 67
		f 4 77 78 79 -75
		mu 0 4 65 68 69 66
		f 4 80 81 82 -79
		mu 0 4 68 70 71 69
		f 4 83 84 85 -82
		mu 0 4 70 72 73 71
		f 4 86 87 88 -85
		mu 0 4 72 74 75 73
		f 4 89 90 91 -88
		mu 0 4 74 76 77 75
		f 4 92 93 94 -91
		mu 0 4 76 78 79 77
		f 4 95 96 97 -94
		mu 0 4 78 80 81 79
		f 4 98 99 100 -97
		mu 0 4 80 82 83 81
		f 4 101 102 103 -100
		mu 0 4 82 84 85 83
		f 4 104 105 106 -103
		mu 0 4 84 86 87 85
		f 4 107 108 109 -106
		mu 0 4 86 88 89 87
		f 4 110 111 112 -109
		mu 0 4 88 90 91 89
		f 4 113 114 115 -112
		mu 0 4 90 92 93 91
		f 4 116 117 118 -115
		mu 0 4 92 94 95 93
		f 4 119 -77 120 -118
		mu 0 4 94 64 67 95
		f 4 121 122 123 124
		mu 0 4 96 120 149 116
		f 4 125 126 127 -123
		mu 0 4 121 117 103 148
		f 4 128 129 130 131
		mu 0 4 97 122 129 111
		f 4 132 133 134 -130
		mu 0 4 123 96 98 128
		f 4 135 136 137 138
		mu 0 4 117 124 132 118
		f 4 139 140 141 -137
		mu 0 4 124 97 100 132
		f 4 142 143 144 145
		mu 0 4 99 125 154 107
		f 4 146 147 148 -144
		mu 0 4 126 98 108 153
		f 4 149 150 151 152
		mu 0 4 111 127 137 101
		f 4 153 154 155 -151
		mu 0 4 127 99 102 137
		f 4 156 157 158 159
		mu 0 4 118 130 141 119
		f 4 160 161 162 -158
		mu 0 4 131 112 104 140
		f 4 163 164 165 166
		mu 0 4 112 133 136 113
		f 4 167 168 169 -165
		mu 0 4 133 100 101 136
		f 4 170 171 172 173
		mu 0 4 113 134 147 105
		f 4 174 175 176 -172
		mu 0 4 135 102 106 146
		f 4 177 178 179 180
		mu 0 4 119 138 151 103
		f 4 181 182 183 -179
		mu 0 4 139 114 109 150
		f 4 184 185 186 187
		mu 0 4 114 142 145 115
		f 4 188 189 190 -186
		mu 0 4 142 104 105 145
		f 4 191 192 193 194
		mu 0 4 115 143 157 110
		f 4 195 196 197 -193
		mu 0 4 144 106 107 156
		f 4 198 199 200 201
		mu 0 4 116 152 155 108
		f 4 202 203 204 -200
		mu 0 4 152 109 110 155
		f 4 -132 -153 -169 -141
		mu 0 4 97 111 101 100
		f 4 -167 -174 -190 -162
		mu 0 4 112 113 105 104
		f 4 -188 -195 -204 -183
		mu 0 4 114 115 110 109
		f 4 -202 -148 -134 -125
		mu 0 4 116 108 98 96
		f 4 -146 -197 -176 -155
		mu 0 4 99 107 106 102
		f 4 -127 -139 -160 -181
		mu 0 4 103 117 118 119
		f 4 -136 -126 205 206
		mu 0 4 124 117 121 159
		f 4 -122 -133 207 -206
		mu 0 4 120 96 123 158
		f 4 -129 -140 -207 -208
		mu 0 4 122 97 124 159
		f 4 -135 -147 208 209
		mu 0 4 128 98 126 161
		f 4 -143 -154 210 -209
		mu 0 4 125 99 127 160
		f 4 -150 -131 -210 -211
		mu 0 4 127 111 129 160
		f 4 -164 -161 211 212
		mu 0 4 133 112 131 162
		f 4 -157 -138 213 -212
		mu 0 4 130 118 132 162
		f 4 -142 -168 -213 -214
		mu 0 4 132 100 133 162
		f 4 -156 -175 214 215
		mu 0 4 137 102 135 163
		f 4 -171 -166 216 -215
		mu 0 4 134 113 136 163
		f 4 -170 -152 -216 -217
		mu 0 4 136 101 137 163
		f 4 -185 -182 217 218
		mu 0 4 142 114 139 165
		f 4 -178 -159 219 -218
		mu 0 4 138 119 141 164
		f 4 -163 -189 -219 -220
		mu 0 4 140 104 142 165
		f 4 -177 -196 220 221
		mu 0 4 146 106 144 167
		f 4 -192 -187 222 -221
		mu 0 4 143 115 145 166
		f 4 -191 -173 -222 -223
		mu 0 4 145 105 147 166
		f 4 -199 -124 223 224
		mu 0 4 152 116 149 169
		f 4 -128 -180 225 -224
		mu 0 4 148 103 151 168
		f 4 -184 -203 -225 -226
		mu 0 4 150 109 152 169
		f 4 -198 -145 226 227
		mu 0 4 156 107 154 171
		f 4 -149 -201 228 -227
		mu 0 4 153 108 155 170
		f 4 -205 -194 -228 -229
		mu 0 4 155 110 157 170;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_09" -p "part_08";
	rename -uid "66394348-4785-1B99-D9B8-7DB74783E84E";
	setAttr ".rp" -type "double3" 0.96180906743484906 5.4256713014846376 0 ;
	setAttr ".sp" -type "double3" 0.96180906743484906 5.4256713014846376 0 ;
createNode mesh -n "part_Shape9" -p "part_09";
	rename -uid "5AFE098D-43EE-8EEB-CE08-F0962E9D5617";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.38998309 0.85013819
		 0.38998309 0.51205426 0.61001688 0.85013819 0.62818104 0.51205432 0.38998312 0.59377778
		 0.61001694 0.59377778 0.62818104 0.59377778 0.1620639 0.51205432 0.38998309 0.67783576
		 0.61001694 0.67783576 0.8379361 0.59377778 0.83793604 0.51205432 0.61001694 0.77260125
		 0.38998312 0.7660802 0.61001694 0.7660802 0.61001688 0.51205426 0.38998312 0.60029876
		 0.61001694 0.60029876 0.38998309 0.68435681 0.61001688 0.68435681 0.38998312 0.77260125
		 0.37181896 0.51205432 0.37181896 0.59377778 0.1620639 0.59377778 0.38347071 0.85172945
		 0.37612349 0.50984043 0.38750416 0.50984043 0.38750416 0.85444534 0.38096032 0.5120371
		 0.62387651 0.50984043 0.61652929 0.85172945 0.61903971 0.5120371 0.61249578 0.85444534
		 0.61249578 0.50984043 0.37612349 0.59599167 0.38347071 0.59870762 0.38096035 0.593795
		 0.38992792 0.59701198 0.61652929 0.59870762 0.62387651 0.59599167 0.61007208 0.59701198
		 0.61903971 0.593795 0.15041208 0.59462297 0.38347071 0.68351156 0.38347071 0.67942691
		 0.15775934 0.59599167 0.38992792 0.6811226 0.61652929 0.68351156 0.84958792 0.59462297
		 0.61007202 0.6811226 0.84224063 0.59599167 0.61652929 0.67942691 0.15775934 0.50984043
		 0.38347071 0.7710101 0.38347071 0.76692539 0.15041208 0.51120913 0.38992792 0.76931447
		 0.61652929 0.7710101 0.84224063 0.50984043 0.61007208 0.76931447 0.84958792 0.51120913
		 0.61652929 0.76692539 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.8012355 5.08379364 -0.31398535 0.8012355 5.078568459 -0.30137089
		 0.78862107 5.08379364 -0.30137089 0.78339601 5.09640789 -0.30137089 0.78862107 5.09640789 -0.31398535
		 0.8012355 5.09640789 -0.31921041 0.8012355 5.08379364 0.31398535 0.8012355 5.09640789 0.31921041
		 0.78862107 5.09640789 0.31398535 0.78339601 5.09640789 0.30137089 0.78862107 5.08379364 0.30137089
		 0.8012355 5.078568459 0.30137089 0.8012355 5.76754856 -0.31398535 0.8012355 5.75493431 -0.31921041
		 0.78862107 5.75493431 -0.31398535 0.78339601 5.75493431 -0.30137089 0.78862107 5.76754856 -0.30137089
		 0.8012355 5.77277374 -0.30137089 0.8012355 5.76754856 0.31398535 0.8012355 5.77277374 0.30137089
		 0.78862107 5.76754856 0.30137089 0.78339601 5.75493431 0.30137089 0.78862107 5.75493431 0.31398535
		 0.8012355 5.75493431 0.31921041 1.13499701 5.75493431 -0.31398535 1.12238252 5.75493431 -0.31921041
		 1.12238252 5.76754856 -0.31398535 1.12238252 5.77277374 -0.30137089 1.13499701 5.76754856 -0.30137089
		 1.14022207 5.75493431 -0.30137089 1.13499701 5.75493431 0.31398535 1.14022207 5.75493431 0.30137089
		 1.13499701 5.76754856 0.30137089 1.12238252 5.77277374 0.30137089 1.12238252 5.76754856 0.31398535
		 1.12238252 5.75493431 0.31921041 1.12238252 5.08379364 -0.31398535 1.12238252 5.09640789 -0.31921041
		 1.13499701 5.09640789 -0.31398535 1.14022207 5.09640789 -0.30137089 1.13499701 5.08379364 -0.30137089
		 1.12238252 5.078568459 -0.30137089 1.12238252 5.08379364 0.31398535 1.12238252 5.078568459 0.30137089
		 1.13499701 5.08379364 0.30137089 1.14022207 5.09640789 0.30137089 1.13499701 5.09640789 0.31398535
		 1.12238252 5.09640789 0.31921041 0.79093945 5.086112022 -0.31166694 0.79093945 5.086112022 0.31166694
		 0.79093945 5.76523018 -0.31166694 0.79093945 5.76523018 0.31166694 1.13267863 5.76523018 -0.31166694
		 1.13267863 5.76523018 0.31166694 1.13267863 5.086112022 -0.31166694 1.13267863 5.086112022 0.31166694;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_10" -p "part_09";
	rename -uid "9C49F32A-4AFB-8750-B169-0CBDCF2CBA47";
	setAttr ".rp" -type "double3" 0.954638696074812 5.8337662540256376 0 ;
	setAttr ".sp" -type "double3" 0.954638696074812 5.8337662540256376 0 ;
createNode mesh -n "part_Shape10" -p "part_10";
	rename -uid "266B9329-43ED-AF36-E216-69B7AE6C0361";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39351189 0.85073358
		 0.39351189 0.51414752 0.60648799 0.85073358 0.62657046 0.51414752 0.39351192 0.59168458
		 0.60648799 0.59168458 0.62657046 0.59168458 0.16045329 0.51414752 0.39351189 0.67843109
		 0.60648799 0.67843109 0.83954668 0.59168458 0.83954668 0.51414752 0.60648799 0.77200592
		 0.39351192 0.763987 0.60648799 0.763987 0.60648799 0.51414752 0.39351189 0.59970343
		 0.60648799 0.59970343 0.39351189 0.68644994 0.60648799 0.68644994 0.39351189 0.77200592
		 0.37342948 0.51414752 0.37342948 0.59168458 0.16045329 0.59168458 0.38347071 0.85211802
		 0.37717485 0.50984043 0.38976648 0.50984043 0.38976648 0.85444534 0.38347065 0.51408154
		 0.62282515 0.50984043 0.61652929 0.85211802 0.61652958 0.51408154 0.61023343 0.85444534
		 0.61023343 0.50984043 0.37717485 0.59599167 0.38347071 0.59831893 0.38347071 0.59175056
		 0.39337969 0.59570563 0.61652929 0.59831893 0.62282515 0.59599167 0.60662019 0.59570563
		 0.61652958 0.59175056 0.15041208 0.59327561 0.38347071 0.68485892 0.38347071 0.67981559
		 0.15670794 0.59599167 0.39337966 0.6824289 0.61652929 0.68485892 0.84958792 0.59327561
		 0.60662019 0.6824289 0.84329206 0.59599167 0.61652929 0.67981559 0.15670794 0.50984043
		 0.38347071 0.77062142 0.38347071 0.76557809 0.15041208 0.51255643 0.39337969 0.76800805
		 0.61652929 0.77062142 0.84329206 0.50984043 0.60662019 0.76800805 0.84958792 0.51255643
		 0.61652929 0.76557809 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.88887334 5.77732658 0.061654527 0.89298421 5.7756238 0.061654527
		 0.89298421 5.77732658 0.065765403 0.89298421 5.7814374 0.067468189 0.88887334 5.7814374 0.065765403
		 0.88717055 5.7814374 0.061654527 1.0204041 5.77732658 0.061654527 1.022106886 5.7814374 0.061654527
		 1.0204041 5.7814374 0.065765403 1.016293168 5.7814374 0.067468189 1.016293168 5.77732658 0.065765403
		 1.016293168 5.7756238 0.061654527 0.88887334 5.89020586 0.061654527 0.88717055 5.88609505 0.061654527
		 0.88887334 5.88609505 0.065765403 0.89298421 5.88609505 0.067468189 0.89298421 5.89020586 0.065765403
		 0.89298421 5.89190865 0.061654527 1.0204041 5.89020586 0.061654527 1.016293168 5.89190865 0.061654527
		 1.016293168 5.89020586 0.065765403 1.016293168 5.88609505 0.067468189 1.0204041 5.88609505 0.065765403
		 1.022106886 5.88609505 0.061654527 0.88887334 5.88609505 -0.065765403 0.88717055 5.88609505 -0.061654527
		 0.88887334 5.89020586 -0.061654527 0.89298421 5.89190865 -0.061654527 0.89298421 5.89020586 -0.065765403
		 0.89298421 5.88609505 -0.067468189 1.0204041 5.88609505 -0.065765403 1.016293168 5.88609505 -0.067468189
		 1.016293168 5.89020586 -0.065765403 1.016293168 5.89190865 -0.061654527 1.0204041 5.89020586 -0.061654527
		 1.022106886 5.88609505 -0.061654527 0.88887334 5.77732658 -0.061654527 0.88717055 5.7814374 -0.061654527
		 0.88887334 5.7814374 -0.065765403 0.89298421 5.7814374 -0.067468189 0.89298421 5.77732658 -0.065765403
		 0.89298421 5.7756238 -0.061654527 1.0204041 5.77732658 -0.061654527 1.016293168 5.7756238 -0.061654527
		 1.016293168 5.77732658 -0.065765403 1.016293168 5.7814374 -0.067468189 1.0204041 5.7814374 -0.065765403
		 1.022106886 5.7814374 -0.061654527 0.88962889 5.77808189 0.065009877 1.019648552 5.77808189 0.065009877
		 0.88962889 5.88945055 0.065009877 1.019648552 5.88945055 0.065009877 0.88962889 5.88945055 -0.065009877
		 1.019648552 5.88945055 -0.065009877 0.88962889 5.77808189 -0.065009877 1.019648552 5.77808189 -0.065009877;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_11" -p "part_10";
	rename -uid "74A5762B-4E7C-51EF-3266-7AAB4E754619";
	setAttr ".rp" -type "double3" 0.954638696074812 5.9645784503413006 0 ;
	setAttr ".sp" -type "double3" 0.954638696074812 5.9645784503413006 0 ;
createNode mesh -n "part_Shape11" -p "part_11";
	rename -uid "1C3AEAD7-4558-04AB-EE57-1DB58B7C48EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39351192 0.85073358
		 0.39351189 0.51414752 0.60648817 0.85073358 0.62657046 0.51414752 0.39351192 0.59168452
		 0.60648817 0.59168452 0.62657046 0.59168452 0.16045326 0.51414752 0.39351192 0.67843109
		 0.60648817 0.67843109 0.83954668 0.59168452 0.83954668 0.51414752 0.60648817 0.77200586
		 0.39351192 0.763987 0.60648817 0.763987 0.60648823 0.51414752 0.39351189 0.59970337
		 0.60648817 0.59970337 0.39351189 0.68644994 0.60648823 0.68644994 0.39351189 0.77200586
		 0.37342954 0.51414752 0.37342954 0.59168452 0.16045326 0.59168452 0.38347071 0.85211807
		 0.37717488 0.50984043 0.38976648 0.50984043 0.38976648 0.85444534 0.38347071 0.51408154
		 0.62282509 0.50984043 0.61652929 0.85211807 0.61652935 0.51408154 0.6102336 0.85444534
		 0.6102336 0.50984043 0.37717488 0.59599167 0.38347071 0.59831893 0.38347071 0.59175056
		 0.39337969 0.59570557 0.61652929 0.59831893 0.62282509 0.59599167 0.60662037 0.59570557
		 0.61652929 0.59175056 0.15041208 0.59327561 0.38347071 0.68485898 0.38347071 0.67981565
		 0.15670791 0.59599167 0.39337969 0.6824289 0.61652929 0.68485898 0.84958792 0.59327561
		 0.60662043 0.6824289 0.84329212 0.59599167 0.61652929 0.67981565 0.15670791 0.50984043
		 0.38347071 0.77062136 0.38347071 0.76557803 0.15041208 0.51255649 0.39337969 0.76800805
		 0.61652929 0.77062136 0.84329212 0.50984043 0.60662037 0.76800805 0.84958792 0.51255649
		 0.61652929 0.76557803 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.88887334 5.90813923 0.06165456 0.89298421 5.90643644 0.06165456
		 0.89298421 5.90813923 0.065765418 0.89298421 5.91225004 0.067468196 0.88887334 5.91225004 0.065765418
		 0.88717055 5.91225004 0.06165456 1.0204041 5.90813923 0.06165456 1.022106886 5.91225004 0.06165456
		 1.0204041 5.91225004 0.065765418 1.016293287 5.91225004 0.067468196 1.016293287 5.90813923 0.065765418
		 1.016293287 5.90643644 0.06165456 0.88887334 6.021018028 0.06165456 0.88717055 6.016907215 0.06165456
		 0.88887334 6.016907215 0.065765418 0.89298421 6.016907215 0.067468196 0.89298421 6.021018028 0.065765418
		 0.89298421 6.022720814 0.06165456 1.0204041 6.021018028 0.06165456 1.016293287 6.022720814 0.06165456
		 1.016293287 6.021018028 0.065765418 1.016293287 6.016907215 0.067468196 1.0204041 6.016907215 0.065765418
		 1.022106886 6.016907215 0.06165456 0.88887334 6.016907215 -0.065765418 0.88717055 6.016907215 -0.06165456
		 0.88887334 6.021018028 -0.06165456 0.89298421 6.022720814 -0.06165456 0.89298421 6.021018028 -0.065765418
		 0.89298421 6.016907215 -0.067468196 1.0204041 6.016907215 -0.065765418 1.016293287 6.016907215 -0.067468196
		 1.016293287 6.021018028 -0.065765418 1.016293287 6.022720814 -0.06165456 1.0204041 6.021018028 -0.06165456
		 1.022106886 6.016907215 -0.06165456 0.88887334 5.90813923 -0.06165456 0.88717055 5.91225004 -0.06165456
		 0.88887334 5.91225004 -0.065765418 0.89298421 5.91225004 -0.067468196 0.89298421 5.90813923 -0.065765418
		 0.89298421 5.90643644 -0.06165456 1.0204041 5.90813923 -0.06165456 1.016293287 5.90643644 -0.06165456
		 1.016293287 5.90813923 -0.065765418 1.016293287 5.91225004 -0.067468196 1.0204041 5.91225004 -0.065765418
		 1.022106886 5.91225004 -0.06165456 0.88962889 5.90889454 0.065009892 1.019648552 5.90889454 0.065009892
		 0.88962889 6.020262718 0.065009892 1.019648552 6.020262718 0.065009892 0.88962889 6.020262718 -0.065009892
		 1.019648552 6.020262718 -0.065009892 0.88962889 5.90889454 -0.065009892 1.019648552 5.90889454 -0.065009892;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_12" -p "part_11";
	rename -uid "D4854404-435F-388A-E97F-7B93BDB1FE72";
	setAttr ".rp" -type "double3" 0.954638696074812 6.0953906466569645 0 ;
	setAttr ".sp" -type "double3" 0.954638696074812 6.0953906466569645 0 ;
createNode mesh -n "part_Shape12" -p "part_12";
	rename -uid "99A3A228-429C-75CA-5ED9-D69665CB7A05";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39351192 0.85073358
		 0.39351189 0.51414752 0.60648799 0.85073358 0.62657046 0.51414752 0.39351192 0.59168458
		 0.60648799 0.59168458 0.62657046 0.59168458 0.16045329 0.51414752 0.39351192 0.67843109
		 0.60648799 0.67843109 0.83954668 0.59168458 0.83954668 0.51414752 0.60648799 0.77200592
		 0.39351192 0.763987 0.60648799 0.763987 0.60648799 0.51414752 0.39351189 0.59970343
		 0.60648799 0.59970343 0.39351189 0.68644994 0.60648799 0.68644994 0.39351189 0.77200592
		 0.37342948 0.51414752 0.37342948 0.59168458 0.16045329 0.59168458 0.38347071 0.85211802
		 0.37717485 0.50984043 0.38976648 0.50984043 0.38976648 0.85444534 0.38347065 0.51408154
		 0.62282515 0.50984043 0.61652929 0.85211802 0.61652958 0.51408154 0.61023343 0.85444534
		 0.61023343 0.50984043 0.37717485 0.59599167 0.38347071 0.59831893 0.38347071 0.59175056
		 0.39337969 0.59570563 0.61652929 0.59831893 0.62282515 0.59599167 0.60662019 0.59570563
		 0.61652958 0.59175056 0.15041208 0.59327561 0.38347071 0.68485892 0.38347071 0.67981559
		 0.15670794 0.59599167 0.39337969 0.6824289 0.61652929 0.68485892 0.84958792 0.59327561
		 0.60662019 0.6824289 0.84329206 0.59599167 0.61652929 0.67981559 0.15670794 0.50984043
		 0.38347071 0.77062142 0.38347071 0.76557809 0.15041208 0.51255643 0.39337969 0.76800805
		 0.61652929 0.77062142 0.84329206 0.50984043 0.60662019 0.76800811 0.84958792 0.51255643
		 0.61652929 0.76557809 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.88887334 6.03895092 0.061654534 0.89298421 6.037248135 0.061654534
		 0.89298421 6.03895092 0.065765411 0.89298421 6.043061733 0.067468196 0.88887334 6.043061733 0.065765411
		 0.88717055 6.043061733 0.061654534 1.0204041 6.03895092 0.061654534 1.022106886 6.043061733 0.061654534
		 1.0204041 6.043061733 0.065765411 1.016293168 6.043061733 0.067468196 1.016293168 6.03895092 0.065765411
		 1.016293168 6.037248135 0.061654534 0.88887334 6.1518302 0.061654534 0.88717055 6.14771938 0.061654534
		 0.88887334 6.14771938 0.065765411 0.89298421 6.14771938 0.067468196 0.89298421 6.1518302 0.065765411
		 0.89298421 6.15353298 0.061654534 1.0204041 6.1518302 0.061654534 1.016293168 6.15353298 0.061654534
		 1.016293168 6.1518302 0.065765411 1.016293168 6.14771938 0.067468196 1.0204041 6.14771938 0.065765411
		 1.022106886 6.14771938 0.061654534 0.88887334 6.14771938 -0.065765411 0.88717055 6.14771938 -0.061654534
		 0.88887334 6.1518302 -0.061654534 0.89298421 6.15353298 -0.061654534 0.89298421 6.1518302 -0.065765411
		 0.89298421 6.14771938 -0.067468196 1.0204041 6.14771938 -0.065765411 1.016293168 6.14771938 -0.067468196
		 1.016293168 6.1518302 -0.065765411 1.016293168 6.15353298 -0.061654534 1.0204041 6.1518302 -0.061654534
		 1.022106886 6.14771938 -0.061654534 0.88887334 6.03895092 -0.061654534 0.88717055 6.043061733 -0.061654534
		 0.88887334 6.043061733 -0.065765411 0.89298421 6.043061733 -0.067468196 0.89298421 6.03895092 -0.065765411
		 0.89298421 6.037248135 -0.061654534 1.0204041 6.03895092 -0.061654534 1.016293168 6.037248135 -0.061654534
		 1.016293168 6.03895092 -0.065765411 1.016293168 6.043061733 -0.067468196 1.0204041 6.043061733 -0.065765411
		 1.022106886 6.043061733 -0.061654534 0.88962889 6.03970623 0.065009885 1.019648552 6.03970623 0.065009885
		 0.88962889 6.15107489 0.065009885 1.019648552 6.15107489 0.065009885 0.88962889 6.15107489 -0.065009885
		 1.019648552 6.15107489 -0.065009885 0.88962889 6.03970623 -0.065009885 1.019648552 6.03970623 -0.065009885;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_13" -p "part_12";
	rename -uid "FF785EB2-4C20-39DE-5E62-E286BC949481";
	setAttr ".rp" -type "double3" 0.954638696074812 6.2262028429726266 0 ;
	setAttr ".sp" -type "double3" 0.954638696074812 6.2262028429726266 0 ;
createNode mesh -n "part_Shape13" -p "part_13";
	rename -uid "3CDE94ED-47E0-52D9-CD3E-19B61066A113";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39351192 0.85073358
		 0.39351189 0.51414752 0.60648799 0.85073358 0.62657046 0.51414752 0.39351192 0.59168458
		 0.60648799 0.59168458 0.62657046 0.59168458 0.16045329 0.51414752 0.39351192 0.67843109
		 0.60648799 0.67843109 0.83954668 0.59168458 0.83954668 0.51414752 0.60648799 0.77200592
		 0.39351192 0.763987 0.60648799 0.763987 0.60648799 0.51414752 0.39351189 0.59970343
		 0.60648799 0.59970343 0.39351189 0.68644994 0.60648799 0.68644994 0.39351189 0.77200592
		 0.37342948 0.51414752 0.37342948 0.59168458 0.16045329 0.59168458 0.38347071 0.85211802
		 0.37717485 0.50984043 0.38976648 0.50984043 0.38976648 0.85444534 0.38347065 0.51408154
		 0.62282515 0.50984043 0.61652929 0.85211802 0.61652958 0.51408154 0.61023343 0.85444534
		 0.61023343 0.50984043 0.37717485 0.59599167 0.38347071 0.59831893 0.38347071 0.59175056
		 0.39337969 0.59570563 0.61652929 0.59831893 0.62282515 0.59599167 0.60662019 0.59570563
		 0.61652958 0.59175056 0.15041208 0.59327561 0.38347071 0.68485892 0.38347071 0.67981559
		 0.15670794 0.59599167 0.39337969 0.6824289 0.61652929 0.68485892 0.84958792 0.59327561
		 0.60662019 0.6824289 0.84329206 0.59599167 0.61652929 0.67981559 0.15670794 0.50984043
		 0.38347071 0.77062142 0.38347071 0.76557809 0.15041208 0.51255643 0.39337969 0.76800805
		 0.61652929 0.77062142 0.84329206 0.50984043 0.60662019 0.76800805 0.84958792 0.51255643
		 0.61652929 0.76557809 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.88887334 6.16976309 0.061654534 0.89298421 6.1680603 0.061654534
		 0.89298421 6.16976309 0.065765411 0.89298421 6.1738739 0.067468196 0.88887334 6.1738739 0.065765411
		 0.88717055 6.1738739 0.061654534 1.0204041 6.16976309 0.061654534 1.022106886 6.1738739 0.061654534
		 1.0204041 6.1738739 0.065765411 1.016293168 6.1738739 0.067468196 1.016293168 6.16976309 0.065765411
		 1.016293168 6.1680603 0.061654534 0.88887334 6.28264236 0.061654534 0.88717055 6.27853155 0.061654534
		 0.88887334 6.27853155 0.065765411 0.89298421 6.27853155 0.067468196 0.89298421 6.28264236 0.065765411
		 0.89298421 6.28434515 0.061654534 1.0204041 6.28264236 0.061654534 1.016293168 6.28434515 0.061654534
		 1.016293168 6.28264236 0.065765411 1.016293168 6.27853155 0.067468196 1.0204041 6.27853155 0.065765411
		 1.022106886 6.27853155 0.061654534 0.88887334 6.27853155 -0.065765411 0.88717055 6.27853155 -0.061654534
		 0.88887334 6.28264236 -0.061654534 0.89298421 6.28434515 -0.061654534 0.89298421 6.28264236 -0.065765411
		 0.89298421 6.27853155 -0.067468196 1.0204041 6.27853155 -0.065765411 1.016293168 6.27853155 -0.067468196
		 1.016293168 6.28264236 -0.065765411 1.016293168 6.28434515 -0.061654534 1.0204041 6.28264236 -0.061654534
		 1.022106886 6.27853155 -0.061654534 0.88887334 6.16976309 -0.061654534 0.88717055 6.1738739 -0.061654534
		 0.88887334 6.1738739 -0.065765411 0.89298421 6.1738739 -0.067468196 0.89298421 6.16976309 -0.065765411
		 0.89298421 6.1680603 -0.061654534 1.0204041 6.16976309 -0.061654534 1.016293168 6.1680603 -0.061654534
		 1.016293168 6.16976309 -0.065765411 1.016293168 6.1738739 -0.067468196 1.0204041 6.1738739 -0.065765411
		 1.022106886 6.1738739 -0.061654534 0.88962889 6.1705184 0.065009885 1.019648552 6.1705184 0.065009885
		 0.88962889 6.28188705 0.065009885 1.019648552 6.28188705 0.065009885 0.88962889 6.28188705 -0.065009885
		 1.019648552 6.28188705 -0.065009885 0.88962889 6.1705184 -0.065009885 1.019648552 6.1705184 -0.065009885;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_14" -p "part_13";
	rename -uid "2114EFDD-468F-545B-DD6E-538A7749A3AF";
	setAttr ".rp" -type "double3" 0.954638696074812 6.3570150392882878 0 ;
	setAttr ".sp" -type "double3" 0.954638696074812 6.3570150392882878 0 ;
createNode mesh -n "part_Shape14" -p "part_14";
	rename -uid "8B300676-4E66-4153-5408-E4BE905E7311";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[17:18]" "f[20]" "f[23]" "f[26]" "f[42]" "f[46]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[7]" "f[22]" "f[27]" "f[31]" "f[33]" "f[48]" "f[52]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[8]" "f[13]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "f[1]" "f[4]" "f[10]" "f[16]" "f[29:30]" "f[37]" "f[43]" "f[49]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[6]" "f[9]" "f[15]" "f[21]" "f[28]" "f[34]" "f[39]" "f[45]" "f[51]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 8 "f[11:12]" "f[14]" "f[19]" "f[25]" "f[36]" "f[40]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.39351192 0.85073358
		 0.39351189 0.51414752 0.60648817 0.85073358 0.62657046 0.51414752 0.39351192 0.59168452
		 0.60648817 0.59168452 0.62657046 0.59168452 0.16045326 0.51414752 0.39351192 0.67843109
		 0.60648817 0.67843109 0.83954668 0.59168452 0.83954668 0.51414752 0.60648823 0.77200586
		 0.39351192 0.763987 0.60648817 0.763987 0.60648823 0.51414752 0.39351189 0.59970337
		 0.60648817 0.59970337 0.39351189 0.68644994 0.60648823 0.68644994 0.39351189 0.77200586
		 0.37342954 0.51414752 0.37342954 0.59168452 0.16045326 0.59168452 0.38347071 0.85211807
		 0.37717488 0.50984043 0.38976648 0.50984043 0.38976648 0.85444534 0.38347071 0.51408154
		 0.62282509 0.50984043 0.61652929 0.85211807 0.61652935 0.51408154 0.6102336 0.85444534
		 0.6102336 0.50984043 0.37717488 0.59599167 0.38347071 0.59831893 0.38347071 0.59175056
		 0.39337969 0.59570557 0.61652929 0.59831893 0.62282509 0.59599167 0.60662037 0.59570557
		 0.61652929 0.59175056 0.15041208 0.59327561 0.38347071 0.68485898 0.38347071 0.67981565
		 0.15670791 0.59599167 0.39337969 0.6824289 0.61652929 0.68485898 0.84958792 0.59327561
		 0.60662043 0.6824289 0.84329212 0.59599167 0.61652929 0.67981565 0.15670791 0.50984043
		 0.38347071 0.77062136 0.38347071 0.76557803 0.15041208 0.51255649 0.39337969 0.76800805
		 0.61652929 0.77062136 0.84329212 0.50984043 0.60662043 0.76800805 0.84958792 0.51255649
		 0.61652929 0.76557803 0.38347071 0.85444534 0.38347071 0.50984043 0.61652929 0.50984043
		 0.61652929 0.85444534 0.38347071 0.59599167 0.61652929 0.59599167 0.15041208 0.59599167
		 0.38347071 0.68214285 0.61652929 0.68214285 0.84958792 0.59599167 0.15041208 0.50984043
		 0.38347071 0.76829416 0.61652929 0.76829416 0.84958792 0.50984043;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.88887334 6.30057573 0.06165456 0.89298421 6.29887295 0.06165456
		 0.89298421 6.30057573 0.065765418 0.89298421 6.30468655 0.067468196 0.88887334 6.30468655 0.065765418
		 0.88717055 6.30468655 0.06165456 1.0204041 6.30057573 0.06165456 1.022106886 6.30468655 0.06165456
		 1.0204041 6.30468655 0.065765418 1.016293287 6.30468655 0.067468196 1.016293287 6.30057573 0.065765418
		 1.016293287 6.29887295 0.06165456 0.88887334 6.41345453 0.06165456 0.88717055 6.40934372 0.06165456
		 0.88887334 6.40934372 0.065765418 0.89298421 6.40934372 0.067468196 0.89298421 6.41345453 0.065765418
		 0.89298421 6.41515732 0.06165456 1.0204041 6.41345453 0.06165456 1.016293287 6.41515732 0.06165456
		 1.016293287 6.41345453 0.065765418 1.016293287 6.40934372 0.067468196 1.0204041 6.40934372 0.065765418
		 1.022106886 6.40934372 0.06165456 0.88887334 6.40934372 -0.065765418 0.88717055 6.40934372 -0.06165456
		 0.88887334 6.41345453 -0.06165456 0.89298421 6.41515732 -0.06165456 0.89298421 6.41345453 -0.065765418
		 0.89298421 6.40934372 -0.067468196 1.0204041 6.40934372 -0.065765418 1.016293287 6.40934372 -0.067468196
		 1.016293287 6.41345453 -0.065765418 1.016293287 6.41515732 -0.06165456 1.0204041 6.41345453 -0.06165456
		 1.022106886 6.40934372 -0.06165456 0.88887334 6.30057573 -0.06165456 0.88717055 6.30468655 -0.06165456
		 0.88887334 6.30468655 -0.065765418 0.89298421 6.30468655 -0.067468196 0.89298421 6.30057573 -0.065765418
		 0.89298421 6.29887295 -0.06165456 1.0204041 6.30057573 -0.06165456 1.016293287 6.29887295 -0.06165456
		 1.016293287 6.30057573 -0.065765418 1.016293287 6.30468655 -0.067468196 1.0204041 6.30468655 -0.065765418
		 1.022106886 6.30468655 -0.06165456 0.88962889 6.30133104 0.065009892 1.019648552 6.30133104 0.065009892
		 0.88962889 6.41269922 0.065009892 1.019648552 6.41269922 0.065009892 0.88962889 6.41269922 -0.065009892
		 1.019648552 6.41269922 -0.065009892 0.88962889 6.30133104 -0.065009892 1.019648552 6.30133104 -0.065009892;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 1 2 1 1 1 11 1 11 10 1 5 4 1 4 14 0 14 13 1 13 5 1
		 4 3 1 3 15 1 15 14 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 1 8 7 1 7 23 1 23 22 1 13 12 1 12 26 0 26 25 1 25 13 1 12 17 1 17 27 1
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 1 16 15 1 15 21 1 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 1 18 23 1 23 35 1 35 34 1 25 24 1 24 38 0 38 37 1 37 25 1 24 29 1 29 39 1 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 1 28 27 1 27 33 1 33 32 1 31 30 1 30 46 0 46 45 1 45 31 1
		 30 35 1 35 47 1 47 46 1 41 40 1 40 44 0 44 43 1 43 41 1 40 39 1 39 45 1 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 20
		f 4 4 5 6 -2
		mu 0 4 25 21 7 52
		f 4 7 8 9 10
		mu 0 4 1 26 33 15
		f 4 11 12 13 -9
		mu 0 4 27 0 2 32
		f 4 14 15 16 17
		mu 0 4 21 28 36 22
		f 4 18 19 20 -16
		mu 0 4 28 1 4 36
		f 4 21 22 23 24
		mu 0 4 3 29 58 11
		f 4 25 26 27 -23
		mu 0 4 30 2 12 57
		f 4 28 29 30 31
		mu 0 4 15 31 41 5
		f 4 32 33 34 -30
		mu 0 4 31 3 6 41
		f 4 35 36 37 38
		mu 0 4 22 34 45 23
		f 4 39 40 41 -37
		mu 0 4 35 16 8 44
		f 4 42 43 44 45
		mu 0 4 16 37 40 17
		f 4 46 47 48 -44
		mu 0 4 37 4 5 40
		f 4 49 50 51 52
		mu 0 4 17 38 51 9
		f 4 53 54 55 -51
		mu 0 4 39 6 10 50
		f 4 56 57 58 59
		mu 0 4 23 42 55 7
		f 4 60 61 62 -58
		mu 0 4 43 18 13 54
		f 4 63 64 65 66
		mu 0 4 18 46 49 19
		f 4 67 68 69 -65
		mu 0 4 46 8 9 49
		f 4 70 71 72 73
		mu 0 4 19 47 61 14
		f 4 74 75 76 -72
		mu 0 4 48 10 11 60
		f 4 77 78 79 80
		mu 0 4 20 56 59 12
		f 4 81 82 83 -79
		mu 0 4 56 13 14 59
		f 4 -11 -32 -48 -20
		mu 0 4 1 15 5 4
		f 4 -46 -53 -69 -41
		mu 0 4 16 17 9 8
		f 4 -67 -74 -83 -62
		mu 0 4 18 19 14 13
		f 4 -81 -27 -13 -4
		mu 0 4 20 12 2 0
		f 4 -25 -76 -55 -34
		mu 0 4 3 11 10 6
		f 4 -6 -18 -39 -60
		mu 0 4 7 21 22 23
		f 4 -15 -5 84 85
		mu 0 4 28 21 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 27 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 63
		f 4 -14 -26 87 88
		mu 0 4 32 2 30 65
		f 4 -22 -33 89 -88
		mu 0 4 29 3 31 64
		f 4 -29 -10 -89 -90
		mu 0 4 31 15 33 64
		f 4 -43 -40 90 91
		mu 0 4 37 16 35 66
		f 4 -36 -17 92 -91
		mu 0 4 34 22 36 66
		f 4 -21 -47 -92 -93
		mu 0 4 36 4 37 66
		f 4 -35 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -45 95 -94
		mu 0 4 38 17 40 67
		f 4 -49 -31 -95 -96
		mu 0 4 40 5 41 67
		f 4 -64 -61 96 97
		mu 0 4 46 18 43 69
		f 4 -57 -38 98 -97
		mu 0 4 42 23 45 68
		f 4 -42 -68 -98 -99
		mu 0 4 44 8 46 69
		f 4 -56 -75 99 100
		mu 0 4 50 10 48 71
		f 4 -71 -66 101 -100
		mu 0 4 47 19 49 70
		f 4 -70 -52 -101 -102
		mu 0 4 49 9 51 70
		f 4 -78 -3 102 103
		mu 0 4 56 20 53 73
		f 4 -7 -59 104 -103
		mu 0 4 52 7 55 72
		f 4 -63 -82 -104 -105
		mu 0 4 54 13 56 73
		f 4 -77 -24 105 106
		mu 0 4 60 11 58 75
		f 4 -28 -80 107 -106
		mu 0 4 57 12 59 74
		f 4 -84 -73 -107 -108
		mu 0 4 59 14 61 74;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_15" -p "part_14";
	rename -uid "1F0267E5-4FC6-F3FA-E555-6AA29D516685";
	setAttr ".rp" -type "double3" 0.95234570924473216 6.5467194418648118 -0.0096221787641952439 ;
	setAttr ".sp" -type "double3" 0.95234570924473216 6.5467194418648118 -0.0096221787641952439 ;
createNode mesh -n "part_Shape15" -p "part_15";
	rename -uid "E9078D00-4108-4752-D096-DBB10DD1F968";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 194 ".uvst[0].uvsp[0:193]" -type "float2" 0.033882797 0.043889873
		 0.10559314 0.043889873 0.17730346 0.043889873 0.24901384 0.043889873 0.32072416 0.043889873
		 0.39243451 0.043889873 0.46414483 0.043889873 0.53585517 0.043889873 0.60756552 0.043889873
		 0.67927587 0.043889873 0.75098622 0.043889873 0.82269657 0.043889873 0.89440686 0.043889873
		 0.9661172 0.043889873 0.033882797 0.056364425 0.10559314 0.056364425 0.17730346 0.056364425
		 0.24901384 0.056364425 0.32072416 0.056364425 0.39243451 0.056364425 0.46414483 0.056364425
		 0.53585517 0.056364425 0.60756552 0.056364425 0.67927587 0.056364425 0.75098622 0.056364425
		 0.82269657 0.056364425 0.89440686 0.056364425 0.9661172 0.056364425 0.033882797 0.068839006
		 0.10559314 0.068839006 0.17730346 0.068839006 0.24901384 0.068839006 0.32072416 0.068839006
		 0.39243451 0.068839006 0.46414483 0.068839006 0.53585517 0.068839006 0.60756552 0.068839006
		 0.67927587 0.068839006 0.75098622 0.068839006 0.82269657 0.068839006 0.89440686 0.068839006
		 0.9661172 0.068839006 0.033882797 0.081313603 0.10559314 0.081313603 0.17730346 0.081313603
		 0.24901384 0.081313603 0.32072416 0.081313603 0.39243451 0.081313603 0.46414483 0.081313603
		 0.53585517 0.081313603 0.60756552 0.081313603 0.67927587 0.081313603 0.75098622 0.081313603
		 0.82269657 0.081313603 0.89440686 0.081313603 0.9661172 0.081313603 0.033882797 0.093788154
		 0.10559314 0.093788154 0.17730346 0.093788154 0.24901384 0.093788154 0.32072416 0.093788154
		 0.39243451 0.093788154 0.46414483 0.093788154 0.53585517 0.093788154 0.60756552 0.093788154
		 0.67927587 0.093788154 0.75098622 0.093788154 0.82269657 0.093788154 0.89440686 0.093788154
		 0.9661172 0.093788154 0.033882797 0.10626275 0.10559314 0.10626275 0.17730346 0.10626275
		 0.24901384 0.10626275 0.32072416 0.10626275 0.39243451 0.10626275 0.46414483 0.10626275
		 0.53585517 0.10626275 0.60756552 0.10626275 0.67927587 0.10626275 0.75098622 0.10626275
		 0.82269657 0.10626275 0.89440686 0.10626275 0.9661172 0.10626275 0.033882797 0.11873732
		 0.10559314 0.11873732 0.17730346 0.11873732 0.24901384 0.11873732 0.32072416 0.11873732
		 0.39243451 0.11873732 0.46414483 0.11873732 0.53585517 0.11873732 0.60756552 0.11873732
		 0.67927587 0.11873732 0.75098622 0.11873732 0.82269657 0.11873732 0.89440686 0.11873732
		 0.9661172 0.11873732 0.033882797 0.13121188 0.10559314 0.13121188 0.17730346 0.13121188
		 0.24901384 0.13121188 0.32072416 0.13121188 0.39243451 0.13121188 0.46414483 0.13121188
		 0.53585517 0.13121188 0.60756552 0.13121188 0.67927587 0.13121188 0.75098622 0.13121188
		 0.82269657 0.13121188 0.89440686 0.13121188 0.9661172 0.13121188 0.033882797 0.14368647
		 0.10559314 0.14368647 0.17730346 0.14368647 0.24901384 0.14368647 0.32072416 0.14368647
		 0.39243451 0.14368647 0.46414483 0.14368647 0.53585517 0.14368647 0.60756552 0.14368647
		 0.67927587 0.14368647 0.75098622 0.14368647 0.82269657 0.14368647 0.89440686 0.14368647
		 0.9661172 0.14368647 0.033882797 0.15616104 0.10559314 0.15616104 0.17730346 0.15616104
		 0.24901384 0.15616104 0.32072416 0.15616104 0.39243451 0.15616104 0.46414483 0.15616104
		 0.53585517 0.15616104 0.60756552 0.15616104 0.67927587 0.15616104 0.75098622 0.15616104
		 0.82269657 0.15616104 0.89440686 0.15616104 0.9661172 0.15616104 0.033882797 0.16863564
		 0.10559314 0.16863564 0.17730346 0.16863564 0.24901384 0.16863564 0.32072416 0.16863564
		 0.39243451 0.16863564 0.46414483 0.16863564 0.53585517 0.16863564 0.60756552 0.16863564
		 0.67927587 0.16863564 0.75098622 0.16863564 0.82269657 0.16863564 0.89440686 0.16863564
		 0.9661172 0.16863564 0.033882797 0.18111017 0.10559314 0.18111017 0.17730346 0.18111017
		 0.24901384 0.18111017 0.32072416 0.18111017 0.39243451 0.18111017 0.46414483 0.18111017
		 0.53585517 0.18111017 0.60756552 0.18111017 0.67927587 0.18111017 0.75098622 0.18111017
		 0.82269657 0.18111017 0.89440686 0.18111017 0.9661172 0.18111017 0.069737971 0.031415284
		 0.14144832 0.031415284 0.21315867 0.031415284 0.28486902 0.031415284 0.35657933 0.031415284
		 0.42828965 0.031415284 0.50000006 0.031415284 0.57171041 0.031415284 0.6434207 0.031415284
		 0.71513104 0.031415284 0.78684139 0.031415284 0.85855174 0.031415284 0.93026209 0.031415284
		 0.069737971 0.19358474 0.14144832 0.19358474 0.21315867 0.19358474 0.28486902 0.19358474
		 0.35657933 0.19358474 0.42828965 0.19358474 0.50000006 0.19358474 0.57171041 0.19358474
		 0.6434207 0.19358474 0.71513104 0.19358474 0.78684139 0.19358474 0.85855174 0.19358474
		 0.93026209 0.19358474;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 158 ".vt[0:157]"  0.99139035 6.36781693 -0.030114384 0.97739488 6.36781693 -0.045912087
		 0.95766085 6.36781693 -0.05339621 0.93670923 6.36781693 -0.050852228 0.91933978 6.36781693 -0.038862936
		 0.90953153 6.36781693 -0.020174939 0.90953153 6.36781693 0.00093056541 0.91933972 6.36781693 0.019618565
		 0.93670923 6.36781693 0.031607859 0.95766085 6.36781693 0.034151852 0.97739482 6.36781693 0.026667736
		 0.99139035 6.36781693 0.010870039 0.99644125 6.36781693 -0.009622179 1.028165936 6.38356829 -0.049415659
		 1.00098824501 6.38356829 -0.080092959 0.96266711 6.38356829 -0.094626255 0.92198151 6.38356829 -0.08968614
		 0.88825196 6.38356829 -0.066404328 0.86920553 6.38356829 -0.030114414 0.86920553 6.38356829 0.010870023
		 0.88825196 6.38356829 0.04715994 0.92198145 6.38356829 0.07044176 0.96266711 6.38356829 0.075381897
		 1.00098824501 6.38356829 0.060848616 1.028165936 6.38356829 0.030171324 1.037974119 6.38356829 -0.009622179
		 1.060535073 6.40880156 -0.066404283 1.021754622 6.40880156 -0.11017833 0.9670735 6.40880156 -0.13091618
		 0.9090184 6.40880156 -0.12386701 0.86088908 6.40880156 -0.090645745 0.83371133 6.40880156 -0.038862951
		 0.83371133 6.40880156 0.019618548 0.86088902 6.40880156 0.07140135 0.9090184 6.40880156 0.10462263
		 0.9670735 6.40880156 0.11167181 1.021754622 6.40880156 0.090933993 1.060535073 6.40880156 0.047159955
		 1.074530602 6.40880156 -0.009622179 1.086616635 6.44204998 -0.080092929 1.038487315 6.44204998 -0.13441974
		 0.97062403 6.44204998 -0.16015691 0.89857334 6.44204998 -0.1514084 0.83884132 6.44204998 -0.11017837
		 0.80511177 6.44204998 -0.045912124 0.80511177 6.44204998 0.026667703 0.83884126 6.44204998 0.090933949
		 0.89857328 6.44204998 0.132164 0.97062397 6.44204998 0.14091256 1.038487315 6.44204998 0.1151754
		 1.086616635 6.44204998 0.060848616 1.10398614 6.44204998 -0.009622179 1.10489488 6.48138142 -0.089686073
		 1.050213695 6.48138142 -0.15140834 0.97311223 6.48138142 -0.18064913 0.89125335 6.48138142 -0.1707097
		 0.82339001 6.48138142 -0.12386703 0.78506887 6.48138142 -0.050852254 0.78506887 6.48138142 0.031607829
		 0.82339001 6.48138142 0.10462262 0.89125329 6.48138142 0.1514653 0.97311217 6.48138142 0.16140479
		 1.050213695 6.48138142 0.13216403 1.10489476 6.48138142 0.070441768 1.12462878 6.48138142 -0.009622179
		 1.11430752 6.52450991 -0.094626196 1.05625236 6.52450991 -0.16015688 0.97439355 6.52450991 -0.19120187
		 0.88748384 6.52450991 -0.18064913 0.81543314 6.52450991 -0.13091618 0.77474749 6.52450991 -0.053396244
		 0.77474749 6.52450991 0.034151815 0.81543314 6.52450991 0.11167178 0.88748372 6.52450991 0.16140476
		 0.97439349 6.52450991 0.17195752 1.05625236 6.52450991 0.14091256 1.1143074 6.52450991 0.07538189
		 1.13525903 6.52450991 -0.009622179 1.11430752 6.5689292 -0.094626196 1.05625236 6.5689292 -0.16015688
		 0.97439355 6.5689292 -0.19120187 0.88748384 6.5689292 -0.18064913 0.81543314 6.5689292 -0.13091618
		 0.77474749 6.5689292 -0.053396244 0.77474749 6.5689292 0.034151815 0.81543314 6.5689292 0.11167178
		 0.88748372 6.5689292 0.16140476 0.97439349 6.5689292 0.17195752 1.05625236 6.5689292 0.14091256
		 1.1143074 6.5689292 0.07538189 1.13525903 6.5689292 -0.009622179 1.10489488 6.61205769 -0.089686073
		 1.050213695 6.61205769 -0.15140834 0.97311223 6.61205769 -0.18064913 0.89125335 6.61205769 -0.1707097
		 0.82339001 6.61205769 -0.12386703 0.78506887 6.61205769 -0.050852254 0.78506887 6.61205769 0.031607829
		 0.82339001 6.61205769 0.10462262 0.89125329 6.61205769 0.1514653 0.97311217 6.61205769 0.16140479
		 1.050213695 6.61205769 0.13216403 1.10489476 6.61205769 0.070441768 1.12462878 6.61205769 -0.009622179
		 1.086616635 6.65138912 -0.080092929 1.038487315 6.65138912 -0.13441974 0.97062403 6.65138912 -0.16015691
		 0.89857334 6.65138912 -0.1514084 0.83884132 6.65138912 -0.11017837 0.80511177 6.65138912 -0.045912124
		 0.80511177 6.65138912 0.026667703 0.83884126 6.65138912 0.090933949 0.89857328 6.65138912 0.132164
		 0.97062397 6.65138912 0.14091256 1.038487315 6.65138912 0.1151754 1.086616635 6.65138912 0.060848616
		 1.10398614 6.65138912 -0.009622179 1.060535073 6.68463755 -0.066404283 1.021754622 6.68463755 -0.11017833
		 0.9670735 6.68463755 -0.13091618 0.9090184 6.68463755 -0.12386701 0.86088908 6.68463755 -0.090645745
		 0.83371133 6.68463755 -0.038862951 0.83371133 6.68463755 0.019618548 0.86088902 6.68463755 0.07140135
		 0.9090184 6.68463755 0.10462263 0.9670735 6.68463755 0.11167181 1.021754622 6.68463755 0.090933993
		 1.060535073 6.68463755 0.047159955 1.074530602 6.68463755 -0.009622179 1.028165936 6.70987082 -0.049415659
		 1.00098824501 6.70987082 -0.080092959 0.96266711 6.70987082 -0.094626255 0.92198151 6.70987082 -0.08968614
		 0.88825196 6.70987082 -0.066404328 0.86920553 6.70987082 -0.030114414 0.86920553 6.70987082 0.010870023
		 0.88825196 6.70987082 0.04715994 0.92198145 6.70987082 0.07044176 0.96266711 6.70987082 0.075381897
		 1.00098824501 6.70987082 0.060848616 1.028165936 6.70987082 0.030171324 1.037974119 6.70987082 -0.009622179
		 0.99139035 6.72562218 -0.030114384 0.97739488 6.72562218 -0.045912087 0.95766085 6.72562218 -0.05339621
		 0.93670923 6.72562218 -0.050852228 0.91933978 6.72562218 -0.038862936 0.90953153 6.72562218 -0.020174939
		 0.90953153 6.72562218 0.00093056541 0.91933972 6.72562218 0.019618565 0.93670923 6.72562218 0.031607859
		 0.95766085 6.72562218 0.034151852 0.97739482 6.72562218 0.026667736 0.99139035 6.72562218 0.010870039
		 0.99644125 6.72562218 -0.009622179 0.95234573 6.362463 -0.009622179 0.95234573 6.7309761 -0.009622179;
	setAttr -s 325 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 0 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 13 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 26 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 39 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 52 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 65 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 78 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 91 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 104 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 117 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1
		 142 130 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 143 1 0 13 1 1 14 1 2 15 1 3 16 1 4 17 1
		 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1;
	setAttr ".ed[166:324]" 10 23 1 11 24 1 12 25 1 13 26 1 14 27 1 15 28 1 16 29 1
		 17 30 1 18 31 1 19 32 1 20 33 1 21 34 1 22 35 1 23 36 1 24 37 1 25 38 1 26 39 1 27 40 1
		 28 41 1 29 42 1 30 43 1 31 44 1 32 45 1 33 46 1 34 47 1 35 48 1 36 49 1 37 50 1 38 51 1
		 39 52 1 40 53 1 41 54 1 42 55 1 43 56 1 44 57 1 45 58 1 46 59 1 47 60 1 48 61 1 49 62 1
		 50 63 1 51 64 1 52 65 1 53 66 1 54 67 1 55 68 1 56 69 1 57 70 1 58 71 1 59 72 1 60 73 1
		 61 74 1 62 75 1 63 76 1 64 77 1 65 78 1 66 79 1 67 80 1 68 81 1 69 82 1 70 83 1 71 84 1
		 72 85 1 73 86 1 74 87 1 75 88 1 76 89 1 77 90 1 78 91 1 79 92 1 80 93 1 81 94 1 82 95 1
		 83 96 1 84 97 1 85 98 1 86 99 1 87 100 1 88 101 1 89 102 1 90 103 1 91 104 1 92 105 1
		 93 106 1 94 107 1 95 108 1 96 109 1 97 110 1 98 111 1 99 112 1 100 113 1 101 114 1
		 102 115 1 103 116 1 104 117 1 105 118 1 106 119 1 107 120 1 108 121 1 109 122 1 110 123 1
		 111 124 1 112 125 1 113 126 1 114 127 1 115 128 1 116 129 1 117 130 1 118 131 1 119 132 1
		 120 133 1 121 134 1 122 135 1 123 136 1 124 137 1 125 138 1 126 139 1 127 140 1 128 141 1
		 129 142 1 130 143 1 131 144 1 132 145 1 133 146 1 134 147 1 135 148 1 136 149 1 137 150 1
		 138 151 1 139 152 1 140 153 1 141 154 1 142 155 1 156 0 1 156 1 1 156 2 1 156 3 1
		 156 4 1 156 5 1 156 6 1 156 7 1 156 8 1 156 9 1 156 10 1 156 11 1 156 12 1 143 157 1
		 144 157 1 145 157 1 146 157 1 147 157 1 148 157 1 149 157 1 150 157 1 151 157 1 152 157 1
		 153 157 1 154 157 1 155 157 1;
	setAttr -s 169 -ch 650 ".fc[0:168]" -type "polyFaces" 
		f 4 0 157 -14 -157
		mu 0 4 0 1 15 14
		f 4 1 158 -15 -158
		mu 0 4 1 2 16 15
		f 4 2 159 -16 -159
		mu 0 4 2 3 17 16
		f 4 3 160 -17 -160
		mu 0 4 3 4 18 17
		f 4 4 161 -18 -161
		mu 0 4 4 5 19 18
		f 4 5 162 -19 -162
		mu 0 4 5 6 20 19
		f 4 6 163 -20 -163
		mu 0 4 6 7 21 20
		f 4 7 164 -21 -164
		mu 0 4 7 8 22 21
		f 4 8 165 -22 -165
		mu 0 4 8 9 23 22
		f 4 9 166 -23 -166
		mu 0 4 9 10 24 23
		f 4 10 167 -24 -167
		mu 0 4 10 11 25 24
		f 4 11 168 -25 -168
		mu 0 4 11 12 26 25
		f 4 12 156 -26 -169
		mu 0 4 12 13 27 26
		f 4 13 170 -27 -170
		mu 0 4 14 15 29 28
		f 4 14 171 -28 -171
		mu 0 4 15 16 30 29
		f 4 15 172 -29 -172
		mu 0 4 16 17 31 30
		f 4 16 173 -30 -173
		mu 0 4 17 18 32 31
		f 4 17 174 -31 -174
		mu 0 4 18 19 33 32
		f 4 18 175 -32 -175
		mu 0 4 19 20 34 33
		f 4 19 176 -33 -176
		mu 0 4 20 21 35 34
		f 4 20 177 -34 -177
		mu 0 4 21 22 36 35
		f 4 21 178 -35 -178
		mu 0 4 22 23 37 36
		f 4 22 179 -36 -179
		mu 0 4 23 24 38 37
		f 4 23 180 -37 -180
		mu 0 4 24 25 39 38
		f 4 24 181 -38 -181
		mu 0 4 25 26 40 39
		f 4 25 169 -39 -182
		mu 0 4 26 27 41 40
		f 4 26 183 -40 -183
		mu 0 4 28 29 43 42
		f 4 27 184 -41 -184
		mu 0 4 29 30 44 43
		f 4 28 185 -42 -185
		mu 0 4 30 31 45 44
		f 4 29 186 -43 -186
		mu 0 4 31 32 46 45
		f 4 30 187 -44 -187
		mu 0 4 32 33 47 46
		f 4 31 188 -45 -188
		mu 0 4 33 34 48 47
		f 4 32 189 -46 -189
		mu 0 4 34 35 49 48
		f 4 33 190 -47 -190
		mu 0 4 35 36 50 49
		f 4 34 191 -48 -191
		mu 0 4 36 37 51 50
		f 4 35 192 -49 -192
		mu 0 4 37 38 52 51
		f 4 36 193 -50 -193
		mu 0 4 38 39 53 52
		f 4 37 194 -51 -194
		mu 0 4 39 40 54 53
		f 4 38 182 -52 -195
		mu 0 4 40 41 55 54
		f 4 39 196 -53 -196
		mu 0 4 42 43 57 56
		f 4 40 197 -54 -197
		mu 0 4 43 44 58 57
		f 4 41 198 -55 -198
		mu 0 4 44 45 59 58
		f 4 42 199 -56 -199
		mu 0 4 45 46 60 59
		f 4 43 200 -57 -200
		mu 0 4 46 47 61 60
		f 4 44 201 -58 -201
		mu 0 4 47 48 62 61
		f 4 45 202 -59 -202
		mu 0 4 48 49 63 62
		f 4 46 203 -60 -203
		mu 0 4 49 50 64 63
		f 4 47 204 -61 -204
		mu 0 4 50 51 65 64
		f 4 48 205 -62 -205
		mu 0 4 51 52 66 65
		f 4 49 206 -63 -206
		mu 0 4 52 53 67 66
		f 4 50 207 -64 -207
		mu 0 4 53 54 68 67
		f 4 51 195 -65 -208
		mu 0 4 54 55 69 68
		f 4 52 209 -66 -209
		mu 0 4 56 57 71 70
		f 4 53 210 -67 -210
		mu 0 4 57 58 72 71
		f 4 54 211 -68 -211
		mu 0 4 58 59 73 72
		f 4 55 212 -69 -212
		mu 0 4 59 60 74 73
		f 4 56 213 -70 -213
		mu 0 4 60 61 75 74
		f 4 57 214 -71 -214
		mu 0 4 61 62 76 75
		f 4 58 215 -72 -215
		mu 0 4 62 63 77 76
		f 4 59 216 -73 -216
		mu 0 4 63 64 78 77
		f 4 60 217 -74 -217
		mu 0 4 64 65 79 78
		f 4 61 218 -75 -218
		mu 0 4 65 66 80 79
		f 4 62 219 -76 -219
		mu 0 4 66 67 81 80
		f 4 63 220 -77 -220
		mu 0 4 67 68 82 81
		f 4 64 208 -78 -221
		mu 0 4 68 69 83 82
		f 4 65 222 -79 -222
		mu 0 4 70 71 85 84
		f 4 66 223 -80 -223
		mu 0 4 71 72 86 85
		f 4 67 224 -81 -224
		mu 0 4 72 73 87 86
		f 4 68 225 -82 -225
		mu 0 4 73 74 88 87
		f 4 69 226 -83 -226
		mu 0 4 74 75 89 88
		f 4 70 227 -84 -227
		mu 0 4 75 76 90 89
		f 4 71 228 -85 -228
		mu 0 4 76 77 91 90
		f 4 72 229 -86 -229
		mu 0 4 77 78 92 91
		f 4 73 230 -87 -230
		mu 0 4 78 79 93 92
		f 4 74 231 -88 -231
		mu 0 4 79 80 94 93
		f 4 75 232 -89 -232
		mu 0 4 80 81 95 94
		f 4 76 233 -90 -233
		mu 0 4 81 82 96 95
		f 4 77 221 -91 -234
		mu 0 4 82 83 97 96
		f 4 78 235 -92 -235
		mu 0 4 84 85 99 98
		f 4 79 236 -93 -236
		mu 0 4 85 86 100 99
		f 4 80 237 -94 -237
		mu 0 4 86 87 101 100
		f 4 81 238 -95 -238
		mu 0 4 87 88 102 101
		f 4 82 239 -96 -239
		mu 0 4 88 89 103 102
		f 4 83 240 -97 -240
		mu 0 4 89 90 104 103
		f 4 84 241 -98 -241
		mu 0 4 90 91 105 104
		f 4 85 242 -99 -242
		mu 0 4 91 92 106 105
		f 4 86 243 -100 -243
		mu 0 4 92 93 107 106
		f 4 87 244 -101 -244
		mu 0 4 93 94 108 107
		f 4 88 245 -102 -245
		mu 0 4 94 95 109 108
		f 4 89 246 -103 -246
		mu 0 4 95 96 110 109
		f 4 90 234 -104 -247
		mu 0 4 96 97 111 110
		f 4 91 248 -105 -248
		mu 0 4 98 99 113 112
		f 4 92 249 -106 -249
		mu 0 4 99 100 114 113
		f 4 93 250 -107 -250
		mu 0 4 100 101 115 114
		f 4 94 251 -108 -251
		mu 0 4 101 102 116 115
		f 4 95 252 -109 -252
		mu 0 4 102 103 117 116
		f 4 96 253 -110 -253
		mu 0 4 103 104 118 117
		f 4 97 254 -111 -254
		mu 0 4 104 105 119 118
		f 4 98 255 -112 -255
		mu 0 4 105 106 120 119
		f 4 99 256 -113 -256
		mu 0 4 106 107 121 120
		f 4 100 257 -114 -257
		mu 0 4 107 108 122 121
		f 4 101 258 -115 -258
		mu 0 4 108 109 123 122
		f 4 102 259 -116 -259
		mu 0 4 109 110 124 123
		f 4 103 247 -117 -260
		mu 0 4 110 111 125 124
		f 4 104 261 -118 -261
		mu 0 4 112 113 127 126
		f 4 105 262 -119 -262
		mu 0 4 113 114 128 127
		f 4 106 263 -120 -263
		mu 0 4 114 115 129 128
		f 4 107 264 -121 -264
		mu 0 4 115 116 130 129
		f 4 108 265 -122 -265
		mu 0 4 116 117 131 130
		f 4 109 266 -123 -266
		mu 0 4 117 118 132 131
		f 4 110 267 -124 -267
		mu 0 4 118 119 133 132
		f 4 111 268 -125 -268
		mu 0 4 119 120 134 133
		f 4 112 269 -126 -269
		mu 0 4 120 121 135 134
		f 4 113 270 -127 -270
		mu 0 4 121 122 136 135
		f 4 114 271 -128 -271
		mu 0 4 122 123 137 136
		f 4 115 272 -129 -272
		mu 0 4 123 124 138 137
		f 4 116 260 -130 -273
		mu 0 4 124 125 139 138
		f 4 117 274 -131 -274
		mu 0 4 126 127 141 140
		f 4 118 275 -132 -275
		mu 0 4 127 128 142 141
		f 4 119 276 -133 -276
		mu 0 4 128 129 143 142
		f 4 120 277 -134 -277
		mu 0 4 129 130 144 143
		f 4 121 278 -135 -278
		mu 0 4 130 131 145 144
		f 4 122 279 -136 -279
		mu 0 4 131 132 146 145
		f 4 123 280 -137 -280
		mu 0 4 132 133 147 146
		f 4 124 281 -138 -281
		mu 0 4 133 134 148 147
		f 4 125 282 -139 -282
		mu 0 4 134 135 149 148
		f 4 126 283 -140 -283
		mu 0 4 135 136 150 149
		f 4 127 284 -141 -284
		mu 0 4 136 137 151 150
		f 4 128 285 -142 -285
		mu 0 4 137 138 152 151
		f 4 129 273 -143 -286
		mu 0 4 138 139 153 152
		f 4 130 287 -144 -287
		mu 0 4 140 141 155 154
		f 4 131 288 -145 -288
		mu 0 4 141 142 156 155
		f 4 132 289 -146 -289
		mu 0 4 142 143 157 156
		f 4 133 290 -147 -290
		mu 0 4 143 144 158 157
		f 4 134 291 -148 -291
		mu 0 4 144 145 159 158
		f 4 135 292 -149 -292
		mu 0 4 145 146 160 159
		f 4 136 293 -150 -293
		mu 0 4 146 147 161 160
		f 4 137 294 -151 -294
		mu 0 4 147 148 162 161
		f 4 138 295 -152 -295
		mu 0 4 148 149 163 162
		f 4 139 296 -153 -296
		mu 0 4 149 150 164 163
		f 4 140 297 -154 -297
		mu 0 4 150 151 165 164
		f 4 141 298 -155 -298
		mu 0 4 151 152 166 165
		f 4 142 286 -156 -299
		mu 0 4 152 153 167 166
		f 3 -1 -300 300
		mu 0 3 1 0 168
		f 3 -2 -301 301
		mu 0 3 2 1 169
		f 3 -3 -302 302
		mu 0 3 3 2 170
		f 3 -4 -303 303
		mu 0 3 4 3 171
		f 3 -5 -304 304
		mu 0 3 5 4 172
		f 3 -6 -305 305
		mu 0 3 6 5 173
		f 3 -7 -306 306
		mu 0 3 7 6 174
		f 3 -8 -307 307
		mu 0 3 8 7 175
		f 3 -9 -308 308
		mu 0 3 9 8 176
		f 3 -10 -309 309
		mu 0 3 10 9 177
		f 3 -11 -310 310
		mu 0 3 11 10 178
		f 3 -12 -311 311
		mu 0 3 12 11 179
		f 3 -13 -312 299
		mu 0 3 13 12 180
		f 3 143 313 -313
		mu 0 3 154 155 181
		f 3 144 314 -314
		mu 0 3 155 156 182
		f 3 145 315 -315
		mu 0 3 156 157 183
		f 3 146 316 -316
		mu 0 3 157 158 184
		f 3 147 317 -317
		mu 0 3 158 159 185
		f 3 148 318 -318
		mu 0 3 159 160 186
		f 3 149 319 -319
		mu 0 3 160 161 187
		f 3 150 320 -320
		mu 0 3 161 162 188
		f 3 151 321 -321
		mu 0 3 162 163 189
		f 3 152 322 -322
		mu 0 3 163 164 190
		f 3 153 323 -323
		mu 0 3 164 165 191
		f 3 154 324 -324
		mu 0 3 165 166 192
		f 3 155 312 -325
		mu 0 3 166 167 193;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_16" -p "part_08";
	rename -uid "A783A46C-402C-9BC8-81DF-E2A7A57A83B5";
	setAttr ".rp" -type "double3" -0.961809 5.4256713014846376 0 ;
	setAttr ".sp" -type "double3" -0.961809 5.4256713014846376 0 ;
createNode mesh -n "part_Shape16" -p "part_16";
	rename -uid "991F4DB3-49A6-D9A2-2C2B-08AF82F01049";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37181896 0.51205426
		 0.38998312 0.51205426 0.61001688 0.51205426 0.37181896 0.59377778 0.61001694 0.59377778
		 0.38998306 0.60029876 0.61001694 0.60029876 0.16206384 0.59377778 0.16206384 0.51205426
		 0.61001694 0.67783576 0.38998312 0.68435681 0.83793616 0.51205426 0.61001688 0.68435681
		 0.61001694 0.7660802 0.38998312 0.77260125 0.61001694 0.77260125 0.38998312 0.59377778
		 0.38998303 0.67783576 0.38998312 0.7660802 0.38998312 0.85013825 0.61001688 0.85013819
		 0.62818104 0.51205426 0.62818104 0.59377778 0.8379361 0.59377778 0.37612349 0.50984043
		 0.38347071 0.85172945 0.38096032 0.5120371 0.38750416 0.85444534 0.38750416 0.50984043
		 0.61652929 0.85172945 0.62387651 0.50984043 0.61249578 0.50984043 0.61249578 0.85444534
		 0.61903971 0.5120371 0.38347071 0.59870762 0.37612349 0.59599167 0.38992792 0.59701198
		 0.38096035 0.593795 0.62387651 0.59599167 0.61652929 0.59870762 0.61903971 0.593795
		 0.61007208 0.59701198 0.38347071 0.68351156 0.15041208 0.59462297 0.38992792 0.6811226
		 0.15775934 0.59599167 0.38347071 0.67942691 0.84958792 0.59462297 0.61652929 0.68351156
		 0.61652929 0.67942691 0.84224063 0.59599167 0.61007202 0.6811226 0.38347071 0.7710101
		 0.15775934 0.50984043 0.38992792 0.76931447 0.15041208 0.51120913 0.38347071 0.76692539
		 0.84224063 0.50984043 0.61652929 0.7710101 0.61652929 0.76692539 0.84958792 0.51120913
		 0.61007208 0.76931447 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.80123544 5.08379364 -0.31398535 -0.80123544 5.09640789 -0.31921041
		 -0.78862101 5.09640789 -0.31398535 -0.78339595 5.09640789 -0.30137089 -0.78862101 5.08379364 -0.30137089
		 -0.80123544 5.078568459 -0.30137089 -0.8012355 5.08379364 0.31398535 -0.8012355 5.078568459 0.30137089
		 -0.78862107 5.08379364 0.30137089 -0.78339601 5.09640789 0.30137089 -0.78862107 5.09640789 0.31398535
		 -0.8012355 5.09640789 0.31921041 -0.80123544 5.76754856 -0.31398535 -0.80123544 5.77277374 -0.30137089
		 -0.78862101 5.76754856 -0.30137089 -0.78339595 5.75493431 -0.30137089 -0.78862101 5.75493431 -0.31398535
		 -0.80123544 5.75493431 -0.31921041 -0.8012355 5.76754856 0.31398535 -0.8012355 5.75493431 0.31921041
		 -0.78862107 5.75493431 0.31398535 -0.78339601 5.75493431 0.30137089 -0.78862107 5.76754856 0.30137089
		 -0.8012355 5.77277374 0.30137089 -1.13499701 5.75493431 -0.31398535 -1.14022207 5.75493431 -0.30137089
		 -1.13499701 5.76754856 -0.30137089 -1.12238252 5.77277374 -0.30137089 -1.12238252 5.76754856 -0.31398535
		 -1.12238252 5.75493431 -0.31921041 -1.13499701 5.75493431 0.31398535 -1.12238252 5.75493431 0.31921041
		 -1.12238252 5.76754856 0.31398535 -1.12238252 5.77277374 0.30137089 -1.13499701 5.76754856 0.30137089
		 -1.14022207 5.75493431 0.30137089 -1.12238252 5.08379364 -0.31398535 -1.12238252 5.078568459 -0.30137089
		 -1.13499701 5.08379364 -0.30137089 -1.14022207 5.09640789 -0.30137089 -1.13499701 5.09640789 -0.31398535
		 -1.12238252 5.09640789 -0.31921041 -1.12238252 5.08379364 0.31398535 -1.12238252 5.09640789 0.31921041
		 -1.13499701 5.09640789 0.31398535 -1.14022207 5.09640789 0.30137089 -1.13499701 5.08379364 0.30137089
		 -1.12238252 5.078568459 0.30137089 -0.79093939 5.086112022 -0.31166694 -0.79093945 5.086112022 0.31166694
		 -0.79093939 5.76523018 -0.31166694 -0.79093945 5.76523018 0.31166694 -1.13267863 5.76523018 -0.31166694
		 -1.13267863 5.76523018 0.31166694 -1.13267863 5.086112022 -0.31166694 -1.13267863 5.086112022 0.31166694;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_17" -p "part_16";
	rename -uid "732A3C3D-4BD4-683A-CEFE-1E980C8EFAA8";
	setAttr ".rp" -type "double3" -0.95463862863996296 5.8337662540256376 0 ;
	setAttr ".sp" -type "double3" -0.95463862863996296 5.8337662540256376 0 ;
createNode mesh -n "part_Shape17" -p "part_17";
	rename -uid "B6E56517-4C00-0871-F289-FAB3D14FB4A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37342948 0.51414752
		 0.39351186 0.51414752 0.60648799 0.51414752 0.37342948 0.59168458 0.60648799 0.59168458
		 0.39351189 0.59970343 0.60648793 0.59970343 0.16045329 0.59168452 0.16045329 0.51414752
		 0.60648799 0.67843109 0.39351186 0.68644994 0.83954668 0.51414752 0.60648799 0.68644994
		 0.60648799 0.763987 0.39351189 0.77200592 0.60648793 0.77200592 0.39351186 0.59168452
		 0.39351189 0.67843109 0.39351186 0.763987 0.39351189 0.85073358 0.60648799 0.85073352
		 0.62657046 0.51414752 0.62657046 0.59168452 0.83954668 0.59168458 0.37717485 0.50984043
		 0.38347071 0.85211802 0.38347065 0.51408154 0.38976648 0.85444534 0.38976648 0.50984043
		 0.61652929 0.85211802 0.62282515 0.50984043 0.61023343 0.50984043 0.61023343 0.85444534
		 0.61652958 0.51408148 0.38347071 0.59831893 0.37717485 0.59599167 0.39337966 0.59570563
		 0.38347065 0.59175056 0.62282515 0.59599167 0.61652929 0.59831893 0.61652958 0.59175056
		 0.60662019 0.59570563 0.38347071 0.68485892 0.15041208 0.59327561 0.39337966 0.6824289
		 0.15670794 0.59599167 0.38347071 0.67981559 0.84958792 0.59327561 0.61652929 0.68485892
		 0.61652929 0.67981559 0.84329206 0.59599167 0.60662019 0.6824289 0.38347071 0.77062142
		 0.15670794 0.50984043 0.39337966 0.76800805 0.15041208 0.51255643 0.38347071 0.76557809
		 0.84329206 0.50984043 0.61652929 0.77062142 0.61652929 0.76557809 0.84958792 0.51255643
		 0.60662019 0.76800805 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.88887322 5.77732658 0.061654527 -0.88717043 5.7814374 0.061654527
		 -0.88887322 5.7814374 0.065765403 -0.89298409 5.7814374 0.067468189 -0.89298409 5.77732658 0.065765403
		 -0.89298409 5.7756238 0.061654527 -1.02040422 5.77732658 0.061654527 -1.016293287 5.7756238 0.061654527
		 -1.016293287 5.77732658 0.065765403 -1.016293287 5.7814374 0.067468189 -1.02040422 5.7814374 0.065765403
		 -1.022107005 5.7814374 0.061654527 -0.88887322 5.89020586 0.061654527 -0.89298409 5.89190865 0.061654527
		 -0.89298409 5.89020586 0.065765403 -0.89298409 5.88609505 0.067468189 -0.88887322 5.88609505 0.065765403
		 -0.88717043 5.88609505 0.061654527 -1.02040422 5.89020586 0.061654527 -1.022107005 5.88609505 0.061654527
		 -1.02040422 5.88609505 0.065765403 -1.016293287 5.88609505 0.067468189 -1.016293287 5.89020586 0.065765403
		 -1.016293287 5.89190865 0.061654527 -0.88887322 5.88609505 -0.065765403 -0.89298409 5.88609505 -0.067468189
		 -0.89298409 5.89020586 -0.065765403 -0.89298409 5.89190865 -0.061654527 -0.88887322 5.89020586 -0.061654527
		 -0.88717043 5.88609505 -0.061654527 -1.02040422 5.88609505 -0.065765403 -1.022107005 5.88609505 -0.061654527
		 -1.02040422 5.89020586 -0.061654527 -1.016293287 5.89190865 -0.061654527 -1.016293287 5.89020586 -0.065765403
		 -1.016293287 5.88609505 -0.067468189 -0.88887322 5.77732658 -0.061654527 -0.89298409 5.7756238 -0.061654527
		 -0.89298409 5.77732658 -0.065765403 -0.89298409 5.7814374 -0.067468189 -0.88887322 5.7814374 -0.065765403
		 -0.88717043 5.7814374 -0.061654527 -1.02040422 5.77732658 -0.061654527 -1.022107005 5.7814374 -0.061654527
		 -1.02040422 5.7814374 -0.065765403 -1.016293287 5.7814374 -0.067468189 -1.016293287 5.77732658 -0.065765403
		 -1.016293287 5.7756238 -0.061654527 -0.88962877 5.77808189 0.065009877 -1.019648671 5.77808189 0.065009877
		 -0.88962877 5.88945055 0.065009877 -1.019648671 5.88945055 0.065009877 -0.88962877 5.88945055 -0.065009877
		 -1.019648671 5.88945055 -0.065009877 -0.88962877 5.77808189 -0.065009877 -1.019648671 5.77808189 -0.065009877;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_18" -p "part_17";
	rename -uid "05CE3F01-4BE8-C466-E1B5-65B548F9CA4A";
	setAttr ".rp" -type "double3" -0.95463862863996296 5.9645784503413006 0 ;
	setAttr ".sp" -type "double3" -0.95463862863996296 5.9645784503413006 0 ;
createNode mesh -n "part_Shape18" -p "part_18";
	rename -uid "2FA2A073-4AE4-F53F-EEF3-4D8E03033363";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37342954 0.51414752
		 0.39351192 0.51414752 0.60648823 0.51414752 0.37342954 0.59168452 0.60648817 0.59168452
		 0.39351189 0.59970343 0.60648817 0.59970343 0.16045329 0.59168452 0.16045329 0.51414752
		 0.60648823 0.67843109 0.39351192 0.68644994 0.83954668 0.51414752 0.60648823 0.68644994
		 0.60648817 0.763987 0.39351189 0.77200592 0.60648823 0.77200586 0.39351192 0.59168458
		 0.39351192 0.67843109 0.39351192 0.763987 0.39351192 0.85073358 0.60648823 0.85073358
		 0.62657046 0.51414752 0.62657046 0.59168452 0.83954668 0.59168452 0.37717488 0.50984043
		 0.38347071 0.85211807 0.38347071 0.51408154 0.38976648 0.85444534 0.38976648 0.50984043
		 0.61652929 0.85211807 0.62282509 0.50984043 0.6102336 0.50984043 0.6102336 0.85444534
		 0.61652935 0.51408154 0.38347071 0.59831893 0.37717488 0.59599167 0.39337969 0.59570563
		 0.38347071 0.59175056 0.62282509 0.59599167 0.61652929 0.59831893 0.61652929 0.59175056
		 0.60662037 0.59570557 0.38347071 0.68485898 0.15041208 0.59327561 0.39337972 0.6824289
		 0.15670791 0.59599167 0.38347071 0.67981565 0.84958792 0.59327561 0.61652929 0.68485898
		 0.61652929 0.67981565 0.84329212 0.59599167 0.60662043 0.6824289 0.38347071 0.77062136
		 0.15670791 0.50984043 0.39337969 0.76800805 0.15041208 0.51255649 0.38347071 0.76557803
		 0.84329212 0.50984043 0.61652929 0.77062136 0.61652929 0.76557803 0.84958792 0.51255649
		 0.60662043 0.76800805 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.88887322 5.90813923 0.06165456 -0.88717043 5.91225004 0.06165456
		 -0.88887322 5.91225004 0.065765418 -0.89298409 5.91225004 0.067468196 -0.89298409 5.90813923 0.065765418
		 -0.89298409 5.90643644 0.06165456 -1.0204041 5.90813923 0.06165456 -1.016293287 5.90643644 0.06165456
		 -1.016293287 5.90813923 0.065765418 -1.016293287 5.91225004 0.067468196 -1.0204041 5.91225004 0.065765418
		 -1.022106886 5.91225004 0.06165456 -0.88887322 6.021018028 0.06165456 -0.89298409 6.022720814 0.06165456
		 -0.89298409 6.021018028 0.065765418 -0.89298409 6.016907215 0.067468196 -0.88887322 6.016907215 0.065765418
		 -0.88717043 6.016907215 0.06165456 -1.0204041 6.021018028 0.06165456 -1.022106886 6.016907215 0.06165456
		 -1.0204041 6.016907215 0.065765418 -1.016293287 6.016907215 0.067468196 -1.016293287 6.021018028 0.065765418
		 -1.016293287 6.022720814 0.06165456 -0.88887322 6.016907215 -0.065765418 -0.89298409 6.016907215 -0.067468196
		 -0.89298409 6.021018028 -0.065765418 -0.89298409 6.022720814 -0.06165456 -0.88887322 6.021018028 -0.06165456
		 -0.88717043 6.016907215 -0.06165456 -1.0204041 6.016907215 -0.065765418 -1.022106886 6.016907215 -0.06165456
		 -1.0204041 6.021018028 -0.06165456 -1.016293287 6.022720814 -0.06165456 -1.016293287 6.021018028 -0.065765418
		 -1.016293287 6.016907215 -0.067468196 -0.88887322 5.90813923 -0.06165456 -0.89298409 5.90643644 -0.06165456
		 -0.89298409 5.90813923 -0.065765418 -0.89298409 5.91225004 -0.067468196 -0.88887322 5.91225004 -0.065765418
		 -0.88717043 5.91225004 -0.06165456 -1.0204041 5.90813923 -0.06165456 -1.022106886 5.91225004 -0.06165456
		 -1.0204041 5.91225004 -0.065765418 -1.016293287 5.91225004 -0.067468196 -1.016293287 5.90813923 -0.065765418
		 -1.016293287 5.90643644 -0.06165456 -0.88962877 5.90889454 0.065009892 -1.019648552 5.90889454 0.065009892
		 -0.88962877 6.020262718 0.065009892 -1.019648552 6.020262718 0.065009892 -0.88962877 6.020262718 -0.065009892
		 -1.019648552 6.020262718 -0.065009892 -0.88962877 5.90889454 -0.065009892 -1.019648552 5.90889454 -0.065009892;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_19" -p "part_18";
	rename -uid "9487DEF6-4DC0-619E-9940-97ACAAFE4F64";
	setAttr ".rp" -type "double3" -0.95463862863996296 6.0953906466569645 0 ;
	setAttr ".sp" -type "double3" -0.95463862863996296 6.0953906466569645 0 ;
createNode mesh -n "part_Shape19" -p "part_19";
	rename -uid "0B6D6D7A-4AE4-1502-A266-E4AEE2865C87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37342948 0.51414752
		 0.39351195 0.51414752 0.60648799 0.51414752 0.37342948 0.59168458 0.60648793 0.59168458
		 0.39351186 0.59970343 0.60648793 0.59970343 0.16045329 0.59168452 0.16045329 0.51414752
		 0.60648799 0.67843109 0.39351195 0.68644994 0.83954668 0.51414752 0.60648799 0.68644994
		 0.60648793 0.763987 0.39351186 0.77200592 0.60648793 0.77200592 0.39351195 0.59168458
		 0.39351192 0.67843109 0.39351195 0.763987 0.39351192 0.85073358 0.60648799 0.85073358
		 0.62657046 0.51414752 0.62657046 0.59168452 0.83954668 0.59168458 0.37717485 0.50984043
		 0.38347071 0.85211802 0.38347071 0.51408154 0.38976648 0.85444534 0.38976648 0.50984043
		 0.61652929 0.85211802 0.62282515 0.50984043 0.61023343 0.50984043 0.61023343 0.85444534
		 0.61652958 0.51408154 0.38347071 0.59831893 0.37717485 0.59599167 0.39337969 0.59570563
		 0.38347071 0.59175056 0.62282515 0.59599167 0.61652929 0.59831893 0.61652952 0.59175056
		 0.60662013 0.59570563 0.38347071 0.68485892 0.15041208 0.59327561 0.39337972 0.6824289
		 0.15670794 0.59599167 0.38347071 0.67981559 0.84958792 0.59327561 0.61652929 0.68485892
		 0.61652929 0.67981559 0.84329206 0.59599167 0.60662019 0.6824289 0.38347071 0.77062142
		 0.15670794 0.50984043 0.39337969 0.76800805 0.15041208 0.51255643 0.38347071 0.76557809
		 0.84329206 0.50984043 0.61652929 0.77062142 0.61652929 0.76557809 0.84958792 0.51255643
		 0.60662013 0.76800805 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.88887322 6.03895092 0.061654534 -0.88717043 6.043061733 0.061654534
		 -0.88887322 6.043061733 0.065765411 -0.89298409 6.043061733 0.067468196 -0.89298409 6.03895092 0.065765411
		 -0.89298409 6.037248135 0.061654534 -1.0204041 6.03895092 0.061654534 -1.016293168 6.037248135 0.061654534
		 -1.016293168 6.03895092 0.065765411 -1.016293168 6.043061733 0.067468196 -1.0204041 6.043061733 0.065765411
		 -1.022106886 6.043061733 0.061654534 -0.88887322 6.1518302 0.061654534 -0.89298409 6.15353298 0.061654534
		 -0.89298409 6.1518302 0.065765411 -0.89298409 6.14771938 0.067468196 -0.88887322 6.14771938 0.065765411
		 -0.88717043 6.14771938 0.061654534 -1.0204041 6.1518302 0.061654534 -1.022106886 6.14771938 0.061654534
		 -1.0204041 6.14771938 0.065765411 -1.016293168 6.14771938 0.067468196 -1.016293168 6.1518302 0.065765411
		 -1.016293168 6.15353298 0.061654534 -0.88887322 6.14771938 -0.065765411 -0.89298409 6.14771938 -0.067468196
		 -0.89298409 6.1518302 -0.065765411 -0.89298409 6.15353298 -0.061654534 -0.88887322 6.1518302 -0.061654534
		 -0.88717043 6.14771938 -0.061654534 -1.0204041 6.14771938 -0.065765411 -1.022106886 6.14771938 -0.061654534
		 -1.0204041 6.1518302 -0.061654534 -1.016293168 6.15353298 -0.061654534 -1.016293168 6.1518302 -0.065765411
		 -1.016293168 6.14771938 -0.067468196 -0.88887322 6.03895092 -0.061654534 -0.89298409 6.037248135 -0.061654534
		 -0.89298409 6.03895092 -0.065765411 -0.89298409 6.043061733 -0.067468196 -0.88887322 6.043061733 -0.065765411
		 -0.88717043 6.043061733 -0.061654534 -1.0204041 6.03895092 -0.061654534 -1.022106886 6.043061733 -0.061654534
		 -1.0204041 6.043061733 -0.065765411 -1.016293168 6.043061733 -0.067468196 -1.016293168 6.03895092 -0.065765411
		 -1.016293168 6.037248135 -0.061654534 -0.88962877 6.03970623 0.065009885 -1.019648552 6.03970623 0.065009885
		 -0.88962877 6.15107489 0.065009885 -1.019648552 6.15107489 0.065009885 -0.88962877 6.15107489 -0.065009885
		 -1.019648552 6.15107489 -0.065009885 -0.88962877 6.03970623 -0.065009885 -1.019648552 6.03970623 -0.065009885;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_20" -p "part_19";
	rename -uid "624DC403-4123-02FF-FEB6-FC89DC04FD4C";
	setAttr ".rp" -type "double3" -0.95463862863996296 6.2262028429726266 0 ;
	setAttr ".sp" -type "double3" -0.95463862863996296 6.2262028429726266 0 ;
createNode mesh -n "part_Shape20" -p "part_20";
	rename -uid "60C68DE6-4C48-E8A3-92EA-E5ACC01CCBF0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37342948 0.51414752
		 0.39351195 0.51414752 0.60648799 0.51414752 0.37342948 0.59168458 0.60648793 0.59168458
		 0.39351186 0.59970343 0.60648793 0.59970343 0.16045329 0.59168452 0.16045329 0.51414752
		 0.60648799 0.67843109 0.39351195 0.68644994 0.83954668 0.51414752 0.60648799 0.68644994
		 0.60648793 0.763987 0.39351186 0.77200592 0.60648793 0.77200592 0.39351195 0.59168458
		 0.39351189 0.67843109 0.39351195 0.763987 0.39351192 0.85073358 0.60648799 0.85073358
		 0.62657046 0.51414752 0.62657046 0.59168452 0.83954668 0.59168458 0.37717485 0.50984043
		 0.38347071 0.85211802 0.38347071 0.51408154 0.38976648 0.85444534 0.38976648 0.50984043
		 0.61652929 0.85211802 0.62282515 0.50984043 0.61023343 0.50984043 0.61023343 0.85444534
		 0.61652958 0.51408154 0.38347071 0.59831893 0.37717485 0.59599167 0.39337969 0.59570563
		 0.38347071 0.59175056 0.62282515 0.59599167 0.61652929 0.59831893 0.61652952 0.59175056
		 0.60662013 0.59570563 0.38347071 0.68485892 0.15041208 0.59327561 0.39337972 0.6824289
		 0.15670794 0.59599167 0.38347071 0.67981559 0.84958792 0.59327561 0.61652929 0.68485892
		 0.61652929 0.67981559 0.84329206 0.59599167 0.60662019 0.6824289 0.38347071 0.77062142
		 0.15670794 0.50984043 0.39337969 0.76800805 0.15041208 0.51255643 0.38347071 0.76557809
		 0.84329206 0.50984043 0.61652929 0.77062142 0.61652929 0.76557809 0.84958792 0.51255643
		 0.60662013 0.76800805 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.88887322 6.16976309 0.061654534 -0.88717043 6.1738739 0.061654534
		 -0.88887322 6.1738739 0.065765411 -0.89298409 6.1738739 0.067468196 -0.89298409 6.16976309 0.065765411
		 -0.89298409 6.1680603 0.061654534 -1.0204041 6.16976309 0.061654534 -1.016293168 6.1680603 0.061654534
		 -1.016293168 6.16976309 0.065765411 -1.016293168 6.1738739 0.067468196 -1.0204041 6.1738739 0.065765411
		 -1.022106886 6.1738739 0.061654534 -0.88887322 6.28264236 0.061654534 -0.89298409 6.28434515 0.061654534
		 -0.89298409 6.28264236 0.065765411 -0.89298409 6.27853155 0.067468196 -0.88887322 6.27853155 0.065765411
		 -0.88717043 6.27853155 0.061654534 -1.0204041 6.28264236 0.061654534 -1.022106886 6.27853155 0.061654534
		 -1.0204041 6.27853155 0.065765411 -1.016293168 6.27853155 0.067468196 -1.016293168 6.28264236 0.065765411
		 -1.016293168 6.28434515 0.061654534 -0.88887322 6.27853155 -0.065765411 -0.89298409 6.27853155 -0.067468196
		 -0.89298409 6.28264236 -0.065765411 -0.89298409 6.28434515 -0.061654534 -0.88887322 6.28264236 -0.061654534
		 -0.88717043 6.27853155 -0.061654534 -1.0204041 6.27853155 -0.065765411 -1.022106886 6.27853155 -0.061654534
		 -1.0204041 6.28264236 -0.061654534 -1.016293168 6.28434515 -0.061654534 -1.016293168 6.28264236 -0.065765411
		 -1.016293168 6.27853155 -0.067468196 -0.88887322 6.16976309 -0.061654534 -0.89298409 6.1680603 -0.061654534
		 -0.89298409 6.16976309 -0.065765411 -0.89298409 6.1738739 -0.067468196 -0.88887322 6.1738739 -0.065765411
		 -0.88717043 6.1738739 -0.061654534 -1.0204041 6.16976309 -0.061654534 -1.022106886 6.1738739 -0.061654534
		 -1.0204041 6.1738739 -0.065765411 -1.016293168 6.1738739 -0.067468196 -1.016293168 6.16976309 -0.065765411
		 -1.016293168 6.1680603 -0.061654534 -0.88962877 6.1705184 0.065009885 -1.019648552 6.1705184 0.065009885
		 -0.88962877 6.28188705 0.065009885 -1.019648552 6.28188705 0.065009885 -0.88962877 6.28188705 -0.065009885
		 -1.019648552 6.28188705 -0.065009885 -0.88962877 6.1705184 -0.065009885 -1.019648552 6.1705184 -0.065009885;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_21" -p "part_20";
	rename -uid "01E4FF41-4E08-00B5-4843-3B9DE70184CC";
	setAttr ".rp" -type "double3" -0.95463862863996296 6.3570150392882878 0 ;
	setAttr ".sp" -type "double3" -0.95463862863996296 6.3570150392882878 0 ;
createNode mesh -n "part_Shape21" -p "part_21";
	rename -uid "2962B568-4C33-B020-EE17-2FB77C34A5CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37342954 0.51414752
		 0.39351192 0.51414752 0.60648823 0.51414752 0.37342954 0.59168452 0.60648817 0.59168452
		 0.39351189 0.59970343 0.60648823 0.59970343 0.16045329 0.59168452 0.16045329 0.51414752
		 0.60648823 0.67843109 0.39351192 0.68644994 0.83954668 0.51414752 0.60648823 0.68644994
		 0.60648817 0.763987 0.39351189 0.77200592 0.60648823 0.77200586 0.39351192 0.59168458
		 0.39351192 0.67843109 0.39351192 0.763987 0.39351192 0.85073358 0.60648823 0.85073358
		 0.62657046 0.51414752 0.62657046 0.59168452 0.83954668 0.59168452 0.37717488 0.50984043
		 0.38347071 0.85211807 0.38347071 0.51408154 0.38976648 0.85444534 0.38976648 0.50984043
		 0.61652929 0.85211807 0.62282509 0.50984043 0.6102336 0.50984043 0.6102336 0.85444534
		 0.61652935 0.51408154 0.38347071 0.59831893 0.37717488 0.59599167 0.39337969 0.59570563
		 0.38347071 0.59175056 0.62282509 0.59599167 0.61652929 0.59831893 0.61652929 0.59175056
		 0.60662043 0.59570557 0.38347071 0.68485898 0.15041208 0.59327561 0.39337972 0.6824289
		 0.15670791 0.59599167 0.38347071 0.67981565 0.84958792 0.59327561 0.61652929 0.68485898
		 0.61652929 0.67981565 0.84329212 0.59599167 0.60662043 0.6824289 0.38347071 0.77062136
		 0.15670791 0.50984043 0.39337969 0.76800805 0.15041208 0.51255649 0.38347071 0.76557803
		 0.84329212 0.50984043 0.61652929 0.77062136 0.61652929 0.76557803 0.84958792 0.51255649
		 0.60662043 0.76800805 0.38347071 0.50984043 0.38347071 0.85444534 0.61652929 0.85444534
		 0.61652929 0.50984043 0.38347071 0.59599167 0.61652929 0.59599167 0.38347071 0.68214285
		 0.15041208 0.59599167 0.84958792 0.59599167 0.61652929 0.68214285 0.38347071 0.76829416
		 0.15041208 0.50984043 0.84958792 0.50984043 0.61652929 0.76829416;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.88887322 6.30057573 0.06165456 -0.88717043 6.30468655 0.06165456
		 -0.88887322 6.30468655 0.065765418 -0.89298409 6.30468655 0.067468196 -0.89298409 6.30057573 0.065765418
		 -0.89298409 6.29887295 0.06165456 -1.0204041 6.30057573 0.06165456 -1.016293287 6.29887295 0.06165456
		 -1.016293287 6.30057573 0.065765418 -1.016293287 6.30468655 0.067468196 -1.0204041 6.30468655 0.065765418
		 -1.022106886 6.30468655 0.06165456 -0.88887322 6.41345453 0.06165456 -0.89298409 6.41515732 0.06165456
		 -0.89298409 6.41345453 0.065765418 -0.89298409 6.40934372 0.067468196 -0.88887322 6.40934372 0.065765418
		 -0.88717043 6.40934372 0.06165456 -1.0204041 6.41345453 0.06165456 -1.022106886 6.40934372 0.06165456
		 -1.0204041 6.40934372 0.065765418 -1.016293287 6.40934372 0.067468196 -1.016293287 6.41345453 0.065765418
		 -1.016293287 6.41515732 0.06165456 -0.88887322 6.40934372 -0.065765418 -0.89298409 6.40934372 -0.067468196
		 -0.89298409 6.41345453 -0.065765418 -0.89298409 6.41515732 -0.06165456 -0.88887322 6.41345453 -0.06165456
		 -0.88717043 6.40934372 -0.06165456 -1.0204041 6.40934372 -0.065765418 -1.022106886 6.40934372 -0.06165456
		 -1.0204041 6.41345453 -0.06165456 -1.016293287 6.41515732 -0.06165456 -1.016293287 6.41345453 -0.065765418
		 -1.016293287 6.40934372 -0.067468196 -0.88887322 6.30057573 -0.06165456 -0.89298409 6.29887295 -0.06165456
		 -0.89298409 6.30057573 -0.065765418 -0.89298409 6.30468655 -0.067468196 -0.88887322 6.30468655 -0.065765418
		 -0.88717043 6.30468655 -0.06165456 -1.0204041 6.30057573 -0.06165456 -1.022106886 6.30468655 -0.06165456
		 -1.0204041 6.30468655 -0.065765418 -1.016293287 6.30468655 -0.067468196 -1.016293287 6.30057573 -0.065765418
		 -1.016293287 6.29887295 -0.06165456 -0.88962877 6.30133104 0.065009892 -1.019648552 6.30133104 0.065009892
		 -0.88962877 6.41269922 0.065009892 -1.019648552 6.41269922 0.065009892 -0.88962877 6.41269922 -0.065009892
		 -1.019648552 6.41269922 -0.065009892 -0.88962877 6.30133104 -0.065009892 -1.019648552 6.30133104 -0.065009892;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_22" -p "part_21";
	rename -uid "3FC9D42C-4BDE-AF5A-C218-A0823AEA8D43";
	setAttr ".rp" -type "double3" -0.95234564180988313 6.5467194418648118 -0.0096221787641952439 ;
	setAttr ".sp" -type "double3" -0.95234564180988313 6.5467194418648118 -0.0096221787641952439 ;
createNode mesh -n "part_Shape22" -p "part_22";
	rename -uid "3E14776B-40E7-5397-6C32-FF8E8DE218A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1125000204358782 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 194 ".uvst[0].uvsp[0:193]" -type "float2" 0.033882797 0.043889873
		 0.10559314 0.043889873 0.17730346 0.043889873 0.24901384 0.043889873 0.32072416 0.043889873
		 0.39243451 0.043889873 0.46414483 0.043889873 0.53585517 0.043889873 0.60756552 0.043889873
		 0.67927587 0.043889873 0.75098622 0.043889873 0.82269657 0.043889873 0.89440686 0.043889873
		 0.9661172 0.043889873 0.033882797 0.056364425 0.10559314 0.056364425 0.17730346 0.056364425
		 0.24901384 0.056364425 0.32072416 0.056364425 0.39243451 0.056364425 0.46414483 0.056364425
		 0.53585517 0.056364425 0.60756552 0.056364425 0.67927587 0.056364425 0.75098622 0.056364425
		 0.82269657 0.056364425 0.89440686 0.056364425 0.9661172 0.056364425 0.033882797 0.068839006
		 0.10559314 0.068839006 0.17730346 0.068839006 0.24901384 0.068839006 0.32072416 0.068839006
		 0.39243451 0.068839006 0.46414483 0.068839006 0.53585517 0.068839006 0.60756552 0.068839006
		 0.67927587 0.068839006 0.75098622 0.068839006 0.82269657 0.068839006 0.89440686 0.068839006
		 0.9661172 0.068839006 0.033882797 0.081313603 0.10559314 0.081313603 0.17730346 0.081313603
		 0.24901384 0.081313603 0.32072416 0.081313603 0.39243451 0.081313603 0.46414483 0.081313603
		 0.53585517 0.081313603 0.60756552 0.081313603 0.67927587 0.081313603 0.75098622 0.081313603
		 0.82269657 0.081313603 0.89440686 0.081313603 0.9661172 0.081313603 0.033882797 0.093788154
		 0.10559314 0.093788154 0.17730346 0.093788154 0.24901384 0.093788154 0.32072416 0.093788154
		 0.39243451 0.093788154 0.46414483 0.093788154 0.53585517 0.093788154 0.60756552 0.093788154
		 0.67927587 0.093788154 0.75098622 0.093788154 0.82269657 0.093788154 0.89440686 0.093788154
		 0.9661172 0.093788154 0.033882797 0.10626275 0.10559314 0.10626275 0.17730346 0.10626275
		 0.24901384 0.10626275 0.32072416 0.10626275 0.39243451 0.10626275 0.46414483 0.10626275
		 0.53585517 0.10626275 0.60756552 0.10626275 0.67927587 0.10626275 0.75098622 0.10626275
		 0.82269657 0.10626275 0.89440686 0.10626275 0.9661172 0.10626275 0.033882797 0.11873732
		 0.10559314 0.11873732 0.17730346 0.11873732 0.24901384 0.11873732 0.32072416 0.11873732
		 0.39243451 0.11873732 0.46414483 0.11873732 0.53585517 0.11873732 0.60756552 0.11873732
		 0.67927587 0.11873732 0.75098622 0.11873732 0.82269657 0.11873732 0.89440686 0.11873732
		 0.9661172 0.11873732 0.033882797 0.13121188 0.10559314 0.13121188 0.17730346 0.13121188
		 0.24901384 0.13121188 0.32072416 0.13121188 0.39243451 0.13121188 0.46414483 0.13121188
		 0.53585517 0.13121188 0.60756552 0.13121188 0.67927587 0.13121188 0.75098622 0.13121188
		 0.82269657 0.13121188 0.89440686 0.13121188 0.9661172 0.13121188 0.033882797 0.14368647
		 0.10559314 0.14368647 0.17730346 0.14368647 0.24901384 0.14368647 0.32072416 0.14368647
		 0.39243451 0.14368647 0.46414483 0.14368647 0.53585517 0.14368647 0.60756552 0.14368647
		 0.67927587 0.14368647 0.75098622 0.14368647 0.82269657 0.14368647 0.89440686 0.14368647
		 0.9661172 0.14368647 0.033882797 0.15616104 0.10559314 0.15616104 0.17730346 0.15616104
		 0.24901384 0.15616104 0.32072416 0.15616104 0.39243451 0.15616104 0.46414483 0.15616104
		 0.53585517 0.15616104 0.60756552 0.15616104 0.67927587 0.15616104 0.75098622 0.15616104
		 0.82269657 0.15616104 0.89440686 0.15616104 0.9661172 0.15616104 0.033882797 0.16863564
		 0.10559314 0.16863564 0.17730346 0.16863564 0.24901384 0.16863564 0.32072416 0.16863564
		 0.39243451 0.16863564 0.46414483 0.16863564 0.53585517 0.16863564 0.60756552 0.16863564
		 0.67927587 0.16863564 0.75098622 0.16863564 0.82269657 0.16863564 0.89440686 0.16863564
		 0.9661172 0.16863564 0.033882797 0.18111017 0.10559314 0.18111017 0.17730346 0.18111017
		 0.24901384 0.18111017 0.32072416 0.18111017 0.39243451 0.18111017 0.46414483 0.18111017
		 0.53585517 0.18111017 0.60756552 0.18111017 0.67927587 0.18111017 0.75098622 0.18111017
		 0.82269657 0.18111017 0.89440686 0.18111017 0.9661172 0.18111017 0.069737971 0.031415284
		 0.14144832 0.031415284 0.21315867 0.031415284 0.28486902 0.031415284 0.35657933 0.031415284
		 0.42828965 0.031415284 0.50000006 0.031415284 0.57171041 0.031415284 0.6434207 0.031415284
		 0.71513104 0.031415284 0.78684139 0.031415284 0.85855174 0.031415284 0.93026209 0.031415284
		 0.069737971 0.19358474 0.14144832 0.19358474 0.21315867 0.19358474 0.28486902 0.19358474
		 0.35657933 0.19358474 0.42828965 0.19358474 0.50000006 0.19358474 0.57171041 0.19358474
		 0.6434207 0.19358474 0.71513104 0.19358474 0.78684139 0.19358474 0.85855174 0.19358474
		 0.93026209 0.19358474;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 158 ".vt[0:157]"  -0.99139023 6.36781693 -0.030114384 -0.97739476 6.36781693 -0.045912087
		 -0.95766073 6.36781693 -0.05339621 -0.93670911 6.36781693 -0.050852228 -0.91933966 6.36781693 -0.038862936
		 -0.90953141 6.36781693 -0.020174939 -0.90953141 6.36781693 0.00093056541 -0.9193396 6.36781693 0.019618565
		 -0.93670911 6.36781693 0.031607859 -0.95766073 6.36781693 0.034151852 -0.9773947 6.36781693 0.026667736
		 -0.99139023 6.36781693 0.010870039 -0.99644113 6.36781693 -0.009622179 -1.028166056 6.38356829 -0.049415659
		 -1.00098836422 6.38356829 -0.080092959 -0.96266699 6.38356829 -0.094626255 -0.92198139 6.38356829 -0.08968614
		 -0.88825184 6.38356829 -0.066404328 -0.86920542 6.38356829 -0.030114414 -0.86920542 6.38356829 0.010870023
		 -0.88825184 6.38356829 0.04715994 -0.92198133 6.38356829 0.07044176 -0.96266699 6.38356829 0.075381897
		 -1.00098836422 6.38356829 0.060848616 -1.028166056 6.38356829 0.030171324 -1.037974238 6.38356829 -0.009622179
		 -1.060535192 6.40880156 -0.066404283 -1.021754742 6.40880156 -0.11017833 -0.96707338 6.40880156 -0.13091618
		 -0.90901828 6.40880156 -0.12386701 -0.86088896 6.40880156 -0.090645745 -0.83371121 6.40880156 -0.038862951
		 -0.83371121 6.40880156 0.019618548 -0.8608889 6.40880156 0.07140135 -0.90901828 6.40880156 0.10462263
		 -0.96707338 6.40880156 0.11167181 -1.021754742 6.40880156 0.090933993 -1.060535192 6.40880156 0.047159955
		 -1.074530721 6.40880156 -0.009622179 -1.086616755 6.44204998 -0.080092929 -1.038487434 6.44204998 -0.13441974
		 -0.97062391 6.44204998 -0.16015691 -0.89857322 6.44204998 -0.1514084 -0.8388412 6.44204998 -0.11017837
		 -0.80511165 6.44204998 -0.045912124 -0.80511165 6.44204998 0.026667703 -0.83884114 6.44204998 0.090933949
		 -0.89857316 6.44204998 0.132164 -0.97062385 6.44204998 0.14091256 -1.038487434 6.44204998 0.1151754
		 -1.086616755 6.44204998 0.060848616 -1.10398626 6.44204998 -0.009622179 -1.104895 6.48138142 -0.089686073
		 -1.050213814 6.48138142 -0.15140834 -0.97311211 6.48138142 -0.18064913 -0.89125323 6.48138142 -0.1707097
		 -0.82338989 6.48138142 -0.12386703 -0.78506875 6.48138142 -0.050852254 -0.78506875 6.48138142 0.031607829
		 -0.82338989 6.48138142 0.10462262 -0.89125317 6.48138142 0.1514653 -0.97311205 6.48138142 0.16140479
		 -1.050213814 6.48138142 0.13216403 -1.10489488 6.48138142 0.070441768 -1.1246289 6.48138142 -0.009622179
		 -1.11430764 6.52450991 -0.094626196 -1.05625248 6.52450991 -0.16015688 -0.97439343 6.52450991 -0.19120187
		 -0.88748372 6.52450991 -0.18064913 -0.81543303 6.52450991 -0.13091618 -0.77474737 6.52450991 -0.053396244
		 -0.77474737 6.52450991 0.034151815 -0.81543303 6.52450991 0.11167178 -0.8874836 6.52450991 0.16140476
		 -0.97439337 6.52450991 0.17195752 -1.05625248 6.52450991 0.14091256 -1.11430752 6.52450991 0.07538189
		 -1.13525915 6.52450991 -0.009622179 -1.11430764 6.5689292 -0.094626196 -1.05625248 6.5689292 -0.16015688
		 -0.97439343 6.5689292 -0.19120187 -0.88748372 6.5689292 -0.18064913 -0.81543303 6.5689292 -0.13091618
		 -0.77474737 6.5689292 -0.053396244 -0.77474737 6.5689292 0.034151815 -0.81543303 6.5689292 0.11167178
		 -0.8874836 6.5689292 0.16140476 -0.97439337 6.5689292 0.17195752 -1.05625248 6.5689292 0.14091256
		 -1.11430752 6.5689292 0.07538189 -1.13525915 6.5689292 -0.009622179 -1.104895 6.61205769 -0.089686073
		 -1.050213814 6.61205769 -0.15140834 -0.97311211 6.61205769 -0.18064913 -0.89125323 6.61205769 -0.1707097
		 -0.82338989 6.61205769 -0.12386703 -0.78506875 6.61205769 -0.050852254 -0.78506875 6.61205769 0.031607829
		 -0.82338989 6.61205769 0.10462262 -0.89125317 6.61205769 0.1514653 -0.97311205 6.61205769 0.16140479
		 -1.050213814 6.61205769 0.13216403 -1.10489488 6.61205769 0.070441768 -1.1246289 6.61205769 -0.009622179
		 -1.086616755 6.65138912 -0.080092929 -1.038487434 6.65138912 -0.13441974 -0.97062391 6.65138912 -0.16015691
		 -0.89857322 6.65138912 -0.1514084 -0.8388412 6.65138912 -0.11017837 -0.80511165 6.65138912 -0.045912124
		 -0.80511165 6.65138912 0.026667703 -0.83884114 6.65138912 0.090933949 -0.89857316 6.65138912 0.132164
		 -0.97062385 6.65138912 0.14091256 -1.038487434 6.65138912 0.1151754 -1.086616755 6.65138912 0.060848616
		 -1.10398626 6.65138912 -0.009622179 -1.060535192 6.68463755 -0.066404283 -1.021754742 6.68463755 -0.11017833
		 -0.96707338 6.68463755 -0.13091618 -0.90901828 6.68463755 -0.12386701 -0.86088896 6.68463755 -0.090645745
		 -0.83371121 6.68463755 -0.038862951 -0.83371121 6.68463755 0.019618548 -0.8608889 6.68463755 0.07140135
		 -0.90901828 6.68463755 0.10462263 -0.96707338 6.68463755 0.11167181 -1.021754742 6.68463755 0.090933993
		 -1.060535192 6.68463755 0.047159955 -1.074530721 6.68463755 -0.009622179 -1.028166056 6.70987082 -0.049415659
		 -1.00098836422 6.70987082 -0.080092959 -0.96266699 6.70987082 -0.094626255 -0.92198139 6.70987082 -0.08968614
		 -0.88825184 6.70987082 -0.066404328 -0.86920542 6.70987082 -0.030114414 -0.86920542 6.70987082 0.010870023
		 -0.88825184 6.70987082 0.04715994 -0.92198133 6.70987082 0.07044176 -0.96266699 6.70987082 0.075381897
		 -1.00098836422 6.70987082 0.060848616 -1.028166056 6.70987082 0.030171324 -1.037974238 6.70987082 -0.009622179
		 -0.99139023 6.72562218 -0.030114384 -0.97739476 6.72562218 -0.045912087 -0.95766073 6.72562218 -0.05339621
		 -0.93670911 6.72562218 -0.050852228 -0.91933966 6.72562218 -0.038862936 -0.90953141 6.72562218 -0.020174939
		 -0.90953141 6.72562218 0.00093056541 -0.9193396 6.72562218 0.019618565 -0.93670911 6.72562218 0.031607859
		 -0.95766073 6.72562218 0.034151852 -0.9773947 6.72562218 0.026667736 -0.99139023 6.72562218 0.010870039
		 -0.99644113 6.72562218 -0.009622179 -0.95234561 6.362463 -0.009622179 -0.95234561 6.7309761 -0.009622179;
	setAttr -s 325 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 0 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 13 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 26 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 39 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 52 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 65 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 78 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 91 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 104 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 117 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1
		 142 130 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 143 1 0 13 1 1 14 1 2 15 1 3 16 1 4 17 1
		 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1;
	setAttr ".ed[166:324]" 10 23 1 11 24 1 12 25 1 13 26 1 14 27 1 15 28 1 16 29 1
		 17 30 1 18 31 1 19 32 1 20 33 1 21 34 1 22 35 1 23 36 1 24 37 1 25 38 1 26 39 1 27 40 1
		 28 41 1 29 42 1 30 43 1 31 44 1 32 45 1 33 46 1 34 47 1 35 48 1 36 49 1 37 50 1 38 51 1
		 39 52 1 40 53 1 41 54 1 42 55 1 43 56 1 44 57 1 45 58 1 46 59 1 47 60 1 48 61 1 49 62 1
		 50 63 1 51 64 1 52 65 1 53 66 1 54 67 1 55 68 1 56 69 1 57 70 1 58 71 1 59 72 1 60 73 1
		 61 74 1 62 75 1 63 76 1 64 77 1 65 78 1 66 79 1 67 80 1 68 81 1 69 82 1 70 83 1 71 84 1
		 72 85 1 73 86 1 74 87 1 75 88 1 76 89 1 77 90 1 78 91 1 79 92 1 80 93 1 81 94 1 82 95 1
		 83 96 1 84 97 1 85 98 1 86 99 1 87 100 1 88 101 1 89 102 1 90 103 1 91 104 1 92 105 1
		 93 106 1 94 107 1 95 108 1 96 109 1 97 110 1 98 111 1 99 112 1 100 113 1 101 114 1
		 102 115 1 103 116 1 104 117 1 105 118 1 106 119 1 107 120 1 108 121 1 109 122 1 110 123 1
		 111 124 1 112 125 1 113 126 1 114 127 1 115 128 1 116 129 1 117 130 1 118 131 1 119 132 1
		 120 133 1 121 134 1 122 135 1 123 136 1 124 137 1 125 138 1 126 139 1 127 140 1 128 141 1
		 129 142 1 130 143 1 131 144 1 132 145 1 133 146 1 134 147 1 135 148 1 136 149 1 137 150 1
		 138 151 1 139 152 1 140 153 1 141 154 1 142 155 1 156 0 1 156 1 1 156 2 1 156 3 1
		 156 4 1 156 5 1 156 6 1 156 7 1 156 8 1 156 9 1 156 10 1 156 11 1 156 12 1 143 157 1
		 144 157 1 145 157 1 146 157 1 147 157 1 148 157 1 149 157 1 150 157 1 151 157 1 152 157 1
		 153 157 1 154 157 1 155 157 1;
	setAttr -s 169 -ch 650 ".fc[0:168]" -type "polyFaces" 
		f 4 156 13 -158 -1
		mu 0 4 0 14 15 1
		f 4 157 14 -159 -2
		mu 0 4 1 15 16 2
		f 4 158 15 -160 -3
		mu 0 4 2 16 17 3
		f 4 159 16 -161 -4
		mu 0 4 3 17 18 4
		f 4 160 17 -162 -5
		mu 0 4 4 18 19 5
		f 4 161 18 -163 -6
		mu 0 4 5 19 20 6
		f 4 162 19 -164 -7
		mu 0 4 6 20 21 7
		f 4 163 20 -165 -8
		mu 0 4 7 21 22 8
		f 4 164 21 -166 -9
		mu 0 4 8 22 23 9
		f 4 165 22 -167 -10
		mu 0 4 9 23 24 10
		f 4 166 23 -168 -11
		mu 0 4 10 24 25 11
		f 4 167 24 -169 -12
		mu 0 4 11 25 26 12
		f 4 168 25 -157 -13
		mu 0 4 12 26 27 13
		f 4 169 26 -171 -14
		mu 0 4 14 28 29 15
		f 4 170 27 -172 -15
		mu 0 4 15 29 30 16
		f 4 171 28 -173 -16
		mu 0 4 16 30 31 17
		f 4 172 29 -174 -17
		mu 0 4 17 31 32 18
		f 4 173 30 -175 -18
		mu 0 4 18 32 33 19
		f 4 174 31 -176 -19
		mu 0 4 19 33 34 20
		f 4 175 32 -177 -20
		mu 0 4 20 34 35 21
		f 4 176 33 -178 -21
		mu 0 4 21 35 36 22
		f 4 177 34 -179 -22
		mu 0 4 22 36 37 23
		f 4 178 35 -180 -23
		mu 0 4 23 37 38 24
		f 4 179 36 -181 -24
		mu 0 4 24 38 39 25
		f 4 180 37 -182 -25
		mu 0 4 25 39 40 26
		f 4 181 38 -170 -26
		mu 0 4 26 40 41 27
		f 4 182 39 -184 -27
		mu 0 4 28 42 43 29
		f 4 183 40 -185 -28
		mu 0 4 29 43 44 30
		f 4 184 41 -186 -29
		mu 0 4 30 44 45 31
		f 4 185 42 -187 -30
		mu 0 4 31 45 46 32
		f 4 186 43 -188 -31
		mu 0 4 32 46 47 33
		f 4 187 44 -189 -32
		mu 0 4 33 47 48 34
		f 4 188 45 -190 -33
		mu 0 4 34 48 49 35
		f 4 189 46 -191 -34
		mu 0 4 35 49 50 36
		f 4 190 47 -192 -35
		mu 0 4 36 50 51 37
		f 4 191 48 -193 -36
		mu 0 4 37 51 52 38
		f 4 192 49 -194 -37
		mu 0 4 38 52 53 39
		f 4 193 50 -195 -38
		mu 0 4 39 53 54 40
		f 4 194 51 -183 -39
		mu 0 4 40 54 55 41
		f 4 195 52 -197 -40
		mu 0 4 42 56 57 43
		f 4 196 53 -198 -41
		mu 0 4 43 57 58 44
		f 4 197 54 -199 -42
		mu 0 4 44 58 59 45
		f 4 198 55 -200 -43
		mu 0 4 45 59 60 46
		f 4 199 56 -201 -44
		mu 0 4 46 60 61 47
		f 4 200 57 -202 -45
		mu 0 4 47 61 62 48
		f 4 201 58 -203 -46
		mu 0 4 48 62 63 49
		f 4 202 59 -204 -47
		mu 0 4 49 63 64 50
		f 4 203 60 -205 -48
		mu 0 4 50 64 65 51
		f 4 204 61 -206 -49
		mu 0 4 51 65 66 52
		f 4 205 62 -207 -50
		mu 0 4 52 66 67 53
		f 4 206 63 -208 -51
		mu 0 4 53 67 68 54
		f 4 207 64 -196 -52
		mu 0 4 54 68 69 55
		f 4 208 65 -210 -53
		mu 0 4 56 70 71 57
		f 4 209 66 -211 -54
		mu 0 4 57 71 72 58
		f 4 210 67 -212 -55
		mu 0 4 58 72 73 59
		f 4 211 68 -213 -56
		mu 0 4 59 73 74 60
		f 4 212 69 -214 -57
		mu 0 4 60 74 75 61
		f 4 213 70 -215 -58
		mu 0 4 61 75 76 62
		f 4 214 71 -216 -59
		mu 0 4 62 76 77 63
		f 4 215 72 -217 -60
		mu 0 4 63 77 78 64
		f 4 216 73 -218 -61
		mu 0 4 64 78 79 65
		f 4 217 74 -219 -62
		mu 0 4 65 79 80 66
		f 4 218 75 -220 -63
		mu 0 4 66 80 81 67
		f 4 219 76 -221 -64
		mu 0 4 67 81 82 68
		f 4 220 77 -209 -65
		mu 0 4 68 82 83 69
		f 4 221 78 -223 -66
		mu 0 4 70 84 85 71
		f 4 222 79 -224 -67
		mu 0 4 71 85 86 72
		f 4 223 80 -225 -68
		mu 0 4 72 86 87 73
		f 4 224 81 -226 -69
		mu 0 4 73 87 88 74
		f 4 225 82 -227 -70
		mu 0 4 74 88 89 75
		f 4 226 83 -228 -71
		mu 0 4 75 89 90 76
		f 4 227 84 -229 -72
		mu 0 4 76 90 91 77
		f 4 228 85 -230 -73
		mu 0 4 77 91 92 78
		f 4 229 86 -231 -74
		mu 0 4 78 92 93 79
		f 4 230 87 -232 -75
		mu 0 4 79 93 94 80
		f 4 231 88 -233 -76
		mu 0 4 80 94 95 81
		f 4 232 89 -234 -77
		mu 0 4 81 95 96 82
		f 4 233 90 -222 -78
		mu 0 4 82 96 97 83
		f 4 234 91 -236 -79
		mu 0 4 84 98 99 85
		f 4 235 92 -237 -80
		mu 0 4 85 99 100 86
		f 4 236 93 -238 -81
		mu 0 4 86 100 101 87
		f 4 237 94 -239 -82
		mu 0 4 87 101 102 88
		f 4 238 95 -240 -83
		mu 0 4 88 102 103 89
		f 4 239 96 -241 -84
		mu 0 4 89 103 104 90
		f 4 240 97 -242 -85
		mu 0 4 90 104 105 91
		f 4 241 98 -243 -86
		mu 0 4 91 105 106 92
		f 4 242 99 -244 -87
		mu 0 4 92 106 107 93
		f 4 243 100 -245 -88
		mu 0 4 93 107 108 94
		f 4 244 101 -246 -89
		mu 0 4 94 108 109 95
		f 4 245 102 -247 -90
		mu 0 4 95 109 110 96
		f 4 246 103 -235 -91
		mu 0 4 96 110 111 97
		f 4 247 104 -249 -92
		mu 0 4 98 112 113 99
		f 4 248 105 -250 -93
		mu 0 4 99 113 114 100
		f 4 249 106 -251 -94
		mu 0 4 100 114 115 101
		f 4 250 107 -252 -95
		mu 0 4 101 115 116 102
		f 4 251 108 -253 -96
		mu 0 4 102 116 117 103
		f 4 252 109 -254 -97
		mu 0 4 103 117 118 104
		f 4 253 110 -255 -98
		mu 0 4 104 118 119 105
		f 4 254 111 -256 -99
		mu 0 4 105 119 120 106
		f 4 255 112 -257 -100
		mu 0 4 106 120 121 107
		f 4 256 113 -258 -101
		mu 0 4 107 121 122 108
		f 4 257 114 -259 -102
		mu 0 4 108 122 123 109
		f 4 258 115 -260 -103
		mu 0 4 109 123 124 110
		f 4 259 116 -248 -104
		mu 0 4 110 124 125 111
		f 4 260 117 -262 -105
		mu 0 4 112 126 127 113
		f 4 261 118 -263 -106
		mu 0 4 113 127 128 114
		f 4 262 119 -264 -107
		mu 0 4 114 128 129 115
		f 4 263 120 -265 -108
		mu 0 4 115 129 130 116
		f 4 264 121 -266 -109
		mu 0 4 116 130 131 117
		f 4 265 122 -267 -110
		mu 0 4 117 131 132 118
		f 4 266 123 -268 -111
		mu 0 4 118 132 133 119
		f 4 267 124 -269 -112
		mu 0 4 119 133 134 120
		f 4 268 125 -270 -113
		mu 0 4 120 134 135 121
		f 4 269 126 -271 -114
		mu 0 4 121 135 136 122
		f 4 270 127 -272 -115
		mu 0 4 122 136 137 123
		f 4 271 128 -273 -116
		mu 0 4 123 137 138 124
		f 4 272 129 -261 -117
		mu 0 4 124 138 139 125
		f 4 273 130 -275 -118
		mu 0 4 126 140 141 127
		f 4 274 131 -276 -119
		mu 0 4 127 141 142 128
		f 4 275 132 -277 -120
		mu 0 4 128 142 143 129
		f 4 276 133 -278 -121
		mu 0 4 129 143 144 130
		f 4 277 134 -279 -122
		mu 0 4 130 144 145 131
		f 4 278 135 -280 -123
		mu 0 4 131 145 146 132
		f 4 279 136 -281 -124
		mu 0 4 132 146 147 133
		f 4 280 137 -282 -125
		mu 0 4 133 147 148 134
		f 4 281 138 -283 -126
		mu 0 4 134 148 149 135
		f 4 282 139 -284 -127
		mu 0 4 135 149 150 136
		f 4 283 140 -285 -128
		mu 0 4 136 150 151 137
		f 4 284 141 -286 -129
		mu 0 4 137 151 152 138
		f 4 285 142 -274 -130
		mu 0 4 138 152 153 139
		f 4 286 143 -288 -131
		mu 0 4 140 154 155 141
		f 4 287 144 -289 -132
		mu 0 4 141 155 156 142
		f 4 288 145 -290 -133
		mu 0 4 142 156 157 143
		f 4 289 146 -291 -134
		mu 0 4 143 157 158 144
		f 4 290 147 -292 -135
		mu 0 4 144 158 159 145
		f 4 291 148 -293 -136
		mu 0 4 145 159 160 146
		f 4 292 149 -294 -137
		mu 0 4 146 160 161 147
		f 4 293 150 -295 -138
		mu 0 4 147 161 162 148
		f 4 294 151 -296 -139
		mu 0 4 148 162 163 149
		f 4 295 152 -297 -140
		mu 0 4 149 163 164 150
		f 4 296 153 -298 -141
		mu 0 4 150 164 165 151
		f 4 297 154 -299 -142
		mu 0 4 151 165 166 152
		f 4 298 155 -287 -143
		mu 0 4 152 166 167 153
		f 3 -301 299 0
		mu 0 3 1 168 0
		f 3 -302 300 1
		mu 0 3 2 169 1
		f 3 -303 301 2
		mu 0 3 3 170 2
		f 3 -304 302 3
		mu 0 3 4 171 3
		f 3 -305 303 4
		mu 0 3 5 172 4
		f 3 -306 304 5
		mu 0 3 6 173 5
		f 3 -307 305 6
		mu 0 3 7 174 6
		f 3 -308 306 7
		mu 0 3 8 175 7
		f 3 -309 307 8
		mu 0 3 9 176 8
		f 3 -310 308 9
		mu 0 3 10 177 9
		f 3 -311 309 10
		mu 0 3 11 178 10
		f 3 -312 310 11
		mu 0 3 12 179 11
		f 3 -300 311 12
		mu 0 3 13 180 12
		f 3 312 -314 -144
		mu 0 3 154 181 155
		f 3 313 -315 -145
		mu 0 3 155 182 156
		f 3 314 -316 -146
		mu 0 3 156 183 157
		f 3 315 -317 -147
		mu 0 3 157 184 158
		f 3 316 -318 -148
		mu 0 3 158 185 159
		f 3 317 -319 -149
		mu 0 3 159 186 160
		f 3 318 -320 -150
		mu 0 3 160 187 161
		f 3 319 -321 -151
		mu 0 3 161 188 162
		f 3 320 -322 -152
		mu 0 3 162 189 163
		f 3 321 -323 -153
		mu 0 3 163 190 164
		f 3 322 -324 -154
		mu 0 3 164 191 165
		f 3 323 -325 -155
		mu 0 3 165 192 166
		f 3 324 -313 -156
		mu 0 3 166 193 167;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_23" -p "part_04";
	rename -uid "EF3B73CE-46B4-1B54-2B0B-C7B4D756267F";
	setAttr ".rp" -type "double3" -1.072223 4.2466166320581209 -1.1551922255469578e-15 ;
	setAttr ".sp" -type "double3" -1.072223 4.2466166320581209 -1.1551922255469578e-15 ;
createNode mesh -n "part_Shape23" -p "part_23";
	rename -uid "6D17F281-410D-EE83-44C0-DE91E63267E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37181902 0.30968785
		 0.38578239 0.30968785 0.61421758 0.30968785 0.37181902 0.46799201 0.61421752 0.46799201
		 0.38578185 0.47805041 0.61421758 0.47805011 0.16206381 0.46799201 0.16206381 0.30968785
		 0.61421758 0.62403363 0.38578239 0.63409173 0.83793616 0.30968785 0.61421758 0.63409173
		 0.61421752 0.79239589 0.38578185 0.80245399 0.61421758 0.80245405 0.38578239 0.46799201
		 0.38578185 0.62403435 0.38578239 0.79239595 0.38578185 0.94843757 0.61421764 0.94843757
		 0.62818098 0.30968785 0.62818098 0.46799201 0.83793616 0.46799201 0.37612346 0.30773896
		 0.38347071 0.95143336 0.37884605 0.30968076 0.38488197 0.95654678 0.38488197 0.30773896
		 0.61652929 0.95143336 0.62387651 0.30773896 0.61511803 0.30773896 0.61511803 0.95654678
		 0.62115389 0.30968076 0.38347071 0.47505432 0.37612346 0.4699409 0.38577527 0.47299403
		 0.37884605 0.46799904 0.62387651 0.4699409 0.61652929 0.47505432 0.62115383 0.46799904
		 0.61422437 0.47299385 0.38347071 0.63333464 0.15041208 0.46874911 0.38577527 0.62909019
		 0.15775931 0.4699409 0.38347071 0.62702936 0.84958792 0.46874911 0.61652929 0.63333464
		 0.61652929 0.62702942 0.84224069 0.4699409 0.61422443 0.62908989 0.38347071 0.79945821
		 0.15775931 0.30773896 0.38577527 0.79739779 0.15041208 0.3089307 0.38347071 0.79315305
		 0.84224069 0.30773896 0.61652929 0.79945821 0.61652929 0.79315305 0.84958792 0.3089307
		 0.61422437 0.79739779 0.38347071 0.30773896 0.38347071 0.95654678 0.61652929 0.95654678
		 0.61652929 0.30773896 0.38347071 0.4699409 0.61652929 0.4699409 0.38347071 0.63214284
		 0.15041208 0.4699409 0.84958792 0.4699409 0.61652929 0.63214284 0.38347071 0.79434484
		 0.15041208 0.30773896 0.84958792 0.30773896 0.61652929 0.79434484;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -1.022851706 4.019968033 -0.2748827 -1.022851706 4.023846626 -0.27648926
		 -1.018973231 4.023846626 -0.2748827 -1.017366648 4.023846626 -0.27100417 -1.018973231 4.019968033 -0.27100417
		 -1.022851706 4.018361568 -0.27100417 -1.022851586 4.019968033 0.2748827 -1.022851586 4.018361568 0.27100417
		 -1.018973112 4.019968033 0.27100417 -1.017366529 4.023846626 0.27100417 -1.018973112 4.023846626 0.2748827
		 -1.022851586 4.023846626 0.27648926 -1.022851706 4.47326517 -0.2748827 -1.022851706 4.47487164 -0.27100417
		 -1.018973231 4.47326517 -0.27100417 -1.017366648 4.46938658 -0.27100417 -1.018973231 4.46938658 -0.2748827
		 -1.022851706 4.46938658 -0.27648926 -1.022851586 4.47326517 0.2748827 -1.022851586 4.46938658 0.27648926
		 -1.018973112 4.46938658 0.2748827 -1.017366529 4.46938658 0.27100417 -1.018973112 4.47326517 0.27100417
		 -1.022851586 4.47487164 0.27100417 -1.1254729 4.46938658 -0.2748827 -1.12707949 4.46938658 -0.27100417
		 -1.1254729 4.47326517 -0.27100417 -1.12159443 4.47487164 -0.27100417 -1.12159443 4.47326517 -0.2748827
		 -1.12159443 4.46938658 -0.27648926 -1.1254729 4.46938658 0.2748827 -1.12159443 4.46938658 0.27648926
		 -1.12159443 4.47326517 0.2748827 -1.12159443 4.47487164 0.27100417 -1.1254729 4.47326517 0.27100417
		 -1.12707949 4.46938658 0.27100417 -1.12159443 4.019968033 -0.2748827 -1.12159443 4.018361568 -0.27100417
		 -1.1254729 4.019968033 -0.27100417 -1.12707949 4.023846626 -0.27100417 -1.1254729 4.023846626 -0.2748827
		 -1.12159443 4.023846626 -0.27648926 -1.12159443 4.019968033 0.2748827 -1.12159443 4.023846626 0.27648926
		 -1.1254729 4.023846626 0.2748827 -1.12707949 4.023846626 0.27100417 -1.1254729 4.019968033 0.27100417
		 -1.12159443 4.018361568 0.27100417 -1.019685984 4.020680904 -0.27416989 -1.019685864 4.020680904 0.27416989
		 -1.019685984 4.4725523 -0.27416989 -1.019685864 4.4725523 0.27416989 -1.12476015 4.4725523 -0.27416989
		 -1.12476015 4.4725523 0.27416989 -1.12476015 4.020680904 -0.27416989 -1.12476015 4.020680904 0.27416989;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_24" -p "part_23";
	rename -uid "6F6D32C7-4012-ACC8-3C73-A7974B8A1F84";
	setAttr ".rp" -type "double3" -1.3869968391731291 3.3802448972838306 -1.6378180673622391e-15 ;
	setAttr ".sp" -type "double3" -1.3869968391731291 3.3802448972838306 -1.6378180673622391e-15 ;
createNode mesh -n "part_Shape24" -p "part_24";
	rename -uid "CB783D91-431C-848D-16BE-D2AE82161476";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.37181896 0.30953246
		 0.39368352 0.30953246 0.60631645 0.30953246 0.37181896 0.46814734 0.60631645 0.46814734
		 0.39368355 0.47805017 0.60631645 0.47805017 0.16206384 0.46814734 0.16206384 0.30953246
		 0.60631645 0.62403357 0.39368352 0.63393641 0.8379361 0.30953246 0.60631645 0.63393641
		 0.60631645 0.79255128 0.39368355 0.80245411 0.60631645 0.80245411 0.39368355 0.46814734
		 0.39368355 0.62403357 0.39368352 0.79255128 0.39368355 0.94843757 0.60631645 0.94843745
		 0.62818104 0.30953246 0.62818104 0.46814734 0.8379361 0.46814734 0.37612349 0.30773896
		 0.38347071 0.95143336 0.38275832 0.3095265 0.38987806 0.95654678 0.38987806 0.30773896
		 0.61652929 0.95143336 0.62387651 0.30773896 0.61012191 0.30773896 0.61012191 0.95654678
		 0.61724168 0.3095265 0.38347071 0.47505432 0.37612349 0.4699409 0.39354676 0.47297311
		 0.38275832 0.4681533 0.62387651 0.4699409 0.61652929 0.47505432 0.61724168 0.4681533
		 0.6064533 0.47297311 0.38347071 0.63323873 0.15041208 0.46884495 0.39354676 0.62911063
		 0.15775931 0.4699409 0.38347071 0.62702942 0.84958792 0.46884495 0.61652929 0.63323873
		 0.61652929 0.62702942 0.84224069 0.4699409 0.6064533 0.62911063 0.38347071 0.79945821
		 0.15775931 0.30773896 0.39354676 0.79737705 0.15041208 0.30883485 0.38347071 0.79324889
		 0.84224069 0.30773896 0.61652929 0.79945821 0.61652929 0.79324889 0.84958792 0.30883485
		 0.6064533 0.79737705 0.38347071 0.30773896 0.38347071 0.95654678 0.61652929 0.95654678
		 0.61652929 0.30773896 0.38347071 0.4699409 0.61652929 0.4699409 0.38347071 0.63214284
		 0.15041208 0.4699409 0.84958792 0.4699409 0.61652929 0.63214284 0.38347071 0.79434484
		 0.15041208 0.30773896 0.84958792 0.30773896 0.61652929 0.79434484;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -1.15601134 2.227355 -0.28529143 -1.15601134 2.2455008 -0.2928077
		 -1.13786542 2.2455008 -0.28529143 -1.13034916 2.2455008 -0.26714551 -1.13786542 2.227355 -0.26714551
		 -1.15601134 2.21983862 -0.26714551 -1.15601134 2.227355 0.28529143 -1.15601134 2.21983862 0.26714551
		 -1.13786542 2.227355 0.26714551 -1.13034916 2.2455008 0.26714551 -1.13786542 2.2455008 0.28529143
		 -1.15601134 2.2455008 0.2928077 -1.15601134 4.53313494 -0.28529143 -1.15601134 4.54065132 -0.26714551
		 -1.13786542 4.53313494 -0.26714551 -1.13034916 4.5149889 -0.26714551 -1.13786542 4.5149889 -0.28529143
		 -1.15601134 4.5149889 -0.2928077 -1.15601134 4.53313494 0.28529143 -1.15601134 4.5149889 0.2928077
		 -1.13786542 4.5149889 0.28529143 -1.13034916 4.5149889 0.26714551 -1.13786542 4.53313494 0.26714551
		 -1.15601134 4.54065132 0.26714551 -1.63612831 4.5149889 -0.2852914 -1.64364457 4.5149889 -0.26714551
		 -1.63612831 4.53313494 -0.26714551 -1.61798239 4.54065132 -0.26714551 -1.61798239 4.53313494 -0.28529143
		 -1.61798239 4.5149889 -0.2928077 -1.63612807 4.5149889 0.28529143 -1.61798215 4.5149889 0.2928077
		 -1.61798215 4.53313494 0.28529143 -1.61798215 4.54065132 0.26714551 -1.63612807 4.53313494 0.26714551
		 -1.64364433 4.5149889 0.26714551 -1.61798239 2.227355 -0.28529143 -1.61798239 2.21983862 -0.26714551
		 -1.63612831 2.227355 -0.26714551 -1.64364457 2.2455008 -0.26714551 -1.63612831 2.2455008 -0.2852914
		 -1.61798239 2.2455008 -0.2928077 -1.61798215 2.227355 0.28529143 -1.61798215 2.2455008 0.2928077
		 -1.63612807 2.2455008 0.28529143 -1.64364433 2.2455008 0.26714551 -1.63612807 2.227355 0.26714551
		 -1.61798215 2.21983862 0.26714551 -1.14120042 2.23069 -0.2819564 -1.14120042 2.23069 0.2819564
		 -1.14120042 4.52979994 -0.2819564 -1.14120042 4.52979994 0.2819564 -1.63279331 4.52979994 -0.2819564
		 -1.63279307 4.52979994 0.2819564 -1.63279331 2.23069 -0.2819564 -1.63279307 2.23069 0.2819564;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "part_24_parentConstraint1" -p "part_24";
	rename -uid "A6E4B784-46A2-3A2E-DDE4-3BB7E63D5D0C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_r_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.053704427040326408 -0.87730963589059829 0.020900347070338249 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 0 ;
	setAttr ".lr" -type "double3" -7.9922408379492129 -1.7531849588355348 -26.149642437079329 ;
	setAttr ".rst" -type "double3" 0 0 2.3910604013316364e-19 ;
	setAttr -k on ".w0";
createNode transform -n "part_25" -p "robot";
	rename -uid "3945A408-4BE1-A2C3-EF34-0BBEE6EF261D";
	setAttr ".rp" -type "double3" -0.584071 1.3172967325108433 -0.026157909553117375 ;
	setAttr ".sp" -type "double3" -0.584071 1.3172967325108433 -0.026157909553117375 ;
createNode mesh -n "part_Shape25" -p "part_25";
	rename -uid "F3478A0D-4A59-EE08-3674-92BE640EE69C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.3718189 0.3104803
		 0.3930898 0.3104803 0.60691017 0.3104803 0.37181896 0.46719956 0.60691023 0.46719956
		 0.3930898 0.47805017 0.60691017 0.47805017 0.16206384 0.46719956 0.16206384 0.3104803
		 0.60691017 0.62403357 0.3930898 0.63488418 0.83793616 0.3104803 0.60691017 0.63488418
		 0.60691017 0.79160345 0.3930898 0.80245411 0.60691017 0.80245411 0.3930898 0.46719956
		 0.3930898 0.62403357 0.39308977 0.79160351 0.3930898 0.94843745 0.60691017 0.94843745
		 0.62818104 0.3104803 0.62818104 0.46719956 0.83793616 0.46719956 0.37612349 0.30773896
		 0.38347071 0.95143336 0.38246971 0.31046635 0.38949305 0.95654678 0.38949305 0.30773896
		 0.61652929 0.95143336 0.62387651 0.30773896 0.61050695 0.30773896 0.61050695 0.95654678
		 0.61753023 0.31046635 0.38347071 0.47505432 0.37612349 0.4699409 0.39296862 0.47252446
		 0.38246971 0.46721351 0.62387651 0.4699409 0.61652929 0.47505432 0.61753035 0.46721351
		 0.60703146 0.47252446 0.38347071 0.63382578 0.15041208 0.46825802 0.39296862 0.62955928
		 0.15775931 0.4699409 0.38347071 0.62702942 0.84958792 0.46825802 0.61652929 0.63382578
		 0.61652929 0.62702942 0.84224069 0.4699409 0.60703135 0.62955934 0.38347071 0.79945821
		 0.15775931 0.30773896 0.3929686 0.79692835 0.15041208 0.30942184 0.38347071 0.79266191
		 0.84224069 0.30773896 0.61652929 0.79945821 0.61652929 0.79266191 0.84958792 0.30942184
		 0.60703135 0.79692835 0.38347071 0.30773896 0.38347071 0.95654678 0.61652929 0.95654678
		 0.61652929 0.30773896 0.38347071 0.4699409 0.61652929 0.4699409 0.38347071 0.63214284
		 0.15041208 0.4699409 0.84958792 0.4699409 0.61652929 0.63214284 0.38347071 0.79434484
		 0.15041208 0.30773896 0.84958792 0.30773896 0.61652929 0.79434484;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.29738519 0.38435292 -0.40267742 -0.29738519 0.4068746 -0.4120062
		 -0.27486351 0.4068746 -0.40267742 -0.26553473 0.4068746 -0.38015574 -0.27486351 0.38435292 -0.38015574
		 -0.29738519 0.37502414 -0.38015574 -0.29738519 0.38435292 0.35036159 -0.29738519 0.37502414 0.32783991
		 -0.27486351 0.38435292 0.32783991 -0.26553473 0.4068746 0.32783991 -0.27486351 0.4068746 0.35036159
		 -0.29738519 0.4068746 0.35969037 -0.29738519 2.25024056 -0.40267742 -0.29738519 2.25956941 -0.38015574
		 -0.27486351 2.25024056 -0.38015574 -0.26553473 2.22771907 -0.38015574 -0.27486351 2.22771907 -0.40267742
		 -0.29738519 2.22771907 -0.4120062 -0.29738519 2.25024056 0.35036159 -0.29738519 2.22771907 0.35969037
		 -0.27486351 2.22771907 0.35036159 -0.26553473 2.22771907 0.32783991 -0.27486351 2.25024056 0.32783991
		 -0.29738519 2.25956941 0.32783991 -0.89327854 2.22771907 -0.40267742 -0.90260732 2.22771907 -0.38015574
		 -0.89327854 2.25024056 -0.38015574 -0.87075686 2.25956941 -0.38015574 -0.87075686 2.25024056 -0.40267742
		 -0.87075686 2.22771907 -0.4120062 -0.89327854 2.22771907 0.35036159 -0.87075686 2.22771907 0.35969037
		 -0.87075686 2.25024056 0.35036159 -0.87075686 2.25956941 0.32783991 -0.89327854 2.25024056 0.32783991
		 -0.90260732 2.22771907 0.32783991 -0.87075686 0.38435292 -0.40267742 -0.87075686 0.37502414 -0.38015574
		 -0.89327854 0.38435292 -0.38015574 -0.90260732 0.4068746 -0.38015574 -0.89327854 0.4068746 -0.40267742
		 -0.87075686 0.4068746 -0.4120062 -0.87075686 0.38435292 0.35036159 -0.87075686 0.4068746 0.35969037
		 -0.89327854 0.4068746 0.35036159 -0.90260732 0.4068746 0.32783991 -0.89327854 0.38435292 0.32783991
		 -0.87075686 0.37502414 0.32783991 -0.27900273 0.38849214 -0.3985382 -0.27900273 0.38849214 0.34622237
		 -0.27900273 2.24610138 -0.3985382 -0.27900273 2.24610138 0.34622237 -0.88913929 2.24610138 -0.3985382
		 -0.88913929 2.24610138 0.34622237 -0.88913929 0.38849214 -0.3985382 -0.88913929 0.38849214 0.34622237;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "part_26" -p "part_25";
	rename -uid "75C2BFBC-4B8E-D0BC-520C-33A5F487FA4F";
	setAttr ".rp" -type "double3" -0.6840710000000001 0.21187362816216326 0.16114072074182431 ;
	setAttr ".sp" -type "double3" -0.6840710000000001 0.21187362816216326 0.16114072074182431 ;
createNode mesh -n "part_Shape26" -p "part_26";
	rename -uid "54A62DE0-4E0F-4CB4-43D8-459B08794D1D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[16]" "f[19]" "f[21:22]" "f[26]" "f[43]" "f[45]" "f[50]" "f[53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[1]" "f[4]" "f[6]" "f[23]" "f[27]" "f[30]" "f[34]" "f[49]" "f[51]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "f[2]" "f[5]" "f[9]" "f[12]" "f[24]" "f[32]" "f[35]" "f[38]" "f[41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[11]" "f[17]" "f[29]" "f[31]" "f[36]" "f[42]" "f[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7:8]" "f[14]" "f[20]" "f[28]" "f[33]" "f[40]" "f[46]" "f[52]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[10]" "f[13]" "f[15]" "f[18]" "f[25]" "f[37]" "f[39]" "f[44]" "f[47]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.38019824 0.31584823
		 0.38613006 0.31584829 0.61386955 0.31584823 0.38019827 0.46183157 0.61386955 0.46183157
		 0.38613036 0.47221845 0.61386955 0.47221839 0.15368435 0.46183169 0.15368435 0.31584817
		 0.61386955 0.62986535 0.38613087 0.64025193 0.84631538 0.31584823 0.61386955 0.64025211
		 0.61386955 0.78623551 0.38613048 0.79662228 0.61386955 0.79662234 0.38613006 0.46183181
		 0.38613039 0.62986535 0.38613087 0.78623539 0.38613054 0.95426923 0.61386949 0.95426923
		 0.61980152 0.31584817 0.61980152 0.46183169 0.84631538 0.46183157 0.38146636 0.30773896
		 0.38347071 0.95515186 0.38317811 0.31572396 0.38509637 0.95654678 0.38509637 0.30773896
		 0.61652929 0.95515186 0.61853361 0.30773896 0.61490363 0.30773896 0.61490363 0.95654678
		 0.61682159 0.3157239 0.38347071 0.47133583 0.38146636 0.4699409 0.38612109 0.46705472
		 0.38317814 0.46195596 0.61853361 0.4699409 0.61652929 0.47133583 0.61682159 0.4619559
		 0.61387867 0.46705461 0.38347071 0.63725626 0.15041208 0.46482748 0.38612151 0.63502902
		 0.15241647 0.4699409 0.38347071 0.63074791 0.84958792 0.46482748 0.61652929 0.63725626
		 0.61652929 0.63074791 0.84758353 0.4699409 0.61387867 0.63502908 0.38347071 0.79573977
		 0.15241647 0.30773896 0.38612157 0.79145849 0.15041208 0.31285232 0.38347071 0.78923136
		 0.84758353 0.30773896 0.61652929 0.79573977 0.61652929 0.78923136 0.84958792 0.31285232
		 0.61387867 0.79145855 0.38347071 0.30773896 0.38347071 0.95654678 0.61652929 0.95654678
		 0.61652929 0.30773896 0.38347071 0.4699409 0.61652929 0.4699409 0.38347071 0.63214284
		 0.15041208 0.4699409 0.84958792 0.4699409 0.61652929 0.63214284 0.38347071 0.79434484
		 0.15041208 0.30773896 0.84958792 0.30773896 0.61652929 0.79434484;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -0.085838497 0.044066176 -0.59109348 -0.085838497 0.056288723 -0.59615624
		 -0.073615953 0.056288723 -0.59109348 -0.068553209 0.056288723 -0.57887095 -0.073615953 0.044066176 -0.57887095
		 -0.085838497 0.039003432 -0.57887095 -0.085838497 0.044066176 0.9133749 -0.085838497 0.039003432 0.90115237
		 -0.073615953 0.044066176 0.90115237 -0.068553209 0.056288723 0.90115237 -0.073615953 0.056288723 0.9133749
		 -0.085838497 0.056288723 0.91843766 -0.085838497 0.37968111 -0.59109348 -0.085838497 0.38474384 -0.57887095
		 -0.073615953 0.37968111 -0.57887095 -0.068553209 0.36745855 -0.57887095 -0.073615953 0.36745855 -0.59109348
		 -0.085838497 0.36745855 -0.59615624 -0.085838497 0.37968111 0.9133749 -0.085838497 0.36745855 0.91843766
		 -0.073615953 0.36745855 0.9133749 -0.068553209 0.36745855 0.90115237 -0.073615953 0.37968111 0.90115237
		 -0.085838497 0.38474384 0.90115237 -1.29452586 0.36745855 -0.59109348 -1.29958868 0.36745855 -0.57887095
		 -1.29452586 0.37968111 -0.57887095 -1.28230333 0.38474384 -0.57887095 -1.28230333 0.37968111 -0.59109348
		 -1.28230333 0.36745855 -0.59615624 -1.29452574 0.36745855 0.91337496 -1.28230321 0.36745855 0.91843772
		 -1.28230321 0.37968111 0.91337496 -1.28230321 0.38474384 0.90115243 -1.29452574 0.37968111 0.90115243
		 -1.29958856 0.36745855 0.90115243 -1.28230333 0.044066176 -0.59109348 -1.28230333 0.039003432 -0.57887095
		 -1.29452586 0.044066176 -0.57887095 -1.29958868 0.056288723 -0.57887095 -1.29452586 0.056288723 -0.59109348
		 -1.28230333 0.056288723 -0.59615624 -1.28230321 0.044066176 0.91337496 -1.28230321 0.056288723 0.91843772
		 -1.29452574 0.056288723 0.91337496 -1.29958856 0.056288723 0.90115243 -1.29452574 0.044066176 0.90115243
		 -1.28230321 0.039003432 0.90115243 -0.075862318 0.046312541 -0.58884716 -0.075862318 0.046312541 0.91112858
		 -0.075862318 0.37743473 -0.58884716 -0.075862318 0.37743473 0.91112858 -1.2922796 0.37743473 -0.58884716
		 -1.29227948 0.37743473 0.91112864 -1.2922796 0.046312541 -0.58884716 -1.29227948 0.046312541 0.91112864;
	setAttr -s 108 ".ed[0:107]"  1 0 1 0 36 0 36 41 1 41 1 1 0 5 1 5 37 1
		 37 36 1 3 2 1 2 16 0 16 15 1 15 3 1 2 1 1 1 17 1 17 16 1 5 4 1 4 8 0 8 7 1 7 5 1
		 4 3 1 3 9 1 9 8 1 7 6 1 6 42 0 42 47 1 47 7 1 6 11 1 11 43 1 43 42 1 11 10 1 10 20 0
		 20 19 1 19 11 1 10 9 1 9 21 1 21 20 1 13 12 1 12 28 0 28 27 1 27 13 1 12 17 1 17 29 1
		 29 28 1 15 14 1 14 22 0 22 21 1 21 15 1 14 13 1 13 23 1 23 22 1 19 18 1 18 32 0 32 31 1
		 31 19 1 18 23 1 23 33 1 33 32 1 25 24 1 24 40 0 40 39 1 39 25 1 24 29 1 29 41 1 41 40 1
		 27 26 1 26 34 0 34 33 1 33 27 1 26 25 1 25 35 1 35 34 1 31 30 1 30 44 0 44 43 1 43 31 1
		 30 35 1 35 45 1 45 44 1 39 38 1 38 46 0 46 45 1 45 39 1 38 37 1 37 47 1 47 46 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 24 53 8
		f 4 4 5 6 -2
		mu 0 4 25 19 14 52
		f 4 7 8 9 10
		mu 0 4 1 26 37 16
		f 4 11 12 13 -9
		mu 0 4 26 0 3 37
		f 4 14 15 16 17
		mu 0 4 19 27 32 20
		f 4 18 19 20 -16
		mu 0 4 28 1 2 31
		f 4 21 22 23 24
		mu 0 4 20 29 58 15
		f 4 25 26 27 -23
		mu 0 4 30 21 11 57
		f 4 28 29 30 31
		mu 0 4 21 33 40 22
		f 4 32 33 34 -30
		mu 0 4 33 2 4 40
		f 4 35 36 37 38
		mu 0 4 5 34 46 17
		f 4 39 40 41 -37
		mu 0 4 35 3 7 45
		f 4 42 43 44 45
		mu 0 4 16 36 41 4
		f 4 46 47 48 -44
		mu 0 4 36 5 6 41
		f 4 49 50 51 52
		mu 0 4 22 38 50 23
		f 4 53 54 55 -51
		mu 0 4 39 6 9 49
		f 4 56 57 58 59
		mu 0 4 10 42 56 18
		f 4 60 61 62 -58
		mu 0 4 43 7 8 55
		f 4 63 64 65 66
		mu 0 4 17 44 51 9
		f 4 67 68 69 -65
		mu 0 4 44 10 12 51
		f 4 70 71 72 73
		mu 0 4 23 47 60 11
		f 4 74 75 76 -72
		mu 0 4 48 12 13 59
		f 4 77 78 79 80
		mu 0 4 18 54 61 13
		f 4 81 82 83 -79
		mu 0 4 54 14 15 61
		f 4 -11 -46 -34 -20
		mu 0 4 1 16 4 2
		f 4 -39 -67 -55 -48
		mu 0 4 5 17 9 6
		f 4 -60 -81 -76 -69
		mu 0 4 10 18 13 12
		f 4 -6 -18 -25 -83
		mu 0 4 14 19 20 15
		f 4 -32 -53 -74 -27
		mu 0 4 21 22 23 11
		f 4 -62 -41 -13 -4
		mu 0 4 8 7 3 0
		f 4 -15 -5 84 85
		mu 0 4 27 19 25 63
		f 4 -1 -12 86 -85
		mu 0 4 24 0 26 62
		f 4 -8 -19 -86 -87
		mu 0 4 26 1 28 62
		f 4 -29 -26 87 88
		mu 0 4 33 21 30 65
		f 4 -22 -17 89 -88
		mu 0 4 29 20 32 64
		f 4 -21 -33 -89 -90
		mu 0 4 31 2 33 65
		f 4 -14 -40 90 91
		mu 0 4 37 3 35 66
		f 4 -36 -47 92 -91
		mu 0 4 34 5 36 66
		f 4 -43 -10 -92 -93
		mu 0 4 36 16 37 66
		f 4 -49 -54 93 94
		mu 0 4 41 6 39 67
		f 4 -50 -31 95 -94
		mu 0 4 38 22 40 67
		f 4 -35 -45 -95 -96
		mu 0 4 40 4 41 67
		f 4 -42 -61 96 97
		mu 0 4 45 7 43 69
		f 4 -57 -68 98 -97
		mu 0 4 42 10 44 68
		f 4 -64 -38 -98 -99
		mu 0 4 44 17 46 68
		f 4 -70 -75 99 100
		mu 0 4 51 12 48 71
		f 4 -71 -52 101 -100
		mu 0 4 47 23 50 70
		f 4 -56 -66 -101 -102
		mu 0 4 49 9 51 71
		f 4 -63 -3 102 103
		mu 0 4 55 8 53 73
		f 4 -7 -82 104 -103
		mu 0 4 52 14 54 72
		f 4 -78 -59 -104 -105
		mu 0 4 54 18 56 72
		f 4 -84 -24 105 106
		mu 0 4 61 15 58 75
		f 4 -28 -73 107 -106
		mu 0 4 57 11 60 74
		f 4 -77 -80 -107 -108
		mu 0 4 59 13 61 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "part_25_parentConstraint1" -p "part_25";
	rename -uid "D7CA0812-404C-F741-8D3E-99AFD333B9FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_r_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.01682120968721379 -0.92581899449293781 -0.0052575624827774885 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 0 ;
	setAttr ".lr" -type "double3" -7.2782815539377461 -8.9234401521907465 -5.732822690439229 ;
	setAttr -k on ".w0";
createNode transform -n "controls";
	rename -uid "73CB3B73-4FD6-5D87-4FDF-719788E27848";
	setAttr ".v" no;
createNode transform -n "leg_l_ctrl" -p "controls";
	rename -uid "8E153492-437E-B630-CC84-2DBBB496A731";
	setAttr ".rp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
	setAttr ".sp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
createNode locator -n "leg_l_ctrlShape" -p "leg_l_ctrl";
	rename -uid "B53C1309-4AAC-0A0F-7145-AE8A61E07613";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
createNode transform -n "arm_l_ctrl" -p "controls";
	rename -uid "98331C72-42F1-3BF3-A7BD-7D9344F9D0E8";
	setAttr ".rp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
	setAttr ".sp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
createNode locator -n "arm_l_ctrlShape" -p "arm_l_ctrl";
	rename -uid "6127759F-4809-C44C-6B77-C98EECEA7CCE";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
createNode transform -n "group1" -p "controls";
	rename -uid "4786BC52-492A-6C34-9E54-638358B494FE";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "leg_r_ctrl" -p "group1";
	rename -uid "EB8F113F-4A9D-49C8-EB78-3AB2A6BEEA4E";
	setAttr ".rp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
	setAttr ".sp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
createNode locator -n "leg_r_ctrlShape" -p "leg_r_ctrl";
	rename -uid "20096293-44B4-B4C7-81E7-2D9B1EC340C5";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
createNode transform -n "arm_r_ctrl" -p "group1";
	rename -uid "2D1566FC-48F7-504A-76BE-8CAABB8FD8F2";
	setAttr ".rp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
	setAttr ".sp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
createNode locator -n "arm_r_ctrlShape" -p "arm_r_ctrl";
	rename -uid "A9D27A0A-48EA-0E0D-B9CA-D99E16FB9514";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
createNode transform -n "real_world_transforms" -p "controls";
	rename -uid "1C043EDA-4DE3-97A8-133C-A5811BEAADEF";
createNode transform -n "leg_l_ctrl1" -p "real_world_transforms";
	rename -uid "AB3A7ACB-49D5-7206-C592-AAAB4A668455";
createNode parentConstraint -n "leg_l_ctrl1_parentConstraint1" -p "leg_l_ctrl1";
	rename -uid "111E5242-4010-F5AF-A8EB-0BB1CB216882";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_l_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
	setAttr -k on ".w0";
createNode transform -n "arm_l_ctrl1" -p "real_world_transforms";
	rename -uid "450E74C2-4970-9219-1730-80B365A5181C";
createNode parentConstraint -n "arm_l_ctrl1_parentConstraint1" -p "arm_l_ctrl1";
	rename -uid "B3353AB6-4EC8-8DAC-18A6-DFB2795276DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_l_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
	setAttr -k on ".w0";
createNode transform -n "leg_r_ctrl1" -p "real_world_transforms";
	rename -uid "CAA11045-46DA-FDA2-3F8B-30B777107784";
createNode parentConstraint -n "leg_r_ctrl1_parentConstraint1" -p "leg_r_ctrl1";
	rename -uid "63218FCB-499C-CB6B-22F9-39B2659BDBAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_r_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.6008922096872138 2.2431157270037811 -0.020900347070339886 ;
	setAttr -k on ".w0";
createNode transform -n "arm_r_ctrl1" -p "real_world_transforms";
	rename -uid "75D40627-4873-23AB-DA5F-6891D7893454";
createNode parentConstraint -n "arm_r_ctrl1_parentConstraint1" -p "arm_r_ctrl1";
	rename -uid "E561C2AA-405B-60FC-E110-7DB3FBC4082C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_r_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.3332924121328027 4.2575545331744289 -0.020900347070339886 ;
	setAttr -k on ".w0";
createNode transform -n "projectile";
	rename -uid "858E8A28-4183-1EA8-24C0-1FA45CB1A608";
	setAttr ".t" -type "double3" 50.874083164195468 3.3463990950323392 18.887374689290805 ;
	setAttr ".r" -type "double3" -22.654056026967286 17.595336959948568 78.618979914524402 ;
createNode mesh -n "projectileShape" -p "projectile";
	rename -uid "DCAF9345-403D-B77D-A94C-D38F779A3F04";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E59D1239-E340-A914-48E9-15B9C061ED5D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1A524205-4E5F-D59C-3219-C4BD1DEF9906";
	setAttr ".img" -type "string" "";
	setAttr ".fltr" -type "string" "";
	setAttr ".usetx" no;
	setAttr ".autotx" no;
	setAttr ".igl" -type "string" "";
	setAttr ".file" -type "string" "";
	setAttr ".ai_user_options" -type "string" "";
	setAttr ".kick_render_flags" -type "string" "";
	setAttr ".export_prefix" -type "string" "";
	setAttr ".version" -type "string" "5.3.1.1";
	setAttr ".post_translation" -type "string" "";
	setAttr ".ipr_refinement_started" -type "string" "";
	setAttr ".ipr_refinement_finished" -type "string" "";
	setAttr ".ipr_step_started" -type "string" "";
	setAttr ".ipr_step_finished" -type "string" "";
	setAttr ".output_overscan" -type "string" "";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "917A96A5-4E52-6E17-72D7-4A8D107CA510";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A6FE1A08-4B2F-D678-7444-9EBF5FEA071D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "25E3EA70-48AA-F314-DEB7-AC85C1EA311E";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CC9688A6-C047-EB48-742D-269B3FD5E31A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "20468C71-8446-8F61-593D-15886A97B821";
createNode displayLayerManager -n "layerManager";
	rename -uid "7B8F3A54-064B-D6DA-4F35-70AF593E6376";
createNode displayLayer -n "defaultLayer";
	rename -uid "D4536FFC-42A2-0388-5EF1-BA8C469BFFC5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "597F5564-BF4D-78E7-913E-FBAFCC1EE7FF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D6F9D6D8-4E6B-85FB-27DF-6691CB700047";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "ABC78F31-4BE5-2B5D-12A0-AC9A3C5B294B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 2000 -ast 0 -aet 2000 ";
	setAttr ".st" 6;
createNode animCurveTL -n "leg_l_ctrl_translateX";
	rename -uid "C71228A2-4387-EC97-658A-DD96306C0785";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  0 0 18 0 32 -0.023958792768874804 54 -0.023958792768874804
		 92 0.0092836340597413098 106 0.0092836340597413098 135 0.070336624015513105 160 0.00077089405885188977
		 192 -0.011661415709775304 245 0 313 0 327 0 349 0 387 0.014251337737563718 401 0.014251337737563718
		 430 0.00040021404217072988 455 -0.016085590959643119 487 -0.082524825145054548 535 0
		 562 0;
	setAttr -s 20 ".kit[18:19]"  1 18;
	setAttr -s 20 ".kot[10:19]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 20 ".ktl[1:19]" no no yes yes yes yes yes yes yes no no 
		yes yes yes yes yes yes yes yes;
	setAttr -s 20 ".kix[18:19]"  0.55 0.45000000000000107;
	setAttr -s 20 ".kiy[18:19]"  0 0;
	setAttr -s 20 ".kox[10:19]"  0.6 0.36666666666666625 0.63333333333333375 
		0.23333333333333339 0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 
		0.45000000000000107 0.45000000000000107;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 -0.014044874396855004 -0.046554407964758106 
		0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "leg_l_ctrl_translateY";
	rename -uid "E65AE682-4741-5486-3B00-9EB1BE6AB118";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  0 0 18 0 32 0.17478606131242147 54 0.17478606131242147
		 92 0.12807464625770448 106 0.12807464625770448 135 -0.0031326302988854485 160 0.25200571393102589
		 192 0.26721619986328848 245 0 313 0 327 0 349 0 387 0.097939359714327004 401 0.097939359714327004
		 430 0.079544017068804429 455 0.13011021303898931 487 0.16410182910059135 535 0 562 0;
	setAttr -s 20 ".kit[18:19]"  1 18;
	setAttr -s 20 ".kot[10:19]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 20 ".ktl[1:19]" no no yes yes yes yes yes yes yes no no 
		yes yes yes yes yes yes yes yes;
	setAttr -s 20 ".kix[18:19]"  0.55 0.45000000000000107;
	setAttr -s 20 ".kiy[18:19]"  0 0;
	setAttr -s 20 ".kox[10:19]"  0.6 0.36666666666666625 0.63333333333333375 
		0.23333333333333339 0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 
		0.45000000000000107 0.45000000000000107;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0.047471052368722545 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "leg_l_ctrl_translateZ";
	rename -uid "DE6162CF-4415-BEFD-D48A-A88EA97C0B96";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 92 -0.24150249574222771 106 -0.24150249574222771
		 135 -0.40655638904356939 160 -0.22267335647150011 192 -0.1308570365117262 245 0 313 0
		 349 0 387 -0.034887214072340793 401 -0.034887214072340793 430 0.3270778641002578
		 455 0.38042761163025929 487 0.0054979522829171476 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.63333333333333375 0.23333333333333339 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.16004924259000447 0 -0.016493856848751442 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_l_ctrl_translateX";
	rename -uid "6B9F09D0-4C29-D7A4-DDCF-A1AD8D669DB4";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_l_ctrl_translateY";
	rename -uid "0291EBB1-400F-4538-686B-1E96F1A6BDF5";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_l_ctrl_translateZ";
	rename -uid "5D812FC8-46F3-2C15-E51C-2EB7BA81CBCB";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "leg_r_ctrl_translateX";
	rename -uid "04D56488-4270-DFE9-ABA3-52A130EF303C";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  0 0 18 0 54 0 83 0.014251337737563718 106 0.014251337737563718
		 135 -0.0048530917908747775 139 -0.026742811541305814 160 -0.073605640140333106 192 -0.082524825145054548
		 245 0 313 0 349 -0.023958792768874804 378 0.0045727959087841774 401 0.0092836340597413098
		 430 0.070336624015513105 455 0.00077089405885188977 487 0.0032979977467407699 535 0
		 562 0;
	setAttr -s 19 ".kit[17:18]"  1 18;
	setAttr -s 19 ".kot[10:18]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 19 ".ktl[1:18]" no yes yes yes yes yes yes yes yes no yes 
		yes yes yes yes yes yes yes;
	setAttr -s 19 ".kix[17:18]"  0.55 0.45000000000000107;
	setAttr -s 19 ".kiy[17:18]"  0 0;
	setAttr -s 19 ".kox[10:18]"  0.23333333333333334 0.48333333333333339 
		0.38333333333333375 0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 
		0.45000000000000107 0.45000000000000107;
	setAttr -s 19 ".koy[10:18]"  0 0 0.014132514452871399 0.01781925735362044 
		0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "leg_r_ctrl_translateY";
	rename -uid "3F597018-48E3-5D6C-6AF1-C9B88F8D3CC6";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  0 0 18 0 54 0 83 0.097939359714327004 106 0.097939359714327004
		 135 0.11809079864291538 139 0.20221552553611513 160 0.14231801898860041 192 0.16410182910059135
		 245 0 313 0 349 0.17478606131242147 378 0.13469419654684067 401 0.12807464625770448
		 430 -0.0031326302988854485 455 0.25200571393102589 487 0.25790035656221688 535 0
		 562 0;
	setAttr -s 19 ".kit[17:18]"  1 18;
	setAttr -s 19 ".kot[10:18]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 19 ".ktl[1:18]" no yes yes yes yes yes yes yes yes no yes 
		yes yes yes yes yes yes yes;
	setAttr -s 19 ".kix[17:18]"  0.55 0.45000000000000107;
	setAttr -s 19 ".kiy[17:18]"  0 0;
	setAttr -s 19 ".kox[10:18]"  0.23333333333333334 0.48333333333333339 
		0.38333333333333375 0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 
		0.45000000000000107 0.45000000000000107;
	setAttr -s 19 ".koy[10:18]"  0 0 -0.019858650867408567 -0.025039168484993386 
		0 0.017683927893572982 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "leg_r_ctrl_translateZ";
	rename -uid "CA07C1F8-441B-E156-8F21-538BB36CF6A7";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  0 0 18 0 54 0 83 -0.034887214072340793 106 -0.034887214072340793
		 135 0.30157601183963612 139 0.23736075230028067 160 0.037361406225476665 192 0.0054979522829171476
		 245 0 313 0 349 0 378 -0.20727878589218454 401 -0.24150249574222771 430 -0.40655638904356939
		 455 -0.22267335647150011 487 -0.17692287791652855 535 0 562 0;
	setAttr -s 19 ".kit[17:18]"  1 18;
	setAttr -s 19 ".kot[10:18]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 19 ".ktl[1:18]" no yes yes yes yes yes yes yes yes no yes 
		yes yes yes yes yes yes yes;
	setAttr -s 19 ".kix[17:18]"  0.55 0.45000000000000107;
	setAttr -s 19 ".kiy[17:18]"  0 0;
	setAttr -s 19 ".kox[10:18]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 19 ".koy[10:18]"  0 0 -0.1026711295501295 -0.11113558637288766 
		0 0.12891705887833887 0.13360401388289991 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_r_ctrl_translateX";
	rename -uid "E9847219-4120-1D32-C9A7-5C879DD2310D";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_r_ctrl_translateY";
	rename -uid "11B6E862-449A-775B-DAEC-9AA021053798";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "arm_r_ctrl_translateZ";
	rename -uid "70E445BC-4980-B950-2164-D4B537DD0386";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  0 0 18 0 54 0 106 0 135 0 245 0 313 0 349 0
		 401 0 430 0 535 0 562 0;
	setAttr -s 12 ".kit[10:11]"  1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 18 18 18 18;
	setAttr -s 12 ".ktl[1:11]" no yes yes yes yes no yes yes yes yes yes;
	setAttr -s 12 ".kix[10:11]"  1.5 0.45000000000000107;
	setAttr -s 12 ".kiy[10:11]"  0 0;
	setAttr -s 12 ".kox[6:11]"  0.6 0.86666666666666714 0.48333333333333339 
		1.7499999999999991 0.45000000000000107 0.45000000000000107;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_l_ctrl_rotateX";
	rename -uid "48ED7488-42EF-408A-EC4A-AEA369C956A8";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 92 12.0027016360517 106 12.0027016360517
		 135 -7.0552588805137377 160 46.119296205795465 192 5.2707568809710406 245 0 313 0
		 349 0 387 -33.514546319574123 401 -33.514546319574123 430 -29.062335674652658 455 21.561028136128002
		 487 -7.4650622995590128 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.63333333333333375 0.23333333333333339 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.2009631071022922 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_l_ctrl_rotateY";
	rename -uid "8CC25263-4488-4C63-1567-A8B515996920";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 92 -9.1998713947429547 106 -9.1998713947429547
		 135 -8.2440012178789512 160 -9.4353473139328781 192 -8.6843884868151289 245 0 313 0
		 349 0 387 1.3622504049926432 401 1.3622504049926432 430 8.2651694408105598 455 9.4310453031820654
		 487 9.152440197432357 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.63333333333333375 0.23333333333333339 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.06104511740373314 0 -0.021881593836897233 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_l_ctrl_rotateZ";
	rename -uid "888CDF4B-47C2-45A1-FBE3-C1930FC9ED22";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  0 0 18 0 32 7.8051741534222217 54 7.8051741534222217
		 92 8.2036356115373295 106 8.2036356115373295 135 -3.2658562282153407 160 -10.222164760542626
		 192 -2.3982480764680729 245 0 313 0 327 -7.8051741534222217 349 -7.8051741534222217
		 387 -10.275237908143991 401 -10.275237908143991 430 7.7473784430080093 455 12.783852369704071
		 487 6.3662356974697518 535 0 562 0;
	setAttr -s 20 ".kit[18:19]"  1 18;
	setAttr -s 20 ".kot[10:19]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 20 ".ktl[1:19]" no no yes yes yes yes yes yes yes no no 
		yes yes yes yes yes yes yes yes;
	setAttr -s 20 ".kix[18:19]"  0.55 0.45000000000000107;
	setAttr -s 20 ".kiy[18:19]"  0 0;
	setAttr -s 20 ".kox[10:19]"  0.23333333333333334 0.36666666666666625 
		0.63333333333333375 0.23333333333333339 0.48333333333333339 0.41666666666666607 0.5333333333333341 
		0.79999999999999893 0.45000000000000107 0.45000000000000107;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0.18632270734401038 0 -0.13387218896412911 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_l_ctrl_rotateX";
	rename -uid "E92B133E-43A0-B7E5-5F21-DEAE5F5BBBDC";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 -36.40621373002277 106 -36.40621373002277
		 135 -31.52519648635738 160 -11.671468433947323 192 -1.8662789052055371 245 0 313 0
		 349 0 378 27.311644071505519 401 27.311644071505519 430 14.856323049869031 455 3.5363967967480692
		 487 -8.1973437447046145 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 -0.19210941917607688 -0.22588765766905142 
		0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_l_ctrl_rotateY";
	rename -uid "514174A8-4F1E-A6E5-9DBF-81B5AB52F281";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 4.8514544780306572 106 4.8514544780306572
		 135 5.0340600008988989 160 5.0815338395839564 192 3.7532877412272923 245 0 313 0
		 349 0 378 3.1922739652808909 401 3.1922739652808909 430 3.9005874944846761 455 -0.58762071082616163
		 487 1.7981765123219682 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0 0 0 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_l_ctrl_rotateZ";
	rename -uid "CF27DFD6-408D-860C-2872-029553F03C72";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 9.8520266802808827 106 9.8520266802808827
		 135 9.7545522387757408 160 12.777742814133246 192 16.300754307958144 245 0 313 0
		 349 0 378 7.5870779663870298 401 7.5870779663870298 430 8.925315133803668 455 28.20442974202761
		 487 27.212053221168418 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.060405115717197103 0 -0.07794106968815559 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_r_ctrl_rotateX";
	rename -uid "340E9FA2-4D69-B1C1-9771-50B02F8EC42B";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 -33.514546319574123 106 -33.514546319574123
		 135 -33.574939445471301 160 19.604168603333097 192 -7.4650622995590128 245 0 313 0
		 349 0 378 10.301779345595035 401 12.0027016360517 430 -3.5966047874270108 455 46.4635740489868
		 487 8.2670656465358707 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0.089060082867096435 0 0 0 -0.43286254503169402 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_r_ctrl_rotateY";
	rename -uid "EB695C22-4597-AF1E-3476-94B7F83CF7AC";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 1.3622504049926432 106 1.3622504049926432
		 135 7.5514140436062256 160 9.0417475558526714 192 9.152440197432357 245 0 313 0 349 0
		 378 -7.8961427177214993 401 -9.1998713947429547 430 -8.9534509791635468 455 -9.8223037390674381
		 487 -8.6843884868151289 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 -0.068263073900082433 0 0 0 0.08937165492209044 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "leg_r_ctrl_rotateZ";
	rename -uid "A564D656-491F-5038-6706-4BA2BEFC3C35";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  0 0 18 0 32 -7.8051741534222217 54 -7.8051741534222217
		 83 -10.275237908143991 106 -10.275237908143991 135 2.7754104020649701 160 9.826788560242683
		 192 6.3662356974697518 245 0 313 0 327 7.8051741534222217 349 7.8051741534222217
		 378 8.1471689928920643 401 8.2036356115373295 430 -8.2448593489156572 455 -13.182054666233466
		 487 -2.3982480764680729 535 0 562 0;
	setAttr -s 20 ".kit[18:19]"  1 18;
	setAttr -s 20 ".kot[10:19]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 20 ".ktl[1:19]" no no yes yes yes yes yes yes yes no no 
		yes yes yes yes yes yes yes yes;
	setAttr -s 20 ".kix[18:19]"  0.55 0.45000000000000107;
	setAttr -s 20 ".kiy[18:19]"  0 0;
	setAttr -s 20 ".kox[10:19]"  0.23333333333333334 0.36666666666666625 
		0.48333333333333339 0.38333333333333375 0.48333333333333339 0.41666666666666607 0.5333333333333341 
		0.79999999999999893 0.45000000000000107 0.45000000000000107;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0.0029565852384836888 0 -0.17280125377724109 
		0 0.12557197564196584 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_r_ctrl_rotateX";
	rename -uid "669FAD2D-40B6-3746-459A-2492DF0B1E69";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 27.311644071505519 106 27.311644071505519
		 135 14.856323049869031 160 3.5363967967480692 192 -8.1973437447046145 245 0 313 0
		 349 0 378 -36.40621373002277 401 -36.40621373002277 430 -31.52519648635738 455 -11.671468433947323
		 487 -1.8662789052055371 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.19986238197161849 0.29060814841753418 
		0.097718134969055293 0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_r_ctrl_rotateY";
	rename -uid "1B789EFB-4DDF-403E-6934-E1AE63983FC3";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 3.1922739652808909 106 3.1922739652808909
		 135 3.9005874944846761 160 -0.58762071082616163 192 1.7981765123219682 245 0 313 0
		 349 0 378 4.8514544780306572 401 4.8514544780306572 430 5.0340600008988989 455 5.0815338395839564
		 487 3.7532877412272923 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0.0018590937036997788 0 -0.053213697931349585 
		0 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "arm_r_ctrl_rotateZ";
	rename -uid "D5955B5B-4129-559A-DEF2-948C4199B47C";
	setAttr ".tan" 18;
	setAttr -s 18 ".ktv[0:17]"  0 0 18 0 54 0 83 7.5870779663870298 106 7.5870779663870298
		 135 8.925315133803668 160 28.20442974202761 192 27.212053221168418 245 0 313 0 349 0
		 378 9.8520266802808827 401 9.8520266802808827 430 9.7545522387757408 455 12.777742814133246
		 487 16.300754307958144 535 0 562 0;
	setAttr -s 18 ".kit[16:17]"  1 18;
	setAttr -s 18 ".kot[9:17]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 18 ".ktl[1:17]" no yes yes yes yes yes yes yes no yes yes 
		yes yes yes yes yes yes;
	setAttr -s 18 ".kix[16:17]"  0.55 0.45000000000000107;
	setAttr -s 18 ".kiy[16:17]"  0 0;
	setAttr -s 18 ".kox[9:17]"  0.6 0.48333333333333339 0.38333333333333375 
		0.48333333333333339 0.41666666666666607 0.5333333333333341 0.79999999999999893 0.45000000000000107 
		0.45000000000000107;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0 0 0.064141911358932588 0 0 0;
	setAttr ".pst" 3;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "6A746DD4-42C0-8410-ED45-7284745EB4B9";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -927.28646627685771 -404.61287978897144 ;
	setAttr ".tgi[0].vh" -type "double2" 301.28492783407137 330.68121723364339 ;
createNode standardSurface -n "standardSurface2";
	rename -uid "C0E3C716-4AEF-A618-3295-079330C1C433";
	setAttr ".bc" -type "float3" 0.32964334 0.34555659 0.39860141 ;
	setAttr ".s" 0;
	setAttr ".sr" 0.33566433191299438;
	setAttr ".sior" 1.3006993532180786;
	setAttr ".m" 0.32167831063270569;
	setAttr ".ec" -type "float3" 2 0 0 ;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "216D74EC-4A92-B227-7455-03ADDAC99CC1";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C362278B-42D1-0075-451D-8B9168AC5575";
createNode polySphere -n "polySphere1";
	rename -uid "13B6EE83-418E-85AA-46F9-3EB0F13C722C";
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode ramp -n "ramp1";
	rename -uid "20A03D3A-434F-0E09-7E4B-3BA517C99E4E";
	setAttr ".in" 0;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0.24776118993759155;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0;
	setAttr ".cel[1].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "30DE80F8-4394-C559-0A9E-96AFB9553194";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A5EAF7F4-4197-EC50-941C-E1917210BA63";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -6436.3096938010276 -1356.5476804498644 ;
	setAttr ".tgi[0].vh" -type "double2" 7277.9763270228686 2357.7381168566071 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 698.5714111328125;
	setAttr ".tgi[0].ni[0].y" 891.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 2387;
	setAttr ".tgi[0].ni[1].x" 1047.142822265625;
	setAttr ".tgi[0].ni[1].y" 891.4285888671875;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 346.943115234375;
	setAttr ".tgi[0].ni[2].y" 674.802490234375;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 125.51454162597656;
	setAttr ".tgi[0].ni[3].y" 673.7113037109375;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "3D4211DD-C34C-9310-BEA5-B2B2FEC6F6BC";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E955779A-1B41-49D9-EA13-2A9B0B3A409E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1956\n            -height 1003\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 2.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1956\\n    -height 1003\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1956\\n    -height 1003\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa" yes;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 2 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -cb on ".macc";
	setAttr -av -cb on ".macd";
	setAttr -av -cb on ".macq";
	setAttr -av -k on ".mcfr" 60;
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf" -type "string" "";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe" -type "string" "";
	setAttr -cb on ".efe" -type "string" "";
	setAttr -cb on ".oft" -type "string" "";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp" -type "string" "";
	setAttr -k on ".rv" -type "string" "";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram" -type "string" "";
	setAttr -av -k on ".poam" -type "string" "";
	setAttr -av -k on ".prlm" -type "string" "";
	setAttr -av -k on ".polm" -type "string" "";
	setAttr -av -cb on ".prm" -type "string" "";
	setAttr -av -cb on ".pom" -type "string" "";
	setAttr -cb on ".pfrm" -type "string" "";
	setAttr -cb on ".pfom" -type "string" "";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -cb on ".ope";
	setAttr -av -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl" -type "string" "";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr" 60;
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "robotShape.o" "bifrostGraphShape1.outMesh_array[0]";
connectAttr "part_Shape1.o" "bifrostGraphShape1.outMesh_array[1]";
connectAttr "part_Shape2.o" "bifrostGraphShape1.outMesh_array[2]";
connectAttr "part_Shape3.o" "bifrostGraphShape1.outMesh_array[3]";
connectAttr "part_Shape4.o" "bifrostGraphShape1.outMesh_array[4]";
connectAttr "part_Shape5.o" "bifrostGraphShape1.outMesh_array[5]";
connectAttr "part_Shape6.o" "bifrostGraphShape1.outMesh_array[6]";
connectAttr "part_Shape7.o" "bifrostGraphShape1.outMesh_array[7]";
connectAttr "part_08Shape.o" "bifrostGraphShape1.outMesh_array[8]";
connectAttr "part_Shape9.o" "bifrostGraphShape1.outMesh_array[9]";
connectAttr "part_Shape10.o" "bifrostGraphShape1.outMesh_array[10]";
connectAttr "part_Shape11.o" "bifrostGraphShape1.outMesh_array[11]";
connectAttr "part_Shape12.o" "bifrostGraphShape1.outMesh_array[12]";
connectAttr "part_Shape13.o" "bifrostGraphShape1.outMesh_array[13]";
connectAttr "part_Shape14.o" "bifrostGraphShape1.outMesh_array[14]";
connectAttr "part_Shape15.o" "bifrostGraphShape1.outMesh_array[15]";
connectAttr "part_Shape16.o" "bifrostGraphShape1.outMesh_array[16]";
connectAttr "part_Shape17.o" "bifrostGraphShape1.outMesh_array[17]";
connectAttr "part_Shape18.o" "bifrostGraphShape1.outMesh_array[18]";
connectAttr "part_Shape19.o" "bifrostGraphShape1.outMesh_array[19]";
connectAttr "part_Shape20.o" "bifrostGraphShape1.outMesh_array[20]";
connectAttr "part_Shape21.o" "bifrostGraphShape1.outMesh_array[21]";
connectAttr "part_Shape22.o" "bifrostGraphShape1.outMesh_array[22]";
connectAttr "part_Shape23.o" "bifrostGraphShape1.outMesh_array[23]";
connectAttr "part_Shape24.o" "bifrostGraphShape1.outMesh_array[24]";
connectAttr "part_Shape25.o" "bifrostGraphShape1.outMesh_array[25]";
connectAttr "part_Shape26.o" "bifrostGraphShape1.outMesh_array[26]";
connectAttr "leg_l_ctrl1.wm" "bifrostGraphShape1.worldMatrix_array[0]";
connectAttr "arm_l_ctrl1.wm" "bifrostGraphShape1.worldMatrix_array[1]";
connectAttr "leg_r_ctrl1.wm" "bifrostGraphShape1.worldMatrix_array[2]";
connectAttr "arm_r_ctrl1.wm" "bifrostGraphShape1.worldMatrix_array[3]";
connectAttr "projectile.wm" "bifrostGraphShape1.projectile_worldMatrix";
connectAttr "projectileShape.o" "bifrostGraphShape1.projectile_outMesh";
connectAttr ":time1.o" "bifrostGraphShape1.JobPorts__time";
connectAttr "part_01_parentConstraint1.ctx" "part_01.tx";
connectAttr "part_01_parentConstraint1.cty" "part_01.ty";
connectAttr "part_01_parentConstraint1.ctz" "part_01.tz";
connectAttr "part_01_parentConstraint1.crx" "part_01.rx";
connectAttr "part_01_parentConstraint1.cry" "part_01.ry";
connectAttr "part_01_parentConstraint1.crz" "part_01.rz";
connectAttr "part_01.ro" "part_01_parentConstraint1.cro";
connectAttr "part_01.pim" "part_01_parentConstraint1.cpim";
connectAttr "part_01.rp" "part_01_parentConstraint1.crp";
connectAttr "part_01.rpt" "part_01_parentConstraint1.crt";
connectAttr "leg_l_ctrl.t" "part_01_parentConstraint1.tg[0].tt";
connectAttr "leg_l_ctrl.rp" "part_01_parentConstraint1.tg[0].trp";
connectAttr "leg_l_ctrl.rpt" "part_01_parentConstraint1.tg[0].trt";
connectAttr "leg_l_ctrl.r" "part_01_parentConstraint1.tg[0].tr";
connectAttr "leg_l_ctrl.ro" "part_01_parentConstraint1.tg[0].tro";
connectAttr "leg_l_ctrl.s" "part_01_parentConstraint1.tg[0].ts";
connectAttr "leg_l_ctrl.pm" "part_01_parentConstraint1.tg[0].tpm";
connectAttr "part_01_parentConstraint1.w0" "part_01_parentConstraint1.tg[0].tw";
connectAttr "part_06_parentConstraint1.ctx" "part_06.tx";
connectAttr "part_06_parentConstraint1.cty" "part_06.ty";
connectAttr "part_06_parentConstraint1.ctz" "part_06.tz";
connectAttr "part_06_parentConstraint1.crx" "part_06.rx";
connectAttr "part_06_parentConstraint1.cry" "part_06.ry";
connectAttr "part_06_parentConstraint1.crz" "part_06.rz";
connectAttr "part_06.ro" "part_06_parentConstraint1.cro";
connectAttr "part_06.pim" "part_06_parentConstraint1.cpim";
connectAttr "part_06.rp" "part_06_parentConstraint1.crp";
connectAttr "part_06.rpt" "part_06_parentConstraint1.crt";
connectAttr "arm_l_ctrl.t" "part_06_parentConstraint1.tg[0].tt";
connectAttr "arm_l_ctrl.rp" "part_06_parentConstraint1.tg[0].trp";
connectAttr "arm_l_ctrl.rpt" "part_06_parentConstraint1.tg[0].trt";
connectAttr "arm_l_ctrl.r" "part_06_parentConstraint1.tg[0].tr";
connectAttr "arm_l_ctrl.ro" "part_06_parentConstraint1.tg[0].tro";
connectAttr "arm_l_ctrl.s" "part_06_parentConstraint1.tg[0].ts";
connectAttr "arm_l_ctrl.pm" "part_06_parentConstraint1.tg[0].tpm";
connectAttr "part_06_parentConstraint1.w0" "part_06_parentConstraint1.tg[0].tw";
connectAttr "part_24_parentConstraint1.ctx" "part_24.tx";
connectAttr "part_24_parentConstraint1.cty" "part_24.ty";
connectAttr "part_24_parentConstraint1.ctz" "part_24.tz";
connectAttr "part_24_parentConstraint1.crx" "part_24.rx";
connectAttr "part_24_parentConstraint1.cry" "part_24.ry";
connectAttr "part_24_parentConstraint1.crz" "part_24.rz";
connectAttr "part_24.ro" "part_24_parentConstraint1.cro";
connectAttr "part_24.pim" "part_24_parentConstraint1.cpim";
connectAttr "part_24.rp" "part_24_parentConstraint1.crp";
connectAttr "part_24.rpt" "part_24_parentConstraint1.crt";
connectAttr "arm_r_ctrl.t" "part_24_parentConstraint1.tg[0].tt";
connectAttr "arm_r_ctrl.rp" "part_24_parentConstraint1.tg[0].trp";
connectAttr "arm_r_ctrl.rpt" "part_24_parentConstraint1.tg[0].trt";
connectAttr "arm_r_ctrl.r" "part_24_parentConstraint1.tg[0].tr";
connectAttr "arm_r_ctrl.ro" "part_24_parentConstraint1.tg[0].tro";
connectAttr "arm_r_ctrl.s" "part_24_parentConstraint1.tg[0].ts";
connectAttr "arm_r_ctrl.pm" "part_24_parentConstraint1.tg[0].tpm";
connectAttr "part_24_parentConstraint1.w0" "part_24_parentConstraint1.tg[0].tw";
connectAttr "part_25_parentConstraint1.ctx" "part_25.tx";
connectAttr "part_25_parentConstraint1.cty" "part_25.ty";
connectAttr "part_25_parentConstraint1.ctz" "part_25.tz";
connectAttr "part_25_parentConstraint1.crx" "part_25.rx";
connectAttr "part_25_parentConstraint1.cry" "part_25.ry";
connectAttr "part_25_parentConstraint1.crz" "part_25.rz";
connectAttr "part_25.ro" "part_25_parentConstraint1.cro";
connectAttr "part_25.pim" "part_25_parentConstraint1.cpim";
connectAttr "part_25.rp" "part_25_parentConstraint1.crp";
connectAttr "part_25.rpt" "part_25_parentConstraint1.crt";
connectAttr "leg_r_ctrl.t" "part_25_parentConstraint1.tg[0].tt";
connectAttr "leg_r_ctrl.rp" "part_25_parentConstraint1.tg[0].trp";
connectAttr "leg_r_ctrl.rpt" "part_25_parentConstraint1.tg[0].trt";
connectAttr "leg_r_ctrl.r" "part_25_parentConstraint1.tg[0].tr";
connectAttr "leg_r_ctrl.ro" "part_25_parentConstraint1.tg[0].tro";
connectAttr "leg_r_ctrl.s" "part_25_parentConstraint1.tg[0].ts";
connectAttr "leg_r_ctrl.pm" "part_25_parentConstraint1.tg[0].tpm";
connectAttr "part_25_parentConstraint1.w0" "part_25_parentConstraint1.tg[0].tw";
connectAttr "leg_l_ctrl_translateX.o" "leg_l_ctrl.tx";
connectAttr "leg_l_ctrl_translateY.o" "leg_l_ctrl.ty";
connectAttr "leg_l_ctrl_translateZ.o" "leg_l_ctrl.tz";
connectAttr "leg_l_ctrl_rotateX.o" "leg_l_ctrl.rx";
connectAttr "leg_l_ctrl_rotateY.o" "leg_l_ctrl.ry";
connectAttr "leg_l_ctrl_rotateZ.o" "leg_l_ctrl.rz";
connectAttr "arm_l_ctrl_translateX.o" "arm_l_ctrl.tx";
connectAttr "arm_l_ctrl_translateY.o" "arm_l_ctrl.ty";
connectAttr "arm_l_ctrl_translateZ.o" "arm_l_ctrl.tz";
connectAttr "arm_l_ctrl_rotateX.o" "arm_l_ctrl.rx";
connectAttr "arm_l_ctrl_rotateY.o" "arm_l_ctrl.ry";
connectAttr "arm_l_ctrl_rotateZ.o" "arm_l_ctrl.rz";
connectAttr "leg_r_ctrl_translateX.o" "leg_r_ctrl.tx";
connectAttr "leg_r_ctrl_translateY.o" "leg_r_ctrl.ty";
connectAttr "leg_r_ctrl_translateZ.o" "leg_r_ctrl.tz";
connectAttr "leg_r_ctrl_rotateX.o" "leg_r_ctrl.rx";
connectAttr "leg_r_ctrl_rotateY.o" "leg_r_ctrl.ry";
connectAttr "leg_r_ctrl_rotateZ.o" "leg_r_ctrl.rz";
connectAttr "arm_r_ctrl_translateX.o" "arm_r_ctrl.tx";
connectAttr "arm_r_ctrl_translateY.o" "arm_r_ctrl.ty";
connectAttr "arm_r_ctrl_translateZ.o" "arm_r_ctrl.tz";
connectAttr "arm_r_ctrl_rotateX.o" "arm_r_ctrl.rx";
connectAttr "arm_r_ctrl_rotateY.o" "arm_r_ctrl.ry";
connectAttr "arm_r_ctrl_rotateZ.o" "arm_r_ctrl.rz";
connectAttr "leg_l_ctrl1_parentConstraint1.ctx" "leg_l_ctrl1.tx";
connectAttr "leg_l_ctrl1_parentConstraint1.cty" "leg_l_ctrl1.ty";
connectAttr "leg_l_ctrl1_parentConstraint1.ctz" "leg_l_ctrl1.tz";
connectAttr "leg_l_ctrl1_parentConstraint1.crx" "leg_l_ctrl1.rx";
connectAttr "leg_l_ctrl1_parentConstraint1.cry" "leg_l_ctrl1.ry";
connectAttr "leg_l_ctrl1_parentConstraint1.crz" "leg_l_ctrl1.rz";
connectAttr "leg_l_ctrl1.ro" "leg_l_ctrl1_parentConstraint1.cro";
connectAttr "leg_l_ctrl1.pim" "leg_l_ctrl1_parentConstraint1.cpim";
connectAttr "leg_l_ctrl1.rp" "leg_l_ctrl1_parentConstraint1.crp";
connectAttr "leg_l_ctrl1.rpt" "leg_l_ctrl1_parentConstraint1.crt";
connectAttr "leg_l_ctrl.t" "leg_l_ctrl1_parentConstraint1.tg[0].tt";
connectAttr "leg_l_ctrl.rp" "leg_l_ctrl1_parentConstraint1.tg[0].trp";
connectAttr "leg_l_ctrl.rpt" "leg_l_ctrl1_parentConstraint1.tg[0].trt";
connectAttr "leg_l_ctrl.r" "leg_l_ctrl1_parentConstraint1.tg[0].tr";
connectAttr "leg_l_ctrl.ro" "leg_l_ctrl1_parentConstraint1.tg[0].tro";
connectAttr "leg_l_ctrl.s" "leg_l_ctrl1_parentConstraint1.tg[0].ts";
connectAttr "leg_l_ctrl.pm" "leg_l_ctrl1_parentConstraint1.tg[0].tpm";
connectAttr "leg_l_ctrl1_parentConstraint1.w0" "leg_l_ctrl1_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_l_ctrl1_parentConstraint1.ctx" "arm_l_ctrl1.tx";
connectAttr "arm_l_ctrl1_parentConstraint1.cty" "arm_l_ctrl1.ty";
connectAttr "arm_l_ctrl1_parentConstraint1.ctz" "arm_l_ctrl1.tz";
connectAttr "arm_l_ctrl1_parentConstraint1.crx" "arm_l_ctrl1.rx";
connectAttr "arm_l_ctrl1_parentConstraint1.cry" "arm_l_ctrl1.ry";
connectAttr "arm_l_ctrl1_parentConstraint1.crz" "arm_l_ctrl1.rz";
connectAttr "arm_l_ctrl1.ro" "arm_l_ctrl1_parentConstraint1.cro";
connectAttr "arm_l_ctrl1.pim" "arm_l_ctrl1_parentConstraint1.cpim";
connectAttr "arm_l_ctrl1.rp" "arm_l_ctrl1_parentConstraint1.crp";
connectAttr "arm_l_ctrl1.rpt" "arm_l_ctrl1_parentConstraint1.crt";
connectAttr "arm_l_ctrl.t" "arm_l_ctrl1_parentConstraint1.tg[0].tt";
connectAttr "arm_l_ctrl.rp" "arm_l_ctrl1_parentConstraint1.tg[0].trp";
connectAttr "arm_l_ctrl.rpt" "arm_l_ctrl1_parentConstraint1.tg[0].trt";
connectAttr "arm_l_ctrl.r" "arm_l_ctrl1_parentConstraint1.tg[0].tr";
connectAttr "arm_l_ctrl.ro" "arm_l_ctrl1_parentConstraint1.tg[0].tro";
connectAttr "arm_l_ctrl.s" "arm_l_ctrl1_parentConstraint1.tg[0].ts";
connectAttr "arm_l_ctrl.pm" "arm_l_ctrl1_parentConstraint1.tg[0].tpm";
connectAttr "arm_l_ctrl1_parentConstraint1.w0" "arm_l_ctrl1_parentConstraint1.tg[0].tw"
		;
connectAttr "leg_r_ctrl1_parentConstraint1.ctx" "leg_r_ctrl1.tx";
connectAttr "leg_r_ctrl1_parentConstraint1.cty" "leg_r_ctrl1.ty";
connectAttr "leg_r_ctrl1_parentConstraint1.ctz" "leg_r_ctrl1.tz";
connectAttr "leg_r_ctrl1_parentConstraint1.crx" "leg_r_ctrl1.rx";
connectAttr "leg_r_ctrl1_parentConstraint1.cry" "leg_r_ctrl1.ry";
connectAttr "leg_r_ctrl1_parentConstraint1.crz" "leg_r_ctrl1.rz";
connectAttr "leg_r_ctrl1.ro" "leg_r_ctrl1_parentConstraint1.cro";
connectAttr "leg_r_ctrl1.pim" "leg_r_ctrl1_parentConstraint1.cpim";
connectAttr "leg_r_ctrl1.rp" "leg_r_ctrl1_parentConstraint1.crp";
connectAttr "leg_r_ctrl1.rpt" "leg_r_ctrl1_parentConstraint1.crt";
connectAttr "leg_r_ctrl.t" "leg_r_ctrl1_parentConstraint1.tg[0].tt";
connectAttr "leg_r_ctrl.rp" "leg_r_ctrl1_parentConstraint1.tg[0].trp";
connectAttr "leg_r_ctrl.rpt" "leg_r_ctrl1_parentConstraint1.tg[0].trt";
connectAttr "leg_r_ctrl.r" "leg_r_ctrl1_parentConstraint1.tg[0].tr";
connectAttr "leg_r_ctrl.ro" "leg_r_ctrl1_parentConstraint1.tg[0].tro";
connectAttr "leg_r_ctrl.s" "leg_r_ctrl1_parentConstraint1.tg[0].ts";
connectAttr "leg_r_ctrl.pm" "leg_r_ctrl1_parentConstraint1.tg[0].tpm";
connectAttr "leg_r_ctrl1_parentConstraint1.w0" "leg_r_ctrl1_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_r_ctrl1_parentConstraint1.ctx" "arm_r_ctrl1.tx";
connectAttr "arm_r_ctrl1_parentConstraint1.cty" "arm_r_ctrl1.ty";
connectAttr "arm_r_ctrl1_parentConstraint1.ctz" "arm_r_ctrl1.tz";
connectAttr "arm_r_ctrl1_parentConstraint1.crx" "arm_r_ctrl1.rx";
connectAttr "arm_r_ctrl1_parentConstraint1.cry" "arm_r_ctrl1.ry";
connectAttr "arm_r_ctrl1_parentConstraint1.crz" "arm_r_ctrl1.rz";
connectAttr "arm_r_ctrl1.ro" "arm_r_ctrl1_parentConstraint1.cro";
connectAttr "arm_r_ctrl1.pim" "arm_r_ctrl1_parentConstraint1.cpim";
connectAttr "arm_r_ctrl1.rp" "arm_r_ctrl1_parentConstraint1.crp";
connectAttr "arm_r_ctrl1.rpt" "arm_r_ctrl1_parentConstraint1.crt";
connectAttr "arm_r_ctrl.t" "arm_r_ctrl1_parentConstraint1.tg[0].tt";
connectAttr "arm_r_ctrl.rp" "arm_r_ctrl1_parentConstraint1.tg[0].trp";
connectAttr "arm_r_ctrl.rpt" "arm_r_ctrl1_parentConstraint1.tg[0].trt";
connectAttr "arm_r_ctrl.r" "arm_r_ctrl1_parentConstraint1.tg[0].tr";
connectAttr "arm_r_ctrl.ro" "arm_r_ctrl1_parentConstraint1.tg[0].tro";
connectAttr "arm_r_ctrl.s" "arm_r_ctrl1_parentConstraint1.tg[0].ts";
connectAttr "arm_r_ctrl.pm" "arm_r_ctrl1_parentConstraint1.tg[0].tpm";
connectAttr "arm_r_ctrl1_parentConstraint1.w0" "arm_r_ctrl1_parentConstraint1.tg[0].tw"
		;
connectAttr "polySphere1.out" "projectileShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ramp1.ocr" "standardSurface2.e";
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "part_Shape26.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape25.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape24.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape23.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape22.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape21.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape20.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape19.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape18.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape17.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape16.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape15.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape14.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape13.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape12.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape11.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape10.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape9.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_08Shape.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape7.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape6.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape5.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape4.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape3.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape2.iog" "standardSurface2SG.dsm" -na;
connectAttr "part_Shape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "robotShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "place2dTexture1.o" "ramp1.uv";
connectAttr "place2dTexture1.ofs" "ramp1.fs";
connectAttr "standardSurface2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "standardSurface2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ramp1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bifrostGraphShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "projectileShape.iog" ":initialShadingGroup.dsm" -na;
// End of 06_robot.ma
