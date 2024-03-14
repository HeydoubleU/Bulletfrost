//Maya ASCII 2024 scene
//Name: basic_RBD_01_example.ma
//Last modified: Wed, Mar 13, 2024 11:54:23 PM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "bifrostGraphShape" -dataType "bifData" "bifrostGraph" "2.8.0.0-202311081356-7a0d165";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Mac OS X 14.2.1";
fileInfo "UUID" "77E1332D-0E43-2248-ADCE-159995B0950E";
createNode transform -s -n "persp";
	rename -uid "265BD002-4900-7EF4-F100-FF928984FEE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.585716238314914 23.695285141485947 87.320100588948264 ;
	setAttr ".r" -type "double3" -9.3383527296036402 6.1999999999952715 1.9995420695181632e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F4740EA5-42AE-6D91-7A4C-1697EF99D758";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 85.667152015342069;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C027F203-4FB8-11F6-3B31-458FAEC01EC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C03DA7F8-491A-C4F8-6C10-90A349F48B12";
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
	rename -uid "92E20CDE-4D3F-A3E4-B61B-5CA392971633";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "96D98EE0-408D-2434-EED9-DCA6AD6402EC";
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
	rename -uid "A78EAEE5-4FB2-F0DB-AE32-51BA4EAD09BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F6E6463C-4678-D2CC-C3E6-09AE5660686A";
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
	rename -uid "2F53A20F-49FE-2B0A-6C88-D3B9987D6CA4";
createNode bifrostGraphShape -n "bifrostGraphShape1" -p "bifrostGraph1";
	rename -uid "9FF4CB81-41D6-401B-6323-F7865F45AD17";
	addAttr -w false -ci true -sn "Core__Graph__terminal__final" -ln "Core__Graph__terminal__final" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__proxy" -ln "Core__Graph__terminal__proxy" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -w false -ci true -sn "Core__Graph__terminal__diagnostic" -ln "Core__Graph__terminal__diagnostic" 
		-ct "terminal_node_output_attribute" -dt "bifData";
	addAttr -r false -ci true -k true -sn "mesh" -ln "mesh" -dt "bifData" -dt "vectorArray" 
		-dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -r false -ci true -k true -sn "transform" -ln "transform" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "transform1" -ln "transform1" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "transform2" -ln "transform2" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "transform3" -ln "transform3" -at "fltMatrix";
	addAttr -r false -ci true -k true -sn "mesh2" -ln "mesh2" -dt "bifData" -dt "vectorArray" 
		-dt "doubleArray" -dt "nurbsCurve" -dt "mesh";
	addAttr -r false -ci true -k true -sn "JobPorts__Math_epsilonFloat" -ln "JobPorts__Math_epsilonFloat" 
		-at "float";
	addAttr -r false -ci true -k true -sn "JobPorts__time" -ln "JobPorts__time" -at "time";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sc" -type "string" (
		"{\n    \"header\": {\n        \"metadata\": [\n            {\n                \"metaName\": \"adskFileFormatVersion\",\n                \"metaValue\": \"100L\"\n            }\n        ]\n    },\n    \"namespaces\": [],\n    \"types\": [],\n    \"compounds\": [\n        {\n            \"name\": \"bifrostGraphShape1\",\n            \"metadata\": [\n                {\n                    \"metaName\": \"io_nodes\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"io_inodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"default_meshShape\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-2957.65 -664.918\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"mesh\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"59.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"locator1\",\n"
		+ "                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1341 -575\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"transform\"\n                                                }\n                                            ]\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"55.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"locator2\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1580.14 301.483\"\n"
		+ "                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"transform1\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"34.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"locator3\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1440.46 1073.14\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"transform2\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n"
		+ "                                            \"metaValue\": \"37.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"locator4\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-1510.06 1890.07\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n"
		+ "                                                {\n                                                    \"metaName\": \"transform3\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"43.000000\"\n                                        }\n                                    ]\n                                },\n                                {\n                                    \"metaName\": \"wallShape\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n"
		+ "                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"-328.84 142.246\"\n                                        },\n                                        {\n                                            \"metaName\": \"io_ports\",\n                                            \"metadata\": [\n                                                {\n                                                    \"metaName\": \"mesh2\"\n                                                }\n                                            ]\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"48.000000\"\n                                        }\n                                    ]\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"io_onodes\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"output\",\n                                    \"metadata\": [\n                                        {\n                                            \"metaName\": \"DisplayMode\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"2\"\n                                        },\n                                        {\n                                            \"metaName\": \"LayoutPos\",\n                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"1346.05 -626.367\"\n                                        },\n                                        {\n                                            \"metaName\": \"zValue\",\n"
		+ "                                            \"metaType\": \"string\",\n                                            \"metaValue\": \"31.000000\"\n                                        }\n                                    ]\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffa58bd7\"\n                        },\n                        {\n                            \"metaName\": \"fontSize\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"8\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"The solver assumes a constant number of sources and points. This is not a limit of the underlying operators, just this solver compound. The benefit of this design is that properties can be changed on input sources on the fly, and the solver doesn't have to worry about which updated point goes to which solved point.\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"362.956 -832.47 536.96 115\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"52.000000\"\n                        }\n                    ]\n                },\n                {\n"
		+ "                    \"metaName\": \"backdrop\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Collision shape based off bounding box\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-2151.46 -449.865 1087.23 461.255\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop1\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1939.01 127.729 1045.84 587.353\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Point cloud collision shape based on the mesh's point poisition\"\n                        },\n                        {\n                            \"metaName\": \"fontScaleOffset\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"0\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#28b2b2b5\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop2\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Point cloud collision shape based on scatter\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-2042.7 785.925 1291.29 699.081\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note3\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n"
		+ "                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1675.2 923.302 543.356 66\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"We can scatter points on the mesh for a sparser point cloud ie. better performance (at the cost of some accuracy).\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffd574a5\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"51.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop3\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Static rigid body\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-359.51 -114.793 913.79 600.044\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-132.186 14.2404 440.733 94\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffe0a66c\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Mesh and Mesh (BVH) have limitations as dynamic rigid bodies. These work best for kinematic and static bodies\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"56.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"backdrop4\",\n                    \"metadata\": [\n"
		+ "                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"backdrop\"\n                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-2028.47 1539.82 1362.3 732.224\"\n                        },\n                        {\n                            \"metaName\": \"title\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Compound concave collision shape\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note5\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n"
		+ "                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1783.04 1647.89 730.861 122\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"Compound shapes are the best option for concave collisions with dynamic rigid bodies. Auto compound uses btCompoundFromGimpactShape, which is accurate, but its children do not implement scale, margin, and the resulting shape is often very expensive. A custom compound shape algorithm is needed.\"\n                        },\n                        {\n                            \"metaName\": \"color\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"#ffd574a5\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"46.000000\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"sticky_note6\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"type\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"sticky_note\"\n                        },\n                        {\n                            \"metaName\": \"fontSize\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"12\"\n                        },\n                        {\n                            \"metaName\": \"text\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"The brain of the graph is 'simulate_bullet'. All rigid bodies are the same so there's no dedicate 'colliders' input, instead these would just be rigid bodies in 'static' mode.\\n\\nThe output geo type will always be instances, because this is what the solver opperates on internally. Instances can be used as a source directly, but they should be passed through a 'source_rigid_body_instances' which sets their physical properties. Collision shapes are set at the mesh level using 'set_collision_shape', any point that instances the mesh will also instance it's collision shape. If the mesh has no collision shape property, it will be computed automatically using the fallback shape type.\\n\\nThis example however uses meshes which are sourced with 'source_rigid_bodies', this converts a mesh array into a single instances object. For setting per body properties we could use 'source_rigid_body_instances' afterwards, but a generally more convient option is to use 'prep_rigid_body_mesh'.\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"coords\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-2407.94 -1147.72 1009.29 458\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"54.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"metaName\": \"ViewportRect\",\n                    \"metaType\": \"string\",\n                    \"metaValue\": \"-3673.8 -954.87 2644.5 1476.61\"\n                },\n                {\n                    \"metaName\": \"internal\",\n                    \"metaValue\": \"true\"\n                }\n            ],\n            \"ports\": [\n                {\n                    \"portName\": \"mesh\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Object\",\n                    \"metadata\": [\n"
		+ "                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/default_mesh/default_meshShape\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"transform\",\n"
		+ "                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/locator1\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n"
		+ "                    ]\n                },\n                {\n                    \"portName\": \"transform1\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/locator2\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n"
		+ "                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"transform2\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/locator3\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"transform3\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Math::float4x4\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/locator4\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"+\"\n                                },\n"
		+ "                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                },\n                {\n                    \"portName\": \"mesh2\",\n                    \"portDirection\": \"input\",\n                    \"portType\": \"Object\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"pathinfo\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"path\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"/wall/wallShape\"\n                                },\n                                {\n                                    \"metaName\": \"setOperation\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"+\"\n                                },\n                                {\n                                    \"metaName\": \"active\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"true\"\n                                }\n                            ]\n                        }\n                    ]\n                }\n            ],\n            \"compoundNodes\": [\n                {\n                    \"nodeName\": \"simulate_bullet\",\n                    \"nodeType\": \"Bullet::simulate_bullet\",\n                    \"fanInPortNames\": {\n                        \"sources\": [\n                            \"source\"\n                        ]\n                    },\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::final\",\n"
		+ "                            \"enabled\": \"true\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::proxy\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"sources\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"549 -700\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"63.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"bullet_simulation_settings\",\n                    \"nodeType\": \"Bullet::bullet_simulation_settings\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"262 -578\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"Ground Plane\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"50.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"source_rigid_bodies\",\n                    \"nodeType\": \"Bullet::RBD::source_rigid_bodies\",\n                    \"fanInPortNames\": {\n                        \"geometry\": [\n                            \"out_mesh\",\n                            \"out_mesh1\",\n                            \"out_mesh2\",\n                            \"out_mesh4\",\n                            \"out_mesh5\"\n                        ],\n                        \"constraints\": []\n"
		+ "                    },\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"geometry\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-297 -686\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"53.000000\"\n"
		+ "                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh5\",\n                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-997.572 -684.518\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"60.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"terminal1\",\n                    \"nodeType\": \"Core::Graph::terminal\",\n"
		+ "                    \"fanInPortNames\": {\n                        \"final\": [],\n                        \"proxy\": [\n                            \"output\"\n                        ],\n                        \"diagnostic\": []\n                    },\n                    \"terminalStates\": [\n                        {\n                            \"name\": \"Core::Graph::terminal::final\",\n                            \"enabled\": \"false\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::diagnostic\",\n                            \"enabled\": \"false\"\n                        },\n                        {\n                            \"name\": \"Core::Graph::terminal::proxy\",\n                            \"enabled\": \"true\"\n                        }\n                    ],\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n"
		+ "                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"1000 -738\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"32.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"primitive_collision_shape1\",\n                    \"nodeType\": \"Bullet::Collision::primitive_collision_shape\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Primitive\",\n"
		+ "                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"Primitive.Box\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"Common\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1304.26 -306.842\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"61.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"SRT_to_matrix\",\n                    \"nodeType\": \"Core::Math::SRT_to_matrix\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1592 -361\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"33.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh1\",\n                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n"
		+ "                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1128.17 207.729\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"38.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh2\",\n                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n"
		+ "                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1019.81 971.956\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"39.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"geo_collision_shape1\",\n                    \"nodeType\": \"Bullet::Collision::geo_collision_shape\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"NodeValueDisplay\",\n                            \"metadata\": [\n                                {\n"
		+ "                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Collision: {shape_type}\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1559.47 506.082\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"62.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh3\",\n"
		+ "                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1093.46 1785.47\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Properties\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"44.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"scatter_points\",\n                    \"nodeType\": \"Modeling::Points::scatter_points\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"PortExpandedState\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"Scatter Settings\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"0\"\n                                },\n                                {\n                                    \"metaName\": \"Properties\",\n                                    \"metaType\": \"string\",\n"
		+ "                                    \"metaValue\": \"0\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1743.54 1140.03\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"47.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"geo_collision_shape2\",\n                    \"nodeType\": \"Bullet::Collision::geo_collision_shape\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"NodeValueDisplay\",\n"
		+ "                            \"metadata\": [\n                                {\n                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Collision: {shape_type}\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1443.44 1269.09\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"41.000000\"\n                        }\n                    ]\n"
		+ "                },\n                {\n                    \"nodeName\": \"pass1\",\n                    \"nodeType\": \"Core::Graph::pass\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1929.01 220.502\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"35.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"pass2\",\n                    \"nodeType\": \"Core::Graph::pass\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n"
		+ "                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1989.12 993.462\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"36.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"pass\",\n                    \"nodeType\": \"Core::Graph::pass\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"-1915.97 1805.5\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"45.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"prep_rigid_body_mesh4\",\n                    \"nodeType\": \"Bullet::RBD::prep_rigid_body_mesh\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"289.558 132.239\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n"
		+ "                            \"metaValue\": \"49.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"geo_collision_shape3\",\n                    \"nodeType\": \"Bullet::Collision::geo_collision_shape\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"NodeValueDisplay\",\n                            \"metadata\": [\n                                {\n                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Collision: {shape_type}\"\n"
		+ "                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-16.3643 249.234\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"40.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"geo_collision_shape6\",\n                    \"nodeType\": \"Bullet::Collision::geo_collision_shape\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"NodeValueDisplay\",\n                            \"metadata\": [\n"
		+ "                                {\n                                    \"metaName\": \"show\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"1\"\n                                },\n                                {\n                                    \"metaName\": \"format\",\n                                    \"metaType\": \"string\",\n                                    \"metaValue\": \"Collision: {shape_type}\"\n                                }\n                            ]\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1513.26 2063.05\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"42.000000\"\n                        }\n                    ]\n                },\n                {\n"
		+ "                    \"nodeName\": \"compute_bounding_box1\",\n                    \"nodeType\": \"Bullet::Utility::compute_bounding_box\",\n                    \"metadata\": [\n                        {\n                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-1871.14 -243.244\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"57.000000\"\n                        }\n                    ]\n                },\n                {\n                    \"nodeName\": \"get_point_position\",\n                    \"nodeType\": \"Geometry::Properties::get_point_position\",\n                    \"metadata\": [\n                        {\n"
		+ "                            \"metaName\": \"DisplayMode\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"2\"\n                        },\n                        {\n                            \"metaName\": \"LayoutPos\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"-2128.72 -245.337\"\n                        },\n                        {\n                            \"metaName\": \"zValue\",\n                            \"metaType\": \"string\",\n                            \"metaValue\": \"58.000000\"\n                        }\n                    ]\n                }\n            ],\n            \"connections\": [\n                {\n                    \"source\": \"bullet_simulation_settings.settings\",\n                    \"target\": \"simulate_bullet.settings\"\n                },\n                {\n                    \"source\": \"source_rigid_bodies.source\",\n                    \"target\": \"simulate_bullet.sources.source\"\n                },\n                {\n                    \"source\": \".mesh\",\n"
		+ "                    \"target\": \"prep_rigid_body_mesh5.mesh\"\n                },\n                {\n                    \"source\": \"simulate_bullet.output\",\n                    \"target\": \"terminal1.proxy.output\"\n                },\n                {\n                    \"source\": \".transform\",\n                    \"target\": \"prep_rigid_body_mesh5.transform\"\n                },\n                {\n                    \"source\": \"SRT_to_matrix.transform\",\n                    \"target\": \"primitive_collision_shape1.transform\"\n                },\n                {\n                    \"source\": \".transform1\",\n                    \"target\": \"prep_rigid_body_mesh1.transform\"\n                },\n                {\n                    \"source\": \"scatter_points.points\",\n                    \"target\": \"geo_collision_shape2.geometry\"\n                },\n                {\n                    \"source\": \".transform2\",\n                    \"target\": \"prep_rigid_body_mesh2.transform\"\n                },\n                {\n                    \"source\": \".mesh\",\n"
		+ "                    \"target\": \"pass1.input\"\n                },\n                {\n                    \"source\": \"pass1.output\",\n                    \"target\": \"geo_collision_shape1.geometry\"\n                },\n                {\n                    \"source\": \"pass1.output\",\n                    \"target\": \"prep_rigid_body_mesh1.mesh\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"pass2.input\"\n                },\n                {\n                    \"source\": \"pass2.output\",\n                    \"target\": \"scatter_points.geometry\"\n                },\n                {\n                    \"source\": \"pass2.output\",\n                    \"target\": \"prep_rigid_body_mesh2.mesh\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"pass.input\"\n                },\n                {\n                    \"source\": \".transform3\",\n                    \"target\": \"prep_rigid_body_mesh3.transform\"\n                },\n                {\n"
		+ "                    \"source\": \"geo_collision_shape3.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh4.collision_shape\"\n                },\n                {\n                    \"source\": \"pass.output\",\n                    \"target\": \"geo_collision_shape6.geometry\"\n                },\n                {\n                    \"source\": \"pass.output\",\n                    \"target\": \"prep_rigid_body_mesh3.mesh\"\n                },\n                {\n                    \"source\": \".mesh2\",\n                    \"target\": \"geo_collision_shape3.geometry\"\n                },\n                {\n                    \"source\": \".mesh2\",\n                    \"target\": \"prep_rigid_body_mesh4.mesh\"\n                },\n                {\n                    \"source\": \"geo_collision_shape6.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh3.collision_shape\"\n                },\n                {\n                    \"source\": \"geo_collision_shape2.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh2.collision_shape\"\n"
		+ "                },\n                {\n                    \"source\": \"geo_collision_shape1.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh1.collision_shape\"\n                },\n                {\n                    \"source\": \"primitive_collision_shape1.collision_shape\",\n                    \"target\": \"prep_rigid_body_mesh5.collision_shape\"\n                },\n                {\n                    \"source\": \".mesh\",\n                    \"target\": \"get_point_position.geometry\"\n                },\n                {\n                    \"source\": \"get_point_position.point_position\",\n                    \"target\": \"compute_bounding_box1.point_position\"\n                },\n                {\n                    \"source\": \"compute_bounding_box1.center\",\n                    \"target\": \"SRT_to_matrix.translation\"\n                },\n                {\n                    \"source\": \"compute_bounding_box1.extents\",\n                    \"target\": \"primitive_collision_shape1.extents\"\n                },\n                {\n"
		+ "                    \"source\": \"prep_rigid_body_mesh5.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh\"\n                },\n                {\n                    \"source\": \"prep_rigid_body_mesh1.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh1\"\n                },\n                {\n                    \"source\": \"prep_rigid_body_mesh2.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh2\"\n                },\n                {\n                    \"source\": \"prep_rigid_body_mesh3.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh5\"\n                },\n                {\n                    \"source\": \"prep_rigid_body_mesh4.out_mesh\",\n                    \"target\": \"source_rigid_bodies.geometry.out_mesh4\"\n                }\n            ],\n            \"values\": [\n                {\n                    \"valueName\": \"bullet_simulation_settings.gravity_vector\",\n                    \"valueType\": \"Math::float3\",\n                    \"value\": {\n"
		+ "                        \"x\": \"0f\",\n                        \"y\": \"-98f\",\n                        \"z\": \"0f\"\n                    }\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.substeps\",\n                    \"valueType\": \"uint\",\n                    \"value\": \"10U\"\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.ground\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"bullet_simulation_settings.extent\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh5.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n                        \"mass\": \"10f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n"
		+ "                        \"angular_damping\": \"0.00999999978f\"\n                    }\n                },\n                {\n                    \"valueName\": \"SRT_to_matrix.quaternion\",\n                    \"valueType\": \"Math::float4\",\n                    \"value\": {\n                        \"x\": \"0f\",\n                        \"y\": \"0f\",\n                        \"z\": \"0f\",\n                        \"w\": \"1f\"\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh1.mode\",\n                    \"valueType\": \"Bullet::RBD::RigidBodyMode\",\n                    \"value\": \"Dynamic\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh1.transform\",\n                    \"valueType\": \"Math::float4x4\",\n                    \"value\": {\n                        \"c0\": {\n                            \"x\": \"1f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c1\": {\n"
		+ "                            \"x\": \"0f\",\n                            \"y\": \"1f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c2\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"1f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c3\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"1f\"\n                        }\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh1.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n                        \"mass\": \"10f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n"
		+ "                        \"angular_damping\": \"0.00999999978f\"\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh1.enabled\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh2.mode\",\n                    \"valueType\": \"Bullet::RBD::RigidBodyMode\",\n                    \"value\": \"Dynamic\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh2.transform\",\n                    \"valueType\": \"Math::float4x4\",\n                    \"value\": {\n                        \"c0\": {\n                            \"x\": \"1f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c1\": {\n                            \"x\": \"0f\",\n                            \"y\": \"1f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n"
		+ "                        },\n                        \"c2\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"1f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c3\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"1f\"\n                        }\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh2.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n                        \"mass\": \"10f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n                        \"angular_damping\": \"0.00999999978f\"\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh2.enabled\",\n"
		+ "                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape1.geometry\",\n                    \"valueType\": \"Object\",\n                    \"value\": {}\n                },\n                {\n                    \"valueName\": \"geo_collision_shape1.shape_type\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape1.margin\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh3.mode\",\n                    \"valueType\": \"Bullet::RBD::RigidBodyMode\",\n                    \"value\": \"Dynamic\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh3.transform\",\n                    \"valueType\": \"Math::float4x4\",\n                    \"value\": {\n                        \"c0\": {\n"
		+ "                            \"x\": \"1f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c1\": {\n                            \"x\": \"0f\",\n                            \"y\": \"1f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c2\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"1f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c3\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"1f\"\n                        }\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh3.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n"
		+ "                        \"mass\": \"10f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n                        \"angular_damping\": \"0.00999999978f\"\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh3.enabled\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"scatter_points.scatter_mode\",\n                    \"valueType\": \"Modeling::Points::ScatteringMode\",\n                    \"value\": \"BlueNoise\"\n                },\n                {\n                    \"valueName\": \"scatter_points.amount\",\n                    \"valueType\": \"float\",\n                    \"value\": \"400f\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape2.geometry\",\n                    \"valueType\": \"Object\",\n                    \"value\": {}\n                },\n"
		+ "                {\n                    \"valueName\": \"geo_collision_shape2.shape_type\",\n                    \"valueType\": \"long\",\n                    \"value\": \"0\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape2.margin\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh4.mode\",\n                    \"valueType\": \"Bullet::RBD::RigidBodyMode\",\n                    \"value\": \"Static\"\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh4.transform\",\n                    \"valueType\": \"Math::float4x4\",\n                    \"value\": {\n                        \"c0\": {\n                            \"x\": \"1f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c1\": {\n                            \"x\": \"0f\",\n                            \"y\": \"1f\",\n"
		+ "                            \"z\": \"0f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c2\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"1f\",\n                            \"w\": \"0f\"\n                        },\n                        \"c3\": {\n                            \"x\": \"0f\",\n                            \"y\": \"0f\",\n                            \"z\": \"0f\",\n                            \"w\": \"1f\"\n                        }\n                    }\n                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh4.physical_material\",\n                    \"valueType\": \"Bullet::RBD::PhysicalMaterial\",\n                    \"value\": {\n                        \"mass\": \"1f\",\n                        \"friction\": \"0.5f\",\n                        \"restitution\": \"0.5f\",\n                        \"linear_damping\": \"0.00999999978f\",\n                        \"angular_damping\": \"0.00999999978f\"\n                    }\n"
		+ "                },\n                {\n                    \"valueName\": \"prep_rigid_body_mesh4.enabled\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"true\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape3.geometry\",\n                    \"valueType\": \"Object\",\n                    \"value\": {}\n                },\n                {\n                    \"valueName\": \"geo_collision_shape3.shape_type\",\n                    \"valueType\": \"long\",\n                    \"value\": \"3\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape3.margin\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape3.dynamic\",\n                    \"valueType\": \"bool\",\n                    \"value\": \"false\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape6.geometry\",\n                    \"valueType\": \"Object\",\n"
		+ "                    \"value\": {}\n                },\n                {\n                    \"valueName\": \"geo_collision_shape6.shape_type\",\n                    \"valueType\": \"long\",\n                    \"value\": \"1\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape6.margin\",\n                    \"valueType\": \"float\",\n                    \"value\": \"0f\"\n                },\n                {\n                    \"valueName\": \"geo_collision_shape6.ray_depth\",\n                    \"valueType\": \"float\",\n                    \"value\": \"20f\"\n                }\n            ],\n            \"reservedNodeNames\": [\n                {\n                    \"name\": \"output\"\n                },\n                {\n                    \"name\": \"default_meshShape\"\n                },\n                {\n                    \"name\": \"locator1\"\n                },\n                {\n                    \"name\": \"locator2\"\n                },\n                {\n                    \"name\": \"locator3\"\n                },\n                {\n"
		+ "                    \"name\": \"locator4\"\n                },\n                {\n                    \"name\": \"wallShape\"\n                }\n            ]\n        }\n    ]\n}\n");
	setAttr -k on ".mesh";
	setAttr -k on ".transform";
	setAttr -k on ".transform1";
	setAttr -k on ".transform2";
	setAttr -k on ".transform3";
	setAttr -k on ".mesh2";
	setAttr -k on ".JobPorts__time";
createNode transform -n "default_mesh";
	rename -uid "FB2090F3-443A-E580-851A-11ADE166B552";
	setAttr ".v" no;
createNode mesh -n "default_meshShape" -p "default_mesh";
	rename -uid "0B2191DA-4CF3-70B8-540E-2EBEBAAFE187";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2332 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.13700999 0.060800999 0.13478699
		 0.067925997 0.14392599 0.067984 0.14370599 0.057822 0.131826 0.07705 0.141459 0.078979
		 0.157432 0.085414 0.160197 0.070690997 0.159898 0.057133999 0.157867 0.046165001
		 0.14120799 0.049961999 0.147999 0.035106 0.13757201 0.043251999 0.12714501 0.051399
		 0.132891 0.056821998 0.127453 0.085758001 0.135897 0.089337997 0.123943 0.09251 0.127959
		 0.097840004 0.140295 0.112338 0.15027399 0.099884003 0.116771 0.093686998 0.118364
		 0.103266 0.106813 0.095582001 0.107942 0.107152 0.10907 0.118723 0.12906399 0.121013
		 0.120666 0.060947999 0.12731101 0.065122999 0.114187 0.070496 0.123123 0.074341998
		 0.68889099 0.046379 0.65856302 0.038805 0.64674401 0.05869 0.67591202 0.06498 0.62823403
		 0.031230999 0.613603 0.052416999 0.60372299 0.074005999 0.63454503 0.078092001 0.66293299
		 0.083580002 0.62158602 0.096528001 0.64638698 0.099203996 0.59334803 0.095735997
		 0.58433402 0.119393 0.60928202 0.115136 0.62984103 0.114828 0.58064902 0.176211 0.60524499
		 0.145519 0.59904701 0.135057 0.57853597 0.14676701 0.1105 0.083039001 0.118983 0.083954997
		 0.52310699 0.072353996 0.475274 0.079924002 0.47261399 0.115208 0.51755798 0.105267
		 0.42305601 0.089345001 0.42298099 0.12512299 0.42225 0.16141 0.469652 0.152024 0.51217401
		 0.140586 0.52758801 0.013421 0.474168 0.018626001 0.47536299 0.048347998 0.52569997
		 0.043609001 0.420748 0.023832001 0.42171299 0.056164999 0.511343 0.209346 0.47000399
		 0.22099 0.47407001 0.247678 0.51602399 0.235181 0.42186299 0.227883 0.42369699 0.255344
		 0.43095699 0.284749 0.47949499 0.27131301 0.52803397 0.25787699 0.46865699 0.18819501
		 0.42162901 0.196117 0.51008201 0.17654601 0.57791102 0.022326 0.57251698 0.046177998
		 0.56625003 0.071238004 0.54760897 0.193262 0.55016702 0.219503 0.580405 0.202235
		 0.554097 0.24306799 0.58016002 0.22826 0.54779398 0.161667 0.55118299 0.128792 0.55823702
		 0.098713003 0.28477901 0.448084 0.303666 0.46204501 0.33719599 0.43193999 0.32216799
		 0.41704601 0.31383801 0.468108 0.35222399 0.44683301 0.39061099 0.425558 0.37182599
		 0.40861401 0.35955599 0.38600901 0.51373899 0.68051797 0.49529001 0.69574201 0.52411997
		 0.71725702 0.53844899 0.70399702 0.48132101 0.71181703 0.51331902 0.73081398 0.543823
		 0.747904 0.55201 0.73805302 0.560197 0.72820199 0.46649101 0.62914699 0.436169 0.64566302
		 0.464578 0.67278701 0.48971799 0.65625799 0.40080699 0.663589 0.44474801 0.69123203
		 0.44416401 0.59711897 0.41424501 0.61164302 0.42341599 0.56632698 0.39556301 0.57417399
		 0.36770999 0.582021 0.38297299 0.618774 0.18115699 0.25164101 0.16847301 0.29468799
		 0.18997701 0.300082 0.20227499 0.26113999 0.158664 0.33517399 0.178321 0.33854499
		 0.199586 0.342747 0.20891701 0.30482501 0.22339199 0.270639 0.210454 0.362569 0.224988
		 0.33934101 0.226237 0.321578 0.220844 0.375453 0.239253 0.336923 0.25766101 0.29839301
		 0.281432 0.55393898 0.29763499 0.511024 0.27885199 0.50004703 0.261253 0.53955001
		 0.260068 0.48907 0.235357 0.530056 0.79459101 0.45348799 0.76334399 0.48370299 0.78600103
		 0.50675899 0.81760103 0.47492999 0.73193198 0.511392 0.75434101 0.53573602 0.77476698
		 0.56141597 0.80837601 0.52868801 0.84198499 0.49596 0.745094 0.404277 0.71477097
		 0.431151 0.74012202 0.45839599 0.77118897 0.42957199 0.68428099 0.45647001 0.70876902
		 0.485203 0.68572599 0.40228501 0.65789598 0.42449099 0.71400398 0.378699 0.67798698
		 0.35472 0.65704697 0.375572 0.63319099 0.39408001 0.63278902 0.354785 0.61374301
		 0.370049 0.648615 0.34088999 0.61924201 0.327061 0.613455 0.335408 0.598019 0.34881601
		 0.60011899 0.27601501 0.58930802 0.29053 0.59954399 0.31292701 0.60968101 0.30153799
		 0.57251298 0.305309 0.58449 0.326801 0.59255499 0.242596 0.57365 0.25392401 0.58099699
		 0.27140799 0.60988498 0.25244701 0.55474502 0.26525101 0.56144297 0.28564501 0.84497201
		 0.39051399 0.82192802 0.42189699 0.84565598 0.44147599 0.86920297 0.40811801 0.86930799
		 0.459934 0.89662999 0.423908 0.79590398 0.35004199 0.772183 0.376959 0.798051 0.40007401
		 0.82092297 0.370987 0.74373901 0.305022 0.71086299 0.329871 0.74248099 0.35350099
		 0.76876199 0.32817999 0.67012399 0.23472901 0.66587001 0.21977 0.74012899 0.193444
		 0.73040402 0.18405201 0.73067802 0.167026 0.66161698 0.20481101 0.60995001 0.87117898
		 0.60431099 0.86037499 0.58563799 0.87352401 0.59043998 0.88502401 0.59846002 0.84970999
		 0.58020002 0.86213398 0.56808603 0.869008 0.57408202 0.88100499 0.57528901 0.89470601
		 0.59065503 0.840617 0.571257 0.85292703 0.57688498 0.83815098 0.56056201 0.84481299
		 0.54424 0.851475 0.55835998 0.85896599 0.645648 0.94043398 0.649643 0.95590299 0.65667802
		 0.94696701 0.65352303 0.932845 0.65177101 0.976394 0.65776801 0.96262699 0.66376603
		 0.94885999 0.669765 0.93595701 0.66633201 0.92344803 0.59655601 0.94917202 0.58994198
		 0.95491999 0.60052299 0.964149 0.60616398 0.957259 0.58181798 0.96189499 0.59534699
		 0.97113198 0.60887599 0.98036802 0.61261302 0.97207201 0.61635 0.96377599 0.58518499
		 0.92772597 0.57632798 0.92993802 0.58238 0.94308102 0.58997101 0.93848598 0.56747103
		 0.93215001 0.57464498 0.94702202 0.53803098 0.85183501 0.54734498 0.86408502 0.53182101
		 0.85219598 0.53772801 0.86954403 0.54524899 0.88366699 0.55636698 0.87629199 0.69869697
		 0.87394702 0.69189399 0.86075199 0.66586101 0.87706 0.67268199 0.88913602 0.68557203
		 0.847552;
	setAttr ".uvst[0].uvsp[250:499]" 0.65895402 0.865484 0.63462299 0.88188201
		 0.64292699 0.89170599 0.65019 0.902888 0.71476799 0.90009099 0.70665699 0.88691598
		 0.68110102 0.900473 0.68916202 0.91196102 0.65889901 0.91294599 0.66504598 0.79576999
		 0.650998 0.79222703 0.62116802 0.816679 0.62861598 0.82577997 0.64943498 0.77808601
		 0.61316001 0.80811799 0.67245299 0.821917 0.66592401 0.81140298 0.634942 0.83595997
		 0.64104098 0.84652698 0.75071901 0.84675199 0.74278802 0.83256102 0.71456301 0.847076
		 0.722063 0.86082703 0.736413 0.81596702 0.70711601 0.83366501 0.75960398 0.87860298
		 0.756203 0.86196297 0.72937799 0.87480998 0.73590702 0.88954502 0.72202599 0.913903
		 0.74105299 0.90555698 0.73521698 0.92619997 0.745507 0.922207 0.75579602 0.91821301
		 0.76129001 0.89708 0.696585 0.77392799 0.68531799 0.76485097 0.66834402 0.77837503
		 0.67767102 0.787893 0.66725099 0.76004601 0.65834302 0.76906598 0.71416402 0.79397398
		 0.70585197 0.78371602 0.68564999 0.79782802 0.69292903 0.80819899 0.83786702 0.81065297
		 0.83258998 0.79448599 0.78548503 0.813739 0.792602 0.82869703 0.82459903 0.78075999
		 0.78086299 0.800309 0.82985902 0.85225201 0.835298 0.83007401 0.79407001 0.846187
		 0.79288501 0.86554497 0.79203999 0.88610601 0.79136699 0.907269 0.82693702 0.89632398
		 0.82653099 0.876692 0.75937301 0.71685302 0.74347103 0.71331 0.71403402 0.741386
		 0.72742701 0.74843699 0.73146898 0.71068102 0.69936001 0.73536301 0.783544 0.73478597
		 0.772205 0.72460598 0.73825997 0.75754601 0.74785101 0.76784301 0.80711198 0.75996202
		 0.77006 0.78754199 0.78688002 0.787404 0.819031 0.76866299 0.91057998 0.78415799
		 0.91061598 0.76302999 0.874035 0.77868098 0.87666601 0.79661298 0.90418601 0.74132699
		 0.86608899 0.761976 0.89756501 0.83230299 0.90566099 0.80466598 0.87220001 0.81621802
		 0.86463898 0.840608 0.857988 0.87289703 0.85179299 0.90913498 0.87664902 0.921947
		 0.88800198 0.874816 0.79626203 0.65254098 0.77463198 0.65771902 0.76261097 0.68595499
		 0.78159899 0.68461102 0.75220603 0.670829 0.74183798 0.69075501 0.83233398 0.66257203
		 0.81493503 0.655132 0.79701501 0.69018 0.81079698 0.69978499 0.870947 0.69784099
		 0.84084201 0.73048699 0.85461402 0.74605101 0.88970798 0.719091 0.56480402 0.88841403
		 0.57294899 0.90049398 0.556162 0.895248 0.57060802 0.90628201 0.622787 0.87589502
		 0.60576898 0.88725799 0.619937 0.89116901 0.59583497 0.89433998 0.61099398 0.89780301
		 0.52594602 0.86036801 0.52902597 0.87660003 0.52007103 0.868541 0.52078098 0.88445503
		 0.52148998 0.90036899 0.53493798 0.89081597 0.54651397 0.90100098 0.53636301 0.906214
		 0.55123597 0.91206002 0.56092203 0.90917099 0.59756398 0.91507 0.58521301 0.909513
		 0.5808 0.917705 0.59096003 0.92287803 0.56986099 0.90510798 0.56871599 0.91479701
		 0.56757098 0.92448699 0.57637799 0.92610598 0.58960402 0.90174103 0.60388899 0.906241
		 0.57257497 0.89990699 0.61837101 0.97256398 0.62703001 0.96856099 0.62185001 0.95806098
		 0.62039101 0.98135197 0.63024199 0.98055899 0.64009202 0.979765 0.63526499 0.96470702
		 0.62962103 0.95204097 0.63799798 0.92896998 0.62906098 0.936396 0.63761699 0.94649899
		 0.62901902 0.91878998 0.61980999 0.92739999 0.61087501 0.93599999 0.620336 0.94371301
		 0.62103701 0.90717697 0.612688 0.916071 0.60470098 0.92517501 0.63739097 0.91169602
		 0.64623803 0.921799 0.62955099 0.90039998 0.603329 0.94306099 0.61273599 0.95055801
		 0.59727001 0.93258202 0.642654 0.96115202 0.64593101 0.97807902 0.079300001 0.62053901
		 0.06701 0.61800599 0.062350001 0.63888001 0.074539997 0.64292997 0.054761 0.61596203
		 0.049943 0.63618702 0.045733001 0.65551102 0.058888 0.65808302 0.069921002 0.66316801
		 0.042596001 0.61489499 0.037103999 0.63621002 0.031097 0.61558199 0.024048001 0.63758999
		 0.017000001 0.65959799 0.031909999 0.65604901 0.18365701 0.62388998 0.171657 0.62243599
		 0.17596599 0.63755298 0.192232 0.63932598 0.158228 0.622958 0.160349 0.63659698 0.16163699
		 0.64696598 0.178646 0.64970303 0.20080701 0.65476298 0.166181 0.70432401 0.16221599
		 0.69755602 0.14845601 0.70174402 0.15044001 0.70886898 0.158252 0.69078702 0.146851
		 0.69371098 0.13463099 0.69579798 0.134694 0.703861 0.134698 0.713413 0.12093 0.70183498
		 0.118881 0.708911 0.122409 0.69381201 0.111266 0.69106197 0.107165 0.69773501 0.103064
		 0.704409 0.012962 0.67578399 0.028137 0.677163 0.0089229997 0.69196898 0.026081 0.69644701
		 0.041673999 0.69985402 0.043161001 0.67832601 0.138336 0.569381 0.12720001 0.56748903
		 0.122358 0.59976298 0.13405401 0.601475 0.115495 0.56542301 0.110216 0.597543 0.106634
		 0.62093401 0.119727 0.62277699 0.132549 0.62432998 0.16009501 0.57234299 0.149066
		 0.57089102 0.145495 0.60187203 0.15710101 0.60167301 0.14528701 0.62399 0.061822999
		 0.55899 0.049800999 0.55852997 0.047261 0.58935702 0.059156001 0.590442 0.040192999
		 0.56145602 0.035645001 0.58851898 0.089525998 0.55700898 0.074579 0.56003499 0.071608998
		 0.59201902 0.084339999 0.59384298 0.15690701 0.48567501 0.14349701 0.482999 0.13488799
		 0.52595901 0.146861 0.52815902 0.130134 0.48146999 0.122617 0.52425301 0.183861 0.49542099
		 0.170056 0.48978201 0.15841199 0.53101301 0.17033599 0.53457201 0.214332 0.50789499
		 0.19923399 0.502689 0.183431 0.53888398 0.19711 0.54357302 0.17212901 0.57406098
		 0.179888 0.579252 0.058913 0.481684 0.045542002 0.48284301 0.048916999 0.52134699
		 0.061455999 0.52096897 0.032924 0.48256999 0.036559001 0.52201301 0.084339 0.47997099
		 0.072082996 0.48111501;
	setAttr ".uvst[0].uvsp[500:749]" 0.074354 0.52116799 0.085690998 0.51792401
		 0.093546003 0.50721902 0.094970003 0.47709101 0.099754997 0.51836002 0.105166 0.47975501
		 0.174532 0.41655701 0.158869 0.412155 0.151105 0.446435 0.165749 0.44979301 0.142979
		 0.409713 0.13659699 0.44451499 0.208277 0.43209499 0.190209 0.42290899 0.180521 0.45474201
		 0.196703 0.461954 0.257256 0.459557 0.231113 0.44499299 0.21557599 0.472105 0.23579399
		 0.48372599 0.050294001 0.410932 0.034837998 0.413948 0.040608 0.44804999 0.055341002
		 0.446069 0.018827001 0.41749099 0.025876001 0.45003101 0.079722002 0.41070899 0.065076001
		 0.41036999 0.068916999 0.44557399 0.082280003 0.44505301 0.095215999 0.44448301 0.094775997
		 0.41039199 0.108332 0.44403499 0.110366 0.40978101 0.167946 0.37604699 0.18440101
		 0.38200599 0.15025 0.373391 0.199524 0.391305 0.217997 0.40376699 0.292799 0.41275299
		 0.25682199 0.39410299 0.244504 0.41921499 0.27502799 0.43615499 0.045062002 0.37085
		 0.028951 0.37751499 0.039556999 0.32181799 0.023007 0.339917 0.0064579998 0.35801601
		 0.012642 0.38775301 0.076874003 0.37448099 0.060775999 0.37133199 0.073311001 0.337098
		 0.057266999 0.33447701 0.114663 0.33808699 0.092937 0.33837301 0.094139002 0.375815
		 0.112379 0.37557501 0.057882 0.67905998 0.072451003 0.67957902 0.057479002 0.69837803
		 0.074980997 0.69598901 0.089038998 0.65248102 0.089763001 0.63860297 0.104557 0.64701903
		 0.104602 0.63591999 0.093082003 0.620408 0.011565 0.702667 0.026035 0.71079898 0.014207
		 0.71336401 0.026994999 0.72268403 0.039781999 0.73200399 0.040716998 0.71531701 0.055824
		 0.71260703 0.053543001 0.72429103 0.067304 0.71657801 0.071142003 0.70628399 0.098304003
		 0.69923103 0.104785 0.69514698 0.101379 0.68514299 0.091711 0.69099402 0.111555 0.681907
		 0.109892 0.670569 0.097447999 0.674936 0.085118003 0.68275601 0.092468001 0.66431999
		 0.077519998 0.67296201 0.10694 0.65875399 0.18514299 0.67933297 0.171582 0.67307299
		 0.16819499 0.683671 0.178831 0.68812799 0.15818299 0.67021602 0.15732899 0.68148899
		 0.16538499 0.693856 0.172518 0.69692397 0.14672799 0.64729899 0.14639001 0.659621
		 0.160267 0.65843999 0.132864 0.64810503 0.13346501 0.66123903 0.13402499 0.67475998
		 0.14586499 0.67241699 0.118986 0.64678597 0.12046 0.659338 0.122059 0.67232698 0.132355
		 0.63783699 0.14602999 0.63727701 0.118673 0.63652498 0.13441101 0.686189 0.14600299
		 0.68385798 0.122747 0.68389702 0.176125 0.66164702 0.192975 0.66704798 0.61735499
		 0.60436398 0.589652 0.62534702 0.60996699 0.65214598 0.63812798 0.63094401 0.56320202
		 0.64487201 0.58367503 0.67137599 0.60302502 0.69955498 0.63042098 0.67914498 0.65781701
		 0.65873498 0.573062 0.54946703 0.54741102 0.57054198 0.56961298 0.59895003 0.59636098
		 0.57793099 0.52214098 0.59032702 0.54347301 0.61867398 0.51856101 0.48462799 0.49413601
		 0.50466299 0.520603 0.53771102 0.54537302 0.516792 0.47008201 0.52106702 0.49685901
		 0.55737698 0.480335 0.43495801 0.45433 0.45088801 0.47295499 0.47560599 0.49789 0.45769799
		 0.43067101 0.46017799 0.45037699 0.490623 0.44547999 0.39586699 0.417191 0.41203699
		 0.435532 0.430857 0.46287099 0.41536501 0.41064101 0.44286799 0.40690899 0.35144299
		 0.383232 0.36872599 0.399939 0.390948 0.42814001 0.37340599 0.70410502 0.53540403
		 0.726107 0.560637 0.67685598 0.55800301 0.69840503 0.58384103 0.72039998 0.60880703
		 0.74758399 0.58511102 0.65669 0.47911999 0.68105102 0.50865197 0.62974298 0.50140798
		 0.654145 0.53105402 0.60677803 0.41337901 0.63076198 0.44554901 0.578152 0.434881
		 0.60312003 0.46747899 0.57318997 0.36649701 0.58825201 0.38805199 0.54284698 0.38786101
		 0.55871701 0.40922701 0.54663998 0.32502201 0.55960101 0.34564599 0.51463401 0.34814799
		 0.528575 0.368128 0.52017301 0.28315401 0.53346097 0.30414999 0.48560199 0.301056
		 0.499755 0.32604501 0.64718097 0.58145303 0.66834301 0.60772598 0.68910801 0.633771
		 0.60118699 0.525639 0.62522697 0.55472302 0.547656 0.459999 0.57376802 0.492304 0.51086801
		 0.41231501 0.52753597 0.43400699 0.47943699 0.37316701 0.49510899 0.39291099 0.44625601
		 0.326249 0.46303001 0.35045099 0.89625299 0.28864601 0.88810003 0.3098 0.909778 0.32334399
		 0.91693401 0.30073601 0.87754202 0.333799 0.900576 0.34795699 0.92643702 0.35868701
		 0.93202603 0.33575699 0.93761498 0.31282699 0.74779898 0.184322 0.739353 0.164564
		 0.75624597 0.204081 0.77236301 0.214718 0.759022 0.18646 0.74802703 0.162101 0.85953999
		 0.25421801 0.84531301 0.27557299 0.867562 0.29398999 0.87789601 0.27143201 0.83265501
		 0.29964301 0.85550898 0.31762099 0.186582 0.87343401 0.20747501 0.86401999 0.200734
		 0.85342401 0.182005 0.86368799 0.23021699 0.85385501 0.22159 0.84231001 0.21127599
		 0.83511603 0.193756 0.84406698 0.1772 0.85507298 0.165519 0.86359102 0.167532 0.87225199
		 0.156275 0.87086701 0.156101 0.87774199 0.155664 0.886832 0.169385 0.88134199 0.24890999
		 0.84741199 0.2387 0.83495402 0.26690099 0.84166902 0.254951 0.82835501 0.24381299
		 0.819498 0.229482 0.82552499 0.39497501 0.899073 0.39442199 0.87919402 0.37563801
		 0.88013798 0.37753499 0.89972901 0.393868 0.85931498 0.36951801 0.85690397 0.35081899
		 0.85879701 0.357472 0.881984 0.36198401 0.90323299 0.276389 0.86085999 0.293861 0.85648203
		 0.283485 0.83732402 0.286699 0.88525099 0.30248001 0.87533802 0.318571 0.87112802
		 0.31072801 0.85168099 0.30179 0.83204299 0.315433 0.76419598 0.31672201 0.73756301
		 0.28603199 0.72488999;
	setAttr ".uvst[0].uvsp[750:999]" 0.283068 0.74809402 0.31871101 0.709566 0.28808001
		 0.69669002 0.260277 0.68464601 0.25825799 0.71307999 0.25651899 0.73676902 0.356316
		 0.79908502 0.37029499 0.78946602 0.351071 0.78122503 0.33568901 0.78462398 0.38493401
		 0.78393698 0.34986499 0.76837599 0.373409 0.82809103 0.38613299 0.82104701 0.40197101
		 0.85262799 0.410074 0.84593999 0.39992401 0.81884497 0.432697 0.943986 0.45142299
		 0.92265701 0.435518 0.91086602 0.42024499 0.92911899 0.470148 0.90132803 0.448686
		 0.88642597 0.42646199 0.87781698 0.41961199 0.89907402 0.412763 0.92033201 0.334185
		 0.97255403 0.35852101 0.971102 0.35534701 0.95296597 0.333417 0.95550501 0.38285699
		 0.96964902 0.37747601 0.94877797 0.371696 0.93120402 0.35217199 0.93483001 0.33264801
		 0.938456 0.135538 0.89035797 0.14519601 0.888987 0.146501 0.87878102 0.13781799 0.87759399
		 0.148186 0.86784798 0.14009701 0.864829 0.152576 0.84533697 0.146953 0.85385299 0.15623599
		 0.85872197 0.16624001 0.84912902 0.14133 0.86237001 0.148803 0.86661899 0.181385
		 0.836142 0.19679099 0.822537 0.185454 0.81109601 0.16901501 0.82821602 0.227909 0.809259
		 0.21532799 0.80160898 0.20757499 0.81109297 0.219785 0.81820798 0.201876 0.79139602
		 0.193665 0.80124599 0.23418801 0.67664599 0.232752 0.70582998 0.20776699 0.67360097
		 0.20838 0.70086098 0.208993 0.72812098 0.232407 0.72992897 0.50039899 0.83450502
		 0.51074398 0.80551302 0.48528099 0.79317898 0.47544101 0.823125 0.52108902 0.77652001
		 0.493956 0.76732099 0.46382201 0.75453198 0.45708299 0.78079998 0.44972199 0.81021702
		 0.423417 0.76832998 0.42009199 0.796462 0.42819899 0.741907 0.390286 0.73017299 0.38710701
		 0.75683999 0.32010099 0.67687899 0.28973699 0.66417599 0.32112899 0.64180601 0.29216599
		 0.62989402 0.266516 0.61809999 0.26265299 0.65208799 0.236939 0.64267999 0.241751
		 0.60737097 0.216048 0.595622 0.211908 0.63461101 0.232926 0.74864298 0.25498 0.75509602
		 0.211686 0.74422401 0.214379 0.76032799 0.23280901 0.76345402 0.25251299 0.76976597
		 0.29216099 0.79089499 0.30205899 0.778929 0.27866101 0.76561999 0.272414 0.77913702
		 0.33092901 0.81978399 0.34336501 0.80928898 0.32326099 0.79373401 0.311405 0.80436498
		 0.84493101 0.17171299 0.850887 0.178248 0.85439903 0.17450801 0.85058999 0.166226
		 0.85684299 0.184783 0.86232197 0.18034001 0.86660397 0.175534 0.86177301 0.16996101
		 0.85893297 0.16093101 0.40777701 0.95681798 0.40000299 0.941293 0.39222899 0.92576802
		 0.84269297 0.091487996 0.85949898 0.096042998 0.86806798 0.083107002 0.84853601 0.079737999
		 0.87549001 0.10241 0.88733202 0.086902998 0.89762902 0.072525002 0.876001 0.070712
		 0.85437298 0.068899997 0.89640898 0.091724999 0.909266 0.076361001 0.88274997 0.107265
		 0.89001 0.112119 0.90548599 0.096547 0.92090303 0.080196999 0.92540097 0.166327 0.92799997
		 0.142639 0.911919 0.149738 0.909778 0.171027 0.93059897 0.118951 0.91234702 0.129546
		 0.89491701 0.139699 0.89511698 0.156804 0.89405799 0.174697 0.90646702 0.18969899
		 0.92264301 0.1892 0.89053601 0.188886 0.886087 0.203907 0.902987 0.20798901 0.91988599
		 0.212072 0.81559098 0.139852 0.82983601 0.139457 0.83131403 0.129701 0.825185 0.126155
		 0.844082 0.139063 0.83982998 0.122254 0.83179802 0.115209 0.85016298 0.15376601 0.84450698
		 0.155388 0.85913002 0.14916199 0.86174399 0.138946 0.85512602 0.13883901 0.81956899
		 0.12488 0.81221998 0.13222601 0.82125503 0.115907 0.80884802 0.124601 0.75642198
		 0.161305 0.75222498 0.16170301 0.76789802 0.1847 0.77560103 0.18099201 0.77969301
		 0.206477 0.79478002 0.20067801 0.97039902 0.75865698 0.97360301 0.72388399 0.94312698
		 0.74424201 0.94119 0.770868 0.97680598 0.68911099 0.93773901 0.716187 0.96198398
		 0.81624103 0.96619201 0.787449 0.93656498 0.79546899 0.92897999 0.829032 0.91816097
		 0.88254499 0.90572703 0.946033 0.93480498 0.97011799 0.948394 0.89318001 0.810166
		 0.591479 0.78881902 0.595034 0.78271103 0.62699801 0.80552101 0.62147498 0.76747298
		 0.59859002 0.75984001 0.634709 0.86815101 0.57981199 0.83915901 0.58564502 0.82820803
		 0.62032801 0.85087699 0.62288201 0.948874 0.65309501 0.92039299 0.68730003 0.920941
		 0.61707997 0.89711899 0.66074502 0.78373098 0.22581001 0.79526597 0.235681 0.77820599
		 0.23837601 0.78404897 0.262034 0.225702 0.56283897 0.24937101 0.57415998 0.272995
		 0.58537799 0.322299 0.57261699 0.30186599 0.56327802 0.29653099 0.59639102 0.32203001
		 0.60665202 0.34500399 0.57731903 0.35153899 0.61561197 0.35583699 0.652888 0.433965
		 0.71524 0.471367 0.731475 0.394317 0.70017099 0.53245598 0.76221198 0.50328302 0.74701703
		 0.28609601 0.95766902 0.31014001 0.96511102 0.31062901 0.94955999 0.28696099 0.941845
		 0.31047899 0.93327802 0.28774899 0.92625999 0.269485 0.82327199 0.28315899 0.81894797
		 0.266633 0.80774301 0.25556099 0.81348002 0.210357 0.77927798 0.20611601 0.78533697
		 0.22163901 0.793881 0.22723 0.78703201 0.23534501 0.801458 0.24243701 0.794231 0.137522
		 0.90881997 0.144484 0.905765 0.14465 0.89773899 0.13653 0.899589 0.151445 0.90271002
		 0.155278 0.89520198 0.238033 0.90596002 0.26331699 0.91673601 0.26466301 0.90072501
		 0.241941 0.89413601 0.287121 0.907722 0.26348701 0.88309699 0.243287 0.88151097 0.238414
		 0.86750299 0.213742 0.87709701 0.21974 0.88905603 0.19069999 0.88544297 0.19588 0.89948499
		 0.17092 0.89129001 0.17117099 0.90136302 0.25770399 0.864393 0.232952 0.92906201;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.25952399 0.94336599 0.26153001 0.93058997
		 0.235219 0.91756499 0.19057301 0.912485 0.21271101 0.91484898 0.217255 0.90446103
		 0.187261 0.92364198 0.210106 0.92635202 0.14814401 0.90951699 0.169173 0.91082501
		 0.144842 0.91632301 0.166052 0.91998202 0.909688 0.112308 0.92575097 0.099574 0.89291501
		 0.125246 0.418697 0.828255 0.44031 0.842722 0.418268 0.86187899 0.81327301 0.058951002
		 0.80813199 0.075139999 0.82846802 0.077225 0.83382303 0.063924998 0.80299002 0.091329999
		 0.82425702 0.090558998 0.38333601 0.91513801 0.37654901 0.91249597 0.365062 0.91809899
		 0.30904999 0.91553599 0.330715 0.92375898 0.328125 0.90801901 0.30855599 0.89953703
		 0.22461399 0.029883999 0.22672901 0.051809002 0.26634401 0.059602998 0.26491201 0.03387
		 0.22742601 0.073379003 0.26736999 0.08664 0.312745 0.096317001 0.31114399 0.065066002
		 0.30521101 0.037857 0.296884 0.278864 0.30212599 0.24789301 0.243433 0.22610401 0.23665801
		 0.246664 0.30608699 0.222781 0.250662 0.20339601 0.202571 0.17509501 0.192641 0.19420899
		 0.176432 0.21446501 0.31438899 0.163866 0.314417 0.130151 0.26758301 0.116286 0.26529101
		 0.146788 0.226284 0.097539 0.221986 0.123489 0.21321701 0.15043101 0.25879899 0.17639101
		 0.31089401 0.194757 0.36675999 0.096014 0.36823201 0.13160001 0.36860299 0.16704901
		 0.36298001 0.030844999 0.36495399 0.062829003 0.36518899 0.229711 0.36429799 0.25652799
		 0.36392099 0.28180599 0.36710599 0.199819 0.189704 0.062932 0.189069 0.081441 0.18515401
		 0.101641 0.186307 0.032494999 0.188472 0.047054999 0.165474 0.141416 0.15417001 0.15525299
		 0.14275099 0.166594 0.17654499 0.122589 0.225676 0.896299 0.357833 0.833211 0.34131899
		 0.83811802 0.485273 0.867917 0.46261799 0.855694 0.31636 0.82591301 0.32578 0.84452498
		 0.33418 0.86410803 0.29773501 0.812325 0.279971 0.80002701 0.34902501 0.92148298
		 0.34533 0.90584803 0.34053901 0.88563597 0.324224 0.89019102 0.31121001 0.88848299
		 0.212368 0.76980299 0.230554 0.77584702 0.247989 0.78248602 0.26392499 0.79031301
		 0.25431499 0.80031902 0.236762 0.81367898 0.245417 0.80709898 0.228595 0.81985903
		 0.35097799 0.74739802 0.35328501 0.72005999 0.87810802 0.17612 0.875094 0.185449
		 0.87146503 0.194345 0.87541097 0.151124 0.87687403 0.163802 0.87441802 0.12613501
		 0.874722 0.138593 0.86055899 0.120173 0.86748898 0.123154 0.84965497 0.110063 0.83737397
		 0.103483 0.80591899 0.107965 0.822335 0.10396 0.35566199 0.68813002 0.53713697 0.66341197
		 0.55906802 0.68868101 0.58161098 0.71387899 0.47154099 0.57810497 0.446749 0.543697
		 0.49515799 0.610282 0.51642901 0.63799798 0.054896999 0.25671199 0.047226999 0.28926501
		 0.055796999 0.30582201 0.068608001 0.29928899 0.121506 0.24405099 0.088202 0.25038099
		 0.090801999 0.295688 0.117509 0.29398701 0.143858 0.29315501 0.15133099 0.24784601
		 0.137008 0.33602101 0.131405 0.37400001 0.12662201 0.40923801 0.117122 0.480802 0.122233
		 0.44387999 0.103059 0.56339097 0.110176 0.522879 0.097437002 0.59561902 0.169291
		 0.601592 0.18177301 0.60157102 0.694906 0.92448598 0.69949198 0.93752998 0.65027398
		 0.85564703 0.679057 0.83456701 0.69996297 0.82070601 0.72290498 0.80531001 0.757797
		 0.77962703 0.79528397 0.74802202 0.82600898 0.71486098 0.85166699 0.67909801 0.89454597
		 0.59844601 0.87395 0.63968402 0.76389402 0.283528 0.790452 0.30422699 0.807163 0.28008601
		 0.81612301 0.324368 0.84001899 0.34339401 0.86333799 0.36092499 0.88727999 0.37658101
		 0.911533 0.391298 0.81850398 0.25420201 0.82716 0.227448 0.22583801 0.30440301 0.24052601
		 0.28451601 0.13700999 0.060800999 0.14370599 0.057822 0.14392599 0.067984 0.13478699
		 0.067925997 0.159898 0.057133999 0.160197 0.070690997 0.157432 0.085414 0.141459
		 0.078979 0.131826 0.07705 0.14120799 0.049961999 0.157867 0.046165001 0.132891 0.056821998
		 0.12714501 0.051399 0.13757201 0.043251999 0.147999 0.035106 0.135897 0.089337997
		 0.127453 0.085758001 0.15027399 0.099884003 0.140295 0.112338 0.127959 0.097840004
		 0.123943 0.09251 0.118364 0.103266 0.116771 0.093686998 0.12906399 0.121013 0.10907
		 0.118723 0.107942 0.107152 0.106813 0.095582001 0.12731101 0.065122999 0.120666 0.060947999
		 0.123123 0.074341998 0.114187 0.070496 0.68889099 0.046379 0.67591202 0.06498 0.64674401
		 0.05869 0.65856302 0.038805 0.66293299 0.083580002 0.63454503 0.078092001 0.60372299
		 0.074005999 0.613603 0.052416999 0.62823403 0.031230999 0.64638698 0.099203996 0.62158602
		 0.096528001 0.62984103 0.114828 0.60928202 0.115136 0.58433402 0.119393 0.59334803
		 0.095735997 0.58064902 0.176211 0.57853597 0.14676701 0.59904701 0.135057 0.60524499
		 0.145519 0.118983 0.083954997 0.1105 0.083039001 0.52310699 0.072353996 0.51755798
		 0.105267 0.47261399 0.115208 0.475274 0.079924002 0.51217401 0.140586 0.469652 0.152024
		 0.42225 0.16141 0.42298099 0.12512299 0.42305601 0.089345001 0.52758801 0.013421
		 0.52569997 0.043609001 0.47536299 0.048347998 0.474168 0.018626001 0.42171299 0.056164999
		 0.420748 0.023832001 0.511343 0.209346 0.51602399 0.235181 0.47407001 0.247678 0.47000399
		 0.22099 0.52803397 0.25787699 0.47949499 0.27131301 0.43095699 0.284749 0.42369699
		 0.255344 0.42186299 0.227883 0.42162901 0.196117 0.46865699 0.18819501 0.51008201
		 0.17654601 0.57251698 0.046177998 0.57791102 0.022326 0.56625003 0.071238004 0.580405
		 0.202235 0.55016702 0.219503;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.54760897 0.193262 0.58016002 0.22826 0.554097
		 0.24306799 0.54779398 0.161667 0.55118299 0.128792 0.55823702 0.098713003 0.28477901
		 0.448084 0.32216799 0.41704601 0.33719599 0.43193999 0.303666 0.46204501 0.35955599
		 0.38600901 0.37182599 0.40861401 0.39061099 0.425558 0.35222399 0.44683301 0.31383801
		 0.468108 0.51373899 0.68051797 0.53844899 0.70399702 0.52411997 0.71725702 0.49529001
		 0.69574201 0.560197 0.72820199 0.55201 0.73805302 0.543823 0.747904 0.51331902 0.73081398
		 0.48132101 0.71181703 0.46649101 0.62914699 0.48971799 0.65625799 0.464578 0.67278701
		 0.436169 0.64566302 0.44474801 0.69123203 0.40080699 0.663589 0.41424501 0.61164302
		 0.44416401 0.59711897 0.38297299 0.618774 0.36770999 0.582021 0.39556301 0.57417399
		 0.42341599 0.56632698 0.18115699 0.25164101 0.20227499 0.26113999 0.18997701 0.300082
		 0.16847301 0.29468799 0.22339199 0.270639 0.20891701 0.30482501 0.199586 0.342747
		 0.178321 0.33854499 0.158664 0.33517399 0.226237 0.321578 0.224988 0.33934101 0.210454
		 0.362569 0.25766101 0.29839301 0.239253 0.336923 0.220844 0.375453 0.281432 0.55393898
		 0.261253 0.53955001 0.27885199 0.50004703 0.29763499 0.511024 0.235357 0.530056 0.260068
		 0.48907 0.79459101 0.45348799 0.81760103 0.47492999 0.78600103 0.50675899 0.76334399
		 0.48370299 0.84198499 0.49596 0.80837601 0.52868801 0.77476698 0.56141597 0.75434101
		 0.53573602 0.73193198 0.511392 0.745094 0.404277 0.77118897 0.42957199 0.74012202
		 0.45839599 0.71477097 0.431151 0.70876902 0.485203 0.68428099 0.45647001 0.65789598
		 0.42449099 0.685727 0.40228501 0.63319099 0.39408001 0.65704697 0.375572 0.67798698
		 0.35472 0.71400398 0.378699 0.61374301 0.370049 0.63278902 0.354785 0.598019 0.34881601
		 0.613455 0.335408 0.61924201 0.327061 0.648615 0.34088999 0.60011899 0.27601501 0.60968101
		 0.30153799 0.59954399 0.31292701 0.58930802 0.29053 0.58449 0.326801 0.57251298 0.305309
		 0.59255499 0.242596 0.60988498 0.25244701 0.58099699 0.27140799 0.57365 0.25392401
		 0.56144297 0.28564501 0.55474502 0.26525101 0.84497201 0.39051399 0.86920297 0.40811801
		 0.84565598 0.44147599 0.82192802 0.42189699 0.89662999 0.423908 0.86930799 0.459934
		 0.79590398 0.35004199 0.82092297 0.370987 0.798051 0.40007401 0.772183 0.376959 0.74373901
		 0.305022 0.76876199 0.32817999 0.74248099 0.35350099 0.71086299 0.329871 0.66587001
		 0.21977 0.67012399 0.23472901 0.66161698 0.20481101 0.73067802 0.167026 0.73040402
		 0.18405201 0.74012899 0.193444 0.60995001 0.87117898 0.59043998 0.88502401 0.58563799
		 0.87352401 0.60431099 0.86037499 0.57528901 0.89470601 0.57408202 0.88100499 0.56808603
		 0.869008 0.58020002 0.86213398 0.59846002 0.84970999 0.571257 0.85292798 0.59065503
		 0.840617 0.55835998 0.85896599 0.54424 0.851475 0.56056201 0.84481299 0.57688498
		 0.83815098 0.645648 0.94043398 0.65352303 0.932845 0.65667802 0.94696701 0.649643
		 0.95590299 0.66633201 0.92344803 0.669765 0.93595701 0.66376603 0.94885999 0.65776801
		 0.96262699 0.65177101 0.976394 0.59655601 0.94917202 0.60616398 0.957259 0.60052299
		 0.964149 0.58994198 0.95491999 0.61635 0.96377599 0.61261302 0.97207201 0.60887599
		 0.98036802 0.59534699 0.97113198 0.58181798 0.96189499 0.58518499 0.92772597 0.58997101
		 0.93848598 0.58238 0.94308102 0.57632798 0.92993802 0.57464498 0.94702202 0.56747103
		 0.93215001 0.54734498 0.86408502 0.53803098 0.85183501 0.55636698 0.87629199 0.54524899
		 0.88366699 0.53772801 0.86954403 0.53182101 0.85219598 0.69869697 0.87394702 0.67268199
		 0.88913602 0.66586101 0.87706 0.69189399 0.86075199 0.65019 0.902888 0.64292699 0.89170599
		 0.63462299 0.88188201 0.65895402 0.865484 0.68557203 0.847552 0.71476799 0.90009099
		 0.68916202 0.91196102 0.68110198 0.90047401 0.70665699 0.88691598 0.65889901 0.91294599
		 0.66504598 0.79576999 0.62861598 0.82577902 0.62116802 0.816679 0.650998 0.79222703
		 0.61316001 0.80811799 0.64943498 0.77808601 0.67245299 0.821917 0.64104098 0.84652698
		 0.634942 0.83595997 0.66592401 0.81140298 0.75071901 0.84675199 0.722063 0.86082703
		 0.71456301 0.847076 0.74278802 0.83256102 0.70711601 0.83366501 0.736413 0.81596702
		 0.75960398 0.87860298 0.73590702 0.88954502 0.72937799 0.87480998 0.756203 0.86196297
		 0.74105299 0.90555698 0.72202599 0.913903 0.76129001 0.89708 0.75579602 0.91821301
		 0.745507 0.922207 0.73521698 0.92619997 0.696585 0.77392799 0.67767102 0.787893 0.66834402
		 0.77837503 0.68531799 0.76485097 0.65834302 0.76906598 0.66725099 0.76004601 0.71416402
		 0.79397398 0.69292903 0.80819899 0.68564999 0.79782802 0.70585197 0.78371602 0.83786702
		 0.81065297 0.792602 0.82869703 0.78548503 0.81373799 0.83258998 0.79448599 0.78086299
		 0.800309 0.82459903 0.78075999 0.82985902 0.85225201 0.79288501 0.86554497 0.79407102
		 0.846187 0.835298 0.83007401 0.79203999 0.88610601 0.82653099 0.876692 0.82693702
		 0.89632398 0.79136699 0.907269 0.75937301 0.71685302 0.72742701 0.74843699 0.71403402
		 0.74138498 0.74347103 0.71331 0.69936001 0.73536301 0.73146898 0.71068102 0.783544
		 0.73478597 0.74785101 0.76784301 0.73825997 0.75754601 0.772205 0.72460598 0.80711198
		 0.75996202 0.819031 0.76866299 0.78688002 0.787404 0.77006 0.78754199 0.91057998
		 0.78415799 0.87666601 0.79661298 0.874035 0.77868098 0.91061598 0.76302999 0.86608899
		 0.761976 0.90418601 0.74132699 0.89756501 0.832304 0.86463898 0.840608 0.87220001
		 0.81621701 0.90566099 0.80466598 0.857988 0.87289703;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.88800198 0.874816 0.87664902 0.921947 0.85179299
		 0.90913498 0.79626203 0.65254098 0.78159899 0.68461102 0.76261097 0.68595499 0.77463198
		 0.65771902 0.74183798 0.69075501 0.75220603 0.670829 0.83233398 0.66257203 0.81079698
		 0.69978499 0.79701501 0.69018 0.81493503 0.655132 0.870947 0.69784099 0.88970798
		 0.719091 0.85461402 0.74605101 0.84084201 0.73048699 0.57294899 0.90049398 0.56480402
		 0.88841403 0.57060802 0.90628201 0.556162 0.895248 0.619937 0.89116901 0.60576898
		 0.88725799 0.622787 0.87589502 0.61099398 0.89780301 0.59583497 0.89433998 0.52902597
		 0.87660003 0.52594602 0.86036801 0.53493798 0.89081597 0.52148998 0.90036899 0.52078098
		 0.88445503 0.52007103 0.868541 0.54651397 0.90100098 0.56092203 0.90917099 0.55123597
		 0.91206002 0.53636301 0.906214 0.59756398 0.91507 0.59096003 0.92287803 0.5808 0.917705
		 0.58521301 0.909513 0.57637799 0.92610598 0.56757098 0.92448699 0.56871599 0.91479701
		 0.56986099 0.90510798 0.60388899 0.906241 0.58960402 0.90174103 0.57257497 0.89990699
		 0.62185001 0.95806098 0.62703001 0.96856099 0.61837101 0.97256398 0.62962103 0.95204097
		 0.63526499 0.96470702 0.64009202 0.979765 0.63024199 0.98055899 0.62039101 0.98135197
		 0.63761699 0.94649899 0.62906098 0.936396 0.63799798 0.92896998 0.620336 0.94371301
		 0.61087501 0.93599999 0.61980999 0.92739999 0.62901902 0.91878998 0.612688 0.916071
		 0.62103701 0.90717697 0.60470098 0.92517501 0.64623803 0.921799 0.63739097 0.91169602
		 0.62955099 0.900401 0.61273599 0.95055801 0.603329 0.94306099 0.59727001 0.93258202
		 0.642654 0.96115202 0.64593101 0.97807902 0.079300001 0.62053901 0.074539997 0.64292997
		 0.062350001 0.63888001 0.06701 0.61800599 0.069921002 0.66316801 0.058888 0.65808302
		 0.045733001 0.65551102 0.049943 0.63618702 0.054761 0.61596203 0.037103999 0.63621002
		 0.042596001 0.61489499 0.031909999 0.65604901 0.017000001 0.65959799 0.024048001
		 0.63758999 0.031097 0.61558199 0.18365701 0.62388998 0.192232 0.63932598 0.17596599
		 0.63755298 0.171657 0.62243599 0.20080701 0.65476298 0.178646 0.64970303 0.16163699
		 0.64696598 0.160349 0.63659698 0.158228 0.622958 0.166181 0.70432401 0.15044001 0.70886898
		 0.14845601 0.70174402 0.16221599 0.69755602 0.134698 0.713413 0.134694 0.703861 0.13463099
		 0.69579798 0.146851 0.69371098 0.158252 0.69078702 0.118881 0.708911 0.12093 0.70183402
		 0.103064 0.704409 0.107165 0.69773501 0.111266 0.69106197 0.122409 0.69381201 0.028137
		 0.67716199 0.012962 0.67578399 0.043161001 0.67832601 0.041673999 0.69985402 0.026081
		 0.69644701 0.0089229997 0.69196898 0.138336 0.569381 0.13405401 0.601475 0.122358
		 0.59976298 0.12720001 0.56748903 0.132549 0.62432998 0.119727 0.62277597 0.106634
		 0.62093401 0.110216 0.597543 0.115495 0.56542301 0.16009501 0.57234299 0.15710101
		 0.60167301 0.145495 0.60187203 0.149066 0.57089102 0.14528701 0.62399 0.061822999
		 0.55899 0.059156001 0.590442 0.047261 0.58935702 0.049800999 0.55852997 0.035645001
		 0.58851898 0.040192999 0.56145602 0.089525998 0.55700898 0.084339999 0.59384298 0.071608998
		 0.59201902 0.074579 0.56003499 0.15690701 0.48567501 0.146861 0.52815902 0.13488799
		 0.52595901 0.14349701 0.482999 0.122617 0.524252 0.130134 0.48146999 0.183861 0.49542099
		 0.17033599 0.53457201 0.15841199 0.53101301 0.170056 0.48978201 0.214332 0.50789499
		 0.19711 0.54357302 0.183431 0.53888398 0.19923399 0.502689 0.179888 0.579252 0.17212901
		 0.57406098 0.058913 0.481684 0.061455999 0.52096897 0.048916999 0.52134699 0.045542002
		 0.48284301 0.036559001 0.52201301 0.032924 0.48256999 0.084339 0.47997099 0.085690998
		 0.51792401 0.074354 0.52116799 0.072082996 0.48111501 0.094970003 0.47709101 0.093546003
		 0.50721902 0.105166 0.47975501 0.099754997 0.51836002 0.174532 0.41655701 0.165749
		 0.44979301 0.151105 0.446435 0.158869 0.412155 0.13659699 0.44451499 0.142979 0.409713
		 0.208277 0.43209499 0.196703 0.461954 0.180521 0.45474201 0.190209 0.42290899 0.257256
		 0.459557 0.23579399 0.48372599 0.21557599 0.472105 0.231113 0.44499299 0.050294001
		 0.410932 0.055341002 0.446069 0.040608 0.44804999 0.034837998 0.413948 0.025876001
		 0.45003101 0.018827001 0.41749099 0.079722002 0.41070899 0.082280003 0.44505301 0.068916999
		 0.44557399 0.065076001 0.41036999 0.094775997 0.41039199 0.095215999 0.44448301 0.110366
		 0.40978101 0.108332 0.44403499 0.18440101 0.38200599 0.167946 0.37604699 0.15025
		 0.373391 0.217997 0.40376699 0.199524 0.391305 0.292799 0.41275299 0.27502799 0.43615499
		 0.244504 0.41921499 0.25682199 0.39410299 0.028951 0.37751499 0.045062002 0.37085
		 0.012642 0.38775301 0.0064579998 0.35801601 0.023007 0.339917 0.039556999 0.32181799
		 0.060775999 0.37133199 0.076874003 0.37448099 0.057266999 0.33447701 0.073311001
		 0.337098 0.114663 0.33808699 0.112379 0.37557501 0.094139002 0.375815 0.092937 0.33837301
		 0.072451003 0.67957902 0.057882 0.67905998 0.074980997 0.69598901 0.057479002 0.69837803
		 0.089763001 0.63860297 0.089038998 0.65248102 0.093082003 0.620408 0.104602 0.63591999
		 0.104557 0.64701903 0.026035 0.71079898 0.011565 0.702667 0.040716998 0.71531701
		 0.039781999 0.73200399 0.026994999 0.72268403 0.014207 0.71336401 0.055824 0.71260703
		 0.071142003 0.70628399 0.067304 0.71657801 0.053543001 0.72429103 0.098304003 0.69923103
		 0.091711 0.69099402 0.101379 0.68514401 0.104785 0.69514698 0.085118003 0.68275601
		 0.097447999 0.674936 0.109892 0.670569 0.111555 0.681907;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.077519998 0.67296201 0.092468001 0.66432101
		 0.10694 0.65875399 0.18514299 0.67933297 0.178831 0.68812799 0.16819499 0.683671
		 0.171582 0.67307299 0.172518 0.69692397 0.16538499 0.693856 0.15732899 0.68148899
		 0.15818299 0.67021602 0.160267 0.65843999 0.14639001 0.659621 0.14672799 0.64729899
		 0.14586499 0.67241699 0.13402499 0.67475998 0.13346501 0.66123903 0.132864 0.64810503
		 0.12046 0.659338 0.118986 0.64678597 0.122059 0.67232698 0.14602999 0.63727701 0.132355
		 0.63783699 0.118672 0.63652498 0.14600299 0.68385798 0.13441101 0.686189 0.122747
		 0.68389702 0.192975 0.66704798 0.176125 0.66164702 0.61735499 0.60436398 0.63812798
		 0.63094401 0.60996699 0.65214503 0.589652 0.62534702 0.65781701 0.65873498 0.63042098
		 0.67914498 0.60302502 0.69955498 0.58367503 0.67137599 0.56320202 0.64487201 0.573062
		 0.54946703 0.59636098 0.57793099 0.56961298 0.59895003 0.54741102 0.57054198 0.54347301
		 0.61867398 0.52214098 0.59032702 0.51856101 0.48462799 0.54537302 0.516792 0.520603
		 0.53771102 0.49413601 0.50466299 0.49685901 0.55737698 0.47008201 0.52106702 0.480335
		 0.43495801 0.49789 0.45769799 0.47295499 0.47560599 0.45433 0.45088801 0.45037699
		 0.490623 0.43067101 0.46017799 0.44547999 0.39586699 0.46287099 0.41536501 0.435532
		 0.430857 0.417191 0.41203699 0.41064101 0.44286799 0.40690899 0.35144299 0.42814001
		 0.37340599 0.399939 0.390948 0.383232 0.36872599 0.726107 0.560637 0.70410502 0.53540403
		 0.74758399 0.58511102 0.72039998 0.60880703 0.69840503 0.58384103 0.67685598 0.55800301
		 0.68105102 0.50865197 0.65669 0.47911999 0.654145 0.53105402 0.62974298 0.50140798
		 0.63076198 0.44554901 0.60677803 0.41337901 0.60312003 0.46747899 0.578152 0.434881
		 0.58825201 0.38805199 0.57318997 0.36649701 0.55871701 0.40922701 0.54284698 0.38786101
		 0.55960101 0.34564599 0.54663998 0.32502201 0.528575 0.368128 0.51463401 0.34814799
		 0.53346097 0.30414999 0.52017301 0.28315401 0.499755 0.32604501 0.48560199 0.301056
		 0.66834301 0.60772598 0.64718097 0.58145303 0.68910801 0.633771 0.62522697 0.55472302
		 0.60118699 0.525639 0.57376802 0.492304 0.547656 0.459999 0.52753597 0.43400699 0.51086801
		 0.41231501 0.49510899 0.39291099 0.47943699 0.37316701 0.46303001 0.35045099 0.44625601
		 0.326249 0.89625299 0.28864601 0.91693401 0.30073601 0.909778 0.32334399 0.88810003
		 0.3098 0.93761498 0.31282699 0.93202603 0.33575699 0.92643702 0.35868701 0.900576
		 0.34795699 0.87754202 0.333799 0.739353 0.164564 0.74779898 0.184322 0.74802703 0.162101
		 0.759022 0.18646 0.77236301 0.214718 0.75624597 0.204081 0.85953999 0.25421801 0.87789601
		 0.27143201 0.867562 0.293991 0.84531301 0.27557299 0.85550898 0.31762099 0.83265501
		 0.29964301 0.186582 0.87343401 0.182005 0.86368799 0.200734 0.85342401 0.20747501
		 0.86401999 0.1772 0.85507298 0.193756 0.84406698 0.21127599 0.83511603 0.22159 0.84231001
		 0.23021699 0.85385501 0.167532 0.872253 0.165519 0.86359102 0.169385 0.88134199 0.155664
		 0.886832 0.156101 0.87774199 0.156275 0.87086701 0.2387 0.83495402 0.24890999 0.84741199
		 0.229482 0.82552499 0.24381299 0.819498 0.254951 0.82835501 0.26690099 0.84166902
		 0.39497501 0.899073 0.37753499 0.89972901 0.37563801 0.88013703 0.39442199 0.87919402
		 0.36198401 0.90323299 0.357472 0.881984 0.35081899 0.85879701 0.36951801 0.85690397
		 0.393868 0.85931498 0.283485 0.83732402 0.293861 0.85648203 0.276389 0.86085999 0.30179
		 0.83204299 0.31072801 0.85168099 0.318571 0.87112802 0.30248001 0.87533802 0.286699
		 0.88525099 0.315433 0.76419598 0.283068 0.74809402 0.28603199 0.72488999 0.31672201
		 0.73756301 0.25651899 0.73676902 0.25825799 0.71307999 0.260277 0.68464601 0.28808001
		 0.69669002 0.31871101 0.709566 0.356316 0.79908502 0.33568901 0.78462398 0.351071
		 0.78122503 0.37029499 0.78946602 0.34986499 0.76837599 0.38493401 0.78393698 0.38613299
		 0.82104701 0.373409 0.82809103 0.39992401 0.81884497 0.410074 0.84593999 0.40197101
		 0.85262799 0.432697 0.943986 0.42024499 0.92911899 0.43551701 0.91086602 0.45142299
		 0.92265701 0.412763 0.92033201 0.41961199 0.89907402 0.42646199 0.87781698 0.448686
		 0.88642597 0.470148 0.90132803 0.334185 0.97255403 0.333417 0.95550501 0.35534701
		 0.95296597 0.35852101 0.971102 0.33264801 0.938456 0.35217199 0.93483001 0.371696
		 0.93120402 0.37747601 0.94877797 0.38285699 0.96964902 0.135538 0.89035797 0.13781799
		 0.87759399 0.146502 0.87878102 0.14519601 0.888987 0.14009701 0.864829 0.148186 0.86784798
		 0.152576 0.84533697 0.16624001 0.84912902 0.15623599 0.85872298 0.146953 0.85385299
		 0.148803 0.86661899 0.14133 0.86237001 0.181385 0.836142 0.16901501 0.82821602 0.185454
		 0.81109601 0.19679099 0.822537 0.227909 0.809259 0.219785 0.81820798 0.20757499 0.81109297
		 0.21532799 0.80160898 0.193665 0.80124599 0.201876 0.79139602 0.232752 0.70582998
		 0.23418801 0.67664599 0.232407 0.72992897 0.208993 0.72812098 0.20838 0.70086098
		 0.20776699 0.67360097 0.50039899 0.83450502 0.47544101 0.823125 0.48528099 0.79317898
		 0.51074398 0.80551302 0.44972199 0.81021702 0.45708299 0.78079998 0.46382201 0.75453198
		 0.493956 0.76732099 0.52108902 0.77652001 0.42009199 0.796462 0.423417 0.76832998
		 0.38710701 0.75683999 0.390286 0.73017299 0.42819899 0.741907 0.289736 0.66417599
		 0.32010099 0.67687899 0.26265299 0.65208799 0.266516 0.61809999 0.29216599 0.62989402
		 0.32112899 0.64180601 0.236939 0.64267999;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.211908 0.63461101 0.216048 0.595622 0.241751
		 0.60737097 0.25498 0.75509602 0.232926 0.74864298 0.25251299 0.76976597 0.23280901
		 0.76345402 0.214379 0.76032799 0.211686 0.74422401 0.29216099 0.79089499 0.272414
		 0.77913702 0.27866101 0.76561999 0.30205899 0.778929 0.33092901 0.81978399 0.311405
		 0.80436498 0.32326099 0.79373401 0.34336501 0.80928898 0.84493101 0.17171299 0.85058999
		 0.166226 0.85439903 0.17450801 0.850887 0.178248 0.85893297 0.16093101 0.86177301
		 0.16996101 0.86660397 0.175534 0.86232197 0.18034001 0.85684299 0.184783 0.40000299
		 0.941293 0.40777701 0.95681798 0.39222899 0.92576802 0.84269297 0.091487996 0.84853601
		 0.079737999 0.86806798 0.083107002 0.85949898 0.096042998 0.85437298 0.068899997
		 0.876001 0.070712 0.89762902 0.072525002 0.88733202 0.086902998 0.87549001 0.10241
		 0.909266 0.076361001 0.89640898 0.091724999 0.92090303 0.080196999 0.90548599 0.096547
		 0.89001 0.112119 0.88274997 0.107265 0.92540097 0.166327 0.909778 0.171027 0.911919
		 0.149738 0.92799997 0.142639 0.89405799 0.174697 0.89511698 0.156804 0.89491701 0.139699
		 0.91234702 0.129546 0.93059897 0.118951 0.92264301 0.1892 0.90646702 0.18969899 0.91988599
		 0.212072 0.902987 0.20798901 0.886087 0.203907 0.89053601 0.188886 0.81559098 0.139852
		 0.825185 0.126155 0.83131403 0.129701 0.82983601 0.139457 0.83179802 0.115209 0.83982998
		 0.122254 0.844082 0.139063 0.84450698 0.155388 0.85016298 0.15376601 0.85512602 0.13883901
		 0.86174399 0.138946 0.85913002 0.14916199 0.81221998 0.13222601 0.81956899 0.12488
		 0.80884802 0.124601 0.82125503 0.115907 0.75642198 0.161305 0.77560103 0.18099201
		 0.76789802 0.1847 0.75222498 0.16170301 0.79478002 0.20067801 0.77969301 0.206477
		 0.97039902 0.75865698 0.94119 0.770868 0.94312698 0.74424201 0.97360301 0.72388399
		 0.93773901 0.716187 0.97680598 0.68911099 0.96198398 0.81624103 0.92897999 0.829032
		 0.93656498 0.79546899 0.96619201 0.787449 0.91816199 0.88254499 0.948394 0.89318001
		 0.93480498 0.97011799 0.90572703 0.946033 0.810166 0.591479 0.80552101 0.62147498
		 0.78271103 0.62699801 0.78881902 0.595034 0.75984001 0.634709 0.76747298 0.59859002
		 0.86815101 0.57981199 0.85087699 0.62288201 0.82820803 0.62032801 0.83915901 0.58564502
		 0.92039299 0.68730098 0.948874 0.65309501 0.89711899 0.66074502 0.920941 0.61707997
		 0.79526597 0.235681 0.78373098 0.22581001 0.78404897 0.262034 0.77820599 0.23837601
		 0.24937101 0.57415998 0.225702 0.56283897 0.272995 0.58537799 0.322299 0.57261699
		 0.32203001 0.60665202 0.29653099 0.59639102 0.30186599 0.56327802 0.35153899 0.61561197
		 0.34500399 0.57731903 0.35583699 0.652888 0.471367 0.731475 0.433965 0.71524 0.394317
		 0.70017099 0.50328302 0.74701703 0.53245598 0.76221198 0.28609601 0.95766902 0.28696099
		 0.941845 0.31062901 0.94955999 0.31014001 0.96511102 0.28774899 0.92625999 0.31047899
		 0.93327802 0.26948401 0.82327199 0.25556099 0.81348002 0.266633 0.80774301 0.28315899
		 0.81894797 0.210357 0.77927798 0.22723 0.78703201 0.22163901 0.793881 0.20611601
		 0.78533697 0.24243701 0.794231 0.23534501 0.801458 0.137522 0.90881997 0.13653 0.899589
		 0.14465 0.89773899 0.144484 0.905765 0.155278 0.89520198 0.151445 0.90271002 0.238033
		 0.90596002 0.241941 0.89413601 0.26466301 0.90072501 0.26331699 0.91673601 0.243287
		 0.88151097 0.26348701 0.88309699 0.287121 0.907722 0.21974 0.88905603 0.213742 0.87709701
		 0.238414 0.86750299 0.19588 0.89948499 0.19069999 0.88544297 0.17117099 0.90136302
		 0.17092 0.89129001 0.25770399 0.864393 0.232952 0.92906201 0.235219 0.91756499 0.26153001
		 0.93058997 0.25952399 0.94336599 0.217255 0.90446103 0.21271101 0.91484898 0.19057301
		 0.912485 0.210106 0.92635202 0.187261 0.92364198 0.169174 0.91082501 0.14814401 0.90951699
		 0.166052 0.91998202 0.144842 0.91632301 0.92575097 0.099574 0.909688 0.112308 0.89291501
		 0.125246 0.44031 0.842722 0.418697 0.828255 0.418268 0.86187899 0.81327301 0.058951002
		 0.83382303 0.063924998 0.82846802 0.077225 0.80813199 0.075139999 0.82425702 0.090558998
		 0.80299002 0.091329999 0.365062 0.91809899 0.37654901 0.91249597 0.38333601 0.91513801
		 0.30904999 0.91553599 0.30855599 0.89953703 0.328125 0.90801901 0.330715 0.92375898
		 0.22461399 0.029883999 0.26491201 0.03387 0.26634401 0.059602998 0.22672901 0.051809002
		 0.30521101 0.037857 0.31114399 0.065066002 0.312745 0.096317001 0.26736999 0.08664
		 0.22742601 0.073379003 0.296884 0.278864 0.23665801 0.246664 0.243433 0.22610401
		 0.30212599 0.24789301 0.176432 0.21446501 0.192641 0.19420899 0.202571 0.17509501
		 0.250662 0.20339601 0.30608699 0.222781 0.31438899 0.163866 0.26529101 0.146788 0.26758301
		 0.116286 0.314417 0.130151 0.221986 0.123489 0.226284 0.097539 0.25879899 0.17639101
		 0.21321701 0.15043101 0.31089401 0.194757 0.36823201 0.13160001 0.36675999 0.096014
		 0.36860299 0.16704901 0.36495399 0.062829003 0.36298001 0.030844999 0.36429799 0.25652799
		 0.36518899 0.229711 0.36392099 0.28180599 0.36710599 0.199818 0.189069 0.081441 0.189704
		 0.062932 0.18515401 0.101641 0.188472 0.047054999 0.186307 0.032494999 0.15417001
		 0.15525299 0.165474 0.141416 0.14275099 0.166594 0.17654499 0.122589 0.225676 0.896299
		 0.357833 0.833211 0.34131899 0.83811802 0.46261799 0.855694 0.485273 0.867917 0.32578
		 0.84452498 0.31636 0.82591301 0.33418 0.86410803;
	setAttr ".uvst[0].uvsp[2250:2331]" 0.29773501 0.81232399 0.279971 0.80002701
		 0.34533 0.90584803 0.34902501 0.92148298 0.34053901 0.88563597 0.324224 0.89019102
		 0.31121001 0.88848299 0.230554 0.77584702 0.212368 0.76980299 0.247989 0.78248602
		 0.25431499 0.80031902 0.26392499 0.79031301 0.245417 0.80709898 0.236762 0.81367898
		 0.228595 0.81985903 0.35097799 0.74739802 0.35328501 0.72005999 0.875094 0.185449
		 0.87810802 0.17612 0.87146503 0.194345 0.87687403 0.163802 0.87541097 0.151124 0.87472099
		 0.138593 0.87441802 0.12613501 0.86748898 0.123154 0.86055899 0.120173 0.83737397
		 0.103483 0.84965497 0.110063 0.822335 0.10396 0.80591899 0.107965 0.35566199 0.68813002
		 0.55906802 0.68868101 0.53713697 0.66341197 0.58161098 0.71387899 0.446749 0.543697
		 0.47154099 0.57810497 0.49515799 0.610282 0.51642901 0.637999 0.054896999 0.25671199
		 0.068608001 0.29928899 0.055796999 0.30582201 0.047226999 0.28926501 0.121506 0.24405099
		 0.117509 0.29398701 0.090801999 0.295688 0.088202 0.25038099 0.15133099 0.24784601
		 0.143858 0.29315501 0.137008 0.33602101 0.131405 0.37400001 0.12662201 0.40923801
		 0.122233 0.44387999 0.117122 0.480802 0.110175 0.522879 0.103059 0.56339097 0.097438
		 0.59561902 0.18177301 0.60157102 0.169291 0.601592 0.69949198 0.93752998 0.694906
		 0.92448598 0.679057 0.83456701 0.65027398 0.85564703 0.72290498 0.80531001 0.69996297
		 0.82070601 0.79528397 0.74802202 0.757797 0.77962601 0.85166699 0.67909801 0.82600898
		 0.71486098 0.87395 0.63968402 0.89454597 0.59844601 0.807163 0.28008601 0.790452
		 0.30422699 0.76389402 0.283528 0.81612301 0.324368 0.84001899 0.34339499 0.86333799
		 0.36092499 0.88727999 0.37658101 0.911533 0.391298 0.81850398 0.25420201 0.82716
		 0.227448 0.22583801 0.30440301 0.24052601 0.28451601;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 1990 ".pt";
	setAttr ".pt[0:165]" -type "float3"  3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 1.7763568e-15 
		-4.6695356 0 1.7763568e-15 -4.6695361 0 1.7763568e-15 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0;
	setAttr ".pt[166:331]" 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0;
	setAttr ".pt[332:497]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 
		0 0 -4.6695361 0;
	setAttr ".pt[498:663]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0;
	setAttr ".pt[664:829]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0;
	setAttr ".pt[830:995]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0;
	setAttr ".pt[996:1161]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695356 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0;
	setAttr ".pt[1162:1327]" 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0;
	setAttr ".pt[1328:1493]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 3.5527137e-15 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 3.5527137e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 
		-4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 
		0 3.5527137e-15 -4.6695361 0 0 -4.6695361 0 1.7763568e-15 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0;
	setAttr ".pt[1494:1659]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 
		0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0;
	setAttr ".pt[1660:1825]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0;
	setAttr ".pt[1826:1989]" 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695356 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695356 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 
		0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0 0 -4.6695361 0;
	setAttr -s 1990 ".vt";
	setAttr ".vt[0:165]"  0 6.41513586 -4.91669607 0 4.46556902 -4.3430891 0 0.76266199 -8.95416164
		 0 1.35994101 -8.64666653 0 0.93493599 -8.97342873 0 0.45957401 -8.79917431 0 0.518879 -8.1785183
		 0 3.64404511 -6.57574415 0 1.77511799 -4.78998184 0 4.7598362 -6.12530279 0 3.63345504 -4.37189198
		 0 5.74311781 -5.45611095 0 4.29427099 -3.88949394 0 7.384758 2.016830921 0 4.024507999 3.18845892
		 0 7.26645899 1.11414194 0 3.29827309 1.048522949 0 3.23138809 2.25582194 0 7.34843588 -2.11181211
		 0 4.00032901764 -2.081233978 0 6.84128189 -4.28836918 0 7.29144001 0.44354999 0 3.44995499 0.30542901
		 0 7.35132504 -1.071485996 0 3.883955 -1.38866699 0 7.33007717 -0.31474599 0 3.62399912 -0.619892
		 0 4.45707321 -4.22264481 0 6.51718283 5.85538483 0 6.95923424 7.25093079 0 6.45149803 6.81796789
		 0 6.64320898 7.089609146 0 6.4212532 6.4678421 0 7.2628231 6.73608208 0 8.24861145 5.8338418
		 0 9.23623753 4.30620098 0 6.10916901 4.52192402 0 8.31799412 2.98228097 0 5.49861097 4.15471697
		 0 4.77062511 3.68590498 0 6.6631918 5.065742016 0 9.054965973 4.95987892 0 7.68369198 2.46874404
		 0 8.6961422 5.51975679 0 7.68841219 6.0052270889 0 6.60912991 5.38361597 0 1.86010301 -7.99689484
		 0 2.47727799 -7.21864414 0 1.24244595 -5.64087391 0 0.559457 -7.002933979 0 8.9777422 3.65424991
		 0 6.50180483 4.7365098 0 7.22419786 1.62964106 0 7.17135715 -3.33440804 -0.578821 5.9643569 -5.28183413
		 -0.61623001 4.79223013 -4.48554277 -0.75392002 5.5368619 -4.71988583 -0.241717 0.92109102 -8.89253807
		 -0.50656003 1.17686498 -8.79107094 -0.46435201 0.97627503 -8.30788803 -0.304829 0.75789797 -8.73732185
		 -0.340076 0.66540802 -8.16949081 -0.25667399 0.62161201 -8.56445789 -0.99483502 2.79281092 -5.535532
		 -0.66000998 3.245368 -6.23287916 -0.66736102 2.55369806 -4.91973686 -0.86439002 4.12491703 -5.21996498
		 -0.85837102 4.15211391 -6.16826296 -0.60426199 3.705477 -4.54746294 -0.55105001 5.52867508 -5.33101606
		 -0.77689302 5.090959072 -5.010070801 -0.72963601 6.55613899 -4.27395582 -0.413726 4.23863411 -3.791713
		 -0.79225701 4.54531908 -4.20021105 -1.35440505 4.95990992 -4.017907143 -1.37937999 6.081645966 2.76072502
		 -0.75029099 7.021263123 2.26069307 -0.81989801 4.11905193 3.15548897 -1.41814101 4.493958 3.040505886
		 -1.75332904 4.83550501 2.55933309 -0.96202499 6.97399712 1.14456606 -1.65479898 6.17946815 1.17077398
		 -1.87450302 4.86581087 1.16418397 -1.39371598 3.93807507 1.0056200027 -0.71508503 3.48994803 1.085232973
		 -1.14985895 3.71722507 2.46738696 -0.56779498 3.4668541 2.15775299 -0.85050899 7.042318821 -2.10993409
		 -1.47135401 6.19511223 -2.097114086 -1.68442702 4.97701693 -1.86860502 -1.18264103 4.34227705 -1.59020996
		 -0.52283901 4.067899227 -1.91174996 -1.187181 5.86003304 -4.18478203 -1.68886995 0.068747997 -2.7043469
		 -1.29258704 0.042527001 -2.82947707 -0.89630502 0.068747997 -2.70558 -1.56163597 0.80126297 -2.88997698
		 -1.29195094 0.84590203 -2.72539401 -1.019719958 0.800295 -2.88745499 -0.997509 0.48495299 -3.058895111
		 -1.292588 0.43678701 -3.20492101 -1.58744502 0.48518601 -3.04274106 -1.28962803 1.44624698 -2.84324694
		 -0.97892499 1.45141196 -3.086229086 -0.97414601 1.41073501 -3.53274298 -1.29258704 1.43167996 -3.81450295
		 -1.60095298 1.42674303 -3.52014899 -1.28818798 2.048691988 -2.70892596 -0.93383801 2.010721922 -2.96181703
		 -0.91008902 1.91684103 -3.52161908 -1.28329098 1.98492301 -3.65200996 -1.60570705 2.037173033 -3.45863605
		 -1.630211 3.048938036 -2.38792205 -1.22708094 2.98092794 -2.18863797 -0.84000599 2.79807711 -2.53005004
		 -0.84386599 2.80661702 -3.24659491 -1.22229195 3.018764973 -3.41135907 -1.61315596 3.078670979 -3.23613
		 -0.824754 0.020088 -2.48773289 -1.29258704 0 -2.41316509 -1.76042104 0.020088 -2.48798299
		 -0.94340402 0.034426998 -2.22562289 -0.99592501 0.25142699 -2.19640398 -1.29258704 0.023463 -2.060801983
		 -1.29258704 0.26245901 -2.047147036 -1.64177001 0.034426998 -2.22562289 -1.58924901 0.25142699 -2.19640398
		 -0.92942899 0.40035599 -2.40366912 -0.94500297 0.49066201 -2.68408799 -1.29258704 0.55467403 -2.57884312
		 -1.29258704 0.450737 -2.25205708 -1.640172 0.49066201 -2.70937991 -1.65574503 0.40035599 -2.40794611
		 -1.49863899 0.072890997 1.53047097 -1.087013006 0.068797 1.398996 -0.72901797 0.133045 1.53821194
		 -1.35518706 0.77827102 1.58458495 -1.087993979 0.81270099 1.76145303 -0.82580602 0.79258698 1.58026397
		 -0.821805 0.63811201 1.26280403 -1.088088989 0.58061498 1.088719964 -1.39963603 0.604312 1.25210702
		 -1.37276399 1.43654597 1.600407 -1.092633009 1.45908999 1.74644697 -0.85089898 1.45979202 1.56204104
		 -0.83058101 1.41653097 1.21137702 -1.099264979 1.37629604 1.047423005 -1.42628205 1.43586004 1.23015201
		 -1.43642402 2.3959229 1.71427 -1.087324977 2.408674 1.85066795 -0.80023903 2.41283298 1.59516501
		 -0.81132698 2.37442088 1.12283599 -1.13741004 2.34262991 0.93804002 -1.46413398 2.34342098 1.091493964
		 -1.51820302 3.063442945 1.87485301 -1.099356055 3.040577888 2.037959099 -0.72873199 3.033919096 1.73843706
		 -0.79868698 3.0075190067 1.048627019 -1.21187401 3.019491911 0.838076 -1.559605 3.0029768944 1.046041012
		 -0.66958702 0.055114999 2.0083971024 -1.087012053 0 2.076077938 -1.57658398 0 1.975178
		 -0.76047099 0.057824999 2.31375504 -0.79047298 0.224269 2.35198402 -1.087013006 0.001447 2.50918603;
	setAttr ".vt[166:331]" -1.087013006 0.22981 2.50560403 -1.45708501 0.0028909999 2.30989695
		 -1.38355303 0.224269 2.35198402 -0.72433603 0.38440201 2.11958289 -0.73989701 0.49114701 1.76865804
		 -1.087012053 0.550614 1.930462 -1.087012053 0.43250301 2.28390408 -1.43412805 0.48929501 1.76876605
		 -1.44968903 0.38440201 2.11958194 -0.95686901 7.026194096 0.45467299 -1.63188195 6.19852591 0.478609
		 -1.81395304 4.94033623 0.48673999 -1.47986901 4.10285616 0.44202101 -0.84259999 3.65746498 0.38741899
		 -0.900792 7.067464828 -1.07069397 -1.48778605 6.1693902 -1.077278972 -1.61369801 4.9933219 -1.13427198
		 -1.26254404 4.35423899 -1.227633 -0.643242 4.02619791 -1.34557199 -0.92768502 7.06421423 -0.31400999
		 -1.54895198 6.16970921 -0.307762 -1.681247 4.91401005 -0.36384299 -1.34872794 4.18491602 -0.46037501
		 -0.78474402 3.80714512 -0.56612998 -0.70145899 7.030418873 5.89913607 -0.52742201 6.81593323 6.53300285
		 -0.43731499 6.54611015 6.42916393 -0.72078198 6.85685205 5.44273996 -1.0063949823 7.18747616 5.47185516
		 -1.18570399 8.50081444 3.9102881 -1.12479997 6.73054314 4.33418179 -1.51863098 7.35873795 4.17715693
		 -1.24267304 7.43745613 3.71356702 -1.062934995 6.18619204 3.92255998 -0.63329101 8.09224987 3.16676307
		 -0.566149 9.22790718 4.35816908 -0.333698 6.69499302 6.96907091 -0.289352 6.53620386 6.77945995
		 -0.53981298 6.67453098 5.8892231 -0.52449399 6.25317717 4.50018883 -0.55018097 5.66973877 4.13691378
		 -0.90670902 6.89544392 5.13686609 -1.386603 7.27720785 5.11855412 -1.40119195 8.45930767 4.20605612
		 -0.73445702 9.042802811 5.018854141 -1.60725999 9.66289902 4.41300821 -1.25858402 9.84670734 4.73747301
		 -1.49478304 9.64283276 4.27473879 -1.170506 9.84712601 4.57544708 -1.44273806 9.94944763 4.60006285
		 -1.35141504 9.89408398 4.42904377 -1.28233695 9.61141014 4.48280382 -1.67439795 3.9668951 -1.96209097
		 -1.191113 3.70334005 -1.69926202 -0.72806501 3.457165 -2.045090914 -0.71785098 3.52433109 -3.37355995
		 -1.15974796 3.86479306 -3.77339196 -1.64221799 4.013226032 -3.55715489 -0.69016403 4.94122219 3.66856289
		 -1.29007995 5.39706707 3.437536 -1.12186396 6.82190514 3.31382203 -0.606749 7.434937 2.71423888
		 -0.62697399 8.70087147 5.49032021 -1.15952098 7.94173908 5.2395978 -0.64929599 7.43213987 5.94537878
		 -0.39163199 7.61091185 5.94918299 -0.281324 6.9347291 7.055090904 -0.421231 7.18900919 6.61764288
		 -0.450818 8.15817261 5.75643396 -0.86383402 7.83935499 5.59070492 -0.75754797 8.92303467 3.79475498
		 -1.076639056 8.90140247 4.53517103 -0.91856998 8.45705509 5.37758112 -0.91546601 1.87193298 -6.30219221
		 -0.66799599 1.15336895 -7.55673504 -0.60654497 2.35895109 -6.88758802 -0.45329499 1.70145595 -7.90879011
		 -0.75239497 0.65876001 -6.23254919 -0.469192 0.70572299 -7.12451601 -1.37569296 8.060909271 4.73511982
		 -1.62796998 7.29893303 4.67565393 -1.081856012 6.81584215 4.76467085 -1.021206021 8.71247864 4.9188242
		 -0.50767201 6.59573078 4.74337006 -0.50505102 6.77175188 5.093533993 -0.467318 6.72109699 5.42187786
		 -0.975676 9.52607441 4.89824104 -0.823699 9.59569263 4.49772596 -1.10894895 9.4090004 4.11878395
		 -1.38842297 9.12956047 4.043782234 -1.56717896 9.065086365 4.22206783 -1.16547096 9.25473785 4.46946812
		 -1.65877497 3.81234193 2.17923403 -1.60129201 6.11812592 1.87938797 -0.87920398 6.90128088 1.73771203
		 -1.93441105 4.97136116 1.86403203 -1.72015798 3.81521606 1.22304404 -1.80398202 3.81040502 1.71330905
		 -1.65470898 3.030930996 1.46614695 -1.55807996 2.35926795 1.37325203 -1.58001304 1.45897102 -3.096498013
		 -1.63830495 2.098510981 -2.99051809 -1.758075 3.070342064 -2.75079393 -1.835168 4.06050396 -2.76021409
		 -1.72443795 5.093166828 -3.068821907 -1.45291996 6.11445093 -3.26256204 -0.84230202 6.89175177 -3.32044005
		 0.578821 5.9643569 -5.28183413 0.61623001 4.79223013 -4.4855442 0.75392002 5.53686285 -4.71988583
		 0.241717 0.92109102 -8.89253616 0.50656003 1.17686498 -8.79107094 0.46435201 0.97627503 -8.30788803
		 0.304829 0.75789797 -8.73732376 0.340076 0.66540802 -8.16948986 0.25667399 0.62161201 -8.56445789
		 0.99483502 2.79281092 -5.535532 0.66000998 3.245368 -6.23287916 0.66736102 2.55369806 -4.91973686
		 0.86439002 4.12491703 -5.21996498 0.85837102 4.15211391 -6.16826296 0.60426199 3.705477 -4.54746294
		 0.55105001 5.52867508 -5.33101606 0.77689302 5.090959072 -5.010070801 0.72963601 6.55613804 -4.27395582
		 0.41374099 4.23859787 -3.79170489 0.79241902 4.54492378 -4.20012903 1.35443199 4.95984411 -4.017892838
		 1.37937701 6.081501961 2.76071095 0.75029099 7.021262169 2.26069188 0.81989801 4.11915016 3.15548897
		 1.41814101 4.49456406 3.040505886 1.753299 4.83417511 2.559165 0.96202499 6.97399712 1.14456606
		 1.65477204 6.1795702 1.170627 1.87429798 4.86666203 1.16301596 1.39353895 3.93915796 1.0043410063
		 0.71507102 3.49004197 1.085129976 1.14985895 3.71729398 2.46738696 0.56779498 3.4668541 2.15775394
		 0.85050899 7.042318821 -2.10993409 1.47135401 6.19511223 -2.097114086 1.68442702 4.9770031 -1.86860502
		 1.18264103 4.34214592 -1.59020996 0.52283901 4.067884922 -1.91174996 1.187181 5.86003208 -4.18478203
		 1.68886995 0.068747997 -2.7043469 1.29258704 0.042527001 -2.82947707 0.89630502 0.068747997 -2.70558
		 1.56163597 0.80126297 -2.88997698 1.29195094 0.84590203 -2.72539401 1.019719958 0.80029601 -2.88745499
		 0.997509 0.48495299 -3.058896065 1.29258704 0.43678701 -3.20492101 1.58744502 0.48518601 -3.04274106
		 1.28962803 1.44624698 -2.84324694 0.97892499 1.45141196 -3.086229086 0.97414601 1.41073501 -3.53274298
		 1.29258704 1.43167996 -3.81450295 1.60095298 1.42674303 -3.52014899 1.28818703 2.048691988 -2.70892596
		 0.93383801 2.010721922 -2.96181703 0.91008902 1.91684103 -3.52161908 1.28329098 1.98492301 -3.65200996
		 1.60570705 2.037173033 -3.45863605 1.630211 3.048938036 -2.38792205;
	setAttr ".vt[332:497]" 1.22708094 2.98092794 -2.18863797 0.84000599 2.79807711 -2.53005004
		 0.84388 2.80658102 -3.24658799 1.22255003 3.018140078 -3.41122699 1.61317098 3.078634977 -3.23612189
		 0.824754 0.020088 -2.48773408 1.29258704 0 -2.41316509 1.76042104 0.020088 -2.48798299
		 0.94340402 0.034426998 -2.22562289 0.99592501 0.25142699 -2.19640398 1.29258704 0.023463 -2.060802937
		 1.29258704 0.26245901 -2.047147036 1.64177001 0.034426998 -2.22562289 1.58924901 0.25142699 -2.19640398
		 0.92942899 0.40035599 -2.40366912 0.94500297 0.49066201 -2.68408799 1.29258704 0.55467403 -2.57884312
		 1.29258704 0.450737 -2.25205588 1.640172 0.49066201 -2.70937991 1.65574503 0.40035599 -2.40794706
		 1.49863899 0.072890997 1.53047097 1.087013006 0.068797 1.398996 0.72901702 0.133045 1.53821194
		 1.35518706 0.77830702 1.58458495 1.087993979 0.81271899 1.76145303 0.82580602 0.79258698 1.58026397
		 0.821805 0.63807201 1.26280403 1.088088989 0.58030498 1.088719964 1.39963603 0.60374802 1.25210702
		 1.37276399 1.43682206 1.600407 1.092633009 1.45920706 1.74644697 0.85089898 1.45979202 1.56204104
		 0.83058101 1.41622496 1.21137702 1.099264979 1.37385094 1.047423005 1.42628205 1.43202806 1.23015201
		 1.43642402 2.39596891 1.71427 1.087324977 2.40869308 1.85066795 0.80023903 2.41283298 1.59516501
		 0.81132698 2.37398005 1.12283599 1.13741004 2.33878803 0.93804002 1.46413398 2.33570409 1.091493964
		 1.51819801 3.063466072 1.87481797 1.099356055 3.040577888 2.037959099 0.72873199 3.033919096 1.73843706
		 0.798684 3.0074579716 1.048603058 1.21185005 3.018939018 0.837901 1.55956805 3.0018548965 1.045809031
		 0.66958702 0.055114999 2.008398056 1.087012053 0 2.076077938 1.57658398 0 1.975178
		 0.76047099 0.057824999 2.31375504 0.79047298 0.224269 2.35198402 1.087013006 0.001447 2.50918603
		 1.087013006 0.22981 2.50560498 1.45708501 0.0028909999 2.30989695 1.38355303 0.224269 2.35198402
		 0.72433603 0.38440201 2.11958194 0.73989701 0.49114701 1.76865804 1.087012053 0.550614 1.930462
		 1.087013006 0.43250301 2.28390408 1.43412805 0.48929399 1.76876605 1.44968903 0.38440201 2.11958194
		 0.95686901 7.026194096 0.45467401 1.63186502 6.19859219 0.47851899 1.81383395 4.94093895 0.486083
		 1.47974396 4.1041708 0.44121599 0.84258199 3.65767407 0.38730001 0.900792 7.067464828 -1.07069397
		 1.48778605 6.1693902 -1.077278972 1.61369801 4.99319315 -1.13427198 1.26254404 4.35345602 -1.227633
		 0.643242 4.02606678 -1.34557199 0.92768502 7.06421423 -0.31400999 1.54894996 6.16971684 -0.30777401
		 1.68123102 4.91407204 -0.36392999 1.34871101 4.18498421 -0.46048099 0.78474098 3.80715394 -0.56614602
		 0.70023203 7.030418873 5.89913607 0.52726799 6.81593418 6.53300285 0.43731499 6.54611015 6.42916393
		 0.72078198 6.8568511 5.44273996 1.0062420368 7.18747616 5.47185516 1.18570399 8.50081253 3.9102881
		 1.12479997 6.73054314 4.33418179 1.51863098 7.35873795 4.17715693 1.24267304 7.43745613 3.71356702
		 1.062934995 6.18619204 3.92255902 0.63329101 8.09224987 3.16676307 0.566149 9.22790623 4.35817003
		 0.333698 6.69499302 6.96907091 0.289352 6.53620291 6.77945995 0.53981298 6.67453098 5.8892231
		 0.52449399 6.25317812 4.50018883 0.55018097 5.66973877 4.13691521 0.90670902 6.89544392 5.13686609
		 1.386603 7.27720785 5.11855412 1.40119195 8.45930672 4.20605516 0.73445702 9.042802811 5.018854141
		 1.60725999 9.66289902 4.41300821 1.25858402 9.84670734 4.73747301 1.49478304 9.64283276 4.27473783
		 1.170506 9.84712601 4.57544708 1.44273806 9.94944763 4.60006285 1.35141504 9.89408493 4.4290452
		 1.28233695 9.61140919 4.48280382 1.67439795 3.9668951 -1.96209097 1.191113 3.70334005 -1.69926202
		 0.72806501 3.457165 -2.045090914 0.71794099 3.52411199 -3.37351394 1.16129303 3.86103892 -3.77260303
		 1.642308 4.013007164 -3.55710912 0.69016403 4.94124603 3.66856289 1.29007995 5.39716578 3.437536
		 1.12186396 6.82190609 3.31382203 0.606749 7.434937 2.71423888 0.62697399 8.70087147 5.49032021
		 1.15952098 7.94173908 5.2395978 0.64193302 7.43213987 5.94537878 0.390405 7.61091185 5.94918299
		 0.281324 6.93473005 7.055089951 0.420609 7.18900824 6.61764193 0.45066401 8.15817356 5.75643396
		 0.86324501 7.83935499 5.59070587 0.75754797 8.92303467 3.79475498 1.076639056 8.90140247 4.53517103
		 0.91856998 8.45705509 5.37758112 0.91546601 1.87193298 -6.30219221 0.66799599 1.15336895 -7.55673504
		 0.60654497 2.35895109 -6.88758898 0.45329499 1.70145595 -7.90879011 0.75239497 0.658759 -6.23254919
		 0.469192 0.70572197 -7.12451601 1.37569296 8.060909271 4.73511982 1.62796998 7.29893303 4.67565393
		 1.081856012 6.81584215 4.76467085 1.021206021 8.71247768 4.91882277 0.50767201 6.59573078 4.74337006
		 0.50505102 6.77175188 5.093533993 0.467318 6.72109699 5.42187786 0.975676 9.52607441 4.89824104
		 0.823699 9.59569263 4.49772501 1.10894895 9.40899944 4.11878395 1.38842297 9.12956047 4.043782234
		 1.56717896 9.065086365 4.22206783 1.16547096 9.25473785 4.46946812 1.65873694 3.8122499 2.179003
		 1.60126495 6.11818123 1.87923503 0.87920398 6.90128088 1.73771203 1.93420804 4.97184706 1.86288095
		 1.71990705 3.81640196 1.22149396 1.80372298 3.81139708 1.71173 1.65467095 3.030884027 1.465909
		 1.55807996 2.35765004 1.37325203 1.58001304 1.45897102 -3.096498013 1.63830495 2.098510981 -2.99051809
		 1.75807405 3.070342064 -2.75079298 1.835168 4.06050396 -2.76021504 1.72443795 5.093167782 -3.068821907
		 1.45291996 6.11445093 -3.26256204 0.84230202 6.89175177 -3.32044005 -1.28371596 7.98172998 4.99029016
		 -1.0065840483 6.85637808 4.95170498 -0.97245002 8.59381199 5.14777994 -1.043653011 8.22944736 5.30918217
		 0 6.59941721 4.8893218 -0.50498402 6.69481993 4.90779305;
	setAttr ".vt[498:663]" -0.70767701 6.81694603 5.11908293 -0.60372102 6.78325701 5.42316008
		 -1.16603601 6.49705982 3.647475 -1.0083600283 9.75558853 4.55073118 -1.12310302 9.71176338 4.82279015
		 -1.24505305 9.68127346 4.2794981 -1.47318006 9.41800499 4.13446617 -1.60903096 9.37949181 4.30837822
		 -1.22109604 9.43633842 4.46717405 -0.92958999 6.92814922 1.45144105 0 7.23299694 1.392187
		 -1.64523196 6.15103817 1.51454902 -1.93024695 4.96263885 1.51435101 -1.81885505 4.30883598 1.25252104
		 -1.90064204 4.36209106 1.80564499 -1.76838398 3.81974196 1.96397996 -1.620942 3.051806927 1.68646097
		 -1.52667999 2.37258601 1.55097401 -1.43287504 1.40865898 1.43113899 -1.61825502 1.44776797 -3.30503702
		 -1.64741504 2.046922922 -3.24218798 -1.70890903 3.069947004 -2.99275208 -1.76930404 4.047496796 -3.17509604
		 -1.60388899 5.054143906 -3.57336903 -1.35589004 6.0020041466 -3.77139306 -1.29294801 5.43505001 -4.10279608
		 -0.80192202 6.74146891 -3.84093595 0 7.018281937 -3.8574059 0.29039699 1.043041945 -8.80775261
		 0.45930201 1.10770202 -8.48244476 0.394115 0.84264499 -8.56570816 0.29383701 0.80433899 -8.88902664
		 0.16648901 0.927975 -8.95149517 0.25588101 1.30840194 -8.68487453 0.42944601 0.81542897 -8.21450329
		 0.296013 0.63103199 -8.44908047 0.28768301 0.68339598 -8.63435745 0.206433 0.55879098 -8.16310596
		 0.17625199 0.55898398 -8.64889812 0.187217 0.74539202 -8.87125683 0.308476 6.29262304 -4.99949217
		 0.53479701 5.80231094 -5.1864152 0.31441599 5.68128014 -5.42477894 0.69851297 5.8105731 -4.9088378
		 0.72757602 5.37486792 -4.89387512 0.71495599 5.31286287 -5.19677305 0.713341 4.90384197 -4.76551819
		 0.73555398 5.20616007 -4.60802889 0.86551899 4.2701931 -5.65052891 0.921583 3.49893188 -5.33253479
		 1.17576396 2.51604295 -5.90193176 0.67507797 3.97736812 -6.068716049 0.44293201 4.60617018 -6.13248777
		 0.35596699 3.54700804 -6.47607994 0.344064 3.63390803 -4.40594101 0.463673 2.33649611 -4.79773808
		 0.95018202 2.7193141 -4.76287699 0.85561001 2.7197001 -5.18651915 0.77171999 3.908288 -4.83788776
		 0.62831599 5.043437004 -5.65655184 0.32762 4.52552319 -4.3784709 0.56176603 4.27715683 -4.51117802
		 0.83116901 4.63341522 -5.12680387 0.35861599 3.37308693 1.076462984 0.55345798 3.39221692 1.584764
		 0.29279599 3.43029499 2.19369888 0.44851401 7.13429785 1.66438103 0.38335499 7.28337622 2.088800907
		 0.82011402 6.92812395 2.0080490112 1.27424705 6.561831 1.81874502 1.084388018 6.64044714 2.48848701
		 1.50155902 6.088120937 2.28081489 1.627262 5.41575193 2.67636991 1.86844397 4.93130302 2.22371411
		 1.827878 5.57255602 1.890939 1.609339 4.67278481 2.832793 1.34655797 4.10906792 2.76898003
		 1.44860005 3.76702809 2.33918905 1.73971105 4.29337406 2.37786698 1.0034550428 3.91282797 2.81570792
		 0.63836497 3.75332594 2.70134306 0.84201598 3.54851103 2.33456802 0.39504901 4.061048031 3.18726993
		 0.43994799 7.26954317 -2.10994291 0.47161901 7.28445911 -1.071228981 0.87324798 7.063569069 -1.55425501
		 1.20229495 6.67621899 -2.1173861 1.24506998 6.68394279 -1.070116997 1.474244 6.18649721 -1.55557799
		 1.61226904 5.55929804 -1.09995997 1.62411201 5.039965153 -1.48524296 1.63373494 5.62286615 -2.013935089
		 1.487252 4.61059713 -1.17632306 1.21701205 4.40747786 -1.45943296 1.46714997 4.58715916 -1.63745999
		 0.86413002 4.15738916 -1.63966703 0.96918899 4.16371679 -1.28972006 0.57694298 4.083074093 -1.58604503
		 0.248078 4.041062832 -2.055233002 0.320755 3.92519593 -1.37817705 0.43636101 7.10018587 -3.33100009
		 0.84934598 6.98854113 -2.72105098 1.18740296 6.55112791 -3.30239701 1.47782695 6.17495823 -2.68528891
		 1.62011099 5.61785603 -3.18662691 1.74579406 5.076463223 -2.48233891 0.218403 4.31752586 -3.88167596
		 0.42124701 4.1114912 -2.82926607 1.63001204 0.206965 -2.84745407 1.500278 0.043954998 -2.78420901
		 1.29258704 0.17010701 -3.0073130131 1.44678497 0.44807401 -3.14818001 1.084897041 0.043954998 -2.78570509
		 0.955163 0.206965 -2.8573761 1.13838995 0.44797599 -3.15718389 0.98733902 0.60185099 -2.78880906
		 0.98217797 0.65911001 -2.97651291 0.88778901 0.30037001 -2.70246005 1.11034 0.26294699 -2.1051681
		 0.94954699 0.148964 -2.2077651 1.085221052 0.023463 -2.12221599 1.29258704 0.13601799 -2.024374008
		 1.47483504 0.26294699 -2.1051681 1.49995399 0.023463 -2.12221503 1.63562703 0.148964 -2.2077651
		 1.29258704 0 -2.62432003 1.045876026 0 -2.44068289 0.846246 0.021991 -2.59337401
		 1.29004097 1.13039601 -2.79766393 1.44625401 0.84706402 -2.78485298 1.56178904 1.11750495 -3.0066668987
		 1.45807898 1.45381606 -2.92314291 1.0081080198 1.11363602 -3.006207943 1.13637495 0.84643602 -2.78167105
		 1.11183 1.45020902 -2.91508293 1.29258704 0.896617 -3.46939397 0.99803001 0.95102102 -3.32027197
		 1.12762201 1.38163996 -3.63865209 1.586254 0.95195299 -3.30925488 1.45447695 1.39023805 -3.63136506
		 1.29348195 1.72394502 -2.82237291 1.59802902 1.73405504 -3.10147595 1.47732306 2.053208113 -2.802737
		 0.95858997 1.72316098 -3.068677902 1.087317944 2.036638975 -2.77483606 0.88687199 1.96461296 -3.23122001
		 0.943277 1.66966105 -3.58754611 0.94515097 1.43556297 -3.30426407 1.29293895 1.67340302 -3.72914791
		 1.092905045 1.94856703 -3.621418 1.60604894 1.72903001 -3.54857898 1.45495999 2.013678074 -3.58461595
		 1.26032901 2.5056901 -2.47678804 1.624663 2.56577706 -2.66949892 1.44868803 3.023328066 -2.24598598
		 0.89140302 2.3959341 -2.77391005 1.0027689934 2.88540196 -2.29231691 0.80304402 2.78028202 -2.8748641
		 0.87924701 2.34131694 -3.37189698 1.25364196 2.478719 -3.49690199 1.025171041 2.92084503 -3.36721802
		 1.60408998 2.52952695 -3.31441212 1.42230904 3.062834978 -3.35525799 1.73427296 3.094094992 -2.53800988
		 1.71087694 2.56992793 -2.88507605 1.20562005 3.36039495 -1.90715504;
	setAttr ".vt[664:829]" 1.65186 3.50802112 -2.13435197 1.45600796 3.84826207 -1.75980699
		 0.78836799 3.13642693 -2.25532889 0.923841 3.55572605 -1.76085198 0.67765802 3.45939803 -2.65249205
		 0.79711699 3.17612004 -3.25389695 1.20857203 3.466537 -3.54238892 0.92800099 3.7027421 -3.64233494
		 1.64491904 3.55703497 -3.34398007 1.40503597 3.95450401 -3.72168303 1.80215895 4.035638809 -2.32572007
		 1.81012106 3.56353998 -2.70926404 1.73892903 0.021991 -2.59437299 1.53929806 0 -2.44068289
		 1.59783602 0.60185099 -2.80442405 1.69738603 0.30037001 -2.71807408 1.60045195 0.65983701 -2.97069097
		 1.29258704 0 -2.21733689 0.85159701 0.016433001 -2.35562992 1.73357701 0.016433001 -2.35562992
		 1.63526905 0.32767901 -2.27956295 1.74028504 0.22957601 -2.46234393 1.658427 0.439091 -2.564219
		 0.94990498 0.32767901 -2.27956295 0.84489 0.22957601 -2.45949197 0.92674702 0.439091 -2.54710889
		 1.091599941 0.45354199 -2.30865097 1.29258704 0.49827 -2.42205501 1.095479012 0.554425 -2.61887908
		 1.49357402 0.45354199 -2.31150293 1.48969495 0.554425 -2.6359899 1.29258704 0.66227299 -2.66620493
		 1.29258704 0.36974901 -2.1250639 1.43796599 0.29156199 1.36087501 1.29282498 0.070033997 1.44289398
		 1.087013006 0.27518901 1.19362199 1.243325 0.58680999 1.14377296 0.88120002 0.070800997 1.44245899
		 0.78027999 0.33787 1.36794901 0.93500799 0.59466797 1.14022505 0.684093 0.312527 1.65118694
		 0.78203201 0.60416698 1.64960301 0.78620499 0.71869099 1.42096901 0.88156402 0.001447 2.44472909
		 1.087013006 0.115762 2.52468705 0.90476501 0.230298 2.44748592 0.74424797 0.130107 2.33778405
		 1.29246199 0.001447 2.44472909 1.42977798 0.130107 2.33778405 1.269261 0.230298 2.44748592
		 1.087013006 0 1.73124897 0.84222698 0 2.042443991 0.68695098 0.061914001 1.77056897
		 1.090939045 1.083624959 1.73721194 1.23974395 0.80760998 1.70851898 1.35298395 1.057219028 1.57324803
		 1.24581099 1.45215797 1.71111596 0.84890902 1.077267051 1.55813706 0.938209 0.81582099 1.70623004
		 0.95384598 1.46373498 1.68958199 1.091318965 0.94527501 1.057881951 0.83465701 0.99533302 1.22580004
		 0.940651 1.39180005 1.092031002 1.413131 0.95717901 1.21427202 1.27023995 1.368083 1.097673059
		 1.089859009 1.93949103 1.78698599 1.40190697 1.92044699 1.65044296 1.27491903 2.40537095 1.823506
		 0.83133203 1.94174695 1.57079005 0.91880298 2.4140451 1.76774395 0.82132101 1.90732205 1.17397201
		 0.805237 1.44142199 1.38534296 0.762523 2.39646602 1.35336006 1.11448896 1.869784 1.0036549568
		 0.95232499 2.35441399 0.98409897 1.43604803 1.90079606 1.13924003 1.31847203 2.32812309 0.98554999
		 1.54301596 2.37481594 1.22073805 1.50702703 1.91485703 1.32251 1.089735985 2.75102806 1.92933404
		 1.47232699 2.75126505 1.78280103 1.32830095 3.054482937 2.0019900799 0.76764703 2.7627511 1.64594805
		 0.879489 3.037379026 1.95284498 0.80504799 2.72155595 1.067217946 0.70711398 3.019227982 1.38652802
		 1.17520797 2.68348193 0.810754 0.98748899 3.012757063 0.87614501 1.50437796 2.67810392 1.046901941
		 1.41008794 3.0098130703 0.90261799 1.637658 3.01154089 1.24298894 1.60373294 2.70941401 1.40852404
		 1.11844599 3.35142398 2.19151807 1.58261704 3.40970397 2.0091021061 0.67866701 3.26875496 1.88793302
		 0.78843898 3.28909492 1.10847795 1.062476039 3.67274499 0.95947403 1.27186596 3.44166398 0.92787898
		 1.575225 3.85131907 1.097365022 1.63248897 3.38081789 1.12855899 1.72157705 3.38279605 1.582991
		 1.79184401 3.80661988 1.44541299 1.55217195 0 1.75078905 1.33179796 0 2.042443991
		 1.39605606 0.702622 1.42680705 1.391994 0.59675199 1.650038 1.48993301 0.31065199 1.65162206
		 1.087013006 0 2.31918097 0.69243097 0.043285001 2.19507504 1.54989004 0 2.156986
		 1.53278506 0.22046 2.040790081 1.42941904 0.302021 2.26377702 1.45230901 0.432668 1.93992996
		 0.74460602 0.302021 2.26377702 0.64124 0.22046 2.040790081 0.72171599 0.432668 1.93992996
		 0.88602602 0.43530899 2.22473598 1.087012053 0.49092999 2.10238194 0.88990402 0.55080301 1.87789905
		 1.28799903 0.43530899 2.22473598 1.28411996 0.54969603 1.87789905 1.087013006 0.64646298 1.82134497
		 1.087013006 0.340426 2.42182708 0.496546 7.22665691 0.44663501 0.4984 7.18872499 1.124915
		 0.96725899 7.0040931702 0.812415 1.34474897 6.68393612 0.46644601 1.35609901 6.64074612 1.16042495
		 1.65137398 6.19599485 0.83232599 1.78989995 5.56886911 0.48745799 1.83219397 5.58106279 1.17330503
		 1.83820295 4.9529562 0.834943 1.69864905 4.46097612 0.46721199 1.67539203 4.39585209 1.041365027
		 1.44360197 4.077404022 0.77994102 1.19251502 3.84571505 0.418464 0.79193598 3.59623694 0.74638301
		 0.435563 3.51211405 0.33606401 0.48402199 7.26961422 -0.31540099 0.91637099 7.069180965 -0.67593199
		 1.29063296 6.68985987 -0.30721501 1.51326597 6.16406679 -0.67881298 1.67872298 5.52694607 -0.328444
		 1.634045 4.94478512 -0.76283002 1.55775297 4.48362017 -0.40893701 1.29993796 4.26852798 -0.88288999
		 1.09452796 3.9675591 -0.51558203 0.71693099 3.92102289 -0.99723399 0.40888801 3.67957902 -0.60408098
		 0.94243097 7.048058987 0.071028002 1.59310305 6.18552923 0.088244997 1.75133598 4.92038488 0.069417
		 1.42838001 4.13511515 0.004315 0.83340502 3.72367501 -0.077422999 0.38362899 6.76474285 -4.28352785
		 0.63394803 6.32145786 -4.69419289 0.38314101 4.50158024 -4.23161221 0.58679301 4.36322594 -4.041114807
		 0.99825698 6.24445295 -4.24050903 0.94560099 5.7025938 -4.49140596 0.495848 6.67269087 6.47929096
		 0.485282 6.59391308 6.15289116 0.63301301 6.83841085 5.86960793 0.61351502 6.91593122 6.22887993
		 0.441964 6.74491787 6.78588295 0.32568699 6.59611416 6.86846399;
	setAttr ".vt[830:995]" 0.386682 6.52992582 6.63096189 0.62759697 6.77795792 5.628232
		 0.88745397 6.98629189 5.45101595 0.85456598 7.11189508 5.67780399 1.05971396 8.79496574 4.69155502
		 1.20426202 8.42289829 4.82571983 1.40323305 8.21845913 4.4682312 1.25784695 8.72596455 4.37517881
		 1.152601 7.25126696 5.29666996 1.27352703 7.61838388 5.17726421 1.035256982 7.86359882 5.40042305
		 0.97965002 7.47629404 5.52912188 0.81993997 6.43337202 4.45274496 0.52846599 5.98684597 4.33694601
		 0.835567 5.89788389 4.072351933 1.050685048 6.477211 4.13023186 1.339324 7.062430859 4.28911114
		 1.238711 7.0068449974 4.0011582375 1.42481697 7.37567377 3.92890501 1.19761097 8.019487381 3.79746699
		 1.33229303 8.43811607 4.030450821 1.45789099 7.90208006 4.18567896 0.307825 9.21144676 4.31901407
		 0.629049 9.15643406 4.074771881 0.371245 8.94883347 3.69167709 0.31348699 8.69771862 5.50994396
		 0.670111 8.85772324 5.22381878 0.342271 9.036974907 4.955338 0.17594001 6.48353004 6.80626488
		 0.178565 6.65826988 7.064118862 0.218657 6.46287203 6.4549489 0.258059 6.5616169 5.85875893
		 0.46557099 6.6854682 5.60806417 0.25310999 6.64823484 5.39983082 0.25560701 6.14514399 4.51938677
		 0.27303201 5.53936005 4.15631104 0.31595501 8.26228619 3.028845072 0.60181803 7.73701906 2.92837095
		 0.30391601 7.61748314 2.53480101 0.95339203 7.80497122 3.39426589 1.14035702 7.11845112 3.515028
		 0.907417 7.15213823 2.98832798 0.61203802 5.3182621 3.9051559 1.030024052 5.1390748 3.59489989
		 1.162341 5.81941223 3.67764902 0.346127 4.81548691 3.68899608 0.51586902 6.45232916 4.62158298
		 0.247136 6.53007507 4.73687506 0.79500902 6.67962217 4.76139498 1.10792005 6.77236414 4.57389593
		 1.34091794 7.03848505 4.72692108 1.58113003 7.331429 4.42620707 1.40921605 9.95879173 4.52736092
		 1.25620401 9.90077496 4.51647377 1.21561801 9.86163807 4.65221977 1.35720396 9.93620682 4.66914797
		 0.58954298 9.18783855 4.65373516 1.11460495 9.065542221 4.47663689 1.50461304 8.77936935 4.17757702
		 1.348665 9.15310478 4.33065319 1.27590799 8.82140446 3.97282195 1.47780097 9.097322464 4.13292503
		 0.69347799 9.40288353 4.42394876 0.95511001 9.51650333 4.28370285 0.96192098 9.16590595 3.98696709
		 0.84122002 9.28433704 4.93696213 0.88565302 9.56859779 4.698915 1.35004795 9.78101254 4.52940321
		 1.42075396 9.60239315 4.42626286 1.53895998 9.85561466 4.51246023 1.55628204 9.66550732 4.32601976
		 1.44524896 9.78647518 4.33292007 1.23884296 9.69765568 4.59502411 0.67444301 4.69687223 -4.33200979
		 1.17873096 4.069012165 -1.63188303 1.68261397 4.44942522 -1.92443705 0.65067399 3.80646706 -1.99467504
		 0.58534002 3.92473412 -3.58512902 1.030176997 4.23900986 -3.98443103 1.54831004 4.49483109 -3.7946291
		 1.12020397 4.69063377 -4.13475704 1.80136502 4.57221508 -2.9033761 0.97650898 4.97652006 -4.29030895
		 0.76068997 4.54752398 3.45402908 1.38733101 4.93973923 3.24425602 1.16128695 4.34694195 3.17821193
		 1.39470804 5.70371103 3.16599798 0.66770399 7.19327497 2.49388409 1.19668603 6.48484612 3.070835114
		 0.22951201 8.22794819 5.80982304 0.51211202 8.41907787 5.62591505 0.81144702 6.88484478 5.28447104
		 1.13847303 7.063848972 5.13309813 0.26250499 6.7032609 5.07400322 0.482761 6.74848509 5.253304
		 0.31808999 6.82566023 7.050899982 0.156875 6.95238876 7.22386122 0.537471 7.54379177 5.94485998
		 0.74231601 7.61480188 5.77640486 0.65509599 8.031510353 5.69234705 0.414271 7.88708782 5.85963917
		 0.553388 7.29625702 6.27818012 0.50446302 6.99249601 6.59388685 0.699696 7.24467182 5.92726517
		 0.341463 7.024721146 6.92583799 0.20483001 7.66478586 5.98182583 0.39290699 7.41563511 6.29553699
		 0.21129701 7.24326801 6.70935392 1.0068420172 8.67833996 3.81437302 1.25150597 9.27572346 4.055799007
		 0.681548 8.49335575 3.4598949 0.91862899 9.0034599304 4.72554588 1.052914023 9.38359833 4.66873884
		 0.86789 8.87027264 4.97104692 0.87441498 8.18710995 5.49085283 0.77691501 8.60010338 5.43635607
		 0.32401401 2.47114801 -7.13196182 0.51779199 1.953264 -7.53683281 0.261556 1.82518601 -7.97695589
		 0.272365 0.59151798 -7.032574177 0.53814101 0.90517497 -6.50466681 0.24196 1.13480997 -5.70710993
		 0.83021998 1.30762398 -6.84161711 0.603293 1.45876002 -7.7808218 0.82074499 2.10777903 -6.53826904
		 0.88869703 1.55881 -6.15627193 0.60574001 0.89664 -7.29701281 0.93237603 2.34034204 -5.85484791
		 0.65214998 2.74587011 -6.54311085 0.645235 1.999125 -5.25115108 0.55448502 1.10980999 -7.95489788
		 0.38994101 1.47505796 -8.20597267 0.397282 0.66660202 -7.75232792 1.494138 7.685884 4.69041395
		 1.28371596 7.98172998 4.99029016 1.50728703 7.28807116 4.89710379 1.0065840483 6.85637808 4.95170403
		 0.97245002 8.59381199 5.14777994 1.043653011 8.22944736 5.30918217 0.50498402 6.69481993 4.90779305
		 0.70767701 6.81694603 5.11908293 0.60372102 6.78325701 5.42316008 1.16603601 6.49705982 3.647475
		 1.12310302 9.71176338 4.82279015 1.0083600283 9.75558853 4.55073118 1.24505305 9.68127346 4.2794981
		 1.47318006 9.41800499 4.13446617 1.60903096 9.37949181 4.30837822 1.22109604 9.43633842 4.46717405
		 0.92958999 6.92814922 1.45144105 1.93002701 4.96348 1.51311004 1.64520299 6.15114784 1.51438498
		 1.81859303 4.31001282 1.25095606 1.90037799 4.36293697 1.80408597 1.76823294 3.82015705 1.96305501
		 1.62091899 3.051896095 1.68632102 1.52667999 2.37238193 1.55097401 1.43287504 1.40743101 1.43113899
		 1.61825502 1.44776797 -3.30503702 1.64741504 2.046922922 -3.24218798 1.70890903 3.069947004 -2.99275208
		 1.76930404 4.047496796 -3.17509604 1.60388899 5.054142952 -3.57336903 1.29294801 5.43505001 -4.10279608
		 1.35589004 6.0020041466 -3.77139306 0.80192202 6.74146891 -3.84093595;
	setAttr ".vt[996:1161]" -0.29383701 0.804286 -8.88911819 -0.394115 0.84258598 -8.56581306
		 -0.45930201 1.10770202 -8.48244476 -0.29039699 1.043041945 -8.80775261 -0.25588101 1.30840194 -8.68487453
		 0 1.13542497 -8.840271 -0.16648901 0.92797601 -8.95149517 -0.28768301 0.68339598 -8.63435745
		 -0.296013 0.63103199 -8.44908047 -0.42944601 0.81542897 -8.21450233 -0.17625199 0.55898398 -8.64889812
		 0 0.49141601 -8.52376747 -0.206433 0.55879098 -8.16310596 0 0.798329 -9.071948051
		 -0.187217 0.74539202 -8.87125683 0 6.086665154 -5.17474413 -0.31441599 5.68128014 -5.42477894
		 -0.53479701 5.80231094 -5.1864152 -0.308476 6.29262304 -4.99949217 -0.71495599 5.31286287 -5.19677305
		 -0.72757602 5.37486792 -4.89387512 -0.69851297 5.8105731 -4.9088378 -0.73555398 5.20616007 -4.60802889
		 -0.713341 4.90384197 -4.76551819 0 0.640275 -8.82363033 -0.67507797 3.97736812 -6.068716049
		 -1.17576396 2.51604295 -5.90193176 -0.921583 3.49893188 -5.33253479 -0.86551899 4.2701931 -5.65052891
		 0 4.23530293 -6.34278297 -0.35596699 3.54700804 -6.47607994 -0.44293201 4.60617018 -6.13248777
		 -0.95018202 2.71931505 -4.76287699 -0.463673 2.33649611 -4.79773808 0 3.054109097 -4.51319218
		 -0.344064 3.63390803 -4.40594101 -0.77171999 3.908288 -4.83788776 -0.85561001 2.7197001 -5.18651915
		 0 4.88951015 -6.33976698 -0.62831599 5.043437004 -5.65655184 -0.56176603 4.27715683 -4.51117802
		 0 4.12776709 -4.33864498 -0.32762 4.52552319 -4.3784709 -0.83116901 4.63341522 -5.12680387
		 -0.29279599 3.43029499 2.19369888 -0.55345798 3.39221692 1.584764 -0.35861599 3.37308693 1.076462984
		 0 3.27980494 1.60058904 -0.82011402 6.92812395 2.0080490112 -0.38335499 7.28337622 2.088800907
		 0 7.28327799 1.82657301 -0.44851401 7.13429785 1.66438103 -1.50157499 6.088240147 2.28090405
		 -1.084388018 6.64044714 2.48848701 -1.27424705 6.561831 1.81874502 -1.82798696 5.57233715 1.89154804
		 -1.86856198 4.93192577 2.22438598 -1.62727797 5.41665411 2.67645788 -1.73974895 4.29418707 2.37809491
		 -1.44860005 3.76710796 2.33918905 -1.34655797 4.10863686 2.76898003 -1.609339 4.67326498 2.832793
		 -0.84201598 3.54851103 2.33456802 -0.63836497 3.75332594 2.70134306 -1.0034550428 3.91269994 2.81570792
		 0 3.65414405 2.75043392 -0.39504901 4.061048031 3.18726993 -0.87324798 7.063569069 -1.55425501
		 -0.47161901 7.28445911 -1.071228981 0 7.36229992 -1.55472898 -0.43994799 7.26954317 -2.10994291
		 -1.474244 6.18649721 -1.55557799 -1.24506998 6.68394423 -1.070116997 -1.20229495 6.67621899 -2.1173861
		 -1.63373494 5.62286615 -2.013935089 -1.62411201 5.040051937 -1.48524296 -1.61226904 5.55929804 -1.09995997
		 -1.46714997 4.58724594 -1.63745999 -1.21701205 4.40799999 -1.45943296 -1.487252 4.61111784 -1.17632306
		 -0.57694298 4.083160877 -1.58604503 -0.96918899 4.16423893 -1.28972006 -0.86413002 4.15747595 -1.63966703
		 0 3.94124198 -1.65417397 -0.320755 3.92519593 -1.37817705 -0.248078 4.041062832 -2.055233002
		 -0.84934598 6.98854113 -2.72105098 0 7.28309822 -2.728791 -0.43636101 7.10018587 -3.33100009
		 -1.47782695 6.17495823 -2.68528891 -1.18740296 6.55112791 -3.30239701 -1.74579406 5.076463223 -2.4823401
		 -1.62011099 5.61785603 -3.18662691 -0.42124701 4.1114912 -2.82926607 -0.218403 4.31752586 -3.88167596
		 0 4.12934399 -2.91564012 -1.44678497 0.44807401 -3.14818001 -1.29258704 0.17010701 -3.0073130131
		 -1.500278 0.043954998 -2.78420901 -1.63001204 0.206965 -2.84745407 -1.13838995 0.44797599 -3.15718389
		 -0.955163 0.206965 -2.8573761 -1.084897041 0.043954998 -2.78570509 -0.88778901 0.30037001 -2.70246005
		 -0.98217797 0.65911001 -2.97651291 -0.98733902 0.60185099 -2.78880906 -1.29258704 0.13601799 -2.024374008
		 -1.085221052 0.023463 -2.12221599 -0.94954699 0.148964 -2.2077651 -1.11034 0.26294699 -2.1051681
		 -1.63562703 0.148964 -2.2077651 -1.49995399 0.023463 -2.12221503 -1.47483504 0.26294699 -2.1051681
		 -0.846246 0.021991 -2.59337401 -1.045876026 0 -2.44068289 -1.29258704 0 -2.62432003
		 -1.45807898 1.45381606 -2.92314291 -1.56178904 1.11750495 -3.0066668987 -1.44625401 0.84706402 -2.78485298
		 -1.29004097 1.13039601 -2.79766393 -1.11183 1.45020902 -2.91508293 -1.13637495 0.84643602 -2.78167105
		 -1.0081080198 1.11363602 -3.006207943 -1.12762201 1.38163996 -3.63865209 -0.99803001 0.95102102 -3.32027197
		 -1.29258704 0.896617 -3.46939397 -1.45447695 1.39023805 -3.63136506 -1.586254 0.95195299 -3.30925488
		 -1.47732306 2.053208113 -2.802737 -1.59802902 1.73405504 -3.10147595 -1.29348195 1.72394502 -2.82237291
		 -1.087317944 2.036638975 -2.77483606 -0.95858997 1.72316098 -3.068677902 -0.94515097 1.43556297 -3.30426407
		 -0.943277 1.66966105 -3.58754611 -0.88687199 1.96461296 -3.23122001 -1.092905045 1.94856703 -3.621418
		 -1.29293895 1.67340302 -3.72914791 -1.45495999 2.013678074 -3.58461595 -1.60604894 1.72903001 -3.54857898
		 -1.44868803 3.023328066 -2.24598598 -1.624663 2.56577706 -2.66949892 -1.26032901 2.5056901 -2.47678804
		 -1.0027689934 2.88540196 -2.29231691 -0.89140302 2.3959341 -2.77391005 -0.87924701 2.34131694 -3.37189698
		 -0.80304402 2.78028202 -2.8748641 -1.024999976 2.92126298 -3.36730504 -1.25364196 2.478719 -3.49690199
		 -1.42213798 3.063252926 -3.35534501 -1.60408998 2.52952695 -3.31441212 -1.71087694 2.56992793 -2.88507605
		 -1.73427296 3.094094992 -2.53800988 -1.45600796 3.84826207 -1.75980699 -1.65186 3.50802112 -2.13435197
		 -1.20562005 3.36039495 -1.90715504 -0.923841 3.55572605 -1.76085198 -0.78836799 3.13642693 -2.25532889
		 -0.79705602 3.17626595 -3.25392699 -0.67765802 3.45939803 -2.65249205 -0.92697102 3.70524502 -3.64286208
		 -1.20754194 3.46903896 -3.54291511 -1.404006 3.95700693 -3.72220898 -1.64485896 3.55718088 -3.34401107
		 -1.81012106 3.56353998 -2.70926404 -1.80215895 4.035638809 -2.32572007;
	setAttr ".vt[1162:1327]" -1.53929806 0 -2.44068289 -1.73892903 0.021991 -2.59437299
		 -1.60045195 0.65983701 -2.97069097 -1.69738603 0.30037001 -2.71807408 -1.59783602 0.60185099 -2.80442405
		 -0.85159701 0.016433001 -2.35562992 -1.29258704 0 -2.21733689 -1.73357701 0.016433001 -2.35562992
		 -1.74028504 0.22957601 -2.46234393 -1.63526905 0.32767901 -2.27956295 -1.658427 0.439091 -2.564219
		 -0.84489 0.22957601 -2.45949197 -0.94990498 0.32767901 -2.27956295 -1.095479012 0.554425 -2.61887908
		 -1.29258704 0.49827 -2.42205501 -1.091599941 0.45354199 -2.30865097 -0.92674702 0.439091 -2.54710889
		 -1.48969495 0.554425 -2.6359899 -1.49357402 0.45354199 -2.31150293 -1.29258704 0.66227299 -2.66620493
		 -1.29258704 0.36974901 -2.1250639 -1.24332404 0.58725202 1.14377296 -1.087013006 0.27518901 1.19362199
		 -1.29282606 0.070033997 1.44289398 -1.43796599 0.29156199 1.36087501 -0.93500799 0.59482801 1.14022505
		 -0.78027999 0.33787 1.36794901 -0.88120002 0.070800997 1.44245899 -0.78620499 0.71869099 1.42096901
		 -0.78203201 0.60416698 1.64960301 -0.684093 0.312527 1.65118694 -0.74424797 0.130107 2.33778405
		 -0.90476501 0.230298 2.44748592 -1.087013006 0.115762 2.52468705 -0.88156402 0.001447 2.44472909
		 -1.269261 0.230298 2.44748592 -1.42977798 0.130107 2.33778405 -1.29246199 0.001447 2.44472909
		 -0.68695098 0.061914001 1.77056897 -0.84222698 0 2.042443991 -1.087013006 0 1.73124897
		 -1.24581099 1.45169103 1.71111596 -1.35298395 1.057041049 1.57324803 -1.23974395 0.80753899 1.70851898
		 -1.090939045 1.08354795 1.73721194 -0.95384598 1.46373498 1.68958199 -0.938209 0.81582099 1.70623004
		 -0.84890902 1.077267051 1.55813706 -0.940651 1.39302301 1.092031002 -0.83465701 0.99549198 1.22580004
		 -1.091318965 0.94651502 1.057881951 -1.27023995 1.37175 1.097673059 -1.413131 0.95943803 1.21427202
		 -1.27491903 2.40529299 1.823506 -1.40190697 1.92026103 1.65044296 -1.089859009 1.93941295 1.78698599
		 -0.91880298 2.4140451 1.76774395 -0.83133203 1.94174695 1.57079005 -0.762523 2.39646602 1.35336006
		 -0.805237 1.44142199 1.38534296 -0.82132101 1.90774703 1.17397201 -0.95232499 2.3561759 0.98409897
		 -1.11448896 1.873366 1.0036549568 -1.31847203 2.33467889 0.98554999 -1.43604803 1.90775895 1.13924003
		 -1.50702703 1.91756701 1.32251 -1.54301596 2.3799541 1.22073805 -1.32830095 3.054482937 2.0019900799
		 -1.47232699 2.75126505 1.78280103 -1.089735985 2.75102806 1.92933404 -0.879489 3.037379026 1.95284498
		 -0.76764703 2.7627511 1.64594805 -0.70711398 3.019227982 1.38652802 -0.80504799 2.72183108 1.067217946
		 -0.98750198 3.013005018 0.87624198 -1.17520797 2.68568802 0.810754 -1.41011906 3.010782003 0.90283
		 -1.50437796 2.68294406 1.046901941 -1.60373294 2.71017504 1.40852404 -1.63769901 3.012173891 1.24324298
		 -1.58263898 3.40961504 2.0092420578 -1.11844599 3.35142398 2.19151807 -0.67866701 3.26875496 1.88793302
		 -0.78845102 3.28902698 1.10857499 -1.27196097 3.44117308 0.92857802 -1.062561989 3.67215896 0.96012199
		 -1.63263702 3.3801651 1.12948596 -1.57544398 3.8501811 1.09881103 -1.79212201 3.80542707 1.44710398
		 -1.72173095 3.38217998 1.58394301 -1.33179796 0 2.042443991 -1.55217195 0 1.75078905
		 -1.48993301 0.310653 1.65162206 -1.391994 0.59675902 1.650038 -1.39605606 0.70283401 1.42680705
		 -0.69243097 0.043285001 2.19507504 -1.087013006 0 2.31918097 -1.54989004 0 2.156986
		 -1.42941904 0.302021 2.26377702 -1.53278506 0.22046 2.040790081 -1.45230901 0.432668 1.93992996
		 -0.64124 0.22046 2.040790081 -0.74460602 0.302021 2.26377702 -0.88990402 0.55080301 1.87789905
		 -1.087012053 0.49092999 2.10238194 -0.88602602 0.43530899 2.22473598 -0.72171599 0.432668 1.93992996
		 -1.28411996 0.54969698 1.87789905 -1.28799903 0.43530899 2.22473598 -1.087013006 0.64646399 1.82134497
		 -1.087013006 0.340426 2.42182708 -0.96725899 7.0040931702 0.81241399 -0.4984 7.18872499 1.124915
		 0 7.28136301 0.79543501 -0.496546 7.22665787 0.44663501 -1.65139699 6.19590712 0.83244902
		 -1.35609901 6.64074612 1.16042495 -1.34474897 6.68393612 0.46644601 -1.83836198 4.95222378 0.83583999
		 -1.83230102 5.58065414 1.173895 -1.78996694 5.56860495 0.48781699 -1.44376004 4.076090813 0.78102797
		 -1.67560303 4.39473486 1.042724013 -1.698789 4.45987892 0.46804801 -0.79195899 3.5960331 0.746544
		 -1.19258702 3.84488201 0.41894099 0 3.36408997 0.66029298 -0.435563 3.51211405 0.33606401
		 -0.91637099 7.069180965 -0.67593098 -0.48402199 7.26961422 -0.31540099 0 7.34214687 -0.67602801
		 -1.51326597 6.16406679 -0.67881298 -1.29063296 6.68985987 -0.30721501 -1.634045 4.94487095 -0.76283002
		 -1.67873204 5.52691078 -0.32839701 -1.29993796 4.26905012 -0.88288999 -1.55777204 4.48354578 -0.40882599
		 -0.71693099 3.92110991 -0.99723399 -1.094537973 3.96752 -0.51551902 0 3.76033497 -1.038920999
		 -0.40888801 3.67957902 -0.60408098 -0.94243097 7.048058987 0.071028002 0 7.31042624 0.065967999
		 -1.59311199 6.18549395 0.088292003 -1.75139904 4.92004824 0.069762997 -1.42844796 4.13432503 0.0047419998
		 -0.83341402 3.72355008 -0.077358998 0 3.52856493 -0.14653701 -0.63394803 6.32145691 -4.69419289
		 -0.38362899 6.76474285 -4.28352785 0 6.65559006 -4.62024784 -0.58662301 4.36363697 -4.041201115
		 -0.38314101 4.50158024 -4.23161221 0 4.384058 -4.11104298 -0.94560099 5.7025938 -4.49140692
		 -0.99825698 6.24445295 -4.24050903 -0.61412799 6.91593122 6.22887993 -0.63301301 6.83841085 5.86960793
		 -0.485282 6.59391308 6.15289116 -0.495848 6.67269087 6.47929096 -0.386682 6.52992582 6.63096189
		 -0.32568699 6.59611416 6.86846399 -0.441964 6.74491787 6.78588295 -0.85518003 7.11189413 5.67780399
		 -0.88745397 6.98629189 5.45101595 -0.62759697 6.77795792 5.628232;
	setAttr ".vt[1328:1493]" -1.25784695 8.72596455 4.37517881 -1.40323305 8.21845818 4.4682312
		 -1.20426202 8.42289829 4.82571888 -1.05971396 8.79496574 4.69155502 -0.98026299 7.47629404 5.52912188
		 -1.035256982 7.86359882 5.40042305 -1.27352703 7.61838388 5.17726421 -1.152601 7.251266 5.29666996
		 -1.050685048 6.477211 4.13023186 -0.835567 5.89788389 4.072351933 -0.52846599 5.98684597 4.33694601
		 -0.81993997 6.43337202 4.45274496 -1.42481697 7.37567377 3.92890501 -1.238711 7.0068449974 4.0011582375
		 -1.339324 7.062430859 4.28911114 -1.45789099 7.90208006 4.18567896 -1.33229303 8.43811607 4.030450821
		 -1.19761097 8.019487381 3.79746699 0 9.16601944 3.98231006 -0.371245 8.94883347 3.69167709
		 -0.629049 9.15643406 4.074771881 -0.307825 9.21144581 4.31901407 0 8.88531399 5.24800587
		 -0.342271 9.036974907 4.955338 -0.670111 8.85772324 5.22381878 -0.31348699 8.69771862 5.50994396
		 -0.178565 6.65826988 7.064118862 -0.17594001 6.48353004 6.80626488 0 6.52822399 6.96384382
		 0 6.41686821 6.66795683 -0.218657 6.46287203 6.4549489 -0.258059 6.5616169 5.85875893
		 0 6.46157503 6.17165279 -0.25310999 6.64823484 5.39983082 0 6.56742907 5.59502792
		 -0.46557099 6.6854682 5.60806417 -0.27303201 5.53936005 4.15631104 0 5.82536983 4.35892105
		 -0.25560701 6.14514399 4.51938581 0 7.97155905 2.71014905 -0.30391601 7.61748314 2.53480101
		 -0.60181803 7.73701906 2.92837095 -0.31595501 8.26228619 3.028845072 -0.907417 7.15213823 2.98832798
		 -1.14035594 7.11845112 3.515028 -0.95339203 7.80497122 3.39426589 -1.162341 5.81941223 3.67764902
		 -1.030024052 5.13897896 3.59489989 -0.61203802 5.3182621 3.9051559 -0.346127 4.81548691 3.68899608
		 0 5.14237213 3.9221251 0 6.33651686 4.63091707 -0.247136 6.53007507 4.73687506 -0.51586902 6.45232916 4.62158298
		 -1.10792005 6.77236319 4.57389593 -0.79500902 6.67962122 4.76139498 -1.58113003 7.331429 4.42620707
		 -1.34091794 7.03848505 4.72692108 -1.35720396 9.93620682 4.66914797 -1.21561801 9.86163807 4.65221977
		 -1.25620401 9.90077496 4.51647377 -1.409217 9.95879173 4.52736092 0 9.18558025 4.63900089
		 -0.58954298 9.18783855 4.65373516 -1.348665 9.15310478 4.33065319 -1.50461304 8.77936935 4.17757702
		 -1.11460495 9.065542221 4.47663689 -1.47780097 9.097322464 4.13292503 -1.27590799 8.82140446 3.97282195
		 -0.96192098 9.16590595 3.98696709 -0.95511001 9.51650333 4.28370285 -0.69347799 9.40288353 4.42394876
		 -0.88565302 9.56859779 4.698915 -0.84122002 9.28433704 4.93696213 -1.53895998 9.85561466 4.51246023
		 -1.42075396 9.60239315 4.42626381 -1.35004795 9.78101254 4.52940321 -1.44524896 9.78647518 4.33292007
		 -1.55628204 9.66550732 4.32601976 -1.23884296 9.69765568 4.59502411 0 4.52812719 -4.29865503
		 -0.67444301 4.69687223 -4.33200979 -1.68261397 4.44942522 -1.92443705 -1.17873096 4.069012165 -1.63188303
		 -0.65067399 3.80646706 -1.99467504 -0.58528 3.92488003 -3.58516002 -1.029147029 4.24151087 -3.98495698
		 -1.12003303 4.6910491 -4.13484383 -1.54824996 4.494977 -3.79466009 -1.80136502 4.57221508 -2.9033761
		 -0.97650898 4.97652006 -4.29030895 0 4.39733601 3.4708159 -0.76068997 4.54742908 3.45402908
		 -1.16128695 4.34633493 3.17821193 -1.38733101 4.93934107 3.24425602 -1.39470804 5.70379114 3.16599798
		 -1.19668603 6.48484612 3.070833921 -0.66770399 7.19327497 2.49388409 0 7.50316 2.23426294
		 0 8.4817667 5.68869114 -0.51211202 8.41907787 5.62591505 -0.22951201 8.22794819 5.80982304
		 -1.13847303 7.063848972 5.13309813 -0.81144702 6.88484478 5.28447104 0 6.63909388 5.21418285
		 -0.482761 6.74848413 5.253304 -0.26250499 6.7032609 5.07400322 -0.156875 6.95238876 7.22386122
		 -0.31808999 6.82566023 7.050899982 0 6.79261589 7.1792922 -0.41488501 7.88708782 5.85963917
		 -0.65570998 8.031510353 5.69234705 -0.74599701 7.61480188 5.77640486 -0.54237998 7.54379177 5.94485998
		 -0.70460498 7.24467182 5.92726517 -0.505077 6.99249601 6.59388685 -0.557275 7.29625702 6.27818012
		 -0.341463 7.024721146 6.92583799 0 7.97790098 5.93142605 -0.20483001 7.66478586 5.98182583
		 -0.21129701 7.24326801 6.70935392 0 7.46545219 6.38865614 -0.39372599 7.41563511 6.29553699
		 0 7.10086298 7.011507988 -1.25150597 9.27572346 4.055799961 -1.0068420172 8.67833996 3.81437302
		 -0.681548 8.49335575 3.4598949 -1.052914023 9.38359833 4.66873884 -0.91862899 9.0034608841 4.72554588
		 -0.86789 8.87027264 4.97104692 -0.77691501 8.60010338 5.43635607 -0.87441498 8.18710995 5.49085283
		 -0.261556 1.82518601 -7.97695494 -0.51779199 1.953264 -7.53683281 -0.32401401 2.47114801 -7.13196182
		 0 2.12578607 -7.61534023 -0.24196 1.13480997 -5.70710993 -0.53814101 0.90517497 -6.50466681
		 -0.272365 0.59151798 -7.032574177 0 0.806454 -6.3237319 -0.82074499 2.10777903 -6.53826904
		 -0.603293 1.45876002 -7.78082085 -0.83021998 1.30762398 -6.84161711 -0.60574001 0.89664 -7.29701281
		 -0.88869703 1.55881 -6.15627098 -0.65214998 2.74587011 -6.54311085 -0.93237603 2.34034204 -5.85484791
		 0 3.0019619465 -6.89913511 -0.64523602 1.999125 -5.25115108 0 1.86614895 -5.13539505
		 -0.38994101 1.47505903 -8.20597267 -0.55448502 1.10980999 -7.95489788 0 1.60694599 -8.32970905
		 -0.397282 0.66660202 -7.75232792 0 0.49817801 -7.68331194 -1.494138 7.685884 4.69041395
		 0 8.67422771 3.30894494 -1.50728703 7.28807116 4.89710379 -0.36788899 0.93854398 -8.70199776
		 -0.19275001 1.10425103 -8.84869099 -0.366074 0.73823899 -8.47932434 -0.18703 0.538423 -8.47723198
		 -0.175584 0.81902599 -8.96284771 -0.31209001 5.988554 -5.21779394 -0.67079902 5.59587622 -5.041377068
		 -0.704189 5.17626476 -4.76036692;
	setAttr ".vt[1494:1659]" -0.182613 0.65147299 -8.76344395 -0.85571301 3.74048996 -5.71221781
		 -0.39881399 4.14870405 -6.28609324 -0.44504699 2.96905899 -4.56105185 -0.87671101 3.24913001 -4.97869301
		 -0.362147 5.13409901 -5.87887096 -0.31988901 4.16646624 -4.37396717 -0.73696101 4.45322323 -4.78233194
		 -0.79690802 4.82702923 -5.43732691 -0.30959201 3.34704494 1.60765302 -0.41847801 7.18384218 1.88211405
		 -1.18806505 6.55871677 2.16368508 -1.739887 5.52931881 2.29158998 -1.55350494 4.19599104 2.59022307
		 -0.84044302 3.75184202 2.6236589 -0.342603 3.69686294 2.74049306 -0.45464 7.28812981 -1.55367601
		 -1.21978903 6.68656778 -1.56020498 -1.61659503 5.59272385 -1.524423 -1.47406995 4.66328001 -1.45653999
		 -0.90348202 4.21980286 -1.51504195 -0.28085801 3.98254395 -1.63511896 -0.438793 7.20739317 -2.72603798
		 -1.20341897 6.6348052 -2.717103 -1.64938498 5.63777685 -2.59670711 -0.222929 4.16157198 -2.89443493
		 -1.46913099 0.17581999 -2.94987798 -1.11604297 0.17581999 -2.95586109 -0.94196898 0.424023 -2.82875109
		 -1.10260296 0.13601799 -2.084954977 -1.48257101 0.13601799 -2.084954977 -1.057834029 0 -2.61372709
		 -1.44646502 1.13553703 -2.86584306 -1.12852395 1.13302302 -2.86452103 -1.13905203 0.91280502 -3.42266107
		 -1.446123 0.91319501 -3.41656089 -1.47187698 1.72851706 -2.91410494 -1.10316598 1.72666097 -2.88847709
		 -0.91741699 1.69993901 -3.31923699 -1.11369395 1.66581404 -3.69151998 -1.45917797 1.69825602 -3.66893911
		 -1.46388102 2.5214591 -2.55304408 -1.049075007 2.45440507 -2.56429195 -0.84859997 2.35861301 -3.063992977
		 -1.060894966 2.41313601 -3.46849895 -1.43655503 2.51292896 -3.43372893 -1.70760906 2.70271397 -2.70259094
		 -1.44888198 3.4488759 -1.96252 -0.96273702 3.235075 -1.99437904 -0.75064403 3.12796092 -2.72114301
		 -0.99255401 3.33468795 -3.45237994 -1.42988503 3.53189206 -3.48853302 -1.77389395 3.5453341 -2.39652705
		 -1.52734005 0 -2.61372709 -1.64320695 0.424023 -2.83417511 -1.06004405 0 -2.26732612
		 -1.52513099 0 -2.26732612 -1.71482801 0.187803 -2.33386803 -1.732108 0.25132599 -2.59227204
		 -0.87034601 0.187803 -2.33386803 -1.08781898 0.499731 -2.46919799 -1.49735498 0.499731 -2.48060489
		 -1.11851299 0.66178203 -2.7114141 -1.46666205 0.66178203 -2.722821 -1.10289001 0.371701 -2.18352008
		 -1.48228502 0.371701 -2.18352008 -0.85306603 0.25132599 -2.58086491 -1.26248896 0.28013501 1.249663
		 -0.91153699 0.28320599 1.24792397 -0.73746198 0.47286999 1.50907803 -0.89702803 0.115762 2.46409607
		 -1.27699804 0.115762 2.46409607 -0.854433 0 1.73776197 -1.23714995 1.076758027 1.69216001
		 -0.952582 1.087749958 1.68300295 -0.94117999 0.963283 1.10543001 -1.250072 0.948331 1.11092901
		 -1.25822902 1.93307304 1.75776505 -0.939789 1.94399798 1.71741402 -0.78780103 1.92758 1.36885297
		 -0.94401598 1.88849795 1.048517942 -1.29133797 1.86588705 1.05054903 -1.51010501 2.040680885 1.21976602
		 -1.29639399 2.75273705 1.89973795 -0.89927697 2.75938511 1.84181905 -0.73747897 2.74606991 1.35047698
		 -0.96662498 2.70252609 0.90798002 -1.35675001 2.68206191 0.91866499 -1.58418095 2.69284201 1.21579099
		 -1.376284 3.389606 2.14579201 -0.85771698 3.30538893 2.11402798 -0.665869 3.2587781 1.48784006
		 -1.01554203 3.3730731 0.94496602 -1.48253 3.42358398 0.99098003 -1.70766997 3.37077689 1.34141302
		 -1.319592 0 1.73776197 -1.43656504 0.46537301 1.51081705 -0.85557401 0 2.26511598
		 -1.31845105 0 2.26511598 -1.50814903 0.173141 2.20121002 -1.52435994 0.247656 1.84293699
		 -0.66587698 0.173141 2.20121002 -0.882245 0.49239099 2.046616077 -1.29177999 0.49239099 2.046616077
		 -0.912938 0.647726 1.76781595 -1.26108801 0.64329898 1.76781595 -0.89731503 0.342379 2.36302996
		 -1.27671099 0.342379 2.36302996 -0.649665 0.247656 1.84293699 -0.50196701 7.21046209 0.80119401
		 -1.3592 6.66859007 0.823039 -1.81745398 5.57800102 0.84002602 -1.69510901 4.4559269 0.80996102
		 -1.14037895 3.79969501 0.767681 -0.40549099 3.43440008 0.69423801 -0.479635 7.27983904 -0.67659497
		 -1.26730895 6.68643713 -0.67167503 -1.63505995 5.53453207 -0.71233398 -1.511572 4.54212809 -0.82089299
		 -1.031440973 4.068385124 -0.94518501 -0.36725599 3.80819893 -1.028489947 -0.49011099 7.2491312 0.066722997
		 -1.31916904 6.69002724 0.080926999 -1.73704696 5.54492188 0.084997997 -1.63659298 4.46260786 0.041303001
		 -1.16278005 3.89692092 -0.034800999 -0.434176 3.58736205 -0.122969 -0.33844101 6.55693913 -4.65373182
		 -0.31989199 4.41978121 -4.11624622 -0.83246702 6.036918163 -4.62247086 -0.56503701 6.74768591 6.18941212
		 -0.424234 6.62915611 6.70931816 -0.76051903 6.91821194 5.65192318 -1.23580599 8.55815315 4.5699439
		 -1.12542796 7.55480003 5.34933615 -0.81405902 6.20069504 4.27642822 -1.329211 7.15081596 4.08234787
		 -1.35770905 7.9406848 3.98088288 -0.340639 9.14106369 4.0083217621 -0.33505601 8.87611675 5.23994398
		 -0.175703 6.55259895 6.94570303 -0.193341 6.45455408 6.65562487 -0.242641 6.50568724 6.16540003
		 -0.25768101 6.60928106 5.60681009 -0.25996101 5.86402512 4.35814905 -0.29818001 7.91151285 2.76592398
		 -0.91637099 7.453722 3.19261193 -0.922732 5.53796005 3.8343451 -0.30508399 5.18636799 3.92496896
		 -0.249707 6.36749792 4.62893105 -0.814942 6.58289814 4.60748005 -1.35579896 7.033883095 4.50810289
		 -1.32424498 9.9478054 4.59981203 -0.32078201 9.16275024 4.64152384 -1.29989004 8.92807102 4.3136692
		 -1.39025998 8.80038643 4.075200081 -0.81299901 9.30236626 4.17007399 -0.75426197 9.35442448 4.68027782
		 -1.43237698 9.75571442 4.4857502 -1.49944103 9.8584404 4.4320488 -1.31120706 9.80944347 4.59020901
		 -0.36535999 4.58632421 -4.32251883 -1.46161306 4.27164602 -1.69500101 -0.88094401 3.8996551 -1.682109
		 -0.57034099 3.8323369 -2.71857595 -0.79166198 4.084765911 -3.85788608;
	setAttr ".vt[1660:1825]" -1.28871 4.3767581 -3.945292 -1.79475498 4.54421616 -2.37316704
		 -0.93791503 4.79737282 -4.26374102 -0.38616899 4.43715191 3.47326708 -1.11191201 4.718997 3.38651395
		 -1.53444004 5.19594383 3.00079298019 -0.97713101 6.85965014 2.7584939 -0.33873701 7.41801405 2.30772805
		 -0.266559 8.47061539 5.67053986 -1.01324904 7.03093195 5.28366804 -0.255954 6.67803717 5.22810411
		 -0.170462 6.79705191 7.15170002 -0.59838802 7.78091002 5.81889296 -0.60189301 7.11311722 6.27424192
		 -0.42005199 6.89374304 6.85886812 -0.840967 7.36794376 5.7243371 -0.21223 7.9541502 5.90648079
		 -0.213137 7.44314003 6.36334181 -0.18916 7.086940765 6.98436022 -1.11730003 9.00081253052 3.94468808
		 -0.96787697 8.24645138 3.61620998 -0.96819401 9.18055439 4.69336081 -0.92907399 8.90907097 4.78839922
		 -0.71565598 8.30906677 5.564641 -0.26731199 2.11042309 -7.59734297 -0.28639001 0.80520397 -6.3832469
		 -0.92904401 1.13554299 -7.786129 -0.72155899 1.10599399 -6.63762283 -0.86157799 2.51429605 -6.20875502
		 -0.491941 2.74497604 -7.20659399 -0.34780401 1.90382004 -5.13768816 -0.85321403 2.17515206 -5.51863623
		 -0.50387901 1.31743503 -8.080499649 -0.23226 1.57018101 -8.29435539 -0.23301101 0.54017103 -7.70207214
		 -0.51253301 0.87881398 -7.83763599 -0.50921601 7.4223609 6.19337606 -1.50787699 7.79570818 4.43107796
		 -0.35166299 8.63198376 3.35130692 -1.40314603 7.63691902 4.93702078 -1.25696397 7.04955101 4.93315506
		 -0.81926298 8.75444603 5.19369984 -1.13371003 8.31846714 5.070259094 -0.98561299 8.099733353 5.40868711
		 -0.25276899 6.63186502 4.89331484 -0.75608999 6.75389624 4.93525314 -0.651272 6.80405903 5.27322102
		 -0.57388198 6.74662304 5.56470013 -1.17228901 6.78803921 3.852 -1.054430008 9.7364521 4.68740797
		 -1.11800206 9.73649025 4.40513706 -1.36171401 9.56492233 4.19635677 -1.54110503 9.3987484 4.2214222
		 -1.39090204 9.38969994 4.37137508 -1.14793801 9.55583572 4.62858105 -1.25604105 6.13657093 3.40018201
		 -0.47786799 7.14963198 1.41231298 -1.84730196 5.58410692 1.52169204 -1.32902002 6.59716797 1.48832595
		 -1.69032001 4.22028923 1.14201796 -1.88908398 4.35289717 1.497118 -1.853163 4.34603691 2.10793591
		 -1.68892097 3.40113306 1.814255 -1.570611 2.73336291 1.60829496 -1.47790003 1.89626002 1.48571396
		 -1.40021002 1.014055967 1.40587497 -0.80675 1.040001035 1.39121997 -0.974989 1.042454958 -3.16251993
		 -1.60000098 1.045359015 -3.15774202 -1.63161302 1.73423696 -3.32228494 -1.67299998 2.52798009 -3.097449064
		 -1.75567997 3.56536293 -3.032782078 -1.70576894 4.54961681 -3.377249 -1.50247598 5.54349709 -3.69758105
		 -1.11848903 6.41399384 -3.81631207 -0.41784 6.94643116 -3.85386491 -0.982889 5.30906296 -4.38787222
		 -1.17103803 4.089317799 2.93902302 0.36788899 0.93854398 -8.70199776 0.19275001 1.10425198 -8.84869194
		 0.366074 0.73823899 -8.47932434 0.18703 0.538423 -8.47723007 0.175584 0.81902599 -8.96284676
		 0.31209001 5.988554 -5.21779394 0.67079902 5.59587622 -5.041376114 0.704189 5.17626476 -4.76036692
		 0.182613 0.65147299 -8.76344395 0.85571301 3.74048996 -5.71221685 0.39892599 4.14846706 -6.28625011
		 0.44504699 2.96905899 -4.56105185 0.87671101 3.24913001 -4.97869301 0.362147 5.13409901 -5.87887096
		 0.31988901 4.16646624 -4.37396622 0.73696101 4.45322323 -4.78233194 0.79690802 4.8270278 -5.43732691
		 0.30959201 3.34704494 1.60765302 0.41847801 7.18384218 1.88211405 1.18806505 6.55871582 2.16368389
		 1.73982298 5.52884388 2.29123402 1.55350494 4.19567013 2.59022307 0.84044302 3.75184202 2.6236589
		 0.342603 3.69686294 2.74049306 0.45464 7.28812981 -1.55367601 1.21978903 6.68656778 -1.56020498
		 1.61659503 5.59272385 -1.524423 1.47406995 4.66293192 -1.45653999 0.90348202 4.21945477 -1.51504195
		 0.28085801 3.98254395 -1.63511896 0.438793 7.20739412 -2.72603798 1.20341897 6.6348052 -2.717103
		 1.64938498 5.63777685 -2.59670711 0.222929 4.16157198 -2.89443493 1.46913099 0.17581999 -2.94987798
		 1.11604297 0.17581999 -2.95586109 0.94196898 0.424023 -2.82875109 1.10260296 0.13601799 -2.084954977
		 1.48257101 0.13601799 -2.084954977 1.057834029 0 -2.61372709 1.44646502 1.13553703 -2.86584306
		 1.12852395 1.13302302 -2.86452103 1.13905203 0.91280502 -3.42266107 1.446123 0.91319501 -3.41656089
		 1.47187698 1.72851706 -2.91410494 1.10316598 1.72666097 -2.88847709 0.91741699 1.69993901 -3.31923699
		 1.11369395 1.66581404 -3.69151998 1.45917797 1.69825602 -3.66893911 1.46388102 2.52145791 -2.55304408
		 1.049075007 2.45440507 -2.56429195 0.84859997 2.35861301 -3.063992977 1.060894966 2.41313601 -3.46849895
		 1.43655503 2.51292896 -3.43372893 1.70760906 2.70271397 -2.70259094 1.44888103 3.4488759 -1.96252
		 0.96273702 3.235075 -1.99437904 0.75064403 3.12796092 -2.72114205 0.99324101 3.33301902 -3.45202994
		 1.43057203 3.53022408 -3.48818207 1.77389395 3.5453341 -2.39652705 1.52734005 0 -2.61372709
		 1.64320695 0.424023 -2.83417511 1.06004405 0 -2.26732612 1.52513099 0 -2.26732612
		 1.71482801 0.187803 -2.33386803 1.732108 0.25132599 -2.59227204 0.87034601 0.187803 -2.33386803
		 1.08781898 0.499731 -2.46919799 1.49735498 0.499731 -2.48060489 1.11851203 0.66178203 -2.7114141
		 1.46666205 0.66178203 -2.722821 1.10289001 0.371701 -2.18352008 1.48228502 0.371701 -2.18352008
		 0.85306603 0.25132599 -2.58086491 1.26248896 0.28013501 1.249663 0.91153699 0.28320599 1.24792397
		 0.73746198 0.47286999 1.50907803 0.89702803 0.115762 2.46409607 1.27699804 0.115762 2.46409607
		 0.854433 0 1.73776197 1.23714995 1.077064991 1.69216001 0.952582 1.087749958 1.68300295
		 0.94117999 0.96264499 1.10543001 1.250072 0.94656301 1.11092901 1.25822902 1.93338501 1.75776505
		 0.939789 1.94399798 1.71741402 0.78780103 1.92758 1.36885297;
	setAttr ".vt[1826:1989]" 0.94401598 1.88679802 1.048517942 1.29133797 1.86005795 1.05054903
		 1.51010501 2.035175085 1.21976602 1.29639399 2.75273705 1.89973795 0.89927697 2.75938511 1.84181905
		 0.73747897 2.74606991 1.35047698 0.96662498 2.70142293 0.90798002 1.35675001 2.67791605 0.91866499
		 1.58418095 2.68979907 1.21579099 1.376284 3.389606 2.14579201 0.85771698 3.30538893 2.11402798
		 0.665869 3.2587781 1.48784006 1.015491009 3.37334609 0.94457603 1.48240399 3.42418694 0.99013001
		 1.70750499 3.37146401 1.34039605 1.319592 0 1.73776197 1.43656397 0.465368 1.51081705
		 0.85557401 0 2.26511598 1.31845105 0 2.26511598 1.50814903 0.173141 2.20121002 1.52435994 0.247656 1.84293699
		 0.66587698 0.173141 2.20121002 0.882245 0.49239099 2.046616077 1.29177999 0.49239099 2.046616077
		 0.912938 0.647726 1.76781595 1.26108801 0.64329398 1.76781595 0.89731503 0.342379 2.36302996
		 1.27671099 0.342379 2.36302996 0.649665 0.247656 1.84293699 0.50196701 7.21046209 0.80119401
		 1.3592 6.66859007 0.823039 1.81736302 5.57835293 0.839535 1.69492805 4.4570961 0.80882698
		 1.14028895 3.80051208 0.767039 0.40549099 3.43440008 0.69423801 0.479635 7.27983904 -0.67659497
		 1.26730895 6.68643713 -0.67167503 1.63505995 5.53453207 -0.71233398 1.511572 4.54177999 -0.82089299
		 1.031440973 4.068037033 -0.94518501 0.36725599 3.80819893 -1.02849102 0.49011099 7.2491312 0.066722997
		 1.31916904 6.69002724 0.080926999 1.73701096 5.54506302 0.084808998 1.636518 4.46325111 0.040862001
		 1.16274095 3.89742398 -0.035053998 0.434176 3.58736205 -0.122969 0.33844101 6.55693913 -4.65373182
		 0.31989199 4.41978121 -4.11624622 0.83246702 6.036918163 -4.62247086 0.56503701 6.74768686 6.18941212
		 0.424234 6.62915611 6.70931721 0.76051903 6.91821289 5.65192318 1.23580599 8.55815315 4.5699439
		 1.12542796 7.55480003 5.34933615 0.81405902 6.20069504 4.27642822 1.329211 7.15081692 4.08234787
		 1.35770905 7.9406848 3.98088288 0.340639 9.14106464 4.0083217621 0.33505601 8.87611771 5.23994398
		 0.175703 6.55259895 6.94570208 0.193341 6.45455408 6.65562487 0.242641 6.50568724 6.16540003
		 0.25768101 6.60928106 5.60681009 0.25996101 5.86402416 4.35814905 0.29818001 7.91151285 2.76592493
		 0.91637099 7.453722 3.19261193 0.922732 5.53796005 3.8343451 0.30508399 5.18636799 3.92496896
		 0.249707 6.36749792 4.62893105 0.81494099 6.58289814 4.60748005 1.35579896 7.033883095 4.50810289
		 1.32424402 9.9478054 4.59981203 0.32078201 9.16275024 4.64152384 1.29989004 8.92807102 4.3136692
		 1.39025998 8.80038643 4.075200081 0.81299901 9.30236626 4.17007399 0.75426197 9.35442448 4.68027782
		 1.43237698 9.75571442 4.4857502 1.49944103 9.8584404 4.4320488 1.31120706 9.80944347 4.59020901
		 0.36535999 4.58632421 -4.32251883 1.46161306 4.27164602 -1.69500101 0.88094401 3.8996551 -1.682109
		 0.57034099 3.8323369 -2.71857595 0.79234898 4.083097935 -3.85753608 1.28939605 4.37509012 -3.94494104
		 1.79475498 4.54421616 -2.37316704 0.93791503 4.79737282 -4.26374102 0.38616899 4.43715096 3.47326708
		 1.11191201 4.7193799 3.38651395 1.53444004 5.19562387 3.00079298019 0.97713101 6.85965014 2.7584939
		 0.33873701 7.41801405 2.30772805 0.266559 8.47061539 5.67053986 1.01324904 7.03093195 5.28366804
		 0.255954 6.67803717 5.22810411 0.170462 6.79705191 7.15170002 0.59593397 7.78091097 5.81889296
		 0.59943902 7.11311722 6.27424192 0.42005199 6.89374304 6.85886812 0.83851302 7.36794376 5.72433805
		 0.21223 7.9541502 5.90648079 0.213137 7.44314003 6.36334181 0.18916 7.086940765 6.98436022
		 1.11730003 9.00081253052 3.94468689 0.96787697 8.24645138 3.61620998 0.96819401 9.18055439 4.69336081
		 0.92907399 8.90907097 4.78839922 0.71565598 8.30906677 5.564641 0.26731199 2.11042309 -7.59734297
		 0.28639001 0.80520397 -6.38324594 0.92904401 1.13554299 -7.786129 0.72155899 1.10599399 -6.63762283
		 0.86157799 2.51429605 -6.20875502 0.491941 2.74497509 -7.20659399 0.34780401 1.90382004 -5.13768816
		 0.85321403 2.17515206 -5.51863623 0.50387901 1.31743503 -8.080499649 0.23226 1.57018101 -8.29435539
		 0.23301101 0.54017103 -7.70207214 0.51253301 0.87881398 -7.83763599 0.50594401 7.4223609 6.19337606
		 1.50787699 7.79570818 4.43107796 0.35166299 8.63198376 3.35130692 1.40314603 7.63691902 4.93702078
		 1.25696397 7.04955101 4.93315506 0.81926298 8.75444508 5.19369984 1.13371003 8.31846714 5.070260048
		 0.98561299 8.099733353 5.40868711 0.25276899 6.63186502 4.89331484 0.75608999 6.75389624 4.93525314
		 0.651272 6.80405903 5.27322102 0.57388198 6.74662304 5.56470013 1.17228901 6.78803921 3.852
		 1.054430008 9.73645306 4.68740797 1.11800206 9.73649025 4.40513802 1.36171401 9.56492233 4.19635677
		 1.54110503 9.3987484 4.2214222 1.39090204 9.38970089 4.37137508 1.14793801 9.55583668 4.62858105
		 1.25604105 6.13657093 3.40018201 0.47786799 7.14963198 1.41231298 1.84718299 5.58454704 1.52103496
		 1.32902002 6.59716797 1.48832595 1.69007897 4.221488 1.14048195 1.88880002 4.3540659 1.49544406
		 1.85300899 4.34591818 2.10702395 1.68883097 3.40148807 1.81369805 1.570611 2.73336291 1.60829496
		 1.47790003 1.89544201 1.48571396 1.40021002 1.013234019 1.40587497 0.80675 1.039999962 1.39121997
		 0.974989 1.042454958 -3.16251993 1.60000098 1.045359015 -3.15774202 1.63161302 1.73423696 -3.32228494
		 1.67299998 2.52798009 -3.097449064 1.75567997 3.56536293 -3.032782078 1.70576894 4.54961681 -3.377249
		 1.50247598 5.54349613 -3.69758105 1.11848903 6.41399384 -3.81631088 0.41784 6.94643021 -3.85386491
		 0.982889 5.309062 -4.38787222 1.17103803 4.089828968 2.93902302;
	setAttr -s 3976 ".ed";
	setAttr ".ed[0:165]"  57 996 0 996 1486 0 1486 999 0 999 57 0 996 60 0 60 997 0
		 997 1486 0 997 59 0 59 998 0 998 1486 0 998 58 0 58 999 0 58 1000 0 1000 1487 0 1487 999 0
		 1000 3 0 3 1001 0 1001 1487 0 1001 4 0 4 1002 0 1002 1487 0 1002 57 0 60 1003 0 1003 1488 0
		 1488 997 0 1003 62 0 62 1004 0 1004 1488 0 1004 61 0 61 1005 0 1005 1488 0 1005 59 0
		 62 1006 0 1006 1489 0 1489 1004 0 1006 5 0 5 1007 0 1007 1489 0 1007 6 0 6 1008 0
		 1008 1489 0 1008 61 0 4 1009 0 1009 1490 0 1490 1002 0 1009 2 0 2 1010 0 1010 1490 0
		 1010 60 0 996 1490 0 0 1011 0 1011 1491 0 1491 1014 0 1014 0 0 1011 11 0 11 1012 0
		 1012 1491 0 1012 69 0 69 1013 0 1013 1491 0 1013 54 0 54 1014 0 1013 1492 0 1492 1017 0
		 1017 54 0 69 1015 0 1015 1492 0 1015 70 0 70 1016 0 1016 1492 0 1016 56 0 56 1017 0
		 55 1018 0 1018 1493 0 1493 1019 0 1019 55 0 1016 1493 0 1018 56 0 70 1019 0 2 1020 0
		 1020 1494 0 1494 1010 0 1020 5 0 1006 1494 0 1003 1494 0 67 1021 0 1021 1495 0 1495 1024 0
		 1024 67 0 1021 64 0 64 1022 0 1022 1495 0 1022 63 0 63 1023 0 1023 1495 0 1023 66 0
		 66 1024 0 9 1025 0 1025 1496 0 1496 1027 0 1027 9 0 1025 7 0 7 1026 0 1026 1496 0
		 1026 64 0 1021 1496 0 67 1027 0 68 1028 0 1028 1497 0 1497 1031 0 1031 68 0 1028 65 0
		 65 1029 0 1029 1497 0 1029 8 0 8 1030 0 1030 1497 0 1030 10 0 10 1031 0 1028 1498 0
		 1498 1033 0 1033 65 0 68 1032 0 1032 1498 0 1032 66 0 1023 1498 0 63 1033 0 11 1034 0
		 1034 1499 0 1499 1012 0 1034 9 0 1027 1499 0 67 1035 0 1035 1499 0 1035 69 0 55 1036 0
		 1036 1500 0 1500 1038 0 1038 55 0 1036 68 0 1031 1500 0 10 1037 0 1037 1500 0 1037 1 0
		 1 1038 0 1036 1501 0 1501 1032 0 1019 1501 0 70 1039 0 1039 1501 0 1039 66 0 1035 1502 0
		 1502 1015 0 1024 1502 0 1039 1502 0 17 1040 0 1040 1503 0 1503 1043 0 1043 17 0 1040 86 0
		 86 1041 0 1041 1503 0 1041 84 0 84 1042 0 1042 1503 0 1042 16 0;
	setAttr ".ed[166:331]" 16 1043 0 260 1044 0 1044 1504 0 1504 1047 0 1047 260 0
		 1044 76 0 76 1045 0 1045 1504 0 1045 13 0 13 1046 0 1046 1504 0 1046 52 0 52 1047 0
		 259 1048 0 1048 1505 0 1505 1050 0 1050 259 0 1048 75 0 75 1049 0 1049 1505 0 1049 76 0
		 1044 1505 0 260 1050 0 259 1051 0 1051 1506 0 1506 1048 0 1051 261 0 261 1052 0 1052 1506 0
		 1052 79 0 79 1053 0 1053 1506 0 1053 75 0 79 1054 0 1054 1507 0 1507 1057 0 1057 79 0
		 1054 258 0 258 1055 0 1055 1507 0 1055 85 0 85 1056 0 1056 1507 0 1056 78 0 78 1057 0
		 85 1058 0 1058 1508 0 1508 1060 0 1060 85 0 86 1059 0 1059 1508 0 1058 86 0 77 1060 0
		 1059 77 0 1059 1509 0 1509 1062 0 1062 77 0 1040 1509 0 17 1061 0 1061 1509 0 1061 14 0
		 14 1062 0 87 1063 0 1063 1510 0 1510 1066 0 1066 87 0 1063 180 0 180 1064 0 1064 1510 0
		 1064 23 0 23 1065 0 1065 1510 0 1065 18 0 18 1066 0 88 1067 0 1067 1511 0 1511 1069 0
		 1069 88 0 1067 181 0 181 1068 0 1068 1511 0 1068 180 0 1063 1511 0 87 1069 0 1067 1512 0
		 1512 1072 0 1072 181 0 88 1070 0 1070 1512 0 1070 89 0 89 1071 0 1071 1512 0 1071 182 0
		 182 1072 0 1071 1513 0 1513 1075 0 1075 182 0 89 1073 0 1073 1513 0 1073 90 0 90 1074 0
		 1074 1513 0 1074 183 0 183 1075 0 91 1076 0 1076 1514 0 1514 1078 0 1078 91 0 1076 184 0
		 184 1077 0 1077 1514 0 1077 183 0 1074 1514 0 90 1078 0 19 1079 0 1079 1515 0 1515 1081 0
		 1081 19 0 1079 24 0 24 1080 0 1080 1515 0 1080 184 0 1076 1515 0 91 1081 0 272 1082 0
		 1082 1516 0 1516 1084 0 1084 272 0 1082 87 0 1066 1516 0 18 1083 0 1083 1516 0 1083 53 0
		 53 1084 0 271 1085 0 1085 1517 0 1517 1086 0 1086 271 0 1085 88 0 1069 1517 0 1082 1517 0
		 272 1086 0 270 1087 0 1087 1518 0 1518 1088 0 1088 270 0 1087 89 0 1070 1518 0 1085 1518 0
		 271 1088 0 91 1089 0 1089 1519 0 1519 1081 0 1089 72 0 72 1090 0 1090 1519 0 1090 12 0
		 12 1091 0 1091 1519 0 1091 19 0 101 1092 0 1092 1520 0 1520 1095 0 1095 101 0 1092 100 0
		 100 1093 0;
	setAttr ".ed[332:497]" 1093 1520 0 1093 94 0 94 1094 0 1094 1520 0 1094 93 0
		 93 1095 0 100 1096 0 1096 1521 0 1521 1093 0 1096 99 0 99 1097 0 1097 1521 0 1097 95 0
		 95 1098 0 1098 1521 0 1098 94 0 128 1099 0 1099 1522 0 1522 1101 0 1101 128 0 1099 95 0
		 1097 1522 0 99 1100 0 1100 1522 0 1100 98 0 98 1101 0 124 1102 0 1102 1523 0 1523 1105 0
		 1105 124 0 1102 123 0 123 1103 0 1103 1523 0 1103 121 0 121 1104 0 1104 1523 0 1104 122 0
		 122 1105 0 126 1106 0 1106 1524 0 1524 1108 0 1108 126 0 1106 125 0 125 1107 0 1107 1524 0
		 1107 123 0 1102 1524 0 124 1108 0 95 1109 0 1109 1525 0 1525 1098 0 1109 118 0 118 1110 0
		 1110 1525 0 1110 119 0 119 1111 0 1111 1525 0 1111 94 0 102 1112 0 1112 1526 0 1526 1115 0
		 1115 102 0 1112 266 0 266 1113 0 1113 1526 0 1113 96 0 96 1114 0 1114 1526 0 1114 97 0
		 97 1115 0 103 1116 0 1116 1527 0 1527 1118 0 1118 103 0 1116 102 0 1115 1527 0 97 1117 0
		 1117 1527 0 1117 98 0 98 1118 0 105 1119 0 1119 1528 0 1528 1121 0 1121 105 0 1119 104 0
		 104 1120 0 1120 1528 0 1120 99 0 1096 1528 0 100 1121 0 106 1122 0 1122 1529 0 1529 1123 0
		 1123 106 0 1122 105 0 1121 1529 0 1092 1529 0 101 1123 0 107 1124 0 1124 1530 0 1530 1126 0
		 1126 107 0 1124 267 0 267 1125 0 1125 1530 0 1125 266 0 1112 1530 0 102 1126 0 108 1127 0
		 1127 1531 0 1531 1128 0 1128 108 0 1127 107 0 1126 1531 0 1116 1531 0 103 1128 0
		 103 1129 0 1129 1532 0 1532 1128 0 1129 104 0 104 1130 0 1130 1532 0 1130 109 0 109 1131 0
		 1131 1532 0 1131 108 0 110 1132 0 1132 1533 0 1533 1133 0 1133 110 0 1132 109 0 1130 1533 0
		 1119 1533 0 105 1133 0 111 1134 0 1134 1534 0 1534 1135 0 1135 111 0 1134 110 0 1133 1534 0
		 1122 1534 0 106 1135 0 113 1136 0 1136 1535 0 1535 1138 0 1138 113 0 1136 112 0 112 1137 0
		 1137 1535 0 1137 267 0 1124 1535 0 107 1138 0 114 1139 0 1139 1536 0 1536 1140 0
		 1140 114 0 1139 113 0 1138 1536 0 1127 1536 0 108 1140 0 1131 1537 0 1537 1140 0
		 109 1141 0 1141 1537 0 1141 115 0 115 1142 0;
	setAttr ".ed[498:663]" 1142 1537 0 1142 114 0 116 1143 0 1143 1538 0 1538 1144 0
		 1144 116 0 1143 115 0 1141 1538 0 1132 1538 0 110 1144 0 117 1145 0 1145 1539 0 1539 1146 0
		 1146 117 0 1145 116 0 1144 1539 0 1134 1539 0 111 1146 0 268 1147 0 1147 1540 0 1540 1148 0
		 1148 268 0 1137 1540 0 1147 267 0 112 1148 0 219 1149 0 1149 1541 0 1541 1151 0 1151 219 0
		 1149 218 0 218 1150 0 1150 1541 0 1150 112 0 1136 1541 0 113 1151 0 220 1152 0 1152 1542 0
		 1542 1153 0 1153 220 0 1152 219 0 1151 1542 0 1139 1542 0 114 1153 0 1142 1543 0
		 1543 1153 0 115 1154 0 1154 1543 0 1154 221 0 221 1155 0 1155 1543 0 1155 220 0 222 1156 0
		 1156 1544 0 1544 1157 0 1157 222 0 1156 221 0 1154 1544 0 1143 1544 0 116 1157 0
		 223 1158 0 1158 1545 0 1545 1159 0 1159 223 0 1158 222 0 1157 1545 0 1145 1545 0
		 117 1159 0 269 1160 0 1160 1546 0 1546 1161 0 1161 269 0 1160 268 0 1148 1546 0 1150 1546 0
		 218 1161 0 1094 1547 0 1547 1163 0 1163 93 0 1111 1547 0 119 1162 0 1162 1547 0 1162 120 0
		 120 1163 0 96 1164 0 1164 1548 0 1548 1166 0 1166 96 0 1164 101 0 1095 1548 0 93 1165 0
		 1165 1548 0 1165 131 0 131 1166 0 118 1167 0 1167 1549 0 1549 1110 0 1167 121 0 1103 1549 0
		 123 1168 0 1168 1549 0 1168 119 0 1168 1550 0 1550 1162 0 1107 1550 0 125 1169 0
		 1169 1550 0 1169 120 0 132 1170 0 1170 1551 0 1551 1171 0 1171 132 0 1170 120 0 1169 1551 0
		 1106 1551 0 126 1171 0 1165 1552 0 1552 1172 0 1172 131 0 1163 1552 0 1170 1552 0
		 132 1172 0 1104 1553 0 1553 1174 0 1174 122 0 1167 1553 0 118 1173 0 1173 1553 0
		 1173 127 0 127 1174 0 128 1175 0 1175 1554 0 1554 1178 0 1178 128 0 1175 129 0 129 1176 0
		 1176 1554 0 1176 130 0 130 1177 0 1177 1554 0 1177 127 0 127 1178 0 129 1179 0 1179 1555 0
		 1555 1176 0 1179 131 0 1172 1555 0 132 1180 0 1180 1555 0 1180 130 0 97 1181 0 1181 1556 0
		 1556 1117 0 1181 129 0 1175 1556 0 1101 1556 0 1166 1557 0 1557 1114 0 1179 1557 0
		 1181 1557 0 130 1182 0 1182 1558 0 1558 1177 0 1182 124 0 1105 1558 0 1174 1558 0
		 1171 1559 0;
	setAttr ".ed[664:829]" 1559 1180 0 1108 1559 0 1182 1559 0 1173 1560 0 1560 1178 0
		 1109 1560 0 1099 1560 0 141 1183 0 1183 1561 0 1561 1186 0 1186 141 0 1183 140 0
		 140 1184 0 1184 1561 0 1184 134 0 134 1185 0 1185 1561 0 1185 133 0 133 1186 0 140 1187 0
		 1187 1562 0 1562 1184 0 1187 139 0 139 1188 0 1188 1562 0 1188 135 0 135 1189 0 1189 1562 0
		 1189 134 0 139 1190 0 1190 1563 0 1563 1188 0 1190 138 0 138 1191 0 1191 1563 0 1191 170 0
		 170 1192 0 1192 1563 0 1192 135 0 163 1193 0 1193 1564 0 1564 1196 0 1196 163 0 1193 164 0
		 164 1194 0 1194 1564 0 1194 166 0 166 1195 0 1195 1564 0 1195 165 0 165 1196 0 1195 1565 0
		 1565 1199 0 1199 165 0 166 1197 0 1197 1565 0 1197 168 0 168 1198 0 1198 1565 0 1198 167 0
		 167 1199 0 135 1200 0 1200 1566 0 1566 1189 0 1200 160 0 160 1201 0 1201 1566 0 1201 161 0
		 161 1202 0 1202 1566 0 1202 134 0 143 1203 0 1203 1567 0 1567 1206 0 1206 143 0 1203 142 0
		 142 1204 0 1204 1567 0 1204 136 0 136 1205 0 1205 1567 0 1205 137 0 137 1206 0 144 1207 0
		 1207 1568 0 1568 1209 0 1209 144 0 1207 143 0 1206 1568 0 137 1208 0 1208 1568 0
		 1208 138 0 138 1209 0 146 1210 0 1210 1569 0 1569 1212 0 1212 146 0 1210 145 0 145 1211 0
		 1211 1569 0 1211 139 0 1187 1569 0 140 1212 0 147 1213 0 1213 1570 0 1570 1214 0
		 1214 147 0 1213 146 0 1212 1570 0 1183 1570 0 141 1214 0 149 1215 0 1215 1571 0 1571 1217 0
		 1217 149 0 1215 148 0 148 1216 0 1216 1571 0 1216 142 0 1203 1571 0 143 1217 0 150 1218 0
		 1218 1572 0 1572 1219 0 1219 150 0 1218 149 0 1217 1572 0 1207 1572 0 144 1219 0
		 151 1220 0 1220 1573 0 1573 1222 0 1222 151 0 1220 150 0 1219 1573 0 144 1221 0 1221 1573 0
		 1221 145 0 145 1222 0 152 1223 0 1223 1574 0 1574 1224 0 1224 152 0 1223 151 0 1222 1574 0
		 1210 1574 0 146 1224 0 153 1225 0 1225 1575 0 1575 1226 0 1226 153 0 1225 152 0 1224 1575 0
		 1213 1575 0 147 1226 0 1226 1576 0 1576 1228 0 1228 153 0 147 1227 0 1227 1576 0
		 265 1228 0 1227 265 0 155 1229 0 1229 1577 0 1577 1231 0 1231 155 0;
	setAttr ".ed[830:995]" 1229 154 0 154 1230 0 1230 1577 0 1230 148 0 1215 1577 0
		 149 1231 0 156 1232 0 1232 1578 0 1578 1233 0 1233 156 0 1232 155 0 1231 1578 0 1218 1578 0
		 150 1233 0 157 1234 0 1234 1579 0 1579 1235 0 1235 157 0 1234 156 0 1233 1579 0 1220 1579 0
		 151 1235 0 158 1236 0 1236 1580 0 1580 1237 0 1237 158 0 1236 157 0 1235 1580 0 1223 1580 0
		 152 1237 0 159 1238 0 1238 1581 0 1581 1239 0 1239 159 0 1238 158 0 1237 1581 0 1225 1581 0
		 153 1239 0 1239 1582 0 1582 1241 0 1241 159 0 1228 1582 0 265 1240 0 1240 1582 0
		 1240 264 0 264 1241 0 1055 1583 0 1583 1243 0 1243 85 0 258 1242 0 1242 1583 0 1242 154 0
		 1229 1583 0 155 1243 0 1058 1584 0 1584 1244 0 1244 86 0 1243 1584 0 1232 1584 0
		 156 1244 0 1041 1585 0 1585 1245 0 1245 84 0 1244 1585 0 1234 1585 0 157 1245 0 158 1246 0
		 1246 1586 0 1586 1236 0 1246 83 0 83 1247 0 1247 1586 0 1247 84 0 1245 1586 0 159 1248 0
		 1248 1587 0 1587 1238 0 1248 262 0 262 1249 0 1249 1587 0 1249 83 0 1246 1587 0 263 1250 0
		 1250 1588 0 1588 1251 0 1251 263 0 1250 262 0 1248 1588 0 1241 1588 0 264 1251 0
		 1185 1589 0 1589 1253 0 1253 133 0 1202 1589 0 161 1252 0 1252 1589 0 1252 162 0
		 162 1253 0 133 1254 0 1254 1590 0 1590 1186 0 1254 173 0 173 1255 0 1255 1590 0 1255 136 0
		 136 1256 0 1256 1590 0 1256 141 0 160 1257 0 1257 1591 0 1591 1201 0 1257 163 0 1196 1591 0
		 165 1258 0 1258 1591 0 1258 161 0 1258 1592 0 1592 1252 0 1199 1592 0 167 1259 0
		 1259 1592 0 1259 162 0 1198 1593 0 1593 1259 0 168 1260 0 1260 1593 0 1260 174 0
		 174 1261 0 1261 1593 0 1261 162 0 1261 1594 0 1594 1253 0 174 1262 0 1262 1594 0
		 1262 173 0 1254 1594 0 160 1263 0 1263 1595 0 1595 1257 0 1263 169 0 169 1264 0 1264 1595 0
		 1264 164 0 1193 1595 0 170 1265 0 1265 1596 0 1596 1268 0 1268 170 0 1265 171 0 171 1266 0
		 1266 1596 0 1266 172 0 172 1267 0 1267 1596 0 1267 169 0 169 1268 0 171 1269 0 1269 1597 0
		 1597 1266 0 1269 173 0 1262 1597 0 174 1270 0 1270 1597 0 1270 172 0 137 1271 0 1271 1598 0;
	setAttr ".ed[996:1161]" 1598 1208 0 1271 171 0 1265 1598 0 1191 1598 0 1255 1599 0
		 1599 1205 0 1269 1599 0 1271 1599 0 172 1272 0 1272 1600 0 1600 1267 0 1272 166 0
		 1194 1600 0 1264 1600 0 1260 1601 0 1601 1270 0 1197 1601 0 1272 1601 0 1192 1602 0
		 1602 1200 0 1268 1602 0 1263 1602 0 175 1273 0 1273 1603 0 1603 1276 0 1276 175 0
		 1273 80 0 80 1274 0 1274 1603 0 1274 15 0 15 1275 0 1275 1603 0 1275 21 0 21 1276 0
		 176 1277 0 1277 1604 0 1604 1279 0 1279 176 0 1277 81 0 81 1278 0 1278 1604 0 1278 80 0
		 1273 1604 0 175 1279 0 177 1280 0 1280 1605 0 1605 1282 0 1282 177 0 1280 82 0 82 1281 0
		 1281 1605 0 1281 81 0 1277 1605 0 176 1282 0 178 1283 0 1283 1606 0 1606 1285 0 1285 178 0
		 1283 83 0 83 1284 0 1284 1606 0 1284 82 0 1280 1606 0 177 1285 0 179 1286 0 1286 1607 0
		 1607 1287 0 1287 179 0 1286 84 0 1247 1607 0 1283 1607 0 178 1287 0 22 1288 0 1288 1608 0
		 1608 1289 0 1289 22 0 1288 16 0 1042 1608 0 1286 1608 0 179 1289 0 180 1290 0 1290 1609 0
		 1609 1064 0 1290 185 0 185 1291 0 1291 1609 0 1291 25 0 25 1292 0 1292 1609 0 1292 23 0
		 181 1293 0 1293 1610 0 1610 1068 0 1293 186 0 186 1294 0 1294 1610 0 1294 185 0 1290 1610 0
		 182 1295 0 1295 1611 0 1611 1072 0 1295 187 0 187 1296 0 1296 1611 0 1296 186 0 1293 1611 0
		 183 1297 0 1297 1612 0 1612 1075 0 1297 188 0 188 1298 0 1298 1612 0 1298 187 0 1295 1612 0
		 184 1299 0 1299 1613 0 1613 1077 0 1299 189 0 189 1300 0 1300 1613 0 1300 188 0 1297 1613 0
		 24 1301 0 1301 1614 0 1614 1080 0 1301 26 0 26 1302 0 1302 1614 0 1302 189 0 1299 1614 0
		 185 1303 0 1303 1615 0 1615 1291 0 1303 175 0 1276 1615 0 21 1304 0 1304 1615 0 1304 25 0
		 186 1305 0 1305 1616 0 1616 1294 0 1305 176 0 1279 1616 0 1303 1616 0 187 1306 0
		 1306 1617 0 1617 1296 0 1306 177 0 1282 1617 0 1305 1617 0 188 1307 0 1307 1618 0
		 1618 1298 0 1307 178 0 1285 1618 0 1306 1618 0 189 1308 0 1308 1619 0 1619 1300 0
		 1308 179 0 1287 1619 0 1307 1619 0 26 1309 0 1309 1620 0 1620 1302 0 1309 22 0;
	setAttr ".ed[1162:1327]" 1289 1620 0 1308 1620 0 54 1310 0 1310 1621 0 1621 1014 0
		 1310 71 0 71 1311 0 1311 1621 0 1311 20 0 20 1312 0 1312 1621 0 1312 0 0 1090 1622 0
		 1622 1315 0 1315 12 0 72 1313 0 1313 1622 0 1313 73 0 73 1314 0 1314 1622 0 1314 27 0
		 27 1315 0 56 1316 0 1316 1623 0 1623 1017 0 1316 92 0 92 1317 0 1317 1623 0 1317 71 0
		 1310 1623 0 191 1318 0 1318 1624 0 1624 1321 0 1321 191 0 1318 190 0 190 1319 0 1319 1624 0
		 1319 204 0 204 1320 0 1320 1624 0 1320 192 0 192 1321 0 192 1322 0 1322 1625 0 1625 1321 0
		 1322 203 0 203 1323 0 1323 1625 0 1323 202 0 202 1324 0 1324 1625 0 1324 191 0 190 1325 0
		 1325 1626 0 1626 1319 0 1325 194 0 194 1326 0 1326 1626 0 1326 193 0 193 1327 0 1327 1626 0
		 1327 204 0 237 1328 0 1328 1627 0 1627 1331 0 1331 237 0 1328 209 0 209 1329 0 1329 1627 0
		 1329 245 0 245 1330 0 1330 1627 0 1330 248 0 248 1331 0 194 1332 0 1332 1628 0 1628 1335 0
		 1335 194 0 1332 235 0 235 1333 0 1333 1628 0 1333 229 0 229 1334 0 1334 1628 0 1334 208 0
		 208 1335 0 196 1336 0 1336 1629 0 1629 1339 0 1339 196 0 1336 199 0 199 1337 0 1337 1629 0
		 1337 206 0 206 1338 0 1338 1629 0 1338 205 0 205 1339 0 197 1340 0 1340 1630 0 1630 1342 0
		 1342 197 0 198 1341 0 1341 1630 0 1340 198 0 196 1342 0 1341 196 0 197 1343 0 1343 1631 0
		 1631 1340 0 1343 209 0 209 1344 0 1344 1631 0 1344 195 0 195 1345 0 1345 1631 0 1345 198 0
		 35 1346 0 1346 1632 0 1632 1349 0 1349 35 0 1346 50 0 50 1347 0 1347 1632 0 1347 236 0
		 236 1348 0 1348 1632 0 1348 201 0 201 1349 0 43 1350 0 1350 1633 0 1633 1353 0 1353 43 0
		 1350 41 0 41 1351 0 1351 1633 0 1351 210 0 210 1352 0 1352 1633 0 1352 228 0 228 1353 0
		 31 1354 0 1354 1634 0 1634 1356 0 1356 31 0 1354 202 0 1323 1634 0 203 1355 0 1355 1634 0
		 1355 30 0 30 1356 0 32 1357 0 1357 1635 0 1635 1358 0 1358 32 0 1357 30 0 1355 1635 0
		 1322 1635 0 192 1358 0 1320 1636 0 1636 1358 0 204 1359 0 1359 1636 0 1359 28 0 28 1360 0
		 1360 1636 0;
	setAttr ".ed[1328:1493]" 1360 32 0 251 1361 0 1361 1637 0 1637 1363 0 1363 251 0
		 1361 45 0 45 1362 0 1362 1637 0 1362 28 0 1359 1637 0 204 1363 0 206 1364 0 1364 1638 0
		 1638 1338 0 1364 38 0 38 1365 0 1365 1638 0 1365 36 0 36 1366 0 1366 1638 0 1366 205 0
		 37 1367 0 1367 1639 0 1639 1370 0 1370 37 0 1367 42 0 42 1368 0 1368 1639 0 1368 227 0
		 227 1369 0 1369 1639 0 1369 200 0 200 1370 0 1369 1640 0 1640 1373 0 1373 200 0 227 1371 0
		 1371 1640 0 1371 226 0 226 1372 0 1372 1640 0 1372 198 0 198 1373 0 199 1374 0 1374 1641 0
		 1641 1337 0 1374 225 0 225 1375 0 1375 1641 0 1375 224 0 224 1376 0 1376 1641 0 1376 206 0
		 1376 1642 0 1642 1364 0 224 1377 0 1377 1642 0 1377 39 0 39 1378 0 1378 1642 0 1378 38 0
		 1366 1643 0 1643 1381 0 1381 205 0 36 1379 0 1379 1643 0 1379 51 0 51 1380 0 1380 1643 0
		 1380 249 0 249 1381 0 247 1382 0 1382 1644 0 1644 1383 0 1383 247 0 1382 196 0 1339 1644 0
		 1381 1644 0 249 1383 0 246 1384 0 1384 1645 0 1645 1385 0 1385 246 0 1384 197 0 1342 1645 0
		 1382 1645 0 247 1385 0 215 1386 0 1386 1646 0 1646 1389 0 1389 215 0 1386 212 0 212 1387 0
		 1387 1646 0 1387 214 0 214 1388 0 1388 1646 0 1388 216 0 216 1389 0 41 1390 0 1390 1647 0
		 1647 1351 0 1390 35 0 1349 1647 0 201 1391 0 1391 1647 0 1391 210 0 257 1392 0 1392 1648 0
		 1648 1394 0 1394 257 0 1392 256 0 256 1393 0 1393 1648 0 1393 209 0 1328 1648 0 237 1394 0
		 1393 1649 0 1649 1344 0 256 1395 0 1395 1649 0 1395 255 0 255 1396 0 1396 1649 0
		 1396 195 0 1348 1650 0 1650 1399 0 1399 201 0 236 1397 0 1397 1650 0 1397 254 0 254 1398 0
		 1398 1650 0 1398 253 0 253 1399 0 1399 1651 0 1651 1391 0 253 1400 0 1400 1651 0
		 1400 252 0 252 1401 0 1401 1651 0 1401 210 0 215 1402 0 1402 1652 0 1652 1404 0 1404 215 0
		 211 1403 0 1403 1652 0 1402 211 0 217 1404 0 1403 217 0 1389 1653 0 1653 1402 0 216 1405 0
		 1405 1653 0 1405 213 0 213 1406 0 1406 1653 0 1406 211 0 1404 1654 0 1654 1386 0
		 217 1407 0 1407 1654 0 1407 212 0 1 1408 0;
	setAttr ".ed[1494:1659]" 1408 1655 0 1655 1038 0 1408 27 0 1314 1655 0 73 1409 0
		 1409 1655 0 1409 55 0 1073 1656 0 1656 1411 0 1411 90 0 89 1410 0 1410 1656 0 1410 218 0
		 1149 1656 0 219 1411 0 1078 1657 0 1657 1412 0 1412 91 0 1411 1657 0 1152 1657 0
		 220 1412 0 1155 1658 0 1658 1412 0 221 1413 0 1413 1658 0 1413 72 0 1089 1658 0 1313 1659 0
		 1659 1414 0 1414 73 0 1413 1659 0 1156 1659 0 222 1414 0 74 1415 0 1415 1660 0 1660 1416 0
		 1416 74 0 1415 73 0 1414 1660 0 1158 1660 0 223 1416 0 1087 1661 0 1661 1410 0 270 1417 0
		 1417 1661 0 1417 269 0 1161 1661 0 1409 1662 0 1662 1418 0 1418 55 0 1415 1662 0
		 74 1418 0 14 1419 0 1419 1663 0 1663 1062 0 1419 39 0 1377 1663 0 224 1420 0 1420 1663 0
		 1420 77 0 78 1421 0 1421 1664 0 1664 1422 0 1422 78 0 1421 77 0 1420 1664 0 1375 1664 0
		 225 1422 0 1057 1665 0 1665 1053 0 1422 1665 0 225 1423 0 1423 1665 0 1423 75 0 1049 1666 0
		 1666 1425 0 1425 76 0 75 1424 0 1424 1666 0 1424 226 0 1371 1666 0 227 1425 0 42 1426 0
		 1426 1667 0 1667 1368 0 1426 13 0 1045 1667 0 1425 1667 0 34 1427 0 1427 1668 0 1668 1429 0
		 1429 34 0 1427 43 0 1353 1668 0 228 1428 0 1428 1668 0 1428 234 0 234 1429 0 1335 1669 0
		 1669 1326 0 208 1430 0 1430 1669 0 1430 207 0 207 1431 0 1431 1669 0 1431 193 0 40 1432 0
		 1432 1670 0 1670 1434 0 1434 40 0 1432 45 0 1361 1670 0 251 1433 0 1433 1670 0 1433 250 0
		 250 1434 0 29 1435 0 1435 1671 0 1671 1437 0 1437 29 0 1435 232 0 232 1436 0 1436 1671 0
		 1436 202 0 1354 1671 0 31 1437 0 231 1438 0 1438 1672 0 1672 1441 0 1441 231 0 1438 234 0
		 234 1439 0 1439 1672 0 1439 235 0 235 1440 0 1440 1672 0 1440 230 0 230 1441 0 230 1442 0
		 1442 1673 0 1673 1444 0 1444 230 0 1442 190 0 1318 1673 0 191 1443 0 1443 1673 0
		 1443 233 0 233 1444 0 1443 1674 0 1674 1445 0 1445 233 0 1324 1674 0 1436 1674 0
		 232 1445 0 1332 1675 0 1675 1440 0 1325 1675 0 1442 1675 0 44 1446 0 1446 1676 0
		 1676 1447 0 1447 44 0 1446 34 0 1429 1676 0 1438 1676 0 231 1447 0;
	setAttr ".ed[1660:1825]" 233 1448 0 1448 1677 0 1677 1450 0 1450 233 0 1448 33 0
		 33 1449 0 1449 1677 0 1449 44 0 1447 1677 0 231 1450 0 1435 1678 0 1678 1445 0 29 1451 0
		 1451 1678 0 1451 33 0 1448 1678 0 1396 1679 0 1679 1453 0 1453 195 0 255 1452 0 1452 1679 0
		 1452 254 0 1397 1679 0 236 1453 0 1373 1680 0 1680 1454 0 1454 200 0 1345 1680 0
		 1453 1680 0 236 1454 0 1401 1681 0 1681 1456 0 1456 210 0 252 1455 0 1455 1681 0
		 1455 257 0 1394 1681 0 237 1456 0 1456 1682 0 1682 1457 0 1457 210 0 1331 1682 0
		 248 1457 0 1428 1683 0 1683 1439 0 228 1458 0 1458 1683 0 1458 238 0 238 1459 0 1459 1683 0
		 1459 235 0 46 1460 0 1460 1684 0 1684 1463 0 1463 46 0 1460 242 0 242 1461 0 1461 1684 0
		 1461 241 0 241 1462 0 1462 1684 0 1462 47 0 47 1463 0 48 1464 0 1464 1685 0 1685 1467 0
		 1467 48 0 1464 243 0 243 1465 0 1465 1685 0 1465 244 0 244 1466 0 1466 1685 0 1466 49 0
		 49 1467 0 239 1468 0 1468 1686 0 1686 1470 0 1470 239 0 1468 241 0 1461 1686 0 242 1469 0
		 1469 1686 0 1469 240 0 240 1470 0 240 1471 0 1471 1687 0 1687 1470 0 1471 244 0 1465 1687 0
		 243 1472 0 1472 1687 0 1472 239 0 64 1473 0 1473 1688 0 1688 1022 0 1473 241 0 1468 1688 0
		 239 1474 0 1474 1688 0 1474 63 0 7 1475 0 1475 1689 0 1689 1026 0 1475 47 0 1462 1689 0
		 1473 1689 0 65 1476 0 1476 1690 0 1690 1029 0 1476 243 0 1464 1690 0 48 1477 0 1477 1690 0
		 1477 8 0 1476 1691 0 1691 1472 0 1033 1691 0 1474 1691 0 242 1478 0 1478 1692 0 1692 1469 0
		 1478 58 0 998 1692 0 59 1479 0 1479 1692 0 1479 240 0 46 1480 0 1480 1693 0 1693 1460 0
		 1480 3 0 1000 1693 0 1478 1693 0 244 1481 0 1481 1694 0 1694 1466 0 1481 61 0 1008 1694 0
		 6 1482 0 1482 1694 0 1482 49 0 1005 1695 0 1695 1479 0 1481 1695 0 1471 1695 0 1441 1696 0
		 1696 1450 0 1444 1696 0 1343 1697 0 1697 1329 0 1384 1697 0 246 1483 0 1483 1697 0
		 1483 245 0 50 1484 0 1484 1698 0 1698 1347 0 1484 37 0 1370 1698 0 1454 1698 0 246 1485 0
		 1485 1699 0 1699 1483 0 1485 208 0 1334 1699 0 229 492 0;
	setAttr ".ed[1826:1991]" 492 1699 0 492 245 0 1485 1700 0 1700 1430 0 1385 1700 0
		 247 493 0 493 1700 0 493 207 0 1458 1701 0 1701 494 0 494 238 0 1352 1701 0 1457 1701 0
		 248 494 0 492 1702 0 1702 1330 0 229 495 0 495 1702 0 495 238 0 494 1702 0 1459 1703 0
		 1703 1333 0 495 1703 0 51 496 0 496 1704 0 1704 1380 0 496 40 0 1434 1704 0 250 497 0
		 497 1704 0 497 249 0 493 1705 0 1705 498 0 498 207 0 1383 1705 0 497 1705 0 250 498 0
		 251 499 0 499 1706 0 1706 1433 0 499 193 0 1431 1706 0 498 1706 0 499 1707 0 1707 1327 0
		 1363 1707 0 1372 1708 0 1708 1341 0 226 500 0 500 1708 0 500 199 0 1336 1708 0 253 501 0
		 501 1709 0 1709 1400 0 501 214 0 1387 1709 0 212 502 0 502 1709 0 502 252 0 254 503 0
		 503 1710 0 1710 1398 0 503 216 0 1388 1710 0 501 1710 0 255 504 0 504 1711 0 1711 1452 0
		 504 213 0 1405 1711 0 503 1711 0 256 505 0 505 1712 0 1712 1395 0 505 211 0 1406 1712 0
		 504 1712 0 1403 1713 0 1713 506 0 506 217 0 505 1713 0 1392 1713 0 257 506 0 502 1714 0
		 1714 1455 0 1407 1714 0 506 1714 0 1423 1715 0 1715 1424 0 1374 1715 0 500 1715 0
		 80 507 0 507 1716 0 1716 1274 0 507 260 0 1047 1716 0 52 508 0 508 1716 0 508 15 0
		 1051 1717 0 1717 510 0 510 261 0 259 509 0 509 1717 0 509 81 0 1281 1717 0 82 510 0
		 509 1718 0 1718 1278 0 1050 1718 0 507 1718 0 1284 1719 0 1719 511 0 511 82 0 1249 1719 0
		 262 511 0 510 1720 0 1720 512 0 512 261 0 511 1720 0 1250 1720 0 263 512 0 512 1721 0
		 1721 1052 0 263 513 0 513 1721 0 513 258 0 1054 1721 0 513 1722 0 1722 1242 0 1251 1722 0
		 264 514 0 514 1722 0 514 154 0 265 515 0 515 1723 0 1723 1240 0 515 148 0 1230 1723 0
		 514 1723 0 147 516 0 516 1724 0 1724 1227 0 516 142 0 1216 1724 0 515 1724 0 1256 1725 0
		 1725 1214 0 1204 1725 0 516 1725 0 1221 1726 0 1726 1211 0 1209 1726 0 1190 1726 0
		 1129 1727 0 1727 1120 0 1118 1727 0 1100 1727 0 1123 1728 0 1728 517 0 517 106 0
		 1164 1728 0 1113 1728 0 266 517 0 1135 1729 0;
	setAttr ".ed[1992:2157]" 1729 518 0 518 111 0 517 1729 0 1125 1729 0 267 518 0
		 1146 1730 0 1730 519 0 519 117 0 518 1730 0 1147 1730 0 268 519 0 1159 1731 0 1731 520 0
		 520 223 0 519 1731 0 1160 1731 0 269 520 0 270 521 0 521 1732 0 1732 1417 0 521 74 0
		 1416 1732 0 520 1732 0 521 1733 0 1733 523 0 523 74 0 1088 1733 0 271 522 0 522 1733 0
		 522 92 0 92 523 0 522 1734 0 1734 1317 0 1086 1734 0 272 524 0 524 1734 0 524 71 0
		 524 1735 0 1735 1311 0 1084 1735 0 53 525 0 525 1735 0 525 20 0 1316 1736 0 1736 523 0
		 1018 1736 0 1418 1736 0 1060 1737 0 1737 1056 0 1421 1737 0 276 526 0 526 1738 0
		 1738 529 0 529 276 0 526 277 0 277 527 0 527 1738 0 527 278 0 278 528 0 528 1738 0
		 528 279 0 279 529 0 526 1739 0 1739 531 0 531 277 0 276 530 0 530 1739 0 530 4 0
		 1001 1739 0 3 531 0 528 1740 0 1740 534 0 534 279 0 278 532 0 532 1740 0 532 280 0
		 280 533 0 533 1740 0 533 281 0 281 534 0 533 1741 0 1741 536 0 536 281 0 280 535 0
		 535 1741 0 535 6 0 1007 1741 0 5 536 0 530 1742 0 1742 1009 0 529 1742 0 279 537 0
		 537 1742 0 537 2 0 0 538 0 538 1743 0 1743 1011 0 538 273 0 273 539 0 539 1743 0
		 539 288 0 288 540 0 540 1743 0 540 11 0 273 541 0 541 1744 0 1744 539 0 541 275 0
		 275 542 0 542 1744 0 542 289 0 289 543 0 543 1744 0 543 288 0 274 544 0 544 1745 0
		 1745 545 0 545 274 0 542 1745 0 544 289 0 275 545 0 537 1746 0 1746 1020 0 534 1746 0
		 536 1746 0 286 546 0 546 1747 0 1747 549 0 549 286 0 546 285 0 285 547 0 547 1747 0
		 547 282 0 282 548 0 548 1747 0 548 283 0 283 549 0 9 550 0 550 1748 0 1748 1025 0
		 550 286 0 549 1748 0 283 551 0 551 1748 0 551 7 0 287 552 0 552 1749 0 1749 554 0
		 554 287 0 552 10 0 1030 1749 0 8 553 0 553 1749 0 553 284 0 284 554 0 284 555 0 555 1750 0
		 1750 554 0 555 282 0 547 1750 0 285 556 0 556 1750 0 556 287 0 540 1751 0 1751 1034 0
		 288 557 0;
	setAttr ".ed[2158:2323]" 557 1751 0 557 286 0 550 1751 0 274 558 0 558 1752 0
		 1752 559 0 559 274 0 558 1 0 1037 1752 0 552 1752 0 287 559 0 556 1753 0 1753 559 0
		 285 560 0 560 1753 0 560 289 0 544 1753 0 543 1754 0 1754 557 0 560 1754 0 546 1754 0
		 1043 1755 0 1755 563 0 563 17 0 16 561 0 561 1755 0 561 303 0 303 562 0 562 1755 0
		 562 305 0 305 563 0 479 564 0 564 1756 0 1756 566 0 566 479 0 564 52 0 1046 1756 0
		 13 565 0 565 1756 0 565 295 0 295 566 0 478 567 0 567 1757 0 1757 569 0 569 478 0
		 567 479 0 566 1757 0 295 568 0 568 1757 0 568 294 0 294 569 0 569 1758 0 1758 572 0
		 572 478 0 294 570 0 570 1758 0 570 298 0 298 571 0 571 1758 0 571 480 0 480 572 0
		 298 573 0 573 1759 0 1759 576 0 576 298 0 573 297 0 297 574 0 574 1759 0 574 304 0
		 304 575 0 575 1759 0 575 477 0 477 576 0 304 577 0 577 1760 0 1760 579 0 579 304 0
		 296 578 0 578 1760 0 577 296 0 305 579 0 578 305 0 296 580 0 580 1761 0 1761 578 0
		 580 14 0 1061 1761 0 563 1761 0 306 581 0 581 1762 0 1762 583 0 583 306 0 581 18 0
		 1065 1762 0 23 582 0 582 1762 0 582 399 0 399 583 0 307 584 0 584 1763 0 1763 586 0
		 586 307 0 584 306 0 583 1763 0 399 585 0 585 1763 0 585 400 0 400 586 0 400 587 0
		 587 1764 0 1764 586 0 587 401 0 401 588 0 588 1764 0 588 308 0 308 589 0 589 1764 0
		 589 307 0 401 590 0 590 1765 0 1765 588 0 590 402 0 402 591 0 591 1765 0 591 309 0
		 309 592 0 592 1765 0 592 308 0 310 593 0 593 1766 0 1766 595 0 595 310 0 593 309 0
		 591 1766 0 402 594 0 594 1766 0 594 403 0 403 595 0 19 596 0 596 1767 0 1767 1079 0
		 596 310 0 595 1767 0 403 597 0 597 1767 0 597 24 0 491 598 0 598 1768 0 1768 599 0
		 599 491 0 598 53 0 1083 1768 0 581 1768 0 306 599 0 490 600 0 600 1769 0 1769 601 0
		 601 490 0 600 491 0 599 1769 0 584 1769 0 307 601 0 489 602 0 602 1770 0 1770 603 0
		 603 489 0;
	setAttr ".ed[2324:2489]" 602 490 0 601 1770 0 589 1770 0 308 603 0 596 1771 0
		 1771 605 0 605 310 0 1091 1771 0 12 604 0 604 1771 0 604 291 0 291 605 0 320 606 0
		 606 1772 0 1772 609 0 609 320 0 606 312 0 312 607 0 607 1772 0 607 313 0 313 608 0
		 608 1772 0 608 319 0 319 609 0 608 1773 0 1773 612 0 612 319 0 313 610 0 610 1773 0
		 610 314 0 314 611 0 611 1773 0 611 318 0 318 612 0 347 613 0 613 1774 0 1774 615 0
		 615 347 0 613 317 0 317 614 0 614 1774 0 614 318 0 611 1774 0 314 615 0 343 616 0
		 616 1775 0 1775 619 0 619 343 0 616 341 0 341 617 0 617 1775 0 617 340 0 340 618 0
		 618 1775 0 618 342 0 342 619 0 345 620 0 620 1776 0 1776 622 0 622 345 0 620 343 0
		 619 1776 0 342 621 0 621 1776 0 621 344 0 344 622 0 610 1777 0 1777 625 0 625 314 0
		 313 623 0 623 1777 0 623 338 0 338 624 0 624 1777 0 624 337 0 337 625 0 321 626 0
		 626 1778 0 1778 629 0 629 321 0 626 316 0 316 627 0 627 1778 0 627 315 0 315 628 0
		 628 1778 0 628 485 0 485 629 0 322 630 0 630 1779 0 1779 632 0 632 322 0 630 317 0
		 317 631 0 631 1779 0 631 316 0 626 1779 0 321 632 0 324 633 0 633 1780 0 1780 635 0
		 635 324 0 633 319 0 612 1780 0 318 634 0 634 1780 0 634 323 0 323 635 0 325 636 0
		 636 1781 0 1781 637 0 637 325 0 636 320 0 609 1781 0 633 1781 0 324 637 0 326 638 0
		 638 1782 0 1782 640 0 640 326 0 638 321 0 629 1782 0 485 639 0 639 1782 0 639 486 0
		 486 640 0 327 641 0 641 1783 0 1783 642 0 642 327 0 641 322 0 632 1783 0 638 1783 0
		 326 642 0 641 1784 0 1784 645 0 645 322 0 327 643 0 643 1784 0 643 328 0 328 644 0
		 644 1784 0 644 323 0 323 645 0 329 646 0 646 1785 0 1785 647 0 647 329 0 646 324 0
		 635 1785 0 644 1785 0 328 647 0 330 648 0 648 1786 0 1786 649 0 649 330 0 648 325 0
		 637 1786 0 646 1786 0 329 649 0 332 650 0 650 1787 0 1787 652 0 652 332 0 650 326 0
		 640 1787 0;
	setAttr ".ed[2490:2655]" 486 651 0 651 1787 0 651 331 0 331 652 0 333 653 0 653 1788 0
		 1788 654 0 654 333 0 653 327 0 642 1788 0 650 1788 0 332 654 0 653 1789 0 1789 643 0
		 333 655 0 655 1789 0 655 334 0 334 656 0 656 1789 0 656 328 0 335 657 0 657 1790 0
		 1790 658 0 658 335 0 657 329 0 647 1790 0 656 1790 0 334 658 0 336 659 0 659 1791 0
		 1791 660 0 660 336 0 659 330 0 649 1791 0 657 1791 0 335 660 0 487 661 0 661 1792 0
		 1792 662 0 662 487 0 651 1792 0 661 331 0 486 662 0 438 663 0 663 1793 0 1793 665 0
		 665 438 0 663 332 0 652 1793 0 331 664 0 664 1793 0 664 437 0 437 665 0 439 666 0
		 666 1794 0 1794 667 0 667 439 0 666 333 0 654 1794 0 663 1794 0 438 667 0 666 1795 0
		 1795 655 0 439 668 0 668 1795 0 668 440 0 440 669 0 669 1795 0 669 334 0 441 670 0
		 670 1796 0 1796 671 0 671 441 0 670 335 0 658 1796 0 669 1796 0 440 671 0 442 672 0
		 672 1797 0 1797 673 0 673 442 0 672 336 0 660 1797 0 670 1797 0 441 673 0 488 674 0
		 674 1798 0 1798 675 0 675 488 0 674 437 0 664 1798 0 661 1798 0 487 675 0 312 676 0
		 676 1799 0 1799 607 0 676 339 0 339 677 0 677 1799 0 677 338 0 623 1799 0 315 678 0
		 678 1800 0 1800 680 0 680 315 0 678 350 0 350 679 0 679 1800 0 679 312 0 606 1800 0
		 320 680 0 624 1801 0 1801 682 0 682 337 0 338 681 0 681 1801 0 681 342 0 618 1801 0
		 340 682 0 677 1802 0 1802 681 0 339 683 0 683 1802 0 683 344 0 621 1802 0 351 684 0
		 684 1803 0 1803 685 0 685 351 0 684 345 0 622 1803 0 683 1803 0 339 685 0 350 686 0
		 686 1804 0 1804 679 0 686 351 0 685 1804 0 676 1804 0 341 687 0 687 1805 0 1805 617 0
		 687 346 0 346 688 0 688 1805 0 688 337 0 682 1805 0 347 689 0 689 1806 0 1806 692 0
		 692 347 0 689 346 0 346 690 0 690 1806 0 690 349 0 349 691 0 691 1806 0 691 348 0
		 348 692 0 691 1807 0 1807 694 0 694 348 0 349 693 0 693 1807 0 693 351 0 686 1807 0;
	setAttr ".ed[2656:2821]" 350 694 0 631 1808 0 1808 695 0 695 316 0 613 1808 0
		 692 1808 0 348 695 0 627 1809 0 1809 678 0 695 1809 0 694 1809 0 690 1810 0 1810 696 0
		 696 349 0 687 1810 0 616 1810 0 343 696 0 693 1811 0 1811 684 0 696 1811 0 620 1811 0
		 689 1812 0 1812 688 0 615 1812 0 625 1812 0 360 697 0 697 1813 0 1813 700 0 700 360 0
		 697 352 0 352 698 0 698 1813 0 698 353 0 353 699 0 699 1813 0 699 359 0 359 700 0
		 699 1814 0 1814 703 0 703 359 0 353 701 0 701 1814 0 701 354 0 354 702 0 702 1814 0
		 702 358 0 358 703 0 702 1815 0 1815 706 0 706 358 0 354 704 0 704 1815 0 704 389 0
		 389 705 0 705 1815 0 705 357 0 357 706 0 382 707 0 707 1816 0 1816 710 0 710 382 0
		 707 384 0 384 708 0 708 1816 0 708 385 0 385 709 0 709 1816 0 709 383 0 383 710 0
		 384 711 0 711 1817 0 1817 708 0 711 386 0 386 712 0 712 1817 0 712 387 0 387 713 0
		 713 1817 0 713 385 0 701 1818 0 1818 716 0 716 354 0 353 714 0 714 1818 0 714 380 0
		 380 715 0 715 1818 0 715 379 0 379 716 0 362 717 0 717 1819 0 1819 720 0 720 362 0
		 717 356 0 356 718 0 718 1819 0 718 355 0 355 719 0 719 1819 0 719 361 0 361 720 0
		 363 721 0 721 1820 0 1820 723 0 723 363 0 721 357 0 357 722 0 722 1820 0 722 356 0
		 717 1820 0 362 723 0 365 724 0 724 1821 0 1821 726 0 726 365 0 724 359 0 703 1821 0
		 358 725 0 725 1821 0 725 364 0 364 726 0 366 727 0 727 1822 0 1822 728 0 728 366 0
		 727 360 0 700 1822 0 724 1822 0 365 728 0 368 729 0 729 1823 0 1823 731 0 731 368 0
		 729 362 0 720 1823 0 361 730 0 730 1823 0 730 367 0 367 731 0 369 732 0 732 1824 0
		 1824 733 0 733 369 0 732 363 0 723 1824 0 729 1824 0 368 733 0 370 734 0 734 1825 0
		 1825 736 0 736 370 0 734 364 0 364 735 0 735 1825 0 735 363 0 732 1825 0 369 736 0
		 371 737 0 737 1826 0 1826 738 0 738 371 0 737 365 0 726 1826 0 734 1826 0 370 738 0
		 372 739 0;
	setAttr ".ed[2822:2987]" 739 1827 0 1827 740 0 740 372 0 739 366 0 728 1827 0
		 737 1827 0 371 740 0 372 741 0 741 1828 0 1828 739 0 484 742 0 742 1828 0 741 484 0
		 742 366 0 374 743 0 743 1829 0 1829 745 0 745 374 0 743 368 0 731 1829 0 367 744 0
		 744 1829 0 744 373 0 373 745 0 375 746 0 746 1830 0 1830 747 0 747 375 0 746 369 0
		 733 1830 0 743 1830 0 374 747 0 376 748 0 748 1831 0 1831 749 0 749 376 0 748 370 0
		 736 1831 0 746 1831 0 375 749 0 377 750 0 750 1832 0 1832 751 0 751 377 0 750 371 0
		 738 1832 0 748 1832 0 376 751 0 378 752 0 752 1833 0 1833 753 0 753 378 0 752 372 0
		 740 1833 0 750 1833 0 377 753 0 378 754 0 754 1834 0 1834 752 0 754 483 0 483 755 0
		 755 1834 0 755 484 0 741 1834 0 304 756 0 756 1835 0 1835 575 0 756 374 0 745 1835 0
		 373 757 0 757 1835 0 757 477 0 305 758 0 758 1836 0 1836 579 0 758 375 0 747 1836 0
		 756 1836 0 303 759 0 759 1837 0 1837 562 0 759 376 0 749 1837 0 758 1837 0 751 1838 0
		 1838 761 0 761 377 0 759 1838 0 303 760 0 760 1838 0 760 302 0 302 761 0 753 1839 0
		 1839 763 0 763 378 0 761 1839 0 302 762 0 762 1839 0 762 481 0 481 763 0 482 764 0
		 764 1840 0 1840 765 0 765 482 0 764 483 0 754 1840 0 763 1840 0 481 765 0 352 766 0
		 766 1841 0 1841 698 0 766 381 0 381 767 0 767 1841 0 767 380 0 714 1841 0 697 1842 0
		 1842 770 0 770 352 0 360 768 0 768 1842 0 768 355 0 355 769 0 769 1842 0 769 392 0
		 392 770 0 715 1843 0 1843 772 0 772 379 0 380 771 0 771 1843 0 771 384 0 707 1843 0
		 382 772 0 767 1844 0 1844 771 0 381 773 0 773 1844 0 773 386 0 711 1844 0 773 1845 0
		 1845 712 0 381 774 0 774 1845 0 774 393 0 393 775 0 775 1845 0 775 387 0 766 1846 0
		 1846 774 0 770 1846 0 392 776 0 776 1846 0 776 393 0 772 1847 0 1847 778 0 778 379 0
		 710 1847 0 383 777 0 777 1847 0 777 388 0 388 778 0 389 779 0 779 1848 0 1848 782 0
		 782 389 0;
	setAttr ".ed[2988:3153]" 779 388 0 388 780 0 780 1848 0 780 391 0 391 781 0 781 1848 0
		 781 390 0 390 782 0 781 1849 0 1849 784 0 784 390 0 391 783 0 783 1849 0 783 393 0
		 776 1849 0 392 784 0 722 1850 0 1850 785 0 785 356 0 705 1850 0 782 1850 0 390 785 0
		 718 1851 0 1851 769 0 785 1851 0 784 1851 0 780 1852 0 1852 786 0 786 391 0 777 1852 0
		 709 1852 0 385 786 0 783 1853 0 1853 775 0 786 1853 0 713 1853 0 716 1854 0 1854 704 0
		 778 1854 0 779 1854 0 394 787 0 787 1855 0 1855 789 0 789 394 0 787 21 0 1275 1855 0
		 15 788 0 788 1855 0 788 299 0 299 789 0 395 790 0 790 1856 0 1856 792 0 792 395 0
		 790 394 0 789 1856 0 299 791 0 791 1856 0 791 300 0 300 792 0 396 793 0 793 1857 0
		 1857 795 0 795 396 0 793 395 0 792 1857 0 300 794 0 794 1857 0 794 301 0 301 795 0
		 397 796 0 796 1858 0 1858 798 0 798 397 0 796 396 0 795 1858 0 301 797 0 797 1858 0
		 797 302 0 302 798 0 398 799 0 799 1859 0 1859 800 0 800 398 0 799 397 0 798 1859 0
		 760 1859 0 303 800 0 22 801 0 801 1860 0 1860 1288 0 801 398 0 800 1860 0 561 1860 0
		 582 1861 0 1861 803 0 803 399 0 1292 1861 0 25 802 0 802 1861 0 802 404 0 404 803 0
		 585 1862 0 1862 805 0 805 400 0 803 1862 0 404 804 0 804 1862 0 804 405 0 405 805 0
		 587 1863 0 1863 807 0 807 401 0 805 1863 0 405 806 0 806 1863 0 806 406 0 406 807 0
		 590 1864 0 1864 809 0 809 402 0 807 1864 0 406 808 0 808 1864 0 808 407 0 407 809 0
		 594 1865 0 1865 811 0 811 403 0 809 1865 0 407 810 0 810 1865 0 810 408 0 408 811 0
		 597 1866 0 1866 1301 0 811 1866 0 408 812 0 812 1866 0 812 26 0 802 1867 0 1867 813 0
		 813 404 0 1304 1867 0 787 1867 0 394 813 0 804 1868 0 1868 814 0 814 405 0 813 1868 0
		 790 1868 0 395 814 0 806 1869 0 1869 815 0 815 406 0 814 1869 0 793 1869 0 396 815 0
		 808 1870 0 1870 816 0 816 407 0 815 1870 0 796 1870 0 397 816 0 810 1871 0 1871 817 0;
	setAttr ".ed[3154:3319]" 817 408 0 816 1871 0 799 1871 0 398 817 0 812 1872 0
		 1872 1309 0 817 1872 0 801 1872 0 538 1873 0 1873 819 0 819 273 0 1312 1873 0 20 818 0
		 818 1873 0 818 290 0 290 819 0 1315 1874 0 1874 604 0 27 820 0 820 1874 0 820 292 0
		 292 821 0 821 1874 0 821 291 0 541 1875 0 1875 823 0 823 275 0 819 1875 0 290 822 0
		 822 1875 0 822 311 0 311 823 0 410 824 0 824 1876 0 1876 827 0 827 410 0 824 411 0
		 411 825 0 825 1876 0 825 423 0 423 826 0 826 1876 0 826 409 0 409 827 0 824 1877 0
		 1877 830 0 830 411 0 410 828 0 828 1877 0 828 421 0 421 829 0 829 1877 0 829 422 0
		 422 830 0 826 1878 0 1878 833 0 833 409 0 423 831 0 831 1878 0 831 412 0 412 832 0
		 832 1878 0 832 413 0 413 833 0 456 834 0 834 1879 0 1879 837 0 837 456 0 834 467 0
		 467 835 0 835 1879 0 835 464 0 464 836 0 836 1879 0 836 428 0 428 837 0 413 838 0
		 838 1880 0 1880 841 0 841 413 0 838 427 0 427 839 0 839 1880 0 839 448 0 448 840 0
		 840 1880 0 840 454 0 454 841 0 415 842 0 842 1881 0 1881 845 0 845 415 0 842 424 0
		 424 843 0 843 1881 0 843 425 0 425 844 0 844 1881 0 844 418 0 418 845 0 416 846 0
		 846 1882 0 1882 848 0 848 416 0 415 847 0 847 1882 0 846 415 0 417 848 0 847 417 0
		 848 1883 0 1883 851 0 851 416 0 417 849 0 849 1883 0 849 414 0 414 850 0 850 1883 0
		 850 428 0 428 851 0 35 852 0 852 1884 0 1884 1346 0 852 420 0 420 853 0 853 1884 0
		 853 455 0 455 854 0 854 1884 0 854 50 0 43 855 0 855 1885 0 1885 1350 0 855 447 0
		 447 856 0 856 1885 0 856 429 0 429 857 0 857 1885 0 857 41 0 1356 1886 0 1886 859 0
		 859 31 0 30 858 0 858 1886 0 858 422 0 829 1886 0 421 859 0 32 860 0 860 1887 0 1887 1357 0
		 860 411 0 830 1887 0 858 1887 0 860 1888 0 1888 825 0 1360 1888 0 28 861 0 861 1888 0
		 861 423 0 470 862 0 862 1889 0 1889 863 0 863 470 0 862 423 0 861 1889 0 1362 1889 0;
	setAttr ".ed[3320:3485]" 45 863 0 843 1890 0 1890 865 0 865 425 0 424 864 0 864 1890 0
		 864 36 0 1365 1890 0 38 865 0 37 866 0 866 1891 0 1891 1367 0 866 419 0 419 867 0
		 867 1891 0 867 446 0 446 868 0 868 1891 0 868 42 0 419 869 0 869 1892 0 1892 867 0
		 869 417 0 417 870 0 870 1892 0 870 445 0 445 871 0 871 1892 0 871 446 0 844 1893 0
		 1893 874 0 874 418 0 425 872 0 872 1893 0 872 443 0 443 873 0 873 1893 0 873 444 0
		 444 874 0 865 1894 0 1894 872 0 1378 1894 0 39 875 0 875 1894 0 875 443 0 424 876 0
		 876 1895 0 1895 864 0 876 468 0 468 877 0 877 1895 0 877 51 0 1379 1895 0 466 878 0
		 878 1896 0 1896 879 0 879 466 0 878 468 0 876 1896 0 842 1896 0 415 879 0 465 880 0
		 880 1897 0 1897 881 0 881 465 0 880 466 0 879 1897 0 846 1897 0 416 881 0 434 882 0
		 882 1898 0 1898 885 0 885 434 0 882 435 0 435 883 0 883 1898 0 883 433 0 433 884 0
		 884 1898 0 884 431 0 431 885 0 857 1899 0 1899 1390 0 429 886 0 886 1899 0 886 420 0
		 852 1899 0 476 887 0 887 1900 0 1900 889 0 889 476 0 887 456 0 837 1900 0 428 888 0
		 888 1900 0 888 475 0 475 889 0 850 1901 0 1901 888 0 414 890 0 890 1901 0 890 474 0
		 474 891 0 891 1901 0 891 475 0 420 892 0 892 1902 0 1902 853 0 892 472 0 472 893 0
		 893 1902 0 893 473 0 473 894 0 894 1902 0 894 455 0 886 1903 0 1903 892 0 429 895 0
		 895 1903 0 895 471 0 471 896 0 896 1903 0 896 472 0 434 897 0 897 1904 0 1904 899 0
		 899 434 0 436 898 0 898 1904 0 897 436 0 430 899 0 898 430 0 899 1905 0 1905 882 0
		 430 900 0 900 1905 0 900 432 0 432 901 0 901 1905 0 901 435 0 885 1906 0 1906 897 0
		 431 902 0 902 1906 0 902 436 0 558 1907 0 1907 1408 0 274 903 0 903 1907 0 903 292 0
		 820 1907 0 309 904 0 904 1908 0 1908 592 0 904 438 0 665 1908 0 437 905 0 905 1908 0
		 905 308 0 310 906 0 906 1909 0 1909 593 0 906 439 0 667 1909 0 904 1909 0 906 1910 0;
	setAttr ".ed[3486:3651]" 1910 668 0 605 1910 0 291 907 0 907 1910 0 907 440 0
		 292 908 0 908 1911 0 1911 821 0 908 441 0 671 1911 0 907 1911 0 293 909 0 909 1912 0
		 1912 910 0 910 293 0 909 442 0 673 1912 0 908 1912 0 292 910 0 905 1913 0 1913 603 0
		 674 1913 0 488 911 0 911 1913 0 911 489 0 274 912 0 912 1914 0 1914 903 0 910 1914 0
		 912 293 0 580 1915 0 1915 1419 0 296 913 0 913 1915 0 913 443 0 875 1915 0 297 914 0
		 914 1916 0 1916 915 0 915 297 0 914 444 0 873 1916 0 913 1916 0 296 915 0 570 1917 0
		 1917 573 0 294 916 0 916 1917 0 916 444 0 914 1917 0 295 917 0 917 1918 0 1918 568 0
		 917 446 0 871 1918 0 445 918 0 918 1918 0 918 294 0 868 1919 0 1919 1426 0 917 1919 0
		 565 1919 0 34 919 0 919 1920 0 1920 1427 0 919 453 0 453 920 0 920 1920 0 920 447 0
		 855 1920 0 832 1921 0 1921 838 0 412 921 0 921 1921 0 921 426 0 426 922 0 922 1921 0
		 922 427 0 40 923 0 923 1922 0 1922 1432 0 923 469 0 469 924 0 924 1922 0 924 470 0
		 863 1922 0 1437 1923 0 1923 926 0 926 29 0 859 1923 0 421 925 0 925 1923 0 925 451 0
		 451 926 0 450 927 0 927 1924 0 1924 930 0 930 450 0 927 449 0 449 928 0 928 1924 0
		 928 454 0 454 929 0 929 1924 0 929 453 0 453 930 0 449 931 0 931 1925 0 1925 933 0
		 933 449 0 931 452 0 452 932 0 932 1925 0 932 410 0 827 1925 0 409 933 0 452 934 0
		 934 1926 0 1926 932 0 934 451 0 925 1926 0 828 1926 0 928 1927 0 1927 841 0 933 1927 0
		 833 1927 0 44 935 0 935 1928 0 1928 1446 0 935 450 0 930 1928 0 919 1928 0 452 936 0
		 936 1929 0 1929 937 0 937 452 0 936 450 0 935 1929 0 1449 1929 0 33 937 0 934 1930 0
		 1930 926 0 937 1930 0 1451 1930 0 414 938 0 938 1931 0 1931 890 0 938 455 0 894 1931 0
		 473 939 0 939 1931 0 939 474 0 419 940 0 940 1932 0 1932 869 0 940 455 0 938 1932 0
		 849 1932 0 429 941 0 941 1933 0 1933 895 0 941 456 0 887 1933 0 476 942 0 942 1933 0
		 942 471 0;
	setAttr ".ed[3652:3817]" 429 943 0 943 1934 0 1934 941 0 834 1934 0 943 467 0
		 929 1935 0 1935 920 0 454 944 0 944 1935 0 944 457 0 457 945 0 945 1935 0 945 447 0
		 1463 1936 0 1936 948 0 948 46 0 47 946 0 946 1936 0 946 460 0 460 947 0 947 1936 0
		 947 461 0 461 948 0 1467 1937 0 1937 951 0 951 48 0 49 949 0 949 1937 0 949 463 0
		 463 950 0 950 1937 0 950 462 0 462 951 0 458 952 0 952 1938 0 1938 954 0 954 458 0
		 952 459 0 459 953 0 953 1938 0 953 461 0 947 1938 0 460 954 0 952 1939 0 1939 956 0
		 956 459 0 458 955 0 955 1939 0 955 462 0 950 1939 0 463 956 0 548 1940 0 1940 958 0
		 958 283 0 282 957 0 957 1940 0 957 458 0 954 1940 0 460 958 0 551 1941 0 1941 1475 0
		 958 1941 0 946 1941 0 553 1942 0 1942 959 0 959 284 0 1477 1942 0 951 1942 0 462 959 0
		 955 1943 0 1943 959 0 957 1943 0 555 1943 0 953 1944 0 1944 961 0 961 461 0 459 960 0
		 960 1944 0 960 278 0 527 1944 0 277 961 0 948 1945 0 1945 1480 0 961 1945 0 531 1945 0
		 949 1946 0 1946 962 0 962 463 0 1482 1946 0 535 1946 0 280 962 0 960 1947 0 1947 532 0
		 956 1947 0 962 1947 0 936 1948 0 1948 927 0 931 1948 0 836 1949 0 1949 851 0 464 963 0
		 963 1949 0 963 465 0 881 1949 0 854 1950 0 1950 1484 0 940 1950 0 866 1950 0 963 1951 0
		 1951 965 0 965 465 0 464 964 0 964 1951 0 964 448 0 839 1951 0 427 965 0 922 1952 0
		 1952 965 0 426 966 0 966 1952 0 966 466 0 880 1952 0 457 967 0 967 1953 0 1953 945 0
		 967 467 0 943 1953 0 856 1953 0 835 1954 0 1954 964 0 967 1954 0 457 968 0 968 1954 0
		 968 448 0 840 1955 0 1955 944 0 968 1955 0 877 1956 0 1956 496 0 468 969 0 969 1956 0
		 969 469 0 923 1956 0 426 970 0 970 1957 0 1957 966 0 970 469 0 969 1957 0 878 1957 0
		 924 1958 0 1958 971 0 971 470 0 970 1958 0 921 1958 0 412 971 0 831 1959 0 1959 971 0
		 862 1959 0 847 1960 0 1960 870 0 845 1960 0 418 972 0 972 1960 0 972 445 0 896 1961 0
		 1961 974 0;
	setAttr ".ed[3818:3975]" 974 472 0 471 973 0 973 1961 0 973 431 0 884 1961 0
		 433 974 0 893 1962 0 1962 975 0 975 473 0 974 1962 0 883 1962 0 435 975 0 939 1963 0
		 1963 976 0 976 474 0 975 1963 0 901 1963 0 432 976 0 891 1964 0 1964 977 0 977 475 0
		 976 1964 0 900 1964 0 430 977 0 436 978 0 978 1965 0 1965 898 0 978 476 0 889 1965 0
		 977 1965 0 942 1966 0 1966 973 0 978 1966 0 902 1966 0 918 1967 0 1967 916 0 972 1967 0
		 874 1967 0 788 1968 0 1968 979 0 979 299 0 508 1968 0 564 1968 0 479 979 0 480 980 0
		 980 1969 0 1969 572 0 980 301 0 794 1969 0 300 981 0 981 1969 0 981 478 0 791 1970 0
		 1970 981 0 979 1970 0 567 1970 0 301 982 0 982 1971 0 1971 797 0 762 1971 0 982 481 0
		 480 983 0 983 1972 0 1972 980 0 983 482 0 765 1972 0 982 1972 0 571 1973 0 1973 983 0
		 576 1973 0 477 984 0 984 1973 0 984 482 0 757 1974 0 1974 984 0 373 985 0 985 1974 0
		 985 483 0 764 1974 0 755 1975 0 1975 986 0 986 484 0 985 1975 0 744 1975 0 367 986 0
		 742 1976 0 1976 987 0 987 366 0 986 1976 0 730 1976 0 361 987 0 727 1977 0 1977 768 0
		 987 1977 0 719 1977 0 725 1978 0 1978 735 0 706 1978 0 721 1978 0 634 1979 0 1979 645 0
		 614 1979 0 630 1979 0 325 988 0 988 1980 0 1980 636 0 988 485 0 628 1980 0 680 1980 0
		 330 989 0 989 1981 0 1981 648 0 989 486 0 639 1981 0 988 1981 0 336 990 0 990 1982 0
		 1982 659 0 990 487 0 662 1982 0 989 1982 0 442 991 0 991 1983 0 1983 672 0 991 488 0
		 675 1983 0 990 1983 0 911 1984 0 1984 992 0 992 489 0 991 1984 0 909 1984 0 293 992 0
		 293 993 0 993 1985 0 1985 992 0 993 311 0 311 994 0 994 1985 0 994 490 0 602 1985 0
		 822 1986 0 1986 994 0 290 995 0 995 1986 0 995 491 0 600 1986 0 818 1987 0 1987 995 0
		 525 1987 0 598 1987 0 993 1988 0 1988 823 0 912 1988 0 545 1988 0 574 1989 0 1989 577 0
		 915 1989 0;
	setAttr -s 7952 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.69246203 0.242192 -0.67958802 -0.78249103
		 -0.28956899 -0.55123299 -0.89949203 -0.30445901 -0.3134 -0.604895 0.077078 -0.792566
		 -0.78249103 -0.28956899 -0.55123299 -0.82161099 -0.46660301 -0.32747 -0.94138801
		 -0.27018499 -0.20196 -0.89949203 -0.30445901 -0.3134 -0.89949203 -0.30445901 -0.3134
		 -0.94138801 -0.27018499 -0.20196 -0.97490197 -0.145711 -0.168329 -0.99129897 0.025601
		 -0.12912001 -0.604895 0.077078 -0.792566 -0.89949203 -0.30445901 -0.3134 -0.99129897
		 0.025601 -0.12912001 -0.791493 0.35754001 -0.49568501 -0.791493 0.35754001 -0.49568501
		 -0.26282701 0.76782298 -0.58426899 -0.111164 0.53286499 -0.83886701 -0.604895 0.077078
		 -0.792566 -0.26282701 0.76782298 -0.58426899 0 0.76528299 -0.64369398 1e-06 0.60078698
		 -0.79940999 -0.111164 0.53286499 -0.83886701 -0.111164 0.53286499 -0.83886701 1e-06
		 0.60078698 -0.79940999 3.0000001e-06 0.48648801 -0.87368798 -0.29016399 0.42951399
		 -0.85517401 -0.604895 0.077078 -0.792566 -0.111164 0.53286499 -0.83886701 -0.29016399
		 0.42951399 -0.85517401 -0.69246203 0.242192 -0.67958802 -0.82161099 -0.46660301 -0.32747
		 -0.77482802 -0.55584598 -0.301126 -0.88856101 -0.44145101 -0.124819 -0.94138801 -0.27018499
		 -0.20196 -0.77482802 -0.55584598 -0.301126 -0.72764802 -0.64916199 -0.221624 -0.73820603
		 -0.67214799 -0.057178002 -0.88856101 -0.44145101 -0.124819 -0.88856101 -0.44145101
		 -0.124819 -0.73820603 -0.67214799 -0.057178002 -0.74702603 -0.66083902 -0.072420001
		 -0.909266 -0.39859799 -0.119812 -0.94138801 -0.27018499 -0.20196 -0.88856101 -0.44145101
		 -0.124819 -0.909266 -0.39859799 -0.119812 -0.97490197 -0.145711 -0.168329 -0.72764802
		 -0.64916199 -0.221624 -0.54323399 -0.795834 -0.26747999 -0.395551 -0.918262 0.018315
		 -0.73820603 -0.67214799 -0.057178002 -0.54323399 -0.795834 -0.26747999 1e-06 -0.86343998
		 -0.50445098 0 -0.99908298 0.042819999 -0.395551 -0.918262 0.018315 -0.395551 -0.918262
		 0.018315 0 -0.99908298 0.042819999 0 -1 -0.00082199997 -0.38483101 -0.92265201 -0.024870999
		 -0.73820603 -0.67214799 -0.057178002 -0.395551 -0.918262 0.018315 -0.38483101 -0.92265201
		 -0.024870999 -0.74702603 -0.66083902 -0.072420001 3.0000001e-06 0.48648801 -0.87368798
		 4e-06 -0.233596 -0.97233403 -0.44552499 -0.31497699 -0.83803201 -0.29016399 0.42951399
		 -0.85517401 4e-06 -0.233596 -0.97233403 1e-06 -0.822442 -0.56884903 -0.346003 -0.76736403
		 -0.53984702 -0.44552499 -0.31497699 -0.83803201 -0.44552499 -0.31497699 -0.83803201
		 -0.346003 -0.76736403 -0.53984702 -0.82161099 -0.46660301 -0.32747 -0.78249103 -0.28956899
		 -0.55123299 -0.29016399 0.42951399 -0.85517401 -0.44552499 -0.31497699 -0.83803201
		 -0.78249103 -0.28956899 -0.55123299 -0.69246203 0.242192 -0.67958802 0 0.72630101
		 -0.68737698 0 0.60124803 -0.79906303 -0.107854 0.52237499 -0.84586799 -0.26164901
		 0.70947999 -0.65435302 0 0.60124803 -0.79906303 0 0.66925597 -0.74303198 -0.39289001
		 0.60226798 -0.69491702 -0.107854 0.52237499 -0.84586799 -0.107854 0.52237499 -0.84586799
		 -0.39289001 0.60226798 -0.69491702 -0.71933401 0.44422999 -0.53405797 -0.64501399
		 0.26812899 -0.71558601 -0.26164901 0.70947999 -0.65435302 -0.107854 0.52237499 -0.84586799
		 -0.64501399 0.26812899 -0.71558601 -0.58711398 0.43230799 -0.68440199 -0.58711398
		 0.43230799 -0.68440199 -0.64501399 0.26812899 -0.71558601 -0.931885 0.15302899 -0.328895
		 -0.90066499 0.123667 -0.41654399 -0.64501399 0.26812899 -0.71558601 -0.71933401 0.44422999
		 -0.53405797 -0.925466 0.28264901 -0.25223601 -0.931885 0.15302899 -0.328895 -0.931885
		 0.15302899 -0.328895 -0.925466 0.28264901 -0.25223601 -0.98965299 0.118983 0.080182001
		 -0.99481398 0.072486997 -0.071353003 -0.90066499 0.123667 -0.41654399 -0.931885 0.15302899
		 -0.328895 -0.99481398 0.072486997 -0.071353003 -0.87515497 -0.078135997 -0.477492
		 -0.95929998 -0.275691 0.061145 -0.83265603 -0.236053 -0.50096202 -0.99041599 -0.059774999
		 0.124509 -0.95707899 -0.016527001 0.28935701 -0.87515497 -0.078135997 -0.477492 -0.99481398
		 0.072486997 -0.071353003 -0.99041599 -0.059774999 0.124509 -0.83265603 -0.236053
		 -0.50096202 -0.98965299 0.118983 0.080182001 -0.95707899 -0.016527001 0.28935701
		 -0.99041599 -0.059774999 0.124509 -0.99481398 0.072486997 -0.071353003 1e-06 -0.822442
		 -0.56884903 0 -0.62686801 -0.77912599 -0.53084898 -0.58604002 -0.61217397 -0.346003
		 -0.76736403 -0.53984702 0 -0.62686801 -0.77912599 1e-06 -0.86343998 -0.50445098 -0.54323399
		 -0.795834 -0.26747999 -0.53084898 -0.58604002 -0.61217397 -0.53084898 -0.58604002
		 -0.61217397 -0.54323399 -0.795834 -0.26747999 -0.72764802 -0.64916199 -0.221624 -0.77482802
		 -0.55584598 -0.301126 -0.346003 -0.76736403 -0.53984702 -0.53084898 -0.58604002 -0.61217397
		 -0.77482802 -0.55584598 -0.301126 -0.82161099 -0.46660301 -0.32747 -0.797104 0.13643
		 -0.58822799 -0.77372003 0.086678997 -0.62756997 -0.95184302 0.136361 -0.274593 -0.98472297
		 0.121184 -0.125043 -0.77372003 0.086678997 -0.62756997 -0.82896799 0.25391099 -0.49833801
		 -0.96370798 0.013965 -0.26659501 -0.95184302 0.136361 -0.274593 -0.95184302 0.136361
		 -0.274593 -0.96370798 0.013965 -0.26659501 -0.98163903 0.00041000001 0.190749 -0.98413998
		 0.087527998 0.15429901 -0.98472297 0.121184 -0.125043 -0.95184302 0.136361 -0.274593
		 -0.98413998 0.087527998 0.15429901 -0.992347 0.059737001 0.108066 -4.9999999e-06
		 0.248429 -0.96864998 -5.6000001e-05 0.33703101 -0.94149297 -0.36557999 0.22660799
		 -0.90277398 -0.42932001 0.37042099 -0.82369399 -5.6000001e-05 0.33703101 -0.94149297
		 -3.5000001e-05 0.48168001 -0.87634701 -0.53497201 0.404632 -0.74167198 -0.36557999
		 0.22660799 -0.90277398 -0.36557999 0.22660799 -0.90277398 -0.53497201 0.404632 -0.74167198;
	setAttr ".n[166:331]" -type "float3"  -0.82896799 0.25391099 -0.49833801 -0.77372003
		 0.086678997 -0.62756997 -0.42932001 0.37042099 -0.82369399 -0.36557999 0.22660799
		 -0.90277398 -0.77372003 0.086678997 -0.62756997 -0.797104 0.13643 -0.58822799 -0.68589401
		 0.017690999 0.72748601 -0.79036099 -0.25151101 0.55863398 -0.25982901 -0.22091199
		 0.94004601 -0.26325601 -0.121218 0.95708001 -0.79036099 -0.25151101 0.55863398 -0.71736401
		 -0.44402301 0.53687298 -0.33915401 -0.39234799 0.85500699 -0.25982901 -0.22091199
		 0.94004601 -0.25982901 -0.22091199 0.94004601 -0.33915401 -0.39234799 0.85500699
		 0 -0.57905197 0.81528997 0 -0.244362 0.969684 -0.26325601 -0.121218 0.95708001 -0.25982901
		 -0.22091199 0.94004601 0 -0.244362 0.969684 0 -0.15862601 0.98733902 -0.71736401
		 -0.44402301 0.53687298 -0.79036099 -0.25151101 0.55863398 -0.95710802 0.057480998
		 0.28397101 -0.95704502 -0.20044 0.20949601 -0.79036099 -0.25151101 0.55863398 -0.68589401
		 0.017690999 0.72748601 -0.93077898 0.074879996 0.357831 -0.95710802 0.057480998 0.28397101
		 -0.95710802 0.057480998 0.28397101 -0.93077898 0.074879996 0.357831 -0.992347 0.059737001
		 0.108066 -0.98413998 0.087527998 0.15429901 -0.95704502 -0.20044 0.20949601 -0.95710802
		 0.057480998 0.28397101 -0.98413998 0.087527998 0.15429901 -0.98163903 0.00041000001
		 0.190749 0 0.66925597 -0.74303198 0 0.48634499 -0.87376702 -0.45877099 0.55612499
		 -0.69300401 -0.39289001 0.60226798 -0.69491702 0 0.48634499 -0.87376702 -4.9999999e-06
		 0.248429 -0.96864998 -0.42932001 0.37042099 -0.82369399 -0.45877099 0.55612499 -0.69300401
		 -0.45877099 0.55612499 -0.69300401 -0.42932001 0.37042099 -0.82369399 -0.797104 0.13643
		 -0.58822799 -0.75907499 0.43235201 -0.48670101 -0.39289001 0.60226798 -0.69491702
		 -0.45877099 0.55612499 -0.69300401 -0.75907499 0.43235201 -0.48670101 -0.71933401
		 0.44422999 -0.53405797 -0.95929998 -0.275691 0.061145 -0.71262801 -0.020806 0.70123398
		 -0.29790801 -0.032173999 0.95405197 -0.36187801 -0.174505 0.91574699 -0.71262801
		 -0.020806 0.70123398 -0.68589401 0.017690999 0.72748601 -0.26325601 -0.121218 0.95708001
		 -0.29790801 -0.032173999 0.95405197 -0.29790801 -0.032173999 0.95405197 -0.26325601
		 -0.121218 0.95708001 0 -0.15862601 0.98733902 0 -0.034632001 0.99940002 -0.36187801
		 -0.174505 0.91574699 -0.29790801 -0.032173999 0.95405197 0 -0.034632001 0.99940002
		 0 -0.106568 0.99430603 -0.68589401 0.017690999 0.72748601 -0.71262801 -0.020806 0.70123398
		 -0.930507 0.0060549998 0.36622399 -0.93077898 0.074879996 0.357831 -0.71262801 -0.020806
		 0.70123398 -0.95929998 -0.275691 0.061145 -0.95707899 -0.016527001 0.28935701 -0.930507
		 0.0060549998 0.36622399 -0.930507 0.0060549998 0.36622399 -0.95707899 -0.016527001
		 0.28935701 -0.98965299 0.118983 0.080182001 -0.98992199 0.078682996 0.117745 -0.93077898
		 0.074879996 0.357831 -0.930507 0.0060549998 0.36622399 -0.98992199 0.078682996 0.117745
		 -0.992347 0.059737001 0.108066 -0.71933401 0.44422999 -0.53405797 -0.75907499 0.43235201
		 -0.48670101 -0.96063101 0.234173 -0.14950299 -0.925466 0.28264901 -0.25223601 -0.75907499
		 0.43235201 -0.48670101 -0.797104 0.13643 -0.58822799 -0.98472297 0.121184 -0.125043
		 -0.96063101 0.234173 -0.14950299 -0.96063101 0.234173 -0.14950299 -0.98472297 0.121184
		 -0.125043 -0.992347 0.059737001 0.108066 -0.98992199 0.078682996 0.117745 -0.925466
		 0.28264901 -0.25223601 -0.96063101 0.234173 -0.14950299 -0.98992199 0.078682996 0.117745
		 -0.98965299 0.118983 0.080182001 0 -0.95299 0.30300301 -0.30923399 -0.90526599 0.29132101
		 -0.269761 -0.96273702 0.01915 0 -0.99999899 0.00159 -0.30923399 -0.90526599 0.29132101
		 -0.0068910001 -0.92406201 0.382182 0.16159301 -0.986835 -0.0066530001 -0.269761 -0.96273702
		 0.01915 -0.269761 -0.96273702 0.01915 0.16159301 -0.986835 -0.0066530001 -0.036954001
		 -0.91939902 -0.39158601 -0.25069401 -0.963507 -0.093842 0 -0.99999899 0.00159 -0.269761
		 -0.96273702 0.01915 -0.25069401 -0.963507 -0.093842 0 -0.996149 -0.087672003 -0.57356602
		 0.81138003 0.112628 -0.64481801 0.76432902 -0.0034030001 -0.440478 0.87419897 -0.204339
		 -0.363895 0.93144 0.00056000001 -0.64481801 0.76432902 -0.0034030001 -0.71319598
		 0.68563598 -0.14579 -0.49550599 0.80301899 -0.33111 -0.440478 0.87419897 -0.204339
		 -0.440478 0.87419897 -0.204339 -0.49550599 0.80301899 -0.33111 0 0.891168 -0.45367399
		 0 0.943286 -0.33198199 -0.363895 0.93144 0.00056000001 -0.440478 0.87419897 -0.204339
		 0 0.943286 -0.33198199 0 0.99755502 -0.069885001 -0.86016202 0.47433501 0.187426
		 -0.857418 0.45669201 0.237207 -0.764027 0.62792403 0.148238 -0.72596598 0.66410398
		 0.17871401 -0.857418 0.45669201 0.237207 -0.91065902 0.36830199 0.187226 -0.82973999
		 0.55800098 0.012911 -0.764027 0.62792403 0.148238 -0.764027 0.62792403 0.148238 -0.82973999
		 0.55800098 0.012911 -0.71319598 0.68563598 -0.14579 -0.64481801 0.76432902 -0.0034030001
		 -0.72596598 0.66410398 0.17871401 -0.764027 0.62792403 0.148238 -0.64481801 0.76432902
		 -0.0034030001 -0.57356602 0.81138003 0.112628 -0.86016202 0.47433501 0.187426 -0.95059401
		 0.270937 0.15154199 -0.92281699 0.27117699 0.27362701 -0.857418 0.45669201 0.237207
		 -0.95059401 0.270937 0.15154199 -0.99298698 0.062468 0.100378 -0.96280599 0.054233
		 0.264696 -0.92281699 0.27117699 0.27362701 -0.92281699 0.27117699 0.27362701 -0.96280599
		 0.054233 0.264696 -0.924941 -0.010802 0.37995699 -0.92061698 0.21911401 0.32319301
		 -0.857418 0.45669201 0.237207 -0.92281699 0.27117699 0.27362701 -0.92061698 0.21911401
		 0.32319301 -0.91065902 0.36830199 0.187226;
	setAttr ".n[332:497]" -type "float3"  -0.924941 -0.010802 0.37995699 -0.86866403
		 -0.248933 0.42831701 -0.73064798 -0.42044699 0.537938 -0.865188 -0.156746 0.47631899
		 -0.86866403 -0.248933 0.42831701 -0.76792097 -0.368734 0.52376801 -0.543791 -0.51301497
		 0.664159 -0.73064798 -0.42044699 0.537938 -0.73064798 -0.42044699 0.537938 -0.543791
		 -0.51301497 0.664159 -0.32671899 -0.670771 0.665824 -0.60659301 -0.5625 0.56181699
		 -0.865188 -0.156746 0.47631899 -0.73064798 -0.42044699 0.537938 -0.60659301 -0.5625
		 0.56181699 -0.72754002 -0.32845399 0.60233098 -0.32671899 -0.670771 0.665824 0.019572999
		 -0.77582002 0.63064998 -0.140351 -0.82794702 0.54295999 -0.30898699 -0.75701398 0.57572299
		 -0.0068910001 -0.92406201 0.382182 -0.16509201 -0.83115798 0.530963 -0.140351 -0.82794702
		 0.54295999 0.019572999 -0.77582002 0.63064998 -0.23962399 -0.65258902 0.71882403
		 -0.30898699 -0.75701398 0.57572299 -0.140351 -0.82794702 0.54295999 -0.16509201 -0.83115798
		 0.530963 -0.23962399 -0.65258902 0.71882403 -0.16509201 -0.83115798 0.530963 -0.204678
		 -0.81051999 0.54878402 -0.130365 -0.69352698 0.708538 -0.16509201 -0.83115798 0.530963
		 -0.0068910001 -0.92406201 0.382182 -0.30923399 -0.90526599 0.29132101 -0.204678 -0.81051999
		 0.54878402 -0.204678 -0.81051999 0.54878402 -0.30923399 -0.90526599 0.29132101 0
		 -0.95299 0.30300301 0 -0.80866897 0.588265 -0.130365 -0.69352698 0.708538 -0.204678
		 -0.81051999 0.54878402 0 -0.80866897 0.588265 0 -0.702151 0.71202803 -0.60746598
		 0.79214799 -0.059037 -0.614254 0.78809398 -0.039994001 -0.32108399 0.94676602 -0.023232
		 -0.32918599 0.941827 -0.067809001 -0.614254 0.78809398 -0.039994001 -0.61291099 0.78961599
		 -0.029099001 -0.304299 0.95257598 -0.001389 -0.32108399 0.94676602 -0.023232 -0.32108399
		 0.94676602 -0.023232 -0.304299 0.95257598 -0.001389 0 0.99989998 0.014126 0 0.99994302
		 -0.010666 -0.32918599 0.941827 -0.067809001 -0.32108399 0.94676602 -0.023232 0 0.99994302
		 -0.010666 0 0.99764001 -0.068668999 -0.92398697 0.382424 0.00039199999 -0.93711901
		 0.34898701 -0.0041490002 -0.82148099 0.569305 -0.032584 -0.80479801 0.59252697 -0.0348
		 -0.93711901 0.34898701 -0.0041490002 -0.94704401 0.31957099 -0.031351 -0.83278102
		 0.55217999 -0.039662 -0.82148099 0.569305 -0.032584 -0.82148099 0.569305 -0.032584
		 -0.83278102 0.55217999 -0.039662 -0.61291099 0.78961599 -0.029099001 -0.614254 0.78809398
		 -0.039994001 -0.80479801 0.59252697 -0.0348 -0.82148099 0.569305 -0.032584 -0.614254
		 0.78809398 -0.039994001 -0.60746598 0.79214799 -0.059037 -0.94704401 0.31957099 -0.031351
		 -0.93711901 0.34898701 -0.0041490002 -0.98839802 0.14813 0.033574 -0.99298102 0.116256
		 -0.021762 -0.93711901 0.34898701 -0.0041490002 -0.92398697 0.382424 0.00039199999
		 -0.97986102 0.193407 0.049655002 -0.98839802 0.14813 0.033574 -0.98839802 0.14813
		 0.033574 -0.97986102 0.193407 0.049655002 -0.987032 0.027543001 0.158144 -0.99421698
		 -0.088762 0.060453001 -0.99298102 0.116256 -0.021762 -0.98839802 0.14813 0.033574
		 -0.99421698 -0.088762 0.060453001 -0.99164402 -0.120667 -0.045634001 -0.99164402
		 -0.120667 -0.045634001 -0.99421698 -0.088762 0.060453001 -0.88172603 -0.47100899
		 0.026647 -0.87891102 -0.45569599 -0.140917 -0.99421698 -0.088762 0.060453001 -0.987032
		 0.027543001 0.158144 -0.80994397 -0.29013601 0.509718 -0.88172603 -0.47100899 0.026647
		 -0.88172603 -0.47100899 0.026647 -0.80994397 -0.29013601 0.509718 -0.37854901 -0.457232
		 0.80475998 -0.65028501 -0.75505501 -0.083786003 -0.87891102 -0.45569599 -0.140917
		 -0.88172603 -0.47100899 0.026647 -0.65028501 -0.75505501 -0.083786003 -0.67105198
		 -0.69694698 -0.25288999 0.44351599 -0.88243997 0.15682501 -0.316183 -0.93806303 -0.14165699
		 -0.45434901 -0.88237399 -0.122408 0.087311998 -0.67729998 0.73050803 -0.316183 -0.93806303
		 -0.14165699 -0.37259901 -0.87012798 -0.32256401 -0.498959 -0.807482 -0.31466201 -0.45434901
		 -0.88237399 -0.122408 -0.45434901 -0.88237399 -0.122408 -0.498959 -0.807482 -0.31466201
		 -0.67105198 -0.69694698 -0.25288999 -0.65028501 -0.75505501 -0.083786003 0.087311998
		 -0.67729998 0.73050803 -0.45434901 -0.88237399 -0.122408 -0.65028501 -0.75505501
		 -0.083786003 -0.37854901 -0.457232 0.80475998 0 -0.98900902 -0.147853 0 -0.984276
		 -0.17663901 -0.21547499 -0.96173298 -0.16923399 -0.103198 -0.98765898 -0.11781 0
		 -0.984276 -0.17663901 0 -0.95647502 -0.29181501 -0.229974 -0.924577 -0.30375999 -0.21547499
		 -0.96173298 -0.16923399 -0.21547499 -0.96173298 -0.16923399 -0.229974 -0.924577 -0.30375999
		 -0.37259901 -0.87012798 -0.32256401 -0.316183 -0.93806303 -0.14165699 -0.103198 -0.98765898
		 -0.11781 -0.21547499 -0.96173298 -0.16923399 -0.316183 -0.93806303 -0.14165699 0.44351599
		 -0.88243997 0.15682501 -0.58783799 0.78446501 -0.19763801 -0.59680599 0.79576701
		 -0.102847 -0.32450899 0.937038 -0.129053 -0.31618199 0.92333102 -0.21792001 -0.59680599
		 0.79576701 -0.102847 -0.60746598 0.79214799 -0.059037 -0.32918599 0.941827 -0.067809001
		 -0.32450899 0.937038 -0.129053 -0.32450899 0.937038 -0.129053 -0.32918599 0.941827
		 -0.067809001 0 0.99764001 -0.068668999 0 0.99013799 -0.140093 -0.31618199 0.92333102
		 -0.21792001 -0.32450899 0.937038 -0.129053 0 0.99013799 -0.140093 0 0.97395498 -0.226742
		 -0.90560502 0.393033 -0.15938801 -0.91476798 0.40192699 -0.040684 -0.79205799 0.606157
		 -0.072237998 -0.78367698 0.59532601 -0.17730799 -0.91476798 0.40192699 -0.040684
		 -0.92398697 0.382424 0.00039199999 -0.80479801 0.59252697 -0.0348 -0.79205799 0.606157
		 -0.072237998 -0.79205799 0.606157 -0.072237998 -0.80479801 0.59252697 -0.0348;
	setAttr ".n[498:663]" -type "float3"  -0.60746598 0.79214799 -0.059037 -0.59680599
		 0.79576701 -0.102847 -0.78367698 0.59532601 -0.17730799 -0.79205799 0.606157 -0.072237998
		 -0.59680599 0.79576701 -0.102847 -0.58783799 0.78446501 -0.19763801 -0.9831 0.133393
		 -0.125385 -0.99115598 0.125044 0.044425 -0.97396302 0.22668301 -0.0033539999 -0.96403402
		 0.22372501 -0.143473 -0.99115598 0.125044 0.044425 -0.987032 0.027543001 0.158144
		 -0.97986102 0.193407 0.049655002 -0.97396302 0.22668301 -0.0033539999 -0.97396302
		 0.22668301 -0.0033539999 -0.97986102 0.193407 0.049655002 -0.92398697 0.382424 0.00039199999
		 -0.91476798 0.40192699 -0.040684 -0.96403402 0.22372501 -0.143473 -0.97396302 0.22668301
		 -0.0033539999 -0.91476798 0.40192699 -0.040684 -0.90560502 0.393033 -0.15938801 0.44351599
		 -0.88243997 0.15682501 0.61586303 -0.78527099 -0.063747004 0.001053 -0.99018198 -0.139782
		 -0.103198 -0.98765898 -0.11781 0.61586303 -0.78527099 -0.063747004 0.465749 -0.82991201
		 -0.30712301 0.011086 -0.97081 -0.239592 0.001053 -0.99018198 -0.139782 0.001053 -0.99018198
		 -0.139782 0.011086 -0.97081 -0.239592 0 -0.97754002 -0.210752 0 -0.98769301 -0.156408
		 -0.103198 -0.98765898 -0.11781 0.001053 -0.99018198 -0.139782 0 -0.98769301 -0.156408
		 0 -0.98900902 -0.147853 -0.80799401 -0.27249801 -0.52239001 -0.472716 -0.461 -0.75101203
		 -0.39465299 -0.59001601 -0.70436502 -0.718786 -0.34947801 -0.60100901 -0.472716 -0.461
		 -0.75101203 -0.021051999 -0.53066301 -0.84732199 -0.014247 -0.6681 -0.74393499 -0.39465299
		 -0.59001601 -0.70436502 -0.39465299 -0.59001601 -0.70436502 -0.014247 -0.6681 -0.74393499
		 -0.00358 -0.89402598 -0.44800001 -0.220239 -0.84897399 -0.480351 -0.718786 -0.34947801
		 -0.60100901 -0.39465299 -0.59001601 -0.70436502 -0.220239 -0.84897399 -0.480351 -0.672355
		 -0.540353 -0.50592202 -0.021051999 -0.53066301 -0.84732199 0.444455 -0.46952099 -0.76289499
		 0.37386799 -0.60361701 -0.70418 -0.014247 -0.6681 -0.74393499 0.444455 -0.46952099
		 -0.76289499 0.80959702 -0.274993 -0.51858699 0.739806 -0.34402201 -0.57821798 0.37386799
		 -0.60361701 -0.70418 0.37386799 -0.60361701 -0.70418 0.739806 -0.34402201 -0.57821798
		 0.68844002 -0.52883798 -0.49636701 0.214577 -0.85363501 -0.474621 -0.014247 -0.6681
		 -0.74393499 0.37386799 -0.60361701 -0.70418 0.214577 -0.85363501 -0.474621 -0.00358
		 -0.89402598 -0.44800001 0.82716697 0.54701602 0.128719 0.95651102 0.120681 -0.26556
		 0.97672099 0.087474003 -0.195868 0.86789697 0.382687 0.31670901 0.95651102 0.120681
		 -0.26556 0.68844002 -0.52883798 -0.49636701 0.739806 -0.34402201 -0.57821798 0.97672099
		 0.087474003 -0.195868 0.97672099 0.087474003 -0.195868 0.739806 -0.34402201 -0.57821798
		 0.80959702 -0.274993 -0.51858699 0.99938601 0.024385 -0.025163 0.86789697 0.382687
		 0.31670901 0.97672099 0.087474003 -0.195868 0.99938601 0.024385 -0.025163 0.88701302
		 0.18435299 0.423345 0 0.37454599 0.92720801 0 -0.052452002 0.99862301 0.43790799
		 -0.030965 0.89848602 0.41017199 0.35622701 0.83956099 0 -0.052452002 0.99862301 0
		 -0.77154797 0.636172 0.30695099 -0.74711698 0.58957398 0.43790799 -0.030965 0.89848602
		 0.43790799 -0.030965 0.89848602 0.30695099 -0.74711698 0.58957398 0.61857498 -0.53210998
		 0.57811999 0.728791 0.056428999 0.68240702 0.41017199 0.35622701 0.83956099 0.43790799
		 -0.030965 0.89848602 0.728791 0.056428999 0.68240702 0.655137 0.29282501 0.696455
		 -0.655137 0.292826 0.69645399 -0.728791 0.056430001 0.68240702 -0.43790701 -0.030965
		 0.89848697 -0.410171 0.35622701 0.83956099 -0.728791 0.056430001 0.68240702 -0.61857599
		 -0.53211099 0.57811999 -0.30695 -0.747118 0.58957303 -0.43790701 -0.030965 0.89848697
		 -0.43790701 -0.030965 0.89848697 -0.30695 -0.747118 0.58957303 0 -0.77154797 0.636172
		 0 -0.052452002 0.99862301 -0.410171 0.35622701 0.83956099 -0.43790701 -0.030965 0.89848697
		 0 -0.052452002 0.99862301 0 0.37454599 0.92720801 0.68844002 -0.52883798 -0.49636701
		 0.69052899 -0.68243301 -0.23969799 0.069914997 -0.987737 -0.139595 0.214577 -0.85363501
		 -0.474621 0.69052899 -0.68243301 -0.23969799 0.73721999 -0.67547798 0.015389 0.038492002
		 -0.99925297 -0.0035039999 0.069914997 -0.987737 -0.139595 0.069914997 -0.987737 -0.139595
		 0.038492002 -0.99925297 -0.0035039999 0 -1 0 -0.000186 -0.99371397 -0.111949 0.214577
		 -0.85363501 -0.474621 0.069914997 -0.987737 -0.139595 -0.000186 -0.99371397 -0.111949
		 -0.00358 -0.89402598 -0.44800001 -0.027753999 0.040325999 0.99880099 -0.66040701
		 0.033505999 0.75015998 -0.60952401 0.170863 0.77413601 -0.0088769998 0.20186301 0.97937399
		 -0.66040701 0.033505999 0.75015998 -0.92800301 0.0017350001 0.37256899 -0.90581602
		 0.096073002 0.412635 -0.60952401 0.170863 0.77413601 -0.60952401 0.170863 0.77413601
		 -0.90581602 0.096073002 0.412635 -0.88083398 0.19692899 0.43052399 -0.545295 0.270827
		 0.79328799 -0.0088769998 0.20186301 0.97937399 -0.60952401 0.170863 0.77413601 -0.545295
		 0.270827 0.79328799 -0.013127 0.292716 0.95611 0.923388 -0.037503999 0.38203201 0.61801201
		 0.0073779998 0.786134 0.59158301 0.15629201 0.79095101 0.90843999 0.065426998 0.41286299
		 0.61801201 0.0073779998 0.786134 -0.027753999 0.040325999 0.99880099 -0.0088769998
		 0.20186301 0.97937399 0.59158301 0.15629201 0.79095101 0.59158301 0.15629201 0.79095101
		 -0.0088769998 0.20186301 0.97937399 -0.013127 0.292716 0.95611 0.53162199 0.274829
		 0.80115402 0.90843999 0.065426998 0.41286299 0.59158301 0.15629201 0.79095101 0.53162199
		 0.274829 0.80115402 0.88701302 0.18435299 0.423345;
	setAttr ".n[664:829]" -type "float3"  -0.040782999 -0.26348999 -0.96380001
		 0.538984 -0.31562799 -0.78094602 0.499659 -0.41730699 -0.759076 -0.026067 -0.49362299
		 -0.869286 0.538984 -0.31562799 -0.78094602 0.84717202 -0.22944701 -0.47922099 0.84923297
		 -0.258809 -0.46024001 0.499659 -0.41730699 -0.759076 0.499659 -0.41730699 -0.759076
		 0.84923297 -0.258809 -0.46024001 0.80959702 -0.274993 -0.51858699 0.444455 -0.46952099
		 -0.76289499 -0.026067 -0.49362299 -0.869286 0.499659 -0.41730699 -0.759076 0.444455
		 -0.46952099 -0.76289499 -0.021051999 -0.53066301 -0.84732199 -0.86735398 -0.16575401
		 -0.46927801 -0.58960098 -0.276885 -0.758753 -0.53198397 -0.40472499 -0.74376798 -0.861628
		 -0.240448 -0.44696999 -0.58960098 -0.276885 -0.758753 -0.040782999 -0.26348999 -0.96380001
		 -0.026067 -0.49362299 -0.869286 -0.53198397 -0.40472499 -0.74376798 -0.53198397 -0.40472499
		 -0.74376798 -0.026067 -0.49362299 -0.869286 -0.021051999 -0.53066301 -0.84732199
		 -0.472716 -0.461 -0.75101203 -0.861628 -0.240448 -0.44696999 -0.53198397 -0.40472499
		 -0.74376798 -0.472716 -0.461 -0.75101203 -0.80799401 -0.27249801 -0.52239001 -0.081698
		 -0.415638 0.90585297 -0.60035402 -0.34264299 0.72261399 -0.67055899 -0.182695 0.71900803
		 -0.07164 -0.231213 0.97026199 -0.60035402 -0.34264299 0.72261399 -0.92303598 -0.215864
		 0.318445 -0.93110102 -0.122927 0.34342399 -0.67055899 -0.182695 0.71900803 -0.67055899
		 -0.182695 0.71900803 -0.93110102 -0.122927 0.34342399 -0.92800301 0.0017350001 0.37256899
		 -0.66040701 0.033505999 0.75015998 -0.07164 -0.231213 0.97026199 -0.67055899 -0.182695
		 0.71900803 -0.66040701 0.033505999 0.75015998 -0.027753999 0.040325999 0.99880099
		 0.88066697 -0.25509399 0.39919099 0.51105499 -0.38559899 0.76820302 0.57873201 -0.218693
		 0.78564799 0.90585703 -0.16200399 0.391379 0.51105499 -0.38559899 0.76820302 -0.081698
		 -0.415638 0.90585297 -0.07164 -0.231213 0.97026199 0.57873201 -0.218693 0.78564799
		 0.57873201 -0.218693 0.78564799 -0.07164 -0.231213 0.97026199 -0.027753999 0.040325999
		 0.99880099 0.61801201 0.0073779998 0.786134 0.90585703 -0.16200399 0.391379 0.57873201
		 -0.218693 0.78564799 0.61801201 0.0073779998 0.786134 0.923388 -0.037503999 0.38203201
		 0.923388 -0.037503999 0.38203201 0.99583203 -0.090186998 0.013636 0.99271703 -0.116726
		 0.029803 0.90585703 -0.16200399 0.391379 0.99583203 -0.090186998 0.013636 0.84717202
		 -0.22944701 -0.47922099 0.850155 -0.064095996 -0.52261698 0.99271703 -0.116726 0.029803
		 0.99271703 -0.116726 0.029803 0.850155 -0.064095996 -0.52261698 0.86125398 0.074418001
		 -0.50269699 0.99318498 -0.111315 0.034529001 0.90585703 -0.16200399 0.391379 0.99271703
		 -0.116726 0.029803 0.99318498 -0.111315 0.034529001 0.88066697 -0.25509399 0.39919099
		 -0.034542002 0.27811599 -0.95992601 0.36422601 0.242413 -0.89920801 0.44806901 0.062068
		 -0.89184201 -0.069871001 0.15558299 -0.985349 0.36422601 0.242413 -0.89920801 0.86125398
		 0.074418001 -0.50269699 0.850155 -0.064095996 -0.52261698 0.44806901 0.062068 -0.89184201
		 0.44806901 0.062068 -0.89184201 0.850155 -0.064095996 -0.52261698 0.84717202 -0.22944701
		 -0.47922099 0.538984 -0.31562799 -0.78094602 -0.069871001 0.15558299 -0.985349 0.44806901
		 0.062068 -0.89184201 0.538984 -0.31562799 -0.78094602 -0.040782999 -0.26348999 -0.96380001
		 -0.837623 0.145586 -0.52649099 -0.44090301 0.26015401 -0.859025 -0.53430301 0.108717
		 -0.83827299 -0.866157 0.042502999 -0.49796101 -0.44090301 0.26015401 -0.859025 -0.034542002
		 0.27811599 -0.95992601 -0.069871001 0.15558299 -0.985349 -0.53430301 0.108717 -0.83827299
		 -0.53430301 0.108717 -0.83827299 -0.069871001 0.15558299 -0.985349 -0.040782999 -0.26348999
		 -0.96380001 -0.58960098 -0.276885 -0.758753 -0.866157 0.042502999 -0.49796101 -0.53430301
		 0.108717 -0.83827299 -0.58960098 -0.276885 -0.758753 -0.86735398 -0.16575401 -0.46927801
		 -0.133568 -0.56080902 0.81709999 -0.48093799 -0.46541101 0.74302799 -0.509027 -0.42197299
		 0.75022 -0.076991998 -0.49671999 0.86448902 -0.48093799 -0.46541101 0.74302799 -0.72645998
		 -0.35105401 0.59077698 -0.74207097 -0.34966701 0.57189399 -0.509027 -0.42197299 0.75022
		 -0.509027 -0.42197299 0.75022 -0.74207097 -0.34966701 0.57189399 -0.92303598 -0.215864
		 0.318445 -0.60035402 -0.34264299 0.72261399 -0.076991998 -0.49671999 0.86448902 -0.509027
		 -0.42197299 0.75022 -0.60035402 -0.34264299 0.72261399 -0.081698 -0.415638 0.90585297
		 0.87272 -0.34500599 0.34544301 0.36598399 -0.56877702 0.736579 0.45604199 -0.473602
		 0.75347602 0.874156 -0.29990801 0.38197601 0.36598399 -0.56877702 0.736579 -0.133568
		 -0.56080902 0.81709999 -0.076991998 -0.49671999 0.86448902 0.45604199 -0.473602 0.75347602
		 0.45604199 -0.473602 0.75347602 -0.076991998 -0.49671999 0.86448902 -0.081698 -0.415638
		 0.90585297 0.51105499 -0.38559899 0.76820302 0.874156 -0.29990801 0.38197601 0.45604199
		 -0.473602 0.75347602 0.51105499 -0.38559899 0.76820302 0.88066697 -0.25509399 0.39919099
		 0.88066697 -0.25509399 0.39919099 0.99318498 -0.111315 0.034529001 0.99348599 -0.112454
		 0.018428 0.874156 -0.29990801 0.38197601 0.99318498 -0.111315 0.034529001 0.86125398
		 0.074418001 -0.50269699 0.88625598 0.063545004 -0.45881599 0.99348599 -0.112454 0.018428
		 0.99348599 -0.112454 0.018428 0.88625598 0.063545004 -0.45881599 0.91385299 -0.041887
		 -0.40388 0.990143 -0.140044 -0.002112 0.874156 -0.29990801 0.38197601 0.99348599
		 -0.112454 0.018428 0.990143 -0.140044 -0.002112 0.87272 -0.34500599 0.34544301 -0.052152
		 -0.059971999 -0.99683702 0.41398299 -0.0092559997 -0.91023803 0.39657101 0.210421
		 -0.89356297 -0.018835001 0.226244 -0.97388798 0.41398299 -0.0092559997 -0.91023803
		 0.91385299 -0.041887 -0.40388;
	setAttr ".n[830:995]" -type "float3"  0.88625598 0.063545004 -0.45881599 0.39657101
		 0.210421 -0.89356297 0.39657101 0.210421 -0.89356297 0.88625598 0.063545004 -0.45881599
		 0.86125398 0.074418001 -0.50269699 0.36422601 0.242413 -0.89920801 -0.018835001 0.226244
		 -0.97388798 0.39657101 0.210421 -0.89356297 0.36422601 0.242413 -0.89920801 -0.034542002
		 0.27811599 -0.95992601 -0.81526399 -0.065008 -0.57542998 -0.43961501 -0.063239999
		 -0.89595801 -0.42661199 0.200203 -0.88199902 -0.816558 0.10337 -0.56793302 -0.43961501
		 -0.063239999 -0.89595801 -0.052152 -0.059971999 -0.99683702 -0.018835001 0.226244
		 -0.97388798 -0.42661199 0.200203 -0.88199902 -0.42661199 0.200203 -0.88199902 -0.018835001
		 0.226244 -0.97388798 -0.034542002 0.27811599 -0.95992601 -0.44090301 0.26015401 -0.859025
		 -0.816558 0.10337 -0.56793302 -0.42661199 0.200203 -0.88199902 -0.44090301 0.26015401
		 -0.859025 -0.837623 0.145586 -0.52649099 -0.99429399 -0.095183 -0.048168998 -0.99106598
		 -0.129228 0.032974999 -0.91975403 -0.221604 0.32395199 -0.93702799 -0.193547 0.290721
		 -0.92303598 -0.215864 0.318445 -0.74207097 -0.34966701 0.57189399 -0.91975403 -0.221604
		 0.32395199 -0.99106598 -0.129228 0.032974999 -0.72645998 -0.35105401 0.59077698 -0.93702799
		 -0.193547 0.290721 -0.91975403 -0.221604 0.32395199 -0.74207097 -0.34966701 0.57189399
		 -0.172748 -0.340029 0.92441303 -0.55284297 -0.24237201 0.79725802 -0.53218198 -0.424523
		 0.73250401 -0.20296 -0.54192501 0.81555098 -0.55284297 -0.24237201 0.79725802 -0.86384898
		 -0.117969 0.48974299 -0.80706602 -0.27244401 0.52385098 -0.53218198 -0.424523 0.73250401
		 -0.53218198 -0.424523 0.73250401 -0.80706602 -0.27244401 0.52385098 -0.72645998 -0.35105401
		 0.59077698 -0.48093799 -0.46541101 0.74302799 -0.20296 -0.54192501 0.81555098 -0.53218198
		 -0.424523 0.73250401 -0.48093799 -0.46541101 0.74302799 -0.133568 -0.56080902 0.81709999
		 0.894687 -0.32075799 0.31088501 0.397984 -0.40689099 0.82222199 0.307511 -0.595469
		 0.74219501 0.87074 -0.38202199 0.309632 0.397984 -0.40689099 0.82222199 -0.172748
		 -0.340029 0.92441303 -0.20296 -0.54192501 0.81555098 0.307511 -0.595469 0.74219501
		 0.307511 -0.595469 0.74219501 -0.20296 -0.54192501 0.81555098 -0.133568 -0.56080902
		 0.81709999 0.36598399 -0.56877702 0.736579 0.87074 -0.38202199 0.309632 0.307511
		 -0.595469 0.74219501 0.36598399 -0.56877702 0.736579 0.87272 -0.34500599 0.34544301
		 0.87272 -0.34500599 0.34544301 0.990143 -0.140044 -0.002112 0.979258 -0.20251 -0.0065370002
		 0.87074 -0.38202199 0.309632 0.990143 -0.140044 -0.002112 0.91385299 -0.041887 -0.40388
		 0.91339499 -0.223996 -0.33990601 0.979258 -0.20251 -0.0065370002 0.979258 -0.20251
		 -0.0065370002 0.91339499 -0.223996 -0.33990601 0.88205701 -0.37190899 -0.28923801
		 0.96584803 -0.25901201 0.0071339998 0.87074 -0.38202199 0.309632 0.979258 -0.20251
		 -0.0065370002 0.96584803 -0.25901201 0.0071339998 0.894687 -0.32075799 0.31088501
		 -0.1267 -0.46711001 -0.87507498 0.30819699 -0.51929998 -0.79708302 0.35566601 -0.35533601
		 -0.864429 -0.115408 -0.39591399 -0.91100699 0.30819699 -0.51929998 -0.79708302 0.88205701
		 -0.37190899 -0.28923801 0.91339499 -0.223996 -0.33990601 0.35566601 -0.35533601 -0.864429
		 0.35566601 -0.35533601 -0.864429 0.91339499 -0.223996 -0.33990601 0.91385299 -0.041887
		 -0.40388 0.41398299 -0.0092559997 -0.91023803 -0.115408 -0.39591399 -0.91100699 0.35566601
		 -0.35533601 -0.864429 0.41398299 -0.0092559997 -0.91023803 -0.052152 -0.059971999
		 -0.99683702 -0.83603698 -0.15759499 -0.52555299 -0.474316 -0.347947 -0.808676 -0.46024501
		 -0.333731 -0.82267803 -0.821374 -0.20559999 -0.53204602 -0.474316 -0.347947 -0.808676
		 -0.1267 -0.46711001 -0.87507498 -0.115408 -0.39591399 -0.91100699 -0.46024501 -0.333731
		 -0.82267803 -0.46024501 -0.333731 -0.82267803 -0.115408 -0.39591399 -0.91100699 -0.052152
		 -0.059971999 -0.99683702 -0.43961501 -0.063239999 -0.89595801 -0.821374 -0.20559999
		 -0.53204602 -0.46024501 -0.333731 -0.82267803 -0.43961501 -0.063239999 -0.89595801
		 -0.81526399 -0.065008 -0.57542998 -0.99897301 -0.0023380001 -0.045240998 -0.99622601
		 -0.081465997 -0.029943001 -0.96143198 -0.13181099 0.241403 -0.98155099 -0.026244
		 0.18939 -0.99622601 -0.081465997 -0.029943001 -0.99429399 -0.095183 -0.048168998
		 -0.93702799 -0.193547 0.290721 -0.96143198 -0.13181099 0.241403 -0.96143198 -0.13181099
		 0.241403 -0.93702799 -0.193547 0.290721 -0.72645998 -0.35105401 0.59077698 -0.80706602
		 -0.27244401 0.52385098 -0.98155099 -0.026244 0.18939 -0.96143198 -0.13181099 0.241403
		 -0.80706602 -0.27244401 0.52385098 -0.86384898 -0.117969 0.48974299 -0.672355 -0.540353
		 -0.50592202 -0.220239 -0.84897399 -0.480351 -0.069779001 -0.98771 -0.139855 -0.69306397
		 -0.68122 -0.2358 -0.220239 -0.84897399 -0.480351 -0.00358 -0.89402598 -0.44800001
		 -0.000186 -0.99371397 -0.111949 -0.069779001 -0.98771 -0.139855 -0.069779001 -0.98771
		 -0.139855 -0.000186 -0.99371397 -0.111949 0 -1 0 -0.038522001 -0.99925202 -0.0034990001
		 -0.69306397 -0.68122 -0.2358 -0.069779001 -0.98771 -0.139855 -0.038522001 -0.99925202
		 -0.0034990001 -0.744012 -0.667974 0.016022 -0.88083398 0.19692899 0.43052399 -0.999134
		 0.038943 -0.014638 -0.97194701 0.080114998 -0.221136 -0.86287898 0.37956399 0.33372399
		 -0.999134 0.038943 -0.014638 -0.80799401 -0.27249801 -0.52239001 -0.718786 -0.34947801
		 -0.60100901 -0.97194701 0.080114998 -0.221136 -0.97194701 0.080114998 -0.221136 -0.718786
		 -0.34947801 -0.60100901 -0.672355 -0.540353 -0.50592202 -0.95231801 0.108971 -0.28498301
		 -0.86287898 0.37956399 0.33372399 -0.97194701 0.080114998 -0.221136 -0.95231801 0.108971
		 -0.28498301 -0.826864 0.54751498 0.128547;
	setAttr ".n[996:1161]" -type "float3"  0.73721999 -0.67547798 0.015389 0.67668998
		 -0.69187999 0.251782 0.064939 -0.99471098 0.079585999 0.038492002 -0.99925297 -0.0035039999
		 0.67668998 -0.69187999 0.251782 0.61857498 -0.53210998 0.57811999 0.30695099 -0.74711698
		 0.58957398 0.064939 -0.99471098 0.079585999 0.064939 -0.99471098 0.079585999 0.30695099
		 -0.74711698 0.58957398 0 -0.77154797 0.636172 0 -0.99695998 0.077917002 0.038492002
		 -0.99925297 -0.0035039999 0.064939 -0.99471098 0.079585999 0 -0.99695998 0.077917002
		 0 -1 0 0 -1 0 0 -0.99695998 0.077917002 -0.064940996 -0.99471098 0.079575002 -0.038522001
		 -0.99925202 -0.0034990001 0 -0.99695998 0.077917002 0 -0.77154797 0.636172 -0.30695
		 -0.747118 0.58957303 -0.064940996 -0.99471098 0.079575002 -0.064940996 -0.99471098
		 0.079575002 -0.30695 -0.747118 0.58957303 -0.61857599 -0.53211099 0.57811999 -0.67919898
		 -0.68963301 0.25118801 -0.038522001 -0.99925202 -0.0034990001 -0.064940996 -0.99471098
		 0.079575002 -0.67919898 -0.68963301 0.25118801 -0.744012 -0.667974 0.016022 -0.71497798
		 0.64452899 0.27090299 -0.96513301 0.236977 0.111178 -0.90363199 0.173283 0.39169201
		 -0.70844603 0.49413699 0.50391799 -0.96513301 0.236977 0.111178 -0.744012 -0.667974
		 0.016022 -0.67919898 -0.68963301 0.25118801 -0.90363199 0.173283 0.39169201 -0.90363199
		 0.173283 0.39169201 -0.67919898 -0.68963301 0.25118801 -0.61857599 -0.53211099 0.57811999
		 -0.728791 0.056430001 0.68240702 -0.70844603 0.49413699 0.50391799 -0.90363199 0.173283
		 0.39169201 -0.728791 0.056430001 0.68240702 -0.655137 0.292826 0.69645399 -0.826864
		 0.54751498 0.128547 -0.95231801 0.108971 -0.28498301 -0.973131 0.18896399 -0.131565
		 -0.75523698 0.64294302 0.127441 -0.95231801 0.108971 -0.28498301 -0.672355 -0.540353
		 -0.50592202 -0.69306397 -0.68122 -0.2358 -0.973131 0.18896399 -0.131565 -0.973131
		 0.18896399 -0.131565 -0.69306397 -0.68122 -0.2358 -0.744012 -0.667974 0.016022 -0.96513301
		 0.236977 0.111178 -0.75523698 0.64294302 0.127441 -0.973131 0.18896399 -0.131565
		 -0.96513301 0.236977 0.111178 -0.71497798 0.64452899 0.27090299 0.655137 0.29282501
		 0.696455 0.728791 0.056428999 0.68240702 0.902704 0.170151 0.39519 0.70838499 0.48802999
		 0.50992 0.728791 0.056428999 0.68240702 0.61857498 -0.53210998 0.57811999 0.67668998
		 -0.69187999 0.251782 0.902704 0.170151 0.39519 0.902704 0.170151 0.39519 0.67668998
		 -0.69187999 0.251782 0.73721999 -0.67547798 0.015389 0.96546698 0.23354401 0.115458
		 0.70838499 0.48802999 0.50992 0.902704 0.170151 0.39519 0.96546698 0.23354401 0.115458
		 0.71619898 0.63750398 0.28398401 0.82716697 0.54701602 0.128719 0.33041501 0.81138599
		 0.48216099 0.24856 0.92366397 0.291657 0.75544202 0.64133102 0.134175 0.33041501
		 0.81138599 0.48216099 -0.018821999 0.85652399 0.51576298 -0.0075059999 0.95472997
		 0.29737899 0.24856 0.92366397 0.291657 0.24856 0.92366397 0.291657 -0.0075059999
		 0.95472997 0.29737899 -0.0033179999 0.90627903 0.42266801 0.276622 0.875139 0.397003
		 0.75544202 0.64133102 0.134175 0.24856 0.92366397 0.291657 0.276622 0.875139 0.397003
		 0.71619898 0.63750398 0.28398401 -0.018821999 0.85652399 0.51576298 -0.359303 0.80190599
		 0.47733301 -0.26092899 0.923599 0.28085899 -0.0075059999 0.95472997 0.29737899 -0.359303
		 0.80190599 0.47733301 -0.826864 0.54751498 0.128547 -0.75523698 0.64294302 0.127441
		 -0.26092899 0.923599 0.28085899 -0.26092899 0.923599 0.28085899 -0.75523698 0.64294302
		 0.127441 -0.71497798 0.64452899 0.27090299 -0.280215 0.87883103 0.386181 -0.0075059999
		 0.95472997 0.29737899 -0.26092899 0.923599 0.28085899 -0.280215 0.87883103 0.386181
		 -0.0033179999 0.90627903 0.42266801 -0.013127 0.292716 0.95611 -0.025803 0.49705899
		 0.86733299 0.443261 0.49191499 0.74936002 0.53162199 0.274829 0.80115402 -0.025803
		 0.49705899 0.86733299 -0.018821999 0.85652399 0.51576298 0.33041501 0.81138599 0.48216099
		 0.443261 0.49191499 0.74936002 0.443261 0.49191499 0.74936002 0.33041501 0.81138599
		 0.48216099 0.82716697 0.54701602 0.128719 0.86789697 0.382687 0.31670901 0.53162199
		 0.274829 0.80115402 0.443261 0.49191499 0.74936002 0.86789697 0.382687 0.31670901
		 0.88701302 0.18435299 0.423345 -0.88083398 0.19692899 0.43052399 -0.86287898 0.37956399
		 0.33372399 -0.47044 0.46724999 0.74857402 -0.545295 0.270827 0.79328799 -0.86287898
		 0.37956399 0.33372399 -0.826864 0.54751498 0.128547 -0.359303 0.80190599 0.47733301
		 -0.47044 0.46724999 0.74857402 -0.47044 0.46724999 0.74857402 -0.359303 0.80190599
		 0.47733301 -0.018821999 0.85652399 0.51576298 -0.025803 0.49705899 0.86733299 -0.545295
		 0.270827 0.79328799 -0.47044 0.46724999 0.74857402 -0.025803 0.49705899 0.86733299
		 -0.013127 0.292716 0.95611 -0.0033179999 0.90627903 0.42266801 -0.00092399999 0.71404803
		 0.70009601 0.34762999 0.68343002 0.64193201 0.276622 0.875139 0.397003 -0.00092399999
		 0.71404803 0.70009601 0 0.37454599 0.92720801 0.41017199 0.35622701 0.83956099 0.34762999
		 0.68343002 0.64193201 0.34762999 0.68343002 0.64193201 0.41017199 0.35622701 0.83956099
		 0.655137 0.29282501 0.696455 0.70838499 0.48802999 0.50992 0.276622 0.875139 0.397003
		 0.34762999 0.68343002 0.64193201 0.70838499 0.48802999 0.50992 0.71619898 0.63750398
		 0.28398401 -0.71497798 0.64452899 0.27090299 -0.70844603 0.49413699 0.50391799 -0.348479
		 0.68682402 0.63783699 -0.280215 0.87883103 0.386181 -0.70844603 0.49413699 0.50391799
		 -0.655137 0.292826 0.69645399;
	setAttr ".n[1162:1327]" -type "float3"  -0.410171 0.35622701 0.83956099 -0.348479
		 0.68682402 0.63783699 -0.348479 0.68682402 0.63783699 -0.410171 0.35622701 0.83956099
		 0 0.37454599 0.92720801 -0.00092399999 0.71404803 0.70009601 -0.280215 0.87883103
		 0.386181 -0.348479 0.68682402 0.63783699 -0.00092399999 0.71404803 0.70009601 -0.0033179999
		 0.90627903 0.42266801 0.71619898 0.63750398 0.28398401 0.96546698 0.23354401 0.115458
		 0.97227699 0.19154599 -0.13411801 0.75544202 0.64133102 0.134175 0.96546698 0.23354401
		 0.115458 0.73721999 -0.67547798 0.015389 0.69052899 -0.68243301 -0.23969799 0.97227699
		 0.19154599 -0.13411801 0.97227699 0.19154599 -0.13411801 0.69052899 -0.68243301 -0.23969799
		 0.68844002 -0.52883798 -0.49636701 0.95651102 0.120681 -0.26556 0.75544202 0.64133102
		 0.134175 0.97227699 0.19154599 -0.13411801 0.95651102 0.120681 -0.26556 0.82716697
		 0.54701602 0.128719 -0.84413397 -0.075397 -0.53080398 -0.443479 -0.17745499 -0.87854201
		 -0.38227701 -0.43912199 -0.81304097 -0.806283 -0.186721 -0.561288 -0.443479 -0.17745499
		 -0.87854201 -0.0050690002 -0.19969 -0.979846 0.00028499999 -0.49732801 -0.86756301
		 -0.38227701 -0.43912199 -0.81304097 -0.38227701 -0.43912199 -0.81304097 0.00028499999
		 -0.49732801 -0.86756301 0.001347 -0.87019199 -0.49271101 -0.189036 -0.84051299 -0.50774401
		 -0.806283 -0.186721 -0.561288 -0.38227701 -0.43912199 -0.81304097 -0.189036 -0.84051299
		 -0.50774401 -0.73172802 -0.52794302 -0.431104 -0.0050690002 -0.19969 -0.979846 0.53637898
		 -0.15254299 -0.83007699 0.47870201 -0.418073 -0.77204901 0.00028499999 -0.49732801
		 -0.86756301 0.53637898 -0.15254299 -0.83007699 0.86667299 -0.036625002 -0.49753001
		 0.83782101 -0.16227201 -0.521272 0.47870201 -0.418073 -0.77204901 0.47870201 -0.418073
		 -0.77204901 0.83782101 -0.16227201 -0.521272 0.79440802 -0.456873 -0.40022999 0.31530401
		 -0.81677401 -0.483181 0.00028499999 -0.49732801 -0.86756301 0.47870201 -0.418073
		 -0.77204901 0.31530401 -0.81677401 -0.483181 0.001347 -0.87019199 -0.49271101 0.86667299
		 -0.036625002 -0.49753001 0.992378 0.095797002 -0.077519 0.97529602 0.130868 -0.177963
		 0.83782101 -0.16227201 -0.521272 0.992378 0.095797002 -0.077519 0.90613598 0.184159
		 0.38079101 0.889579 0.38343701 0.248246 0.97529602 0.130868 -0.177963 0.97529602
		 0.130868 -0.177963 0.889579 0.38343701 0.248246 0.84806901 0.51435697 0.127342 0.97968501
		 0.094126001 -0.177084 0.83782101 -0.16227201 -0.521272 0.97529602 0.130868 -0.177963
		 0.97968501 0.094126001 -0.177084 0.79440802 -0.456873 -0.40022999 0.68973398 -0.56644499
		 0.45100701 0.77082902 0.0047089998 0.637025 0.46339601 0.0047619999 0.88613898 0.29233801
		 -0.84298801 0.45156401 0.77082902 0.0047089998 0.637025 0.66376299 0.30773601 0.68170202
		 0.410175 0.37390101 0.83183801 0.46339601 0.0047619999 0.88613898 0.46339601 0.0047619999
		 0.88613898 0.410175 0.37390101 0.83183801 0 0.39435101 0.91895998 0 0.012934 0.99991602
		 0.29233801 -0.84298801 0.45156401 0.46339601 0.0047619999 0.88613898 0 0.012934 0.99991602
		 0 -0.830746 0.556651 0 -0.830746 0.556651 0 0.012934 0.99991602 -0.461164 0.026125999
		 0.88692999 -0.29736599 -0.80523503 0.51300102 0 0.012934 0.99991602 0 0.39435101
		 0.91895998 -0.41017401 0.37390199 0.83183801 -0.461164 0.026125999 0.88692999 -0.461164
		 0.026125999 0.88692999 -0.41017401 0.37390199 0.83183801 -0.66376197 0.30773899 0.681701
		 -0.74527103 0.093048997 0.66023701 -0.29736599 -0.80523503 0.51300102 -0.461164 0.026125999
		 0.88692999 -0.74527103 0.093048997 0.66023701 -0.59213197 -0.64790702 0.47916201
		 0.79440802 -0.456873 -0.40022999 0.74962997 -0.64000499 -0.16867 0.16624101 -0.97745597
		 -0.13016599 0.31530401 -0.81677401 -0.483181 0.74962997 -0.64000499 -0.16867 0.72362101
		 -0.68997103 -0.017672 0.120663 -0.99267101 -0.0067099999 0.16624101 -0.97745597 -0.13016599
		 0.16624101 -0.97745597 -0.13016599 0.120663 -0.99267101 -0.0067099999 0 -1 0 0.00039900001
		 -0.99437302 -0.105931 0.31530401 -0.81677401 -0.483181 0.16624101 -0.97745597 -0.13016599
		 0.00039900001 -0.99437302 -0.105931 0.001347 -0.87019199 -0.49271101 0.081772998
		 -0.062729001 0.99467498 -0.454541 -0.082745001 0.88687402 -0.51863497 -0.010711 0.85492802
		 0.037997 0.019087 0.99909598 -0.454541 -0.082745001 0.88687402 -0.81696802 -0.098710999
		 0.56817198 -0.86356699 -0.037834998 0.50281298 -0.51863497 -0.010711 0.85492802 -0.51863497
		 -0.010711 0.85492802 -0.86356699 -0.037834998 0.50281298 -0.89880699 0.131264 0.41822901
		 -0.55058599 0.179013 0.815359 0.037997 0.019087 0.99909598 -0.51863497 -0.010711
		 0.85492802 -0.55058599 0.179013 0.815359 0.009052 0.208979 0.97787797 0.90376699
		 -0.026396999 0.42721 0.61523902 -0.041749001 0.78723502 0.597184 0.03559 0.801314
		 0.90169901 0.039205 0.43058401 0.61523902 -0.041749001 0.78723502 0.081772998 -0.062729001
		 0.99467498 0.037997 0.019087 0.99909598 0.597184 0.03559 0.801314 0.597184 0.03559
		 0.801314 0.037997 0.019087 0.99909598 0.009052 0.208979 0.97787797 0.57196701 0.21302199
		 0.79213399 0.90169901 0.039205 0.43058401 0.597184 0.03559 0.801314 0.57196701 0.21302199
		 0.79213399 0.90613598 0.184159 0.38079101 -0.0089560002 -0.064770997 -0.99786001
		 0.52650601 -0.051796999 -0.84859198 0.53972399 -0.044059001 -0.84068799 -0.011675
		 -0.058221001 -0.99823499 0.52650601 -0.051796999 -0.84859198 0.90499598 -0.036118001
		 -0.42388499 0.894247 -0.01383 -0.44736099 0.53972399 -0.044059001 -0.84068799 0.53972399
		 -0.044059001 -0.84068799 0.894247 -0.01383 -0.44736099 0.86667299 -0.036625002 -0.49753001
		 0.53637898 -0.15254299 -0.83007699;
	setAttr ".n[1328:1493]" -type "float3"  -0.011675 -0.058221001 -0.99823499 0.53972399
		 -0.044059001 -0.84068799 0.53637898 -0.15254299 -0.83007699 -0.0050690002 -0.19969
		 -0.979846 -0.89806402 -0.103885 -0.427421 -0.460628 -0.069150999 -0.88489503 -0.45832601
		 -0.057457 -0.88692498 -0.877473 -0.051440999 -0.476859 -0.460628 -0.069150999 -0.88489503
		 -0.0089560002 -0.064770997 -0.99786001 -0.011675 -0.058221001 -0.99823499 -0.45832601
		 -0.057457 -0.88692498 -0.45832601 -0.057457 -0.88692498 -0.011675 -0.058221001 -0.99823499
		 -0.0050690002 -0.19969 -0.979846 -0.443479 -0.17745499 -0.87854201 -0.877473 -0.051440999
		 -0.476859 -0.45832601 -0.057457 -0.88692498 -0.443479 -0.17745499 -0.87854201 -0.84413397
		 -0.075397 -0.53080398 0.148479 -0.176038 0.97312099 -0.36188701 -0.179887 0.91470098
		 -0.39700201 -0.123087 0.909527 0.125137 -0.111445 0.98585999 -0.36188701 -0.179887
		 0.91470098 -0.72441298 -0.17111 0.66779202 -0.765692 -0.128815 0.63017601 -0.39700201
		 -0.123087 0.909527 -0.39700201 -0.123087 0.909527 -0.765692 -0.128815 0.63017601
		 -0.81696802 -0.098710999 0.56817198 -0.454541 -0.082745001 0.88687402 0.125137 -0.111445
		 0.98585999 -0.39700201 -0.123087 0.909527 -0.454541 -0.082745001 0.88687402 0.081772998
		 -0.062729001 0.99467498 0.93146998 -0.099192001 0.350036 0.65639597 -0.145726 0.74020803
		 0.64030099 -0.086915001 0.76319098 0.91699302 -0.061168 0.39418501 0.65639597 -0.145726
		 0.74020803 0.148479 -0.176038 0.97312099 0.125137 -0.111445 0.98585999 0.64030099
		 -0.086915001 0.76319098 0.64030099 -0.086915001 0.76319098 0.125137 -0.111445 0.98585999
		 0.081772998 -0.062729001 0.99467498 0.61523902 -0.041749001 0.78723502 0.91699302
		 -0.061168 0.39418501 0.64030099 -0.086915001 0.76319098 0.61523902 -0.041749001 0.78723502
		 0.90376699 -0.026396999 0.42721 0.89329898 -0.081174001 -0.44207099 0.99761701 -0.066335
		 -0.018972 0.99867302 -0.046898998 0.021267001 0.90006602 -0.060529001 -0.43152899
		 0.99761701 -0.066335 -0.018972 0.93146998 -0.099192001 0.350036 0.91699302 -0.061168
		 0.39418501 0.99867302 -0.046898998 0.021267001 0.99867302 -0.046898998 0.021267001
		 0.91699302 -0.061168 0.39418501 0.90376699 -0.026396999 0.42721 0.99877399 -0.022678999
		 0.044009 0.90006602 -0.060529001 -0.43152899 0.99867302 -0.046898998 0.021267001
		 0.99877399 -0.022678999 0.044009 0.90499598 -0.036118001 -0.42388499 0.0075380001
		 -0.206296 -0.97846103 0.52319503 -0.14559899 -0.83968401 0.51168799 -0.091652997
		 -0.85426903 0.00072700001 -0.116231 -0.993222 0.52319503 -0.14559899 -0.83968401
		 0.89329898 -0.081174001 -0.44207099 0.90006602 -0.060529001 -0.43152899 0.51168799
		 -0.091652997 -0.85426903 0.51168799 -0.091652997 -0.85426903 0.90006602 -0.060529001
		 -0.43152899 0.90499598 -0.036118001 -0.42388499 0.52650601 -0.051796999 -0.84859198
		 0.00072700001 -0.116231 -0.993222 0.51168799 -0.091652997 -0.85426903 0.52650601
		 -0.051796999 -0.84859198 -0.0089560002 -0.064770997 -0.99786001 -0.71841103 -0.14807899
		 -0.679676 -0.44523001 -0.190312 -0.87495798 -0.433222 -0.129454 -0.89194202 -0.73956198
		 -0.13536599 -0.65933597 -0.44523001 -0.190312 -0.87495798 0.0075380001 -0.206296
		 -0.97846103 0.00072700001 -0.116231 -0.993222 -0.433222 -0.129454 -0.89194202 -0.433222
		 -0.129454 -0.89194202 0.00072700001 -0.116231 -0.993222 -0.0089560002 -0.064770997
		 -0.99786001 -0.460628 -0.069150999 -0.88489503 -0.73956198 -0.13536599 -0.65933597
		 -0.433222 -0.129454 -0.89194202 -0.460628 -0.069150999 -0.88489503 -0.89806402 -0.103885
		 -0.427421 -0.71841103 -0.14807899 -0.679676 -0.73956198 -0.13536599 -0.65933597 -0.93672699
		 -0.109322 -0.33255199 -0.94805002 -0.122532 -0.293578 -0.89806402 -0.103885 -0.427421
		 -0.989766 -0.13245399 -0.053091999 -0.93672699 -0.109322 -0.33255199 -0.73956198
		 -0.13536599 -0.65933597 -0.99017799 -0.12688699 0.058718 -0.94805002 -0.122532 -0.293578
		 -0.93672699 -0.109322 -0.33255199 -0.989766 -0.13245399 -0.053091999 0.057286002
		 -0.414749 0.908131 -0.36139399 -0.38390401 0.84971303 -0.35148799 -0.281102 0.89299399
		 0.131841 -0.29082999 0.94764799 -0.36139399 -0.38390401 0.84971303 -0.69057399 -0.34013101
		 0.63829398 -0.70393699 -0.25017399 0.66474402 -0.35148799 -0.281102 0.89299399 -0.35148799
		 -0.281102 0.89299399 -0.70393699 -0.25017399 0.66474402 -0.72441298 -0.17111 0.66779202
		 -0.36188701 -0.179887 0.91470098 0.131841 -0.29082999 0.94764799 -0.35148799 -0.281102
		 0.89299399 -0.36188701 -0.179887 0.91470098 0.148479 -0.176038 0.97312099 0.92113
		 -0.27011701 0.28027901 0.54397303 -0.41068399 0.73173201 0.63783002 -0.25738999 0.72589397
		 0.93754399 -0.167097 0.30510801 0.54397303 -0.41068399 0.73173201 0.057286002 -0.414749
		 0.908131 0.131841 -0.29082999 0.94764799 0.63783002 -0.25738999 0.72589397 0.63783002
		 -0.25738999 0.72589397 0.131841 -0.29082999 0.94764799 0.148479 -0.176038 0.97312099
		 0.65639597 -0.145726 0.74020803 0.93754399 -0.167097 0.30510801 0.63783002 -0.25738999
		 0.72589397 0.65639597 -0.145726 0.74020803 0.93146998 -0.099192001 0.350036 0.850582
		 0.022996999 -0.52533901 0.98833102 -0.092486002 -0.121032 0.99386901 -0.087108999
		 -0.068098001 0.87945002 -0.073770002 -0.47024101 0.98833102 -0.092486002 -0.121032
		 0.92113 -0.27011701 0.28027901 0.93754399 -0.167097 0.30510801 0.99386901 -0.087108999
		 -0.068098001 0.99386901 -0.087108999 -0.068098001 0.93754399 -0.167097 0.30510801
		 0.93146998 -0.099192001 0.350036 0.99761701 -0.066335 -0.018972 0.87945002 -0.073770002
		 -0.47024101 0.99386901 -0.087108999 -0.068098001 0.99761701 -0.066335 -0.018972 0.89329898
		 -0.081174001 -0.44207099 -0.065277003 0.106303 -0.99218899 0.44257301 0.105238 -0.89053601
		 0.521415 -0.103019 -0.84706199 -0.023633 -0.14586 -0.98902297 0.44257301 0.105238
		 -0.89053601 0.850582 0.022996999 -0.52533901;
	setAttr ".n[1494:1659]" -type "float3"  0.87945002 -0.073770002 -0.47024101 0.521415
		 -0.103019 -0.84706199 0.521415 -0.103019 -0.84706199 0.87945002 -0.073770002 -0.47024101
		 0.89329898 -0.081174001 -0.44207099 0.52319503 -0.14559899 -0.83968401 -0.023633
		 -0.14586 -0.98902297 0.521415 -0.103019 -0.84706199 0.52319503 -0.14559899 -0.83968401
		 0.0075380001 -0.206296 -0.97846103 -0.81113303 -0.072884999 -0.58030301 -0.50942099
		 0.021536 -0.86024803 -0.51502103 -0.165672 -0.84101498 -0.776447 -0.15568499 -0.61064899
		 -0.50942099 0.021536 -0.86024803 -0.065277003 0.106303 -0.99218899 -0.023633 -0.14586
		 -0.98902297 -0.51502103 -0.165672 -0.84101498 -0.51502103 -0.165672 -0.84101498 -0.023633
		 -0.14586 -0.98902297 0.0075380001 -0.206296 -0.97846103 -0.44523001 -0.190312 -0.87495798
		 -0.776447 -0.15568499 -0.61064899 -0.51502103 -0.165672 -0.84101498 -0.44523001 -0.190312
		 -0.87495798 -0.71841103 -0.14807899 -0.679676 -0.81113303 -0.072884999 -0.58030301
		 -0.776447 -0.15568499 -0.61064899 -0.95617503 -0.14146499 -0.25635201 -0.96468401
		 -0.136308 -0.225398 -0.776447 -0.15568499 -0.61064899 -0.71841103 -0.14807899 -0.679676
		 -0.94805002 -0.122532 -0.293578 -0.95617503 -0.14146499 -0.25635201 -0.95617503 -0.14146499
		 -0.25635201 -0.94805002 -0.122532 -0.293578 -0.99017799 -0.12688699 0.058718 -0.98680502
		 -0.154266 0.049169999 -0.96468401 -0.136308 -0.225398 -0.95617503 -0.14146499 -0.25635201
		 -0.98680502 -0.154266 0.049169999 -0.98091602 -0.188789 0.046503998 -0.32671899 -0.670771
		 0.665824 -0.543791 -0.51301497 0.664159 -0.41460001 -0.466526 0.78131998 -0.089658998
		 -0.545578 0.83324999 -0.543791 -0.51301497 0.664159 -0.76792097 -0.368734 0.52376801
		 -0.69912201 -0.383059 0.60373402 -0.41460001 -0.466526 0.78131998 -0.41460001 -0.466526
		 0.78131998 -0.69912201 -0.383059 0.60373402 -0.69057399 -0.34013101 0.63829398 -0.36139399
		 -0.38390401 0.84971303 -0.089658998 -0.545578 0.83324999 -0.41460001 -0.466526 0.78131998
		 -0.36139399 -0.38390401 0.84971303 0.057286002 -0.414749 0.908131 -0.0068910001 -0.92406201
		 0.382182 0.019572999 -0.77582002 0.63064998 0.297719 -0.62357301 0.72285497 0.76302201
		 -0.56690902 0.31050101 0.019572999 -0.77582002 0.63064998 -0.32671899 -0.670771 0.665824
		 -0.089658998 -0.545578 0.83324999 0.297719 -0.62357301 0.72285497 0.297719 -0.62357301
		 0.72285497 -0.089658998 -0.545578 0.83324999 0.057286002 -0.414749 0.908131 0.54397303
		 -0.41068399 0.73173201 0.76302201 -0.56690902 0.31050101 0.297719 -0.62357301 0.72285497
		 0.54397303 -0.41068399 0.73173201 0.92113 -0.27011701 0.28027901 -0.036954001 -0.91939902
		 -0.39158601 0.16159301 -0.986835 -0.0066530001 0.93848598 -0.312996 -0.145867 0.80307198
		 -0.071191996 -0.59161401 0.16159301 -0.986835 -0.0066530001 -0.0068910001 -0.92406201
		 0.382182 0.76302201 -0.56690902 0.31050101 0.93848598 -0.312996 -0.145867 0.93848598
		 -0.312996 -0.145867 0.76302201 -0.56690902 0.31050101 0.92113 -0.27011701 0.28027901
		 0.98833102 -0.092486002 -0.121032 0.80307198 -0.071191996 -0.59161401 0.93848598
		 -0.312996 -0.145867 0.98833102 -0.092486002 -0.121032 0.850582 0.022996999 -0.52533901
		 -0.065277003 0.106303 -0.99218899 -0.135423 0.14191 -0.98057199 0.31044 0.119243
		 -0.943084 0.44257301 0.105238 -0.89053601 -0.135423 0.14191 -0.98057199 -0.64199501
		 -0.368752 -0.67220801 -0.265773 -0.51555598 -0.814596 0.31044 0.119243 -0.943084
		 0.31044 0.119243 -0.943084 -0.265773 -0.51555598 -0.814596 -0.036954001 -0.91939902
		 -0.39158601 0.80307198 -0.071191996 -0.59161401 0.44257301 0.105238 -0.89053601 0.31044
		 0.119243 -0.943084 0.80307198 -0.071191996 -0.59161401 0.850582 0.022996999 -0.52533901
		 -0.81113303 -0.072884999 -0.58030301 -0.83473498 -0.037728 -0.54935801 -0.513008
		 0.080086 -0.85464001 -0.50942099 0.021536 -0.86024803 -0.83473498 -0.037728 -0.54935801
		 -0.86324698 -0.096363999 -0.495498 -0.56291002 -0.021615 -0.826235 -0.513008 0.080086
		 -0.85464001 -0.513008 0.080086 -0.85464001 -0.56291002 -0.021615 -0.826235 -0.64199501
		 -0.368752 -0.67220801 -0.135423 0.14191 -0.98057199 -0.50942099 0.021536 -0.86024803
		 -0.513008 0.080086 -0.85464001 -0.135423 0.14191 -0.98057199 -0.065277003 0.106303
		 -0.99218899 -0.97977102 -0.192982 0.05297 -0.97506398 -0.159545 -0.154257 -0.97116899
		 -0.142689 -0.190972 -0.97709298 -0.20677499 0.050344002 -0.97506398 -0.159545 -0.154257
		 -0.86324698 -0.096363999 -0.495498 -0.83473498 -0.037728 -0.54935801 -0.97116899
		 -0.142689 -0.190972 -0.97116899 -0.142689 -0.190972 -0.83473498 -0.037728 -0.54935801
		 -0.81113303 -0.072884999 -0.58030301 -0.96468401 -0.136308 -0.225398 -0.97709298
		 -0.20677499 0.050344002 -0.97116899 -0.142689 -0.190972 -0.96468401 -0.136308 -0.225398
		 -0.98091602 -0.188789 0.046503998 -0.73172802 -0.52794302 -0.431104 -0.189036 -0.84051299
		 -0.50774401 -0.023073001 -0.992773 -0.117772 -0.69927698 -0.69324499 -0.17442299
		 -0.189036 -0.84051299 -0.50774401 0.001347 -0.87019199 -0.49271101 0.00039900001
		 -0.99437302 -0.105931 -0.023073001 -0.992773 -0.117772 -0.023073001 -0.992773 -0.117772
		 0.00039900001 -0.99437302 -0.105931 0 -1 0 0 -1 0 -0.69927698 -0.69324499 -0.17442299
		 -0.023073001 -0.992773 -0.117772 0 -1 0 -0.69805199 -0.71600598 0.0076620001 -0.73172802
		 -0.52794302 -0.431104 -0.97008198 0.20902701 -0.123487 -0.98104203 0.181695 -0.067410998
		 -0.806283 -0.186721 -0.561288 -0.97008198 0.20902701 -0.123487 -0.84559101 0.52019298
		 0.1199 -0.89100802 0.37741601 0.25231299 -0.98104203 0.181695 -0.067410998 -0.98104203
		 0.181695 -0.067410998 -0.89100802 0.37741601 0.25231299 -0.89880699 0.131264 0.41822901
		 -0.99506599 0.066908002 0.073260002;
	setAttr ".n[1660:1825]" -type "float3"  -0.806283 -0.186721 -0.561288 -0.98104203
		 0.181695 -0.067410998 -0.99506599 0.066908002 0.073260002 -0.84413397 -0.075397 -0.53080398
		 0.72362101 -0.68997103 -0.017672 0.66407597 -0.735843 0.132431 0.12649301 -0.991391
		 0.033801999 0.120663 -0.99267101 -0.0067099999 0.66407597 -0.735843 0.132431 0.68973398
		 -0.56644499 0.45100701 0.29233801 -0.84298801 0.45156401 0.12649301 -0.991391 0.033801999
		 0.12649301 -0.991391 0.033801999 0.29233801 -0.84298801 0.45156401 0 -0.830746 0.556651
		 0 -0.99999201 0.0039169998 0.120663 -0.99267101 -0.0067099999 0.12649301 -0.991391
		 0.033801999 0 -0.99999201 0.0039169998 0 -1 0 0 -1 0 0 -0.99999201 0.0039169998 -0.003637
		 -0.99997801 0.005467 0 -1 0 0 -0.99999201 0.0039169998 0 -0.830746 0.556651 -0.29736599
		 -0.80523503 0.51300102 -0.003637 -0.99997801 0.005467 -0.003637 -0.99997801 0.005467
		 -0.29736599 -0.80523503 0.51300102 -0.59213197 -0.64790702 0.47916201 -0.65802598
		 -0.725932 0.20006301 0 -1 0 -0.003637 -0.99997801 0.005467 -0.65802598 -0.725932
		 0.20006301 -0.69805199 -0.71600598 0.0076620001 -0.59213197 -0.64790702 0.47916201
		 -0.74527103 0.093048997 0.66023701 -0.91286802 0.21542799 0.34678999 -0.65802598
		 -0.725932 0.20006301 -0.74527103 0.093048997 0.66023701 -0.66376197 0.30773899 0.681701
		 -0.71789002 0.499654 0.48474801 -0.91286802 0.21542799 0.34678999 -0.91286802 0.21542799
		 0.34678999 -0.71789002 0.499654 0.48474801 -0.73811102 0.62057197 0.26473001 -0.96002501
		 0.26600999 0.087130003 -0.65802598 -0.725932 0.20006301 -0.91286802 0.21542799 0.34678999
		 -0.96002501 0.26600999 0.087130003 -0.69805199 -0.71600598 0.0076620001 -0.69805199
		 -0.71600598 0.0076620001 -0.96002501 0.26600999 0.087130003 -0.96880698 0.23940399
		 -0.064026996 -0.69927698 -0.69324499 -0.17442299 -0.96002501 0.26600999 0.087130003
		 -0.73811102 0.62057197 0.26473001 -0.78346801 0.607988 0.128563 -0.96880698 0.23940399
		 -0.064026996 -0.96880698 0.23940399 -0.064026996 -0.78346801 0.607988 0.128563 -0.84559101
		 0.52019298 0.1199 -0.97008198 0.20902701 -0.123487 -0.69927698 -0.69324499 -0.17442299
		 -0.96880698 0.23940399 -0.064026996 -0.97008198 0.20902701 -0.123487 -0.73172802
		 -0.52794302 -0.431104 0.72362101 -0.68997103 -0.017672 0.98952001 0.12164 0.077806003
		 0.94895899 0.076072998 0.306088 0.66407597 -0.735843 0.132431 0.98952001 0.12164
		 0.077806003 0.73811299 0.62057 0.26473099 0.71789098 0.49965 0.48475 0.94895899 0.076072998
		 0.306088 0.94895899 0.076072998 0.306088 0.71789098 0.49965 0.48475 0.66376299 0.30773601
		 0.68170202 0.77082902 0.0047089998 0.637025 0.66407597 -0.735843 0.132431 0.94895899
		 0.076072998 0.306088 0.77082902 0.0047089998 0.637025 0.68973398 -0.56644499 0.45100701
		 0.84806901 0.51435697 0.127342 0.361206 0.83754301 0.40994 0.276283 0.91535401 0.292909
		 0.78456998 0.60609603 0.13075601 0.361206 0.83754301 0.40994 -0.002084 0.89375198
		 0.44855601 -0.000359 0.949471 0.31385601 0.276283 0.91535401 0.292909 0.276283 0.91535401
		 0.292909 -0.000359 0.949471 0.31385601 0 0.89362198 0.44882199 0.29392999 0.86321503
		 0.410445 0.78456998 0.60609603 0.13075601 0.276283 0.91535401 0.292909 0.29392999
		 0.86321503 0.410445 0.73811299 0.62057 0.26473099 -0.002084 0.89375198 0.44855601
		 -0.361626 0.84176397 0.40082401 -0.276333 0.91597402 0.29091701 -0.000359 0.949471
		 0.31385601 -0.361626 0.84176397 0.40082401 -0.84559101 0.52019298 0.1199 -0.78346801
		 0.607988 0.128563 -0.276333 0.91597402 0.29091701 -0.276333 0.91597402 0.29091701
		 -0.78346801 0.607988 0.128563 -0.73811102 0.62057197 0.26473001 -0.29392901 0.86321503
		 0.41044399 -0.000359 0.949471 0.31385601 -0.276333 0.91597402 0.29091701 -0.29392901
		 0.86321503 0.41044399 0 0.89362198 0.44882199 0.009052 0.208979 0.97787797 -0.0030350001
		 0.594073 0.80440497 0.496335 0.54988098 0.671776 0.57196701 0.21302199 0.79213399
		 -0.0030350001 0.594073 0.80440497 -0.002084 0.89375198 0.44855601 0.361206 0.83754301
		 0.40994 0.496335 0.54988098 0.671776 0.496335 0.54988098 0.671776 0.361206 0.83754301
		 0.40994 0.84806901 0.51435697 0.127342 0.889579 0.38343701 0.248246 0.57196701 0.21302199
		 0.79213399 0.496335 0.54988098 0.671776 0.889579 0.38343701 0.248246 0.90613598 0.184159
		 0.38079101 -0.89880699 0.131264 0.41822901 -0.89100802 0.37741601 0.25231299 -0.49876401
		 0.54931498 0.670439 -0.55058599 0.179013 0.815359 -0.89100802 0.37741601 0.25231299
		 -0.84559101 0.52019298 0.1199 -0.361626 0.84176397 0.40082401 -0.49876401 0.54931498
		 0.670439 -0.49876401 0.54931498 0.670439 -0.361626 0.84176397 0.40082401 -0.002084
		 0.89375198 0.44855601 -0.0030350001 0.594073 0.80440497 -0.55058599 0.179013 0.815359
		 -0.49876401 0.54931498 0.670439 -0.0030350001 0.594073 0.80440497 0.009052 0.208979
		 0.97787797 0 0.89362198 0.44882199 0 0.718714 0.69530499 0.34933501 0.689147 0.63485599
		 0.29392999 0.86321503 0.410445 0 0.718714 0.69530499 0 0.39435101 0.91895998 0.410175
		 0.37390101 0.83183801 0.34933501 0.689147 0.63485599 0.34933501 0.689147 0.63485599
		 0.410175 0.37390101 0.83183801 0.66376299 0.30773601 0.68170202 0.71789098 0.49965
		 0.48475 0.29392999 0.86321503 0.410445 0.34933501 0.689147 0.63485599 0.71789098
		 0.49965 0.48475 0.73811299 0.62057 0.26473099 -0.73811102 0.62057197 0.26473001 -0.71789002
		 0.499654 0.48474801;
	setAttr ".n[1826:1991]" -type "float3"  -0.349334 0.68914801 0.63485497 -0.29392901
		 0.86321503 0.41044399 -0.71789002 0.499654 0.48474801 -0.66376197 0.30773899 0.681701
		 -0.41017401 0.37390199 0.83183801 -0.349334 0.68914801 0.63485497 -0.349334 0.68914801
		 0.63485497 -0.41017401 0.37390199 0.83183801 0 0.39435101 0.91895998 0 0.718714 0.69530499
		 -0.29392901 0.86321503 0.41044399 -0.349334 0.68914801 0.63485497 0 0.718714 0.69530499
		 0 0.89362198 0.44882199 0.79440802 -0.456873 -0.40022999 0.97968501 0.094126001 -0.177084
		 0.99310201 0.092586003 -0.071943 0.74962997 -0.64000499 -0.16867 0.97968501 0.094126001
		 -0.177084 0.84806901 0.51435697 0.127342 0.78456998 0.60609603 0.13075601 0.99310201
		 0.092586003 -0.071943 0.99310201 0.092586003 -0.071943 0.78456998 0.60609603 0.13075601
		 0.73811299 0.62057 0.26473099 0.98952001 0.12164 0.077806003 0.74962997 -0.64000499
		 -0.16867 0.99310201 0.092586003 -0.071943 0.98952001 0.12164 0.077806003 0.72362101
		 -0.68997103 -0.017672 -0.54366302 0.83901501 0.022005999 -0.53660101 0.842273 0.051339999
		 -0.27746099 0.95930302 0.052476 -0.26965201 0.96198201 0.043334 -0.53660101 0.842273
		 0.051339999 -0.53443903 0.83667803 0.119773 -0.28987601 0.95113999 0.106323 -0.27746099
		 0.95930302 0.052476 -0.27746099 0.95930302 0.052476 -0.28987601 0.95113999 0.106323
		 0 0.995767 0.091913 0 0.99892598 0.046333 -0.26965201 0.96198201 0.043334 -0.27746099
		 0.95930302 0.052476 0 0.99892598 0.046333 0 0.99897897 0.045169 -0.92757398 0.36560601
		 -0.077059999 -0.92090398 0.38913801 -0.022536 -0.76390302 0.64493197 0.022698 -0.77871001
		 0.62681103 -0.026800999 -0.92090398 0.38913801 -0.022536 -0.90897298 0.41584799 0.028958
		 -0.74822998 0.656721 0.094173998 -0.76390302 0.64493197 0.022698 -0.76390302 0.64493197
		 0.022698 -0.74822998 0.656721 0.094173998 -0.53443903 0.83667803 0.119773 -0.53660101
		 0.842273 0.051339999 -0.77871001 0.62681103 -0.026800999 -0.76390302 0.64493197 0.022698
		 -0.53660101 0.842273 0.051339999 -0.54366302 0.83901501 0.022005999 -0.99114901 -0.087361
		 -0.099963002 -0.99412298 -0.082204998 -0.070444003 -0.98659003 0.15223099 -0.058871999
		 -0.98485899 0.13902099 -0.103568 -0.99412298 -0.082204998 -0.070444003 -0.98821902
		 -0.057645999 -0.141773 -0.98257202 0.178232 -0.052786 -0.98659003 0.15223099 -0.058871999
		 -0.98659003 0.15223099 -0.058871999 -0.98257202 0.178232 -0.052786 -0.90897298 0.41584799
		 0.028958 -0.92090398 0.38913801 -0.022536 -0.98485899 0.13902099 -0.103568 -0.98659003
		 0.15223099 -0.058871999 -0.92090398 0.38913801 -0.022536 -0.92757398 0.36560601 -0.077059999
		 -0.77354699 -0.63054103 -0.063582003 -0.77759099 -0.626257 -0.056161001 -0.91811299
		 -0.392928 -0.051727999 -0.924119 -0.37481901 -0.074267998 -0.77759099 -0.626257 -0.056161001
		 -0.64199501 -0.368752 -0.67220801 -0.87348098 -0.35147801 -0.336889 -0.91811299 -0.392928
		 -0.051727999 -0.91811299 -0.392928 -0.051727999 -0.87348098 -0.35147801 -0.336889
		 -0.98821902 -0.057645999 -0.141773 -0.99412298 -0.082204998 -0.070444003 -0.924119
		 -0.37481901 -0.074267998 -0.91811299 -0.392928 -0.051727999 -0.99412298 -0.082204998
		 -0.070444003 -0.99114901 -0.087361 -0.099963002 -0.420322 -0.89932799 -0.120576 -0.41415399
		 -0.89811999 -0.147843 -0.57862997 -0.80575502 -0.12628099 -0.58389097 -0.807612 -0.082675003
		 -0.41415399 -0.89811999 -0.147843 -0.036954001 -0.91939902 -0.39158601 -0.265773
		 -0.51555598 -0.814596 -0.57862997 -0.80575502 -0.12628099 -0.57862997 -0.80575502
		 -0.12628099 -0.265773 -0.51555598 -0.814596 -0.64199501 -0.368752 -0.67220801 -0.77759099
		 -0.626257 -0.056161001 -0.58389097 -0.807612 -0.082675003 -0.57862997 -0.80575502
		 -0.12628099 -0.77759099 -0.626257 -0.056161001 -0.77354699 -0.63054103 -0.063582003
		 0 -0.98218602 -0.18791001 0 -0.98266 -0.18541799 -0.27473 -0.94741201 -0.16411699
		 -0.25974 -0.951608 -0.16424701 0 -0.98266 -0.18541799 0 -0.996149 -0.087672003 -0.25069401
		 -0.963507 -0.093842 -0.27473 -0.94741201 -0.16411699 -0.27473 -0.94741201 -0.16411699
		 -0.25069401 -0.963507 -0.093842 -0.036954001 -0.91939902 -0.39158601 -0.41415399
		 -0.89811999 -0.147843 -0.25974 -0.951608 -0.16424701 -0.27473 -0.94741201 -0.16411699
		 -0.41415399 -0.89811999 -0.147843 -0.420322 -0.89932799 -0.120576 -0.61291099 0.78961599
		 -0.029099001 -0.60069799 0.799245 -0.019237 -0.287231 0.95779699 0.011123 -0.304299
		 0.95257598 -0.001389 -0.60069799 0.799245 -0.019237 -0.581249 0.81371403 -0.0043629999
		 -0.27555001 0.96077299 0.031443 -0.287231 0.95779699 0.011123 -0.287231 0.95779699
		 0.011123 -0.27555001 0.96077299 0.031443 0 0.99915302 0.041138001 0 0.99974 0.022801001
		 -0.304299 0.95257598 -0.001389 -0.287231 0.95779699 0.011123 0 0.99974 0.022801001
		 0 0.99989998 0.014126 -0.94704401 0.31957099 -0.031351 -0.94837499 0.308828 -0.072173998
		 -0.83129501 0.55342299 -0.051684 -0.83278102 0.55217999 -0.039662 -0.94837499 0.308828
		 -0.072173998 -0.94245601 0.317945 -0.103379 -0.81768399 0.57265198 -0.058844 -0.83129501
		 0.55342299 -0.051684 -0.83129501 0.55342299 -0.051684 -0.81768399 0.57265198 -0.058844
		 -0.581249 0.81371403 -0.0043629999 -0.60069799 0.799245 -0.019237 -0.83278102 0.55217999
		 -0.039662 -0.83129501 0.55342299 -0.051684 -0.60069799 0.799245 -0.019237 -0.61291099
		 0.78961599 -0.029099001 -0.99164402 -0.120667 -0.045634001 -0.98785102 -0.115455
		 -0.104025 -0.99103302 0.105029 -0.082595997 -0.99298102 0.116256 -0.021762 -0.98785102
		 -0.115455 -0.104025 -0.983863 -0.106329 -0.14390101 -0.98598802 0.108832 -0.126422
		 -0.99103302 0.105029 -0.082595997;
	setAttr ".n[1992:2157]" -type "float3"  -0.99103302 0.105029 -0.082595997 -0.98598802
		 0.108832 -0.126422 -0.94245601 0.317945 -0.103379 -0.94837499 0.308828 -0.072173998
		 -0.99298102 0.116256 -0.021762 -0.99103302 0.105029 -0.082595997 -0.94837499 0.308828
		 -0.072173998 -0.94704401 0.31957099 -0.031351 -0.67105198 -0.69694698 -0.25288999
		 -0.71109903 -0.66489601 -0.228587 -0.893031 -0.42130101 -0.15811899 -0.87891102 -0.45569599
		 -0.140917 -0.71109903 -0.66489601 -0.228587 -0.74134803 -0.63975102 -0.202787 -0.902448
		 -0.39550099 -0.170783 -0.893031 -0.42130101 -0.15811899 -0.893031 -0.42130101 -0.15811899
		 -0.902448 -0.39550099 -0.170783 -0.983863 -0.106329 -0.14390101 -0.98785102 -0.115455
		 -0.104025 -0.87891102 -0.45569599 -0.140917 -0.893031 -0.42130101 -0.15811899 -0.98785102
		 -0.115455 -0.104025 -0.99164402 -0.120667 -0.045634001 -0.37259901 -0.87012798 -0.32256401
		 -0.382301 -0.87081802 -0.309066 -0.53155702 -0.79824901 -0.28327599 -0.498959 -0.807482
		 -0.31466201 -0.382301 -0.87081802 -0.309066 -0.39719501 -0.88638198 -0.237831 -0.55997401
		 -0.79692298 -0.22658899 -0.53155702 -0.79824901 -0.28327599 -0.53155702 -0.79824901
		 -0.28327599 -0.55997401 -0.79692298 -0.22658899 -0.74134803 -0.63975102 -0.202787
		 -0.71109903 -0.66489601 -0.228587 -0.498959 -0.807482 -0.31466201 -0.53155702 -0.79824901
		 -0.28327599 -0.71109903 -0.66489601 -0.228587 -0.67105198 -0.69694698 -0.25288999
		 0 -0.95647502 -0.29181501 0 -0.948295 -0.31739101 -0.22819699 -0.920964 -0.315835
		 -0.229974 -0.924577 -0.30375999 0 -0.948295 -0.31739101 0 -0.96905297 -0.246851 -0.235163
		 -0.94091499 -0.243673 -0.22819699 -0.920964 -0.315835 -0.22819699 -0.920964 -0.315835
		 -0.235163 -0.94091499 -0.243673 -0.39719501 -0.88638198 -0.237831 -0.382301 -0.87081802
		 -0.309066 -0.229974 -0.924577 -0.30375999 -0.22819699 -0.920964 -0.315835 -0.382301
		 -0.87081802 -0.309066 -0.37259901 -0.87012798 -0.32256401 -0.581249 0.81371403 -0.0043629999
		 -0.56070298 0.82796001 0.0096899997 -0.26966399 0.96189898 0.045081999 -0.27555001
		 0.96077299 0.031443 -0.56070298 0.82796001 0.0096899997 -0.54366302 0.83901501 0.022005999
		 -0.26965201 0.96198201 0.043334 -0.26966399 0.96189898 0.045081999 -0.26966399 0.96189898
		 0.045081999 -0.26965201 0.96198201 0.043334 0 0.99897897 0.045169 0 0.99861801 0.052556999
		 -0.27555001 0.96077299 0.031443 -0.26966399 0.96189898 0.045081999 0 0.99861801 0.052556999
		 0 0.99915302 0.041138001 -0.94245601 0.317945 -0.103379 -0.93431902 0.339652 -0.108097
		 -0.798235 0.600034 -0.052724998 -0.81768399 0.57265198 -0.058844 -0.93431902 0.339652
		 -0.108097 -0.92757398 0.36560601 -0.077059999 -0.77871001 0.62681103 -0.026800999
		 -0.798235 0.600034 -0.052724998 -0.798235 0.600034 -0.052724998 -0.77871001 0.62681103
		 -0.026800999 -0.54366302 0.83901501 0.022005999 -0.56070298 0.82796001 0.0096899997
		 -0.81768399 0.57265198 -0.058844 -0.798235 0.600034 -0.052724998 -0.56070298 0.82796001
		 0.0096899997 -0.581249 0.81371403 -0.0043629999 -0.983863 -0.106329 -0.14390101 -0.98458701
		 -0.091210999 -0.149225 -0.982916 0.122969 -0.136951 -0.98598802 0.108832 -0.126422
		 -0.98458701 -0.091210999 -0.149225 -0.99114901 -0.087361 -0.099963002 -0.98485899
		 0.13902099 -0.103568 -0.982916 0.122969 -0.136951 -0.982916 0.122969 -0.136951 -0.98485899
		 0.13902099 -0.103568 -0.92757398 0.36560601 -0.077059999 -0.93431902 0.339652 -0.108097
		 -0.98598802 0.108832 -0.126422 -0.982916 0.122969 -0.136951 -0.93431902 0.339652
		 -0.108097 -0.94245601 0.317945 -0.103379 -0.74134803 -0.63975102 -0.202787 -0.76232803
		 -0.62678701 -0.16122501 -0.91475201 -0.37282899 -0.155652 -0.902448 -0.39550099 -0.170783
		 -0.76232803 -0.62678701 -0.16122501 -0.77354699 -0.63054103 -0.063582003 -0.924119
		 -0.37481901 -0.074267998 -0.91475201 -0.37282899 -0.155652 -0.91475201 -0.37282899
		 -0.155652 -0.924119 -0.37481901 -0.074267998 -0.99114901 -0.087361 -0.099963002 -0.98458701
		 -0.091210999 -0.149225 -0.902448 -0.39550099 -0.170783 -0.91475201 -0.37282899 -0.155652
		 -0.98458701 -0.091210999 -0.149225 -0.983863 -0.106329 -0.14390101 -0.39719501 -0.88638198
		 -0.237831 -0.40570799 -0.89865798 -0.16678201 -0.57418501 -0.80220002 -0.163666 -0.55997401
		 -0.79692298 -0.22658899 -0.40570799 -0.89865798 -0.16678201 -0.420322 -0.89932799
		 -0.120576 -0.58389097 -0.807612 -0.082675003 -0.57418501 -0.80220002 -0.163666 -0.57418501
		 -0.80220002 -0.163666 -0.58389097 -0.807612 -0.082675003 -0.77354699 -0.63054103
		 -0.063582003 -0.76232803 -0.62678701 -0.16122501 -0.55997401 -0.79692298 -0.22658899
		 -0.57418501 -0.80220002 -0.163666 -0.76232803 -0.62678701 -0.16122501 -0.74134803
		 -0.63975102 -0.202787 0 -0.96905297 -0.246851 0 -0.983284 -0.182079 -0.24236 -0.95411402
		 -0.17586599 -0.235163 -0.94091499 -0.243673 0 -0.983284 -0.182079 0 -0.98218602 -0.18791001
		 -0.25974 -0.951608 -0.16424701 -0.24236 -0.95411402 -0.17586599 -0.24236 -0.95411402
		 -0.17586599 -0.25974 -0.951608 -0.16424701 -0.420322 -0.89932799 -0.120576 -0.40570799
		 -0.89865798 -0.16678201 -0.235163 -0.94091499 -0.243673 -0.24236 -0.95411402 -0.17586599
		 -0.40570799 -0.89865798 -0.16678201 -0.39719501 -0.88638198 -0.237831 -0.58711398
		 0.43230799 -0.68440199 -0.639467 0.58614302 -0.497511 -0.333013 0.77629203 -0.53523099
		 -0.26164901 0.70947999 -0.65435302 -0.639467 0.58614302 -0.497511 -0.59851801 0.66283703
		 -0.44991499 -0.33574501 0.83291 -0.439928 -0.333013 0.77629203 -0.53523099 -0.333013
		 0.77629203 -0.53523099 -0.33574501 0.83291 -0.439928 0 0.89988798 -0.436122 0 0.83538699
		 -0.54966199 -0.26164901 0.70947999 -0.65435302 -0.333013 0.77629203 -0.53523099;
	setAttr ".n[2158:2323]" -type "float3"  0 0.83538699 -0.54966199 0 0.72630101
		 -0.68737698 0 -0.97754002 -0.210752 0.011086 -0.97081 -0.239592 -0.035039 -0.85463399
		 -0.51804799 0 -0.89719802 -0.44162899 0.011086 -0.97081 -0.239592 0.465749 -0.82991201
		 -0.30712301 0.117033 -0.71288002 -0.69145203 -0.035039 -0.85463399 -0.51804799 -0.035039
		 -0.85463399 -0.51804799 0.117033 -0.71288002 -0.69145203 -0.18939599 -0.52191401
		 -0.83170599 -0.104983 -0.72943997 -0.67594099 0 -0.89719802 -0.44162899 -0.035039
		 -0.85463399 -0.51804799 -0.104983 -0.72943997 -0.67594099 0 -0.79087901 -0.61197299
		 -0.87515497 -0.078135997 -0.477492 -0.79200798 0.01244 -0.61038399 -0.830715 0.257195
		 -0.49372399 -0.90066499 0.123667 -0.41654399 -0.79200798 0.01244 -0.61038399 -0.82568598
		 0.19254 -0.53025502 -0.76961398 0.42730099 -0.474457 -0.830715 0.257195 -0.49372399
		 -0.830715 0.257195 -0.49372399 -0.76961398 0.42730099 -0.474457 -0.59851801 0.66283703
		 -0.44991499 -0.639467 0.58614302 -0.497511 -0.90066499 0.123667 -0.41654399 -0.830715
		 0.257195 -0.49372399 -0.639467 0.58614302 -0.497511 -0.58711398 0.43230799 -0.68440199
		 -0.95897698 -0.12832201 0.25277701 -0.96515101 -0.151645 0.213278 -0.91602403 -0.38758001
		 0.103356 -0.913477 -0.374787 0.158411 -0.96515101 -0.151645 0.213278 -0.92303902
		 -0.197745 0.32999399 -0.87605798 -0.453915 0.162735 -0.91602403 -0.38758001 0.103356
		 -0.91602403 -0.38758001 0.103356 -0.87605798 -0.453915 0.162735 -0.605416 -0.79271197
		 -0.071263999 -0.59244502 -0.80226302 -0.073371001 -0.913477 -0.374787 0.158411 -0.91602403
		 -0.38758001 0.103356 -0.59244502 -0.80226302 -0.073371001 -0.600272 -0.79978901 0.003421
		 -0.600272 -0.79978901 0.003421 -0.59659201 -0.78913999 0.146065 -0.85227001 -0.440099
		 0.282754 -0.913477 -0.374787 0.158411 -0.59659201 -0.78913999 0.146065 -0.50032699
		 -0.80134797 0.327894 -0.648018 -0.61704302 0.446464 -0.85227001 -0.440099 0.282754
		 -0.85227001 -0.440099 0.282754 -0.648018 -0.61704302 0.446464 -0.73374897 -0.38851199
		 0.55737901 -0.92117 -0.17804299 0.34604299 -0.913477 -0.374787 0.158411 -0.85227001
		 -0.440099 0.282754 -0.92117 -0.17804299 0.34604299 -0.95897698 -0.12832201 0.25277701
		 -0.92303902 -0.197745 0.32999399 -0.83967298 -0.23453499 0.48984 -0.78692698 -0.55762398
		 0.2642 -0.87605798 -0.453915 0.162735 -0.83967298 -0.23453499 0.48984 -0.809964 -0.23476
		 0.537444 -0.72082102 -0.62145901 0.30693099 -0.78692698 -0.55762398 0.2642 -0.78692698
		 -0.55762398 0.2642 -0.72082102 -0.62145901 0.30693099 -0.59136897 -0.80080402 0.094850004
		 -0.67329401 -0.73895001 0.025056999 -0.87605798 -0.453915 0.162735 -0.78692698 -0.55762398
		 0.2642 -0.67329401 -0.73895001 0.025056999 -0.605416 -0.79271197 -0.071263999 -0.79130203
		 0.220267 0.57037097 -0.79708099 0.193719 0.57195699 -0.86876798 0.36962301 0.329577
		 -0.80853701 0.45634499 0.371508 -0.79708099 0.193719 0.57195699 -0.99165797 0.12883
		 0.0041379998 -0.95036 0.25667799 0.17587601 -0.86876798 0.36962301 0.329577 -0.86876798
		 0.36962301 0.329577 -0.95036 0.25667799 0.17587601 -0.90807998 0.28249899 0.30916801
		 -0.86337203 0.36526501 0.34809601 -0.80853701 0.45634499 0.371508 -0.86876798 0.36962301
		 0.329577 -0.86337203 0.36526501 0.34809601 -0.7978 0.47213301 0.374975 -0.809964
		 -0.23476 0.537444 -0.77371198 0.053824998 0.63124698 -0.73237902 0.057227001 0.67848802
		 -0.72426897 -0.222642 0.652583 -0.77371198 0.053824998 0.63124698 -0.67658597 0.18703
		 0.71221501 -0.73524302 0.12971801 0.66527498 -0.73237902 0.057227001 0.67848802 -0.73237902
		 0.057227001 0.67848802 -0.73524302 0.12971801 0.66527498 -0.82012701 0.198817 0.53652799
		 -0.79694998 0.14576299 0.58619499 -0.72426897 -0.222642 0.652583 -0.73237902 0.057227001
		 0.67848802 -0.79694998 0.14576299 0.58619499 -0.79708898 -0.203462 0.56855297 -0.84130001
		 -0.51525998 0.16346601 -0.88581002 -0.32669801 0.329557 -0.64158303 -0.43750799 0.63004601
		 -0.60224402 -0.556005 0.57285303 -0.88581002 -0.32669801 0.329557 -0.87546003 -0.17058
		 0.45218599 -0.62825501 -0.35535699 0.69211102 -0.64158303 -0.43750799 0.63004601
		 -0.64158303 -0.43750799 0.63004601 -0.62825501 -0.35535699 0.69211102 -0.398478 -0.460394
		 0.79325402 -0.39892501 -0.479193 0.78181398 -0.60224402 -0.556005 0.57285303 -0.64158303
		 -0.43750799 0.63004601 -0.39892501 -0.479193 0.78181398 -0.35200599 -0.50331599 0.78915501
		 -0.94831699 -0.129354 -0.289763 -0.856453 -0.091527 -0.50804597 -0.77622098 -0.51987302
		 -0.35666999 -0.80205601 -0.575122 -0.16106001 -0.85045499 0.062254999 -0.52235103
		 -0.92739302 -0.32020801 -0.193416 -0.77622098 -0.51987302 -0.35666999 -0.856453 -0.091527
		 -0.50804597 -0.84130001 -0.51525998 0.16346601 -0.80205601 -0.575122 -0.16106001
		 -0.77622098 -0.51987302 -0.35666999 -0.92739302 -0.32020801 -0.193416 -0.94831699
		 -0.129354 -0.289763 -0.96455503 0.13544101 -0.22646999 -0.84164101 0.131401 -0.52380699
		 -0.856453 -0.091527 -0.50804597 -0.96455503 0.13544101 -0.22646999 -0.99165797 0.12883
		 0.0041379998 -0.80682802 0.058162 -0.58791697 -0.84164101 0.131401 -0.52380699 -0.84164101
		 0.131401 -0.52380699 -0.80682802 0.058162 -0.58791697 -0.66149199 0.15021101 -0.73475498
		 -0.761693 0.180052 -0.622419 -0.856453 -0.091527 -0.50804597 -0.84164101 0.131401
		 -0.52380699 -0.761693 0.180052 -0.622419 -0.85045499 0.062254999 -0.52235103 -1e-06
		 0.99927402 -0.038091999 -1e-06 0.92334801 -0.383964 -0.097911 0.90620202 -0.41135299
		 -0.026198 0.99859601 -0.046050999 -1e-06 0.92334801 -0.383964 -1e-06 0.79741198 -0.60343599
		 -0.211862 0.74268401 -0.63524401 -0.097911 0.90620202 -0.41135299;
	setAttr ".n[2324:2489]" -type "float3"  -0.097911 0.90620202 -0.41135299 -0.211862
		 0.74268401 -0.63524401 -0.31337199 0.58551699 -0.74764198 0.081845 0.84782398 -0.52392399
		 -0.026198 0.99859601 -0.046050999 -0.097911 0.90620202 -0.41135299 0.081845 0.84782398
		 -0.52392399 0.33107999 0.93802702 -0.102428 -1e-06 0.73572898 0.67727602 -1e-06 0.84748799
		 0.53081501 -0.024124 0.83999097 0.542063 -0.066855997 0.71313 0.697837 -1e-06 0.84748799
		 0.53081501 0 0.89956802 0.43678099 0.0063919998 0.89000601 0.45590499 -0.024124 0.83999097
		 0.542063 -0.024124 0.83999097 0.542063 0.0063919998 0.89000601 0.45590499 -0.150887
		 0.756697 0.63611603 -0.22538801 0.78753 0.57358199 -0.066855997 0.71313 0.697837
		 -0.024124 0.83999097 0.542063 -0.22538801 0.78753 0.57358199 -0.26769599 0.64085901
		 0.71947098 0 -0.63603401 0.77166098 -0.34804499 -0.58699501 0.730959 -0.31061399
		 -0.77689397 0.54768199 0 -0.82215202 0.56926799 -0.34804499 -0.58699501 0.730959
		 -0.73374897 -0.38851199 0.55737901 -0.648018 -0.61704302 0.446464 -0.31061399 -0.77689397
		 0.54768199 -0.31061399 -0.77689397 0.54768199 -0.648018 -0.61704302 0.446464 -0.50032699
		 -0.80134797 0.327894 -0.28772101 -0.89967602 0.32833001 0 -0.82215202 0.56926799
		 -0.31061399 -0.77689397 0.54768199 -0.28772101 -0.89967602 0.32833001 0 -0.94084603
		 0.338835 0 -0.996108 -0.088137999 0 -0.99671298 0.081012003 -0.28224 -0.955127 0.089855999
		 -0.26399601 -0.96164799 -0.074428998 0 -0.99671298 0.081012003 0 -0.94084603 0.338835
		 -0.28772101 -0.89967602 0.32833001 -0.28224 -0.955127 0.089855999 -0.28224 -0.955127
		 0.089855999 -0.28772101 -0.89967602 0.32833001 -0.50032699 -0.80134797 0.327894 -0.59659201
		 -0.78913999 0.146065 -0.26399601 -0.96164799 -0.074428998 -0.28224 -0.955127 0.089855999
		 -0.59659201 -0.78913999 0.146065 -0.600272 -0.79978901 0.003421 -0.600272 -0.79978901
		 0.003421 -0.59244502 -0.80226302 -0.073371001 -0.26207501 -0.95370299 -0.14754 -0.26399601
		 -0.96164799 -0.074428998 -0.59244502 -0.80226302 -0.073371001 -0.605416 -0.79271197
		 -0.071263999 -0.269115 -0.94771397 -0.17151099 -0.26207501 -0.95370299 -0.14754 -0.26207501
		 -0.95370299 -0.14754 -0.269115 -0.94771397 -0.17151099 0 -0.98380399 -0.17924599
		 0 -0.98813802 -0.153569 -0.26399601 -0.96164799 -0.074428998 -0.26207501 -0.95370299
		 -0.14754 0 -0.98813802 -0.153569 0 -0.996108 -0.088137999 -0.35155201 -0.92516398
		 -0.14311799 -0.23824701 -0.95596099 -0.171396 -0.25882301 -0.94987798 -0.175335 -0.389808
		 -0.90748101 -0.15661199 -0.23824701 -0.95596099 -0.171396 0 -0.98330301 -0.181978
		 0 -0.98192197 -0.189284 -0.25882301 -0.94987798 -0.175335 -0.25882301 -0.94987798
		 -0.175335 0 -0.98192197 -0.189284 0 -0.98380399 -0.17924599 -0.269115 -0.94771397
		 -0.17151099 -0.389808 -0.90748101 -0.15661199 -0.25882301 -0.94987798 -0.175335 -0.269115
		 -0.94771397 -0.17151099 -0.605416 -0.79271197 -0.071263999 -0.398478 -0.460394 0.79325402
		 -0.183943 -0.51973403 0.83429098 -0.185477 -0.50496298 0.842978 -0.39892501 -0.479193
		 0.78181398 -0.183943 -0.51973403 0.83429098 0 -0.53797698 0.84296 0 -0.51538098 0.85696101
		 -0.185477 -0.50496298 0.842978 -0.185477 -0.50496298 0.842978 0 -0.51538098 0.85696101
		 0 -0.473674 0.88069999 -0.16611101 -0.47638199 0.86340499 -0.39892501 -0.479193 0.78181398
		 -0.185477 -0.50496298 0.842978 -0.16611101 -0.47638199 0.86340499 -0.35200599 -0.50331599
		 0.78915501 0 0.636711 -0.77110302 0 0.61702001 -0.78694701 -0.451877 0.53113002 -0.71673399
		 -0.39239699 0.55470198 -0.73370999 0 0.61702001 -0.78694701 1e-06 0.70624501 -0.707968
		 -0.498272 0.61055201 -0.61558998 -0.451877 0.53113002 -0.71673399 -0.451877 0.53113002
		 -0.71673399 -0.498272 0.61055201 -0.61558998 -0.73207802 0.47545901 -0.48785299 -0.69141799
		 0.38840401 -0.60916603 -0.39239699 0.55470198 -0.73370999 -0.451877 0.53113002 -0.71673399
		 -0.69141799 0.38840401 -0.60916603 -0.63992101 0.395818 -0.65865701 -0.63992101 0.395818
		 -0.65865701 -0.69141799 0.38840401 -0.60916603 -0.820144 0.249469 -0.514907 -0.77113098
		 0.242955 -0.588498 -0.69141799 0.38840401 -0.60916603 -0.73207802 0.47545901 -0.48785299
		 -0.85768503 0.36079001 -0.36634201 -0.820144 0.249469 -0.514907 -0.820144 0.249469
		 -0.514907 -0.85768503 0.36079001 -0.36634201 -0.963072 0.215619 -0.161248 -0.94053501
		 0.067616999 -0.332899 -0.77113098 0.242955 -0.588498 -0.820144 0.249469 -0.514907
		 -0.94053501 0.067616999 -0.332899 -0.85045499 0.062254999 -0.52235103 -0.87546003
		 -0.17058 0.45218599 -0.84333497 -0.088624999 0.530029 -0.59026098 -0.31522101 0.74312103
		 -0.62825501 -0.35535699 0.69211102 -0.84333497 -0.088624999 0.530029 -0.80471301
		 -0.075897001 0.58879203 -0.53670901 -0.301272 0.788149 -0.59026098 -0.31522101 0.74312103
		 -0.59026098 -0.31522101 0.74312103 -0.53670901 -0.301272 0.788149 -0.31862399 -0.42648199
		 0.84651798 -0.36797801 -0.44648501 0.81562501 -0.62825501 -0.35535699 0.69211102
		 -0.59026098 -0.31522101 0.74312103 -0.36797801 -0.44648501 0.81562501 -0.398478 -0.460394
		 0.79325402 -0.398478 -0.460394 0.79325402 -0.36797801 -0.44648501 0.81562501 -0.168367
		 -0.51771599 0.83882201 -0.183943 -0.51973403 0.83429098 -0.36797801 -0.44648501 0.81562501
		 -0.31862399 -0.42648199 0.84651798 -0.140982 -0.492659 0.85872698 -0.168367 -0.51771599
		 0.83882201 -0.168367 -0.51771599 0.83882201 -0.140982 -0.492659 0.85872698 0 -0.51236999
		 0.85876501 0 -0.53868198 0.84250897 -0.183943 -0.51973403 0.83429098 -0.168367 -0.51771599
		 0.83882201;
	setAttr ".n[2490:2655]" -type "float3"  0 -0.53868198 0.84250897 0 -0.53797698
		 0.84296 -0.35200599 -0.50331599 0.78915501 -0.16611101 -0.47638199 0.86340499 -0.13399
		 -0.500211 0.855474 -0.26820299 -0.58226699 0.76748401 -0.16611101 -0.47638199 0.86340499
		 0 -0.473674 0.88069999 1e-06 -0.48117 0.87662703 -0.13399 -0.500211 0.855474 -0.13399
		 -0.500211 0.855474 1e-06 -0.48117 0.87662703 0 -0.69711798 0.71695602 -0.134296 -0.70836997
		 0.69294798 -0.26820299 -0.58226699 0.76748401 -0.13399 -0.500211 0.855474 -0.134296
		 -0.70836997 0.69294798 -0.20813 -0.760665 0.61487502 -0.56267899 -0.76457101 0.31436399
		 -0.67516202 -0.70166397 0.22764599 -0.478861 -0.70421702 0.52418602 -0.334517 -0.81657702
		 0.47042599 -0.67516202 -0.70166397 0.22764599 -0.84130001 -0.51525998 0.16346601
		 -0.60224402 -0.556005 0.57285303 -0.478861 -0.70421702 0.52418602 -0.478861 -0.70421702
		 0.52418602 -0.60224402 -0.556005 0.57285303 -0.35200599 -0.50331599 0.78915501 -0.26820299
		 -0.58226699 0.76748401 -0.334517 -0.81657702 0.47042599 -0.478861 -0.70421702 0.52418602
		 -0.26820299 -0.58226699 0.76748401 -0.20813 -0.760665 0.61487502 -0.96942401 -0.18267
		 0.16385899 -0.97635198 -0.174308 -0.12787899 -0.75633699 -0.65314502 -0.036835 -0.69346899
		 -0.698039 0.178444 -0.97635198 -0.174308 -0.12787899 -0.94831699 -0.129354 -0.289763
		 -0.80205601 -0.575122 -0.16106001 -0.75633699 -0.65314502 -0.036835 -0.75633699 -0.65314502
		 -0.036835 -0.80205601 -0.575122 -0.16106001 -0.84130001 -0.51525998 0.16346601 -0.67516202
		 -0.70166397 0.22764599 -0.69346899 -0.698039 0.178444 -0.75633699 -0.65314502 -0.036835
		 -0.67516202 -0.70166397 0.22764599 -0.56267899 -0.76457101 0.31436399 -0.67740798
		 0.116084 0.72639102 -0.51922899 0.080192998 0.85086399 0.36079299 0.93184102 0.038741
		 -0.143158 0.928743 -0.34196901 -0.51922899 0.080192998 0.85086399 -0.53902501 0.064443998
		 0.83982098 0.52089 0.80176598 0.29299501 0.36079299 0.93184102 0.038741 0.36079299
		 0.93184102 0.038741 0.52089 0.80176598 0.29299501 0.54635 0.83336598 -0.083687998
		 0.44903299 0.79225898 -0.41315299 -0.143158 0.928743 -0.34196901 0.36079299 0.93184102
		 0.038741 0.44903299 0.79225898 -0.41315299 0.180691 0.72951198 -0.65966898 0 0.89956802
		 0.43678099 0 0.964136 0.26540801 0.0087580001 0.96008301 0.279578 0.0063919998 0.89000601
		 0.45590499 0 0.964136 0.26540801 -1e-06 0.99927402 -0.038091999 -0.026198 0.99859601
		 -0.046050999 0.0087580001 0.96008301 0.279578 0.0087580001 0.96008301 0.279578 -0.026198
		 0.99859601 -0.046050999 0.33107999 0.93802702 -0.102428 0.376443 0.85896498 0.34708801
		 0.0063919998 0.89000601 0.45590499 0.0087580001 0.96008301 0.279578 0.376443 0.85896498
		 0.34708801 -0.150887 0.756697 0.63611603 -0.657942 -0.206274 0.72426701 -0.429625
		 -0.206164 0.87915802 -0.569794 -0.082929999 0.81759202 -0.70473099 -0.085543998 0.70429802
		 -0.429625 -0.206164 0.87915802 -0.84735698 -0.227267 0.47993299 -0.94150001 -0.157014
		 0.29820299 -0.569794 -0.082929999 0.81759202 -0.569794 -0.082929999 0.81759202 -0.94150001
		 -0.157014 0.29820299 -0.99165797 0.12883 0.0041379998 -0.79708099 0.193719 0.57195699
		 -0.70473099 -0.085543998 0.70429802 -0.569794 -0.082929999 0.81759202 -0.79708099
		 0.193719 0.57195699 -0.79130203 0.220267 0.57037097 -0.99165797 0.12883 0.0041379998
		 -0.94150001 -0.157014 0.29820299 -0.715289 -0.083199002 -0.69385898 -0.80682802 0.058162
		 -0.58791697 -0.94150001 -0.157014 0.29820299 -0.84735698 -0.227267 0.47993299 -0.71227503
		 -0.013813 -0.701765 -0.715289 -0.083199002 -0.69385898 -0.715289 -0.083199002 -0.69385898
		 -0.71227503 -0.013813 -0.701765 -0.43608299 0.128988 -0.89061397 -0.51008499 0.070805997
		 -0.85720497 -0.80682802 0.058162 -0.58791697 -0.715289 -0.083199002 -0.69385898 -0.51008499
		 0.070805997 -0.85720497 -0.66149199 0.15021101 -0.73475498 0.33107999 0.93802702
		 -0.102428 0.081845 0.84782398 -0.52392399 0.39807299 0.68110698 -0.61451697 0.72744697
		 0.66773403 -0.15796199 0.081845 0.84782398 -0.52392399 -0.31337199 0.58551699 -0.74764198
		 0.029625 0.54539502 -0.83765602 0.39807299 0.68110698 -0.61451697 0.39807299 0.68110698
		 -0.61451697 0.029625 0.54539502 -0.83765602 0.180989 0.54426402 -0.81915802 0.44795999
		 0.63682503 -0.62752402 0.72744697 0.66773403 -0.15796199 0.39807299 0.68110698 -0.61451697
		 0.44795999 0.63682503 -0.62752402 0.72178602 0.67289603 -0.161973 0.33107999 0.93802702
		 -0.102428 0.72744697 0.66773403 -0.15796199 0.771213 0.52283001 0.36315101 0.376443
		 0.85896498 0.34708801 0.72744697 0.66773403 -0.15796199 0.72178602 0.67289603 -0.161973
		 0.74374998 0.55681002 0.36986399 0.771213 0.52283001 0.36315101 0.771213 0.52283001
		 0.36315101 0.74374998 0.55681002 0.36986399 -0.14510401 0.16287801 0.97591799 -0.00046099999
		 0.310096 0.95070499 0.376443 0.85896498 0.34708801 0.771213 0.52283001 0.36315101
		 -0.00046099999 0.310096 0.95070499 -0.150887 0.756697 0.63611603 -0.67740798 0.116084
		 0.72639102 -0.76448298 0.011689 0.64453799 -0.24232601 -0.41457599 0.87715697 -0.456081
		 -0.46603301 0.75815803 -0.76056099 -0.134085 0.63527 -0.267279 -0.31804901 0.90961897
		 -0.24232601 -0.41457599 0.87715697 -0.76448298 0.011689 0.64453799 -0.557962 -0.326159
		 0.76308501 -0.456081 -0.46603301 0.75815803 -0.24232601 -0.41457599 0.87715697 -0.267279
		 -0.31804901 0.90961897 -0.67740798 0.116084 0.72639102 -0.143158 0.928743 -0.34196901
		 -0.53112602 0.66401899 -0.52629298 -0.76448298 0.011689 0.64453799 -0.143158 0.928743
		 -0.34196901 0.180691 0.72951198 -0.65966898 -0.121898 0.587035 -0.80033201 -0.53112602
		 0.66401899 -0.52629298;
	setAttr ".n[2656:2821]" -type "float3"  -0.53112602 0.66401899 -0.52629298 -0.121898
		 0.587035 -0.80033201 -0.43935201 0.42600799 -0.79087698 -0.73633999 0.33742401 -0.58647102
		 -0.76448298 0.011689 0.64453799 -0.53112602 0.66401899 -0.52629298 -0.73633999 0.33742401
		 -0.58647102 -0.76056099 -0.134085 0.63527 -0.67740798 0.116084 0.72639102 -0.456081
		 -0.46603301 0.75815803 -0.68953198 -0.51140898 0.512842 -0.51922899 0.080192998 0.85086399
		 -0.557962 -0.326159 0.76308501 -0.75916302 -0.42888501 0.48962101 -0.68953198 -0.51140898
		 0.512842 -0.456081 -0.46603301 0.75815803 -0.53902501 0.064443998 0.83982098 -0.51922899
		 0.080192998 0.85086399 -0.68953198 -0.51140898 0.512842 -0.75916302 -0.42888501 0.48962101
		 0 -0.106568 0.99430603 0 -0.979114 -0.20331199 -0.262335 -0.809515 -0.52522898 -0.36187801
		 -0.174505 0.91574699 0 -0.979114 -0.20331199 0 -0.79087901 -0.61197299 -0.104983
		 -0.72943997 -0.67594099 -0.262335 -0.809515 -0.52522898 -0.262335 -0.809515 -0.52522898
		 -0.104983 -0.72943997 -0.67594099 -0.18939599 -0.52191401 -0.83170599 -0.37375101
		 -0.57856798 -0.724962 -0.36187801 -0.174505 0.91574699 -0.262335 -0.809515 -0.52522898
		 -0.37375101 -0.57856798 -0.724962 -0.95929998 -0.275691 0.061145 -0.37854901 -0.457232
		 0.80475998 -0.80994397 -0.29013601 0.509718 -0.592062 -0.121238 0.79672098 -0.13285901
		 -0.169407 0.97654998 -0.80994397 -0.29013601 0.509718 -0.987032 0.027543001 0.158144
		 -0.92062801 -0.015281 0.39014301 -0.592062 -0.121238 0.79672098 -0.592062 -0.121238
		 0.79672098 -0.92062801 -0.015281 0.39014301 -0.86384898 -0.117969 0.48974299 -0.55284297
		 -0.24237201 0.79725802 -0.13285901 -0.169407 0.97654998 -0.592062 -0.121238 0.79672098
		 -0.55284297 -0.24237201 0.79725802 -0.172748 -0.340029 0.92441303 0.44351599 -0.88243997
		 0.15682501 0.087311998 -0.67729998 0.73050803 0.43143299 -0.26879701 0.86116999 0.89292198
		 -0.35041499 0.282666 0.087311998 -0.67729998 0.73050803 -0.37854901 -0.457232 0.80475998
		 -0.13285901 -0.169407 0.97654998 0.43143299 -0.26879701 0.86116999 0.43143299 -0.26879701
		 0.86116999 -0.13285901 -0.169407 0.97654998 -0.172748 -0.340029 0.92441303 0.397984
		 -0.40689099 0.82222199 0.89292198 -0.35041499 0.282666 0.43143299 -0.26879701 0.86116999
		 0.397984 -0.40689099 0.82222199 0.894687 -0.32075799 0.31088501 0.894687 -0.32075799
		 0.31088501 0.96584803 -0.25901201 0.0071339998 0.92495602 -0.38002399 0.0062350002
		 0.89292198 -0.35041499 0.282666 0.96584803 -0.25901201 0.0071339998 0.88205701 -0.37190899
		 -0.28923801 0.80317801 -0.523449 -0.28444201 0.92495602 -0.38002399 0.0062350002
		 0.92495602 -0.38002399 0.0062350002 0.80317801 -0.523449 -0.28444201 0.465749 -0.82991201
		 -0.30712301 0.61586303 -0.78527099 -0.063747004 0.89292198 -0.35041499 0.282666 0.92495602
		 -0.38002399 0.0062350002 0.61586303 -0.78527099 -0.063747004 0.44351599 -0.88243997
		 0.15682501 -0.18939599 -0.52191401 -0.83170599 0.117033 -0.71288002 -0.69145203 0.25202
		 -0.594639 -0.76347297 -0.147644 -0.46616301 -0.87229198 0.117033 -0.71288002 -0.69145203
		 0.465749 -0.82991201 -0.30712301 0.80317801 -0.523449 -0.28444201 0.25202 -0.594639
		 -0.76347297 0.25202 -0.594639 -0.76347297 0.80317801 -0.523449 -0.28444201 0.88205701
		 -0.37190899 -0.28923801 0.30819699 -0.51929998 -0.79708302 -0.147644 -0.46616301
		 -0.87229198 0.25202 -0.594639 -0.76347297 0.30819699 -0.51929998 -0.79708302 -0.1267
		 -0.46711001 -0.87507498 -0.78238797 -0.030824 -0.62202799 -0.475144 -0.25162399 -0.84316301
		 -0.47359499 -0.277172 -0.83599299 -0.81587702 -0.051034 -0.57596898 -0.475144 -0.25162399
		 -0.84316301 -0.18939599 -0.52191401 -0.83170599 -0.147644 -0.46616301 -0.87229198
		 -0.47359499 -0.277172 -0.83599299 -0.47359499 -0.277172 -0.83599299 -0.147644 -0.46616301
		 -0.87229198 -0.1267 -0.46711001 -0.87507498 -0.474316 -0.347947 -0.808676 -0.81587702
		 -0.051034 -0.57596898 -0.47359499 -0.277172 -0.83599299 -0.474316 -0.347947 -0.808676
		 -0.83603698 -0.15759499 -0.52555299 -0.987032 0.027543001 0.158144 -0.99115598 0.125044
		 0.044425 -0.99168301 0.058628 0.114579 -0.92062801 -0.015281 0.39014301 -0.99115598
		 0.125044 0.044425 -0.9831 0.133393 -0.125385 -0.99311602 0.077613004 -0.087727003
		 -0.99168301 0.058628 0.114579 -0.99168301 0.058628 0.114579 -0.99311602 0.077613004
		 -0.087727003 -0.99897301 -0.0023380001 -0.045240998 -0.98155099 -0.026244 0.18939
		 -0.92062801 -0.015281 0.39014301 -0.99168301 0.058628 0.114579 -0.98155099 -0.026244
		 0.18939 -0.86384898 -0.117969 0.48974299 -0.95929998 -0.275691 0.061145 -0.37375101
		 -0.57856798 -0.724962 -0.480542 -0.33754301 -0.80940998 -0.614595 -0.22590099 -0.75580502
		 -0.18939599 -0.52191401 -0.83170599 -0.475144 -0.25162399 -0.84316301 -0.480542 -0.33754301
		 -0.80940998 -0.37375101 -0.57856798 -0.724962 -0.78238797 -0.030824 -0.62202799 -0.614595
		 -0.22590099 -0.75580502 -0.480542 -0.33754301 -0.80940998 -0.475144 -0.25162399 -0.84316301
		 0 -0.702151 0.71202803 0 -0.55776203 0.830001 -0.122505 -0.53898299 0.83336002 -0.130365
		 -0.69352698 0.708538 0 -0.55776203 0.830001 0 -0.51236999 0.85876501 -0.140982 -0.492659
		 0.85872698 -0.122505 -0.53898299 0.83336002 -0.122505 -0.53898299 0.83336002 -0.140982
		 -0.492659 0.85872698 -0.31862399 -0.42648199 0.84651798 -0.26670301 -0.47462001 0.83881199
		 -0.130365 -0.69352698 0.708538 -0.122505 -0.53898299 0.83336002 -0.26670301 -0.47462001
		 0.83881199 -0.23962399 -0.65258902 0.71882403 -0.72754002 -0.32845399 0.60233098
		 -0.466795 -0.482021 0.74145699 -0.48342901 -0.34987399 0.80242401 -0.759615 -0.14715301
		 0.63350701 -0.466795 -0.482021 0.74145699 -0.23962399 -0.65258902 0.71882403;
	setAttr ".n[2822:2987]" -type "float3"  -0.26670301 -0.47462001 0.83881199 -0.48342901
		 -0.34987399 0.80242401 -0.48342901 -0.34987399 0.80242401 -0.26670301 -0.47462001
		 0.83881199 -0.31862399 -0.42648199 0.84651798 -0.53670901 -0.301272 0.788149 -0.759615
		 -0.14715301 0.63350701 -0.48342901 -0.34987399 0.80242401 -0.53670901 -0.301272 0.788149
		 -0.80471301 -0.075897001 0.58879203 -0.924941 -0.010802 0.37995699 -0.865188 -0.156746
		 0.47631899 -0.90546399 0.079954997 0.41682401 -0.92061698 0.21911401 0.32319301 -0.865188
		 -0.156746 0.47631899 -0.72754002 -0.32845399 0.60233098 -0.759615 -0.14715301 0.63350701
		 -0.90546399 0.079954997 0.41682401 -0.90546399 0.079954997 0.41682401 -0.759615 -0.14715301
		 0.63350701 -0.80471301 -0.075897001 0.58879203 -0.93098998 0.17200699 0.32198101
		 -0.92061698 0.21911401 0.32319301 -0.90546399 0.079954997 0.41682401 -0.93098998
		 0.17200699 0.32198101 -0.91065902 0.36830199 0.187226 -0.71319598 0.68563598 -0.14579
		 -0.82973999 0.55800098 0.012911 -0.86190498 0.474608 -0.17851301 -0.74250799 0.59302801
		 -0.31144801 -0.82973999 0.55800098 0.012911 -0.91065902 0.36830199 0.187226 -0.942541
		 0.33408901 -0.001207 -0.86190498 0.474608 -0.17851301 -0.86190498 0.474608 -0.17851301
		 -0.942541 0.33408901 -0.001207 -0.963072 0.215619 -0.161248 -0.85768503 0.36079001
		 -0.36634201 -0.74250799 0.59302801 -0.31144801 -0.86190498 0.474608 -0.17851301 -0.85768503
		 0.36079001 -0.36634201 -0.73207802 0.47545901 -0.48785299 1e-06 0.70624501 -0.707968
		 0 0.83457202 -0.55089802 -0.51523501 0.72916502 -0.45039099 -0.498272 0.61055201
		 -0.61558998 0 0.83457202 -0.55089802 0 0.891168 -0.45367399 -0.49550599 0.80301899
		 -0.33111 -0.51523501 0.72916502 -0.45039099 -0.51523501 0.72916502 -0.45039099 -0.49550599
		 0.80301899 -0.33111 -0.71319598 0.68563598 -0.14579 -0.74250799 0.59302801 -0.31144801
		 -0.498272 0.61055201 -0.61558998 -0.51523501 0.72916502 -0.45039099 -0.74250799 0.59302801
		 -0.31144801 -0.73207802 0.47545901 -0.48785299 0 0.42668599 0.90439999 0 0.55480099
		 0.83198297 -0.14277001 0.50043797 0.85391998 -0.208579 0.39471501 0.89481598 0 0.55480099
		 0.83198297 -1e-06 0.73572898 0.67727602 -0.066855997 0.71313 0.697837 -0.14277001
		 0.50043797 0.85391998 -0.14277001 0.50043797 0.85391998 -0.066855997 0.71313 0.697837
		 -0.26769599 0.64085901 0.71947098 -0.31274199 0.37383401 0.87317801 -0.208579 0.39471501
		 0.89481598 -0.14277001 0.50043797 0.85391998 -0.31274199 0.37383401 0.87317801 -0.36291799
		 0.332441 0.870502 -0.809964 -0.23476 0.537444 -0.72426897 -0.222642 0.652583 -0.65233999
		 -0.640338 0.40548801 -0.72082102 -0.62145901 0.30693099 -0.72426897 -0.222642 0.652583
		 -0.79708898 -0.203462 0.56855297 -0.60207403 -0.65830499 0.45181999 -0.65233999 -0.640338
		 0.40548801 -0.65233999 -0.640338 0.40548801 -0.60207403 -0.65830499 0.45181999 -0.47210199
		 -0.81373101 0.33906099 -0.51359999 -0.83677101 0.189814 -0.72082102 -0.62145901 0.30693099
		 -0.65233999 -0.640338 0.40548801 -0.51359999 -0.83677101 0.189814 -0.59136897 -0.80080402
		 0.094850004 0 -0.99088699 0.13469601 0 -0.98635101 -0.164655 -0.229296 -0.96212 -0.147475
		 -0.202692 -0.96833599 0.14574499 0 -0.98635101 -0.164655 0 -0.98330301 -0.181978
		 -0.23824701 -0.95596099 -0.171396 -0.229296 -0.96212 -0.147475 -0.229296 -0.96212
		 -0.147475 -0.23824701 -0.95596099 -0.171396 -0.35155201 -0.92516398 -0.14311799 -0.30896601
		 -0.94587803 -0.099275 -0.202692 -0.96833599 0.14574499 -0.229296 -0.96212 -0.147475
		 -0.30896601 -0.94587803 -0.099275 -0.233603 -0.95496303 0.182961 -1e-06 0.49977499
		 0.86615503 -0.358825 0.44874299 0.81845897 -0.40107101 -0.368765 0.838543 -2e-06
		 -0.46147799 0.88715202 -0.358825 0.44874299 0.81845897 -0.72481501 0.338588 0.60000199
		 -0.76558203 -0.122977 0.63147497 -0.40107101 -0.368765 0.838543 -0.40107101 -0.368765
		 0.838543 -0.76558203 -0.122977 0.63147497 -0.73374897 -0.38851199 0.55737901 -0.34804499
		 -0.58699501 0.730959 -2e-06 -0.46147799 0.88715202 -0.40107101 -0.368765 0.838543
		 -0.34804499 -0.58699501 0.730959 0 -0.63603401 0.77166098 -0.32675499 0.60336602
		 0.72744799 -0.32971099 0.295434 0.89666599 -0.47441599 0.311378 0.82339102 -0.48173401
		 0.53728002 0.69228798 -0.32971099 0.295434 0.89666599 -0.36291799 0.332441 0.870502
		 -0.50888801 0.27494499 0.81574398 -0.47441599 0.311378 0.82339102 -0.47441599 0.311378
		 0.82339102 -0.50888801 0.27494499 0.81574398 -0.67658597 0.18703 0.71221501 -0.68060601
		 0.22363999 0.69768202 -0.48173401 0.53728002 0.69228798 -0.47441599 0.311378 0.82339102
		 -0.68060601 0.22363999 0.69768202 -0.77354401 0.31244999 0.55136698 -0.77354401 0.31244999
		 0.55136698 -0.89396203 0.071447998 0.44240999 -0.93646902 0.120407 0.329436 -0.80386502
		 0.41681001 0.424348 -0.89396203 0.071447998 0.44240999 -0.92303902 -0.197745 0.32999399
		 -0.96515101 -0.151645 0.213278 -0.93646902 0.120407 0.329436 -0.93646902 0.120407
		 0.329436 -0.96515101 -0.151645 0.213278 -0.95897698 -0.12832201 0.25277701 -0.92106301
		 0.15957899 0.355216 -0.80386502 0.41681001 0.424348 -0.93646902 0.120407 0.329436
		 -0.92106301 0.15957899 0.355216 -0.65549201 0.58552402 0.476962 -0.65549201 0.58552402
		 0.476962 -0.92106301 0.15957899 0.355216 -0.90256703 0.12994 0.410474 -0.67703098
		 0.54748601 0.491822 -0.92106301 0.15957899 0.355216 -0.95897698 -0.12832201 0.25277701
		 -0.92117 -0.17804299 0.34604299 -0.90256703 0.12994 0.410474 -0.90256703 0.12994
		 0.410474 -0.92117 -0.17804299 0.34604299 -0.73374897 -0.38851199 0.55737901 -0.76558203
		 -0.122977 0.63147497;
	setAttr ".n[2988:3153]" -type "float3"  -0.67703098 0.54748601 0.491822 -0.90256703
		 0.12994 0.410474 -0.76558203 -0.122977 0.63147497 -0.72481501 0.338588 0.60000199
		 -0.67658597 0.18703 0.71221501 -0.77371198 0.053824998 0.63124698 -0.79816198 0.054269999
		 0.59999299 -0.68060601 0.22363999 0.69768202 -0.77371198 0.053824998 0.63124698 -0.809964
		 -0.23476 0.537444 -0.83967298 -0.23453499 0.48984 -0.79816198 0.054269999 0.59999299
		 -0.79816198 0.054269999 0.59999299 -0.83967298 -0.23453499 0.48984 -0.92303902 -0.197745
		 0.32999399 -0.89396203 0.071447998 0.44240999 -0.68060601 0.22363999 0.69768202 -0.79816198
		 0.054269999 0.59999299 -0.89396203 0.071447998 0.44240999 -0.77354401 0.31244999
		 0.55136698 0 0.66263098 0.74894601 0 0.292696 0.95620602 -0.21489701 0.285667 0.93392402
		 -0.235788 0.63702399 0.73389697 0 0.292696 0.95620602 0 0.42668599 0.90439999 -0.208579
		 0.39471501 0.89481598 -0.21489701 0.285667 0.93392402 -0.21489701 0.285667 0.93392402
		 -0.208579 0.39471501 0.89481598 -0.36291799 0.332441 0.870502 -0.32971099 0.295434
		 0.89666599 -0.235788 0.63702399 0.73389697 -0.21489701 0.285667 0.93392402 -0.32971099
		 0.295434 0.89666599 -0.32675499 0.60336602 0.72744799 -0.65549201 0.58552402 0.476962
		 -0.27783 0.82067698 0.49929899 -0.24383201 0.83590698 0.49173701 -0.395183 0.782529
		 0.48112199 -0.27783 0.82067698 0.49929899 0 0.86404401 0.503416 0 0.86499798 0.50177503
		 -0.24383201 0.83590698 0.49173701 -0.24383201 0.83590698 0.49173701 0 0.86499798
		 0.50177503 0 0.66263098 0.74894601 -0.235788 0.63702399 0.73389697 -0.395183 0.782529
		 0.48112199 -0.24383201 0.83590698 0.49173701 -0.235788 0.63702399 0.73389697 -0.32675499
		 0.60336602 0.72744799 -0.72481501 0.338588 0.60000199 -0.358825 0.44874299 0.81845897
		 -0.31409299 0.79877698 0.51312798 -0.67703098 0.54748601 0.491822 -0.358825 0.44874299
		 0.81845897 -1e-06 0.49977499 0.86615503 0 0.86287099 0.50542498 -0.31409299 0.79877698
		 0.51312798 -0.31409299 0.79877698 0.51312798 0 0.86287099 0.50542498 0 0.86404401
		 0.503416 -0.27783 0.82067698 0.49929899 -0.67703098 0.54748601 0.491822 -0.31409299
		 0.79877698 0.51312798 -0.27783 0.82067698 0.49929899 -0.65549201 0.58552402 0.476962
		 -0.66149199 0.15021101 -0.73475498 -0.51008499 0.070805997 -0.85720497 -0.28539801
		 0.27397099 -0.91841602 -0.54491198 0.295598 -0.784661 -0.51008499 0.070805997 -0.85720497
		 -0.43608299 0.128988 -0.89061397 -0.106875 0.35120499 -0.930179 -0.28539801 0.27397099
		 -0.91841602 -0.28539801 0.27397099 -0.91841602 -0.106875 0.35120499 -0.930179 0.180989
		 0.54426402 -0.81915802 0.029625 0.54539502 -0.83765602 -0.54491198 0.295598 -0.784661
		 -0.28539801 0.27397099 -0.91841602 0.029625 0.54539502 -0.83765602 -0.31337199 0.58551699
		 -0.74764198 -0.63992101 0.395818 -0.65865701 -0.77113098 0.242955 -0.588498 -0.69821203
		 0.285097 -0.65667403 -0.54003602 0.46062899 -0.70440203 -0.77113098 0.242955 -0.588498
		 -0.85045499 0.062254999 -0.52235103 -0.761693 0.180052 -0.622419 -0.69821203 0.285097
		 -0.65667403 -0.69821203 0.285097 -0.65667403 -0.761693 0.180052 -0.622419 -0.66149199
		 0.15021101 -0.73475498 -0.54491198 0.295598 -0.784661 -0.54003602 0.46062899 -0.70440203
		 -0.69821203 0.285097 -0.65667403 -0.54491198 0.295598 -0.784661 -0.31337199 0.58551699
		 -0.74764198 -0.150887 0.756697 0.63611603 -0.00046099999 0.310096 0.95070499 -0.80442703
		 -0.19789501 0.560121 -0.839894 0.074474998 0.53761601 -0.00046099999 0.310096 0.95070499
		 -0.14510401 0.16287801 0.97591799 -0.78851098 -0.303058 0.53517002 -0.80442703 -0.19789501
		 0.560121 -0.80442703 -0.19789501 0.560121 -0.78851098 -0.303058 0.53517002 -0.657942
		 -0.206274 0.72426701 -0.70473099 -0.085543998 0.70429802 -0.839894 0.074474998 0.53761601
		 -0.80442703 -0.19789501 0.560121 -0.70473099 -0.085543998 0.70429802 -0.79130203
		 0.220267 0.57037097 -0.150887 0.756697 0.63611603 -0.839894 0.074474998 0.53761601
		 -0.76985902 0.50128198 0.39501101 -0.72375399 0.52613699 0.44649601 -0.79130203 0.220267
		 0.57037097 -0.80853701 0.45634499 0.371508 -0.76985902 0.50128198 0.39501101 -0.839894
		 0.074474998 0.53761601 -0.7978 0.47213301 0.374975 -0.72375399 0.52613699 0.44649601
		 -0.76985902 0.50128198 0.39501101 -0.80853701 0.45634499 0.371508 -0.36291799 0.332441
		 0.870502 -0.31274199 0.37383401 0.87317801 -0.50142199 0.25996801 0.82522303 -0.50888801
		 0.27494499 0.81574398 -0.31274199 0.37383401 0.87317801 -0.26769599 0.64085901 0.71947098
		 -0.58443201 0.431503 0.68720001 -0.50142199 0.25996801 0.82522303 -0.50142199 0.25996801
		 0.82522303 -0.58443201 0.431503 0.68720001 -0.72342002 0.35158399 0.59418201 -0.61998802
		 0.20806199 0.756522 -0.50888801 0.27494499 0.81574398 -0.50142199 0.25996801 0.82522303
		 -0.61998802 0.20806199 0.756522 -0.67658597 0.18703 0.71221501 0 0.79835999 -0.60218
		 -0.368018 0.72793001 -0.57851601 -0.38813299 0.72002703 -0.57525098 0 0.78569603
		 -0.61861199 -0.368018 0.72793001 -0.57851601 -0.67411703 0.49771801 -0.54575002 -0.76848203
		 0.50452203 -0.39356399 -0.38813299 0.72002703 -0.57525098 -0.38813299 0.72002703
		 -0.57525098 -0.76848203 0.50452203 -0.39356399 -0.848369 0.36607701 -0.38243699 -0.44437999
		 0.47674599 -0.75844502 0 0.78569603 -0.61861199 -0.38813299 0.72002703 -0.57525098
		 -0.44437999 0.47674599 -0.75844502 0 0.57403499 -0.81883103 0 -0.702586 0.71159798
		 -0.183052 -0.68141699 0.70863497 0.0031729999 -0.95375597 0.300565 0 -0.90720302
		 0.42069301 -0.183052 -0.68141699 0.70863497 -0.62515301 -0.69382399 0.357481;
	setAttr ".n[3154:3319]" -type "float3"  -0.61014301 -0.79189098 -0.025186 0.0031729999
		 -0.95375597 0.300565 0.0031729999 -0.95375597 0.300565 -0.61014301 -0.79189098 -0.025186
		 -0.68548799 -0.72419697 0.075130001 -0.321044 -0.92848003 0.18669499 0 -0.90720302
		 0.42069301 0.0031729999 -0.95375597 0.300565 -0.321044 -0.92848003 0.18669499 0 -0.97569698
		 0.21912301 -0.99918598 -0.040335 -7.0000001e-06 -0.94931901 0.229642 -0.21461 -0.94601899
		 0.05232 -0.31986001 -0.987414 -0.157397 -0.01546 -0.94931901 0.229642 -0.21461 -0.848369
		 0.36607701 -0.38243699 -0.76848203 0.50452203 -0.39356399 -0.94601899 0.05232 -0.31986001
		 -0.94601899 0.05232 -0.31986001 -0.76848203 0.50452203 -0.39356399 -0.67411703 0.49771801
		 -0.54575002 -0.816392 0.129887 -0.562702 -0.987414 -0.157397 -0.01546 -0.94601899
		 0.05232 -0.31986001 -0.816392 0.129887 -0.562702 -0.720083 -0.668064 -0.187536 -0.720083
		 -0.668064 -0.187536 -0.86798 -0.49343801 -0.055952001 -0.91638702 -0.382961 -0.116511
		 -0.987414 -0.157397 -0.01546 -0.86798 -0.49343801 -0.055952001 -0.68548799 -0.72419697
		 0.075130001 -0.61014301 -0.79189098 -0.025186 -0.91638702 -0.382961 -0.116511 -0.91638702
		 -0.382961 -0.116511 -0.61014301 -0.79189098 -0.025186 -0.62515301 -0.69382399 0.357481
		 -0.95225501 -0.222665 0.20888101 -0.987414 -0.157397 -0.01546 -0.91638702 -0.382961
		 -0.116511 -0.95225501 -0.222665 0.20888101 -0.99918598 -0.040335 -7.0000001e-06 -0.82896799
		 0.25391099 -0.49833801 -0.871517 0.257265 -0.41746101 -0.89551598 0.14242101 -0.42162499
		 -0.96370798 0.013965 -0.26659501 -0.871517 0.257265 -0.41746101 -0.848369 0.36607701
		 -0.38243699 -0.94931901 0.229642 -0.21461 -0.89551598 0.14242101 -0.42162499 -0.89551598
		 0.14242101 -0.42162499 -0.94931901 0.229642 -0.21461 -0.99918598 -0.040335 -7.0000001e-06
		 -0.97564298 -0.196748 0.097012997 -0.96370798 0.013965 -0.26659501 -0.89551598 0.14242101
		 -0.42162499 -0.97564298 -0.196748 0.097012997 -0.98163903 0.00041000001 0.190749
		 -3.5000001e-05 0.48168001 -0.87634701 0 0.54868603 -0.83602899 -0.562029 0.370094
		 -0.73969799 -0.53497201 0.404632 -0.74167198 0 0.54868603 -0.83602899 0 0.57403499
		 -0.81883103 -0.44437999 0.47674599 -0.75844502 -0.562029 0.370094 -0.73969799 -0.562029
		 0.370094 -0.73969799 -0.44437999 0.47674599 -0.75844502 -0.848369 0.36607701 -0.38243699
		 -0.871517 0.257265 -0.41746101 -0.53497201 0.404632 -0.74167198 -0.562029 0.370094
		 -0.73969799 -0.871517 0.257265 -0.41746101 -0.82896799 0.25391099 -0.49833801 -0.71736401
		 -0.44402301 0.53687298 -0.693703 -0.41857201 0.58615202 -0.368209 -0.62312102 0.69003099
		 -0.33915401 -0.39234799 0.85500699 -0.693703 -0.41857201 0.58615202 -0.62515301 -0.69382399
		 0.357481 -0.183052 -0.68141699 0.70863497 -0.368209 -0.62312102 0.69003099 -0.368209
		 -0.62312102 0.69003099 -0.183052 -0.68141699 0.70863497 0 -0.702586 0.71159798 0
		 -0.753941 0.65694201 -0.33915401 -0.39234799 0.85500699 -0.368209 -0.62312102 0.69003099
		 0 -0.753941 0.65694201 0 -0.57905197 0.81528997 -0.62515301 -0.69382399 0.357481
		 -0.693703 -0.41857201 0.58615202 -0.923581 -0.21784499 0.315501 -0.95225501 -0.222665
		 0.20888101 -0.693703 -0.41857201 0.58615202 -0.71736401 -0.44402301 0.53687298 -0.95704502
		 -0.20044 0.20949601 -0.923581 -0.21784499 0.315501 -0.923581 -0.21784499 0.315501
		 -0.95704502 -0.20044 0.20949601 -0.98163903 0.00041000001 0.190749 -0.97564298 -0.196748
		 0.097012997 -0.95225501 -0.222665 0.20888101 -0.923581 -0.21784499 0.315501 -0.97564298
		 -0.196748 0.097012997 -0.99918598 -0.040335 -7.0000001e-06 -0.67411703 0.49771801
		 -0.54575002 -0.77268398 0.52055103 -0.3633 -0.95830297 0.144015 -0.24680801 -0.816392
		 0.129887 -0.562702 -0.77268398 0.52055103 -0.3633 -0.791493 0.35754001 -0.49568501
		 -0.99129897 0.025601 -0.12912001 -0.95830297 0.144015 -0.24680801 -0.95830297 0.144015
		 -0.24680801 -0.99129897 0.025601 -0.12912001 -0.97490197 -0.145711 -0.168329 -0.96611798
		 -0.139826 -0.216947 -0.816392 0.129887 -0.562702 -0.95830297 0.144015 -0.24680801
		 -0.96611798 -0.139826 -0.216947 -0.720083 -0.668064 -0.187536 0 0.79835999 -0.60218
		 0 0.79979199 -0.60027701 -0.33465901 0.772695 -0.53939402 -0.368018 0.72793001 -0.57851601
		 0 0.79979199 -0.60027701 0 0.76528299 -0.64369398 -0.26282701 0.76782298 -0.58426899
		 -0.33465901 0.772695 -0.53939402 -0.33465901 0.772695 -0.53939402 -0.26282701 0.76782298
		 -0.58426899 -0.791493 0.35754001 -0.49568501 -0.77268398 0.52055103 -0.3633 -0.368018
		 0.72793001 -0.57851601 -0.33465901 0.772695 -0.53939402 -0.77268398 0.52055103 -0.3633
		 -0.67411703 0.49771801 -0.54575002 -0.68548799 -0.72419697 0.075130001 -0.71932501
		 -0.691993 -0.060963999 -0.35760999 -0.93382299 0.0095210001 -0.321044 -0.92848003
		 0.18669499 -0.71932501 -0.691993 -0.060963999 -0.74702603 -0.66083902 -0.072420001
		 -0.38483101 -0.92265201 -0.024870999 -0.35760999 -0.93382299 0.0095210001 -0.35760999
		 -0.93382299 0.0095210001 -0.38483101 -0.92265201 -0.024870999 0 -1 -0.00082199997
		 0 -0.99941999 0.034056999 -0.321044 -0.92848003 0.18669499 -0.35760999 -0.93382299
		 0.0095210001 0 -0.99941999 0.034056999 0 -0.97569698 0.21912301 -0.97490197 -0.145711
		 -0.168329 -0.909266 -0.39859799 -0.119812 -0.891581 -0.43160999 -0.137095 -0.96611798
		 -0.139826 -0.216947 -0.909266 -0.39859799 -0.119812 -0.74702603 -0.66083902 -0.072420001
		 -0.71932501 -0.691993 -0.060963999 -0.891581 -0.43160999 -0.137095 -0.891581 -0.43160999
		 -0.137095 -0.71932501 -0.691993 -0.060963999 -0.68548799 -0.72419697 0.075130001
		 -0.86798 -0.49343801 -0.055952001;
	setAttr ".n[3320:3485]" -type "float3"  -0.96611798 -0.139826 -0.216947 -0.891581
		 -0.43160999 -0.137095 -0.86798 -0.49343801 -0.055952001 -0.720083 -0.668064 -0.187536
		 -0.32675499 0.60336602 0.72744799 -0.48173401 0.53728002 0.69228798 -0.53593099 0.712345
		 0.45314699 -0.395183 0.782529 0.48112199 -0.77354401 0.31244999 0.55136698 -0.80386502
		 0.41681001 0.424348 -0.53593099 0.712345 0.45314699 -0.48173401 0.53728002 0.69228798
		 -0.65549201 0.58552402 0.476962 -0.395183 0.782529 0.48112199 -0.53593099 0.712345
		 0.45314699 -0.80386502 0.41681001 0.424348 -0.99165797 0.12883 0.0041379998 -0.96455503
		 0.13544101 -0.22646999 -0.98160797 0.190879 -0.003207 -0.95036 0.25667799 0.17587601
		 -0.96455503 0.13544101 -0.22646999 -0.94831699 -0.129354 -0.289763 -0.97635198 -0.174308
		 -0.12787899 -0.98160797 0.190879 -0.003207 -0.98160797 0.190879 -0.003207 -0.97635198
		 -0.174308 -0.12787899 -0.96942401 -0.18267 0.16385899 -0.93963099 0.246585 0.237253
		 -0.95036 0.25667799 0.17587601 -0.98160797 0.190879 -0.003207 -0.93963099 0.246585
		 0.237253 -0.90807998 0.28249899 0.30916801 -1e-06 0.79741198 -0.60343599 0 0.70183903
		 -0.71233499 -0.30983901 0.62772101 -0.71411902 -0.211862 0.74268401 -0.63524401 0
		 0.70183903 -0.71233499 0 0.636711 -0.77110302 -0.39239699 0.55470198 -0.73370999
		 -0.30983901 0.62772101 -0.71411902 -0.30983901 0.62772101 -0.71411902 -0.39239699
		 0.55470198 -0.73370999 -0.63992101 0.395818 -0.65865701 -0.54003602 0.46062899 -0.70440203
		 -0.211862 0.74268401 -0.63524401 -0.30983901 0.62772101 -0.71411902 -0.54003602 0.46062899
		 -0.70440203 -0.31337199 0.58551699 -0.74764198 -0.96942401 -0.18267 0.16385899 -0.87292302
		 -0.19003201 0.449325 -0.86962801 0.228186 0.43781099 -0.93963099 0.246585 0.237253
		 -0.87292302 -0.19003201 0.449325 -0.79708898 -0.203462 0.56855297 -0.79694998 0.14576299
		 0.58619499 -0.86962801 0.228186 0.43781099 -0.86962801 0.228186 0.43781099 -0.79694998
		 0.14576299 0.58619499 -0.82012701 0.198817 0.53652799 -0.869569 0.256331 0.42207101
		 -0.93963099 0.246585 0.237253 -0.86962801 0.228186 0.43781099 -0.869569 0.256331
		 0.42207101 -0.90807998 0.28249899 0.30916801 -0.79708898 -0.203462 0.56855297 -0.87292302
		 -0.19003201 0.449325 -0.62919301 -0.68896401 0.35978401 -0.60207403 -0.65830499 0.45181999
		 -0.87292302 -0.19003201 0.449325 -0.96942401 -0.18267 0.16385899 -0.69346899 -0.698039
		 0.178444 -0.62919301 -0.68896401 0.35978401 -0.62919301 -0.68896401 0.35978401 -0.69346899
		 -0.698039 0.178444 -0.56267899 -0.76457101 0.31436399 -0.48458099 -0.78498602 0.385977
		 -0.60207403 -0.65830499 0.45181999 -0.62919301 -0.68896401 0.35978401 -0.48458099
		 -0.78498602 0.385977 -0.47210199 -0.81373101 0.33906099 -0.72342002 0.35158399 0.59418201
		 -0.58443201 0.431503 0.68720001 -0.66752303 0.56380802 0.48634699 -0.78667903 0.44369799
		 0.42926499 -0.58443201 0.431503 0.68720001 -0.26769599 0.64085901 0.71947098 -0.22538801
		 0.78753 0.57358199 -0.66752303 0.56380802 0.48634699 -0.66752303 0.56380802 0.48634699
		 -0.22538801 0.78753 0.57358199 -0.150887 0.756697 0.63611603 -0.72375399 0.52613699
		 0.44649601 -0.78667903 0.44369799 0.42926499 -0.66752303 0.56380802 0.48634699 -0.72375399
		 0.52613699 0.44649601 -0.7978 0.47213301 0.374975 -0.90807998 0.28249899 0.30916801
		 -0.869569 0.256331 0.42207101 -0.85124099 0.323082 0.41352901 -0.86337203 0.36526501
		 0.34809601 -0.869569 0.256331 0.42207101 -0.82012701 0.198817 0.53652799 -0.81212801
		 0.26148799 0.52160603 -0.85124099 0.323082 0.41352901 -0.85124099 0.323082 0.41352901
		 -0.81212801 0.26148799 0.52160603 -0.72342002 0.35158399 0.59418201 -0.78667903 0.44369799
		 0.42926499 -0.86337203 0.36526501 0.34809601 -0.85124099 0.323082 0.41352901 -0.78667903
		 0.44369799 0.42926499 -0.7978 0.47213301 0.374975 -0.67658597 0.18703 0.71221501
		 -0.61998802 0.20806199 0.756522 -0.71972299 0.15960599 0.67566597 -0.73524302 0.12971801
		 0.66527498 -0.72342002 0.35158399 0.59418201 -0.81212801 0.26148799 0.52160603 -0.71972299
		 0.15960599 0.67566597 -0.61998802 0.20806199 0.756522 -0.82012701 0.198817 0.53652799
		 -0.73524302 0.12971801 0.66527498 -0.71972299 0.15960599 0.67566597 -0.81212801 0.26148799
		 0.52160603 0 -0.69711798 0.71695602 0 -0.893318 0.449426 -0.157474 -0.88182598 0.44450501
		 -0.134296 -0.70836997 0.69294798 0 -0.893318 0.449426 0 -0.99088699 0.13469601 -0.202692
		 -0.96833599 0.14574499 -0.157474 -0.88182598 0.44450501 -0.157474 -0.88182598 0.44450501
		 -0.202692 -0.96833599 0.14574499 -0.233603 -0.95496303 0.182961 -0.19248 -0.881769
		 0.43062201 -0.134296 -0.70836997 0.69294798 -0.157474 -0.88182598 0.44450501 -0.19248
		 -0.881769 0.43062201 -0.20813 -0.760665 0.61487502 -0.47210199 -0.81373101 0.33906099
		 -0.48458099 -0.78498602 0.385977 -0.267315 -0.87633997 0.400713 -0.287429 -0.92472601
		 0.249532 -0.48458099 -0.78498602 0.385977 -0.56267899 -0.76457101 0.31436399 -0.334517
		 -0.81657702 0.47042599 -0.267315 -0.87633997 0.400713 -0.267315 -0.87633997 0.400713
		 -0.334517 -0.81657702 0.47042599 -0.20813 -0.760665 0.61487502 -0.19248 -0.881769
		 0.43062201 -0.287429 -0.92472601 0.249532 -0.267315 -0.87633997 0.400713 -0.19248
		 -0.881769 0.43062201 -0.233603 -0.95496303 0.182961 -0.35155201 -0.92516398 -0.14311799
		 -0.44893399 -0.89185601 -0.055236999 -0.37252101 -0.92779201 0.020740001 -0.30896601
		 -0.94587803 -0.099275 -0.44893399 -0.89185601 -0.055236999 -0.59136897 -0.80080402
		 0.094850004 -0.51359999 -0.83677101 0.189814 -0.37252101 -0.92779201 0.020740001
		 -0.37252101 -0.92779201 0.020740001 -0.51359999 -0.83677101 0.189814;
	setAttr ".n[3486:3651]" -type "float3"  -0.47210199 -0.81373101 0.33906099 -0.287429
		 -0.92472601 0.249532 -0.30896601 -0.94587803 -0.099275 -0.37252101 -0.92779201 0.020740001
		 -0.287429 -0.92472601 0.249532 -0.233603 -0.95496303 0.182961 -0.59136897 -0.80080402
		 0.094850004 -0.44893399 -0.89185601 -0.055236999 -0.49182901 -0.86103201 -0.12933899
		 -0.67329401 -0.73895001 0.025056999 -0.35155201 -0.92516398 -0.14311799 -0.389808
		 -0.90748101 -0.15661199 -0.49182901 -0.86103201 -0.12933899 -0.44893399 -0.89185601
		 -0.055236999 -0.605416 -0.79271197 -0.071263999 -0.67329401 -0.73895001 0.025056999
		 -0.49182901 -0.86103201 -0.12933899 -0.389808 -0.90748101 -0.15661199 -0.85045499
		 0.062254999 -0.52235103 -0.94053501 0.067616999 -0.332899 -0.98905802 -0.14619499
		 -0.019777 -0.92739302 -0.32020801 -0.193416 -0.94053501 0.067616999 -0.332899 -0.963072
		 0.215619 -0.161248 -0.99041802 0.034401 0.133752 -0.98905802 -0.14619499 -0.019777
		 -0.98905802 -0.14619499 -0.019777 -0.99041802 0.034401 0.133752 -0.87546003 -0.17058
		 0.45218599 -0.88581002 -0.32669801 0.329557 -0.92739302 -0.32020801 -0.193416 -0.98905802
		 -0.14619499 -0.019777 -0.88581002 -0.32669801 0.329557 -0.84130001 -0.51525998 0.16346601
		 0.72178602 0.67289603 -0.161973 0.60775697 0.77801198 -0.159152 0.603719 0.71199799
		 0.358583 0.74374998 0.55681002 0.36986399 0.60775697 0.77801198 -0.159152 0.54635
		 0.83336598 -0.083687998 0.52089 0.80176598 0.29299501 0.603719 0.71199799 0.358583
		 0.603719 0.71199799 0.358583 0.52089 0.80176598 0.29299501 -0.53902501 0.064443998
		 0.83982098 -0.40505999 0.13041 0.90494198 0.74374998 0.55681002 0.36986399 0.603719
		 0.71199799 0.358583 -0.40505999 0.13041 0.90494198 -0.14510401 0.16287801 0.97591799
		 0.180989 0.54426402 -0.81915802 0.232426 0.600878 -0.76480299 0.43748799 0.68648797
		 -0.58080798 0.44795999 0.63682503 -0.62752402 0.232426 0.600878 -0.76480299 0.180691
		 0.72951198 -0.65966898 0.44903299 0.79225898 -0.41315299 0.43748799 0.68648797 -0.58080798
		 0.43748799 0.68648797 -0.58080798 0.44903299 0.79225898 -0.41315299 0.54635 0.83336598
		 -0.083687998 0.60775697 0.77801198 -0.159152 0.44795999 0.63682503 -0.62752402 0.43748799
		 0.68648797 -0.58080798 0.60775697 0.77801198 -0.159152 0.72178602 0.67289603 -0.161973
		 -0.43608299 0.128988 -0.89061397 -0.40486601 0.266799 -0.874587 -0.048797999 0.472177
		 -0.88015199 -0.106875 0.35120499 -0.930179 -0.40486601 0.266799 -0.874587 -0.43935201
		 0.42600799 -0.79087698 -0.121898 0.587035 -0.80033201 -0.048797999 0.472177 -0.88015199
		 -0.048797999 0.472177 -0.88015199 -0.121898 0.587035 -0.80033201 0.180691 0.72951198
		 -0.65966898 0.232426 0.600878 -0.76480299 -0.106875 0.35120499 -0.930179 -0.048797999
		 0.472177 -0.88015199 0.232426 0.600878 -0.76480299 0.180989 0.54426402 -0.81915802
		 -0.84735698 -0.227267 0.47993299 -0.76918799 -0.221946 0.59924102 -0.76035398 0.118167
		 -0.63866901 -0.71227503 -0.013813 -0.701765 -0.76918799 -0.221946 0.59924102 -0.76056099
		 -0.134085 0.63527 -0.73633999 0.33742401 -0.58647102 -0.76035398 0.118167 -0.63866901
		 -0.76035398 0.118167 -0.63866901 -0.73633999 0.33742401 -0.58647102 -0.43935201 0.42600799
		 -0.79087698 -0.40486601 0.266799 -0.874587 -0.71227503 -0.013813 -0.701765 -0.76035398
		 0.118167 -0.63866901 -0.40486601 0.266799 -0.874587 -0.43608299 0.128988 -0.89061397
		 -0.557962 -0.326159 0.76308501 -0.267279 -0.31804901 0.90961897 -0.34122699 -0.255514
		 0.90458602 -0.61753303 -0.25333601 0.74462998 -0.267279 -0.31804901 0.90961897 -0.76056099
		 -0.134085 0.63527 -0.76918799 -0.221946 0.59924102 -0.34122699 -0.255514 0.90458602
		 -0.34122699 -0.255514 0.90458602 -0.76918799 -0.221946 0.59924102 -0.84735698 -0.227267
		 0.47993299 -0.429625 -0.206164 0.87915802 -0.61753303 -0.25333601 0.74462998 -0.34122699
		 -0.255514 0.90458602 -0.429625 -0.206164 0.87915802 -0.657942 -0.206274 0.72426701
		 -0.14510401 0.16287801 0.97591799 -0.40505999 0.13041 0.90494198 -0.78349799 -0.36294499
		 0.50438201 -0.78851098 -0.303058 0.53517002 -0.40505999 0.13041 0.90494198 -0.53902501
		 0.064443998 0.83982098 -0.75916302 -0.42888501 0.48962101 -0.78349799 -0.36294499
		 0.50438201 -0.78349799 -0.36294499 0.50438201 -0.75916302 -0.42888501 0.48962101
		 -0.557962 -0.326159 0.76308501 -0.61753303 -0.25333601 0.74462998 -0.78851098 -0.303058
		 0.53517002 -0.78349799 -0.36294499 0.50438201 -0.61753303 -0.25333601 0.74462998
		 -0.657942 -0.206274 0.72426701 -0.91065902 0.36830199 0.187226 -0.93098998 0.17200699
		 0.32198101 -0.96038198 0.15111201 0.234163 -0.942541 0.33408901 -0.001207 -0.93098998
		 0.17200699 0.32198101 -0.80471301 -0.075897001 0.58879203 -0.84333497 -0.088624999
		 0.530029 -0.96038198 0.15111201 0.234163 -0.96038198 0.15111201 0.234163 -0.84333497
		 -0.088624999 0.530029 -0.87546003 -0.17058 0.45218599 -0.99041802 0.034401 0.133752
		 -0.942541 0.33408901 -0.001207 -0.96038198 0.15111201 0.234163 -0.99041802 0.034401
		 0.133752 -0.963072 0.215619 -0.161248 -0.53443903 0.83667803 0.119773 -0.53778201
		 0.82686198 0.164588 -0.31053001 0.941818 0.12864999 -0.28987601 0.95113999 0.106323
		 -0.53778201 0.82686198 0.164588 -0.57356602 0.81138003 0.112628 -0.363895 0.93144
		 0.00056000001 -0.31053001 0.941818 0.12864999 -0.31053001 0.941818 0.12864999 -0.363895
		 0.93144 0.00056000001 0 0.99755502 -0.069885001 0 0.99483103 0.101541 -0.28987601
		 0.95113999 0.106323 -0.31053001 0.941818 0.12864999 0 0.99483103 0.101541 0 0.995767
		 0.091913 -0.99298698 0.062468 0.100378 -0.95059401 0.270937 0.15154199 -0.97353202
		 0.228543 0.001985 -0.996822 0.039483 -0.069192;
	setAttr ".n[3652:3817]" -type "float3"  -0.95059401 0.270937 0.15154199 -0.86016202
		 0.47433501 0.187426 -0.887779 0.45069501 0.093395002 -0.97353202 0.228543 0.001985
		 -0.97353202 0.228543 0.001985 -0.887779 0.45069501 0.093395002 -0.90897298 0.41584799
		 0.028958 -0.98257202 0.178232 -0.052786 -0.996822 0.039483 -0.069192 -0.97353202
		 0.228543 0.001985 -0.98257202 0.178232 -0.052786 -0.98821902 -0.057645999 -0.141773
		 -0.90897298 0.41584799 0.028958 -0.887779 0.45069501 0.093395002 -0.72934502 0.66627198
		 0.15536 -0.74822998 0.656721 0.094173998 -0.887779 0.45069501 0.093395002 -0.86016202
		 0.47433501 0.187426 -0.72596598 0.66410398 0.17871401 -0.72934502 0.66627198 0.15536
		 -0.72934502 0.66627198 0.15536 -0.72596598 0.66410398 0.17871401 -0.57356602 0.81138003
		 0.112628 -0.53778201 0.82686198 0.164588 -0.74822998 0.656721 0.094173998 -0.72934502
		 0.66627198 0.15536 -0.53778201 0.82686198 0.164588 -0.53443903 0.83667803 0.119773
		 -0.98821902 -0.057645999 -0.141773 -0.87348098 -0.35147801 -0.336889 -0.65156198
		 -0.16054299 -0.741413 -0.91631502 -0.14250401 -0.374244 -0.64199501 -0.368752 -0.67220801
		 -0.56291002 -0.021615 -0.826235 -0.65156198 -0.16054299 -0.741413 -0.87348098 -0.35147801
		 -0.336889 -0.86324698 -0.096363999 -0.495498 -0.91631502 -0.14250401 -0.374244 -0.65156198
		 -0.16054299 -0.741413 -0.56291002 -0.021615 -0.826235 -0.99298698 0.062468 0.100378
		 -0.996822 0.039483 -0.069192 -0.986893 -0.113309 -0.114906 -0.99145597 -0.113483
		 0.064318001 -0.996822 0.039483 -0.069192 -0.98821902 -0.057645999 -0.141773 -0.91631502
		 -0.14250401 -0.374244 -0.986893 -0.113309 -0.114906 -0.986893 -0.113309 -0.114906
		 -0.91631502 -0.14250401 -0.374244 -0.86324698 -0.096363999 -0.495498 -0.97506398
		 -0.159545 -0.154257 -0.99145597 -0.113483 0.064318001 -0.986893 -0.113309 -0.114906
		 -0.97506398 -0.159545 -0.154257 -0.97977102 -0.192982 0.05297 -0.99298698 0.062468
		 0.100378 -0.99145597 -0.113483 0.064318001 -0.95669001 -0.14736401 0.25105599 -0.96280599
		 0.054233 0.264696 -0.99145597 -0.113483 0.064318001 -0.97977102 -0.192982 0.05297
		 -0.92761803 -0.25417101 0.27371699 -0.95669001 -0.14736401 0.25105599 -0.95669001
		 -0.14736401 0.25105599 -0.92761803 -0.25417101 0.27371699 -0.76792097 -0.368734 0.52376801
		 -0.86866403 -0.248933 0.42831701 -0.96280599 0.054233 0.264696 -0.95669001 -0.14736401
		 0.25105599 -0.86866403 -0.248933 0.42831701 -0.924941 -0.010802 0.37995699 -0.76792097
		 -0.368734 0.52376801 -0.92761803 -0.25417101 0.27371699 -0.909091 -0.28574699 0.30315301
		 -0.69912201 -0.383059 0.60373402 -0.92761803 -0.25417101 0.27371699 -0.97977102 -0.192982
		 0.05297 -0.97709298 -0.20677499 0.050344002 -0.909091 -0.28574699 0.30315301 -0.909091
		 -0.28574699 0.30315301 -0.97709298 -0.20677499 0.050344002 -0.98091602 -0.188789
		 0.046503998 -0.91152698 -0.260277 0.31839499 -0.69912201 -0.383059 0.60373402 -0.909091
		 -0.28574699 0.30315301 -0.91152698 -0.260277 0.31839499 -0.69057399 -0.34013101 0.63829398
		 -0.99017799 -0.12688699 0.058718 -0.93014997 -0.14873099 0.33570901 -0.92120802 -0.195805
		 0.336209 -0.98680502 -0.154266 0.049169999 -0.93014997 -0.14873099 0.33570901 -0.72441298
		 -0.17111 0.66779202 -0.70393699 -0.25017399 0.66474402 -0.92120802 -0.195805 0.336209
		 -0.92120802 -0.195805 0.336209 -0.70393699 -0.25017399 0.66474402 -0.69057399 -0.34013101
		 0.63829398 -0.91152698 -0.260277 0.31839499 -0.98680502 -0.154266 0.049169999 -0.92120802
		 -0.195805 0.336209 -0.91152698 -0.260277 0.31839499 -0.98091602 -0.188789 0.046503998
		 -0.89806402 -0.103885 -0.427421 -0.978486 -0.097704001 0.181713 -0.95503902 -0.12973601
		 0.266588 -0.989766 -0.13245399 -0.053091999 -0.978486 -0.097704001 0.181713 -0.81696802
		 -0.098710999 0.56817198 -0.765692 -0.128815 0.63017601 -0.95503902 -0.12973601 0.266588
		 -0.95503902 -0.12973601 0.266588 -0.765692 -0.128815 0.63017601 -0.72441298 -0.17111
		 0.66779202 -0.93014997 -0.14873099 0.33570901 -0.989766 -0.13245399 -0.053091999
		 -0.95503902 -0.12973601 0.266588 -0.93014997 -0.14873099 0.33570901 -0.99017799 -0.12688699
		 0.058718 -0.84413397 -0.075397 -0.53080398 -0.99506599 0.066908002 0.073260002 -0.989416
		 -0.040624999 0.13930701 -0.877473 -0.051440999 -0.476859 -0.99506599 0.066908002
		 0.073260002 -0.89880699 0.131264 0.41822901 -0.86356699 -0.037834998 0.50281298 -0.989416
		 -0.040624999 0.13930701 -0.989416 -0.040624999 0.13930701 -0.86356699 -0.037834998
		 0.50281298 -0.81696802 -0.098710999 0.56817198 -0.978486 -0.097704001 0.181713 -0.877473
		 -0.051440999 -0.476859 -0.989416 -0.040624999 0.13930701 -0.978486 -0.097704001 0.181713
		 -0.89806402 -0.103885 -0.427421 0.90499598 -0.036118001 -0.42388499 0.99877399 -0.022678999
		 0.044009 0.99959898 0.023177 0.016268 0.894247 -0.01383 -0.44736099 0.99877399 -0.022678999
		 0.044009 0.90376699 -0.026396999 0.42721 0.90169901 0.039205 0.43058401 0.99959898
		 0.023177 0.016268 0.99959898 0.023177 0.016268 0.90169901 0.039205 0.43058401 0.90613598
		 0.184159 0.38079101 0.992378 0.095797002 -0.077519 0.894247 -0.01383 -0.44736099
		 0.99959898 0.023177 0.016268 0.992378 0.095797002 -0.077519 0.86667299 -0.036625002
		 -0.49753001 0.84717202 -0.22944701 -0.47922099 0.99583203 -0.090186998 0.013636 0.99877602
		 -0.042107999 0.025939001 0.84923297 -0.258809 -0.46024001 0.99583203 -0.090186998
		 0.013636 0.923388 -0.037503999 0.38203201 0.90843999 0.065426998 0.41286299 0.99877602
		 -0.042107999 0.025939001 0.99877602 -0.042107999 0.025939001 0.90843999 0.065426998
		 0.41286299 0.88701302 0.18435299 0.423345 0.99938601 0.024385 -0.025163 0.84923297
		 -0.258809 -0.46024001 0.99877602 -0.042107999 0.025939001;
	setAttr ".n[3818:3983]" -type "float3"  0.99938601 0.024385 -0.025163 0.80959702
		 -0.274993 -0.51858699 -0.86735398 -0.16575401 -0.46927801 -0.861628 -0.240448 -0.44696999
		 -0.99862897 -0.0075739999 0.051798001 -0.99874502 -0.038764 0.031707998 -0.861628
		 -0.240448 -0.44696999 -0.80799401 -0.27249801 -0.52239001 -0.999134 0.038943 -0.014638
		 -0.99862897 -0.0075739999 0.051798001 -0.99862897 -0.0075739999 0.051798001 -0.999134
		 0.038943 -0.014638 -0.88083398 0.19692899 0.43052399 -0.90581602 0.096073002 0.412635
		 -0.99874502 -0.038764 0.031707998 -0.99862897 -0.0075739999 0.051798001 -0.90581602
		 0.096073002 0.412635 -0.92800301 0.0017350001 0.37256899 -0.837623 0.145586 -0.52649099
		 -0.866157 0.042502999 -0.49796101 -0.99908 -0.042199001 -0.0076069999 -0.99501598
		 -0.028755 -0.095477998 -0.866157 0.042502999 -0.49796101 -0.86735398 -0.16575401
		 -0.46927801 -0.99874502 -0.038764 0.031707998 -0.99908 -0.042199001 -0.0076069999
		 -0.99908 -0.042199001 -0.0076069999 -0.99874502 -0.038764 0.031707998 -0.92800301
		 0.0017350001 0.37256899 -0.93110102 -0.122927 0.34342399 -0.99501598 -0.028755 -0.095477998
		 -0.99908 -0.042199001 -0.0076069999 -0.93110102 -0.122927 0.34342399 -0.92303598
		 -0.215864 0.318445 -0.81526399 -0.065008 -0.57542998 -0.816558 0.10337 -0.56793302
		 -0.97844303 -0.018844999 -0.205654 -0.96349603 -0.064824 -0.259756 -0.816558 0.10337
		 -0.56793302 -0.837623 0.145586 -0.52649099 -0.99501598 -0.028755 -0.095477998 -0.97844303
		 -0.018844999 -0.205654 -0.97844303 -0.018844999 -0.205654 -0.99501598 -0.028755 -0.095477998
		 -0.92303598 -0.215864 0.318445 -0.99106598 -0.129228 0.032974999 -0.96349603 -0.064824
		 -0.259756 -0.97844303 -0.018844999 -0.205654 -0.99106598 -0.129228 0.032974999 -0.99429399
		 -0.095183 -0.048168998 -0.83603698 -0.15759499 -0.52555299 -0.821374 -0.20559999
		 -0.53204602 -0.96460801 -0.103197 -0.24265601 -0.969338 -0.033302002 -0.24346299
		 -0.821374 -0.20559999 -0.53204602 -0.81526399 -0.065008 -0.57542998 -0.96349603 -0.064824
		 -0.259756 -0.96460801 -0.103197 -0.24265601 -0.96460801 -0.103197 -0.24265601 -0.96349603
		 -0.064824 -0.259756 -0.99429399 -0.095183 -0.048168998 -0.99622601 -0.081465997 -0.029943001
		 -0.969338 -0.033302002 -0.24346299 -0.96460801 -0.103197 -0.24265601 -0.99622601
		 -0.081465997 -0.029943001 -0.99897301 -0.0023380001 -0.045240998 -0.9831 0.133393
		 -0.125385 -0.93326801 0.093447998 -0.34681299 -0.95507401 0.055181999 -0.291186 -0.99311602
		 0.077613004 -0.087727003 -0.93326801 0.093447998 -0.34681299 -0.78238797 -0.030824
		 -0.62202799 -0.81587702 -0.051034 -0.57596898 -0.95507401 0.055181999 -0.291186 -0.95507401
		 0.055181999 -0.291186 -0.81587702 -0.051034 -0.57596898 -0.83603698 -0.15759499 -0.52555299
		 -0.969338 -0.033302002 -0.24346299 -0.99311602 0.077613004 -0.087727003 -0.95507401
		 0.055181999 -0.291186 -0.969338 -0.033302002 -0.24346299 -0.99897301 -0.0023380001
		 -0.045240998 -0.78238797 -0.030824 -0.62202799 -0.93326801 0.093447998 -0.34681299
		 -0.92196703 0.15825599 -0.35345799 -0.80915302 0.02674 -0.58699 -0.93326801 0.093447998
		 -0.34681299 -0.9831 0.133393 -0.125385 -0.96403402 0.22372501 -0.143473 -0.92196703
		 0.15825599 -0.35345799 -0.92196703 0.15825599 -0.35345799 -0.96403402 0.22372501
		 -0.143473 -0.90560502 0.393033 -0.15938801 -0.88025898 0.33287799 -0.33813599 -0.80915302
		 0.02674 -0.58699 -0.92196703 0.15825599 -0.35345799 -0.88025898 0.33287799 -0.33813599
		 -0.82568598 0.19254 -0.53025502 -0.82568598 0.19254 -0.53025502 -0.88025898 0.33287799
		 -0.33813599 -0.77369601 0.54123598 -0.32932901 -0.76961398 0.42730099 -0.474457 -0.88025898
		 0.33287799 -0.33813599 -0.90560502 0.393033 -0.15938801 -0.78367698 0.59532601 -0.17730799
		 -0.77369601 0.54123598 -0.32932901 -0.77369601 0.54123598 -0.32932901 -0.78367698
		 0.59532601 -0.17730799 -0.58783799 0.78446501 -0.19763801 -0.58618701 0.740641 -0.32838401
		 -0.76961398 0.42730099 -0.474457 -0.77369601 0.54123598 -0.32932901 -0.58618701 0.740641
		 -0.32838401 -0.59851801 0.66283703 -0.44991499 -0.59851801 0.66283703 -0.44991499
		 -0.58618701 0.740641 -0.32838401 -0.31825799 0.88861603 -0.33026299 -0.33574501 0.83291
		 -0.439928 -0.58618701 0.740641 -0.32838401 -0.58783799 0.78446501 -0.19763801 -0.31618199
		 0.92333102 -0.21792001 -0.31825799 0.88861603 -0.33026299 -0.31825799 0.88861603
		 -0.33026299 -0.31618199 0.92333102 -0.21792001 0 0.97395498 -0.226742 0 0.94380498
		 -0.33050299 -0.33574501 0.83291 -0.439928 -0.31825799 0.88861603 -0.33026299 0 0.94380498
		 -0.33050299 0 0.89988798 -0.436122 -0.82568598 0.19254 -0.53025502 -0.79200798 0.01244
		 -0.61038399 -0.692725 -0.148957 -0.70565099 -0.80915302 0.02674 -0.58699 -0.79200798
		 0.01244 -0.61038399 -0.87515497 -0.078135997 -0.477492 -0.83265603 -0.236053 -0.50096202
		 -0.692725 -0.148957 -0.70565099 -0.692725 -0.148957 -0.70565099 -0.83265603 -0.236053
		 -0.50096202 -0.95929998 -0.275691 0.061145 -0.614595 -0.22590099 -0.75580502 -0.80915302
		 0.02674 -0.58699 -0.692725 -0.148957 -0.70565099 -0.614595 -0.22590099 -0.75580502
		 -0.78238797 -0.030824 -0.62202799 -0.32671899 -0.670771 0.665824 -0.30898699 -0.75701398
		 0.57572299 -0.47339299 -0.64062703 0.604563 -0.60659301 -0.5625 0.56181699 -0.23962399
		 -0.65258902 0.71882403 -0.466795 -0.482021 0.74145699 -0.47339299 -0.64062703 0.604563
		 -0.30898699 -0.75701398 0.57572299 -0.72754002 -0.32845399 0.60233098 -0.60659301
		 -0.5625 0.56181699 -0.47339299 -0.64062703 0.604563 -0.466795 -0.482021 0.74145699
		 0.692487 0.24206901 -0.67960501 0.60488802 0.077033997 -0.79257601 0.89946598 -0.30454701
		 -0.313389 0.78260499 -0.28944501 -0.55113697 0.60488802 0.077033997 -0.79257601 0.791493
		 0.35754001 -0.49568501 0.99129999 0.025583999 -0.129114 0.89946598 -0.30454701 -0.313389;
	setAttr ".n[3984:4149]" -type "float3"  0.89946598 -0.30454701 -0.313389 0.99129999
		 0.025583999 -0.129114 0.97490001 -0.145713 -0.16834 0.94139302 -0.27017 -0.201959
		 0.78260499 -0.28944501 -0.55113697 0.89946598 -0.30454701 -0.313389 0.94139302 -0.27017
		 -0.201959 0.82164699 -0.46653399 -0.32747799 0.791493 0.35754001 -0.49568501 0.60488802
		 0.077033997 -0.79257601 0.111165 0.53286397 -0.83886701 0.26282799 0.76782298 -0.58426899
		 0.60488802 0.077033997 -0.79257601 0.692487 0.24206901 -0.67960501 0.29020101 0.42949
		 -0.85517401 0.111165 0.53286397 -0.83886701 0.111165 0.53286397 -0.83886701 0.29020101
		 0.42949 -0.85517401 3.0000001e-06 0.48648801 -0.87368798 1e-06 0.60078698 -0.79940999
		 0.26282799 0.76782298 -0.58426899 0.111165 0.53286397 -0.83886701 1e-06 0.60078698
		 -0.79940999 0 0.76528299 -0.64369398 0.82164699 -0.46653399 -0.32747799 0.94139302
		 -0.27017 -0.201959 0.88856602 -0.44142699 -0.124871 0.77489901 -0.55574602 -0.301128
		 0.94139302 -0.27017 -0.201959 0.97490001 -0.145713 -0.16834 0.90926701 -0.398592
		 -0.119825 0.88856602 -0.44142699 -0.124871 0.88856602 -0.44142699 -0.124871 0.90926701
		 -0.398592 -0.119825 0.74702603 -0.66083801 -0.072420001 0.73820698 -0.67214698 -0.057178002
		 0.77489901 -0.55574602 -0.301128 0.88856602 -0.44142699 -0.124871 0.73820698 -0.67214698
		 -0.057178002 0.72764701 -0.64916301 -0.221624 0.72764701 -0.64916301 -0.221624 0.73820698
		 -0.67214698 -0.057178002 0.39555001 -0.918262 0.018315 0.54323399 -0.795834 -0.267479
		 0.73820698 -0.67214698 -0.057178002 0.74702603 -0.66083801 -0.072420001 0.38483101
		 -0.92265201 -0.024870999 0.39555001 -0.918262 0.018315 0.39555001 -0.918262 0.018315
		 0.38483101 -0.92265201 -0.024870999 0 -1 -0.00082199997 0 -0.99908298 0.042819999
		 0.54323399 -0.795834 -0.267479 0.39555001 -0.918262 0.018315 0 -0.99908298 0.042819999
		 1e-06 -0.86343998 -0.50445098 3.0000001e-06 0.48648801 -0.87368798 0.29020101 0.42949
		 -0.85517401 0.445627 -0.31496799 -0.83798099 4e-06 -0.233596 -0.97233403 0.29020101
		 0.42949 -0.85517401 0.692487 0.24206901 -0.67960501 0.78260499 -0.28944501 -0.55113697
		 0.445627 -0.31496799 -0.83798099 0.445627 -0.31496799 -0.83798099 0.78260499 -0.28944501
		 -0.55113697 0.82164699 -0.46653399 -0.32747799 0.34614101 -0.76726401 -0.5399 4e-06
		 -0.233596 -0.97233403 0.445627 -0.31496799 -0.83798099 0.34614101 -0.76726401 -0.5399
		 1e-06 -0.822442 -0.56884903 0 0.72630101 -0.68737698 0.261648 0.70947999 -0.65435302
		 0.107854 0.52237499 -0.84586799 0 0.60124803 -0.79906303 0.261648 0.70947999 -0.65435302
		 0.58711398 0.43230799 -0.684403 0.64501399 0.26812899 -0.71558601 0.107854 0.52237499
		 -0.84586799 0.107854 0.52237499 -0.84586799 0.64501399 0.26812899 -0.71558601 0.71933401
		 0.44422999 -0.53405797 0.39289001 0.60226798 -0.69491702 0 0.60124803 -0.79906303
		 0.107854 0.52237499 -0.84586799 0.39289001 0.60226798 -0.69491702 0 0.66925597 -0.74303198
		 0.58711398 0.43230799 -0.684403 0.90066499 0.123667 -0.41654399 0.93188602 0.153028
		 -0.328895 0.64501399 0.26812899 -0.71558601 0.90066499 0.123667 -0.41654399 0.87515497
		 -0.078135997 -0.477492 0.99481398 0.072486997 -0.071354002 0.93188602 0.153028 -0.328895
		 0.93188602 0.153028 -0.328895 0.99481398 0.072486997 -0.071354002 0.98965299 0.118983
		 0.080182001 0.92546499 0.28264901 -0.25223601 0.64501399 0.26812899 -0.71558601 0.93188602
		 0.153028 -0.328895 0.92546499 0.28264901 -0.25223601 0.71933401 0.44422999 -0.53405797
		 0.95929998 -0.275691 0.061145 0.95707899 -0.016527001 0.28935701 0.99041599 -0.059774999
		 0.124509 0.83265603 -0.23605201 -0.50096297 0.98965299 0.118983 0.080182001 0.99481398
		 0.072486997 -0.071354002 0.99041599 -0.059774999 0.124509 0.95707899 -0.016527001
		 0.28935701 0.87515497 -0.078135997 -0.477492 0.83265603 -0.23605201 -0.50096297 0.99041599
		 -0.059774999 0.124509 0.99481398 0.072486997 -0.071354002 1e-06 -0.822442 -0.56884903
		 0.34614101 -0.76726401 -0.5399 0.53084803 -0.58604097 -0.61217397 0 -0.62686801 -0.77912599
		 0.34614101 -0.76726401 -0.5399 0.82164699 -0.46653399 -0.32747799 0.77489901 -0.55574602
		 -0.301128 0.53084803 -0.58604097 -0.61217397 0.53084803 -0.58604097 -0.61217397 0.77489901
		 -0.55574602 -0.301128 0.72764701 -0.64916301 -0.221624 0.54323399 -0.795834 -0.267479
		 0 -0.62686801 -0.77912599 0.53084803 -0.58604097 -0.61217397 0.54323399 -0.795834
		 -0.267479 1e-06 -0.86343998 -0.50445098 0.79714799 0.136462 -0.58816099 0.98472297
		 0.121184 -0.125043 0.95184302 0.13636 -0.274593 0.77378303 0.086638004 -0.62749797
		 0.98472297 0.121184 -0.125043 0.992347 0.059737001 0.108066 0.98413998 0.087527998
		 0.15429901 0.95184302 0.13636 -0.274593 0.95184302 0.13636 -0.274593 0.98413998 0.087527998
		 0.15429901 0.98163903 0.00041000001 0.190749 0.96370798 0.013964 -0.26659399 0.77378303
		 0.086638004 -0.62749797 0.95184302 0.13636 -0.274593 0.96370798 0.013964 -0.26659399
		 0.828982 0.25389701 -0.49832299 -4.9999999e-06 0.248429 -0.96864998 0.42929301 0.37046099
		 -0.82369101 0.36566401 0.22660699 -0.90274 -5.6000001e-05 0.33703101 -0.94149297
		 0.42929301 0.37046099 -0.82369101 0.79714799 0.136462 -0.58816099 0.77378303 0.086638004
		 -0.62749797 0.36566401 0.22660699 -0.90274 0.36566401 0.22660699 -0.90274 0.77378303
		 0.086638004 -0.62749797 0.828982 0.25389701 -0.49832299 0.53497499 0.40460801 -0.74168402
		 -5.6000001e-05 0.33703101 -0.94149297 0.36566401 0.22660699 -0.90274 0.53497499 0.40460801
		 -0.74168402 -3.5000001e-05 0.48168001 -0.87634701 0.68589503 0.017690999 0.72748601
		 0.26325601 -0.121218 0.95708001;
	setAttr ".n[4150:4315]" -type "float3"  0.25982901 -0.22091199 0.94004601 0.79036099
		 -0.25151101 0.55863303 0.26325601 -0.121218 0.95708001 0 -0.15862601 0.98733902 0
		 -0.244362 0.969684 0.25982901 -0.22091199 0.94004601 0.25982901 -0.22091199 0.94004601
		 0 -0.244362 0.969684 0 -0.57905197 0.81528997 0.33915401 -0.39234799 0.85500699 0.79036099
		 -0.25151101 0.55863303 0.25982901 -0.22091199 0.94004601 0.33915401 -0.39234799 0.85500699
		 0.71736401 -0.44402301 0.53687298 0.71736401 -0.44402301 0.53687298 0.95704502 -0.20044
		 0.20949601 0.95710897 0.057482 0.28397 0.79036099 -0.25151101 0.55863303 0.95704502
		 -0.20044 0.20949601 0.98163903 0.00041000001 0.190749 0.98413998 0.087527998 0.15429901
		 0.95710897 0.057482 0.28397 0.95710897 0.057482 0.28397 0.98413998 0.087527998 0.15429901
		 0.992347 0.059737001 0.108066 0.93077898 0.074879996 0.357831 0.79036099 -0.25151101
		 0.55863303 0.95710897 0.057482 0.28397 0.93077898 0.074879996 0.357831 0.68589503
		 0.017690999 0.72748601 0 0.66925597 -0.74303198 0.39289001 0.60226798 -0.69491702
		 0.45877099 0.55612499 -0.69300401 0 0.48634499 -0.87376702 0.39289001 0.60226798
		 -0.69491702 0.71933401 0.44422999 -0.53405797 0.75907397 0.43235201 -0.48670101 0.45877099
		 0.55612499 -0.69300401 0.45877099 0.55612499 -0.69300401 0.75907397 0.43235201 -0.48670101
		 0.79714799 0.136462 -0.58816099 0.42929301 0.37046099 -0.82369101 0 0.48634499 -0.87376702
		 0.45877099 0.55612499 -0.69300401 0.42929301 0.37046099 -0.82369101 -4.9999999e-06
		 0.248429 -0.96864998 0.95929998 -0.275691 0.061145 0.36187601 -0.174505 0.915748
		 0.29790801 -0.032173999 0.95405197 0.71262699 -0.020804999 0.701235 0.36187601 -0.174505
		 0.915748 0 -0.106568 0.99430603 0 -0.034632001 0.99940002 0.29790801 -0.032173999
		 0.95405197 0.29790801 -0.032173999 0.95405197 0 -0.034632001 0.99940002 0 -0.15862601
		 0.98733902 0.26325601 -0.121218 0.95708001 0.71262699 -0.020804999 0.701235 0.29790801
		 -0.032173999 0.95405197 0.26325601 -0.121218 0.95708001 0.68589503 0.017690999 0.72748601
		 0.68589503 0.017690999 0.72748601 0.93077898 0.074879996 0.357831 0.930507 0.0060549998
		 0.36622399 0.71262699 -0.020804999 0.701235 0.93077898 0.074879996 0.357831 0.992347
		 0.059737001 0.108066 0.98992199 0.078682996 0.117745 0.930507 0.0060549998 0.36622399
		 0.930507 0.0060549998 0.36622399 0.98992199 0.078682996 0.117745 0.98965299 0.118983
		 0.080182001 0.95707899 -0.016527001 0.28935701 0.71262699 -0.020804999 0.701235 0.930507
		 0.0060549998 0.36622399 0.95707899 -0.016527001 0.28935701 0.95929998 -0.275691 0.061145
		 0.71933401 0.44422999 -0.53405797 0.92546499 0.28264901 -0.25223601 0.96063101 0.234173
		 -0.14950401 0.75907397 0.43235201 -0.48670101 0.92546499 0.28264901 -0.25223601 0.98965299
		 0.118983 0.080182001 0.98992199 0.078682996 0.117745 0.96063101 0.234173 -0.14950401
		 0.96063101 0.234173 -0.14950401 0.98992199 0.078682996 0.117745 0.992347 0.059737001
		 0.108066 0.98472297 0.121184 -0.125043 0.75907397 0.43235201 -0.48670101 0.96063101
		 0.234173 -0.14950401 0.98472297 0.121184 -0.125043 0.79714799 0.136462 -0.58816099
		 0 -0.95299 0.30300301 0 -0.99999899 0.00159 0.26978701 -0.96272999 0.019138001 0.30923501
		 -0.90526599 0.29132101 0 -0.99999899 0.00159 0 -0.996149 -0.087672003 0.25079 -0.96348
		 -0.093865 0.26978701 -0.96272999 0.019138001 0.26978701 -0.96272999 0.019138001 0.25079
		 -0.96348 -0.093865 0.036775 -0.91928703 -0.39186701 -0.161578 -0.98683703 -0.006695
		 0.30923501 -0.90526599 0.29132101 0.26978701 -0.96272999 0.019138001 -0.161578 -0.98683703
		 -0.006695 0.0068910001 -0.924061 0.382182 0.57356602 0.81138003 0.112627 0.363895
		 0.93144 0.00056000001 0.44047901 0.87419999 -0.204338 0.64481699 0.76432902 -0.0034020001
		 0.363895 0.93144 0.00056000001 0 0.99755502 -0.069885001 0 0.943286 -0.33198199 0.44047901
		 0.87419999 -0.204338 0.44047901 0.87419999 -0.204338 0 0.943286 -0.33198199 0 0.891168
		 -0.45367399 0.49550599 0.80302 -0.33110899 0.64481699 0.76432902 -0.0034020001 0.44047901
		 0.87419999 -0.204338 0.49550599 0.80302 -0.33110899 0.71319598 0.68563598 -0.145789
		 0.86019099 0.47421801 0.18759 0.72597599 0.66408002 0.178762 0.76407599 0.627855
		 0.148279 0.85754001 0.45640701 0.237312 0.72597599 0.66408002 0.178762 0.57356602
		 0.81138003 0.112627 0.64481699 0.76432902 -0.0034020001 0.76407599 0.627855 0.148279
		 0.76407599 0.627855 0.148279 0.64481699 0.76432902 -0.0034020001 0.71319598 0.68563598
		 -0.145789 0.82978398 0.55793601 0.012913 0.85754001 0.45640701 0.237312 0.76407599
		 0.627855 0.148279 0.82978398 0.55793601 0.012913 0.910734 0.368132 0.187194 0.86019099
		 0.47421801 0.18759 0.85754001 0.45640701 0.237312 0.92291898 0.27083901 0.27361801
		 0.95060998 0.27078199 0.151714 0.85754001 0.45640701 0.237312 0.910734 0.368132 0.187194
		 0.92075098 0.218887 0.32296401 0.92291898 0.27083901 0.27361801 0.92291898 0.27083901
		 0.27361801 0.92075098 0.218887 0.32296401 0.92511803 -0.010965 0.37952101 0.96294701
		 0.054056 0.26421699 0.95060998 0.27078199 0.151714 0.92291898 0.27083901 0.27361801
		 0.96294701 0.054056 0.26421699 0.99300098 0.062385 0.100287 0.92511803 -0.010965
		 0.37952101 0.86510098 -0.15683199 0.47644901 0.73023802 -0.42074299 0.53826398 0.86899298
		 -0.249063 0.42757401 0.86510098 -0.15683199 0.47644901 0.72726899 -0.32848999 0.60263902
		 0.60620201 -0.56246197 0.56227797 0.73023802 -0.42074299 0.53826398;
	setAttr ".n[4316:4481]" -type "float3"  0.73023802 -0.42074299 0.53826398 0.60620201
		 -0.56246197 0.56227797 0.32660401 -0.670672 0.66597903 0.543652 -0.513111 0.66419798
		 0.86899298 -0.249063 0.42757401 0.73023802 -0.42074299 0.53826398 0.543652 -0.513111
		 0.66419798 0.76868302 -0.36864901 0.522708 0.32660401 -0.670672 0.66597903 0.30942699
		 -0.75673002 0.57586002 0.14050999 -0.82788199 0.54301798 -0.019521 -0.77579302 0.63068497
		 0.23996399 -0.65250599 0.718786 0.16517299 -0.83112198 0.53099298 0.14050999 -0.82788199
		 0.54301798 0.30942699 -0.75673002 0.57586002 0.0068910001 -0.924061 0.382182 -0.019521
		 -0.77579302 0.63068497 0.14050999 -0.82788199 0.54301798 0.16517299 -0.83112198 0.53099298
		 0.23996399 -0.65250599 0.718786 0.130428 -0.69351703 0.70853603 0.204703 -0.81050903
		 0.54879099 0.16517299 -0.83112198 0.53099298 0.130428 -0.69351703 0.70853603 0 -0.702151
		 0.71202803 0 -0.80866897 0.588265 0.204703 -0.81050903 0.54879099 0.204703 -0.81050903
		 0.54879099 0 -0.80866897 0.588265 0 -0.95299 0.30300301 0.30923501 -0.90526599 0.29132101
		 0.16517299 -0.83112198 0.53099298 0.204703 -0.81050903 0.54879099 0.30923501 -0.90526599
		 0.29132101 0.0068910001 -0.924061 0.382182 0.607467 0.79214799 -0.059037 0.32918599
		 0.941827 -0.067809001 0.32108399 0.94676602 -0.023232 0.614254 0.78809398 -0.039994001
		 0.32918599 0.941827 -0.067809001 0 0.99764001 -0.068668999 0 0.99994302 -0.010666
		 0.32108399 0.94676602 -0.023232 0.32108399 0.94676602 -0.023232 0 0.99994302 -0.010666
		 0 0.99989998 0.014126 0.304299 0.95257598 -0.001389 0.614254 0.78809398 -0.039994001
		 0.32108399 0.94676602 -0.023232 0.304299 0.95257598 -0.001389 0.61291099 0.78961599
		 -0.029099001 0.92398697 0.382424 0.00039199999 0.80479902 0.59252697 -0.0348 0.82148099
		 0.569305 -0.032584 0.93711901 0.34898701 -0.0041490002 0.80479902 0.59252697 -0.0348
		 0.607467 0.79214799 -0.059037 0.614254 0.78809398 -0.039994001 0.82148099 0.569305
		 -0.032584 0.82148099 0.569305 -0.032584 0.614254 0.78809398 -0.039994001 0.61291099
		 0.78961599 -0.029099001 0.83278102 0.55217999 -0.039662 0.93711901 0.34898701 -0.0041490002
		 0.82148099 0.569305 -0.032584 0.83278102 0.55217999 -0.039662 0.947043 0.31957099
		 -0.031351 0.947043 0.31957099 -0.031351 0.99298197 0.116246 -0.021761 0.98839903
		 0.148122 0.033576 0.93711901 0.34898701 -0.0041490002 0.99298197 0.116246 -0.021761
		 0.99164897 -0.120628 -0.045632001 0.99422199 -0.088745996 0.060392 0.98839903 0.148122
		 0.033576 0.98839903 0.148122 0.033576 0.99422199 -0.088745996 0.060392 0.987037 0.027547
		 0.15811101 0.97986197 0.193404 0.049656998 0.93711901 0.34898701 -0.0041490002 0.98839903
		 0.148122 0.033576 0.97986197 0.193404 0.049656998 0.92398697 0.382424 0.00039199999
		 0.99164897 -0.120628 -0.045632001 0.87903798 -0.455457 -0.140898 0.88184398 -0.47081301
		 0.026208 0.99422199 -0.088745996 0.060392 0.87903798 -0.455457 -0.140898 0.67102498
		 -0.69697398 -0.25288799 0.650298 -0.75492501 -0.084853999 0.88184398 -0.47081301
		 0.026208 0.88184398 -0.47081301 0.026208 0.650298 -0.75492501 -0.084853999 0.37896299
		 -0.45764399 0.804331 0.81014699 -0.29016799 0.50937599 0.99422199 -0.088745996 0.060392
		 0.88184398 -0.47081301 0.026208 0.81014699 -0.29016799 0.50937599 0.987037 0.027547
		 0.15811101 -0.443535 -0.882451 0.156707 -0.087310001 -0.67771697 0.73012102 0.45394999
		 -0.88245702 -0.123288 0.315873 -0.93813097 -0.14189699 -0.087310001 -0.67771697 0.73012102
		 0.37896299 -0.45764399 0.804331 0.650298 -0.75492501 -0.084853999 0.45394999 -0.88245702
		 -0.123288 0.45394999 -0.88245702 -0.123288 0.650298 -0.75492501 -0.084853999 0.67102498
		 -0.69697398 -0.25288799 0.49840501 -0.80782199 -0.314668 0.315873 -0.93813097 -0.14189699
		 0.45394999 -0.88245702 -0.123288 0.49840501 -0.80782199 -0.314668 0.37210101 -0.87035203
		 -0.32253599 0 -0.98900902 -0.147853 0.103171 -0.987661 -0.117821 0.21537501 -0.96175098
		 -0.16926099 0 -0.984276 -0.17663901 0.103171 -0.987661 -0.117821 -0.443535 -0.882451
		 0.156707 0.315873 -0.93813097 -0.14189699 0.21537501 -0.96175098 -0.16926099 0.21537501
		 -0.96175098 -0.16926099 0.315873 -0.93813097 -0.14189699 0.37210101 -0.87035203 -0.32253599
		 0.229829 -0.92461801 -0.30374399 0 -0.984276 -0.17663901 0.21537501 -0.96175098 -0.16926099
		 0.229829 -0.92461801 -0.30374399 0 -0.95647502 -0.29181501 0.58783698 0.78446501
		 -0.197639 0.31618199 0.92333102 -0.217921 0.32450899 0.93703699 -0.129053 0.59680599
		 0.79576701 -0.102847 0.31618199 0.92333102 -0.217921 0 0.97395498 -0.226742 0 0.99013799
		 -0.140093 0.32450899 0.93703699 -0.129053 0.32450899 0.93703699 -0.129053 0 0.99013799
		 -0.140093 0 0.99764001 -0.068668999 0.32918599 0.941827 -0.067809001 0.59680599 0.79576701
		 -0.102847 0.32450899 0.93703699 -0.129053 0.32918599 0.941827 -0.067809001 0.607467
		 0.79214799 -0.059037 0.90560502 0.393033 -0.15938801 0.78367698 0.59532601 -0.17730799
		 0.79205799 0.606157 -0.072237998 0.91476798 0.40192601 -0.040684 0.78367698 0.59532601
		 -0.17730799 0.58783698 0.78446501 -0.197639 0.59680599 0.79576701 -0.102847 0.79205799
		 0.606157 -0.072237998 0.79205799 0.606157 -0.072237998 0.59680599 0.79576701 -0.102847
		 0.607467 0.79214799 -0.059037 0.80479902 0.59252697 -0.0348 0.91476798 0.40192601
		 -0.040684 0.79205799 0.606157 -0.072237998 0.80479902 0.59252697 -0.0348 0.92398697
		 0.382424 0.00039199999 0.9831 0.133393 -0.125385 0.96403402 0.22372501 -0.143474;
	setAttr ".n[4482:4647]" -type "float3"  0.97396302 0.22668301 -0.0033539999 0.99115598
		 0.125044 0.044425 0.96403402 0.22372501 -0.143474 0.90560502 0.393033 -0.15938801
		 0.91476798 0.40192601 -0.040684 0.97396302 0.22668301 -0.0033539999 0.97396302 0.22668301
		 -0.0033539999 0.91476798 0.40192601 -0.040684 0.92398697 0.382424 0.00039199999 0.97986197
		 0.193404 0.049656998 0.99115598 0.125044 0.044425 0.97396302 0.22668301 -0.0033539999
		 0.97986197 0.193404 0.049656998 0.987037 0.027547 0.15811101 -0.443535 -0.882451
		 0.156707 0.103171 -0.987661 -0.117821 -0.001086 -0.99018198 -0.139778 -0.61590397
		 -0.78523898 -0.063740999 0.103171 -0.987661 -0.117821 0 -0.98900902 -0.147853 0 -0.98769301
		 -0.156408 -0.001086 -0.99018198 -0.139778 -0.001086 -0.99018198 -0.139778 0 -0.98769301
		 -0.156408 0 -0.97754002 -0.210752 -0.01124 -0.97081101 -0.239581 -0.61590397 -0.78523898
		 -0.063740999 -0.001086 -0.99018198 -0.139778 -0.01124 -0.97081101 -0.239581 -0.466196
		 -0.82968199 -0.30706701 0.80799401 -0.27249801 -0.52239001 0.71878701 -0.34947801
		 -0.601008 0.39465299 -0.59001601 -0.70436502 0.47271499 -0.461 -0.75101298 0.71878701
		 -0.34947801 -0.601008 0.67235601 -0.54035199 -0.50592202 0.22024 -0.84897399 -0.480351
		 0.39465299 -0.59001601 -0.70436502 0.39465299 -0.59001601 -0.70436502 0.22024 -0.84897399
		 -0.480351 0.00358 -0.89402699 -0.44800001 0.014247 -0.6681 -0.743936 0.47271499 -0.461
		 -0.75101298 0.39465299 -0.59001601 -0.70436502 0.014247 -0.6681 -0.743936 0.021051999
		 -0.530662 -0.84732199 0.021051999 -0.530662 -0.84732199 0.014247 -0.6681 -0.743936
		 -0.37386799 -0.60361701 -0.70418 -0.444455 -0.46952099 -0.762896 0.014247 -0.6681
		 -0.743936 0.00358 -0.89402699 -0.44800001 -0.214577 -0.85363501 -0.474621 -0.37386799
		 -0.60361701 -0.70418 -0.37386799 -0.60361701 -0.70418 -0.214577 -0.85363501 -0.474621
		 -0.68844002 -0.52883798 -0.49636701 -0.739806 -0.34402099 -0.57821798 -0.444455 -0.46952099
		 -0.762896 -0.37386799 -0.60361701 -0.70418 -0.739806 -0.34402099 -0.57821798 -0.80959702
		 -0.27499199 -0.51858699 -0.82716697 0.54701602 0.128719 -0.86789799 0.382687 0.316708
		 -0.97672099 0.087474003 -0.195868 -0.95651102 0.120681 -0.26556101 -0.86789799 0.382687
		 0.316708 -0.88701302 0.18435299 0.423345 -0.99938601 0.024385 -0.025163 -0.97672099
		 0.087474003 -0.195868 -0.97672099 0.087474003 -0.195868 -0.99938601 0.024385 -0.025163
		 -0.80959702 -0.27499199 -0.51858699 -0.739806 -0.34402099 -0.57821798 -0.95651102
		 0.120681 -0.26556101 -0.97672099 0.087474003 -0.195868 -0.739806 -0.34402099 -0.57821798
		 -0.68844002 -0.52883798 -0.49636701 0 0.37454599 0.92720801 -0.41017199 0.356226
		 0.83956099 -0.43790701 -0.030965 0.89848697 0 -0.052453 0.99862301 -0.41017199 0.356226
		 0.83956099 -0.65513599 0.292826 0.696455 -0.728791 0.056430001 0.68240702 -0.43790701
		 -0.030965 0.89848697 -0.43790701 -0.030965 0.89848697 -0.728791 0.056430001 0.68240702
		 -0.61857599 -0.53210998 0.57812101 -0.30695099 -0.74711698 0.58957398 0 -0.052453
		 0.99862301 -0.43790701 -0.030965 0.89848697 -0.30695099 -0.74711698 0.58957398 -1e-06
		 -0.77154797 0.636172 0.655137 0.292826 0.69645399 0.410171 0.35622701 0.83956099
		 0.43790701 -0.030966001 0.89848697 0.728791 0.056428999 0.68240702 0.410171 0.35622701
		 0.83956099 0 0.37454599 0.92720801 0 -0.052453 0.99862301 0.43790701 -0.030966001
		 0.89848697 0.43790701 -0.030966001 0.89848697 0 -0.052453 0.99862301 -1e-06 -0.77154797
		 0.636172 0.30695099 -0.74711698 0.58957398 0.728791 0.056428999 0.68240702 0.43790701
		 -0.030966001 0.89848697 0.30695099 -0.74711698 0.58957398 0.61857599 -0.53210998
		 0.57811999 -0.68844002 -0.52883798 -0.49636701 -0.214577 -0.85363501 -0.474621 -0.069914997
		 -0.987737 -0.139595 -0.69053 -0.682432 -0.23969799 -0.214577 -0.85363501 -0.474621
		 0.00358 -0.89402699 -0.44800001 0.000186 -0.99371397 -0.111949 -0.069914997 -0.987737
		 -0.139595 -0.069914997 -0.987737 -0.139595 0.000186 -0.99371397 -0.111949 0 -1 0
		 -0.038492002 -0.99925297 -0.0035039999 -0.69053 -0.682432 -0.23969799 -0.069914997
		 -0.987737 -0.139595 -0.038492002 -0.99925297 -0.0035039999 -0.73721999 -0.67547798
		 0.015389 0.027753999 0.040325999 0.99880099 0.0088769998 0.20186201 0.97937399 0.60952401
		 0.170863 0.77413601 0.66040701 0.033505999 0.75015998 0.0088769998 0.20186201 0.97937399
		 0.013127 0.292716 0.95611 0.545295 0.270827 0.79328799 0.60952401 0.170863 0.77413601
		 0.60952401 0.170863 0.77413601 0.545295 0.270827 0.79328799 0.88083398 0.19692899
		 0.43052399 0.90581602 0.096073002 0.41263399 0.66040701 0.033505999 0.75015998 0.60952401
		 0.170863 0.77413601 0.90581602 0.096073002 0.41263399 0.92800301 0.0017350001 0.37256899
		 -0.923388 -0.037503999 0.38203201 -0.90843999 0.065426998 0.41286299 -0.59158301
		 0.15629201 0.79095101 -0.61801201 0.0073790001 0.786134 -0.90843999 0.065426998 0.41286299
		 -0.88701302 0.18435299 0.423345 -0.53162199 0.274829 0.801153 -0.59158301 0.15629201
		 0.79095101 -0.59158301 0.15629201 0.79095101 -0.53162199 0.274829 0.801153 0.013127
		 0.292716 0.95611 0.0088769998 0.20186201 0.97937399 -0.61801201 0.0073790001 0.786134
		 -0.59158301 0.15629201 0.79095101 0.0088769998 0.20186201 0.97937399 0.027753999
		 0.040325999 0.99880099 0.040782999 -0.263491 -0.96380001 0.026067 -0.49362299 -0.869286
		 -0.49965799 -0.41730699 -0.759076 -0.53898299 -0.31562799 -0.78094602 0.026067 -0.49362299
		 -0.869286 0.021051999 -0.530662 -0.84732199 -0.444455 -0.46952099 -0.762896 -0.49965799
		 -0.41730699 -0.759076;
	setAttr ".n[4648:4813]" -type "float3"  -0.49965799 -0.41730699 -0.759076 -0.444455
		 -0.46952099 -0.762896 -0.80959702 -0.27499199 -0.51858699 -0.84923297 -0.258809 -0.46024001
		 -0.53898299 -0.31562799 -0.78094602 -0.49965799 -0.41730699 -0.759076 -0.84923297
		 -0.258809 -0.46024001 -0.84717202 -0.22944701 -0.47922099 0.86735398 -0.16575401
		 -0.46927801 0.861628 -0.240448 -0.44696999 0.53198302 -0.40472499 -0.74376798 0.58960098
		 -0.276885 -0.758753 0.861628 -0.240448 -0.44696999 0.80799401 -0.27249801 -0.52239001
		 0.47271499 -0.461 -0.75101298 0.53198302 -0.40472499 -0.74376798 0.53198302 -0.40472499
		 -0.74376798 0.47271499 -0.461 -0.75101298 0.021051999 -0.530662 -0.84732199 0.026067
		 -0.49362299 -0.869286 0.58960098 -0.276885 -0.758753 0.53198302 -0.40472499 -0.74376798
		 0.026067 -0.49362299 -0.869286 0.040782999 -0.263491 -0.96380001 0.081698 -0.415638
		 0.90585297 0.071639001 -0.231213 0.97026199 0.67055899 -0.182695 0.71900898 0.60035402
		 -0.34264201 0.72261399 0.071639001 -0.231213 0.97026199 0.027753999 0.040325999 0.99880099
		 0.66040701 0.033505999 0.75015998 0.67055899 -0.182695 0.71900898 0.67055899 -0.182695
		 0.71900898 0.66040701 0.033505999 0.75015998 0.92800301 0.0017350001 0.37256899 0.93110102
		 -0.122927 0.34342399 0.60035402 -0.34264201 0.72261399 0.67055899 -0.182695 0.71900898
		 0.93110102 -0.122927 0.34342399 0.92303598 -0.215863 0.318445 -0.88066697 -0.25509399
		 0.39919099 -0.90585703 -0.16200399 0.39138001 -0.57873201 -0.218693 0.78564799 -0.51105499
		 -0.38559899 0.76820302 -0.90585703 -0.16200399 0.39138001 -0.923388 -0.037503999
		 0.38203201 -0.61801201 0.0073790001 0.786134 -0.57873201 -0.218693 0.78564799 -0.57873201
		 -0.218693 0.78564799 -0.61801201 0.0073790001 0.786134 0.027753999 0.040325999 0.99880099
		 0.071639001 -0.231213 0.97026199 -0.51105499 -0.38559899 0.76820302 -0.57873201 -0.218693
		 0.78564799 0.071639001 -0.231213 0.97026199 0.081698 -0.415638 0.90585297 -0.923388
		 -0.037503999 0.38203201 -0.90585703 -0.16200399 0.39138001 -0.99271703 -0.116726
		 0.029803 -0.99583203 -0.090186998 0.013635 -0.90585703 -0.16200399 0.39138001 -0.88066697
		 -0.25509399 0.39919099 -0.99318498 -0.111315 0.034529001 -0.99271703 -0.116726 0.029803
		 -0.99271703 -0.116726 0.029803 -0.99318498 -0.111315 0.034529001 -0.86125398 0.074417002
		 -0.50269699 -0.850155 -0.064094998 -0.52261698 -0.99583203 -0.090186998 0.013635
		 -0.99271703 -0.116726 0.029803 -0.850155 -0.064094998 -0.52261698 -0.84717202 -0.22944701
		 -0.47922099 0.034542002 0.27811599 -0.95992601 0.069870003 0.15558299 -0.985349 -0.44806799
		 0.062068 -0.89184201 -0.364225 0.242413 -0.89920902 0.069870003 0.15558299 -0.985349
		 0.040782999 -0.263491 -0.96380001 -0.53898299 -0.31562799 -0.78094602 -0.44806799
		 0.062068 -0.89184201 -0.44806799 0.062068 -0.89184201 -0.53898299 -0.31562799 -0.78094602
		 -0.84717202 -0.22944701 -0.47922099 -0.850155 -0.064094998 -0.52261698 -0.364225
		 0.242413 -0.89920902 -0.44806799 0.062068 -0.89184201 -0.850155 -0.064094998 -0.52261698
		 -0.86125398 0.074417002 -0.50269699 0.837623 0.145586 -0.52649099 0.866157 0.042502999
		 -0.49796101 0.53430301 0.108717 -0.83827299 0.44090301 0.26015401 -0.859025 0.866157
		 0.042502999 -0.49796101 0.86735398 -0.16575401 -0.46927801 0.58960098 -0.276885 -0.758753
		 0.53430301 0.108717 -0.83827299 0.53430301 0.108717 -0.83827299 0.58960098 -0.276885
		 -0.758753 0.040782999 -0.263491 -0.96380001 0.069870003 0.15558299 -0.985349 0.44090301
		 0.26015401 -0.859025 0.53430301 0.108717 -0.83827299 0.069870003 0.15558299 -0.985349
		 0.034542002 0.27811599 -0.95992601 0.133568 -0.56080902 0.81709999 0.076991998 -0.49671999
		 0.86448902 0.509027 -0.42197299 0.75022 0.48093799 -0.46541101 0.743029 0.076991998
		 -0.49671999 0.86448902 0.081698 -0.415638 0.90585297 0.60035402 -0.34264201 0.72261399
		 0.509027 -0.42197299 0.75022 0.509027 -0.42197299 0.75022 0.60035402 -0.34264201
		 0.72261399 0.92303598 -0.215863 0.318445 0.74207097 -0.34966701 0.571895 0.48093799
		 -0.46541101 0.743029 0.509027 -0.42197299 0.75022 0.74207097 -0.34966701 0.571895
		 0.72645998 -0.35105401 0.59077698 -0.87272 -0.34500599 0.34544301 -0.874156 -0.29990801
		 0.38197601 -0.45604199 -0.47360301 0.75347698 -0.36598399 -0.56877702 0.736579 -0.874156
		 -0.29990801 0.38197601 -0.88066697 -0.25509399 0.39919099 -0.51105499 -0.38559899
		 0.76820302 -0.45604199 -0.47360301 0.75347698 -0.45604199 -0.47360301 0.75347698
		 -0.51105499 -0.38559899 0.76820302 0.081698 -0.415638 0.90585297 0.076991998 -0.49671999
		 0.86448902 -0.36598399 -0.56877702 0.736579 -0.45604199 -0.47360301 0.75347698 0.076991998
		 -0.49671999 0.86448902 0.133568 -0.56080902 0.81709999 -0.88066697 -0.25509399 0.39919099
		 -0.874156 -0.29990801 0.38197601 -0.993487 -0.112447 0.018424001 -0.99318498 -0.111315
		 0.034529001 -0.874156 -0.29990801 0.38197601 -0.87272 -0.34500599 0.34544301 -0.99014598
		 -0.14002299 -0.0021269999 -0.993487 -0.112447 0.018424001 -0.993487 -0.112447 0.018424001
		 -0.99014598 -0.14002299 -0.0021269999 -0.913827 -0.041763999 -0.40395099 -0.88623399
		 0.063624002 -0.458848 -0.99318498 -0.111315 0.034529001 -0.993487 -0.112447 0.018424001
		 -0.88623399 0.063624002 -0.458848 -0.86125398 0.074417002 -0.50269699 0.052088 -0.059482001
		 -0.99686903 0.018774999 0.22647201 -0.97383702 -0.396465 0.210629 -0.89356101 -0.41383201
		 -0.008715 -0.910312 0.018774999 0.22647201 -0.97383702 0.034542002 0.27811599 -0.95992601
		 -0.364225 0.242413 -0.89920902 -0.396465 0.210629 -0.89356101 -0.396465 0.210629
		 -0.89356101 -0.364225 0.242413 -0.89920902 -0.86125398 0.074417002 -0.50269699 -0.88623399
		 0.063624002 -0.458848 -0.41383201 -0.008715 -0.910312 -0.396465 0.210629 -0.89356101;
	setAttr ".n[4814:4979]" -type "float3"  -0.88623399 0.063624002 -0.458848 -0.913827
		 -0.041763999 -0.40395099 0.81559098 -0.065085001 -0.57495701 0.816603 0.103373 -0.56786799
		 0.42655799 0.200315 -0.88199902 0.44003299 -0.063127004 -0.89576 0.816603 0.103373
		 -0.56786799 0.837623 0.145586 -0.52649099 0.44090301 0.26015401 -0.859025 0.42655799
		 0.200315 -0.88199902 0.42655799 0.200315 -0.88199902 0.44090301 0.26015401 -0.859025
		 0.034542002 0.27811599 -0.95992601 0.018774999 0.22647201 -0.97383702 0.44003299
		 -0.063127004 -0.89576 0.42655799 0.200315 -0.88199902 0.018774999 0.22647201 -0.97383702
		 0.052088 -0.059482001 -0.99686903 0.99429399 -0.095182002 -0.04817 0.93702799 -0.193547
		 0.290721 0.91975403 -0.221605 0.32395199 0.99106699 -0.129228 0.032974999 0.72645998
		 -0.35105401 0.59077698 0.74207097 -0.34966701 0.571895 0.91975403 -0.221605 0.32395199
		 0.93702799 -0.193547 0.290721 0.92303598 -0.215863 0.318445 0.99106699 -0.129228
		 0.032974999 0.91975403 -0.221605 0.32395199 0.74207097 -0.34966701 0.571895 0.172748
		 -0.340029 0.92441303 0.20296 -0.54192501 0.81555098 0.53218198 -0.42452401 0.73250401
		 0.55284297 -0.24237201 0.79725802 0.20296 -0.54192501 0.81555098 0.133568 -0.56080902
		 0.81709999 0.48093799 -0.46541101 0.743029 0.53218198 -0.42452401 0.73250401 0.53218198
		 -0.42452401 0.73250401 0.48093799 -0.46541101 0.743029 0.72645998 -0.35105401 0.59077698
		 0.80706501 -0.27244401 0.52385098 0.55284297 -0.24237201 0.79725802 0.53218198 -0.42452401
		 0.73250401 0.80706501 -0.27244401 0.52385098 0.86384898 -0.117969 0.48974299 -0.894687
		 -0.32075799 0.31088501 -0.87074 -0.38202199 0.309632 -0.30750999 -0.595469 0.74219501
		 -0.39798301 -0.40689099 0.82222199 -0.87074 -0.38202199 0.309632 -0.87272 -0.34500599
		 0.34544301 -0.36598399 -0.56877702 0.736579 -0.30750999 -0.595469 0.74219501 -0.30750999
		 -0.595469 0.74219501 -0.36598399 -0.56877702 0.736579 0.133568 -0.56080902 0.81709999
		 0.20296 -0.54192501 0.81555098 -0.39798301 -0.40689099 0.82222199 -0.30750999 -0.595469
		 0.74219501 0.20296 -0.54192501 0.81555098 0.172748 -0.340029 0.92441303 -0.87272
		 -0.34500599 0.34544301 -0.87074 -0.38202199 0.309632 -0.97926003 -0.202501 -0.0065580001
		 -0.99014598 -0.14002299 -0.0021269999 -0.87074 -0.38202199 0.309632 -0.894687 -0.32075799
		 0.31088501 -0.96584499 -0.259022 0.0071160002 -0.97926003 -0.202501 -0.0065580001
		 -0.97926003 -0.202501 -0.0065580001 -0.96584499 -0.259022 0.0071160002 -0.88196301
		 -0.37204301 -0.289354 -0.91333997 -0.224085 -0.339993 -0.99014598 -0.14002299 -0.0021269999
		 -0.97926003 -0.202501 -0.0065580001 -0.91333997 -0.224085 -0.339993 -0.913827 -0.041763999
		 -0.40395099 0.12668499 -0.46708199 -0.87509102 0.11567 -0.39633799 -0.91078901 -0.35603401
		 -0.355416 -0.864245 -0.30928099 -0.51930201 -0.79666197 0.11567 -0.39633799 -0.91078901
		 0.052088 -0.059482001 -0.99686903 -0.41383201 -0.008715 -0.910312 -0.35603401 -0.355416
		 -0.864245 -0.35603401 -0.355416 -0.864245 -0.41383201 -0.008715 -0.910312 -0.913827
		 -0.041763999 -0.40395099 -0.91333997 -0.224085 -0.339993 -0.30928099 -0.51930201
		 -0.79666197 -0.35603401 -0.355416 -0.864245 -0.91333997 -0.224085 -0.339993 -0.88196301
		 -0.37204301 -0.289354 0.83664501 -0.15701599 -0.52475798 0.82209897 -0.205506 -0.53096199
		 0.46191499 -0.33386299 -0.82168698 0.47597799 -0.34731099 -0.80797303 0.82209897
		 -0.205506 -0.53096199 0.81559098 -0.065085001 -0.57495701 0.44003299 -0.063127004
		 -0.89576 0.46191499 -0.33386299 -0.82168698 0.46191499 -0.33386299 -0.82168698 0.44003299
		 -0.063127004 -0.89576 0.052088 -0.059482001 -0.99686903 0.11567 -0.39633799 -0.91078901
		 0.47597799 -0.34731099 -0.80797303 0.46191499 -0.33386299 -0.82168698 0.11567 -0.39633799
		 -0.91078901 0.12668499 -0.46708199 -0.87509102 0.99897301 -0.0023390001 -0.045240998
		 0.98155099 -0.026242999 0.18939 0.96143198 -0.13180999 0.241403 0.99622601 -0.081465997
		 -0.029943001 0.98155099 -0.026242999 0.18939 0.86384898 -0.117969 0.48974299 0.80706501
		 -0.27244401 0.52385098 0.96143198 -0.13180999 0.241403 0.96143198 -0.13180999 0.241403
		 0.80706501 -0.27244401 0.52385098 0.72645998 -0.35105401 0.59077698 0.93702799 -0.193547
		 0.290721 0.99622601 -0.081465997 -0.029943001 0.96143198 -0.13180999 0.241403 0.93702799
		 -0.193547 0.290721 0.99429399 -0.095182002 -0.04817 0.67235601 -0.54035199 -0.50592202
		 0.69306397 -0.68122 -0.2358 0.069779001 -0.98771 -0.139855 0.22024 -0.84897399 -0.480351
		 0.69306397 -0.68122 -0.2358 0.744012 -0.66797501 0.016022 0.038522001 -0.99925202
		 -0.0034990001 0.069779001 -0.98771 -0.139855 0.069779001 -0.98771 -0.139855 0.038522001
		 -0.99925202 -0.0034990001 0 -1 0 0.000186 -0.99371397 -0.111949 0.22024 -0.84897399
		 -0.480351 0.069779001 -0.98771 -0.139855 0.000186 -0.99371397 -0.111949 0.00358 -0.89402699
		 -0.44800001 0.88083398 0.19692899 0.43052399 0.86287898 0.37956399 0.33372399 0.97194701
		 0.080114998 -0.221136 0.999134 0.038943 -0.014638 0.86287898 0.37956399 0.33372399
		 0.82686299 0.54751498 0.128547 0.95231801 0.108971 -0.28498399 0.97194701 0.080114998
		 -0.221136 0.97194701 0.080114998 -0.221136 0.95231801 0.108971 -0.28498399 0.67235601
		 -0.54035199 -0.50592202 0.71878701 -0.34947801 -0.601008 0.999134 0.038943 -0.014638
		 0.97194701 0.080114998 -0.221136 0.71878701 -0.34947801 -0.601008 0.80799401 -0.27249801
		 -0.52239001 -0.73721999 -0.67547798 0.015389 -0.038492002 -0.99925297 -0.0035039999
		 -0.064939 -0.99471098 0.079585999 -0.67668998 -0.69187897 0.25178099 -0.038492002
		 -0.99925297 -0.0035039999 0 -1 0 0 -0.99695998 0.077917002 -0.064939 -0.99471098
		 0.079585999;
	setAttr ".n[4980:5145]" -type "float3"  -0.064939 -0.99471098 0.079585999 0 -0.99695998
		 0.077917002 -1e-06 -0.77154797 0.636172 -0.30695099 -0.74711698 0.58957398 -0.67668998
		 -0.69187897 0.25178099 -0.064939 -0.99471098 0.079585999 -0.30695099 -0.74711698
		 0.58957398 -0.61857599 -0.53210998 0.57812101 0 -1 0 0.038522001 -0.99925202 -0.0034990001
		 0.064942002 -0.99471098 0.079576001 0 -0.99695998 0.077917002 0.038522001 -0.99925202
		 -0.0034990001 0.744012 -0.66797501 0.016022 0.67919898 -0.68963301 0.25118801 0.064942002
		 -0.99471098 0.079576001 0.064942002 -0.99471098 0.079576001 0.67919898 -0.68963301
		 0.25118801 0.61857599 -0.53210998 0.57811999 0.30695099 -0.74711698 0.58957398 0
		 -0.99695998 0.077917002 0.064942002 -0.99471098 0.079576001 0.30695099 -0.74711698
		 0.58957398 -1e-06 -0.77154797 0.636172 0.71497798 0.64452899 0.27090299 0.70844603
		 0.49413699 0.50391799 0.90363199 0.173283 0.39169201 0.96513301 0.236977 0.111179
		 0.70844603 0.49413699 0.50391799 0.655137 0.292826 0.69645399 0.728791 0.056428999
		 0.68240702 0.90363199 0.173283 0.39169201 0.90363199 0.173283 0.39169201 0.728791
		 0.056428999 0.68240702 0.61857599 -0.53210998 0.57811999 0.67919898 -0.68963301 0.25118801
		 0.96513301 0.236977 0.111179 0.90363199 0.173283 0.39169201 0.67919898 -0.68963301
		 0.25118801 0.744012 -0.66797501 0.016022 0.82686299 0.54751498 0.128547 0.75523698
		 0.64294302 0.127441 0.973131 0.18896399 -0.131566 0.95231801 0.108971 -0.28498399
		 0.75523698 0.64294302 0.127441 0.71497798 0.64452899 0.27090299 0.96513301 0.236977
		 0.111179 0.973131 0.18896399 -0.131566 0.973131 0.18896399 -0.131566 0.96513301 0.236977
		 0.111179 0.744012 -0.66797501 0.016022 0.69306397 -0.68122 -0.2358 0.95231801 0.108971
		 -0.28498399 0.973131 0.18896399 -0.131566 0.69306397 -0.68122 -0.2358 0.67235601
		 -0.54035199 -0.50592202 -0.65513599 0.292826 0.696455 -0.70838398 0.48802999 0.50992
		 -0.902704 0.170151 0.39518899 -0.728791 0.056430001 0.68240702 -0.70838398 0.48802999
		 0.50992 -0.71619898 0.63750499 0.28398299 -0.96546698 0.23354401 0.115458 -0.902704
		 0.170151 0.39518899 -0.902704 0.170151 0.39518899 -0.96546698 0.23354401 0.115458
		 -0.73721999 -0.67547798 0.015389 -0.67668998 -0.69187897 0.25178099 -0.728791 0.056430001
		 0.68240702 -0.902704 0.170151 0.39518899 -0.67668998 -0.69187897 0.25178099 -0.61857599
		 -0.53210998 0.57812101 -0.82716697 0.54701602 0.128719 -0.75544202 0.64133 0.134175
		 -0.24856 0.92366397 0.291657 -0.33041501 0.81138599 0.48216099 -0.75544202 0.64133
		 0.134175 -0.71619898 0.63750499 0.28398299 -0.276622 0.87514001 0.39700201 -0.24856
		 0.92366397 0.291657 -0.24856 0.92366397 0.291657 -0.276622 0.87514001 0.39700201
		 0.0033179999 0.90627903 0.42266801 0.0075059999 0.95472997 0.29737899 -0.33041501
		 0.81138599 0.48216099 -0.24856 0.92366397 0.291657 0.0075059999 0.95472997 0.29737899
		 0.018823 0.85652399 0.51576298 0.018823 0.85652399 0.51576298 0.0075059999 0.95472997
		 0.29737899 0.26092899 0.923599 0.28085899 0.359303 0.801907 0.47733301 0.0075059999
		 0.95472997 0.29737899 0.0033179999 0.90627903 0.42266801 0.280215 0.87883103 0.386181
		 0.26092899 0.923599 0.28085899 0.26092899 0.923599 0.28085899 0.280215 0.87883103
		 0.386181 0.71497798 0.64452899 0.27090299 0.75523698 0.64294302 0.127441 0.359303
		 0.801907 0.47733301 0.26092899 0.923599 0.28085899 0.75523698 0.64294302 0.127441
		 0.82686299 0.54751498 0.128547 0.013127 0.292716 0.95611 -0.53162199 0.274829 0.801153
		 -0.443261 0.49191499 0.74935901 0.025803 0.49706 0.86733198 -0.53162199 0.274829
		 0.801153 -0.88701302 0.18435299 0.423345 -0.86789799 0.382687 0.316708 -0.443261
		 0.49191499 0.74935901 -0.443261 0.49191499 0.74935901 -0.86789799 0.382687 0.316708
		 -0.82716697 0.54701602 0.128719 -0.33041501 0.81138599 0.48216099 0.025803 0.49706
		 0.86733198 -0.443261 0.49191499 0.74935901 -0.33041501 0.81138599 0.48216099 0.018823
		 0.85652399 0.51576298 0.88083398 0.19692899 0.43052399 0.545295 0.270827 0.79328799
		 0.47044 0.467251 0.74857402 0.86287898 0.37956399 0.33372399 0.545295 0.270827 0.79328799
		 0.013127 0.292716 0.95611 0.025803 0.49706 0.86733198 0.47044 0.467251 0.74857402
		 0.47044 0.467251 0.74857402 0.025803 0.49706 0.86733198 0.018823 0.85652399 0.51576298
		 0.359303 0.801907 0.47733301 0.86287898 0.37956399 0.33372399 0.47044 0.467251 0.74857402
		 0.359303 0.801907 0.47733301 0.82686299 0.54751498 0.128547 0.0033179999 0.90627903
		 0.42266801 -0.276622 0.87514001 0.39700201 -0.34762999 0.68343002 0.64193201 0.00092399999
		 0.71404803 0.70009702 -0.276622 0.87514001 0.39700201 -0.71619898 0.63750499 0.28398299
		 -0.70838398 0.48802999 0.50992 -0.34762999 0.68343002 0.64193201 -0.34762999 0.68343002
		 0.64193201 -0.70838398 0.48802999 0.50992 -0.65513599 0.292826 0.696455 -0.41017199
		 0.356226 0.83956099 0.00092399999 0.71404803 0.70009702 -0.34762999 0.68343002 0.64193201
		 -0.41017199 0.356226 0.83956099 0 0.37454599 0.92720801 0.71497798 0.64452899 0.27090299
		 0.280215 0.87883103 0.386181 0.34847999 0.68682301 0.63783699 0.70844603 0.49413699
		 0.50391799 0.280215 0.87883103 0.386181 0.0033179999 0.90627903 0.42266801 0.00092399999
		 0.71404803 0.70009702 0.34847999 0.68682301 0.63783699 0.34847999 0.68682301 0.63783699
		 0.00092399999 0.71404803 0.70009702 0 0.37454599 0.92720801 0.410171 0.35622701 0.83956099
		 0.70844603 0.49413699 0.50391799 0.34847999 0.68682301 0.63783699;
	setAttr ".n[5146:5311]" -type "float3"  0.410171 0.35622701 0.83956099 0.655137
		 0.292826 0.69645399 -0.71619898 0.63750499 0.28398299 -0.75544202 0.64133 0.134175
		 -0.97227699 0.19154599 -0.13411801 -0.96546698 0.23354401 0.115458 -0.75544202 0.64133
		 0.134175 -0.82716697 0.54701602 0.128719 -0.95651102 0.120681 -0.26556101 -0.97227699
		 0.19154599 -0.13411801 -0.97227699 0.19154599 -0.13411801 -0.95651102 0.120681 -0.26556101
		 -0.68844002 -0.52883798 -0.49636701 -0.69053 -0.682432 -0.23969799 -0.96546698 0.23354401
		 0.115458 -0.97227699 0.19154599 -0.13411801 -0.69053 -0.682432 -0.23969799 -0.73721999
		 -0.67547798 0.015389 0.84421599 -0.075585 -0.53064799 0.80634201 -0.18678699 -0.56118
		 0.38214099 -0.43943101 -0.81293797 0.44329301 -0.17792501 -0.87854099 0.80634201
		 -0.18678699 -0.56118 0.73172599 -0.52794498 -0.43110499 0.189036 -0.84051299 -0.50774401
		 0.38214099 -0.43943101 -0.81293797 0.38214099 -0.43943101 -0.81293797 0.189036 -0.84051299
		 -0.50774401 -0.001346 -0.87019199 -0.49271101 -0.00040600001 -0.497545 -0.86743802
		 0.44329301 -0.17792501 -0.87854099 0.38214099 -0.43943101 -0.81293797 -0.00040600001
		 -0.497545 -0.86743802 0.0047539999 -0.200031 -0.97977799 0.0047539999 -0.200031 -0.97977799
		 -0.00040600001 -0.497545 -0.86743802 -0.478755 -0.41814899 -0.77197498 -0.53656 -0.15265
		 -0.82994097 -0.00040600001 -0.497545 -0.86743802 -0.001346 -0.87019199 -0.49271101
		 -0.31530401 -0.81677401 -0.483181 -0.478755 -0.41814899 -0.77197498 -0.478755 -0.41814899
		 -0.77197498 -0.31530401 -0.81677401 -0.483181 -0.79440701 -0.456873 -0.40022999 -0.83783501
		 -0.16227999 -0.52124703 -0.53656 -0.15265 -0.82994097 -0.478755 -0.41814899 -0.77197498
		 -0.83783501 -0.16227999 -0.52124703 -0.86671197 -0.036621999 -0.497462 -0.86671197
		 -0.036621999 -0.497462 -0.83783501 -0.16227999 -0.52124703 -0.97529602 0.130868 -0.177965
		 -0.992378 0.095799997 -0.077519 -0.83783501 -0.16227999 -0.52124703 -0.79440701 -0.456873
		 -0.40022999 -0.97968501 0.094126001 -0.177084 -0.97529602 0.130868 -0.177965 -0.97529602
		 0.130868 -0.177965 -0.97968501 0.094126001 -0.177084 -0.84806901 0.51435697 0.127342
		 -0.88957798 0.38343701 0.248246 -0.992378 0.095799997 -0.077519 -0.97529602 0.130868
		 -0.177965 -0.88957798 0.38343701 0.248246 -0.90613699 0.184159 0.38079101 -0.68973398
		 -0.56644499 0.45100701 -0.29233801 -0.84298801 0.45156401 -0.46339601 0.0047619999
		 0.88613802 -0.77082902 0.0047089998 0.637025 -0.29233801 -0.84298801 0.45156401 0
		 -0.830746 0.556651 0 0.012935 0.99991602 -0.46339601 0.0047619999 0.88613802 -0.46339601
		 0.0047619999 0.88613802 0 0.012935 0.99991602 0 0.39435101 0.91895998 -0.410175 0.37390101
		 0.83183801 -0.77082902 0.0047089998 0.637025 -0.46339601 0.0047619999 0.88613802
		 -0.410175 0.37390101 0.83183801 -0.66376197 0.30773699 0.68170202 0 -0.830746 0.556651
		 0.29736599 -0.80523503 0.51300102 0.461164 0.026125999 0.88692999 0 0.012935 0.99991602
		 0.29736599 -0.80523503 0.51300102 0.59213197 -0.64790702 0.47916201 0.74527103 0.093048997
		 0.66023701 0.461164 0.026125999 0.88692999 0.461164 0.026125999 0.88692999 0.74527103
		 0.093048997 0.66023701 0.66376197 0.30773899 0.681701 0.41017401 0.37390199 0.83183801
		 0 0.012935 0.99991602 0.461164 0.026125999 0.88692999 0.41017401 0.37390199 0.83183801
		 0 0.39435101 0.91895998 -0.79440701 -0.456873 -0.40022999 -0.31530401 -0.81677401
		 -0.483181 -0.16624101 -0.97745597 -0.13016599 -0.74962997 -0.64000499 -0.16867 -0.31530401
		 -0.81677401 -0.483181 -0.001346 -0.87019199 -0.49271101 -0.00039900001 -0.99437302
		 -0.105931 -0.16624101 -0.97745597 -0.13016599 -0.16624101 -0.97745597 -0.13016599
		 -0.00039900001 -0.99437302 -0.105931 0 -1 0 -0.120664 -0.99267101 -0.0067099999 -0.74962997
		 -0.64000499 -0.16867 -0.16624101 -0.97745597 -0.13016599 -0.120664 -0.99267101 -0.0067099999
		 -0.72362202 -0.68997103 -0.017672 -0.081716001 -0.062717997 0.99467999 -0.03796 0.019103
		 0.99909699 0.51861298 -0.010745 0.85494202 0.45451099 -0.082768001 0.88688701 -0.03796
		 0.019103 0.99909699 -0.009048 0.20893601 0.97788799 0.55058998 0.178903 0.81537998
		 0.51861298 -0.010745 0.85494202 0.51861298 -0.010745 0.85494202 0.55058998 0.178903
		 0.81537998 0.89878398 0.131228 0.418291 0.86339003 -0.037912998 0.50310999 0.45451099
		 -0.082768001 0.88688701 0.51861298 -0.010745 0.85494202 0.86339003 -0.037912998 0.50310999
		 0.81670499 -0.098748997 0.56854397 -0.90376699 -0.026396999 0.42721 -0.90169901 0.039205
		 0.43058401 -0.59718299 0.035597999 0.80131501 -0.61523199 -0.041742999 0.78724003
		 -0.90169901 0.039205 0.43058401 -0.90613699 0.184159 0.38079101 -0.57196802 0.213017
		 0.79213399 -0.59718299 0.035597999 0.80131501 -0.59718299 0.035597999 0.80131501
		 -0.57196802 0.213017 0.79213399 -0.009048 0.20893601 0.97788799 -0.03796 0.019103
		 0.99909699 -0.61523199 -0.041742999 0.78724003 -0.59718299 0.035597999 0.80131501
		 -0.03796 0.019103 0.99909699 -0.081716001 -0.062717997 0.99467999 0.008227 -0.064940996
		 -0.99785501 0.011297 -0.058382001 -0.99822998 -0.53992403 -0.044093002 -0.84055799
		 -0.52684599 -0.051887002 -0.84837502 0.011297 -0.058382001 -0.99822998 0.0047539999
		 -0.200031 -0.97977799 -0.53656 -0.15265 -0.82994097 -0.53992403 -0.044093002 -0.84055799
		 -0.53992403 -0.044093002 -0.84055799 -0.53656 -0.15265 -0.82994097 -0.86671197 -0.036621999
		 -0.497462 -0.894292 -0.013823 -0.44727099 -0.52684599 -0.051887002 -0.84837502 -0.53992403
		 -0.044093002 -0.84055799 -0.894292 -0.013823 -0.44727099 -0.905047 -0.036152001 -0.42377299
		 0.898673 -0.104053 -0.42609799 0.87758398 -0.051628001 -0.47663501 0.458222 -0.057659999
		 -0.88696599 0.46028399 -0.069381997 -0.88505602;
	setAttr ".n[5312:5477]" -type "float3"  0.87758398 -0.051628001 -0.47663501 0.84421599
		 -0.075585 -0.53064799 0.44329301 -0.17792501 -0.87854099 0.458222 -0.057659999 -0.88696599
		 0.458222 -0.057659999 -0.88696599 0.44329301 -0.17792501 -0.87854099 0.0047539999
		 -0.200031 -0.97977799 0.011297 -0.058382001 -0.99822998 0.46028399 -0.069381997 -0.88505602
		 0.458222 -0.057659999 -0.88696599 0.011297 -0.058382001 -0.99822998 0.008227 -0.064940996
		 -0.99785501 -0.148453 -0.176061 0.97312099 -0.12508 -0.111457 0.98586601 0.396997
		 -0.123135 0.909522 0.36188999 -0.17993701 0.91469002 -0.12508 -0.111457 0.98586601
		 -0.081716001 -0.062717997 0.99467999 0.45451099 -0.082768001 0.88688701 0.396997
		 -0.123135 0.909522 0.396997 -0.123135 0.909522 0.45451099 -0.082768001 0.88688701
		 0.81670499 -0.098748997 0.56854397 0.76546001 -0.128841 0.63045299 0.36188999 -0.17993701
		 0.91469002 0.396997 -0.123135 0.909522 0.76546001 -0.128841 0.63045299 0.72432601
		 -0.171122 0.66788399 -0.93146998 -0.099192001 0.350036 -0.91699302 -0.061168 0.39418501
		 -0.64029199 -0.086915001 0.76319802 -0.65639198 -0.14572801 0.74021101 -0.91699302
		 -0.061168 0.39418501 -0.90376699 -0.026396999 0.42721 -0.61523199 -0.041742999 0.78724003
		 -0.64029199 -0.086915001 0.76319802 -0.64029199 -0.086915001 0.76319802 -0.61523199
		 -0.041742999 0.78724003 -0.081716001 -0.062717997 0.99467999 -0.12508 -0.111457 0.98586601
		 -0.65639198 -0.14572801 0.74021101 -0.64029199 -0.086915001 0.76319802 -0.12508 -0.111457
		 0.98586601 -0.148453 -0.176061 0.97312099 -0.893408 -0.081145003 -0.441856 -0.90016001
		 -0.060547002 -0.43133 -0.99867302 -0.046902999 0.021287 -0.99761802 -0.066330999
		 -0.018952001 -0.90016001 -0.060547002 -0.43133 -0.905047 -0.036152001 -0.42377299
		 -0.99877298 -0.022686001 0.044025999 -0.99867302 -0.046902999 0.021287 -0.99867302
		 -0.046902999 0.021287 -0.99877298 -0.022686001 0.044025999 -0.90376699 -0.026396999
		 0.42721 -0.91699302 -0.061168 0.39418501 -0.99761802 -0.066330999 -0.018952001 -0.99867302
		 -0.046902999 0.021287 -0.91699302 -0.061168 0.39418501 -0.93146998 -0.099192001 0.350036
		 -0.0093590003 -0.205925 -0.97852302 -0.00226 -0.116387 -0.99320102 -0.51239097 -0.091706
		 -0.85384202 -0.52426702 -0.145478 -0.83903497 -0.00226 -0.116387 -0.99320102 0.008227
		 -0.064940996 -0.99785501 -0.52684599 -0.051887002 -0.84837502 -0.51239097 -0.091706
		 -0.85384202 -0.51239097 -0.091706 -0.85384202 -0.52684599 -0.051887002 -0.84837502
		 -0.905047 -0.036152001 -0.42377299 -0.90016001 -0.060547002 -0.43133 -0.52426702
		 -0.145478 -0.83903497 -0.51239097 -0.091706 -0.85384202 -0.90016001 -0.060547002
		 -0.43133 -0.893408 -0.081145003 -0.441856 0.71847099 -0.147531 -0.67973101 0.74004602
		 -0.13588201 -0.658687 0.43206301 -0.12976301 -0.89245898 0.443535 -0.189667 -0.87595803
		 0.74004602 -0.13588201 -0.658687 0.898673 -0.104053 -0.42609799 0.46028399 -0.069381997
		 -0.88505602 0.43206301 -0.12976301 -0.89245898 0.43206301 -0.12976301 -0.89245898
		 0.46028399 -0.069381997 -0.88505602 0.008227 -0.064940996 -0.99785501 -0.00226 -0.116387
		 -0.99320102 0.443535 -0.189667 -0.87595803 0.43206301 -0.12976301 -0.89245898 -0.00226
		 -0.116387 -0.99320102 -0.0093590003 -0.205925 -0.97852302 0.71847099 -0.147531 -0.67973101
		 0.94864899 -0.122164 -0.29179099 0.937262 -0.109464 -0.33099499 0.74004602 -0.13588201
		 -0.658687 0.99010497 -0.12676699 0.060183998 0.98988998 -0.13249999 -0.050604001
		 0.937262 -0.109464 -0.33099499 0.94864899 -0.122164 -0.29179099 0.898673 -0.104053
		 -0.42609799 0.74004602 -0.13588201 -0.658687 0.937262 -0.109464 -0.33099499 0.98988998
		 -0.13249999 -0.050604001 -0.057286002 -0.414749 0.908131 -0.131837 -0.290842 0.947644
		 0.35151401 -0.28110799 0.89298201 0.36153901 -0.38384899 0.84967601 -0.131837 -0.290842
		 0.947644 -0.148453 -0.176061 0.97312099 0.36188999 -0.17993701 0.91469002 0.35151401
		 -0.28110799 0.89298201 0.35151401 -0.28110799 0.89298201 0.36188999 -0.17993701 0.91469002
		 0.72432601 -0.171122 0.66788399 0.70401102 -0.25009999 0.66469502 0.36153901 -0.38384899
		 0.84967601 0.35151401 -0.28110799 0.89298201 0.70401102 -0.25009999 0.66469502 0.69104803
		 -0.33980501 0.637954 -0.92113 -0.27011701 0.28027999 -0.93754399 -0.167097 0.30510801
		 -0.63783002 -0.25739199 0.72589397 -0.54397303 -0.41068399 0.73173201 -0.93754399
		 -0.167097 0.30510801 -0.93146998 -0.099192001 0.350036 -0.65639198 -0.14572801 0.74021101
		 -0.63783002 -0.25739199 0.72589397 -0.63783002 -0.25739199 0.72589397 -0.65639198
		 -0.14572801 0.74021101 -0.148453 -0.176061 0.97312099 -0.131837 -0.290842 0.947644
		 -0.54397303 -0.41068399 0.73173201 -0.63783002 -0.25739199 0.72589397 -0.131837 -0.290842
		 0.947644 -0.057286002 -0.414749 0.908131 -0.85060698 0.022789 -0.52530903 -0.87945497
		 -0.073687002 -0.470245 -0.99386901 -0.087096997 -0.068102002 -0.98832899 -0.092495002
		 -0.121036 -0.87945497 -0.073687002 -0.470245 -0.893408 -0.081145003 -0.441856 -0.99761802
		 -0.066330999 -0.018952001 -0.99386901 -0.087096997 -0.068102002 -0.99386901 -0.087096997
		 -0.068102002 -0.99761802 -0.066330999 -0.018952001 -0.93146998 -0.099192001 0.350036
		 -0.93754399 -0.167097 0.30510801 -0.98832899 -0.092495002 -0.121036 -0.99386901 -0.087096997
		 -0.068102002 -0.93754399 -0.167097 0.30510801 -0.92113 -0.27011701 0.28027999 0.065256
		 0.105082 -0.99232 0.02283 -0.145142 -0.98914701 -0.52178299 -0.102668 -0.84687799
		 -0.44278499 0.104468 -0.89052099 0.02283 -0.145142 -0.98914701 -0.0093590003 -0.205925
		 -0.97852302 -0.52426702 -0.145478 -0.83903497 -0.52178299 -0.102668 -0.84687799 -0.52178299
		 -0.102668 -0.84687799 -0.52426702 -0.145478 -0.83903497 -0.893408 -0.081145003 -0.441856
		 -0.87945497 -0.073687002 -0.470245 -0.44278499 0.104468 -0.89052099 -0.52178299 -0.102668
		 -0.84687799;
	setAttr ".n[5478:5643]" -type "float3"  -0.87945497 -0.073687002 -0.470245 -0.85060698
		 0.022789 -0.52530903 0.81116402 -0.073071003 -0.58023602 0.776649 -0.154586 -0.610672
		 0.51422203 -0.165003 -0.84163499 0.509525 0.020498 -0.86021203 0.776649 -0.154586
		 -0.610672 0.71847099 -0.147531 -0.67973101 0.443535 -0.189667 -0.87595803 0.51422203
		 -0.165003 -0.84163499 0.51422203 -0.165003 -0.84163499 0.443535 -0.189667 -0.87595803
		 -0.0093590003 -0.205925 -0.97852302 0.02283 -0.145142 -0.98914701 0.509525 0.020498
		 -0.86021203 0.51422203 -0.165003 -0.84163499 0.02283 -0.145142 -0.98914701 0.065256
		 0.105082 -0.99232 0.81116402 -0.073071003 -0.58023602 0.96482098 -0.135812 -0.22510999
		 0.95655298 -0.14060199 -0.25541699 0.776649 -0.154586 -0.610672 0.96482098 -0.135812
		 -0.22510999 0.98102897 -0.188159 0.046666998 0.98682398 -0.153869 0.050030999 0.95655298
		 -0.14060199 -0.25541699 0.95655298 -0.14060199 -0.25541699 0.98682398 -0.153869 0.050030999
		 0.99010497 -0.12676699 0.060183998 0.94864899 -0.122164 -0.29179099 0.776649 -0.154586
		 -0.610672 0.95655298 -0.14060199 -0.25541699 0.94864899 -0.122164 -0.29179099 0.71847099
		 -0.147531 -0.67973101 0.32660401 -0.670672 0.66597903 0.08963 -0.54556298 0.83326298
		 0.414794 -0.46650401 0.78122997 0.543652 -0.513111 0.66419798 0.08963 -0.54556298
		 0.83326298 -0.057286002 -0.414749 0.908131 0.36153901 -0.38384899 0.84967601 0.414794
		 -0.46650401 0.78122997 0.414794 -0.46650401 0.78122997 0.36153901 -0.38384899 0.84967601
		 0.69104803 -0.33980501 0.637954 0.70004201 -0.38267499 0.60290998 0.543652 -0.513111
		 0.66419798 0.414794 -0.46650401 0.78122997 0.70004201 -0.38267499 0.60290998 0.76868302
		 -0.36864901 0.522708 0.0068910001 -0.924061 0.382182 -0.76302201 -0.56690902 0.31050101
		 -0.29770401 -0.62356502 0.72286803 -0.019521 -0.77579302 0.63068497 -0.76302201 -0.56690902
		 0.31050101 -0.92113 -0.27011701 0.28027999 -0.54397303 -0.41068399 0.73173201 -0.29770401
		 -0.62356502 0.72286803 -0.29770401 -0.62356502 0.72286803 -0.54397303 -0.41068399
		 0.73173201 -0.057286002 -0.414749 0.908131 0.08963 -0.54556298 0.83326298 -0.019521
		 -0.77579302 0.63068497 -0.29770401 -0.62356502 0.72286803 0.08963 -0.54556298 0.83326298
		 0.32660401 -0.670672 0.66597903 0.036775 -0.91928703 -0.39186701 -0.80319601 -0.071441002
		 -0.591416 -0.93848997 -0.31298199 -0.14587501 -0.161578 -0.98683703 -0.006695 -0.80319601
		 -0.071441002 -0.591416 -0.85060698 0.022789 -0.52530903 -0.98832899 -0.092495002
		 -0.121036 -0.93848997 -0.31298199 -0.14587501 -0.93848997 -0.31298199 -0.14587501
		 -0.98832899 -0.092495002 -0.121036 -0.92113 -0.27011701 0.28027999 -0.76302201 -0.56690902
		 0.31050101 -0.161578 -0.98683703 -0.006695 -0.93848997 -0.31298199 -0.14587501 -0.76302201
		 -0.56690902 0.31050101 0.0068910001 -0.924061 0.382182 0.065256 0.105082 -0.99232
		 -0.44278499 0.104468 -0.89052099 -0.31118801 0.118318 -0.94295502 0.13465101 0.140733
		 -0.98084801 -0.44278499 0.104468 -0.89052099 -0.85060698 0.022789 -0.52530903 -0.80319601
		 -0.071441002 -0.591416 -0.31118801 0.118318 -0.94295502 -0.31118801 0.118318 -0.94295502
		 -0.80319601 -0.071441002 -0.591416 0.036775 -0.91928703 -0.39186701 0.265212 -0.51541299
		 -0.81486899 0.13465101 0.140733 -0.98084801 -0.31118801 0.118318 -0.94295502 0.265212
		 -0.51541299 -0.81486899 0.64146203 -0.36892501 -0.67262298 0.81116402 -0.073071003
		 -0.58023602 0.509525 0.020498 -0.86021203 0.5126 0.078987002 -0.85498703 0.83460402
		 -0.038221002 -0.549523 0.509525 0.020498 -0.86021203 0.065256 0.105082 -0.99232 0.13465101
		 0.140733 -0.98084801 0.5126 0.078987002 -0.85498703 0.5126 0.078987002 -0.85498703
		 0.13465101 0.140733 -0.98084801 0.64146203 -0.36892501 -0.67262298 0.56236702 -0.022032
		 -0.826594 0.83460402 -0.038221002 -0.549523 0.5126 0.078987002 -0.85498703 0.56236702
		 -0.022032 -0.826594 0.86309099 -0.096522003 -0.49574 0.97986102 -0.19269601 0.052356001
		 0.97725099 -0.206113 0.049984001 0.971201 -0.142444 -0.190993 0.97506201 -0.159438
		 -0.154385 0.97725099 -0.206113 0.049984001 0.98102897 -0.188159 0.046666998 0.96482098
		 -0.135812 -0.22510999 0.971201 -0.142444 -0.190993 0.971201 -0.142444 -0.190993 0.96482098
		 -0.135812 -0.22510999 0.81116402 -0.073071003 -0.58023602 0.83460402 -0.038221002
		 -0.549523 0.97506201 -0.159438 -0.154385 0.971201 -0.142444 -0.190993 0.83460402
		 -0.038221002 -0.549523 0.86309099 -0.096522003 -0.49574 0.73172599 -0.52794498 -0.43110499
		 0.69927597 -0.69324601 -0.17442299 0.023073001 -0.992773 -0.117772 0.189036 -0.84051299
		 -0.50774401 0.69927597 -0.69324601 -0.17442299 0.69805199 -0.71600598 0.0076620001
		 0 -1 0 0.023073001 -0.992773 -0.117772 0.023073001 -0.992773 -0.117772 0 -1 0 0 -1
		 0 -0.00039900001 -0.99437302 -0.105931 0.189036 -0.84051299 -0.50774401 0.023073001
		 -0.992773 -0.117772 -0.00039900001 -0.99437302 -0.105931 -0.001346 -0.87019199 -0.49271101
		 0.73172599 -0.52794498 -0.43110499 0.80634201 -0.18678699 -0.56118 0.98102403 0.181756
		 -0.067506999 0.97008097 0.209029 -0.123488 0.80634201 -0.18678699 -0.56118 0.84421599
		 -0.075585 -0.53064799 0.99506098 0.066996999 0.073247999 0.98102403 0.181756 -0.067506999
		 0.98102403 0.181756 -0.067506999 0.99506098 0.066996999 0.073247999 0.89878398 0.131228
		 0.418291 0.89102203 0.37741199 0.252269 0.97008097 0.209029 -0.123488 0.98102403
		 0.181756 -0.067506999 0.89102203 0.37741199 0.252269 0.84558803 0.520199 0.119894
		 -0.72362202 -0.68997103 -0.017672 -0.120664 -0.99267101 -0.0067099999 -0.12649301
		 -0.99139202 0.033801999 -0.66407597 -0.735843 0.132432;
	setAttr ".n[5644:5809]" -type "float3"  -0.120664 -0.99267101 -0.0067099999 0
		 -1 0 0 -0.99999201 0.0039169998 -0.12649301 -0.99139202 0.033801999 -0.12649301 -0.99139202
		 0.033801999 0 -0.99999201 0.0039169998 0 -0.830746 0.556651 -0.29233801 -0.84298801
		 0.45156401 -0.66407597 -0.735843 0.132432 -0.12649301 -0.99139202 0.033801999 -0.29233801
		 -0.84298801 0.45156401 -0.68973398 -0.56644499 0.45100701 0 -1 0 0 -1 0 0.003637
		 -0.99997801 0.005467 0 -0.99999201 0.0039169998 0 -1 0 0.69805199 -0.71600598 0.0076620001
		 0.65802598 -0.725932 0.20006301 0.003637 -0.99997801 0.005467 0.003637 -0.99997801
		 0.005467 0.65802598 -0.725932 0.20006301 0.59213197 -0.64790702 0.47916201 0.29736599
		 -0.80523503 0.51300102 0 -0.99999201 0.0039169998 0.003637 -0.99997801 0.005467 0.29736599
		 -0.80523503 0.51300102 0 -0.830746 0.556651 0.59213197 -0.64790702 0.47916201 0.65802598
		 -0.725932 0.20006301 0.91286802 0.21542899 0.346789 0.74527103 0.093048997 0.66023701
		 0.65802598 -0.725932 0.20006301 0.69805199 -0.71600598 0.0076620001 0.96002501 0.26600999
		 0.087130003 0.91286802 0.21542899 0.346789 0.91286802 0.21542899 0.346789 0.96002501
		 0.26600999 0.087130003 0.73811102 0.62057197 0.26473001 0.71789002 0.499654 0.48474699
		 0.74527103 0.093048997 0.66023701 0.91286802 0.21542899 0.346789 0.71789002 0.499654
		 0.48474699 0.66376197 0.30773899 0.681701 0.69805199 -0.71600598 0.0076620001 0.69927597
		 -0.69324601 -0.17442299 0.96880603 0.23940501 -0.064026996 0.96002501 0.26600999
		 0.087130003 0.69927597 -0.69324601 -0.17442299 0.73172599 -0.52794498 -0.43110499
		 0.97008097 0.209029 -0.123488 0.96880603 0.23940501 -0.064026996 0.96880603 0.23940501
		 -0.064026996 0.97008097 0.209029 -0.123488 0.84558803 0.520199 0.119894 0.78346699
		 0.60799003 0.128561 0.96002501 0.26600999 0.087130003 0.96880603 0.23940501 -0.064026996
		 0.78346699 0.60799003 0.128561 0.73811102 0.62057197 0.26473001 -0.72362202 -0.68997103
		 -0.017672 -0.66407597 -0.735843 0.132432 -0.94895899 0.076072998 0.306088 -0.98952001
		 0.12164 0.077807002 -0.66407597 -0.735843 0.132432 -0.68973398 -0.56644499 0.45100701
		 -0.77082902 0.0047089998 0.637025 -0.94895899 0.076072998 0.306088 -0.94895899 0.076072998
		 0.306088 -0.77082902 0.0047089998 0.637025 -0.66376197 0.30773699 0.68170202 -0.71789098
		 0.49965101 0.48475 -0.98952001 0.12164 0.077807002 -0.94895899 0.076072998 0.306088
		 -0.71789098 0.49965101 0.48475 -0.73811299 0.62057 0.26473099 -0.84806901 0.51435697
		 0.127342 -0.78456998 0.60609603 0.130757 -0.276283 0.91535401 0.292909 -0.36120501
		 0.83754402 0.40994 -0.78456998 0.60609603 0.130757 -0.73811299 0.62057 0.26473099
		 -0.29392999 0.86321503 0.410445 -0.276283 0.91535401 0.292909 -0.276283 0.91535401
		 0.292909 -0.29392999 0.86321503 0.410445 0 0.89362103 0.44882101 0.00036000001 0.949471
		 0.31385499 -0.36120501 0.83754402 0.40994 -0.276283 0.91535401 0.292909 0.00036000001
		 0.949471 0.31385499 0.0020860001 0.89375401 0.44855201 0.0020860001 0.89375401 0.44855201
		 0.00036000001 0.949471 0.31385499 0.276333 0.91597402 0.29091501 0.36162499 0.84176898
		 0.40081501 0.00036000001 0.949471 0.31385499 0 0.89362103 0.44882101 0.29392901 0.86321503
		 0.41044399 0.276333 0.91597402 0.29091501 0.276333 0.91597402 0.29091501 0.29392901
		 0.86321503 0.41044399 0.73811102 0.62057197 0.26473001 0.78346699 0.60799003 0.128561
		 0.36162499 0.84176898 0.40081501 0.276333 0.91597402 0.29091501 0.78346699 0.60799003
		 0.128561 0.84558803 0.520199 0.119894 -0.009048 0.20893601 0.97788799 -0.57196802
		 0.213017 0.79213399 -0.496337 0.54987401 0.67177999 0.0030390001 0.594037 0.80443197
		 -0.57196802 0.213017 0.79213399 -0.90613699 0.184159 0.38079101 -0.88957798 0.38343701
		 0.248246 -0.496337 0.54987401 0.67177999 -0.496337 0.54987401 0.67177999 -0.88957798
		 0.38343701 0.248246 -0.84806901 0.51435697 0.127342 -0.36120501 0.83754402 0.40994
		 0.0030390001 0.594037 0.80443197 -0.496337 0.54987401 0.67177999 -0.36120501 0.83754402
		 0.40994 0.0020860001 0.89375401 0.44855201 0.89878398 0.131228 0.418291 0.55058998
		 0.178903 0.81537998 0.49878901 0.54924703 0.67047501 0.89102203 0.37741199 0.252269
		 0.55058998 0.178903 0.81537998 -0.009048 0.20893601 0.97788799 0.0030390001 0.594037
		 0.80443197 0.49878901 0.54924703 0.67047501 0.49878901 0.54924703 0.67047501 0.0030390001
		 0.594037 0.80443197 0.0020860001 0.89375401 0.44855201 0.36162499 0.84176898 0.40081501
		 0.89102203 0.37741199 0.252269 0.49878901 0.54924703 0.67047501 0.36162499 0.84176898
		 0.40081501 0.84558803 0.520199 0.119894 0 0.89362103 0.44882101 -0.29392999 0.86321503
		 0.410445 -0.34933501 0.689147 0.63485497 0 0.71871501 0.69530499 -0.29392999 0.86321503
		 0.410445 -0.73811299 0.62057 0.26473099 -0.71789098 0.49965101 0.48475 -0.34933501
		 0.689147 0.63485497 -0.34933501 0.689147 0.63485497 -0.71789098 0.49965101 0.48475
		 -0.66376197 0.30773699 0.68170202 -0.410175 0.37390101 0.83183801 0 0.71871501 0.69530499
		 -0.34933501 0.689147 0.63485497 -0.410175 0.37390101 0.83183801 0 0.39435101 0.91895998
		 0.73811102 0.62057197 0.26473001 0.29392901 0.86321503 0.41044399 0.349334 0.68914801
		 0.63485497 0.71789002 0.499654 0.48474699 0.29392901 0.86321503 0.41044399 0 0.89362103
		 0.44882101 0 0.71871501 0.69530499 0.349334 0.68914801 0.63485497 0.349334 0.68914801
		 0.63485497 0 0.71871501 0.69530499;
	setAttr ".n[5810:5975]" -type "float3"  0 0.39435101 0.91895998 0.41017401 0.37390199
		 0.83183801 0.71789002 0.499654 0.48474699 0.349334 0.68914801 0.63485497 0.41017401
		 0.37390199 0.83183801 0.66376197 0.30773899 0.681701 -0.79440701 -0.456873 -0.40022999
		 -0.74962997 -0.64000499 -0.16867 -0.99310201 0.092586003 -0.071943 -0.97968501 0.094126001
		 -0.177084 -0.74962997 -0.64000499 -0.16867 -0.72362202 -0.68997103 -0.017672 -0.98952001
		 0.12164 0.077807002 -0.99310201 0.092586003 -0.071943 -0.99310201 0.092586003 -0.071943
		 -0.98952001 0.12164 0.077807002 -0.73811299 0.62057 0.26473099 -0.78456998 0.60609603
		 0.130757 -0.97968501 0.094126001 -0.177084 -0.99310201 0.092586003 -0.071943 -0.78456998
		 0.60609603 0.130757 -0.84806901 0.51435697 0.127342 0.54366201 0.83901602 0.022005999
		 0.26965201 0.96198201 0.043334 0.27746099 0.95930302 0.052475002 0.53660101 0.842273
		 0.051339999 0.26965201 0.96198201 0.043334 0 0.99897897 0.045169 0 0.99892598 0.046333
		 0.27746099 0.95930302 0.052475002 0.27746099 0.95930302 0.052475002 0 0.99892598
		 0.046333 0 0.995767 0.091913 0.28987601 0.95113999 0.106323 0.53660101 0.842273 0.051339999
		 0.27746099 0.95930302 0.052475002 0.28987601 0.95113999 0.106323 0.53443903 0.83667803
		 0.119773 0.927549 0.36566901 -0.077071004 0.77868903 0.62683702 -0.026803 0.76387799
		 0.64496201 0.022699 0.92087603 0.389204 -0.022536 0.77868903 0.62683702 -0.026803
		 0.54366201 0.83901602 0.022005999 0.53660101 0.842273 0.051339999 0.76387799 0.64496201
		 0.022699 0.76387799 0.64496201 0.022699 0.53660101 0.842273 0.051339999 0.53443903
		 0.83667803 0.119773 0.74820501 0.65674901 0.094180003 0.92087603 0.389204 -0.022536
		 0.76387799 0.64496201 0.022699 0.74820501 0.65674901 0.094180003 0.90894401 0.41591001
		 0.028968001 0.99115402 -0.087412998 -0.099868 0.98485303 0.139062 -0.103566 0.98658699
		 0.152256 -0.058859002 0.99412 -0.082280003 -0.070395 0.98485303 0.139062 -0.103566
		 0.927549 0.36566901 -0.077071004 0.92087603 0.389204 -0.022536 0.98658699 0.152256
		 -0.058859002 0.98658699 0.152256 -0.058859002 0.92087603 0.389204 -0.022536 0.90894401
		 0.41591001 0.028968001 0.98256701 0.17826299 -0.052774999 0.99412 -0.082280003 -0.070395
		 0.98658699 0.152256 -0.058859002 0.98256701 0.17826299 -0.052774999 0.98822099 -0.057658002
		 -0.14175899 0.77370602 -0.63038802 -0.063170001 0.92405897 -0.37502199 -0.073988996
		 0.91804099 -0.39310199 -0.051685002 0.77776903 -0.626037 -0.056157 0.92405897 -0.37502199
		 -0.073988996 0.99115402 -0.087412998 -0.099868 0.99412 -0.082280003 -0.070395 0.91804099
		 -0.39310199 -0.051685002 0.91804099 -0.39310199 -0.051685002 0.99412 -0.082280003
		 -0.070395 0.98822099 -0.057658002 -0.14175899 0.87340599 -0.351504 -0.337055 0.77776903
		 -0.626037 -0.056157 0.91804099 -0.39310199 -0.051685002 0.87340599 -0.351504 -0.337055
		 0.64146203 -0.36892501 -0.67262298 0.42103601 -0.89902198 -0.120369 0.58471602 -0.807055
		 -0.082275003 0.57944602 -0.80516899 -0.126275 0.414805 -0.89782 -0.147842 0.58471602
		 -0.807055 -0.082275003 0.77370602 -0.63038802 -0.063170001 0.77776903 -0.626037 -0.056157
		 0.57944602 -0.80516899 -0.126275 0.57944602 -0.80516899 -0.126275 0.77776903 -0.626037
		 -0.056157 0.64146203 -0.36892501 -0.67262298 0.265212 -0.51541299 -0.81486899 0.414805
		 -0.89782 -0.147842 0.57944602 -0.80516899 -0.126275 0.265212 -0.51541299 -0.81486899
		 0.036775 -0.91928703 -0.39186701 0 -0.98218602 -0.18791001 0.25992501 -0.95156401
		 -0.164211 0.274905 -0.94736099 -0.16411801 0 -0.98266 -0.18541799 0.25992501 -0.95156401
		 -0.164211 0.42103601 -0.89902198 -0.120369 0.414805 -0.89782 -0.147842 0.274905 -0.94736099
		 -0.16411801 0.274905 -0.94736099 -0.16411801 0.414805 -0.89782 -0.147842 0.036775
		 -0.91928703 -0.39186701 0.25079 -0.96348 -0.093865 0 -0.98266 -0.18541799 0.274905
		 -0.94736099 -0.16411801 0.25079 -0.96348 -0.093865 0 -0.996149 -0.087672003 0.61291099
		 0.78961599 -0.029099001 0.304299 0.95257598 -0.001389 0.287231 0.95779699 0.011123
		 0.60069799 0.79924399 -0.019237 0.304299 0.95257598 -0.001389 0 0.99989998 0.014126
		 0 0.99974 0.022801001 0.287231 0.95779699 0.011123 0.287231 0.95779699 0.011123 0
		 0.99974 0.022801001 0 0.99915302 0.041138001 0.27555001 0.96077198 0.031443 0.60069799
		 0.79924399 -0.019237 0.287231 0.95779699 0.011123 0.27555001 0.96077198 0.031443
		 0.581249 0.81371403 -0.0043629999 0.947043 0.31957099 -0.031351 0.83278102 0.55217999
		 -0.039662 0.83129501 0.553424 -0.051685002 0.94837499 0.30883101 -0.072176002 0.83278102
		 0.55217999 -0.039662 0.61291099 0.78961599 -0.029099001 0.60069799 0.79924399 -0.019237
		 0.83129501 0.553424 -0.051685002 0.83129501 0.553424 -0.051685002 0.60069799 0.79924399
		 -0.019237 0.581249 0.81371403 -0.0043629999 0.81767899 0.57265902 -0.058848001 0.94837499
		 0.30883101 -0.072176002 0.83129501 0.553424 -0.051685002 0.81767899 0.57265902 -0.058848001
		 0.94244999 0.31795999 -0.103389 0.99164897 -0.120628 -0.045632001 0.99298197 0.116246
		 -0.021761 0.99103397 0.105022 -0.082592003 0.98786098 -0.115436 -0.103948 0.99298197
		 0.116246 -0.021761 0.947043 0.31957099 -0.031351 0.94837499 0.30883101 -0.072176002
		 0.99103397 0.105022 -0.082592003 0.99103397 0.105022 -0.082592003 0.94837499 0.30883101
		 -0.072176002 0.94244999 0.31795999 -0.103389 0.98598802 0.108838 -0.126422 0.98786098
		 -0.115436 -0.103948 0.99103397 0.105022 -0.082592003 0.98598802 0.108838 -0.126422
		 0.983877 -0.106349 -0.143792;
	setAttr ".n[5976:6141]" -type "float3"  0.67102498 -0.69697398 -0.25288799 0.87903798
		 -0.455457 -0.140898 0.89313501 -0.42120999 -0.157772 0.71111798 -0.66507101 -0.228016
		 0.87903798 -0.455457 -0.140898 0.99164897 -0.120628 -0.045632001 0.98786098 -0.115436
		 -0.103948 0.89313501 -0.42120999 -0.157772 0.89313501 -0.42120999 -0.157772 0.98786098
		 -0.115436 -0.103948 0.983877 -0.106349 -0.143792 0.90249002 -0.39559701 -0.17033701
		 0.71111798 -0.66507101 -0.228016 0.89313501 -0.42120999 -0.157772 0.90249002 -0.39559701
		 -0.17033701 0.74141502 -0.639907 -0.202049 0.37210101 -0.87035203 -0.32253599 0.49840501
		 -0.80782199 -0.314668 0.53120899 -0.79864502 -0.28281301 0.38196999 -0.87103802 -0.30885601
		 0.49840501 -0.80782199 -0.314668 0.67102498 -0.69697398 -0.25288799 0.71111798 -0.66507101
		 -0.228016 0.53120899 -0.79864502 -0.28281301 0.53120899 -0.79864502 -0.28281301 0.71111798
		 -0.66507101 -0.228016 0.74141502 -0.639907 -0.202049 0.560045 -0.79704702 -0.225977
		 0.38196999 -0.87103802 -0.30885601 0.53120899 -0.79864502 -0.28281301 0.560045 -0.79704702
		 -0.225977 0.39723101 -0.88643599 -0.23756801 0 -0.95647502 -0.29181501 0.229829 -0.92461801
		 -0.30374399 0.22810601 -0.92100102 -0.31579399 0 -0.948295 -0.31739101 0.229829 -0.92461801
		 -0.30374399 0.37210101 -0.87035203 -0.32253599 0.38196999 -0.87103802 -0.30885601
		 0.22810601 -0.92100102 -0.31579399 0.22810601 -0.92100102 -0.31579399 0.38196999
		 -0.87103802 -0.30885601 0.39723101 -0.88643599 -0.23756801 0.235172 -0.94092602 -0.243625
		 0 -0.948295 -0.31739101 0.22810601 -0.92100102 -0.31579399 0.235172 -0.94092602 -0.243625
		 0 -0.96905297 -0.246851 0.581249 0.81371403 -0.0043629999 0.27555001 0.96077198 0.031443
		 0.26966399 0.96189898 0.045083001 0.56070203 0.82796103 0.009691 0.27555001 0.96077198
		 0.031443 0 0.99915302 0.041138001 0 0.99861801 0.052556999 0.26966399 0.96189898
		 0.045083001 0.26966399 0.96189898 0.045083001 0 0.99861801 0.052556999 0 0.99897897
		 0.045169 0.26965201 0.96198201 0.043334 0.56070203 0.82796103 0.009691 0.26966399
		 0.96189898 0.045083001 0.26965201 0.96198201 0.043334 0.54366201 0.83901602 0.022005999
		 0.94244999 0.31795999 -0.103389 0.81767899 0.57265902 -0.058848001 0.79822201 0.60005099
		 -0.052728999 0.93430197 0.33969301 -0.108114 0.81767899 0.57265902 -0.058848001 0.581249
		 0.81371403 -0.0043629999 0.56070203 0.82796103 0.009691 0.79822201 0.60005099 -0.052728999
		 0.79822201 0.60005099 -0.052728999 0.56070203 0.82796103 0.009691 0.54366201 0.83901602
		 0.022005999 0.77868903 0.62683702 -0.026803 0.93430197 0.33969301 -0.108114 0.79822201
		 0.60005099 -0.052728999 0.77868903 0.62683702 -0.026803 0.927549 0.36566901 -0.077071004
		 0.983877 -0.106349 -0.143792 0.98598802 0.108838 -0.126422 0.98290998 0.123 -0.136959
		 0.98460001 -0.091243997 -0.149121 0.98598802 0.108838 -0.126422 0.94244999 0.31795999
		 -0.103389 0.93430197 0.33969301 -0.108114 0.98290998 0.123 -0.136959 0.98290998 0.123
		 -0.136959 0.93430197 0.33969301 -0.108114 0.927549 0.36566901 -0.077071004 0.98485303
		 0.139062 -0.103566 0.98460001 -0.091243997 -0.149121 0.98290998 0.123 -0.136959 0.98485303
		 0.139062 -0.103566 0.99115402 -0.087412998 -0.099868 0.74141502 -0.639907 -0.202049
		 0.90249002 -0.39559701 -0.17033701 0.91474098 -0.37302899 -0.15523399 0.76245099
		 -0.62681699 -0.16053 0.90249002 -0.39559701 -0.17033701 0.983877 -0.106349 -0.143792
		 0.98460001 -0.091243997 -0.149121 0.91474098 -0.37302899 -0.15523399 0.91474098 -0.37302899
		 -0.15523399 0.98460001 -0.091243997 -0.149121 0.99115402 -0.087412998 -0.099868 0.92405897
		 -0.37502199 -0.073988996 0.76245099 -0.62681699 -0.16053 0.91474098 -0.37302899 -0.15523399
		 0.92405897 -0.37502199 -0.073988996 0.77370602 -0.63038802 -0.063170001 0.39723101
		 -0.88643599 -0.23756801 0.560045 -0.79704702 -0.225977 0.57470798 -0.80194598 -0.163074
		 0.40614501 -0.898507 -0.16652501 0.560045 -0.79704702 -0.225977 0.74141502 -0.639907
		 -0.202049 0.76245099 -0.62681699 -0.16053 0.57470798 -0.80194598 -0.163074 0.57470798
		 -0.80194598 -0.163074 0.76245099 -0.62681699 -0.16053 0.77370602 -0.63038802 -0.063170001
		 0.58471602 -0.807055 -0.082275003 0.40614501 -0.898507 -0.16652501 0.57470798 -0.80194598
		 -0.163074 0.58471602 -0.807055 -0.082275003 0.42103601 -0.89902198 -0.120369 0 -0.96905297
		 -0.246851 0.235172 -0.94092602 -0.243625 0.24247199 -0.95409399 -0.17581999 0 -0.983284
		 -0.182079 0.235172 -0.94092602 -0.243625 0.39723101 -0.88643599 -0.23756801 0.40614501
		 -0.898507 -0.16652501 0.24247199 -0.95409399 -0.17581999 0.24247199 -0.95409399 -0.17581999
		 0.40614501 -0.898507 -0.16652501 0.42103601 -0.89902198 -0.120369 0.25992501 -0.95156401
		 -0.164211 0 -0.983284 -0.182079 0.24247199 -0.95409399 -0.17581999 0.25992501 -0.95156401
		 -0.164211 0 -0.98218602 -0.18791001 0.58711398 0.43230799 -0.684403 0.261648 0.70947999
		 -0.65435302 0.333013 0.77629203 -0.53523201 0.639467 0.58614397 -0.497511 0.261648
		 0.70947999 -0.65435302 0 0.72630101 -0.68737698 0 0.83538699 -0.54966199 0.333013
		 0.77629203 -0.53523201 0.333013 0.77629203 -0.53523201 0 0.83538699 -0.54966199 0
		 0.89988798 -0.436122 0.33574599 0.83291 -0.43992701 0.639467 0.58614397 -0.497511
		 0.333013 0.77629203 -0.53523201 0.33574599 0.83291 -0.43992701 0.59851801 0.66283703
		 -0.44991401 0 -0.97754002 -0.210752 0 -0.89719802 -0.44162899 0.034635 -0.85455698
		 -0.51820201 -0.01124 -0.97081101 -0.239581 0 -0.89719802 -0.44162899 0 -0.79087901
		 -0.61197299;
	setAttr ".n[6142:6307]" -type "float3"  0.104623 -0.72919399 -0.67626202 0.034635
		 -0.85455698 -0.51820201 0.034635 -0.85455698 -0.51820201 0.104623 -0.72919399 -0.67626202
		 0.188848 -0.52103698 -0.83238 -0.118413 -0.71232897 -0.69178498 -0.01124 -0.97081101
		 -0.239581 0.034635 -0.85455698 -0.51820201 -0.118413 -0.71232897 -0.69178498 -0.466196
		 -0.82968199 -0.30706701 0.87515497 -0.078135997 -0.477492 0.90066499 0.123667 -0.41654399
		 0.830715 0.257195 -0.49372301 0.79200798 0.01244 -0.61038399 0.90066499 0.123667
		 -0.41654399 0.58711398 0.43230799 -0.684403 0.639467 0.58614397 -0.497511 0.830715
		 0.257195 -0.49372301 0.830715 0.257195 -0.49372301 0.639467 0.58614397 -0.497511
		 0.59851801 0.66283703 -0.44991401 0.76961398 0.42730001 -0.47445601 0.79200798 0.01244
		 -0.61038399 0.830715 0.257195 -0.49372301 0.76961398 0.42730001 -0.47445601 0.82568598
		 0.19254 -0.53025502 0.95953202 -0.12516899 0.252251 0.91379201 -0.374017 0.158419
		 0.91668802 -0.38594499 0.103583 0.96618003 -0.144766 0.213397 0.91379201 -0.374017
		 0.158419 0.600272 -0.79978901 0.003421 0.59244603 -0.80226201 -0.073370002 0.91668802
		 -0.38594499 0.103583 0.91668802 -0.38594499 0.103583 0.59244603 -0.80226201 -0.073370002
		 0.605416 -0.79271197 -0.071264997 0.87685502 -0.45203799 0.16366901 0.96618003 -0.144766
		 0.213397 0.91668802 -0.38594499 0.103583 0.87685502 -0.45203799 0.16366901 0.92344701
		 -0.189674 0.33357099 0.600272 -0.79978901 0.003421 0.91379201 -0.374017 0.158419
		 0.85237902 -0.43990201 0.28273001 0.59659302 -0.78913999 0.146064 0.91379201 -0.374017
		 0.158419 0.95953202 -0.12516899 0.252251 0.92141598 -0.177295 0.34577399 0.85237902
		 -0.43990201 0.28273001 0.85237902 -0.43990201 0.28273001 0.92141598 -0.177295 0.34577399
		 0.73374897 -0.38851199 0.55737901 0.64801902 -0.61704201 0.446464 0.59659302 -0.78913999
		 0.146064 0.85237902 -0.43990201 0.28273001 0.64801902 -0.61704201 0.446464 0.50032699
		 -0.80134797 0.327894 0.92344701 -0.189674 0.33357099 0.87685502 -0.45203799 0.16366901
		 0.78736401 -0.55637503 0.26552701 0.83824003 -0.23004299 0.494403 0.87685502 -0.45203799
		 0.16366901 0.605416 -0.79271197 -0.071264997 0.67329401 -0.73895001 0.025056999 0.78736401
		 -0.55637503 0.26552701 0.78736401 -0.55637503 0.26552701 0.67329401 -0.73895001 0.025056999
		 0.59136897 -0.80080402 0.094851002 0.72093999 -0.62099499 0.30759001 0.83824003 -0.23004299
		 0.494403 0.78736401 -0.55637503 0.26552701 0.72093999 -0.62099499 0.30759001 0.80900002
		 -0.233373 0.53949702 0.79130203 0.220267 0.57037199 0.80853599 0.45634499 0.37150899
		 0.86876798 0.36962399 0.329577 0.79707998 0.193719 0.57195801 0.80853599 0.45634499
		 0.37150899 0.79779899 0.47213301 0.37497601 0.86337203 0.36526501 0.34809601 0.86876798
		 0.36962399 0.329577 0.86876798 0.36962399 0.329577 0.86337203 0.36526501 0.34809601
		 0.90807998 0.28249899 0.30916801 0.95036 0.25667799 0.17587601 0.79707998 0.193719
		 0.57195801 0.86876798 0.36962399 0.329577 0.95036 0.25667799 0.17587601 0.99165797
		 0.12883 0.0041370001 0.80900002 -0.233373 0.53949702 0.72401601 -0.22245599 0.65292698
		 0.73188901 0.057117999 0.67902601 0.77126902 0.053936001 0.63422 0.72401601 -0.22245599
		 0.65292698 0.79708898 -0.203462 0.56855297 0.79694998 0.14576399 0.58619499 0.73188901
		 0.057117999 0.67902601 0.73188901 0.057117999 0.67902601 0.79694998 0.14576399 0.58619499
		 0.82012701 0.198818 0.536529 0.734707 0.129384 0.665932 0.77126902 0.053936001 0.63422
		 0.73188901 0.057117999 0.67902601 0.734707 0.129384 0.665932 0.67501199 0.185229
		 0.71417701 0.84130001 -0.51525998 0.16346601 0.60224402 -0.55600601 0.57285303 0.64158398
		 -0.43750799 0.630045 0.88581002 -0.32669801 0.329557 0.60224402 -0.55600601 0.57285303
		 0.35200599 -0.50331497 0.78915501 0.39892501 -0.479193 0.78181398 0.64158398 -0.43750799
		 0.630045 0.64158398 -0.43750799 0.630045 0.39892501 -0.479193 0.78181398 0.398478
		 -0.46039501 0.79325402 0.62825501 -0.35535699 0.69211102 0.88581002 -0.32669801 0.329557
		 0.64158398 -0.43750799 0.630045 0.62825501 -0.35535699 0.69211102 0.87546003 -0.17058
		 0.45218599 0.94831699 -0.129354 -0.289763 0.80205601 -0.57512301 -0.16106001 0.77622098
		 -0.51987302 -0.35666999 0.856453 -0.091527 -0.50804597 0.84130001 -0.51525998 0.16346601
		 0.92739302 -0.32020801 -0.193416 0.77622098 -0.51987302 -0.35666999 0.80205601 -0.57512301
		 -0.16106001 0.85045499 0.062254999 -0.52235103 0.856453 -0.091527 -0.50804597 0.77622098
		 -0.51987302 -0.35666999 0.92739302 -0.32020801 -0.193416 0.94831699 -0.129354 -0.289763
		 0.856453 -0.091527 -0.50804597 0.84164101 0.131401 -0.52380699 0.96455503 0.135442
		 -0.22646999 0.856453 -0.091527 -0.50804597 0.85045499 0.062254999 -0.52235103 0.761693
		 0.180052 -0.622419 0.84164101 0.131401 -0.52380699 0.84164101 0.131401 -0.52380699
		 0.761693 0.180052 -0.622419 0.66149199 0.15021101 -0.73475498 0.80682802 0.058161002
		 -0.58791602 0.96455503 0.135442 -0.22646999 0.84164101 0.131401 -0.52380699 0.80682802
		 0.058161002 -0.58791602 0.99165797 0.12883 0.0041370001 -1e-06 0.99927402 -0.038091999
		 0.026199 0.99859601 -0.046048999 0.097911 0.90620297 -0.41135201 -1e-06 0.92334801
		 -0.383964 0.026199 0.99859601 -0.046048999 -0.33107799 0.93802798 -0.102425 -0.081844002
		 0.84782398 -0.52392298 0.097911 0.90620297 -0.41135201 0.097911 0.90620297 -0.41135201
		 -0.081844002 0.84782398 -0.52392298 0.31337199 0.58551598 -0.74764198 0.211862 0.74268401
		 -0.63524401 -1e-06 0.92334801 -0.383964 0.097911 0.90620297 -0.41135201 0.211862
		 0.74268401 -0.63524401 -1e-06 0.79741198 -0.60343599;
	setAttr ".n[6308:6473]" -type "float3"  -1e-06 0.73572898 0.67727602 0.066857003
		 0.71312898 0.697837 0.024124 0.83999199 0.542063 -1e-06 0.84748799 0.53081501 0.066857003
		 0.71312898 0.697837 0.26769799 0.64086002 0.71947002 0.22539 0.78753 0.57358199 0.024124
		 0.83999199 0.542063 0.024124 0.83999199 0.542063 0.22539 0.78753 0.57358199 0.150888
		 0.75669599 0.63611698 -0.0063919998 0.89000601 0.45590401 -1e-06 0.84748799 0.53081501
		 0.024124 0.83999199 0.542063 -0.0063919998 0.89000601 0.45590401 0 0.89956802 0.43678099
		 0 -0.63603401 0.77166098 0 -0.82215202 0.56926799 0.31061399 -0.77689302 0.547683
		 0.34804499 -0.58699501 0.730959 0 -0.82215202 0.56926799 0 -0.94084603 0.338835 0.28771999
		 -0.89967602 0.32833001 0.31061399 -0.77689302 0.547683 0.31061399 -0.77689302 0.547683
		 0.28771999 -0.89967602 0.32833001 0.50032699 -0.80134797 0.327894 0.64801902 -0.61704201
		 0.446464 0.34804499 -0.58699501 0.730959 0.31061399 -0.77689302 0.547683 0.64801902
		 -0.61704201 0.446464 0.73374897 -0.38851199 0.55737901 0 -0.996108 -0.088137999 0.26399601
		 -0.96164799 -0.074428998 0.28224 -0.955127 0.089855999 0 -0.99671298 0.081012003
		 0.26399601 -0.96164799 -0.074428998 0.600272 -0.79978901 0.003421 0.59659302 -0.78913999
		 0.146064 0.28224 -0.955127 0.089855999 0.28224 -0.955127 0.089855999 0.59659302 -0.78913999
		 0.146064 0.50032699 -0.80134797 0.327894 0.28771999 -0.89967602 0.32833001 0 -0.99671298
		 0.081012003 0.28224 -0.955127 0.089855999 0.28771999 -0.89967602 0.32833001 0 -0.94084603
		 0.338835 0.600272 -0.79978901 0.003421 0.26399601 -0.96164799 -0.074428998 0.26207501
		 -0.95370299 -0.14754 0.59244603 -0.80226201 -0.073370002 0.26399601 -0.96164799 -0.074428998
		 0 -0.996108 -0.088137999 0 -0.98813802 -0.153569 0.26207501 -0.95370299 -0.14754
		 0.26207501 -0.95370299 -0.14754 0 -0.98813802 -0.153569 0 -0.98380399 -0.17924599
		 0.269115 -0.94771397 -0.17151099 0.59244603 -0.80226201 -0.073370002 0.26207501 -0.95370299
		 -0.14754 0.269115 -0.94771397 -0.17151099 0.605416 -0.79271197 -0.071264997 0.35155201
		 -0.92516398 -0.14311799 0.389808 -0.90748101 -0.15661301 0.25882301 -0.94987798 -0.175335
		 0.23824701 -0.95596099 -0.171395 0.389808 -0.90748101 -0.15661301 0.605416 -0.79271197
		 -0.071264997 0.269115 -0.94771397 -0.17151099 0.25882301 -0.94987798 -0.175335 0.25882301
		 -0.94987798 -0.175335 0.269115 -0.94771397 -0.17151099 0 -0.98380399 -0.17924599
		 0 -0.98192197 -0.189284 0.23824701 -0.95596099 -0.171395 0.25882301 -0.94987798 -0.175335
		 0 -0.98192197 -0.189284 0 -0.98330301 -0.181978 0.398478 -0.46039501 0.79325402 0.39892501
		 -0.479193 0.78181398 0.18547601 -0.50496298 0.842978 0.183943 -0.51973498 0.83429098
		 0.39892501 -0.479193 0.78181398 0.35200599 -0.50331497 0.78915501 0.16611101 -0.476381
		 0.86340499 0.18547601 -0.50496298 0.842978 0.18547601 -0.50496298 0.842978 0.16611101
		 -0.476381 0.86340499 0 -0.473674 0.88069999 0 -0.51538098 0.85696101 0.183943 -0.51973498
		 0.83429098 0.18547601 -0.50496298 0.842978 0 -0.51538098 0.85696101 0 -0.53797698
		 0.84296 0 0.636711 -0.77110302 0.39239699 0.55470198 -0.73370999 0.451877 0.53113103
		 -0.71673399 0 0.61702001 -0.78694701 0.39239699 0.55470198 -0.73370999 0.63992101
		 0.395818 -0.65865701 0.69141799 0.388405 -0.60916603 0.451877 0.53113103 -0.71673399
		 0.451877 0.53113103 -0.71673399 0.69141799 0.388405 -0.60916603 0.732077 0.47545901
		 -0.487854 0.498272 0.61055201 -0.61559099 0 0.61702001 -0.78694701 0.451877 0.53113103
		 -0.71673399 0.498272 0.61055201 -0.61559099 1e-06 0.70624501 -0.707968 0.63992101
		 0.395818 -0.65865701 0.77113098 0.242955 -0.588498 0.820144 0.24947 -0.514907 0.69141799
		 0.388405 -0.60916603 0.77113098 0.242955 -0.588498 0.85045499 0.062254999 -0.52235103
		 0.94053501 0.067616999 -0.332899 0.820144 0.24947 -0.514907 0.820144 0.24947 -0.514907
		 0.94053501 0.067616999 -0.332899 0.963072 0.215619 -0.161249 0.85768503 0.36079001
		 -0.36634299 0.69141799 0.388405 -0.60916603 0.820144 0.24947 -0.514907 0.85768503
		 0.36079001 -0.36634299 0.732077 0.47545901 -0.487854 0.87546003 -0.17058 0.45218599
		 0.62825501 -0.35535699 0.69211102 0.590271 -0.31524199 0.74310398 0.843337 -0.088636003
		 0.53002501 0.62825501 -0.35535699 0.69211102 0.398478 -0.46039501 0.79325402 0.36799699
		 -0.44649601 0.81560999 0.590271 -0.31524199 0.74310398 0.590271 -0.31524199 0.74310398
		 0.36799699 -0.44649601 0.81560999 0.31871599 -0.42651501 0.846466 0.536771 -0.301339
		 0.78808099 0.843337 -0.088636003 0.53002501 0.590271 -0.31524199 0.74310398 0.536771
		 -0.301339 0.78808099 0.80473399 -0.075925 0.58876002 0.398478 -0.46039501 0.79325402
		 0.183943 -0.51973498 0.83429098 0.168373 -0.51771802 0.83881998 0.36799699 -0.44649601
		 0.81560999 0.183943 -0.51973498 0.83429098 0 -0.53797698 0.84296 0 -0.53868198 0.84250897
		 0.168373 -0.51771802 0.83881998 0.168373 -0.51771802 0.83881998 0 -0.53868198 0.84250897
		 0 -0.51236999 0.85876501 0.141009 -0.49266601 0.85871798 0.36799699 -0.44649601 0.81560999
		 0.168373 -0.51771802 0.83881998 0.141009 -0.49266601 0.85871798 0.31871599 -0.42651501
		 0.846466 0.35200599 -0.50331497 0.78915501 0.26820299 -0.58226699 0.76748401 0.133991
		 -0.500211 0.855474 0.16611101 -0.476381 0.86340499 0.26820299 -0.58226699 0.76748401
		 0.208131 -0.760665 0.61487401;
	setAttr ".n[6474:6639]" -type "float3"  0.134296 -0.70837098 0.69294697 0.133991
		 -0.500211 0.855474 0.133991 -0.500211 0.855474 0.134296 -0.70837098 0.69294697 0
		 -0.69711798 0.71695602 1e-06 -0.48117 0.87662703 0.16611101 -0.476381 0.86340499
		 0.133991 -0.500211 0.855474 1e-06 -0.48117 0.87662703 0 -0.473674 0.88069999 0.56267798
		 -0.76457101 0.31436399 0.334519 -0.81657702 0.47042501 0.47886199 -0.70421702 0.524185
		 0.67516202 -0.70166498 0.22764599 0.334519 -0.81657702 0.47042501 0.208131 -0.760665
		 0.61487401 0.26820299 -0.58226699 0.76748401 0.47886199 -0.70421702 0.524185 0.47886199
		 -0.70421702 0.524185 0.26820299 -0.58226699 0.76748401 0.35200599 -0.50331497 0.78915501
		 0.60224402 -0.55600601 0.57285303 0.67516202 -0.70166498 0.22764599 0.47886199 -0.70421702
		 0.524185 0.60224402 -0.55600601 0.57285303 0.84130001 -0.51525998 0.16346601 0.96942401
		 -0.182669 0.16385899 0.69346899 -0.698039 0.178445 0.75633699 -0.65314502 -0.036834002
		 0.97635198 -0.174308 -0.12787899 0.69346899 -0.698039 0.178445 0.56267798 -0.76457101
		 0.31436399 0.67516202 -0.70166498 0.22764599 0.75633699 -0.65314502 -0.036834002
		 0.75633699 -0.65314502 -0.036834002 0.67516202 -0.70166498 0.22764599 0.84130001
		 -0.51525998 0.16346601 0.80205601 -0.57512301 -0.16106001 0.97635198 -0.174308 -0.12787899
		 0.75633699 -0.65314502 -0.036834002 0.80205601 -0.57512301 -0.16106001 0.94831699
		 -0.129354 -0.289763 0.67740601 0.116084 0.72639197 0.14316 0.92874497 -0.34196201
		 -0.36079299 0.93184102 0.038748 0.51922899 0.080190003 0.85086501 0.14316 0.92874497
		 -0.34196201 -0.18069001 0.72951299 -0.65966803 -0.44903299 0.79225898 -0.41315201
		 -0.36079299 0.93184102 0.038748 -0.36079299 0.93184102 0.038748 -0.44903299 0.79225898
		 -0.41315201 -0.54635 0.83336598 -0.083687 -0.52088797 0.80176502 0.29300001 0.51922899
		 0.080190003 0.85086501 -0.36079299 0.93184102 0.038748 -0.52088797 0.80176502 0.29300001
		 0.53902102 0.064441003 0.83982402 0 0.89956802 0.43678099 -0.0063919998 0.89000601
		 0.45590401 -0.0087580001 0.96008301 0.279578 0 0.964136 0.26540801 -0.0063919998
		 0.89000601 0.45590401 0.150888 0.75669599 0.63611698 -0.376443 0.85896498 0.34708801
		 -0.0087580001 0.96008301 0.279578 -0.0087580001 0.96008301 0.279578 -0.376443 0.85896498
		 0.34708801 -0.33107799 0.93802798 -0.102425 0.026199 0.99859601 -0.046048999 0 0.964136
		 0.26540801 -0.0087580001 0.96008301 0.279578 0.026199 0.99859601 -0.046048999 -1e-06
		 0.99927402 -0.038091999 0.657942 -0.206274 0.72426701 0.70473099 -0.085543998 0.70429802
		 0.569794 -0.082930997 0.81759202 0.429625 -0.206163 0.87915802 0.70473099 -0.085543998
		 0.70429802 0.79130203 0.220267 0.57037199 0.79707998 0.193719 0.57195801 0.569794
		 -0.082930997 0.81759202 0.569794 -0.082930997 0.81759202 0.79707998 0.193719 0.57195801
		 0.99165797 0.12883 0.0041370001 0.94149899 -0.157014 0.298204 0.429625 -0.206163
		 0.87915802 0.569794 -0.082930997 0.81759202 0.94149899 -0.157014 0.298204 0.84735698
		 -0.227267 0.47993401 0.99165797 0.12883 0.0041370001 0.80682802 0.058161002 -0.58791602
		 0.715289 -0.083199002 -0.69385898 0.94149899 -0.157014 0.298204 0.80682802 0.058161002
		 -0.58791602 0.66149199 0.15021101 -0.73475498 0.510086 0.070804998 -0.85720402 0.715289
		 -0.083199002 -0.69385898 0.715289 -0.083199002 -0.69385898 0.510086 0.070804998 -0.85720402
		 0.436084 0.128988 -0.89061397 0.71227503 -0.013813 -0.701765 0.94149899 -0.157014
		 0.298204 0.715289 -0.083199002 -0.69385898 0.71227503 -0.013813 -0.701765 0.84735698
		 -0.227267 0.47993401 -0.33107799 0.93802798 -0.102425 -0.72744799 0.66773301 -0.15796199
		 -0.398074 0.68110502 -0.61451799 -0.081844002 0.84782398 -0.52392298 -0.72744799
		 0.66773301 -0.15796199 -0.72178602 0.67289603 -0.161974 -0.44795999 0.63682401 -0.62752497
		 -0.398074 0.68110502 -0.61451799 -0.398074 0.68110502 -0.61451799 -0.44795999 0.63682401
		 -0.62752497 -0.180989 0.54426497 -0.81915802 -0.029626001 0.545394 -0.83765602 -0.081844002
		 0.84782398 -0.52392298 -0.398074 0.68110502 -0.61451799 -0.029626001 0.545394 -0.83765602
		 0.31337199 0.58551598 -0.74764198 -0.33107799 0.93802798 -0.102425 -0.376443 0.85896498
		 0.34708801 -0.771213 0.52283102 0.36315101 -0.72744799 0.66773301 -0.15796199 -0.376443
		 0.85896498 0.34708801 0.150888 0.75669599 0.63611698 0.000462 0.31009501 0.95070601
		 -0.771213 0.52283102 0.36315101 -0.771213 0.52283102 0.36315101 0.000462 0.31009501
		 0.95070601 0.145105 0.16287901 0.97591799 -0.74375099 0.55681002 0.36986199 -0.72744799
		 0.66773301 -0.15796199 -0.771213 0.52283102 0.36315101 -0.74375099 0.55681002 0.36986199
		 -0.72178602 0.67289603 -0.161974 0.67740601 0.116084 0.72639197 0.45608401 -0.46603301
		 0.758156 0.242328 -0.41457799 0.87715602 0.76448298 0.011688 0.64453799 0.55796099
		 -0.32616001 0.76308602 0.267279 -0.31805 0.90961897 0.242328 -0.41457799 0.87715602
		 0.45608401 -0.46603301 0.758156 0.760562 -0.134086 0.63526899 0.76448298 0.011688
		 0.64453799 0.242328 -0.41457799 0.87715602 0.267279 -0.31805 0.90961897 0.67740601
		 0.116084 0.72639197 0.76448298 0.011688 0.64453799 0.53112799 0.66401899 -0.52629101
		 0.14316 0.92874497 -0.34196201 0.76448298 0.011688 0.64453799 0.760562 -0.134086
		 0.63526899 0.73633999 0.33742401 -0.58647102 0.53112799 0.66401899 -0.52629101 0.53112799
		 0.66401899 -0.52629101 0.73633999 0.33742401 -0.58647102 0.43935201 0.42600799 -0.790878
		 0.121896 0.58703399 -0.80033302 0.14316 0.92874497 -0.34196201 0.53112799 0.66401899
		 -0.52629101 0.121896 0.58703399 -0.80033302 -0.18069001 0.72951299 -0.65966803;
	setAttr ".n[6640:6805]" -type "float3"  0.67740601 0.116084 0.72639197 0.51922899
		 0.080190003 0.85086501 0.68953198 -0.51140797 0.512842 0.45608401 -0.46603301 0.758156
		 0.53902102 0.064441003 0.83982402 0.75916201 -0.42888501 0.48962301 0.68953198 -0.51140797
		 0.512842 0.51922899 0.080190003 0.85086501 0.55796099 -0.32616001 0.76308602 0.45608401
		 -0.46603301 0.758156 0.68953198 -0.51140797 0.512842 0.75916201 -0.42888501 0.48962301
		 0 -0.106568 0.99430603 0.36187601 -0.174505 0.915748 0.26217201 -0.80937397 -0.52552903
		 0 -0.979114 -0.20331199 0.36187601 -0.174505 0.915748 0.95929998 -0.275691 0.061145
		 0.373557 -0.57828301 -0.72528899 0.26217201 -0.80937397 -0.52552903 0.26217201 -0.80937397
		 -0.52552903 0.373557 -0.57828301 -0.72528899 0.188848 -0.52103698 -0.83238 0.104623
		 -0.72919399 -0.67626202 0 -0.979114 -0.20331199 0.26217201 -0.80937397 -0.52552903
		 0.104623 -0.72919399 -0.67626202 0 -0.79087901 -0.61197299 0.37896299 -0.45764399
		 0.804331 0.132889 -0.169434 0.97654098 0.59209502 -0.12125 0.79669398 0.81014699
		 -0.29016799 0.50937599 0.132889 -0.169434 0.97654098 0.172748 -0.340029 0.92441303
		 0.55284297 -0.24237201 0.79725802 0.59209502 -0.12125 0.79669398 0.59209502 -0.12125
		 0.79669398 0.55284297 -0.24237201 0.79725802 0.86384898 -0.117969 0.48974299 0.92063099
		 -0.015281 0.39013401 0.81014699 -0.29016799 0.50937599 0.59209502 -0.12125 0.79669398
		 0.92063099 -0.015281 0.39013401 0.987037 0.027547 0.15811101 -0.443535 -0.882451
		 0.156707 -0.892923 -0.350425 0.28265101 -0.431438 -0.26882699 0.86115801 -0.087310001
		 -0.67771697 0.73012102 -0.892923 -0.350425 0.28265101 -0.894687 -0.32075799 0.31088501
		 -0.39798301 -0.40689099 0.82222199 -0.431438 -0.26882699 0.86115801 -0.431438 -0.26882699
		 0.86115801 -0.39798301 -0.40689099 0.82222199 0.172748 -0.340029 0.92441303 0.132889
		 -0.169434 0.97654098 -0.087310001 -0.67771697 0.73012102 -0.431438 -0.26882699 0.86115801
		 0.132889 -0.169434 0.97654098 0.37896299 -0.45764399 0.804331 -0.894687 -0.32075799
		 0.31088501 -0.892923 -0.350425 0.28265101 -0.92495197 -0.380034 0.0062239999 -0.96584499
		 -0.259022 0.0071160002 -0.892923 -0.350425 0.28265101 -0.443535 -0.882451 0.156707
		 -0.61590397 -0.78523898 -0.063740999 -0.92495197 -0.380034 0.0062239999 -0.92495197
		 -0.380034 0.0062239999 -0.61590397 -0.78523898 -0.063740999 -0.466196 -0.82968199
		 -0.30706701 -0.80322403 -0.52337199 -0.284453 -0.96584499 -0.259022 0.0071160002
		 -0.92495197 -0.380034 0.0062239999 -0.80322403 -0.52337199 -0.284453 -0.88196301
		 -0.37204301 -0.289354 0.188848 -0.52103698 -0.83238 0.14706001 -0.46537 -0.872814
		 -0.25348201 -0.59418499 -0.76334202 -0.118413 -0.71232897 -0.69178498 0.14706001
		 -0.46537 -0.872814 0.12668499 -0.46708199 -0.87509102 -0.30928099 -0.51930201 -0.79666197
		 -0.25348201 -0.59418499 -0.76334202 -0.25348201 -0.59418499 -0.76334202 -0.30928099
		 -0.51930201 -0.79666197 -0.88196301 -0.37204301 -0.289354 -0.80322403 -0.52337199
		 -0.284453 -0.118413 -0.71232897 -0.69178498 -0.25348201 -0.59418499 -0.76334202 -0.80322403
		 -0.52337199 -0.284453 -0.466196 -0.82968199 -0.30706701 0.78236598 -0.030727001 -0.62206101
		 0.81603003 -0.050659999 -0.57578498 0.474163 -0.27635199 -0.83594197 0.475099 -0.25098401
		 -0.84337902 0.81603003 -0.050659999 -0.57578498 0.83664501 -0.15701599 -0.52475798
		 0.47597799 -0.34731099 -0.80797303 0.474163 -0.27635199 -0.83594197 0.474163 -0.27635199
		 -0.83594197 0.47597799 -0.34731099 -0.80797303 0.12668499 -0.46708199 -0.87509102
		 0.14706001 -0.46537 -0.872814 0.475099 -0.25098401 -0.84337902 0.474163 -0.27635199
		 -0.83594197 0.14706001 -0.46537 -0.872814 0.188848 -0.52103698 -0.83238 0.987037
		 0.027547 0.15811101 0.92063099 -0.015281 0.39013401 0.99168301 0.058628999 0.114579
		 0.99115598 0.125044 0.044425 0.92063099 -0.015281 0.39013401 0.86384898 -0.117969
		 0.48974299 0.98155099 -0.026242999 0.18939 0.99168301 0.058628999 0.114579 0.99168301
		 0.058628999 0.114579 0.98155099 -0.026242999 0.18939 0.99897301 -0.0023390001 -0.045240998
		 0.99311602 0.077613004 -0.087727003 0.99115598 0.125044 0.044425 0.99168301 0.058628999
		 0.114579 0.99311602 0.077613004 -0.087727003 0.9831 0.133393 -0.125385 0.95929998
		 -0.275691 0.061145 0.614568 -0.225835 -0.75584698 0.48044801 -0.33716899 -0.80962098
		 0.373557 -0.57828301 -0.72528899 0.78236598 -0.030727001 -0.62206101 0.475099 -0.25098401
		 -0.84337902 0.48044801 -0.33716899 -0.80962098 0.614568 -0.225835 -0.75584698 0.188848
		 -0.52103698 -0.83238 0.373557 -0.57828301 -0.72528899 0.48044801 -0.33716899 -0.80962098
		 0.475099 -0.25098401 -0.84337902 0 -0.702151 0.71202803 0.130428 -0.69351703 0.70853603
		 0.122564 -0.53898698 0.83334899 0 -0.55776203 0.830001 0.130428 -0.69351703 0.70853603
		 0.23996399 -0.65250599 0.718786 0.26693901 -0.47463301 0.83872902 0.122564 -0.53898698
		 0.83334899 0.122564 -0.53898698 0.83334899 0.26693901 -0.47463301 0.83872902 0.31871599
		 -0.42651501 0.846466 0.141009 -0.49266601 0.85871798 0 -0.55776203 0.830001 0.122564
		 -0.53898698 0.83334899 0.141009 -0.49266601 0.85871798 0 -0.51236999 0.85876501 0.72726899
		 -0.32848999 0.60263902 0.75959301 -0.14719699 0.63352299 0.48359701 -0.349933 0.802297
		 0.46707201 -0.48192099 0.74134803 0.75959301 -0.14719699 0.63352299 0.80473399 -0.075925
		 0.58876002 0.536771 -0.301339 0.78808099 0.48359701 -0.349933 0.802297 0.48359701
		 -0.349933 0.802297 0.536771 -0.301339 0.78808099 0.31871599 -0.42651501 0.846466
		 0.26693901 -0.47463301 0.83872902 0.46707201 -0.48192099 0.74134803 0.48359701 -0.349933
		 0.802297;
	setAttr ".n[6806:6971]" -type "float3"  0.26693901 -0.47463301 0.83872902 0.23996399
		 -0.65250599 0.718786 0.92511803 -0.010965 0.37952101 0.92075098 0.218887 0.32296401
		 0.90556002 0.079999998 0.41660601 0.86510098 -0.15683199 0.47644901 0.92075098 0.218887
		 0.32296401 0.910734 0.368132 0.187194 0.93105298 0.17199799 0.32180199 0.90556002
		 0.079999998 0.41660601 0.90556002 0.079999998 0.41660601 0.93105298 0.17199799 0.32180199
		 0.80473399 -0.075925 0.58876002 0.75959301 -0.14719699 0.63352299 0.86510098 -0.15683199
		 0.47644901 0.90556002 0.079999998 0.41660601 0.75959301 -0.14719699 0.63352299 0.72726899
		 -0.32848999 0.60263902 0.71319598 0.68563598 -0.145789 0.74250799 0.593027 -0.31144899
		 0.86191601 0.47458699 -0.178515 0.82978398 0.55793601 0.012913 0.74250799 0.593027
		 -0.31144899 0.732077 0.47545901 -0.487854 0.85768503 0.36079001 -0.36634299 0.86191601
		 0.47458699 -0.178515 0.86191601 0.47458699 -0.178515 0.85768503 0.36079001 -0.36634299
		 0.963072 0.215619 -0.161249 0.94254899 0.33406499 -0.001233 0.82978398 0.55793601
		 0.012913 0.86191601 0.47458699 -0.178515 0.94254899 0.33406499 -0.001233 0.910734
		 0.368132 0.187194 1e-06 0.70624501 -0.707968 0.498272 0.61055201 -0.61559099 0.51523501
		 0.729164 -0.45039099 0 0.83457202 -0.55089802 0.498272 0.61055201 -0.61559099 0.732077
		 0.47545901 -0.487854 0.74250799 0.593027 -0.31144899 0.51523501 0.729164 -0.45039099
		 0.51523501 0.729164 -0.45039099 0.74250799 0.593027 -0.31144899 0.71319598 0.68563598
		 -0.145789 0.49550599 0.80302 -0.33110899 0 0.83457202 -0.55089802 0.51523501 0.729164
		 -0.45039099 0.49550599 0.80302 -0.33110899 0 0.891168 -0.45367399 0 0.42668599 0.90439999
		 0.208662 0.39465499 0.89482301 0.14278001 0.50042301 0.85392702 0 0.55480099 0.83198297
		 0.208662 0.39465499 0.89482301 0.36335701 0.331808 0.87055999 0.312805 0.373676 0.87322301
		 0.14278001 0.50042301 0.85392702 0.14278001 0.50042301 0.85392702 0.312805 0.373676
		 0.87322301 0.26769799 0.64086002 0.71947002 0.066857003 0.71312898 0.697837 0 0.55480099
		 0.83198297 0.14278001 0.50042301 0.85392702 0.066857003 0.71312898 0.697837 -1e-06
		 0.73572898 0.67727602 0.80900002 -0.233373 0.53949702 0.72093999 -0.62099499 0.30759001
		 0.65233701 -0.64025098 0.405628 0.72401601 -0.22245599 0.65292698 0.72093999 -0.62099499
		 0.30759001 0.59136897 -0.80080402 0.094851002 0.51360101 -0.83677101 0.189813 0.65233701
		 -0.64025098 0.405628 0.65233701 -0.64025098 0.405628 0.51360101 -0.83677101 0.189813
		 0.47210199 -0.81373101 0.33906099 0.60207403 -0.65830499 0.45181999 0.72401601 -0.22245599
		 0.65292698 0.65233701 -0.64025098 0.405628 0.60207403 -0.65830499 0.45181999 0.79708898
		 -0.203462 0.56855297 0 -0.99088699 0.13469601 0.202692 -0.96833599 0.14574499 0.229296
		 -0.96212 -0.14747401 0 -0.98635101 -0.164655 0.202692 -0.96833599 0.14574499 0.233603
		 -0.95496303 0.182962 0.30896601 -0.94587803 -0.099274002 0.229296 -0.96212 -0.14747401
		 0.229296 -0.96212 -0.14747401 0.30896601 -0.94587803 -0.099274002 0.35155201 -0.92516398
		 -0.14311799 0.23824701 -0.95596099 -0.171395 0 -0.98635101 -0.164655 0.229296 -0.96212
		 -0.14747401 0.23824701 -0.95596099 -0.171395 0 -0.98330301 -0.181978 -1e-06 0.49977499
		 0.86615503 -2e-06 -0.46147799 0.88715202 0.40107101 -0.368765 0.838543 0.35882401
		 0.44874299 0.81845897 -2e-06 -0.46147799 0.88715202 0 -0.63603401 0.77166098 0.34804499
		 -0.58699501 0.730959 0.40107101 -0.368765 0.838543 0.40107101 -0.368765 0.838543
		 0.34804499 -0.58699501 0.730959 0.73374897 -0.38851199 0.55737901 0.76558298 -0.122977
		 0.63147497 0.35882401 0.44874299 0.81845897 0.40107101 -0.368765 0.838543 0.76558298
		 -0.122977 0.63147497 0.72481501 0.33858901 0.60000098 0.32980001 0.60156697 0.72756398
		 0.48685199 0.53227901 0.69257098 0.47573999 0.30761701 0.82404101 0.33120799 0.29416099
		 0.89653301 0.48685199 0.53227901 0.69257098 0.77241302 0.31302601 0.55262297 0.67727202
		 0.22084901 0.70180398 0.47573999 0.30761701 0.82404101 0.47573999 0.30761701 0.82404101
		 0.67727202 0.22084901 0.70180398 0.67501199 0.185229 0.71417701 0.50901502 0.273103
		 0.81628299 0.33120799 0.29416099 0.89653301 0.47573999 0.30761701 0.82404101 0.50901502
		 0.273103 0.81628299 0.36335701 0.331808 0.87055999 0.77241302 0.31302601 0.55262297
		 0.80637598 0.41781601 0.41855299 0.93633401 0.12861399 0.32670701 0.89138699 0.080645002
		 0.44601101 0.80637598 0.41781601 0.41855299 0.65701598 0.585765 0.47456199 0.921408
		 0.162797 0.35285199 0.93633401 0.12861399 0.32670701 0.93633401 0.12861399 0.32670701
		 0.921408 0.162797 0.35285199 0.95953202 -0.12516899 0.252251 0.96618003 -0.144766
		 0.213397 0.89138699 0.080645002 0.44601101 0.93633401 0.12861399 0.32670701 0.96618003
		 -0.144766 0.213397 0.92344701 -0.189674 0.33357099 0.65701598 0.585765 0.47456199
		 0.67756999 0.54742998 0.491142 0.90282899 0.13058101 0.409693 0.921408 0.162797 0.35285199
		 0.67756999 0.54742998 0.491142 0.72481501 0.33858901 0.60000098 0.76558298 -0.122977
		 0.63147497 0.90282899 0.13058101 0.409693 0.90282899 0.13058101 0.409693 0.76558298
		 -0.122977 0.63147497 0.73374897 -0.38851199 0.55737901 0.92141598 -0.177295 0.34577399
		 0.921408 0.162797 0.35285199 0.90282899 0.13058101 0.409693 0.92141598 -0.177295
		 0.34577399 0.95953202 -0.12516899 0.252251 0.67501199 0.185229 0.71417701 0.67727202
		 0.22084901 0.70180398 0.79324001 0.056915998 0.60624301 0.77126902 0.053936001 0.63422;
	setAttr ".n[6972:7137]" -type "float3"  0.67727202 0.22084901 0.70180398 0.77241302
		 0.31302601 0.55262297 0.89138699 0.080645002 0.44601101 0.79324001 0.056915998 0.60624301
		 0.79324001 0.056915998 0.60624301 0.89138699 0.080645002 0.44601101 0.92344701 -0.189674
		 0.33357099 0.83824003 -0.23004299 0.494403 0.77126902 0.053936001 0.63422 0.79324001
		 0.056915998 0.60624301 0.83824003 -0.23004299 0.494403 0.80900002 -0.233373 0.53949702
		 0 0.66263098 0.74894601 0.236352 0.636814 0.73389798 0.215175 0.285519 0.93390501
		 0 0.292696 0.95620602 0.236352 0.636814 0.73389798 0.32980001 0.60156697 0.72756398
		 0.33120799 0.29416099 0.89653301 0.215175 0.285519 0.93390501 0.215175 0.285519 0.93390501
		 0.33120799 0.29416099 0.89653301 0.36335701 0.331808 0.87055999 0.208662 0.39465499
		 0.89482301 0 0.292696 0.95620602 0.215175 0.285519 0.93390501 0.208662 0.39465499
		 0.89482301 0 0.42668599 0.90439999 0.65701598 0.585765 0.47456199 0.398729 0.78148103
		 0.47989801 0.244316 0.83583897 0.49161199 0.278153 0.82066602 0.499138 0.398729 0.78148103
		 0.47989801 0.32980001 0.60156697 0.72756398 0.236352 0.636814 0.73389798 0.244316
		 0.83583897 0.49161199 0.244316 0.83583897 0.49161199 0.236352 0.636814 0.73389798
		 0 0.66263098 0.74894601 0 0.86499798 0.50177503 0.278153 0.82066602 0.499138 0.244316
		 0.83583897 0.49161199 0 0.86499798 0.50177503 0 0.86404401 0.503416 0.72481501 0.33858901
		 0.60000098 0.67756999 0.54742998 0.491142 0.314215 0.79879302 0.51302898 0.35882401
		 0.44874299 0.81845897 0.67756999 0.54742998 0.491142 0.65701598 0.585765 0.47456199
		 0.278153 0.82066602 0.499138 0.314215 0.79879302 0.51302898 0.314215 0.79879302 0.51302898
		 0.278153 0.82066602 0.499138 0 0.86404401 0.503416 0 0.86287099 0.50542498 0.35882401
		 0.44874299 0.81845897 0.314215 0.79879302 0.51302898 0 0.86287099 0.50542498 -1e-06
		 0.49977499 0.86615503 0.66149199 0.15021101 -0.73475498 0.54491198 0.295598 -0.784661
		 0.28539699 0.27397001 -0.91841602 0.510086 0.070804998 -0.85720402 0.54491198 0.295598
		 -0.784661 0.31337199 0.58551598 -0.74764198 -0.029626001 0.545394 -0.83765602 0.28539699
		 0.27397001 -0.91841602 0.28539699 0.27397001 -0.91841602 -0.029626001 0.545394 -0.83765602
		 -0.180989 0.54426497 -0.81915802 0.106875 0.35120499 -0.930179 0.510086 0.070804998
		 -0.85720402 0.28539699 0.27397001 -0.91841602 0.106875 0.35120499 -0.930179 0.436084
		 0.128988 -0.89061397 0.63992101 0.395818 -0.65865701 0.54003602 0.46062899 -0.70440203
		 0.69821203 0.285097 -0.65667403 0.77113098 0.242955 -0.588498 0.54003602 0.46062899
		 -0.70440203 0.31337199 0.58551598 -0.74764198 0.54491198 0.295598 -0.784661 0.69821203
		 0.285097 -0.65667403 0.69821203 0.285097 -0.65667403 0.54491198 0.295598 -0.784661
		 0.66149199 0.15021101 -0.73475498 0.761693 0.180052 -0.622419 0.77113098 0.242955
		 -0.588498 0.69821203 0.285097 -0.65667403 0.761693 0.180052 -0.622419 0.85045499
		 0.062254999 -0.52235103 0.150888 0.75669599 0.63611698 0.839894 0.074474998 0.53761703
		 0.80442601 -0.19789501 0.56012201 0.000462 0.31009501 0.95070601 0.839894 0.074474998
		 0.53761703 0.79130203 0.220267 0.57037199 0.70473099 -0.085543998 0.70429802 0.80442601
		 -0.19789501 0.56012201 0.80442601 -0.19789501 0.56012201 0.70473099 -0.085543998
		 0.70429802 0.657942 -0.206274 0.72426701 0.78851098 -0.303058 0.53517002 0.000462
		 0.31009501 0.95070601 0.80442601 -0.19789501 0.56012201 0.78851098 -0.303058 0.53517002
		 0.145105 0.16287901 0.97591799 0.150888 0.75669599 0.63611698 0.72375399 0.52613699
		 0.44649699 0.769858 0.50128299 0.39501101 0.839894 0.074474998 0.53761703 0.79779899
		 0.47213301 0.37497601 0.80853599 0.45634499 0.37150899 0.769858 0.50128299 0.39501101
		 0.72375399 0.52613699 0.44649699 0.79130203 0.220267 0.57037199 0.839894 0.074474998
		 0.53761703 0.769858 0.50128299 0.39501101 0.80853599 0.45634499 0.37150899 0.36335701
		 0.331808 0.87055999 0.50901502 0.273103 0.81628299 0.50141001 0.259554 0.82536 0.312805
		 0.373676 0.87322301 0.50901502 0.273103 0.81628299 0.67501199 0.185229 0.71417701
		 0.61968499 0.20759 0.756899 0.50141001 0.259554 0.82536 0.50141001 0.259554 0.82536
		 0.61968499 0.20759 0.756899 0.72341901 0.351585 0.59418201 0.58443302 0.431503 0.687199
		 0.312805 0.373676 0.87322301 0.50141001 0.259554 0.82536 0.58443302 0.431503 0.687199
		 0.26769799 0.64086002 0.71947002 0 0.79835999 -0.60218 0 0.78569603 -0.61861199 0.388134
		 0.72002703 -0.57525098 0.368018 0.72793001 -0.57851601 0 0.78569603 -0.61861199 0
		 0.57403499 -0.81883103 0.44437999 0.47674599 -0.75844502 0.388134 0.72002703 -0.57525098
		 0.388134 0.72002703 -0.57525098 0.44437999 0.47674599 -0.75844502 0.848369 0.36607701
		 -0.38243699 0.76848298 0.50452203 -0.39356399 0.368018 0.72793001 -0.57851601 0.388134
		 0.72002703 -0.57525098 0.76848298 0.50452203 -0.39356399 0.67411602 0.49771899 -0.54575002
		 0 -0.702586 0.71159798 0 -0.90720302 0.42069301 -0.0031729999 -0.95375597 0.30056399
		 0.18305101 -0.68141699 0.70863497 0 -0.90720302 0.42069301 0 -0.97569698 0.21912301
		 0.321044 -0.92848003 0.18669499 -0.0031729999 -0.95375597 0.30056399 -0.0031729999
		 -0.95375597 0.30056399 0.321044 -0.92848003 0.18669499 0.68548799 -0.72419697 0.075130001
		 0.61014301 -0.79189098 -0.025186 0.18305101 -0.68141699 0.70863497 -0.0031729999
		 -0.95375597 0.30056399;
	setAttr ".n[7138:7303]" -type "float3"  0.61014301 -0.79189098 -0.025186 0.62515301
		 -0.69382399 0.357481 0.99918598 -0.040335 -7.0000001e-06 0.987414 -0.157397 -0.01546
		 0.94601899 0.052319001 -0.31986001 0.94931901 0.229642 -0.21461 0.987414 -0.157397
		 -0.01546 0.720083 -0.66806501 -0.187537 0.816392 0.129888 -0.562702 0.94601899 0.052319001
		 -0.31986001 0.94601899 0.052319001 -0.31986001 0.816392 0.129888 -0.562702 0.67411602
		 0.49771899 -0.54575002 0.76848298 0.50452203 -0.39356399 0.94931901 0.229642 -0.21461
		 0.94601899 0.052319001 -0.31986001 0.76848298 0.50452203 -0.39356399 0.848369 0.36607701
		 -0.38243699 0.720083 -0.66806501 -0.187537 0.987414 -0.157397 -0.01546 0.91638702
		 -0.382961 -0.116511 0.86797899 -0.49343801 -0.055952001 0.987414 -0.157397 -0.01546
		 0.99918598 -0.040335 -7.0000001e-06 0.95225501 -0.222664 0.20888101 0.91638702 -0.382961
		 -0.116511 0.91638702 -0.382961 -0.116511 0.95225501 -0.222664 0.20888101 0.62515301
		 -0.69382399 0.357481 0.61014301 -0.79189098 -0.025186 0.86797899 -0.49343801 -0.055952001
		 0.91638702 -0.382961 -0.116511 0.61014301 -0.79189098 -0.025186 0.68548799 -0.72419697
		 0.075130001 0.828982 0.25389701 -0.49832299 0.96370798 0.013964 -0.26659399 0.89551598
		 0.14242101 -0.42162499 0.871517 0.257265 -0.41745999 0.96370798 0.013964 -0.26659399
		 0.98163903 0.00041000001 0.190749 0.97564298 -0.196748 0.097012997 0.89551598 0.14242101
		 -0.42162499 0.89551598 0.14242101 -0.42162499 0.97564298 -0.196748 0.097012997 0.99918598
		 -0.040335 -7.0000001e-06 0.94931901 0.229642 -0.21461 0.871517 0.257265 -0.41745999
		 0.89551598 0.14242101 -0.42162499 0.94931901 0.229642 -0.21461 0.848369 0.36607701
		 -0.38243699 -3.5000001e-05 0.48168001 -0.87634701 0.53497499 0.40460801 -0.74168402
		 0.562029 0.370094 -0.73969799 0 0.54868603 -0.83602899 0.53497499 0.40460801 -0.74168402
		 0.828982 0.25389701 -0.49832299 0.871517 0.257265 -0.41745999 0.562029 0.370094 -0.73969799
		 0.562029 0.370094 -0.73969799 0.871517 0.257265 -0.41745999 0.848369 0.36607701 -0.38243699
		 0.44437999 0.47674599 -0.75844502 0 0.54868603 -0.83602899 0.562029 0.370094 -0.73969799
		 0.44437999 0.47674599 -0.75844502 0 0.57403499 -0.81883103 0.71736401 -0.44402301
		 0.53687298 0.33915401 -0.39234799 0.85500699 0.36820799 -0.62312102 0.69003099 0.693703
		 -0.418571 0.58615202 0.33915401 -0.39234799 0.85500699 0 -0.57905197 0.81528997 0
		 -0.753941 0.65694201 0.36820799 -0.62312102 0.69003099 0.36820799 -0.62312102 0.69003099
		 0 -0.753941 0.65694201 0 -0.702586 0.71159798 0.18305101 -0.68141699 0.70863497 0.693703
		 -0.418571 0.58615202 0.36820799 -0.62312102 0.69003099 0.18305101 -0.68141699 0.70863497
		 0.62515301 -0.69382399 0.357481 0.62515301 -0.69382399 0.357481 0.95225501 -0.222664
		 0.20888101 0.923581 -0.21784499 0.315501 0.693703 -0.418571 0.58615202 0.95225501
		 -0.222664 0.20888101 0.99918598 -0.040335 -7.0000001e-06 0.97564298 -0.196748 0.097012997
		 0.923581 -0.21784499 0.315501 0.923581 -0.21784499 0.315501 0.97564298 -0.196748
		 0.097012997 0.98163903 0.00041000001 0.190749 0.95704502 -0.20044 0.20949601 0.693703
		 -0.418571 0.58615202 0.923581 -0.21784499 0.315501 0.95704502 -0.20044 0.20949601
		 0.71736401 -0.44402301 0.53687298 0.67411602 0.49771899 -0.54575002 0.816392 0.129888
		 -0.562702 0.95830297 0.144015 -0.24680801 0.77268302 0.52055103 -0.3633 0.816392
		 0.129888 -0.562702 0.720083 -0.66806501 -0.187537 0.96611798 -0.139825 -0.216947
		 0.95830297 0.144015 -0.24680801 0.95830297 0.144015 -0.24680801 0.96611798 -0.139825
		 -0.216947 0.97490001 -0.145713 -0.16834 0.99129999 0.025583999 -0.129114 0.77268302
		 0.52055103 -0.3633 0.95830297 0.144015 -0.24680801 0.99129999 0.025583999 -0.129114
		 0.791493 0.35754001 -0.49568501 0 0.79835999 -0.60218 0.368018 0.72793001 -0.57851601
		 0.33465901 0.772695 -0.53939402 0 0.79979199 -0.60027701 0.368018 0.72793001 -0.57851601
		 0.67411602 0.49771899 -0.54575002 0.77268302 0.52055103 -0.3633 0.33465901 0.772695
		 -0.53939402 0.33465901 0.772695 -0.53939402 0.77268302 0.52055103 -0.3633 0.791493
		 0.35754001 -0.49568501 0.26282799 0.76782298 -0.58426899 0 0.79979199 -0.60027701
		 0.33465901 0.772695 -0.53939402 0.26282799 0.76782298 -0.58426899 0 0.76528299 -0.64369398
		 0.68548799 -0.72419697 0.075130001 0.321044 -0.92848003 0.18669499 0.357609 -0.93382299
		 0.0095210001 0.71932501 -0.691993 -0.060963999 0.321044 -0.92848003 0.18669499 0
		 -0.97569698 0.21912301 0 -0.99941999 0.034056999 0.357609 -0.93382299 0.0095210001
		 0.357609 -0.93382299 0.0095210001 0 -0.99941999 0.034056999 0 -1 -0.00082199997 0.38483101
		 -0.92265201 -0.024870999 0.71932501 -0.691993 -0.060963999 0.357609 -0.93382299 0.0095210001
		 0.38483101 -0.92265201 -0.024870999 0.74702603 -0.66083801 -0.072420001 0.97490001
		 -0.145713 -0.16834 0.96611798 -0.139825 -0.216947 0.89158201 -0.43160999 -0.137095
		 0.90926701 -0.398592 -0.119825 0.96611798 -0.139825 -0.216947 0.720083 -0.66806501
		 -0.187537 0.86797899 -0.49343801 -0.055952001 0.89158201 -0.43160999 -0.137095 0.89158201
		 -0.43160999 -0.137095 0.86797899 -0.49343801 -0.055952001 0.68548799 -0.72419697
		 0.075130001 0.71932501 -0.691993 -0.060963999 0.90926701 -0.398592 -0.119825 0.89158201
		 -0.43160999 -0.137095 0.71932501 -0.691993 -0.060963999 0.74702603 -0.66083801 -0.072420001
		 0.32980001 0.60156697 0.72756398 0.398729 0.78148103 0.47989801 0.54457599 0.70846498
		 0.44890401 0.48685199 0.53227901 0.69257098;
	setAttr ".n[7304:7469]" -type "float3"  0.65701598 0.585765 0.47456199 0.80637598
		 0.41781601 0.41855299 0.54457599 0.70846498 0.44890401 0.398729 0.78148103 0.47989801
		 0.77241302 0.31302601 0.55262297 0.48685199 0.53227901 0.69257098 0.54457599 0.70846498
		 0.44890401 0.80637598 0.41781601 0.41855299 0.99165797 0.12883 0.0041370001 0.95036
		 0.25667799 0.17587601 0.98160797 0.190879 -0.003207 0.96455503 0.135442 -0.22646999
		 0.95036 0.25667799 0.17587601 0.90807998 0.28249899 0.30916801 0.93963099 0.246585
		 0.237253 0.98160797 0.190879 -0.003207 0.98160797 0.190879 -0.003207 0.93963099 0.246585
		 0.237253 0.96942401 -0.182669 0.16385899 0.97635198 -0.174308 -0.12787899 0.96455503
		 0.135442 -0.22646999 0.98160797 0.190879 -0.003207 0.97635198 -0.174308 -0.12787899
		 0.94831699 -0.129354 -0.289763 -1e-06 0.79741198 -0.60343599 0.211862 0.74268401
		 -0.63524401 0.30983901 0.62772101 -0.71411902 0 0.70183903 -0.71233499 0.211862 0.74268401
		 -0.63524401 0.31337199 0.58551598 -0.74764198 0.54003602 0.46062899 -0.70440203 0.30983901
		 0.62772101 -0.71411902 0.30983901 0.62772101 -0.71411902 0.54003602 0.46062899 -0.70440203
		 0.63992101 0.395818 -0.65865701 0.39239699 0.55470198 -0.73370999 0 0.70183903 -0.71233499
		 0.30983901 0.62772101 -0.71411902 0.39239699 0.55470198 -0.73370999 0 0.636711 -0.77110302
		 0.96942401 -0.182669 0.16385899 0.93963099 0.246585 0.237253 0.86962801 0.228186
		 0.43781099 0.87292302 -0.19003201 0.449325 0.93963099 0.246585 0.237253 0.90807998
		 0.28249899 0.30916801 0.86957002 0.256331 0.42207 0.86962801 0.228186 0.43781099
		 0.86962801 0.228186 0.43781099 0.86957002 0.256331 0.42207 0.82012701 0.198818 0.536529
		 0.79694998 0.14576399 0.58619499 0.87292302 -0.19003201 0.449325 0.86962801 0.228186
		 0.43781099 0.79694998 0.14576399 0.58619499 0.79708898 -0.203462 0.56855297 0.79708898
		 -0.203462 0.56855297 0.60207403 -0.65830499 0.45181999 0.62919301 -0.68896401 0.35978401
		 0.87292302 -0.19003201 0.449325 0.60207403 -0.65830499 0.45181999 0.47210199 -0.81373101
		 0.33906099 0.48458099 -0.78498602 0.385977 0.62919301 -0.68896401 0.35978401 0.62919301
		 -0.68896401 0.35978401 0.48458099 -0.78498602 0.385977 0.56267798 -0.76457101 0.31436399
		 0.69346899 -0.698039 0.178445 0.87292302 -0.19003201 0.449325 0.62919301 -0.68896401
		 0.35978401 0.69346899 -0.698039 0.178445 0.96942401 -0.182669 0.16385899 0.72341901
		 0.351585 0.59418201 0.78667802 0.443699 0.42926499 0.66752398 0.56380802 0.48634601
		 0.58443302 0.431503 0.687199 0.78667802 0.443699 0.42926499 0.79779899 0.47213301
		 0.37497601 0.72375399 0.52613699 0.44649699 0.66752398 0.56380802 0.48634601 0.66752398
		 0.56380802 0.48634601 0.72375399 0.52613699 0.44649699 0.150888 0.75669599 0.63611698
		 0.22539 0.78753 0.57358199 0.58443302 0.431503 0.687199 0.66752398 0.56380802 0.48634601
		 0.22539 0.78753 0.57358199 0.26769799 0.64086002 0.71947002 0.90807998 0.28249899
		 0.30916801 0.86337203 0.36526501 0.34809601 0.85124099 0.32308301 0.41352901 0.86957002
		 0.256331 0.42207 0.86337203 0.36526501 0.34809601 0.79779899 0.47213301 0.37497601
		 0.78667802 0.443699 0.42926499 0.85124099 0.32308301 0.41352901 0.85124099 0.32308301
		 0.41352901 0.78667802 0.443699 0.42926499 0.72341901 0.351585 0.59418201 0.81212699
		 0.26148799 0.52160698 0.86957002 0.256331 0.42207 0.85124099 0.32308301 0.41352901
		 0.81212699 0.26148799 0.52160698 0.82012701 0.198818 0.536529 0.67501199 0.185229
		 0.71417701 0.734707 0.129384 0.665932 0.71941799 0.15934999 0.67605197 0.61968499
		 0.20759 0.756899 0.82012701 0.198818 0.536529 0.81212699 0.26148799 0.52160698 0.71941799
		 0.15934999 0.67605197 0.734707 0.129384 0.665932 0.72341901 0.351585 0.59418201 0.61968499
		 0.20759 0.756899 0.71941799 0.15934999 0.67605197 0.81212699 0.26148799 0.52160698
		 0 -0.69711798 0.71695602 0.134296 -0.70837098 0.69294697 0.157474 -0.88182598 0.44450399
		 0 -0.893318 0.449426 0.134296 -0.70837098 0.69294697 0.208131 -0.760665 0.61487401
		 0.192481 -0.881769 0.43062201 0.157474 -0.88182598 0.44450399 0.157474 -0.88182598
		 0.44450399 0.192481 -0.881769 0.43062201 0.233603 -0.95496303 0.182962 0.202692 -0.96833599
		 0.14574499 0 -0.893318 0.449426 0.157474 -0.88182598 0.44450399 0.202692 -0.96833599
		 0.14574499 0 -0.99088699 0.13469601 0.47210199 -0.81373101 0.33906099 0.287429 -0.92472601
		 0.249533 0.267315 -0.87633997 0.40071201 0.48458099 -0.78498602 0.385977 0.287429
		 -0.92472601 0.249533 0.233603 -0.95496303 0.182962 0.192481 -0.881769 0.43062201
		 0.267315 -0.87633997 0.40071201 0.267315 -0.87633997 0.40071201 0.192481 -0.881769
		 0.43062201 0.208131 -0.760665 0.61487401 0.334519 -0.81657702 0.47042501 0.48458099
		 -0.78498602 0.385977 0.267315 -0.87633997 0.40071201 0.334519 -0.81657702 0.47042501
		 0.56267798 -0.76457101 0.31436399 0.35155201 -0.92516398 -0.14311799 0.30896601 -0.94587803
		 -0.099274002 0.37252 -0.92779303 0.020739 0.44893301 -0.89185703 -0.055238001 0.30896601
		 -0.94587803 -0.099274002 0.233603 -0.95496303 0.182962 0.287429 -0.92472601 0.249533
		 0.37252 -0.92779303 0.020739 0.37252 -0.92779303 0.020739 0.287429 -0.92472601 0.249533
		 0.47210199 -0.81373101 0.33906099 0.51360101 -0.83677101 0.189813 0.44893301 -0.89185703
		 -0.055238001 0.37252 -0.92779303 0.020739 0.51360101 -0.83677101 0.189813 0.59136897
		 -0.80080402 0.094851002 0.59136897 -0.80080402 0.094851002 0.67329401 -0.73895001
		 0.025056999;
	setAttr ".n[7470:7635]" -type "float3"  0.49182799 -0.86103201 -0.12933899 0.44893301
		 -0.89185703 -0.055238001 0.605416 -0.79271197 -0.071264997 0.389808 -0.90748101 -0.15661301
		 0.49182799 -0.86103201 -0.12933899 0.67329401 -0.73895001 0.025056999 0.35155201
		 -0.92516398 -0.14311799 0.44893301 -0.89185703 -0.055238001 0.49182799 -0.86103201
		 -0.12933899 0.389808 -0.90748101 -0.15661301 0.85045499 0.062254999 -0.52235103 0.92739302
		 -0.32020801 -0.193416 0.98905802 -0.14619499 -0.019777 0.94053501 0.067616999 -0.332899
		 0.92739302 -0.32020801 -0.193416 0.84130001 -0.51525998 0.16346601 0.88581002 -0.32669801
		 0.329557 0.98905802 -0.14619499 -0.019777 0.98905802 -0.14619499 -0.019777 0.88581002
		 -0.32669801 0.329557 0.87546003 -0.17058 0.45218599 0.99041802 0.034401 0.133752
		 0.94053501 0.067616999 -0.332899 0.98905802 -0.14619499 -0.019777 0.99041802 0.034401
		 0.133752 0.963072 0.215619 -0.161249 -0.72178602 0.67289603 -0.161974 -0.74375099
		 0.55681002 0.36986199 -0.603719 0.71199799 0.358583 -0.60775697 0.77801198 -0.159152
		 -0.74375099 0.55681002 0.36986199 0.145105 0.16287901 0.97591799 0.40505901 0.13041
		 0.90494198 -0.603719 0.71199799 0.358583 -0.603719 0.71199799 0.358583 0.40505901
		 0.13041 0.90494198 0.53902102 0.064441003 0.83982402 -0.52088797 0.80176502 0.29300001
		 -0.60775697 0.77801198 -0.159152 -0.603719 0.71199799 0.358583 -0.52088797 0.80176502
		 0.29300001 -0.54635 0.83336598 -0.083687 -0.180989 0.54426497 -0.81915802 -0.44795999
		 0.63682401 -0.62752497 -0.43748701 0.68648797 -0.580809 -0.232428 0.60087699 -0.76480299
		 -0.44795999 0.63682401 -0.62752497 -0.72178602 0.67289603 -0.161974 -0.60775697 0.77801198
		 -0.159152 -0.43748701 0.68648797 -0.580809 -0.43748701 0.68648797 -0.580809 -0.60775697
		 0.77801198 -0.159152 -0.54635 0.83336598 -0.083687 -0.44903299 0.79225898 -0.41315201
		 -0.232428 0.60087699 -0.76480299 -0.43748701 0.68648797 -0.580809 -0.44903299 0.79225898
		 -0.41315201 -0.18069001 0.72951299 -0.65966803 0.436084 0.128988 -0.89061397 0.106875
		 0.35120499 -0.930179 0.048797999 0.472177 -0.88015199 0.40486699 0.26679799 -0.874587
		 0.106875 0.35120499 -0.930179 -0.180989 0.54426497 -0.81915802 -0.232428 0.60087699
		 -0.76480299 0.048797999 0.472177 -0.88015199 0.048797999 0.472177 -0.88015199 -0.232428
		 0.60087699 -0.76480299 -0.18069001 0.72951299 -0.65966803 0.121896 0.58703399 -0.80033302
		 0.40486699 0.26679799 -0.874587 0.048797999 0.472177 -0.88015199 0.121896 0.58703399
		 -0.80033302 0.43935201 0.42600799 -0.790878 0.84735698 -0.227267 0.47993401 0.71227503
		 -0.013813 -0.701765 0.76035398 0.118167 -0.63866901 0.76918799 -0.221946 0.59924102
		 0.71227503 -0.013813 -0.701765 0.436084 0.128988 -0.89061397 0.40486699 0.26679799
		 -0.874587 0.76035398 0.118167 -0.63866901 0.76035398 0.118167 -0.63866901 0.40486699
		 0.26679799 -0.874587 0.43935201 0.42600799 -0.790878 0.73633999 0.33742401 -0.58647102
		 0.76918799 -0.221946 0.59924102 0.76035398 0.118167 -0.63866901 0.73633999 0.33742401
		 -0.58647102 0.760562 -0.134086 0.63526899 0.55796099 -0.32616001 0.76308602 0.61753201
		 -0.25333601 0.74463099 0.34122601 -0.255514 0.90458697 0.267279 -0.31805 0.90961897
		 0.61753201 -0.25333601 0.74463099 0.657942 -0.206274 0.72426701 0.429625 -0.206163
		 0.87915802 0.34122601 -0.255514 0.90458697 0.34122601 -0.255514 0.90458697 0.429625
		 -0.206163 0.87915802 0.84735698 -0.227267 0.47993401 0.76918799 -0.221946 0.59924102
		 0.267279 -0.31805 0.90961897 0.34122601 -0.255514 0.90458697 0.76918799 -0.221946
		 0.59924102 0.760562 -0.134086 0.63526899 0.145105 0.16287901 0.97591799 0.78851098
		 -0.303058 0.53517002 0.78349799 -0.36294499 0.50438201 0.40505901 0.13041 0.90494198
		 0.78851098 -0.303058 0.53517002 0.657942 -0.206274 0.72426701 0.61753201 -0.25333601
		 0.74463099 0.78349799 -0.36294499 0.50438201 0.78349799 -0.36294499 0.50438201 0.61753201
		 -0.25333601 0.74463099 0.55796099 -0.32616001 0.76308602 0.75916201 -0.42888501 0.48962301
		 0.40505901 0.13041 0.90494198 0.78349799 -0.36294499 0.50438201 0.75916201 -0.42888501
		 0.48962301 0.53902102 0.064441003 0.83982402 0.910734 0.368132 0.187194 0.94254899
		 0.33406499 -0.001233 0.96038997 0.151113 0.234127 0.93105298 0.17199799 0.32180199
		 0.94254899 0.33406499 -0.001233 0.963072 0.215619 -0.161249 0.99041802 0.034401 0.133752
		 0.96038997 0.151113 0.234127 0.96038997 0.151113 0.234127 0.99041802 0.034401 0.133752
		 0.87546003 -0.17058 0.45218599 0.843337 -0.088636003 0.53002501 0.93105298 0.17199799
		 0.32180199 0.96038997 0.151113 0.234127 0.843337 -0.088636003 0.53002501 0.80473399
		 -0.075925 0.58876002 0.53443903 0.83667803 0.119773 0.28987601 0.95113999 0.106323
		 0.31052899 0.941818 0.12864999 0.53778201 0.82686198 0.164588 0.28987601 0.95113999
		 0.106323 0 0.995767 0.091913 0 0.99483103 0.101541 0.31052899 0.941818 0.12864999
		 0.31052899 0.941818 0.12864999 0 0.99483103 0.101541 0 0.99755502 -0.069885001 0.363895
		 0.93144 0.00056000001 0.53778201 0.82686198 0.164588 0.31052899 0.941818 0.12864999
		 0.363895 0.93144 0.00056000001 0.57356602 0.81138003 0.112627 0.99300098 0.062385
		 0.100287 0.99682498 0.03946 -0.069164999 0.97352898 0.228554 0.002073 0.95060998
		 0.27078199 0.151714 0.99682498 0.03946 -0.069164999 0.98822099 -0.057658002 -0.14175899
		 0.98256701 0.17826299 -0.052774999 0.97352898 0.228554 0.002073 0.97352898 0.228554
		 0.002073 0.98256701 0.17826299 -0.052774999 0.90894401 0.41591001 0.028968001 0.887757
		 0.45072401 0.093459003;
	setAttr ".n[7636:7801]" -type "float3"  0.95060998 0.27078199 0.151714 0.97352898
		 0.228554 0.002073 0.887757 0.45072401 0.093459003 0.86019099 0.47421801 0.18759 0.90894401
		 0.41591001 0.028968001 0.74820501 0.65674901 0.094180003 0.72932702 0.66628802 0.155376
		 0.887757 0.45072401 0.093459003 0.74820501 0.65674901 0.094180003 0.53443903 0.83667803
		 0.119773 0.53778201 0.82686198 0.164588 0.72932702 0.66628802 0.155376 0.72932702
		 0.66628802 0.155376 0.53778201 0.82686198 0.164588 0.57356602 0.81138003 0.112627
		 0.72597599 0.66408002 0.178762 0.887757 0.45072401 0.093459003 0.72932702 0.66628802
		 0.155376 0.72597599 0.66408002 0.178762 0.86019099 0.47421801 0.18759 0.98822099
		 -0.057658002 -0.14175899 0.916269 -0.142465 -0.37437201 0.65127498 -0.160412 -0.74169302
		 0.87340599 -0.351504 -0.337055 0.86309099 -0.096522003 -0.49574 0.56236702 -0.022032
		 -0.826594 0.65127498 -0.160412 -0.74169302 0.916269 -0.142465 -0.37437201 0.64146203
		 -0.36892501 -0.67262298 0.87340599 -0.351504 -0.337055 0.65127498 -0.160412 -0.74169302
		 0.56236702 -0.022032 -0.826594 0.99300098 0.062385 0.100287 0.991485 -0.113503 0.063827999
		 0.98688197 -0.113337 -0.114971 0.99682498 0.03946 -0.069164999 0.991485 -0.113503
		 0.063827999 0.97986102 -0.19269601 0.052356001 0.97506201 -0.159438 -0.154385 0.98688197
		 -0.113337 -0.114971 0.98688197 -0.113337 -0.114971 0.97506201 -0.159438 -0.154385
		 0.86309099 -0.096522003 -0.49574 0.916269 -0.142465 -0.37437201 0.99682498 0.03946
		 -0.069164999 0.98688197 -0.113337 -0.114971 0.916269 -0.142465 -0.37437201 0.98822099
		 -0.057658002 -0.14175899 0.99300098 0.062385 0.100287 0.96294701 0.054056 0.26421699
		 0.956999 -0.147365 0.249871 0.991485 -0.113503 0.063827999 0.96294701 0.054056 0.26421699
		 0.92511803 -0.010965 0.37952101 0.86899298 -0.249063 0.42757401 0.956999 -0.147365
		 0.249871 0.956999 -0.147365 0.249871 0.86899298 -0.249063 0.42757401 0.76868302 -0.36864901
		 0.522708 0.92816901 -0.25378999 0.272199 0.991485 -0.113503 0.063827999 0.956999
		 -0.147365 0.249871 0.92816901 -0.25378999 0.272199 0.97986102 -0.19269601 0.052356001
		 0.76868302 -0.36864901 0.522708 0.70004201 -0.38267499 0.60290998 0.90972197 -0.28492799
		 0.30202901 0.92816901 -0.25378999 0.272199 0.70004201 -0.38267499 0.60290998 0.69104803
		 -0.33980501 0.637954 0.91183197 -0.25966501 0.318019 0.90972197 -0.28492799 0.30202901
		 0.90972197 -0.28492799 0.30202901 0.91183197 -0.25966501 0.318019 0.98102897 -0.188159
		 0.046666998 0.97725099 -0.206113 0.049984001 0.92816901 -0.25378999 0.272199 0.90972197
		 -0.28492799 0.30202901 0.97725099 -0.206113 0.049984001 0.97986102 -0.19269601 0.052356001
		 0.99010497 -0.12676699 0.060183998 0.98682398 -0.153869 0.050030999 0.92117602 -0.195623
		 0.33640099 0.92993999 -0.148661 0.336321 0.98682398 -0.153869 0.050030999 0.98102897
		 -0.188159 0.046666998 0.91183197 -0.25966501 0.318019 0.92117602 -0.195623 0.33640099
		 0.92117602 -0.195623 0.33640099 0.91183197 -0.25966501 0.318019 0.69104803 -0.33980501
		 0.637954 0.70401102 -0.25009999 0.66469502 0.92993999 -0.148661 0.336321 0.92117602
		 -0.195623 0.33640099 0.70401102 -0.25009999 0.66469502 0.72432601 -0.171122 0.66788399
		 0.898673 -0.104053 -0.42609799 0.98988998 -0.13249999 -0.050604001 0.954714 -0.12966201
		 0.26778299 0.97829503 -0.097939998 0.182613 0.98988998 -0.13249999 -0.050604001 0.99010497
		 -0.12676699 0.060183998 0.92993999 -0.148661 0.336321 0.954714 -0.12966201 0.26778299
		 0.954714 -0.12966201 0.26778299 0.92993999 -0.148661 0.336321 0.72432601 -0.171122
		 0.66788399 0.76546001 -0.128841 0.63045299 0.97829503 -0.097939998 0.182613 0.954714
		 -0.12966201 0.26778299 0.76546001 -0.128841 0.63045299 0.81670499 -0.098748997 0.56854397
		 0.84421599 -0.075585 -0.53064799 0.87758398 -0.051628001 -0.47663501 0.98936802 -0.040668
		 0.139636 0.99506098 0.066996999 0.073247999 0.87758398 -0.051628001 -0.47663501 0.898673
		 -0.104053 -0.42609799 0.97829503 -0.097939998 0.182613 0.98936802 -0.040668 0.139636
		 0.98936802 -0.040668 0.139636 0.97829503 -0.097939998 0.182613 0.81670499 -0.098748997
		 0.56854397 0.86339003 -0.037912998 0.50310999 0.99506098 0.066996999 0.073247999
		 0.98936802 -0.040668 0.139636 0.86339003 -0.037912998 0.50310999 0.89878398 0.131228
		 0.418291 -0.905047 -0.036152001 -0.42377299 -0.894292 -0.013823 -0.44727099 -0.99959898
		 0.023173001 0.016284 -0.99877298 -0.022686001 0.044025999 -0.894292 -0.013823 -0.44727099
		 -0.86671197 -0.036621999 -0.497462 -0.992378 0.095799997 -0.077519 -0.99959898 0.023173001
		 0.016284 -0.99959898 0.023173001 0.016284 -0.992378 0.095799997 -0.077519 -0.90613699
		 0.184159 0.38079101 -0.90169901 0.039205 0.43058401 -0.99877298 -0.022686001 0.044025999
		 -0.99959898 0.023173001 0.016284 -0.90169901 0.039205 0.43058401 -0.90376699 -0.026396999
		 0.42721 -0.84717202 -0.22944701 -0.47922099 -0.84923297 -0.258809 -0.46024001 -0.99877602
		 -0.042107999 0.025939001 -0.99583203 -0.090186998 0.013635 -0.84923297 -0.258809
		 -0.46024001 -0.80959702 -0.27499199 -0.51858699 -0.99938601 0.024385 -0.025163 -0.99877602
		 -0.042107999 0.025939001 -0.99877602 -0.042107999 0.025939001 -0.99938601 0.024385
		 -0.025163 -0.88701302 0.18435299 0.423345 -0.90843999 0.065426998 0.41286299 -0.99583203
		 -0.090186998 0.013635 -0.99877602 -0.042107999 0.025939001 -0.90843999 0.065426998
		 0.41286299 -0.923388 -0.037503999 0.38203201 0.86735398 -0.16575401 -0.46927801 0.99874502
		 -0.038764998 0.031707998 0.99862897 -0.0075739999 0.051798001 0.861628 -0.240448
		 -0.44696999 0.99874502 -0.038764998 0.031707998 0.92800301 0.0017350001 0.37256899;
	setAttr ".n[7802:7951]" -type "float3"  0.90581602 0.096073002 0.41263399 0.99862897
		 -0.0075739999 0.051798001 0.99862897 -0.0075739999 0.051798001 0.90581602 0.096073002
		 0.41263399 0.88083398 0.19692899 0.43052399 0.999134 0.038943 -0.014638 0.861628
		 -0.240448 -0.44696999 0.99862897 -0.0075739999 0.051798001 0.999134 0.038943 -0.014638
		 0.80799401 -0.27249801 -0.52239001 0.837623 0.145586 -0.52649099 0.99501598 -0.028754
		 -0.095477 0.99908 -0.042199001 -0.0076060002 0.866157 0.042502999 -0.49796101 0.99501598
		 -0.028754 -0.095477 0.92303598 -0.215863 0.318445 0.93110102 -0.122927 0.34342399
		 0.99908 -0.042199001 -0.0076060002 0.99908 -0.042199001 -0.0076060002 0.93110102
		 -0.122927 0.34342399 0.92800301 0.0017350001 0.37256899 0.99874502 -0.038764998 0.031707998
		 0.866157 0.042502999 -0.49796101 0.99908 -0.042199001 -0.0076060002 0.99874502 -0.038764998
		 0.031707998 0.86735398 -0.16575401 -0.46927801 0.81559098 -0.065085001 -0.57495701
		 0.963507 -0.064837001 -0.25971201 0.97844499 -0.018850001 -0.205644 0.816603 0.103373
		 -0.56786799 0.963507 -0.064837001 -0.25971201 0.99429399 -0.095182002 -0.04817 0.99106699
		 -0.129228 0.032974999 0.97844499 -0.018850001 -0.205644 0.97844499 -0.018850001 -0.205644
		 0.99106699 -0.129228 0.032974999 0.92303598 -0.215863 0.318445 0.99501598 -0.028754
		 -0.095477 0.816603 0.103373 -0.56786799 0.97844499 -0.018850001 -0.205644 0.99501598
		 -0.028754 -0.095477 0.837623 0.145586 -0.52649099 0.83664501 -0.15701599 -0.52475798
		 0.96935803 -0.033259999 -0.243389 0.96463001 -0.103193 -0.24257 0.82209897 -0.205506
		 -0.53096199 0.96935803 -0.033259999 -0.243389 0.99897301 -0.0023390001 -0.045240998
		 0.99622601 -0.081465997 -0.029943001 0.96463001 -0.103193 -0.24257 0.96463001 -0.103193
		 -0.24257 0.99622601 -0.081465997 -0.029943001 0.99429399 -0.095182002 -0.04817 0.963507
		 -0.064837001 -0.25971201 0.82209897 -0.205506 -0.53096199 0.96463001 -0.103193 -0.24257
		 0.963507 -0.064837001 -0.25971201 0.81559098 -0.065085001 -0.57495701 0.9831 0.133393
		 -0.125385 0.99311602 0.077613004 -0.087727003 0.95508099 0.055215001 -0.29115701
		 0.93326902 0.093460001 -0.34680599 0.99311602 0.077613004 -0.087727003 0.99897301
		 -0.0023390001 -0.045240998 0.96935803 -0.033259999 -0.243389 0.95508099 0.055215001
		 -0.29115701 0.95508099 0.055215001 -0.29115701 0.96935803 -0.033259999 -0.243389
		 0.83664501 -0.15701599 -0.52475798 0.81603003 -0.050659999 -0.57578498 0.93326902
		 0.093460001 -0.34680599 0.95508099 0.055215001 -0.29115701 0.81603003 -0.050659999
		 -0.57578498 0.78236598 -0.030727001 -0.62206101 0.78236598 -0.030727001 -0.62206101
		 0.80914998 0.026745001 -0.58699399 0.92196703 0.158259 -0.353457 0.93326902 0.093460001
		 -0.34680599 0.80914998 0.026745001 -0.58699399 0.82568598 0.19254 -0.53025502 0.88025898
		 0.33287799 -0.33813599 0.92196703 0.158259 -0.353457 0.92196703 0.158259 -0.353457
		 0.88025898 0.33287799 -0.33813599 0.90560502 0.393033 -0.15938801 0.96403402 0.22372501
		 -0.143474 0.93326902 0.093460001 -0.34680599 0.92196703 0.158259 -0.353457 0.96403402
		 0.22372501 -0.143474 0.9831 0.133393 -0.125385 0.82568598 0.19254 -0.53025502 0.76961398
		 0.42730001 -0.47445601 0.77369601 0.54123598 -0.32932901 0.88025898 0.33287799 -0.33813599
		 0.76961398 0.42730001 -0.47445601 0.59851801 0.66283703 -0.44991401 0.58618701 0.740641
		 -0.32838401 0.77369601 0.54123598 -0.32932901 0.77369601 0.54123598 -0.32932901 0.58618701
		 0.740641 -0.32838401 0.58783698 0.78446501 -0.197639 0.78367698 0.59532601 -0.17730799
		 0.88025898 0.33287799 -0.33813599 0.77369601 0.54123598 -0.32932901 0.78367698 0.59532601
		 -0.17730799 0.90560502 0.393033 -0.15938801 0.59851801 0.66283703 -0.44991401 0.33574599
		 0.83291 -0.43992701 0.318259 0.88861603 -0.33026299 0.58618701 0.740641 -0.32838401
		 0.33574599 0.83291 -0.43992701 0 0.89988798 -0.436122 0 0.94380498 -0.33050299 0.318259
		 0.88861603 -0.33026299 0.318259 0.88861603 -0.33026299 0 0.94380498 -0.33050299 0
		 0.97395498 -0.226742 0.31618199 0.92333102 -0.217921 0.58618701 0.740641 -0.32838401
		 0.318259 0.88861603 -0.33026299 0.31618199 0.92333102 -0.217921 0.58783698 0.78446501
		 -0.197639 0.82568598 0.19254 -0.53025502 0.80914998 0.026745001 -0.58699399 0.69271898
		 -0.14895099 -0.70565802 0.79200798 0.01244 -0.61038399 0.80914998 0.026745001 -0.58699399
		 0.78236598 -0.030727001 -0.62206101 0.614568 -0.225835 -0.75584698 0.69271898 -0.14895099
		 -0.70565802 0.69271898 -0.14895099 -0.70565802 0.614568 -0.225835 -0.75584698 0.95929998
		 -0.275691 0.061145 0.83265603 -0.23605201 -0.50096297 0.79200798 0.01244 -0.61038399
		 0.69271898 -0.14895099 -0.70565802 0.83265603 -0.23605201 -0.50096297 0.87515497
		 -0.078135997 -0.477492 0.32660401 -0.670672 0.66597903 0.60620201 -0.56246197 0.56227797
		 0.47377101 -0.640257 0.60465902 0.30942699 -0.75673002 0.57586002 0.72726899 -0.32848999
		 0.60263902 0.46707201 -0.48192099 0.74134803 0.47377101 -0.640257 0.60465902 0.60620201
		 -0.56246197 0.56227797 0.23996399 -0.65250599 0.718786 0.30942699 -0.75673002 0.57586002
		 0.47377101 -0.640257 0.60465902 0.46707201 -0.48192099 0.74134803;
	setAttr -s 1988 -ch 7952 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 -7 7 8 9
		mu 0 4 2 5 6 7
		f 4 -3 -10 10 11
		mu 0 4 3 2 7 8
		f 4 12 13 14 -12
		mu 0 4 8 9 10 3
		f 4 15 16 17 -14
		mu 0 4 9 11 12 10
		f 4 -18 18 19 20
		mu 0 4 10 12 13 14
		f 4 -15 -21 21 -4
		mu 0 4 3 10 14 0
		f 4 22 23 24 -6
		mu 0 4 4 15 16 5
		f 4 25 26 27 -24
		mu 0 4 15 17 18 16
		f 4 -28 28 29 30
		mu 0 4 16 18 19 20
		f 4 -25 -31 31 -8
		mu 0 4 5 16 20 6
		f 4 32 33 34 -27
		mu 0 4 17 21 22 18
		f 4 35 36 37 -34
		mu 0 4 21 23 24 22
		f 4 -38 38 39 40
		mu 0 4 22 24 25 26
		f 4 -35 -41 41 -29
		mu 0 4 18 22 26 19
		f 4 42 43 44 -20
		mu 0 4 13 27 28 14
		f 4 45 46 47 -44
		mu 0 4 27 29 30 28
		f 4 -48 48 -5 49
		mu 0 4 28 30 4 1
		f 4 -45 -50 -1 -22
		mu 0 4 14 28 1 0
		f 4 50 51 52 53
		mu 0 4 31 32 33 34
		f 4 54 55 56 -52
		mu 0 4 32 35 36 33
		f 4 -57 57 58 59
		mu 0 4 33 36 37 38
		f 4 -53 -60 60 61
		mu 0 4 34 33 38 39
		f 4 -61 62 63 64
		mu 0 4 39 38 40 41
		f 4 -59 65 66 -63
		mu 0 4 38 37 42 40
		f 4 -67 67 68 69
		mu 0 4 40 42 43 44
		f 4 -64 -70 70 71
		mu 0 4 41 40 44 45
		f 4 72 73 74 75
		mu 0 4 46 47 48 49
		f 4 -71 76 -74 77
		mu 0 4 45 44 48 47
		f 4 78 -75 -77 -69
		mu 0 4 43 49 48 44
		f 4 79 80 81 -47
		mu 0 4 29 50 51 30
		f 4 82 -36 83 -81
		mu 0 4 50 23 21 51
		f 4 -84 -33 -26 84
		mu 0 4 51 21 17 15
		f 4 -82 -85 -23 -49
		mu 0 4 30 51 15 4
		f 4 85 86 87 88
		mu 0 4 52 53 54 55
		f 4 89 90 91 -87
		mu 0 4 53 56 57 54
		f 4 -92 92 93 94
		mu 0 4 54 57 58 59
		f 4 -88 -95 95 96
		mu 0 4 55 54 59 60
		f 4 97 98 99 100
		mu 0 4 61 62 63 64
		f 4 101 102 103 -99
		mu 0 4 62 65 66 63
		f 4 -104 104 -90 105
		mu 0 4 63 66 56 53
		f 4 -100 -106 -86 106
		mu 0 4 64 63 53 52
		f 4 107 108 109 110
		mu 0 4 67 68 69 70
		f 4 111 112 113 -109
		mu 0 4 68 71 72 69
		f 4 -114 114 115 116
		mu 0 4 69 72 73 74
		f 4 -110 -117 117 118
		mu 0 4 70 69 74 75
		f 4 -112 119 120 121
		mu 0 4 71 68 76 77
		f 4 -108 122 123 -120
		mu 0 4 68 67 78 76
		f 4 -124 124 -96 125
		mu 0 4 76 78 60 59
		f 4 -121 -126 -94 126
		mu 0 4 77 76 59 58
		f 4 127 128 129 -56
		mu 0 4 35 79 80 36
		f 4 130 -101 131 -129
		mu 0 4 79 61 64 80
		f 4 -132 -107 132 133
		mu 0 4 80 64 52 81
		f 4 -130 -134 134 -58
		mu 0 4 36 80 81 37
		f 4 135 136 137 138
		mu 0 4 46 82 83 84
		f 4 139 -111 140 -137
		mu 0 4 82 67 70 83
		f 4 -141 -119 141 142
		mu 0 4 83 70 75 85
		f 4 -138 -143 143 144
		mu 0 4 84 83 85 86
		f 4 -140 145 146 -123
		mu 0 4 67 82 87 78
		f 4 -136 -76 147 -146
		mu 0 4 82 46 49 87
		f 4 -148 -79 148 149
		mu 0 4 87 49 43 88
		f 4 -147 -150 150 -125
		mu 0 4 78 87 88 60
		f 4 -135 151 152 -66
		mu 0 4 37 81 89 42
		f 4 -133 -89 153 -152
		mu 0 4 81 52 55 89
		f 4 -154 -97 -151 154
		mu 0 4 89 55 60 88
		f 4 -153 -155 -149 -68
		mu 0 4 42 89 88 43
		f 4 155 156 157 158
		mu 0 4 90 91 92 93
		f 4 159 160 161 -157
		mu 0 4 91 94 95 92
		f 4 -162 162 163 164
		mu 0 4 92 95 96 97
		f 4 -158 -165 165 166
		mu 0 4 93 92 97 98
		f 4 167 168 169 170
		mu 0 4 99 100 101 102
		f 4 171 172 173 -169
		mu 0 4 100 103 104 101
		f 4 -174 174 175 176
		mu 0 4 101 104 105 106
		f 4 -170 -177 177 178
		mu 0 4 102 101 106 107
		f 4 179 180 181 182
		mu 0 4 108 109 110 111
		f 4 183 184 185 -181
		mu 0 4 109 112 113 110
		f 4 -186 186 -172 187
		mu 0 4 110 113 103 100
		f 4 -182 -188 -168 188
		mu 0 4 111 110 100 99
		f 4 189 190 191 -180
		mu 0 4 108 114 115 109
		f 4 192 193 194 -191
		mu 0 4 114 116 117 115
		f 4 -195 195 196 197
		mu 0 4 115 117 118 119
		f 4 -192 -198 198 -184
		mu 0 4 109 115 119 112
		f 4 199 200 201 202
		mu 0 4 120 121 122 123
		f 4 203 204 205 -201
		mu 0 4 121 124 125 122
		f 4 -206 206 207 208
		mu 0 4 122 125 126 127
		f 4 -202 -209 209 210
		mu 0 4 123 122 127 128
		f 4 211 212 213 214
		mu 0 4 126 129 130 131
		f 4 215 216 -213 217
		mu 0 4 132 133 130 129
		f 4 218 -214 -217 219
		mu 0 4 134 131 130 133
		f 4 -220 220 221 222
		mu 0 4 135 136 137 138
		f 4 -216 -160 223 -221
		mu 0 4 136 94 91 137
		f 4 -224 -156 224 225
		mu 0 4 137 91 90 139
		f 4 -222 -226 226 227
		mu 0 4 138 137 139 140
		f 4 228 229 230 231
		mu 0 4 141 142 143 144
		f 4 232 233 234 -230
		mu 0 4 142 145 146 143
		f 4 -235 235 236 237
		mu 0 4 143 146 147 148
		f 4 -231 -238 238 239
		mu 0 4 144 143 148 149
		f 4 240 241 242 243
		mu 0 4 150 151 152 153
		f 4 244 245 246 -242
		mu 0 4 151 154 155 152
		f 4 -247 247 -233 248
		mu 0 4 152 155 145 142
		f 4 -243 -249 -229 249
		mu 0 4 153 152 142 141
		f 4 -245 250 251 252
		mu 0 4 154 151 156 157
		f 4 -241 253 254 -251
		mu 0 4 151 150 158 156
		f 4 -255 255 256 257
		mu 0 4 156 158 159 160
		f 4 -252 -258 258 259
		mu 0 4 157 156 160 161
		f 4 -259 260 261 262
		mu 0 4 161 160 162 163
		f 4 -257 263 264 -261
		mu 0 4 160 159 164 162
		f 4 -265 265 266 267
		mu 0 4 162 164 165 166
		f 4 -262 -268 268 269
		mu 0 4 163 162 166 167
		f 4 270 271 272 273
		mu 0 4 168 169 170 171
		f 4 274 275 276 -272
		mu 0 4 169 172 173 170
		f 4 -277 277 -269 278
		mu 0 4 170 173 167 166
		f 4 -273 -279 -267 279
		mu 0 4 171 170 166 165
		f 4 280 281 282 283
		mu 0 4 174 175 176 177
		f 4 284 285 286 -282
		mu 0 4 175 178 179 176
		f 4 -287 287 -275 288
		mu 0 4 176 179 172 169
		f 4 -283 -289 -271 289
		mu 0 4 177 176 169 168
		f 4 290 291 292 293
		mu 0 4 180 181 182 183
		f 4 294 -232 295 -292
		mu 0 4 181 141 144 182
		f 4 -296 -240 296 297
		mu 0 4 182 144 149 184
		f 4 -293 -298 298 299
		mu 0 4 183 182 184 185
		f 4 300 301 302 303
		mu 0 4 186 187 188 189
		f 4 304 -244 305 -302
		mu 0 4 187 150 153 188
		f 4 -306 -250 -295 306
		mu 0 4 188 153 141 181
		f 4 -303 -307 -291 307
		mu 0 4 189 188 181 180
		f 4 308 309 310 311
		mu 0 4 190 191 192 193
		f 4 312 -256 313 -310
		mu 0 4 191 159 158 192
		f 4 -314 -254 -305 314
		mu 0 4 192 158 150 187
		f 4 -311 -315 -301 315
		mu 0 4 193 192 187 186
		f 4 316 317 318 -290
		mu 0 4 168 194 195 177
		f 4 319 320 321 -318
		mu 0 4 194 196 197 195
		f 4 -322 322 323 324
		mu 0 4 195 197 198 199
		f 4 -319 -325 325 -284
		mu 0 4 177 195 199 174
		f 4 326 327 328 329
		mu 0 4 200 201 202 203
		f 4 330 331 332 -328
		mu 0 4 201 204 205 202
		f 4 -333 333 334 335
		mu 0 4 202 205 206 207
		f 4 -329 -336 336 337
		mu 0 4 203 202 207 208
		f 4 338 339 340 -332
		mu 0 4 204 209 210 205
		f 4 341 342 343 -340
		mu 0 4 209 211 212 210
		f 4 -344 344 345 346
		mu 0 4 210 212 213 214
		f 4 -341 -347 347 -334
		mu 0 4 205 210 214 206
		f 4 348 349 350 351
		mu 0 4 215 216 217 218
		f 4 352 -345 353 -350
		mu 0 4 216 219 220 217
		f 4 -354 -343 354 355
		mu 0 4 217 220 221 222
		f 4 -351 -356 356 357
		mu 0 4 218 217 222 223
		f 4 358 359 360 361
		mu 0 4 224 225 226 227
		f 4 362 363 364 -360
		mu 0 4 225 228 229 226
		f 4 -365 365 366 367
		mu 0 4 226 229 230 231
		f 4 -361 -368 368 369
		mu 0 4 227 226 231 232
		f 4 370 371 372 373
		mu 0 4 233 234 235 236
		f 4 374 375 376 -372
		mu 0 4 234 237 238 235
		f 4 -377 377 -363 378
		mu 0 4 235 238 228 225
		f 4 -373 -379 -359 379
		mu 0 4 236 235 225 224
		f 4 380 381 382 -346
		mu 0 4 213 239 240 214
		f 4 383 384 385 -382
		mu 0 4 239 241 242 240
		f 4 -386 386 387 388
		mu 0 4 240 242 243 244
		f 4 -383 -389 389 -348
		mu 0 4 214 240 244 206
		f 4 390 391 392 393
		mu 0 4 245 246 247 248
		f 4 394 395 396 -392
		mu 0 4 246 249 250 247
		f 4 -397 397 398 399
		mu 0 4 247 250 251 252
		f 4 -393 -400 400 401
		mu 0 4 248 247 252 253
		f 4 402 403 404 405
		mu 0 4 254 255 256 257
		f 4 406 -394 407 -404
		mu 0 4 255 245 248 256
		f 4 -408 -402 408 409
		mu 0 4 256 248 253 258
		f 4 -405 -410 410 411
		mu 0 4 257 256 258 223
		f 4 412 413 414 415
		mu 0 4 259 260 261 262
		f 4 416 417 418 -414
		mu 0 4 260 263 264 261
		f 4 -419 419 -342 420
		mu 0 4 261 264 211 209
		f 4 -415 -421 -339 421
		mu 0 4 262 261 209 204
		f 4 422 423 424 425
		mu 0 4 265 266 267 268
		f 4 426 -416 427 -424
		mu 0 4 266 259 262 267
		f 4 -428 -422 -331 428
		mu 0 4 267 262 204 201
		f 4 -425 -429 -327 429
		mu 0 4 268 267 201 200
		f 4 430 431 432 433
		mu 0 4 269 270 271 272
		f 4 434 435 436 -432
		mu 0 4 270 273 274 271
		f 4 -437 437 -395 438
		mu 0 4 271 274 249 246
		f 4 -433 -439 -391 439
		mu 0 4 272 271 246 245
		f 4 440 441 442 443
		mu 0 4 275 276 277 278
		f 4 444 -434 445 -442
		mu 0 4 276 269 272 277
		f 4 -446 -440 -407 446
		mu 0 4 277 272 245 255
		f 4 -443 -447 -403 447
		mu 0 4 278 277 255 254
		f 4 448 449 450 -448
		mu 0 4 254 279 280 278
		f 4 451 452 453 -450
		mu 0 4 279 281 282 280
		f 4 -454 454 455 456
		mu 0 4 280 282 283 284
		f 4 -451 -457 457 -444
		mu 0 4 278 280 284 275
		f 4 458 459 460 461
		mu 0 4 285 286 287 288
		f 4 462 -455 463 -460
		mu 0 4 286 289 290 287
		f 4 -464 -453 -417 464
		mu 0 4 287 290 263 260
		f 4 -461 -465 -413 465
		mu 0 4 288 287 260 259
		f 4 466 467 468 469
		mu 0 4 291 292 293 294
		f 4 470 -462 471 -468
		mu 0 4 292 285 288 293
		f 4 -472 -466 -427 472
		mu 0 4 293 288 259 266
		f 4 -469 -473 -423 473
		mu 0 4 294 293 266 265
		f 4 474 475 476 477
		mu 0 4 295 296 297 298
		f 4 478 479 480 -476
		mu 0 4 296 299 300 297
		f 4 -481 481 -435 482
		mu 0 4 297 300 273 270
		f 4 -477 -483 -431 483
		mu 0 4 298 297 270 269
		f 4 484 485 486 487
		mu 0 4 301 302 303 304
		f 4 488 -478 489 -486
		mu 0 4 302 295 298 303
		f 4 -490 -484 -445 490
		mu 0 4 303 298 269 276
		f 4 -487 -491 -441 491
		mu 0 4 304 303 276 275
		f 4 -458 492 493 -492
		mu 0 4 275 284 305 304
		f 4 -456 494 495 -493
		mu 0 4 284 283 306 305
		f 4 -496 496 497 498
		mu 0 4 305 306 307 308
		f 4 -494 -499 499 -488
		mu 0 4 304 305 308 301
		f 4 500 501 502 503
		mu 0 4 309 310 311 312
		f 4 504 -497 505 -502
		mu 0 4 310 313 314 311
		f 4 -506 -495 -463 506
		mu 0 4 311 314 289 286
		f 4 -503 -507 -459 507
		mu 0 4 312 311 286 285
		f 4 508 509 510 511
		mu 0 4 315 316 317 318
		f 4 512 -504 513 -510
		mu 0 4 316 309 312 317
		f 4 -514 -508 -471 514
		mu 0 4 317 312 285 292
		f 4 -511 -515 -467 515
		mu 0 4 318 317 292 291
		f 4 516 517 518 519
		mu 0 4 319 320 321 322
		f 4 -482 520 -518 521
		mu 0 4 273 300 321 320
		f 4 522 -519 -521 -480
		mu 0 4 299 322 321 300
		f 4 523 524 525 526
		mu 0 4 323 324 325 326
		f 4 527 528 529 -525
		mu 0 4 324 327 328 325
		f 4 -530 530 -479 531
		mu 0 4 325 328 299 296
		f 4 -526 -532 -475 532
		mu 0 4 326 325 296 295
		f 4 533 534 535 536
		mu 0 4 329 330 331 332
		f 4 537 -527 538 -535
		mu 0 4 330 323 326 331
		f 4 -539 -533 -489 539
		mu 0 4 331 326 295 302
		f 4 -536 -540 -485 540
		mu 0 4 332 331 302 301
		f 4 -500 541 542 -541
		mu 0 4 301 308 333 332
		f 4 -498 543 544 -542
		mu 0 4 308 307 334 333
		f 4 -545 545 546 547
		mu 0 4 333 334 335 336
		f 4 -543 -548 548 -537
		mu 0 4 332 333 336 329
		f 4 549 550 551 552
		mu 0 4 337 338 339 340
		f 4 553 -546 554 -551
		mu 0 4 338 341 342 339
		f 4 -555 -544 -505 555
		mu 0 4 339 342 313 310
		f 4 -552 -556 -501 556
		mu 0 4 340 339 310 309
		f 4 557 558 559 560
		mu 0 4 343 344 345 346
		f 4 561 -553 562 -559
		mu 0 4 344 337 340 345
		f 4 -563 -557 -513 563
		mu 0 4 345 340 309 316
		f 4 -560 -564 -509 564
		mu 0 4 346 345 316 315
		f 4 565 566 567 568
		mu 0 4 347 348 349 350
		f 4 569 -520 570 -567
		mu 0 4 348 319 322 349
		f 4 -571 -523 -531 571
		mu 0 4 349 322 299 328
		f 4 -568 -572 -529 572
		mu 0 4 350 349 328 327
		f 4 -337 573 574 575
		mu 0 4 208 207 351 352
		f 4 -335 -390 576 -574
		mu 0 4 207 206 244 351
		f 4 -577 -388 577 578
		mu 0 4 351 244 243 353
		f 4 -575 -579 579 580
		mu 0 4 352 351 353 354
		f 4 581 582 583 584
		mu 0 4 251 355 356 357
		f 4 585 -330 586 -583
		mu 0 4 355 200 203 356
		f 4 -587 -338 587 588
		mu 0 4 356 203 208 358
		f 4 -584 -589 589 590
		mu 0 4 357 356 358 359
		f 4 591 592 593 -385
		mu 0 4 241 360 361 242
		f 4 594 -366 595 -593
		mu 0 4 360 362 363 361
		f 4 -596 -364 596 597
		mu 0 4 361 363 364 365
		f 4 -594 -598 598 -387
		mu 0 4 242 361 365 243
		f 4 -599 599 600 -578
		mu 0 4 243 365 366 353
		f 4 -597 -378 601 -600
		mu 0 4 365 364 367 366
		f 4 -602 -376 602 603
		mu 0 4 366 367 368 369
		f 4 -601 -604 604 -580
		mu 0 4 353 366 369 354
		f 4 605 606 607 608
		mu 0 4 370 371 372 373
		f 4 609 -605 610 -607
		mu 0 4 371 374 375 372
		f 4 -611 -603 -375 611
		mu 0 4 372 375 376 377
		f 4 -608 -612 -371 612
		mu 0 4 373 372 377 233
		f 4 -590 613 614 615
		mu 0 4 359 358 378 379
		f 4 -588 -576 616 -614
		mu 0 4 358 208 380 378
		f 4 -617 -581 -610 617
		mu 0 4 378 380 374 371
		f 4 -615 -618 -606 618
		mu 0 4 379 378 371 370
		f 4 -369 619 620 621
		mu 0 4 232 381 382 383
		f 4 -367 -595 622 -620
		mu 0 4 381 384 385 382
		f 4 -623 -592 623 624
		mu 0 4 382 385 386 387
		f 4 -621 -625 625 626
		mu 0 4 383 382 387 388
		f 4 627 628 629 630
		mu 0 4 215 389 390 391
		f 4 631 632 633 -629
		mu 0 4 389 392 393 390
		f 4 -634 634 635 636
		mu 0 4 390 393 394 395
		f 4 -630 -637 637 638
		mu 0 4 391 390 395 388
		f 4 639 640 641 -633
		mu 0 4 392 396 397 393
		f 4 642 -616 643 -641
		mu 0 4 396 359 379 397
		f 4 -644 -619 644 645
		mu 0 4 397 379 370 398
		f 4 -642 -646 646 -635
		mu 0 4 393 397 398 394
		f 4 647 648 649 -409
		mu 0 4 253 399 400 258
		f 4 650 -632 651 -649
		mu 0 4 399 392 389 400
		f 4 -652 -628 -352 652
		mu 0 4 400 389 215 218
		f 4 -650 -653 -358 -411
		mu 0 4 258 400 218 223
		f 4 -585 653 654 -399
		mu 0 4 251 357 401 252
		f 4 -591 -643 655 -654
		mu 0 4 357 359 396 401
		f 4 -656 -640 -651 656
		mu 0 4 401 396 392 399
		f 4 -655 -657 -648 -401
		mu 0 4 252 401 399 253
		f 4 657 658 659 -636
		mu 0 4 394 402 403 395
		f 4 660 -362 661 -659
		mu 0 4 402 224 227 403
		f 4 -662 -370 -622 662
		mu 0 4 403 227 232 383
		f 4 -660 -663 -627 -638
		mu 0 4 395 403 383 388
		f 4 -609 663 664 -645
		mu 0 4 370 373 404 398
		f 4 -613 -374 665 -664
		mu 0 4 373 233 236 404
		f 4 -666 -380 -661 666
		mu 0 4 404 236 224 402
		f 4 -665 -667 -658 -647
		mu 0 4 398 404 402 394
		f 4 -626 667 668 -639
		mu 0 4 388 387 405 391
		f 4 -624 -384 669 -668
		mu 0 4 387 386 406 405
		f 4 -670 -381 -353 670
		mu 0 4 405 406 219 216
		f 4 -669 -671 -349 -631
		mu 0 4 391 405 216 215
		f 4 671 672 673 674
		mu 0 4 407 408 409 410
		f 4 675 676 677 -673
		mu 0 4 408 411 412 409
		f 4 -678 678 679 680
		mu 0 4 409 412 413 414
		f 4 -674 -681 681 682
		mu 0 4 410 409 414 415
		f 4 683 684 685 -677
		mu 0 4 411 416 417 412
		f 4 686 687 688 -685
		mu 0 4 416 418 419 417
		f 4 -689 689 690 691
		mu 0 4 417 419 420 421
		f 4 -686 -692 692 -679
		mu 0 4 412 417 421 413
		f 4 693 694 695 -688
		mu 0 4 422 423 424 425
		f 4 696 697 698 -695
		mu 0 4 423 426 427 424
		f 4 -699 699 700 701
		mu 0 4 424 427 428 429
		f 4 -696 -702 702 -690
		mu 0 4 425 424 429 430
		f 4 703 704 705 706
		mu 0 4 431 432 433 434
		f 4 707 708 709 -705
		mu 0 4 432 435 436 433
		f 4 -710 710 711 712
		mu 0 4 433 436 437 438
		f 4 -706 -713 713 714
		mu 0 4 434 433 438 439
		f 4 -714 715 716 717
		mu 0 4 439 438 440 441
		f 4 -712 718 719 -716
		mu 0 4 438 437 442 440
		f 4 -720 720 721 722
		mu 0 4 440 442 443 444
		f 4 -717 -723 723 724
		mu 0 4 441 440 444 445
		f 4 725 726 727 -691
		mu 0 4 420 446 447 421
		f 4 728 729 730 -727
		mu 0 4 446 448 449 447
		f 4 -731 731 732 733
		mu 0 4 447 449 450 451
		f 4 -728 -734 734 -693
		mu 0 4 421 447 451 413
		f 4 735 736 737 738
		mu 0 4 452 453 454 455
		f 4 739 740 741 -737
		mu 0 4 453 456 457 454
		f 4 -742 742 743 744
		mu 0 4 454 457 458 459
		f 4 -738 -745 745 746
		mu 0 4 455 454 459 460
		f 4 747 748 749 750
		mu 0 4 461 462 463 464
		f 4 751 -739 752 -749
		mu 0 4 462 452 455 463
		f 4 -753 -747 753 754
		mu 0 4 463 455 460 465
		f 4 -750 -755 755 756
		mu 0 4 464 463 465 426
		f 4 757 758 759 760
		mu 0 4 466 467 468 469
		f 4 761 762 763 -759
		mu 0 4 467 470 471 468
		f 4 -764 764 -687 765
		mu 0 4 468 471 418 416
		f 4 -760 -766 -684 766
		mu 0 4 469 468 416 411
		f 4 767 768 769 770
		mu 0 4 472 473 474 475
		f 4 771 -761 772 -769
		mu 0 4 473 466 469 474
		f 4 -773 -767 -676 773
		mu 0 4 474 469 411 408
		f 4 -770 -774 -672 774
		mu 0 4 475 474 408 407
		f 4 775 776 777 778
		mu 0 4 476 477 478 479
		f 4 779 780 781 -777
		mu 0 4 477 480 481 478
		f 4 -782 782 -740 783
		mu 0 4 478 481 456 453
		f 4 -778 -784 -736 784
		mu 0 4 479 478 453 452
		f 4 785 786 787 788
		mu 0 4 482 483 484 485
		f 4 789 -779 790 -787
		mu 0 4 483 476 479 484
		f 4 -791 -785 -752 791
		mu 0 4 484 479 452 462
		f 4 -788 -792 -748 792
		mu 0 4 485 484 462 461
		f 4 793 794 795 796
		mu 0 4 486 487 488 489
		f 4 797 -789 798 -795
		mu 0 4 487 482 485 488
		f 4 -799 -793 799 800
		mu 0 4 488 485 461 490
		f 4 -796 -801 801 802
		mu 0 4 489 488 490 491
		f 4 803 804 805 806
		mu 0 4 492 493 494 495
		f 4 807 -797 808 -805
		mu 0 4 493 496 497 494
		f 4 -809 -803 -762 809
		mu 0 4 494 497 470 467
		f 4 -806 -810 -758 810
		mu 0 4 495 494 467 466
		f 4 811 812 813 814
		mu 0 4 498 499 500 501
		f 4 815 -807 816 -813
		mu 0 4 499 492 495 500
		f 4 -817 -811 -772 817
		mu 0 4 500 495 466 473
		f 4 -814 -818 -768 818
		mu 0 4 501 500 473 472
		f 4 -815 819 820 821
		mu 0 4 498 501 502 503
		f 4 822 823 -820 -819
		mu 0 4 472 504 502 501
		f 4 824 -821 -824 825
		mu 0 4 505 503 502 504
		f 4 826 827 828 829
		mu 0 4 506 507 508 509
		f 4 830 831 832 -828
		mu 0 4 507 510 511 508
		f 4 -833 833 -780 834
		mu 0 4 508 511 480 477
		f 4 -829 -835 -776 835
		mu 0 4 509 508 477 476
		f 4 836 837 838 839
		mu 0 4 512 513 514 515
		f 4 840 -830 841 -838
		mu 0 4 513 506 509 514
		f 4 -842 -836 -790 842
		mu 0 4 514 509 476 483
		f 4 -839 -843 -786 843
		mu 0 4 515 514 483 482
		f 4 844 845 846 847
		mu 0 4 516 517 518 519
		f 4 848 -840 849 -846
		mu 0 4 517 512 515 518
		f 4 -850 -844 -798 850
		mu 0 4 518 515 482 487
		f 4 -847 -851 -794 851
		mu 0 4 519 518 487 486
		f 4 852 853 854 855
		mu 0 4 520 521 522 523
		f 4 856 -848 857 -854
		mu 0 4 521 524 525 522
		f 4 -858 -852 -808 858
		mu 0 4 522 525 496 493
		f 4 -855 -859 -804 859
		mu 0 4 523 522 493 492
		f 4 860 861 862 863
		mu 0 4 526 527 528 529
		f 4 864 -856 865 -862
		mu 0 4 527 520 523 528
		f 4 -866 -860 -816 866
		mu 0 4 528 523 492 499
		f 4 -863 -867 -812 867
		mu 0 4 529 528 499 498
		f 4 -864 868 869 870
		mu 0 4 526 529 530 531
		f 4 -868 -822 871 -869
		mu 0 4 529 498 503 530
		f 4 -872 -825 872 873
		mu 0 4 530 503 505 532
		f 4 -870 -874 874 875
		mu 0 4 531 530 532 533
		f 4 -207 876 877 878
		mu 0 4 126 125 534 535
		f 4 -205 879 880 -877
		mu 0 4 125 124 536 534
		f 4 -881 881 -831 882
		mu 0 4 534 536 510 507
		f 4 -878 -883 -827 883
		mu 0 4 535 534 507 506
		f 4 -218 884 885 886
		mu 0 4 132 129 537 538
		f 4 -212 -879 887 -885
		mu 0 4 129 126 535 537
		f 4 -888 -884 -841 888
		mu 0 4 537 535 506 513
		f 4 -886 -889 -837 889
		mu 0 4 538 537 513 512
		f 4 -163 890 891 892
		mu 0 4 539 540 541 542
		f 4 -161 -887 893 -891
		mu 0 4 540 132 538 541
		f 4 -894 -890 -849 894
		mu 0 4 541 538 512 517
		f 4 -892 -895 -845 895
		mu 0 4 542 541 517 516
		f 4 896 897 898 -853
		mu 0 4 520 543 544 521
		f 4 899 900 901 -898
		mu 0 4 543 545 546 544
		f 4 -902 902 -893 903
		mu 0 4 544 546 547 548
		f 4 -899 -904 -896 -857
		mu 0 4 521 544 548 524
		f 4 904 905 906 -861
		mu 0 4 526 549 550 527
		f 4 907 908 909 -906
		mu 0 4 549 551 552 550
		f 4 -910 910 -900 911
		mu 0 4 550 552 545 543
		f 4 -907 -912 -897 -865
		mu 0 4 527 550 543 520
		f 4 912 913 914 915
		mu 0 4 553 554 555 556
		f 4 916 -908 917 -914
		mu 0 4 554 551 549 555
		f 4 -918 -905 -871 918
		mu 0 4 555 549 526 531
		f 4 -915 -919 -876 919
		mu 0 4 556 555 531 533
		f 4 -682 920 921 922
		mu 0 4 415 414 557 558
		f 4 -680 -735 923 -921
		mu 0 4 414 413 451 557
		f 4 -924 -733 924 925
		mu 0 4 557 451 450 559
		f 4 -922 -926 926 927
		mu 0 4 558 557 559 560
		f 4 928 929 930 -683
		mu 0 4 415 561 562 410
		f 4 931 932 933 -930
		mu 0 4 561 563 564 562
		f 4 -934 934 935 936
		mu 0 4 562 564 458 565
		f 4 -931 -937 937 -675
		mu 0 4 410 562 565 407
		f 4 938 939 940 -730
		mu 0 4 448 566 567 449
		f 4 941 -707 942 -940
		mu 0 4 566 568 569 567
		f 4 -943 -715 943 944
		mu 0 4 567 569 570 571
		f 4 -941 -945 945 -732
		mu 0 4 449 567 571 450
		f 4 -946 946 947 -925
		mu 0 4 450 571 572 559
		f 4 -944 -718 948 -947
		mu 0 4 571 570 573 572
		f 4 -949 -725 949 950
		mu 0 4 572 573 574 575
		f 4 -948 -951 951 -927
		mu 0 4 559 572 575 560
		f 4 -724 952 953 -950
		mu 0 4 576 577 578 579
		f 4 -722 954 955 -953
		mu 0 4 577 443 580 578
		f 4 -956 956 957 958
		mu 0 4 578 580 581 582
		f 4 -954 -959 959 -952
		mu 0 4 579 578 582 583
		f 4 -960 960 961 -928
		mu 0 4 583 582 584 585
		f 4 -958 962 963 -961
		mu 0 4 582 581 586 584
		f 4 -964 964 -932 965
		mu 0 4 584 586 563 561
		f 4 -962 -966 -929 -923
		mu 0 4 585 584 561 415
		f 4 966 967 968 -939
		mu 0 4 587 588 589 590
		f 4 969 970 971 -968
		mu 0 4 588 591 592 589
		f 4 -972 972 -708 973
		mu 0 4 589 592 435 593
		f 4 -969 -974 -704 -942
		mu 0 4 590 589 593 594
		f 4 974 975 976 977
		mu 0 4 428 595 596 597
		f 4 978 979 980 -976
		mu 0 4 595 598 599 596
		f 4 -981 981 982 983
		mu 0 4 596 599 600 601
		f 4 -977 -984 984 985
		mu 0 4 597 596 601 591
		f 4 986 987 988 -980
		mu 0 4 598 602 603 599
		f 4 989 -965 990 -988
		mu 0 4 602 563 586 603
		f 4 -991 -963 991 992
		mu 0 4 603 586 581 604
		f 4 -989 -993 993 -982
		mu 0 4 599 603 604 600
		f 4 994 995 996 -754
		mu 0 4 460 605 606 465
		f 4 997 -979 998 -996
		mu 0 4 605 598 595 606
		f 4 -999 -975 -700 999
		mu 0 4 606 595 428 427
		f 4 -997 -1000 -698 -756
		mu 0 4 465 606 427 426
		f 4 -935 1000 1001 -744
		mu 0 4 458 564 607 459
		f 4 -933 -990 1002 -1001
		mu 0 4 564 563 602 607
		f 4 -1003 -987 -998 1003
		mu 0 4 607 602 598 605
		f 4 -1002 -1004 -995 -746
		mu 0 4 459 607 605 460
		f 4 1004 1005 1006 -983
		mu 0 4 600 608 609 601
		f 4 1007 -711 1008 -1006
		mu 0 4 608 437 436 609
		f 4 -1009 -709 -973 1009
		mu 0 4 609 436 435 592
		f 4 -1007 -1010 -971 -985
		mu 0 4 601 609 592 591
		f 4 -957 1010 1011 -992
		mu 0 4 581 580 610 604
		f 4 -955 -721 1012 -1011
		mu 0 4 580 443 442 610
		f 4 -1013 -719 -1008 1013
		mu 0 4 610 442 437 608
		f 4 -1012 -1014 -1005 -994
		mu 0 4 604 610 608 600
		f 4 -703 1014 1015 -726
		mu 0 4 430 429 611 612
		f 4 -701 -978 1016 -1015
		mu 0 4 429 428 597 611
		f 4 -1017 -986 -970 1017
		mu 0 4 611 597 591 588
		f 4 -1016 -1018 -967 -729
		mu 0 4 612 611 588 587
		f 4 1018 1019 1020 1021
		mu 0 4 613 614 615 616
		f 4 1022 1023 1024 -1020
		mu 0 4 614 617 618 615
		f 4 -1025 1025 1026 1027
		mu 0 4 615 618 619 620
		f 4 -1021 -1028 1028 1029
		mu 0 4 616 615 620 621
		f 4 1030 1031 1032 1033
		mu 0 4 622 623 624 625
		f 4 1034 1035 1036 -1032
		mu 0 4 623 626 627 624
		f 4 -1037 1037 -1023 1038
		mu 0 4 624 627 617 614
		f 4 -1033 -1039 -1019 1039
		mu 0 4 625 624 614 613
		f 4 1040 1041 1042 1043
		mu 0 4 628 629 630 631
		f 4 1044 1045 1046 -1042
		mu 0 4 629 632 633 630
		f 4 -1047 1047 -1035 1048
		mu 0 4 630 633 626 623
		f 4 -1043 -1049 -1031 1049
		mu 0 4 631 630 623 622
		f 4 1050 1051 1052 1053
		mu 0 4 634 635 636 637
		f 4 1054 1055 1056 -1052
		mu 0 4 635 638 639 636
		f 4 -1057 1057 -1045 1058
		mu 0 4 636 639 632 629
		f 4 -1053 -1059 -1041 1059
		mu 0 4 637 636 629 628
		f 4 1060 1061 1062 1063
		mu 0 4 640 641 642 643
		f 4 1064 -903 1065 -1062
		mu 0 4 641 96 644 642
		f 4 -1066 -901 -1055 1066
		mu 0 4 642 644 638 635
		f 4 -1063 -1067 -1051 1067
		mu 0 4 643 642 635 634
		f 4 1068 1069 1070 1071
		mu 0 4 645 646 647 648
		f 4 1072 -166 1073 -1070
		mu 0 4 646 98 97 647
		f 4 -1074 -164 -1065 1074
		mu 0 4 647 97 96 641
		f 4 -1071 -1075 -1061 1075
		mu 0 4 648 647 641 640
		f 4 1076 1077 1078 -234
		mu 0 4 145 649 650 146
		f 4 1079 1080 1081 -1078
		mu 0 4 649 651 652 650
		f 4 -1082 1082 1083 1084
		mu 0 4 650 652 653 654
		f 4 -1079 -1085 1085 -236
		mu 0 4 146 650 654 147
		f 4 1086 1087 1088 -246
		mu 0 4 154 655 656 155
		f 4 1089 1090 1091 -1088
		mu 0 4 655 657 658 656
		f 4 -1092 1092 -1080 1093
		mu 0 4 656 658 651 649
		f 4 -1089 -1094 -1077 -248
		mu 0 4 155 656 649 145
		f 4 1094 1095 1096 -260
		mu 0 4 161 659 660 157
		f 4 1097 1098 1099 -1096
		mu 0 4 659 661 662 660
		f 4 -1100 1100 -1090 1101
		mu 0 4 660 662 657 655
		f 4 -1097 -1102 -1087 -253
		mu 0 4 157 660 655 154;
	setAttr ".fc[500:999]"
		f 4 1102 1103 1104 -270
		mu 0 4 167 663 664 163
		f 4 1105 1106 1107 -1104
		mu 0 4 663 665 666 664
		f 4 -1108 1108 -1098 1109
		mu 0 4 664 666 661 659
		f 4 -1105 -1110 -1095 -263
		mu 0 4 163 664 659 161
		f 4 1110 1111 1112 -276
		mu 0 4 172 667 668 173
		f 4 1113 1114 1115 -1112
		mu 0 4 667 669 670 668
		f 4 -1116 1116 -1106 1117
		mu 0 4 668 670 665 663
		f 4 -1113 -1118 -1103 -278
		mu 0 4 173 668 663 167
		f 4 1118 1119 1120 -286
		mu 0 4 178 671 672 179
		f 4 1121 1122 1123 -1120
		mu 0 4 671 673 674 672
		f 4 -1124 1124 -1114 1125
		mu 0 4 672 674 669 667
		f 4 -1121 -1126 -1111 -288
		mu 0 4 179 672 667 172
		f 4 1126 1127 1128 -1081
		mu 0 4 651 675 676 652
		f 4 1129 -1022 1130 -1128
		mu 0 4 675 613 616 676
		f 4 -1131 -1030 1131 1132
		mu 0 4 676 616 621 677
		f 4 -1129 -1133 1133 -1083
		mu 0 4 652 676 677 653
		f 4 1134 1135 1136 -1091
		mu 0 4 657 678 679 658
		f 4 1137 -1034 1138 -1136
		mu 0 4 678 622 625 679
		f 4 -1139 -1040 -1130 1139
		mu 0 4 679 625 613 675
		f 4 -1137 -1140 -1127 -1093
		mu 0 4 658 679 675 651
		f 4 1140 1141 1142 -1099
		mu 0 4 661 680 681 662
		f 4 1143 -1044 1144 -1142
		mu 0 4 680 628 631 681
		f 4 -1145 -1050 -1138 1145
		mu 0 4 681 631 622 678
		f 4 -1143 -1146 -1135 -1101
		mu 0 4 662 681 678 657
		f 4 1146 1147 1148 -1107
		mu 0 4 665 682 683 666
		f 4 1149 -1054 1150 -1148
		mu 0 4 682 634 637 683
		f 4 -1151 -1060 -1144 1151
		mu 0 4 683 637 628 680
		f 4 -1149 -1152 -1141 -1109
		mu 0 4 666 683 680 661
		f 4 1152 1153 1154 -1115
		mu 0 4 669 684 685 670
		f 4 1155 -1064 1156 -1154
		mu 0 4 684 640 643 685
		f 4 -1157 -1068 -1150 1157
		mu 0 4 685 643 634 682
		f 4 -1155 -1158 -1147 -1117
		mu 0 4 670 685 682 665
		f 4 1158 1159 1160 -1123
		mu 0 4 673 686 687 674
		f 4 1161 -1072 1162 -1160
		mu 0 4 686 645 648 687
		f 4 -1163 -1076 -1156 1163
		mu 0 4 687 648 640 684
		f 4 -1161 -1164 -1153 -1125
		mu 0 4 674 687 684 669
		f 4 1164 1165 1166 -62
		mu 0 4 688 689 690 691
		f 4 1167 1168 1169 -1166
		mu 0 4 689 692 693 690
		f 4 -1170 1170 1171 1172
		mu 0 4 690 693 694 695
		f 4 -1167 -1173 1173 -54
		mu 0 4 691 690 695 696
		f 4 -323 1174 1175 1176
		mu 0 4 198 197 697 698
		f 4 -321 1177 1178 -1175
		mu 0 4 197 196 699 697
		f 4 -1179 1179 1180 1181
		mu 0 4 697 699 700 701
		f 4 -1176 -1182 1182 1183
		mu 0 4 698 697 701 702
		f 4 1184 1185 1186 -72
		mu 0 4 703 704 705 706
		f 4 1187 1188 1189 -1186
		mu 0 4 704 707 708 705
		f 4 -1190 1190 -1168 1191
		mu 0 4 705 708 692 689
		f 4 -1187 -1192 -1165 -65
		mu 0 4 706 705 689 688
		f 4 1192 1193 1194 1195
		mu 0 4 709 710 711 712
		f 4 1196 1197 1198 -1194
		mu 0 4 710 713 714 711
		f 4 -1199 1199 1200 1201
		mu 0 4 711 714 715 716
		f 4 -1195 -1202 1202 1203
		mu 0 4 712 711 716 717
		f 4 1204 1205 1206 -1204
		mu 0 4 717 718 719 712
		f 4 1207 1208 1209 -1206
		mu 0 4 718 720 721 719
		f 4 -1210 1210 1211 1212
		mu 0 4 719 721 722 723
		f 4 -1207 -1213 1213 -1196
		mu 0 4 712 719 723 709
		f 4 1214 1215 1216 -1198
		mu 0 4 713 724 725 714
		f 4 1217 1218 1219 -1216
		mu 0 4 724 726 727 725
		f 4 -1220 1220 1221 1222
		mu 0 4 725 727 728 729
		f 4 -1217 -1223 1223 -1200
		mu 0 4 714 725 729 715
		f 4 1224 1225 1226 1227
		mu 0 4 730 731 732 733
		f 4 1228 1229 1230 -1226
		mu 0 4 731 734 735 732
		f 4 -1231 1231 1232 1233
		mu 0 4 732 735 736 737
		f 4 -1227 -1234 1234 1235
		mu 0 4 733 732 737 738
		f 4 1236 1237 1238 1239
		mu 0 4 726 739 740 741
		f 4 1240 1241 1242 -1238
		mu 0 4 739 742 743 740
		f 4 -1243 1243 1244 1245
		mu 0 4 740 743 744 745
		f 4 -1239 -1246 1246 1247
		mu 0 4 741 740 745 746
		f 4 1248 1249 1250 1251
		mu 0 4 747 748 749 750
		f 4 1252 1253 1254 -1250
		mu 0 4 748 751 752 749
		f 4 -1255 1255 1256 1257
		mu 0 4 749 752 753 754
		f 4 -1251 -1258 1258 1259
		mu 0 4 750 749 754 755
		f 4 1260 1261 1262 1263
		mu 0 4 756 757 758 759
		f 4 1264 1265 -1262 1266
		mu 0 4 760 761 758 757
		f 4 1267 -1263 -1266 1268
		mu 0 4 747 759 758 761
		f 4 1269 1270 1271 -1261
		mu 0 4 756 762 763 757
		f 4 1272 1273 1274 -1271
		mu 0 4 762 734 764 763
		f 4 -1275 1275 1276 1277
		mu 0 4 763 764 765 766
		f 4 -1272 -1278 1278 -1267
		mu 0 4 757 763 766 760
		f 4 1279 1280 1281 1282
		mu 0 4 767 768 769 770
		f 4 1283 1284 1285 -1281
		mu 0 4 768 771 772 769
		f 4 -1286 1286 1287 1288
		mu 0 4 769 772 773 774
		f 4 -1282 -1289 1289 1290
		mu 0 4 770 769 774 775
		f 4 1291 1292 1293 1294
		mu 0 4 776 777 778 779
		f 4 1295 1296 1297 -1293
		mu 0 4 777 780 781 778
		f 4 -1298 1298 1299 1300
		mu 0 4 778 781 782 783
		f 4 -1294 -1301 1301 1302
		mu 0 4 779 778 783 784
		f 4 1303 1304 1305 1306
		mu 0 4 785 786 787 788
		f 4 1307 -1211 1308 -1305
		mu 0 4 786 722 721 787
		f 4 -1309 -1209 1309 1310
		mu 0 4 787 721 720 789
		f 4 -1306 -1311 1311 1312
		mu 0 4 788 787 789 790
		f 4 1313 1314 1315 1316
		mu 0 4 791 792 793 794
		f 4 1317 -1312 1318 -1315
		mu 0 4 792 795 796 793
		f 4 -1319 -1310 -1208 1319
		mu 0 4 793 796 720 718
		f 4 -1316 -1320 -1205 1320
		mu 0 4 794 793 718 717
		f 4 -1203 1321 1322 -1321
		mu 0 4 717 716 797 794
		f 4 -1201 1323 1324 -1322
		mu 0 4 716 715 798 797
		f 4 -1325 1325 1326 1327
		mu 0 4 797 798 799 800
		f 4 -1323 -1328 1328 -1317
		mu 0 4 794 797 800 791
		f 4 1329 1330 1331 1332
		mu 0 4 801 802 803 804
		f 4 1333 1334 1335 -1331
		mu 0 4 802 805 806 803
		f 4 -1336 1336 -1326 1337
		mu 0 4 803 806 799 798
		f 4 -1332 -1338 -1324 1338
		mu 0 4 804 803 798 715
		f 4 1339 1340 1341 -1257
		mu 0 4 753 807 808 754
		f 4 1342 1343 1344 -1341
		mu 0 4 807 809 810 808
		f 4 -1345 1345 1346 1347
		mu 0 4 808 810 811 812
		f 4 -1342 -1348 1348 -1259
		mu 0 4 754 808 812 755
		f 4 1349 1350 1351 1352
		mu 0 4 813 814 815 816
		f 4 1353 1354 1355 -1351
		mu 0 4 814 817 818 815
		f 4 -1356 1356 1357 1358
		mu 0 4 815 818 819 820
		f 4 -1352 -1359 1359 1360
		mu 0 4 816 815 820 821
		f 4 -1360 1361 1362 1363
		mu 0 4 821 820 822 823
		f 4 -1358 1364 1365 -1362
		mu 0 4 820 819 824 822
		f 4 -1366 1366 1367 1368
		mu 0 4 822 824 825 826
		f 4 -1363 -1369 1369 1370
		mu 0 4 823 822 826 760
		f 4 1371 1372 1373 -1254
		mu 0 4 751 827 828 752
		f 4 1374 1375 1376 -1373
		mu 0 4 827 829 830 828
		f 4 -1377 1377 1378 1379
		mu 0 4 828 830 831 832
		f 4 -1374 -1380 1380 -1256
		mu 0 4 752 828 832 753
		f 4 -1381 1381 1382 -1340
		mu 0 4 753 832 833 807
		f 4 -1379 1383 1384 -1382
		mu 0 4 832 831 834 833
		f 4 -1385 1385 1386 1387
		mu 0 4 833 834 835 836
		f 4 -1383 -1388 1388 -1343
		mu 0 4 807 833 836 809
		f 4 -1349 1389 1390 1391
		mu 0 4 755 812 837 838
		f 4 -1347 1392 1393 -1390
		mu 0 4 812 811 839 837
		f 4 -1394 1394 1395 1396
		mu 0 4 837 839 840 841
		f 4 -1391 -1397 1397 1398
		mu 0 4 838 837 841 842
		f 4 1399 1400 1401 1402
		mu 0 4 843 844 845 846
		f 4 1403 -1252 1404 -1401
		mu 0 4 844 747 750 845
		f 4 -1405 -1260 -1392 1405
		mu 0 4 845 750 755 838
		f 4 -1402 -1406 -1399 1406
		mu 0 4 846 845 838 842
		f 4 1407 1408 1409 1410
		mu 0 4 847 848 849 850
		f 4 1411 -1264 1412 -1409
		mu 0 4 848 756 759 849
		f 4 -1413 -1268 -1404 1413
		mu 0 4 849 759 747 844
		f 4 -1410 -1414 -1400 1414
		mu 0 4 850 849 844 843
		f 4 1415 1416 1417 1418
		mu 0 4 851 852 853 854
		f 4 1419 1420 1421 -1417
		mu 0 4 852 855 856 853
		f 4 -1422 1422 1423 1424
		mu 0 4 853 856 857 858
		f 4 -1418 -1425 1425 1426
		mu 0 4 854 853 858 859
		f 4 1427 1428 1429 -1297
		mu 0 4 780 860 861 781
		f 4 1430 -1283 1431 -1429
		mu 0 4 860 767 770 861
		f 4 -1432 -1291 1432 1433
		mu 0 4 861 770 775 862
		f 4 -1430 -1434 1434 -1299
		mu 0 4 781 861 862 782
		f 4 1435 1436 1437 1438
		mu 0 4 863 864 865 866
		f 4 1439 1440 1441 -1437
		mu 0 4 864 867 868 865
		f 4 -1442 1442 -1229 1443
		mu 0 4 865 868 869 870
		f 4 -1438 -1444 -1225 1444
		mu 0 4 866 865 870 871
		f 4 -1443 1445 1446 -1274
		mu 0 4 869 868 872 873
		f 4 -1441 1447 1448 -1446
		mu 0 4 868 867 874 872
		f 4 -1449 1449 1450 1451
		mu 0 4 872 874 875 876
		f 4 -1447 -1452 1452 -1276
		mu 0 4 873 872 876 877
		f 4 -1290 1453 1454 1455
		mu 0 4 878 879 880 881
		f 4 -1288 1456 1457 -1454
		mu 0 4 879 882 883 880
		f 4 -1458 1458 1459 1460
		mu 0 4 880 883 884 885
		f 4 -1455 -1461 1461 1462
		mu 0 4 881 880 885 886
		f 4 -1456 1463 1464 -1433
		mu 0 4 878 881 887 888
		f 4 -1463 1465 1466 -1464
		mu 0 4 881 886 889 887
		f 4 -1467 1467 1468 1469
		mu 0 4 887 889 890 891
		f 4 -1465 -1470 1470 -1435
		mu 0 4 888 887 891 892
		f 4 1471 1472 1473 1474
		mu 0 4 893 894 895 896
		f 4 1475 1476 -1473 1477
		mu 0 4 897 898 895 894
		f 4 1478 -1474 -1477 1479
		mu 0 4 899 896 895 898
		f 4 -1419 1480 1481 -1472
		mu 0 4 851 854 900 901
		f 4 -1427 1482 1483 -1481
		mu 0 4 854 859 902 900
		f 4 -1484 1484 1485 1486
		mu 0 4 900 902 903 904
		f 4 -1482 -1487 1487 -1478
		mu 0 4 901 900 904 897
		f 4 -1475 1488 1489 -1416
		mu 0 4 893 896 905 906
		f 4 1490 1491 -1489 -1479
		mu 0 4 899 907 905 896
		f 4 -1420 -1490 -1492 1492
		mu 0 4 908 906 905 907
		f 4 1493 1494 1495 -145
		mu 0 4 909 910 911 912
		f 4 1496 -1183 1497 -1495
		mu 0 4 910 702 701 911
		f 4 -1498 -1181 1498 1499
		mu 0 4 911 701 700 913
		f 4 -1496 -1500 1500 -139
		mu 0 4 912 911 913 914
		f 4 -266 1501 1502 1503
		mu 0 4 915 916 917 918
		f 4 -264 1504 1505 -1502
		mu 0 4 916 919 920 917
		f 4 -1506 1506 -528 1507
		mu 0 4 917 920 327 324
		f 4 -1503 -1508 -524 1508
		mu 0 4 918 917 324 323
		f 4 -274 1509 1510 1511
		mu 0 4 921 922 923 924
		f 4 -280 -1504 1512 -1510
		mu 0 4 922 915 918 923
		f 4 -1513 -1509 -538 1513
		mu 0 4 923 918 323 330
		f 4 -1511 -1514 -534 1514
		mu 0 4 924 923 330 329
		f 4 -549 1515 1516 -1515
		mu 0 4 329 336 925 924
		f 4 -547 1517 1518 -1516
		mu 0 4 336 335 926 925
		f 4 -1519 1519 -320 1520
		mu 0 4 925 926 927 928
		f 4 -1517 -1521 -317 -1512
		mu 0 4 924 925 928 921
		f 4 -1180 1521 1522 1523
		mu 0 4 929 930 931 932
		f 4 -1178 -1520 1524 -1522
		mu 0 4 930 933 934 931
		f 4 -1525 -1518 -554 1525
		mu 0 4 931 934 341 338
		f 4 -1523 -1526 -550 1526
		mu 0 4 932 931 338 337
		f 4 1527 1528 1529 1530
		mu 0 4 935 936 937 938
		f 4 1531 -1524 1532 -1529
		mu 0 4 936 929 932 937
		f 4 -1533 -1527 -562 1533
		mu 0 4 937 932 337 344
		f 4 -1530 -1534 -558 1534
		mu 0 4 938 937 344 343
		f 4 -313 1535 1536 -1505
		mu 0 4 919 939 940 920
		f 4 -309 1537 1538 -1536
		mu 0 4 939 941 942 940
		f 4 -1539 1539 -569 1540
		mu 0 4 940 942 347 350
		f 4 -1537 -1541 -573 -1507
		mu 0 4 920 940 350 327
		f 4 -1501 1541 1542 1543
		mu 0 4 914 913 943 944
		f 4 -1532 1544 -1542 -1499
		mu 0 4 700 945 943 913
		f 4 1545 -1543 -1545 -1528
		mu 0 4 946 944 943 945
		f 4 1546 1547 1548 -228
		mu 0 4 140 947 948 138
		f 4 1549 -1386 1550 -1548
		mu 0 4 947 835 834 948
		f 4 -1551 -1384 1551 1552
		mu 0 4 948 834 831 949
		f 4 -1549 -1553 1553 -223
		mu 0 4 138 948 949 135
		f 4 1554 1555 1556 1557
		mu 0 4 950 951 952 953
		f 4 1558 -1554 1559 -1556
		mu 0 4 951 135 949 952
		f 4 -1560 -1552 -1378 1560
		mu 0 4 952 949 831 830
		f 4 -1557 -1561 -1376 1561
		mu 0 4 953 952 830 829
		f 4 -203 1562 1563 -197
		mu 0 4 118 954 955 119
		f 4 -211 -1558 1564 -1563
		mu 0 4 954 950 953 955
		f 4 -1565 -1562 1565 1566
		mu 0 4 955 953 829 956
		f 4 -1564 -1567 1567 -199
		mu 0 4 119 955 956 112
		f 4 -187 1568 1569 1570
		mu 0 4 103 113 957 958
		f 4 -185 1571 1572 -1569
		mu 0 4 113 112 959 957
		f 4 -1573 1573 -1367 1574
		mu 0 4 957 959 825 824
		f 4 -1570 -1575 -1365 1575
		mu 0 4 958 957 824 819
		f 4 1576 1577 1578 -1355
		mu 0 4 817 960 961 818
		f 4 1579 -175 1580 -1578
		mu 0 4 960 105 104 961
		f 4 -1581 -173 -1571 1581
		mu 0 4 961 104 103 958
		f 4 -1579 -1582 -1576 -1357
		mu 0 4 818 961 958 819
		f 4 1582 1583 1584 1585
		mu 0 4 962 963 964 965
		f 4 1586 -1295 1587 -1584
		mu 0 4 963 776 779 964
		f 4 -1588 -1303 1588 1589
		mu 0 4 964 779 784 966
		f 4 -1585 -1590 1590 1591
		mu 0 4 965 964 966 967
		f 4 -1240 1592 1593 -1219
		mu 0 4 726 741 968 727
		f 4 -1248 1594 1595 -1593
		mu 0 4 741 746 969 968
		f 4 -1596 1596 1597 1598
		mu 0 4 968 969 970 971
		f 4 -1594 -1599 1599 -1221
		mu 0 4 727 968 971 728
		f 4 1600 1601 1602 1603
		mu 0 4 972 973 974 975
		f 4 1604 -1334 1605 -1602
		mu 0 4 973 805 802 974
		f 4 -1606 -1330 1606 1607
		mu 0 4 974 802 801 976
		f 4 -1603 -1608 1608 1609
		mu 0 4 975 974 976 977
		f 4 1610 1611 1612 1613
		mu 0 4 978 979 980 981
		f 4 1614 1615 1616 -1612
		mu 0 4 979 982 983 980
		f 4 -1617 1617 -1308 1618
		mu 0 4 980 983 722 786
		f 4 -1613 -1619 -1304 1619
		mu 0 4 981 980 786 785
		f 4 1620 1621 1622 1623
		mu 0 4 984 985 986 987
		f 4 1624 1625 1626 -1622
		mu 0 4 985 967 988 986
		f 4 -1627 1627 1628 1629
		mu 0 4 986 988 742 989
		f 4 -1623 -1630 1630 1631
		mu 0 4 987 986 989 990
		f 4 1632 1633 1634 1635
		mu 0 4 990 991 992 993
		f 4 1636 -1197 1637 -1634
		mu 0 4 991 713 710 992
		f 4 -1638 -1193 1638 1639
		mu 0 4 992 710 709 994
		f 4 -1635 -1640 1640 1641
		mu 0 4 993 992 994 995
		f 4 -1641 1642 1643 1644
		mu 0 4 995 994 996 997
		f 4 -1639 -1214 1645 -1643
		mu 0 4 994 709 723 996
		f 4 -1646 -1212 -1618 1646
		mu 0 4 996 723 722 983
		f 4 -1644 -1647 -1616 1647
		mu 0 4 997 996 983 982
		f 4 -1241 1648 1649 -1629
		mu 0 4 742 739 998 989
		f 4 -1237 -1218 1650 -1649
		mu 0 4 739 726 724 998
		f 4 -1651 -1215 -1637 1651
		mu 0 4 998 724 713 991
		f 4 -1650 -1652 -1633 -1631
		mu 0 4 989 998 991 990
		f 4 1652 1653 1654 1655
		mu 0 4 999 1000 1001 1002
		f 4 1656 -1586 1657 -1654
		mu 0 4 1000 962 965 1001
		f 4 -1658 -1592 -1625 1658
		mu 0 4 1001 965 967 985
		f 4 -1655 -1659 -1621 1659
		mu 0 4 1002 1001 985 984
		f 4 1660 1661 1662 1663
		mu 0 4 995 1003 1004 1005
		f 4 1664 1665 1666 -1662
		mu 0 4 1003 1006 1007 1004
		f 4 -1667 1667 -1656 1668
		mu 0 4 1004 1007 999 1002
		f 4 -1663 -1669 -1660 1669
		mu 0 4 1005 1004 1002 984
		f 4 -1615 1670 1671 -1648
		mu 0 4 982 1008 1009 997
		f 4 -1611 1672 1673 -1671
		mu 0 4 1008 1010 1011 1009
		f 4 -1674 1674 -1665 1675
		mu 0 4 1009 1011 1006 1003
		f 4 -1672 -1676 -1661 -1645
		mu 0 4 997 1009 1003 995
		f 4 -1453 1676 1677 1678
		mu 0 4 877 876 1012 1013
		f 4 -1451 1679 1680 -1677
		mu 0 4 876 875 1014 1012
		f 4 -1681 1681 -1459 1682
		mu 0 4 1012 1014 884 883
		f 4 -1678 -1683 -1457 1683
		mu 0 4 1013 1012 883 882
		f 4 -1364 1684 1685 1686
		mu 0 4 821 823 1015 1016
		f 4 -1371 -1279 1687 -1685
		mu 0 4 823 760 766 1015
		f 4 -1688 -1277 -1679 1688
		mu 0 4 1015 766 765 1017
		f 4 -1686 -1689 -1684 1689
		mu 0 4 1016 1015 1017 773
		f 4 -1471 1690 1691 1692
		mu 0 4 1018 1019 1020 1021
		f 4 -1469 1693 1694 -1691
		mu 0 4 1019 1022 1023 1020
		f 4 -1695 1695 -1439 1696
		mu 0 4 1020 1023 863 866
		f 4 -1692 -1697 -1445 1697
		mu 0 4 1021 1020 866 871
		f 4 -1693 1698 1699 1700
		mu 0 4 782 1024 1025 1026
		f 4 -1228 1701 -1699 -1698
		mu 0 4 730 733 1025 1024
		f 4 1702 -1700 -1702 -1236
		mu 0 4 738 1026 1025 733
		f 4 -1591 1703 1704 -1626
		mu 0 4 967 966 1027 988
		f 4 -1589 1705 1706 -1704
		mu 0 4 966 784 1028 1027
		f 4 -1707 1707 1708 1709
		mu 0 4 1027 1028 1029 1030
		f 4 -1705 -1710 1710 -1628
		mu 0 4 988 1027 1030 742
		f 4 1711 1712 1713 1714
		mu 0 4 1031 1032 1033 1034
		f 4 1715 1716 1717 -1713
		mu 0 4 1032 1035 1036 1033
		f 4 -1718 1718 1719 1720
		mu 0 4 1033 1036 1037 1038
		f 4 -1714 -1721 1721 1722
		mu 0 4 1034 1033 1038 1039
		f 4 1723 1724 1725 1726
		mu 0 4 1040 1041 1042 1043
		f 4 1727 1728 1729 -1725
		mu 0 4 1041 1044 1045 1042
		f 4 -1730 1730 1731 1732
		mu 0 4 1042 1045 1046 1047
		f 4 -1726 -1733 1733 1734
		mu 0 4 1043 1042 1047 1048
		f 4 1735 1736 1737 1738
		mu 0 4 1049 1050 1051 1052
		f 4 1739 -1719 1740 -1737
		mu 0 4 1050 1037 1036 1051
		f 4 -1741 -1717 1741 1742
		mu 0 4 1051 1036 1035 1053
		f 4 -1738 -1743 1743 1744
		mu 0 4 1052 1051 1053 1054
		f 4 1745 1746 1747 -1745
		mu 0 4 1054 1055 1056 1052
		f 4 1748 -1731 1749 -1747
		mu 0 4 1055 1046 1045 1056
		f 4 -1750 -1729 1750 1751
		mu 0 4 1056 1045 1044 1057
		f 4 -1748 -1752 1752 -1739
		mu 0 4 1052 1056 1057 1049
		f 4 1753 1754 1755 -91
		mu 0 4 56 1058 1059 57
		f 4 1756 -1740 1757 -1755
		mu 0 4 1058 1037 1050 1059
		f 4 -1758 -1736 1758 1759
		mu 0 4 1059 1050 1049 1060
		f 4 -1756 -1760 1760 -93
		mu 0 4 57 1059 1060 58
		f 4 1761 1762 1763 -103
		mu 0 4 65 1061 1062 66
		f 4 1764 -1722 1765 -1763
		mu 0 4 1061 1039 1038 1062
		f 4 -1766 -1720 -1757 1766
		mu 0 4 1062 1038 1037 1058
		f 4 -1764 -1767 -1754 -105
		mu 0 4 66 1062 1058 56
		f 4 1767 1768 1769 -113
		mu 0 4 71 1063 1064 72
		f 4 1770 -1728 1771 -1769
		mu 0 4 1063 1044 1041 1064
		f 4 -1772 -1724 1772 1773
		mu 0 4 1064 1041 1040 1065
		f 4 -1770 -1774 1774 -115
		mu 0 4 72 1064 1065 73
		f 4 -1771 1775 1776 -1751
		mu 0 4 1044 1063 1066 1057
		f 4 -1768 -122 1777 -1776
		mu 0 4 1063 71 77 1066
		f 4 -1778 -127 -1761 1778
		mu 0 4 1066 77 58 1060
		f 4 -1777 -1779 -1759 -1753
		mu 0 4 1057 1066 1060 1049
		f 4 1779 1780 1781 -1742
		mu 0 4 1035 1067 1068 1053
		f 4 1782 -11 1783 -1781
		mu 0 4 1067 8 7 1068
		f 4 -1784 -9 1784 1785
		mu 0 4 1068 7 6 1069
		f 4 -1782 -1786 1786 -1744
		mu 0 4 1053 1068 1069 1054
		f 4 1787 1788 1789 -1712
		mu 0 4 1031 1070 1071 1032
		f 4 1790 -16 1791 -1789
		mu 0 4 1070 11 9 1071
		f 4 -1792 -13 -1783 1792
		mu 0 4 1071 9 8 1067
		f 4 -1790 -1793 -1780 -1716
		mu 0 4 1032 1071 1067 1035
		f 4 1793 1794 1795 -1732
		mu 0 4 1046 1072 1073 1047
		f 4 1796 -42 1797 -1795
		mu 0 4 1072 19 26 1073
		f 4 -1798 -40 1798 1799
		mu 0 4 1073 26 25 1074
		f 4 -1796 -1800 1800 -1734
		mu 0 4 1047 1073 1074 1048
		f 4 -32 1801 1802 -1785
		mu 0 4 6 20 1075 1069
		f 4 -30 -1797 1803 -1802
		mu 0 4 20 19 1072 1075
		f 4 -1804 -1794 -1749 1804
		mu 0 4 1075 1072 1046 1055
		f 4 -1803 -1805 -1746 -1787
		mu 0 4 1069 1075 1055 1054
		f 4 -1624 1805 1806 -1670
		mu 0 4 984 987 1076 1005
		f 4 -1636 1807 -1806 -1632
		mu 0 4 990 993 1076 987
		f 4 -1664 -1807 -1808 -1642
		mu 0 4 995 1005 1076 993
		f 4 -1273 1808 1809 -1230
		mu 0 4 734 762 1077 735
		f 4 -1270 -1412 1810 -1809
		mu 0 4 762 756 848 1077
		f 4 -1811 -1408 1811 1812
		mu 0 4 1077 848 847 1078
		f 4 -1810 -1813 1813 -1232
		mu 0 4 735 1077 1078 736
		f 4 1814 1815 1816 -1285
		mu 0 4 771 1079 1080 772
		f 4 1817 -1353 1818 -1816
		mu 0 4 1079 813 816 1080
		f 4 -1819 -1361 -1687 1819
		mu 0 4 1080 816 821 1016
		f 4 -1817 -1820 -1690 -1287
		mu 0 4 772 1080 1016 773
		f 4 1820 1821 1822 -1812
		mu 0 4 847 1081 1082 1078
		f 4 1823 -1247 1824 -1822
		mu 0 4 1081 746 745 1082
		f 4 -1825 -1245 1825 1826
		mu 0 4 1082 745 744 1083
		f 4 -1823 -1827 1827 -1814
		mu 0 4 1078 1082 1083 736
		f 4 -1824 1828 1829 -1595
		mu 0 4 746 1081 1084 969
		f 4 -1821 -1411 1830 -1829
		mu 0 4 1081 847 850 1084
		f 4 -1831 -1415 1831 1832
		mu 0 4 1084 850 843 1085
		f 4 -1830 -1833 1833 -1597
		mu 0 4 969 1084 1085 970
		f 4 -1708 1834 1835 1836
		mu 0 4 1029 1028 1086 1087
		f 4 -1706 -1302 1837 -1835
		mu 0 4 1028 784 783 1086
		f 4 -1838 -1300 -1701 1838
		mu 0 4 1086 783 782 1026
		f 4 -1836 -1839 -1703 1839
		mu 0 4 1087 1086 1026 738
		f 4 -1828 1840 1841 -1233
		mu 0 4 736 1083 1088 737
		f 4 -1826 1842 1843 -1841
		mu 0 4 1083 744 1089 1088
		f 4 -1844 1844 -1837 1845
		mu 0 4 1088 1089 1029 1087
		f 4 -1842 -1846 -1840 -1235
		mu 0 4 737 1088 1087 738
		f 4 -1711 1846 1847 -1242
		mu 0 4 742 1030 1090 743
		f 4 -1845 1848 -1847 -1709
		mu 0 4 1029 1089 1090 1030
		f 4 -1244 -1848 -1849 -1843
		mu 0 4 744 743 1090 1089
		f 4 1849 1850 1851 -1396
		mu 0 4 840 1091 1092 841
		f 4 1852 -1604 1853 -1851
		mu 0 4 1091 972 975 1092
		f 4 -1854 -1610 1854 1855
		mu 0 4 1092 975 977 1093
		f 4 -1852 -1856 1856 -1398
		mu 0 4 841 1092 1093 842
		f 4 -1834 1857 1858 1859
		mu 0 4 970 1085 1094 1095
		f 4 -1832 -1403 1860 -1858
		mu 0 4 1085 843 846 1094
		f 4 -1861 -1407 -1857 1861
		mu 0 4 1094 846 842 1093
		f 4 -1859 -1862 -1855 1862
		mu 0 4 1095 1094 1093 977
		f 4 1863 1864 1865 -1607
		mu 0 4 801 1096 1097 976
		f 4 1866 -1600 1867 -1865
		mu 0 4 1096 728 971 1097
		f 4 -1868 -1598 -1860 1868
		mu 0 4 1097 971 970 1095
		f 4 -1866 -1869 -1863 -1609
		mu 0 4 976 1097 1095 977
		f 4 -1867 1869 1870 -1222
		mu 0 4 728 1096 1098 729
		f 4 -1333 1871 -1870 -1864
		mu 0 4 801 804 1098 1096
		f 4 -1224 -1871 -1872 -1339
		mu 0 4 715 729 1098 804
		f 4 -1370 1872 1873 -1265
		mu 0 4 760 826 1099 761
		f 4 -1368 1874 1875 -1873
		mu 0 4 826 825 1100 1099
		f 4 -1876 1876 -1253 1877
		mu 0 4 1099 1100 751 748
		f 4 -1874 -1878 -1249 -1269
		mu 0 4 761 1099 748 747
		f 4 1878 1879 1880 -1466
		mu 0 4 886 1101 1102 889
		f 4 1881 -1423 1882 -1880
		mu 0 4 1101 857 856 1102
		f 4 -1883 -1421 1883 1884
		mu 0 4 1102 856 855 1103
		f 4 -1881 -1885 1885 -1468
		mu 0 4 889 1102 1103 890
		f 4 1886 1887 1888 -1460
		mu 0 4 884 1104 1105 885
		f 4 1889 -1426 1890 -1888
		mu 0 4 1104 859 858 1105
		f 4 -1891 -1424 -1882 1891
		mu 0 4 1105 858 857 1101
		f 4 -1889 -1892 -1879 -1462
		mu 0 4 885 1105 1101 886
		f 4 1892 1893 1894 -1680
		mu 0 4 875 1106 1107 1014
		f 4 1895 -1485 1896 -1894
		mu 0 4 1106 903 902 1107
		f 4 -1897 -1483 -1890 1897
		mu 0 4 1107 902 859 1104
		f 4 -1895 -1898 -1887 -1682
		mu 0 4 1014 1107 1104 884
		f 4 1898 1899 1900 -1448
		mu 0 4 867 1108 1109 874
		f 4 1901 -1488 1902 -1900
		mu 0 4 1108 897 904 1109
		f 4 -1903 -1486 -1896 1903
		mu 0 4 1109 904 903 1106
		f 4 -1901 -1904 -1893 -1450
		mu 0 4 874 1109 1106 875
		f 4 -1480 1904 1905 1906
		mu 0 4 899 898 1110 1111
		f 4 -1476 -1902 1907 -1905
		mu 0 4 898 897 1108 1110
		f 4 -1908 -1899 -1440 1908
		mu 0 4 1110 1108 867 864
		f 4 -1906 -1909 -1436 1909
		mu 0 4 1111 1110 864 863
		f 4 -1886 1910 1911 -1694
		mu 0 4 1022 1112 1113 1023
		f 4 -1884 -1493 1912 -1911
		mu 0 4 1112 908 907 1113
		f 4 -1913 -1491 -1907 1913
		mu 0 4 1113 907 899 1111
		f 4 -1912 -1914 -1910 -1696
		mu 0 4 1023 1113 1111 863
		f 4 -1568 1914 1915 -1572
		mu 0 4 112 956 1114 959
		f 4 -1566 -1375 1916 -1915
		mu 0 4 956 829 827 1114
		f 4 -1917 -1372 -1877 1917
		mu 0 4 1114 827 751 1100
		f 4 -1916 -1918 -1875 -1574
		mu 0 4 959 1114 1100 825
		f 4 1918 1919 1920 -1024
		mu 0 4 617 1115 1116 618
		f 4 1921 -171 1922 -1920
		mu 0 4 1115 99 102 1116
		f 4 -1923 -179 1923 1924
		mu 0 4 1116 102 107 1117
		f 4 -1921 -1925 1925 -1026
		mu 0 4 618 1116 1117 619
		f 4 -193 1926 1927 1928
		mu 0 4 116 114 1118 1119
		f 4 -190 1929 1930 -1927
		mu 0 4 114 108 1120 1118
		f 4 -1931 1931 -1048 1932
		mu 0 4 1118 1120 626 633
		f 4 -1928 -1933 -1046 1933
		mu 0 4 1119 1118 633 632
		f 4 -1932 1934 1935 -1036
		mu 0 4 626 1120 1121 627
		f 4 -1930 -183 1936 -1935
		mu 0 4 1120 108 111 1121
		f 4 -1937 -189 -1922 1937
		mu 0 4 1121 111 99 1115
		f 4 -1936 -1938 -1919 -1038
		mu 0 4 627 1121 1115 617
		f 4 -1058 1938 1939 1940
		mu 0 4 1122 1123 1124 1125
		f 4 -911 1941 -1939 -1056
		mu 0 4 545 552 1124 1123
		f 4 1942 -1940 -1942 -909
		mu 0 4 551 1125 1124 552
		f 4 -1929 1943 1944 1945
		mu 0 4 1126 1127 1128 1129
		f 4 -1934 -1941 1946 -1944
		mu 0 4 1127 1122 1125 1128
		f 4 -1947 -1943 -917 1947
		mu 0 4 1128 1125 551 554
		f 4 -1945 -1948 -913 1948
		mu 0 4 1129 1128 554 553
		f 4 -1946 1949 1950 -194
		mu 0 4 1126 1129 1130 1131
		f 4 -1949 1951 1952 -1950
		mu 0 4 1129 553 1132 1130
		f 4 -1953 1953 -204 1954
		mu 0 4 1130 1132 124 121
		f 4 -1951 -1955 -200 -196
		mu 0 4 1131 1130 121 120
		f 4 -1954 1955 1956 -880
		mu 0 4 124 1132 1133 536
		f 4 -1952 -916 1957 -1956
		mu 0 4 1132 553 556 1133
		f 4 -1958 -920 1958 1959
		mu 0 4 1133 556 533 1134
		f 4 -1957 -1960 1960 -882
		mu 0 4 536 1133 1134 510
		f 4 1961 1962 1963 -873
		mu 0 4 505 1135 1136 532
		f 4 1964 -834 1965 -1963
		mu 0 4 1135 480 511 1136
		f 4 -1966 -832 -1961 1966
		mu 0 4 1136 511 510 1134
		f 4 -1964 -1967 -1959 -875
		mu 0 4 532 1136 1134 533
		f 4 1967 1968 1969 -823
		mu 0 4 472 1137 1138 504
		f 4 1970 -783 1971 -1969
		mu 0 4 1137 456 481 1138
		f 4 -1972 -781 -1965 1972
		mu 0 4 1138 481 480 1135
		f 4 -1970 -1973 -1962 -826
		mu 0 4 504 1138 1135 505
		f 4 -938 1973 1974 -775
		mu 0 4 407 565 1139 475
		f 4 -936 -743 1975 -1974
		mu 0 4 565 458 457 1139
		f 4 -1976 -741 -1971 1976
		mu 0 4 1139 457 456 1137
		f 4 -1975 -1977 -1968 -771
		mu 0 4 475 1139 1137 472
		f 4 -802 1977 1978 -763
		mu 0 4 491 490 1140 1141
		f 4 -800 -751 1979 -1978
		mu 0 4 490 461 464 1140
		f 4 -1980 -757 -697 1980
		mu 0 4 1140 464 426 423
		f 4 -1979 -1981 -694 -765
		mu 0 4 1141 1140 423 422
		f 4 -452 1981 1982 -418
		mu 0 4 281 279 1142 1143
		f 4 -449 -406 1983 -1982
		mu 0 4 279 254 257 1142
		f 4 -1984 -412 -357 1984
		mu 0 4 1142 257 223 222
		f 4 -1983 -1985 -355 -420
		mu 0 4 1143 1142 222 221
		f 4 -426 1985 1986 1987
		mu 0 4 265 268 1144 1145
		f 4 -430 -586 1988 -1986
		mu 0 4 268 200 355 1144
		f 4 -1989 -582 -398 1989
		mu 0 4 1144 355 251 250
		f 4 -1987 -1990 -396 1990
		mu 0 4 1145 1144 250 249
		f 4 -470 1991 1992 1993
		mu 0 4 291 294 1146 1147
		f 4 -474 -1988 1994 -1992
		mu 0 4 294 265 1145 1146
		f 4 -1995 -1991 -438 1995
		mu 0 4 1146 1145 249 274
		f 4 -1993 -1996 -436 1996
		mu 0 4 1147 1146 274 273
		f 4 -512 1997 1998 1999
		mu 0 4 315 318 1148 1149
		f 4 -516 -1994 2000 -1998
		mu 0 4 318 291 1147 1148
		f 4 -2001 -1997 -522 2001
		mu 0 4 1148 1147 273 320
		f 4 -1999 -2002 -517 2002
		mu 0 4 1149 1148 320 319
		f 4 -561 2003 2004 2005
		mu 0 4 343 346 1150 1151
		f 4 -565 -2000 2006 -2004
		mu 0 4 346 315 1149 1150
		f 4 -2007 -2003 -570 2007
		mu 0 4 1150 1149 319 348
		f 4 -2005 -2008 -566 2008
		mu 0 4 1151 1150 348 347
		f 4 2009 2010 2011 -1538
		mu 0 4 941 1152 1153 942
		f 4 2012 -1531 2013 -2011
		mu 0 4 1152 935 938 1153
		f 4 -2014 -1535 -2006 2014
		mu 0 4 1153 938 343 1151
		f 4 -2012 -2015 -2009 -1540
		mu 0 4 942 1153 1151 347
		f 4 -2013 2015 2016 2017
		mu 0 4 946 1154 1155 1156
		f 4 -2010 -312 2018 -2016
		mu 0 4 1154 190 193 1155
		f 4 -2019 -316 2019 2020
		mu 0 4 1155 193 186 1157
		f 4 -2017 -2021 2021 2022
		mu 0 4 1156 1155 1157 707
		f 4 -2022 2023 2024 -1189
		mu 0 4 707 1157 1158 708
		f 4 -2020 -304 2025 -2024
		mu 0 4 1157 186 189 1158
		f 4 -2026 -308 2026 2027
		mu 0 4 1158 189 180 1159
		f 4 -2025 -2028 2028 -1191
		mu 0 4 708 1158 1159 692
		f 4 -2029 2029 2030 -1169
		mu 0 4 692 1159 1160 693
		f 4 -2027 -294 2031 -2030
		mu 0 4 1159 180 183 1160
		f 4 -2032 -300 2032 2033
		mu 0 4 1160 183 185 1161
		f 4 -2031 -2034 2034 -1171
		mu 0 4 693 1160 1161 694
		f 4 -1188 2035 2036 -2023
		mu 0 4 707 704 1162 1156
		f 4 -1185 -78 2037 -2036
		mu 0 4 704 703 1163 1162
		f 4 -2038 -73 -1544 2038
		mu 0 4 1162 1163 914 944
		f 4 -2037 -2039 -1546 -2018
		mu 0 4 1156 1162 944 946
		f 4 -215 2039 2040 -208
		mu 0 4 126 131 1164 127
		f 4 -1559 2041 -2040 -219
		mu 0 4 134 1165 1164 131
		f 4 -210 -2041 -2042 -1555
		mu 0 4 128 127 1164 1165
		f 4 2042 2043 2044 2045
		mu 0 4 1166 1167 1168 1169
		f 4 2046 2047 2048 -2044
		mu 0 4 1167 1170 1171 1168
		f 4 -2049 2049 2050 2051
		mu 0 4 1168 1171 1172 1173
		f 4 -2045 -2052 2052 2053
		mu 0 4 1169 1168 1173 1174
		f 4 -2047 2054 2055 2056
		mu 0 4 1170 1167 1175 1176
		f 4 -2043 2057 2058 -2055
		mu 0 4 1167 1166 1177 1175;
	setAttr ".fc[1000:1499]"
		f 4 -2059 2059 -19 2060
		mu 0 4 1175 1177 1178 1179
		f 4 -2056 -2061 -17 2061
		mu 0 4 1176 1175 1179 1180
		f 4 -2053 2062 2063 2064
		mu 0 4 1174 1173 1181 1182
		f 4 -2051 2065 2066 -2063
		mu 0 4 1173 1172 1183 1181
		f 4 -2067 2067 2068 2069
		mu 0 4 1181 1183 1184 1185
		f 4 -2064 -2070 2070 2071
		mu 0 4 1182 1181 1185 1186
		f 4 -2071 2072 2073 2074
		mu 0 4 1186 1185 1187 1188
		f 4 -2069 2075 2076 -2073
		mu 0 4 1185 1184 1189 1187
		f 4 -2077 2077 -39 2078
		mu 0 4 1187 1189 1190 1191
		f 4 -2074 -2079 -37 2079
		mu 0 4 1188 1187 1191 1192
		f 4 -2060 2080 2081 -43
		mu 0 4 1178 1177 1193 1194
		f 4 -2058 -2046 2082 -2081
		mu 0 4 1177 1166 1169 1193
		f 4 -2083 -2054 2083 2084
		mu 0 4 1193 1169 1174 1195
		f 4 -2082 -2085 2085 -46
		mu 0 4 1194 1193 1195 1196
		f 4 2086 2087 2088 -51
		mu 0 4 1197 1198 1199 1200
		f 4 2089 2090 2091 -2088
		mu 0 4 1198 1201 1202 1199
		f 4 -2092 2092 2093 2094
		mu 0 4 1199 1202 1203 1204
		f 4 -2089 -2095 2095 -55
		mu 0 4 1200 1199 1204 1205
		f 4 2096 2097 2098 -2091
		mu 0 4 1201 1206 1207 1202
		f 4 2099 2100 2101 -2098
		mu 0 4 1206 1208 1209 1207
		f 4 -2102 2102 2103 2104
		mu 0 4 1207 1209 1210 1211
		f 4 -2099 -2105 2105 -2093
		mu 0 4 1202 1207 1211 1203
		f 4 2106 2107 2108 2109
		mu 0 4 1212 1213 1214 1215
		f 4 -2103 2110 -2108 2111
		mu 0 4 1210 1209 1214 1213
		f 4 2112 -2109 -2111 -2101
		mu 0 4 1208 1215 1214 1209
		f 4 -2086 2113 2114 -80
		mu 0 4 1196 1195 1216 1217
		f 4 -2084 -2065 2115 -2114
		mu 0 4 1195 1174 1182 1216
		f 4 -2116 -2072 -2075 2116
		mu 0 4 1216 1182 1186 1188
		f 4 -2115 -2117 -2080 -83
		mu 0 4 1217 1216 1188 1192
		f 4 2117 2118 2119 2120
		mu 0 4 1218 1219 1220 1221
		f 4 2121 2122 2123 -2119
		mu 0 4 1219 1222 1223 1220
		f 4 -2124 2124 2125 2126
		mu 0 4 1220 1223 1224 1225
		f 4 -2120 -2127 2127 2128
		mu 0 4 1221 1220 1225 1226
		f 4 2129 2130 2131 -98
		mu 0 4 1227 1228 1229 1230
		f 4 2132 -2121 2133 -2131
		mu 0 4 1228 1218 1221 1229
		f 4 -2134 -2129 2134 2135
		mu 0 4 1229 1221 1226 1231
		f 4 -2132 -2136 2136 -102
		mu 0 4 1230 1229 1231 1232
		f 4 2137 2138 2139 2140
		mu 0 4 1233 1234 1235 1236
		f 4 2141 -118 2142 -2139
		mu 0 4 1234 1237 1238 1235
		f 4 -2143 -116 2143 2144
		mu 0 4 1235 1238 1239 1240
		f 4 -2140 -2145 2145 2146
		mu 0 4 1236 1235 1240 1241
		f 4 2147 2148 2149 -2147
		mu 0 4 1241 1242 1243 1236
		f 4 2150 -2125 2151 -2149
		mu 0 4 1242 1224 1223 1243
		f 4 -2152 -2123 2152 2153
		mu 0 4 1243 1223 1222 1244
		f 4 -2150 -2154 2154 -2141
		mu 0 4 1236 1243 1244 1233
		f 4 -2096 2155 2156 -128
		mu 0 4 1205 1204 1245 1246
		f 4 -2094 2157 2158 -2156
		mu 0 4 1204 1203 1247 1245
		f 4 -2159 2159 -2133 2160
		mu 0 4 1245 1247 1218 1228
		f 4 -2157 -2161 -2130 -131
		mu 0 4 1246 1245 1228 1227
		f 4 2161 2162 2163 2164
		mu 0 4 1212 1248 1249 1250
		f 4 2165 -144 2166 -2163
		mu 0 4 1248 1251 1252 1249
		f 4 -2167 -142 -2142 2167
		mu 0 4 1249 1252 1237 1234
		f 4 -2164 -2168 -2138 2168
		mu 0 4 1250 1249 1234 1233
		f 4 -2155 2169 2170 -2169
		mu 0 4 1233 1244 1253 1250
		f 4 -2153 2171 2172 -2170
		mu 0 4 1244 1222 1254 1253
		f 4 -2173 2173 -2112 2174
		mu 0 4 1253 1254 1210 1213
		f 4 -2171 -2175 -2107 -2165
		mu 0 4 1250 1253 1213 1212
		f 4 -2106 2175 2176 -2158
		mu 0 4 1203 1211 1255 1247
		f 4 -2104 -2174 2177 -2176
		mu 0 4 1211 1210 1254 1255
		f 4 -2178 -2172 -2122 2178
		mu 0 4 1255 1254 1222 1219
		f 4 -2177 -2179 -2118 -2160
		mu 0 4 1247 1255 1219 1218
		f 4 -159 2179 2180 2181
		mu 0 4 1256 1257 1258 1259
		f 4 -167 2182 2183 -2180
		mu 0 4 1257 1260 1261 1258
		f 4 -2184 2184 2185 2186
		mu 0 4 1258 1261 1262 1263
		f 4 -2181 -2187 2187 2188
		mu 0 4 1259 1258 1263 1264
		f 4 2189 2190 2191 2192
		mu 0 4 1265 1266 1267 1268
		f 4 2193 -178 2194 -2191
		mu 0 4 1266 1269 1270 1267
		f 4 -2195 -176 2195 2196
		mu 0 4 1267 1270 1271 1272
		f 4 -2192 -2197 2197 2198
		mu 0 4 1268 1267 1272 1273
		f 4 2199 2200 2201 2202
		mu 0 4 1274 1275 1276 1277
		f 4 2203 -2193 2204 -2201
		mu 0 4 1275 1265 1268 1276
		f 4 -2205 -2199 2205 2206
		mu 0 4 1276 1268 1273 1278
		f 4 -2202 -2207 2207 2208
		mu 0 4 1277 1276 1278 1279
		f 4 -2203 2209 2210 2211
		mu 0 4 1274 1277 1280 1281
		f 4 -2209 2212 2213 -2210
		mu 0 4 1277 1279 1282 1280
		f 4 -2214 2214 2215 2216
		mu 0 4 1280 1282 1283 1284
		f 4 -2211 -2217 2217 2218
		mu 0 4 1281 1280 1284 1285
		f 4 2219 2220 2221 2222
		mu 0 4 1286 1287 1288 1289
		f 4 2223 2224 2225 -2221
		mu 0 4 1287 1290 1291 1288
		f 4 -2226 2226 2227 2228
		mu 0 4 1288 1291 1292 1293
		f 4 -2222 -2229 2229 2230
		mu 0 4 1289 1288 1293 1294
		f 4 2231 2232 2233 2234
		mu 0 4 1292 1295 1296 1297
		f 4 2235 2236 -2233 2237
		mu 0 4 1298 1299 1296 1295
		f 4 2238 -2234 -2237 2239
		mu 0 4 1300 1297 1296 1299
		f 4 2240 2241 2242 -2236
		mu 0 4 1301 1302 1303 1304
		f 4 2243 -227 2244 -2242
		mu 0 4 1302 1305 1306 1303
		f 4 -2245 -225 -2182 2245
		mu 0 4 1303 1306 1256 1259
		f 4 -2243 -2246 -2189 -2240
		mu 0 4 1304 1303 1259 1264
		f 4 2246 2247 2248 2249
		mu 0 4 1307 1308 1309 1310
		f 4 2250 -239 2251 -2248
		mu 0 4 1308 1311 1312 1309
		f 4 -2252 -237 2252 2253
		mu 0 4 1309 1312 1313 1314
		f 4 -2249 -2254 2254 2255
		mu 0 4 1310 1309 1314 1315
		f 4 2256 2257 2258 2259
		mu 0 4 1316 1317 1318 1319
		f 4 2260 -2250 2261 -2258
		mu 0 4 1317 1307 1310 1318
		f 4 -2262 -2256 2262 2263
		mu 0 4 1318 1310 1315 1320
		f 4 -2259 -2264 2264 2265
		mu 0 4 1319 1318 1320 1321
		f 4 2266 2267 2268 -2266
		mu 0 4 1321 1322 1323 1319
		f 4 2269 2270 2271 -2268
		mu 0 4 1322 1324 1325 1323
		f 4 -2272 2272 2273 2274
		mu 0 4 1323 1325 1326 1327
		f 4 -2269 -2275 2275 -2260
		mu 0 4 1319 1323 1327 1316
		f 4 2276 2277 2278 -2271
		mu 0 4 1324 1328 1329 1325
		f 4 2279 2280 2281 -2278
		mu 0 4 1328 1330 1331 1329
		f 4 -2282 2282 2283 2284
		mu 0 4 1329 1331 1332 1333
		f 4 -2279 -2285 2285 -2273
		mu 0 4 1325 1329 1333 1326
		f 4 2286 2287 2288 2289
		mu 0 4 1334 1335 1336 1337
		f 4 2290 -2283 2291 -2288
		mu 0 4 1335 1332 1331 1336
		f 4 -2292 -2281 2292 2293
		mu 0 4 1336 1331 1330 1338
		f 4 -2289 -2294 2294 2295
		mu 0 4 1337 1336 1338 1339
		f 4 2296 2297 2298 -281
		mu 0 4 1340 1341 1342 1343
		f 4 2299 -2290 2300 -2298
		mu 0 4 1341 1334 1337 1342
		f 4 -2301 -2296 2301 2302
		mu 0 4 1342 1337 1339 1344
		f 4 -2299 -2303 2303 -285
		mu 0 4 1343 1342 1344 1345
		f 4 2304 2305 2306 2307
		mu 0 4 1346 1347 1348 1349
		f 4 2308 -299 2309 -2306
		mu 0 4 1347 1350 1351 1348
		f 4 -2310 -297 -2251 2310
		mu 0 4 1348 1351 1311 1308
		f 4 -2307 -2311 -2247 2311
		mu 0 4 1349 1348 1308 1307
		f 4 2312 2313 2314 2315
		mu 0 4 1352 1353 1354 1355
		f 4 2316 -2308 2317 -2314
		mu 0 4 1353 1346 1349 1354
		f 4 -2318 -2312 -2261 2318
		mu 0 4 1354 1349 1307 1317
		f 4 -2315 -2319 -2257 2319
		mu 0 4 1355 1354 1317 1316
		f 4 2320 2321 2322 2323
		mu 0 4 1356 1357 1358 1359
		f 4 2324 -2316 2325 -2322
		mu 0 4 1357 1352 1355 1358
		f 4 -2326 -2320 -2276 2326
		mu 0 4 1358 1355 1316 1327
		f 4 -2323 -2327 -2274 2327
		mu 0 4 1359 1358 1327 1326
		f 4 -2300 2328 2329 2330
		mu 0 4 1334 1341 1360 1361
		f 4 -2297 -326 2331 -2329
		mu 0 4 1341 1340 1362 1360
		f 4 -2332 -324 2332 2333
		mu 0 4 1360 1362 1363 1364
		f 4 -2330 -2334 2334 2335
		mu 0 4 1361 1360 1364 1365
		f 4 2336 2337 2338 2339
		mu 0 4 1366 1367 1368 1369
		f 4 2340 2341 2342 -2338
		mu 0 4 1367 1370 1371 1368
		f 4 -2343 2343 2344 2345
		mu 0 4 1368 1371 1372 1373
		f 4 -2339 -2346 2346 2347
		mu 0 4 1369 1368 1373 1374
		f 4 -2347 2348 2349 2350
		mu 0 4 1374 1373 1375 1376
		f 4 -2345 2351 2352 -2349
		mu 0 4 1373 1372 1377 1375
		f 4 -2353 2353 2354 2355
		mu 0 4 1375 1377 1378 1379
		f 4 -2350 -2356 2356 2357
		mu 0 4 1376 1375 1379 1380
		f 4 2358 2359 2360 2361
		mu 0 4 1381 1382 1383 1384
		f 4 2362 2363 2364 -2360
		mu 0 4 1382 1385 1386 1383
		f 4 -2365 2365 -2357 2366
		mu 0 4 1383 1386 1387 1388
		f 4 -2361 -2367 -2355 2367
		mu 0 4 1384 1383 1388 1389
		f 4 2368 2369 2370 2371
		mu 0 4 1390 1391 1392 1393
		f 4 2372 2373 2374 -2370
		mu 0 4 1391 1394 1395 1392
		f 4 -2375 2375 2376 2377
		mu 0 4 1392 1395 1396 1397
		f 4 -2371 -2378 2378 2379
		mu 0 4 1393 1392 1397 1398
		f 4 2380 2381 2382 2383
		mu 0 4 1399 1400 1401 1402
		f 4 2384 -2372 2385 -2382
		mu 0 4 1400 1390 1393 1401
		f 4 -2386 -2380 2386 2387
		mu 0 4 1401 1393 1398 1403
		f 4 -2383 -2388 2388 2389
		mu 0 4 1402 1401 1403 1404
		f 4 -2354 2390 2391 2392
		mu 0 4 1378 1377 1405 1406
		f 4 -2352 2393 2394 -2391
		mu 0 4 1377 1372 1407 1405
		f 4 -2395 2395 2396 2397
		mu 0 4 1405 1407 1408 1409
		f 4 -2392 -2398 2398 2399
		mu 0 4 1406 1405 1409 1410
		f 4 2400 2401 2402 2403
		mu 0 4 1411 1412 1413 1414
		f 4 2404 2405 2406 -2402
		mu 0 4 1412 1415 1416 1413
		f 4 -2407 2407 2408 2409
		mu 0 4 1413 1416 1417 1418
		f 4 -2403 -2410 2410 2411
		mu 0 4 1414 1413 1418 1419
		f 4 2412 2413 2414 2415
		mu 0 4 1420 1421 1422 1423
		f 4 2416 2417 2418 -2414
		mu 0 4 1421 1385 1424 1422
		f 4 -2419 2419 -2405 2420
		mu 0 4 1422 1424 1415 1412
		f 4 -2415 -2421 -2401 2421
		mu 0 4 1423 1422 1412 1411
		f 4 2422 2423 2424 2425
		mu 0 4 1425 1426 1427 1428
		f 4 2426 -2351 2427 -2424
		mu 0 4 1426 1374 1376 1427
		f 4 -2428 -2358 2428 2429
		mu 0 4 1427 1376 1380 1429
		f 4 -2425 -2430 2430 2431
		mu 0 4 1428 1427 1429 1430
		f 4 2432 2433 2434 2435
		mu 0 4 1431 1432 1433 1434
		f 4 2436 -2340 2437 -2434
		mu 0 4 1432 1366 1369 1433
		f 4 -2438 -2348 -2427 2438
		mu 0 4 1433 1369 1374 1426
		f 4 -2435 -2439 -2423 2439
		mu 0 4 1434 1433 1426 1425
		f 4 2440 2441 2442 2443
		mu 0 4 1435 1436 1437 1438
		f 4 2444 -2404 2445 -2442
		mu 0 4 1436 1411 1414 1437
		f 4 -2446 -2412 2446 2447
		mu 0 4 1437 1414 1419 1439
		f 4 -2443 -2448 2448 2449
		mu 0 4 1438 1437 1439 1440
		f 4 2450 2451 2452 2453
		mu 0 4 1441 1442 1443 1444
		f 4 2454 -2416 2455 -2452
		mu 0 4 1442 1420 1423 1443
		f 4 -2456 -2422 -2445 2456
		mu 0 4 1443 1423 1411 1436
		f 4 -2453 -2457 -2441 2457
		mu 0 4 1444 1443 1436 1435
		f 4 -2455 2458 2459 2460
		mu 0 4 1420 1442 1445 1446
		f 4 -2451 2461 2462 -2459
		mu 0 4 1442 1441 1447 1445
		f 4 -2463 2463 2464 2465
		mu 0 4 1445 1447 1448 1449
		f 4 -2460 -2466 2466 2467
		mu 0 4 1446 1445 1449 1450
		f 4 2468 2469 2470 2471
		mu 0 4 1451 1452 1453 1454
		f 4 2472 -2426 2473 -2470
		mu 0 4 1452 1425 1428 1453
		f 4 -2474 -2432 -2467 2474
		mu 0 4 1453 1428 1430 1455
		f 4 -2471 -2475 -2465 2475
		mu 0 4 1454 1453 1455 1456
		f 4 2476 2477 2478 2479
		mu 0 4 1457 1458 1459 1460
		f 4 2480 -2436 2481 -2478
		mu 0 4 1458 1431 1434 1459
		f 4 -2482 -2440 -2473 2482
		mu 0 4 1459 1434 1425 1452
		f 4 -2479 -2483 -2469 2483
		mu 0 4 1460 1459 1452 1451
		f 4 2484 2485 2486 2487
		mu 0 4 1461 1462 1463 1464
		f 4 2488 -2444 2489 -2486
		mu 0 4 1462 1435 1438 1463
		f 4 -2490 -2450 2490 2491
		mu 0 4 1463 1438 1440 1465
		f 4 -2487 -2492 2492 2493
		mu 0 4 1464 1463 1465 1466
		f 4 2494 2495 2496 2497
		mu 0 4 1467 1468 1469 1470
		f 4 2498 -2454 2499 -2496
		mu 0 4 1468 1441 1444 1469
		f 4 -2500 -2458 -2489 2500
		mu 0 4 1469 1444 1435 1462
		f 4 -2497 -2501 -2485 2501
		mu 0 4 1470 1469 1462 1461
		f 4 -2499 2502 2503 -2462
		mu 0 4 1441 1468 1471 1447
		f 4 -2495 2504 2505 -2503
		mu 0 4 1468 1467 1472 1471
		f 4 -2506 2506 2507 2508
		mu 0 4 1471 1472 1473 1474
		f 4 -2504 -2509 2509 -2464
		mu 0 4 1447 1471 1474 1448
		f 4 2510 2511 2512 2513
		mu 0 4 1475 1476 1477 1478
		f 4 2514 -2472 2515 -2512
		mu 0 4 1476 1451 1454 1477
		f 4 -2516 -2476 -2510 2516
		mu 0 4 1477 1454 1456 1479
		f 4 -2513 -2517 -2508 2517
		mu 0 4 1478 1477 1479 1480
		f 4 2518 2519 2520 2521
		mu 0 4 1481 1482 1483 1484
		f 4 2522 -2480 2523 -2520
		mu 0 4 1482 1457 1460 1483
		f 4 -2524 -2484 -2515 2524
		mu 0 4 1483 1460 1451 1476
		f 4 -2521 -2525 -2511 2525
		mu 0 4 1484 1483 1476 1475
		f 4 2526 2527 2528 2529
		mu 0 4 1485 1486 1487 1488
		f 4 -2493 2530 -2528 2531
		mu 0 4 1466 1465 1487 1486
		f 4 2532 -2529 -2531 -2491
		mu 0 4 1440 1488 1487 1465
		f 4 2533 2534 2535 2536
		mu 0 4 1489 1490 1491 1492
		f 4 2537 -2488 2538 -2535
		mu 0 4 1490 1461 1464 1491
		f 4 -2539 -2494 2539 2540
		mu 0 4 1491 1464 1466 1493
		f 4 -2536 -2541 2541 2542
		mu 0 4 1492 1491 1493 1494
		f 4 2543 2544 2545 2546
		mu 0 4 1495 1496 1497 1498
		f 4 2547 -2498 2548 -2545
		mu 0 4 1496 1467 1470 1497
		f 4 -2549 -2502 -2538 2549
		mu 0 4 1497 1470 1461 1490
		f 4 -2546 -2550 -2534 2550
		mu 0 4 1498 1497 1490 1489
		f 4 -2548 2551 2552 -2505
		mu 0 4 1467 1496 1499 1472
		f 4 -2544 2553 2554 -2552
		mu 0 4 1496 1495 1500 1499
		f 4 -2555 2555 2556 2557
		mu 0 4 1499 1500 1501 1502
		f 4 -2553 -2558 2558 -2507
		mu 0 4 1472 1499 1502 1473
		f 4 2559 2560 2561 2562
		mu 0 4 1503 1504 1505 1506
		f 4 2563 -2514 2564 -2561
		mu 0 4 1504 1475 1478 1505
		f 4 -2565 -2518 -2559 2565
		mu 0 4 1505 1478 1480 1507
		f 4 -2562 -2566 -2557 2566
		mu 0 4 1506 1505 1507 1508
		f 4 2567 2568 2569 2570
		mu 0 4 1509 1510 1511 1512
		f 4 2571 -2522 2572 -2569
		mu 0 4 1510 1481 1484 1511
		f 4 -2573 -2526 -2564 2573
		mu 0 4 1511 1484 1475 1504
		f 4 -2570 -2574 -2560 2574
		mu 0 4 1512 1511 1504 1503
		f 4 2575 2576 2577 2578
		mu 0 4 1513 1514 1515 1516
		f 4 2579 -2542 2580 -2577
		mu 0 4 1514 1494 1493 1515
		f 4 -2581 -2540 -2532 2581
		mu 0 4 1515 1493 1466 1486
		f 4 -2578 -2582 -2527 2582
		mu 0 4 1516 1515 1486 1485
		f 4 2583 2584 2585 -2342
		mu 0 4 1370 1517 1518 1371
		f 4 2586 2587 2588 -2585
		mu 0 4 1517 1519 1520 1518
		f 4 -2589 2589 -2396 2590
		mu 0 4 1518 1520 1408 1407
		f 4 -2586 -2591 -2394 -2344
		mu 0 4 1371 1518 1407 1372
		f 4 2591 2592 2593 2594
		mu 0 4 1417 1521 1522 1523
		f 4 2595 2596 2597 -2593
		mu 0 4 1521 1524 1525 1522
		f 4 -2598 2598 -2341 2599
		mu 0 4 1522 1525 1370 1367
		f 4 -2594 -2600 -2337 2600
		mu 0 4 1523 1522 1367 1366
		f 4 -2399 2601 2602 2603
		mu 0 4 1410 1409 1526 1527
		f 4 -2397 2604 2605 -2602
		mu 0 4 1409 1408 1528 1526
		f 4 -2606 2606 -2379 2607
		mu 0 4 1526 1528 1529 1530
		f 4 -2603 -2608 -2377 2608
		mu 0 4 1527 1526 1530 1531
		f 4 -2590 2609 2610 -2605
		mu 0 4 1408 1520 1532 1528
		f 4 -2588 2611 2612 -2610
		mu 0 4 1520 1519 1533 1532
		f 4 -2613 2613 -2389 2614
		mu 0 4 1532 1533 1534 1535
		f 4 -2611 -2615 -2387 -2607
		mu 0 4 1528 1532 1535 1529
		f 4 2615 2616 2617 2618
		mu 0 4 1536 1537 1538 1539
		f 4 2619 -2384 2620 -2617
		mu 0 4 1537 1399 1540 1538
		f 4 -2621 -2390 -2614 2621
		mu 0 4 1538 1540 1541 1542
		f 4 -2618 -2622 -2612 2622
		mu 0 4 1539 1538 1542 1543
		f 4 2623 2624 2625 -2597
		mu 0 4 1524 1544 1545 1525
		f 4 2626 -2619 2627 -2625
		mu 0 4 1544 1536 1539 1545
		f 4 -2628 -2623 -2587 2628
		mu 0 4 1545 1539 1543 1546
		f 4 -2626 -2629 -2584 -2599
		mu 0 4 1525 1545 1546 1370
		f 4 2629 2630 2631 -2374
		mu 0 4 1394 1547 1548 1549
		f 4 2632 2633 2634 -2631
		mu 0 4 1547 1550 1551 1548
		f 4 -2635 2635 -2604 2636
		mu 0 4 1548 1551 1552 1553
		f 4 -2632 -2637 -2609 -2376
		mu 0 4 1549 1548 1553 1554
		f 4 2637 2638 2639 2640
		mu 0 4 1381 1555 1556 1557
		f 4 2641 2642 2643 -2639
		mu 0 4 1555 1550 1558 1556
		f 4 -2644 2644 2645 2646
		mu 0 4 1556 1558 1559 1560
		f 4 -2640 -2647 2647 2648
		mu 0 4 1557 1556 1560 1561
		f 4 -2648 2649 2650 2651
		mu 0 4 1561 1560 1562 1563
		f 4 -2646 2652 2653 -2650
		mu 0 4 1560 1559 1564 1562
		f 4 -2654 2654 -2627 2655
		mu 0 4 1562 1564 1536 1544
		f 4 -2651 -2656 -2624 2656
		mu 0 4 1563 1562 1544 1524
		f 4 -2420 2657 2658 2659
		mu 0 4 1415 1424 1565 1566
		f 4 -2418 -2363 2660 -2658
		mu 0 4 1424 1385 1382 1565
		f 4 -2661 -2359 -2641 2661
		mu 0 4 1565 1382 1381 1557
		f 4 -2659 -2662 -2649 2662
		mu 0 4 1566 1565 1557 1561
		f 4 -2408 2663 2664 -2592
		mu 0 4 1417 1416 1567 1521
		f 4 -2406 -2660 2665 -2664
		mu 0 4 1416 1415 1566 1567
		f 4 -2666 -2663 -2652 2666
		mu 0 4 1567 1566 1561 1563
		f 4 -2665 -2667 -2657 -2596
		mu 0 4 1521 1567 1563 1524
		f 4 -2645 2667 2668 2669
		mu 0 4 1559 1558 1568 1569
		f 4 -2643 -2633 2670 -2668
		mu 0 4 1558 1550 1547 1568
		f 4 -2671 -2630 -2373 2671
		mu 0 4 1568 1547 1394 1391
		f 4 -2669 -2672 -2369 2672
		mu 0 4 1569 1568 1391 1390
		f 4 -2655 2673 2674 -2616
		mu 0 4 1536 1564 1570 1537
		f 4 -2653 -2670 2675 -2674
		mu 0 4 1564 1559 1569 1570
		f 4 -2676 -2673 -2385 2676
		mu 0 4 1570 1569 1390 1400
		f 4 -2675 -2677 -2381 -2620
		mu 0 4 1537 1570 1400 1399
		f 4 -2642 2677 2678 -2634
		mu 0 4 1550 1555 1571 1551
		f 4 -2638 -2362 2679 -2678
		mu 0 4 1555 1381 1384 1571
		f 4 -2680 -2368 -2393 2680
		mu 0 4 1571 1384 1389 1572
		f 4 -2679 -2681 -2400 -2636
		mu 0 4 1551 1571 1572 1552
		f 4 2681 2682 2683 2684
		mu 0 4 1573 1574 1575 1576
		f 4 2685 2686 2687 -2683
		mu 0 4 1574 1577 1578 1575
		f 4 -2688 2688 2689 2690
		mu 0 4 1575 1578 1579 1580
		f 4 -2684 -2691 2691 2692
		mu 0 4 1576 1575 1580 1581
		f 4 -2692 2693 2694 2695
		mu 0 4 1581 1580 1582 1583
		f 4 -2690 2696 2697 -2694
		mu 0 4 1580 1579 1584 1582
		f 4 -2698 2698 2699 2700
		mu 0 4 1582 1584 1585 1586
		f 4 -2695 -2701 2701 2702
		mu 0 4 1583 1582 1586 1587
		f 4 -2702 2703 2704 2705
		mu 0 4 1588 1589 1590 1591
		f 4 -2700 2706 2707 -2704
		mu 0 4 1589 1592 1593 1590
		f 4 -2708 2708 2709 2710
		mu 0 4 1590 1593 1594 1595
		f 4 -2705 -2711 2711 2712
		mu 0 4 1591 1590 1595 1596
		f 4 2713 2714 2715 2716
		mu 0 4 1597 1598 1599 1600
		f 4 2717 2718 2719 -2715
		mu 0 4 1598 1601 1602 1599
		f 4 -2720 2720 2721 2722
		mu 0 4 1599 1602 1603 1604
		f 4 -2716 -2723 2723 2724
		mu 0 4 1600 1599 1604 1605
		f 4 2725 2726 2727 -2719
		mu 0 4 1601 1606 1607 1602
		f 4 2728 2729 2730 -2727
		mu 0 4 1606 1608 1609 1607
		f 4 -2731 2731 2732 2733
		mu 0 4 1607 1609 1610 1611
		f 4 -2728 -2734 2734 -2721
		mu 0 4 1602 1607 1611 1603
		f 4 -2699 2735 2736 2737
		mu 0 4 1585 1584 1612 1613
		f 4 -2697 2738 2739 -2736
		mu 0 4 1584 1579 1614 1612
		f 4 -2740 2740 2741 2742
		mu 0 4 1612 1614 1615 1616
		f 4 -2737 -2743 2743 2744
		mu 0 4 1613 1612 1616 1617
		f 4 2745 2746 2747 2748
		mu 0 4 1618 1619 1620 1621
		f 4 2749 2750 2751 -2747
		mu 0 4 1619 1622 1623 1620
		f 4 -2752 2752 2753 2754
		mu 0 4 1620 1623 1624 1625
		f 4 -2748 -2755 2755 2756
		mu 0 4 1621 1620 1625 1626
		f 4 2757 2758 2759 2760
		mu 0 4 1627 1628 1629 1630
		f 4 2761 2762 2763 -2759
		mu 0 4 1628 1596 1631 1629
		f 4 -2764 2764 -2750 2765
		mu 0 4 1629 1631 1622 1619
		f 4 -2760 -2766 -2746 2766
		mu 0 4 1630 1629 1619 1618
		f 4 2767 2768 2769 2770
		mu 0 4 1632 1633 1634 1635
		f 4 2771 -2696 2772 -2769
		mu 0 4 1633 1581 1583 1634
		f 4 -2773 -2703 2773 2774
		mu 0 4 1634 1583 1587 1636
		f 4 -2770 -2775 2775 2776
		mu 0 4 1635 1634 1636 1637
		f 4 2777 2778 2779 2780
		mu 0 4 1638 1639 1640 1641
		f 4 2781 -2685 2782 -2779
		mu 0 4 1639 1573 1576 1640
		f 4 -2783 -2693 -2772 2783
		mu 0 4 1640 1576 1581 1633
		f 4 -2780 -2784 -2768 2784
		mu 0 4 1641 1640 1633 1632
		f 4 2785 2786 2787 2788
		mu 0 4 1642 1643 1644 1645
		f 4 2789 -2749 2790 -2787
		mu 0 4 1643 1618 1621 1644
		f 4 -2791 -2757 2791 2792
		mu 0 4 1644 1621 1626 1646
		f 4 -2788 -2793 2793 2794
		mu 0 4 1645 1644 1646 1647
		f 4 2795 2796 2797 2798
		mu 0 4 1648 1649 1650 1651
		f 4 2799 -2761 2800 -2797
		mu 0 4 1649 1627 1630 1650
		f 4 -2801 -2767 -2790 2801
		mu 0 4 1650 1630 1618 1643
		f 4 -2798 -2802 -2786 2802
		mu 0 4 1651 1650 1643 1642
		f 4 2803 2804 2805 2806
		mu 0 4 1652 1653 1654 1655
		f 4 2807 2808 2809 -2805
		mu 0 4 1653 1656 1657 1654
		f 4 -2810 2810 -2800 2811
		mu 0 4 1654 1657 1627 1649
		f 4 -2806 -2812 -2796 2812
		mu 0 4 1655 1654 1649 1648
		f 4 2813 2814 2815 2816
		mu 0 4 1658 1659 1660 1661
		f 4 2817 -2771 2818 -2815
		mu 0 4 1659 1632 1635 1660
		f 4 -2819 -2777 -2808 2819
		mu 0 4 1660 1635 1637 1662
		f 4 -2816 -2820 -2804 2820
		mu 0 4 1661 1660 1662 1663
		f 4 2821 2822 2823 2824
		mu 0 4 1664 1665 1666 1667
		f 4 2825 -2781 2826 -2823
		mu 0 4 1665 1638 1641 1666
		f 4 -2827 -2785 -2818 2827
		mu 0 4 1666 1641 1632 1659
		f 4 -2824 -2828 -2814 2828
		mu 0 4 1667 1666 1659 1658
		f 4 2829 2830 2831 -2822
		mu 0 4 1664 1668 1669 1665
		f 4 2832 2833 -2831 2834
		mu 0 4 1670 1671 1669 1668
		f 4 -2826 -2832 -2834 2835
		mu 0 4 1638 1665 1669 1671
		f 4 2836 2837 2838 2839
		mu 0 4 1672 1673 1674 1675
		f 4 2840 -2789 2841 -2838
		mu 0 4 1673 1642 1645 1674
		f 4 -2842 -2795 2842 2843
		mu 0 4 1674 1645 1647 1676
		f 4 -2839 -2844 2844 2845
		mu 0 4 1675 1674 1676 1677
		f 4 2846 2847 2848 2849
		mu 0 4 1678 1679 1680 1681
		f 4 2850 -2799 2851 -2848
		mu 0 4 1679 1648 1651 1680
		f 4 -2852 -2803 -2841 2852
		mu 0 4 1680 1651 1642 1673
		f 4 -2849 -2853 -2837 2853
		mu 0 4 1681 1680 1673 1672
		f 4 2854 2855 2856 2857
		mu 0 4 1682 1683 1684 1685
		f 4 2858 -2807 2859 -2856
		mu 0 4 1683 1652 1655 1684
		f 4 -2860 -2813 -2851 2860
		mu 0 4 1684 1655 1648 1679
		f 4 -2857 -2861 -2847 2861
		mu 0 4 1685 1684 1679 1678
		f 4 2862 2863 2864 2865
		mu 0 4 1686 1687 1688 1689
		f 4 2866 -2817 2867 -2864
		mu 0 4 1687 1658 1661 1688
		f 4 -2868 -2821 -2859 2868
		mu 0 4 1688 1661 1663 1690
		f 4 -2865 -2869 -2855 2869
		mu 0 4 1689 1688 1690 1691
		f 4 2870 2871 2872 2873
		mu 0 4 1692 1693 1694 1695
		f 4 2874 -2825 2875 -2872
		mu 0 4 1693 1664 1667 1694
		f 4 -2876 -2829 -2867 2876
		mu 0 4 1694 1667 1658 1687
		f 4 -2873 -2877 -2863 2877
		mu 0 4 1695 1694 1687 1686
		f 4 2878 2879 2880 -2871
		mu 0 4 1692 1696 1697 1693
		f 4 2881 2882 2883 -2880
		mu 0 4 1696 1698 1699 1697
		f 4 -2884 2884 -2835 2885
		mu 0 4 1697 1699 1670 1668
		f 4 -2881 -2886 -2830 -2875
		mu 0 4 1693 1697 1668 1664
		f 4 2886 2887 2888 -2228
		mu 0 4 1292 1700 1701 1293
		f 4 2889 -2840 2890 -2888
		mu 0 4 1700 1672 1675 1701
		f 4 -2891 -2846 2891 2892
		mu 0 4 1701 1675 1677 1702
		f 4 -2889 -2893 2893 -2230
		mu 0 4 1293 1701 1702 1294
		f 4 2894 2895 2896 -2239
		mu 0 4 1300 1703 1704 1297
		f 4 2897 -2850 2898 -2896
		mu 0 4 1703 1678 1681 1704
		f 4 -2899 -2854 -2890 2899
		mu 0 4 1704 1681 1672 1700
		f 4 -2897 -2900 -2887 -2235
		mu 0 4 1297 1704 1700 1292
		f 4 2900 2901 2902 -2186
		mu 0 4 1705 1706 1707 1708
		f 4 2903 -2858 2904 -2902
		mu 0 4 1706 1682 1685 1707
		f 4 -2905 -2862 -2898 2905
		mu 0 4 1707 1685 1678 1703
		f 4 -2903 -2906 -2895 -2188
		mu 0 4 1708 1707 1703 1300
		f 4 -2866 2906 2907 2908
		mu 0 4 1686 1689 1709 1710
		f 4 -2870 -2904 2909 -2907
		mu 0 4 1689 1691 1711 1709
		f 4 -2910 -2901 2910 2911
		mu 0 4 1709 1711 1712 1713
		f 4 -2908 -2912 2912 2913
		mu 0 4 1710 1709 1713 1714
		f 4 -2874 2914 2915 2916
		mu 0 4 1692 1695 1715 1716
		f 4 -2878 -2909 2917 -2915
		mu 0 4 1695 1686 1710 1715
		f 4 -2918 -2914 2918 2919
		mu 0 4 1715 1710 1714 1717
		f 4 -2916 -2920 2920 2921
		mu 0 4 1716 1715 1717 1718
		f 4 2922 2923 2924 2925
		mu 0 4 1719 1720 1721 1722
		f 4 2926 -2882 2927 -2924
		mu 0 4 1720 1698 1696 1721
		f 4 -2928 -2879 -2917 2928
		mu 0 4 1721 1696 1692 1716
		f 4 -2925 -2929 -2922 2929
		mu 0 4 1722 1721 1716 1718
		f 4 2930 2931 2932 -2687
		mu 0 4 1577 1723 1724 1578
		f 4 2933 2934 2935 -2932
		mu 0 4 1723 1725 1726 1724
		f 4 -2936 2936 -2741 2937
		mu 0 4 1724 1726 1615 1614
		f 4 -2933 -2938 -2739 -2689
		mu 0 4 1578 1724 1614 1579
		f 4 -2686 2938 2939 2940
		mu 0 4 1577 1574 1727 1728
		f 4 -2682 2941 2942 -2939
		mu 0 4 1574 1573 1729 1727
		f 4 -2943 2943 2944 2945
		mu 0 4 1727 1729 1624 1730
		f 4 -2940 -2946 2946 2947
		mu 0 4 1728 1727 1730 1731
		f 4 -2744 2948 2949 2950
		mu 0 4 1617 1616 1732 1733
		f 4 -2742 2951 2952 -2949
		mu 0 4 1616 1615 1734 1732
		f 4 -2953 2953 -2718 2954
		mu 0 4 1732 1734 1735 1736
		f 4 -2950 -2955 -2714 2955
		mu 0 4 1733 1732 1736 1737
		f 4 -2937 2956 2957 -2952
		mu 0 4 1615 1726 1738 1734
		f 4 -2935 2958 2959 -2957
		mu 0 4 1726 1725 1739 1738
		f 4 -2960 2960 -2729 2961
		mu 0 4 1738 1739 1740 1741
		f 4 -2958 -2962 -2726 -2954
		mu 0 4 1734 1738 1741 1735
		f 4 -2961 2962 2963 -2730
		mu 0 4 1742 1743 1744 1745
		f 4 -2959 2964 2965 -2963
		mu 0 4 1743 1746 1747 1744
		f 4 -2966 2966 2967 2968
		mu 0 4 1744 1747 1748 1749
		f 4 -2964 -2969 2969 -2732
		mu 0 4 1745 1744 1749 1610
		f 4 -2934 2970 2971 -2965
		mu 0 4 1746 1750 1751 1747
		f 4 -2931 -2941 2972 -2971
		mu 0 4 1750 1577 1728 1751
		f 4 -2973 -2948 2973 2974
		mu 0 4 1751 1728 1731 1752
		f 4 -2972 -2975 2975 -2967
		mu 0 4 1747 1751 1752 1748
		f 4 -2951 2976 2977 2978
		mu 0 4 1753 1754 1755 1756
		f 4 -2956 -2717 2979 -2977
		mu 0 4 1754 1757 1758 1755
		f 4 -2980 -2725 2980 2981
		mu 0 4 1755 1758 1605 1759
		f 4 -2978 -2982 2982 2983
		mu 0 4 1756 1755 1759 1760
		f 4 2984 2985 2986 2987
		mu 0 4 1594 1761 1762 1763
		f 4 2988 2989 2990 -2986
		mu 0 4 1761 1760 1764 1762
		f 4 -2991 2991 2992 2993
		mu 0 4 1762 1764 1765 1766
		f 4 -2987 -2994 2994 2995
		mu 0 4 1763 1762 1766 1767
		f 4 -2995 2996 2997 2998
		mu 0 4 1767 1766 1768 1769
		f 4 -2993 2999 3000 -2997
		mu 0 4 1766 1765 1770 1768
		f 4 -3001 3001 -2976 3002
		mu 0 4 1768 1770 1748 1752
		f 4 -2998 -3003 -2974 3003
		mu 0 4 1769 1768 1752 1731
		f 4 -2765 3004 3005 3006
		mu 0 4 1622 1631 1771 1772
		f 4 -2763 -2712 3007 -3005
		mu 0 4 1631 1596 1595 1771
		f 4 -3008 -2710 -2988 3008
		mu 0 4 1771 1595 1594 1763
		f 4 -3006 -3009 -2996 3009
		mu 0 4 1772 1771 1763 1767
		f 4 -2753 3010 3011 -2945
		mu 0 4 1624 1623 1773 1730
		f 4 -2751 -3007 3012 -3011
		mu 0 4 1623 1622 1772 1773
		f 4 -3013 -3010 -2999 3013
		mu 0 4 1773 1772 1767 1769
		f 4 -3012 -3014 -3004 -2947
		mu 0 4 1730 1773 1769 1731
		f 4 -2992 3014 3015 3016
		mu 0 4 1765 1764 1774 1775
		f 4 -2990 -2983 3017 -3015
		mu 0 4 1764 1760 1759 1774
		f 4 -3018 -2981 -2724 3018
		mu 0 4 1774 1759 1605 1604
		f 4 -3016 -3019 -2722 3019
		mu 0 4 1775 1774 1604 1603
		f 4 -3002 3020 3021 -2968
		mu 0 4 1748 1770 1776 1749
		f 4 -3000 -3017 3022 -3021
		mu 0 4 1770 1765 1775 1776
		f 4 -3023 -3020 -2735 3023
		mu 0 4 1776 1775 1603 1611
		f 4 -3022 -3024 -2733 -2970
		mu 0 4 1749 1776 1611 1610
		f 4 -2738 3024 3025 -2707
		mu 0 4 1592 1777 1778 1593
		f 4 -2745 -2979 3026 -3025
		mu 0 4 1777 1753 1756 1778
		f 4 -3027 -2984 -2989 3027
		mu 0 4 1778 1756 1760 1761
		f 4 -3026 -3028 -2985 -2709
		mu 0 4 1593 1778 1761 1594
		f 4 3028 3029 3030 3031
		mu 0 4 1779 1780 1781 1782
		f 4 3032 -1029 3033 -3030
		mu 0 4 1780 1783 1784 1781
		f 4 -3034 -1027 3034 3035
		mu 0 4 1781 1784 1785 1786
		f 4 -3031 -3036 3036 3037
		mu 0 4 1782 1781 1786 1787
		f 4 3038 3039 3040 3041
		mu 0 4 1788 1789 1790 1791
		f 4 3042 -3032 3043 -3040
		mu 0 4 1789 1779 1782 1790
		f 4 -3044 -3038 3044 3045
		mu 0 4 1790 1782 1787 1792
		f 4 -3041 -3046 3046 3047
		mu 0 4 1791 1790 1792 1793
		f 4 3048 3049 3050 3051
		mu 0 4 1794 1795 1796 1797
		f 4 3052 -3042 3053 -3050
		mu 0 4 1795 1788 1791 1796
		f 4 -3054 -3048 3054 3055
		mu 0 4 1796 1791 1793 1798
		f 4 -3051 -3056 3056 3057
		mu 0 4 1797 1796 1798 1799
		f 4 3058 3059 3060 3061
		mu 0 4 1800 1801 1802 1803
		f 4 3062 -3052 3063 -3060
		mu 0 4 1801 1794 1797 1802
		f 4 -3064 -3058 3064 3065
		mu 0 4 1802 1797 1799 1804
		f 4 -3061 -3066 3066 3067
		mu 0 4 1803 1802 1804 1805
		f 4 3068 3069 3070 3071
		mu 0 4 1806 1807 1808 1809
		f 4 3072 -3062 3073 -3070
		mu 0 4 1807 1800 1803 1808
		f 4 -3074 -3068 -2913 3074
		mu 0 4 1808 1803 1805 1810
		f 4 -3071 -3075 -2911 3075
		mu 0 4 1809 1808 1810 1262
		f 4 3076 3077 3078 -1069
		mu 0 4 1811 1812 1813 1814
		f 4 3079 -3072 3080 -3078
		mu 0 4 1812 1806 1809 1813
		f 4 -3081 -3076 -2185 3081
		mu 0 4 1813 1809 1262 1261
		f 4 -3079 -3082 -2183 -1073
		mu 0 4 1814 1813 1261 1260
		f 4 -2255 3082 3083 3084
		mu 0 4 1315 1314 1815 1816
		f 4 -2253 -1086 3085 -3083
		mu 0 4 1314 1313 1817 1815
		f 4 -3086 -1084 3086 3087
		mu 0 4 1815 1817 1818 1819
		f 4 -3084 -3088 3088 3089
		mu 0 4 1816 1815 1819 1820
		f 4 -2265 3090 3091 3092
		mu 0 4 1321 1320 1821 1822
		f 4 -2263 -3085 3093 -3091
		mu 0 4 1320 1315 1816 1821
		f 4 -3094 -3090 3094 3095
		mu 0 4 1821 1816 1820 1823
		f 4 -3092 -3096 3096 3097
		mu 0 4 1822 1821 1823 1824
		f 4 -2270 3098 3099 3100
		mu 0 4 1324 1322 1825 1826
		f 4 -2267 -3093 3101 -3099
		mu 0 4 1322 1321 1822 1825
		f 4 -3102 -3098 3102 3103
		mu 0 4 1825 1822 1824 1827
		f 4 -3100 -3104 3104 3105
		mu 0 4 1826 1825 1827 1828
		f 4 -2280 3106 3107 3108
		mu 0 4 1330 1328 1829 1830
		f 4 -2277 -3101 3109 -3107
		mu 0 4 1328 1324 1826 1829
		f 4 -3110 -3106 3110 3111
		mu 0 4 1829 1826 1828 1831
		f 4 -3108 -3112 3112 3113
		mu 0 4 1830 1829 1831 1832
		f 4 -2295 3114 3115 3116
		mu 0 4 1339 1338 1833 1834
		f 4 -2293 -3109 3117 -3115
		mu 0 4 1338 1330 1830 1833;
	setAttr ".fc[1500:1987]"
		f 4 -3118 -3114 3118 3119
		mu 0 4 1833 1830 1832 1835
		f 4 -3116 -3120 3120 3121
		mu 0 4 1834 1833 1835 1836
		f 4 -2304 3122 3123 -1119
		mu 0 4 1345 1344 1837 1838
		f 4 -2302 -3117 3124 -3123
		mu 0 4 1344 1339 1834 1837
		f 4 -3125 -3122 3125 3126
		mu 0 4 1837 1834 1836 1839
		f 4 -3124 -3127 3127 -1122
		mu 0 4 1838 1837 1839 1840
		f 4 -3089 3128 3129 3130
		mu 0 4 1820 1819 1841 1842
		f 4 -3087 -1134 3131 -3129
		mu 0 4 1819 1818 1843 1841
		f 4 -3132 -1132 -3033 3132
		mu 0 4 1841 1843 1783 1780
		f 4 -3130 -3133 -3029 3133
		mu 0 4 1842 1841 1780 1779
		f 4 -3097 3134 3135 3136
		mu 0 4 1824 1823 1844 1845
		f 4 -3095 -3131 3137 -3135
		mu 0 4 1823 1820 1842 1844
		f 4 -3138 -3134 -3043 3138
		mu 0 4 1844 1842 1779 1789
		f 4 -3136 -3139 -3039 3139
		mu 0 4 1845 1844 1789 1788
		f 4 -3105 3140 3141 3142
		mu 0 4 1828 1827 1846 1847
		f 4 -3103 -3137 3143 -3141
		mu 0 4 1827 1824 1845 1846
		f 4 -3144 -3140 -3053 3144
		mu 0 4 1846 1845 1788 1795
		f 4 -3142 -3145 -3049 3145
		mu 0 4 1847 1846 1795 1794
		f 4 -3113 3146 3147 3148
		mu 0 4 1832 1831 1848 1849
		f 4 -3111 -3143 3149 -3147
		mu 0 4 1831 1828 1847 1848
		f 4 -3150 -3146 -3063 3150
		mu 0 4 1848 1847 1794 1801
		f 4 -3148 -3151 -3059 3151
		mu 0 4 1849 1848 1801 1800
		f 4 -3121 3152 3153 3154
		mu 0 4 1836 1835 1850 1851
		f 4 -3119 -3149 3155 -3153
		mu 0 4 1835 1832 1849 1850
		f 4 -3156 -3152 -3073 3156
		mu 0 4 1850 1849 1800 1807
		f 4 -3154 -3157 -3069 3157
		mu 0 4 1851 1850 1807 1806
		f 4 -3128 3158 3159 -1159
		mu 0 4 1840 1839 1852 1853
		f 4 -3126 -3155 3160 -3159
		mu 0 4 1839 1836 1851 1852
		f 4 -3161 -3158 -3080 3161
		mu 0 4 1852 1851 1806 1812
		f 4 -3160 -3162 -3077 -1162
		mu 0 4 1853 1852 1812 1811
		f 4 -2090 3162 3163 3164
		mu 0 4 1854 1855 1856 1857
		f 4 -2087 -1174 3165 -3163
		mu 0 4 1855 1858 1859 1856
		f 4 -3166 -1172 3166 3167
		mu 0 4 1856 1859 1860 1861
		f 4 -3164 -3168 3168 3169
		mu 0 4 1857 1856 1861 1862
		f 4 -1177 3170 3171 -2333
		mu 0 4 1363 1863 1864 1364
		f 4 -1184 3172 3173 -3171
		mu 0 4 1863 1865 1866 1864
		f 4 -3174 3174 3175 3176
		mu 0 4 1864 1866 1867 1868
		f 4 -3172 -3177 3177 -2335
		mu 0 4 1364 1864 1868 1365
		f 4 -2100 3178 3179 3180
		mu 0 4 1869 1870 1871 1872
		f 4 -2097 -3165 3181 -3179
		mu 0 4 1870 1854 1857 1871
		f 4 -3182 -3170 3182 3183
		mu 0 4 1871 1857 1862 1873
		f 4 -3180 -3184 3184 3185
		mu 0 4 1872 1871 1873 1874
		f 4 3186 3187 3188 3189
		mu 0 4 1875 1876 1877 1878
		f 4 3190 3191 3192 -3188
		mu 0 4 1876 1879 1880 1877
		f 4 -3193 3193 3194 3195
		mu 0 4 1877 1880 1881 1882
		f 4 -3189 -3196 3196 3197
		mu 0 4 1878 1877 1882 1883
		f 4 -3191 3198 3199 3200
		mu 0 4 1879 1876 1884 1885
		f 4 -3187 3201 3202 -3199
		mu 0 4 1876 1875 1886 1884
		f 4 -3203 3203 3204 3205
		mu 0 4 1884 1886 1887 1888
		f 4 -3200 -3206 3206 3207
		mu 0 4 1885 1884 1888 1889
		f 4 -3197 3208 3209 3210
		mu 0 4 1883 1882 1890 1891
		f 4 -3195 3211 3212 -3209
		mu 0 4 1882 1881 1892 1890
		f 4 -3213 3213 3214 3215
		mu 0 4 1890 1892 1893 1894
		f 4 -3210 -3216 3216 3217
		mu 0 4 1891 1890 1894 1895
		f 4 3218 3219 3220 3221
		mu 0 4 1896 1897 1898 1899
		f 4 3222 3223 3224 -3220
		mu 0 4 1897 1900 1901 1898
		f 4 -3225 3225 3226 3227
		mu 0 4 1898 1901 1902 1903
		f 4 -3221 -3228 3228 3229
		mu 0 4 1899 1898 1903 1904
		f 4 3230 3231 3232 3233
		mu 0 4 1895 1905 1906 1907
		f 4 3234 3235 3236 -3232
		mu 0 4 1905 1908 1909 1906
		f 4 -3237 3237 3238 3239
		mu 0 4 1906 1909 1910 1911
		f 4 -3233 -3240 3240 3241
		mu 0 4 1907 1906 1911 1912
		f 4 3242 3243 3244 3245
		mu 0 4 1913 1914 1915 1916
		f 4 3246 3247 3248 -3244
		mu 0 4 1914 1917 1918 1915
		f 4 -3249 3249 3250 3251
		mu 0 4 1915 1918 1919 1920
		f 4 -3245 -3252 3252 3253
		mu 0 4 1916 1915 1920 1921
		f 4 3254 3255 3256 3257
		mu 0 4 1922 1923 1924 1925
		f 4 3258 3259 -3256 3260
		mu 0 4 1913 1926 1924 1923
		f 4 3261 -3257 -3260 3262
		mu 0 4 1927 1925 1924 1926
		f 4 -3258 3263 3264 3265
		mu 0 4 1922 1925 1928 1929
		f 4 -3262 3266 3267 -3264
		mu 0 4 1925 1927 1930 1928
		f 4 -3268 3268 3269 3270
		mu 0 4 1928 1930 1931 1932
		f 4 -3265 -3271 3271 3272
		mu 0 4 1929 1928 1932 1904
		f 4 3273 3274 3275 -1280
		mu 0 4 1933 1934 1935 1936
		f 4 3276 3277 3278 -3275
		mu 0 4 1934 1937 1938 1935
		f 4 -3279 3279 3280 3281
		mu 0 4 1935 1938 1939 1940
		f 4 -3276 -3282 3282 -1284
		mu 0 4 1936 1935 1940 1941
		f 4 3283 3284 3285 -1292
		mu 0 4 1942 1943 1944 1945
		f 4 3286 3287 3288 -3285
		mu 0 4 1943 1946 1947 1944
		f 4 -3289 3289 3290 3291
		mu 0 4 1944 1947 1948 1949
		f 4 -3286 -3292 3292 -1296
		mu 0 4 1945 1944 1949 1950
		f 4 -1307 3293 3294 3295
		mu 0 4 1951 1952 1953 1954
		f 4 -1313 3296 3297 -3294
		mu 0 4 1952 1955 1956 1953
		f 4 -3298 3298 -3207 3299
		mu 0 4 1953 1956 1889 1888
		f 4 -3295 -3300 -3205 3300
		mu 0 4 1954 1953 1888 1887
		f 4 3301 3302 3303 -1314
		mu 0 4 1957 1958 1959 1960
		f 4 3304 -3201 3305 -3303
		mu 0 4 1958 1879 1885 1959
		f 4 -3306 -3208 -3299 3306
		mu 0 4 1959 1885 1889 1961
		f 4 -3304 -3307 -3297 -1318
		mu 0 4 1960 1959 1961 1962
		f 4 -3305 3307 3308 -3192
		mu 0 4 1879 1958 1963 1880
		f 4 -3302 -1329 3309 -3308
		mu 0 4 1958 1957 1964 1963
		f 4 -3310 -1327 3310 3311
		mu 0 4 1963 1964 1965 1966
		f 4 -3309 -3312 3312 -3194
		mu 0 4 1880 1963 1966 1881
		f 4 3313 3314 3315 3316
		mu 0 4 1967 1968 1969 1970
		f 4 3317 -3313 3318 -3315
		mu 0 4 1968 1881 1966 1969
		f 4 -3319 -3311 -1337 3319
		mu 0 4 1969 1966 1965 1971
		f 4 -3316 -3320 -1335 3320
		mu 0 4 1970 1969 1971 1972
		f 4 -3250 3321 3322 3323
		mu 0 4 1919 1918 1973 1974
		f 4 -3248 3324 3325 -3322
		mu 0 4 1918 1917 1975 1973
		f 4 -3326 3326 -1346 3327
		mu 0 4 1973 1975 1976 1977
		f 4 -3323 -3328 -1344 3328
		mu 0 4 1974 1973 1977 1978
		f 4 3329 3330 3331 -1350
		mu 0 4 1979 1980 1981 1982
		f 4 3332 3333 3334 -3331
		mu 0 4 1980 1983 1984 1981
		f 4 -3335 3335 3336 3337
		mu 0 4 1981 1984 1985 1986
		f 4 -3332 -3338 3338 -1354
		mu 0 4 1982 1981 1986 1987
		f 4 3339 3340 3341 -3334
		mu 0 4 1983 1988 1989 1984
		f 4 3342 3343 3344 -3341
		mu 0 4 1988 1927 1990 1989
		f 4 -3345 3345 3346 3347
		mu 0 4 1989 1990 1991 1992
		f 4 -3342 -3348 3348 -3336
		mu 0 4 1984 1989 1992 1985
		f 4 -3253 3349 3350 3351
		mu 0 4 1921 1920 1993 1994
		f 4 -3251 3352 3353 -3350
		mu 0 4 1920 1919 1995 1993
		f 4 -3354 3354 3355 3356
		mu 0 4 1993 1995 1996 1997
		f 4 -3351 -3357 3357 3358
		mu 0 4 1994 1993 1997 1998
		f 4 -3324 3359 3360 -3353
		mu 0 4 1919 1974 1999 1995
		f 4 -3329 -1389 3361 -3360
		mu 0 4 1974 1978 2000 1999
		f 4 -3362 -1387 3362 3363
		mu 0 4 1999 2000 2001 2002
		f 4 -3361 -3364 3364 -3355
		mu 0 4 1995 1999 2002 1996
		f 4 3365 3366 3367 -3325
		mu 0 4 1917 2003 2004 1975
		f 4 3368 3369 3370 -3367
		mu 0 4 2003 2005 2006 2004
		f 4 -3371 3371 -1395 3372
		mu 0 4 2004 2006 2007 2008
		f 4 -3368 -3373 -1393 -3327
		mu 0 4 1975 2004 2008 1976
		f 4 3373 3374 3375 3376
		mu 0 4 2009 2010 2011 2012
		f 4 3377 -3369 3378 -3375
		mu 0 4 2010 2005 2003 2011
		f 4 -3379 -3366 -3247 3379
		mu 0 4 2011 2003 1917 1914
		f 4 -3376 -3380 -3243 3380
		mu 0 4 2012 2011 1914 1913
		f 4 3381 3382 3383 3384
		mu 0 4 2013 2014 2015 2016
		f 4 3385 -3377 3386 -3383
		mu 0 4 2014 2009 2012 2015
		f 4 -3387 -3381 -3261 3387
		mu 0 4 2015 2012 1913 1923
		f 4 -3384 -3388 -3255 3388
		mu 0 4 2016 2015 1923 1922
		f 4 3389 3390 3391 3392
		mu 0 4 2017 2018 2019 2020
		f 4 3393 3394 3395 -3391
		mu 0 4 2018 2021 2022 2019
		f 4 -3396 3396 3397 3398
		mu 0 4 2019 2022 2023 2024
		f 4 -3392 -3399 3399 3400
		mu 0 4 2020 2019 2024 2025
		f 4 -3293 3401 3402 -1428
		mu 0 4 1950 1949 2026 2027
		f 4 -3291 3403 3404 -3402
		mu 0 4 1949 1948 2028 2026
		f 4 -3405 3405 -3277 3406
		mu 0 4 2026 2028 1937 1934
		f 4 -3403 -3407 -3274 -1431
		mu 0 4 2027 2026 1934 1933
		f 4 3407 3408 3409 3410
		mu 0 4 2029 2030 2031 2032
		f 4 3411 -3222 3412 -3409
		mu 0 4 2030 2033 2034 2031
		f 4 -3413 -3230 3413 3414
		mu 0 4 2031 2034 2035 2036
		f 4 -3410 -3415 3415 3416
		mu 0 4 2032 2031 2036 2037
		f 4 -3272 3417 3418 -3414
		mu 0 4 2035 2038 2039 2036
		f 4 -3270 3419 3420 -3418
		mu 0 4 2038 2040 2041 2039
		f 4 -3421 3421 3422 3423
		mu 0 4 2039 2041 2042 2043
		f 4 -3419 -3424 3424 -3416
		mu 0 4 2036 2039 2043 2037
		f 4 3425 3426 3427 -3278
		mu 0 4 2044 2045 2046 2047
		f 4 3428 3429 3430 -3427
		mu 0 4 2045 2048 2049 2046
		f 4 -3431 3431 3432 3433
		mu 0 4 2046 2049 2050 2051
		f 4 -3428 -3434 3434 -3280
		mu 0 4 2047 2046 2051 2052
		f 4 -3406 3435 3436 -3426
		mu 0 4 2044 2053 2054 2045
		f 4 -3404 3437 3438 -3436
		mu 0 4 2053 2055 2056 2054
		f 4 -3439 3439 3440 3441
		mu 0 4 2054 2056 2057 2058
		f 4 -3437 -3442 3442 -3429
		mu 0 4 2045 2054 2058 2048
		f 4 3443 3444 3445 3446
		mu 0 4 2059 2060 2061 2062
		f 4 3447 3448 -3445 3449
		mu 0 4 2063 2064 2061 2060
		f 4 3450 -3446 -3449 3451
		mu 0 4 2065 2062 2061 2064
		f 4 -3447 3452 3453 -3390
		mu 0 4 2017 2066 2067 2018
		f 4 -3451 3454 3455 -3453
		mu 0 4 2066 2065 2068 2067
		f 4 -3456 3456 3457 3458
		mu 0 4 2067 2068 2069 2070
		f 4 -3454 -3459 3459 -3394
		mu 0 4 2018 2067 2070 2021
		f 4 -3393 3460 3461 -3444
		mu 0 4 2059 2071 2072 2060
		f 4 3462 3463 -3461 -3401
		mu 0 4 2073 2074 2072 2071
		f 4 -3450 -3462 -3464 3464
		mu 0 4 2063 2060 2072 2074
		f 4 -2166 3465 3466 -1494
		mu 0 4 2075 2076 2077 2078
		f 4 -2162 3467 3468 -3466
		mu 0 4 2076 2079 2080 2077
		f 4 -3469 3469 -3175 3470
		mu 0 4 2077 2080 1867 1866
		f 4 -3467 -3471 -3173 -1497
		mu 0 4 2078 2077 1866 1865
		f 4 3471 3472 3473 -2284
		mu 0 4 2081 2082 2083 2084
		f 4 3474 -2537 3475 -3473
		mu 0 4 2082 1489 1492 2083
		f 4 -3476 -2543 3476 3477
		mu 0 4 2083 1492 1494 2085
		f 4 -3474 -3478 3478 -2286
		mu 0 4 2084 2083 2085 2086
		f 4 3479 3480 3481 -2287
		mu 0 4 2087 2088 2089 2090
		f 4 3482 -2547 3483 -3481
		mu 0 4 2088 1495 1498 2089
		f 4 -3484 -2551 -3475 3484
		mu 0 4 2089 1498 1489 2082
		f 4 -3482 -3485 -3472 -2291
		mu 0 4 2090 2089 2082 2081
		f 4 -3483 3485 3486 -2554
		mu 0 4 1495 2088 2091 1500
		f 4 -3480 -2331 3487 -3486
		mu 0 4 2088 2087 2092 2091
		f 4 -3488 -2336 3488 3489
		mu 0 4 2091 2092 2093 2094
		f 4 -3487 -3490 3490 -2556
		mu 0 4 1500 2091 2094 1501
		f 4 3491 3492 3493 -3176
		mu 0 4 2095 2096 2097 2098
		f 4 3494 -2563 3495 -3493
		mu 0 4 2096 1503 1506 2097
		f 4 -3496 -2567 -3491 3496
		mu 0 4 2097 1506 1508 2099
		f 4 -3494 -3497 -3489 -3178
		mu 0 4 2098 2097 2099 2100
		f 4 3497 3498 3499 3500
		mu 0 4 2101 2102 2103 2104
		f 4 3501 -2571 3502 -3499
		mu 0 4 2102 1509 1512 2103
		f 4 -3503 -2575 -3495 3503
		mu 0 4 2103 1512 1503 2096
		f 4 -3500 -3504 -3492 3504
		mu 0 4 2104 2103 2096 2095
		f 4 -3479 3505 3506 -2328
		mu 0 4 2086 2085 2105 2106
		f 4 -3477 -2580 3507 -3506
		mu 0 4 2085 1494 1514 2105
		f 4 -3508 -2576 3508 3509
		mu 0 4 2105 1514 1513 2107
		f 4 -3507 -3510 3510 -2324
		mu 0 4 2106 2105 2107 2108
		f 4 3511 3512 3513 -3468
		mu 0 4 2079 2109 2110 2080
		f 4 -3501 3514 -3513 3515
		mu 0 4 2111 2112 2110 2109
		f 4 -3470 -3514 -3515 -3505
		mu 0 4 1867 2080 2110 2112
		f 4 -2244 3516 3517 -1547
		mu 0 4 1305 1302 2113 2114
		f 4 -2241 3518 3519 -3517
		mu 0 4 1302 1301 2115 2113
		f 4 -3520 3520 -3365 3521
		mu 0 4 2113 2115 1996 2002
		f 4 -3518 -3522 -3363 -1550
		mu 0 4 2114 2113 2002 2001
		f 4 3522 3523 3524 3525
		mu 0 4 2116 2117 2118 2119
		f 4 3526 -3358 3527 -3524
		mu 0 4 2117 1998 1997 2118
		f 4 -3528 -3356 -3521 3528
		mu 0 4 2118 1997 1996 2115
		f 4 -3525 -3529 -3519 3529
		mu 0 4 2119 2118 2115 1301
		f 4 -2215 3530 3531 -2220
		mu 0 4 1283 1282 2120 2121
		f 4 -2213 3532 3533 -3531
		mu 0 4 1282 1279 2122 2120
		f 4 -3534 3534 -3527 3535
		mu 0 4 2120 2122 1998 2117
		f 4 -3532 -3536 -3523 -2224
		mu 0 4 2121 2120 2117 2116
		f 4 3536 3537 3538 -2206
		mu 0 4 1273 2123 2124 1278
		f 4 3539 -3349 3540 -3538
		mu 0 4 2123 1985 1992 2124
		f 4 -3541 -3347 3541 3542
		mu 0 4 2124 1992 1991 2125
		f 4 -3539 -3543 3543 -2208
		mu 0 4 1278 2124 2125 1279
		f 4 -3339 3544 3545 -1577
		mu 0 4 1987 1986 2126 2127
		f 4 -3337 -3540 3546 -3545
		mu 0 4 1986 1985 2123 2126
		f 4 -3547 -3537 -2198 3547
		mu 0 4 2126 2123 1273 1272
		f 4 -3546 -3548 -2196 -1580
		mu 0 4 2127 2126 1272 1271
		f 4 3548 3549 3550 -1583
		mu 0 4 2128 2129 2130 2131
		f 4 3551 3552 3553 -3550
		mu 0 4 2129 2132 2133 2130
		f 4 -3554 3554 -3287 3555
		mu 0 4 2130 2133 1946 1943
		f 4 -3551 -3556 -3284 -1587
		mu 0 4 2131 2130 1943 1942
		f 4 -3217 3556 3557 -3231
		mu 0 4 1895 1894 2134 1905
		f 4 -3215 3558 3559 -3557
		mu 0 4 1894 1893 2135 2134
		f 4 -3560 3560 3561 3562
		mu 0 4 2134 2135 2136 2137
		f 4 -3558 -3563 3563 -3235
		mu 0 4 1905 2134 2137 1908
		f 4 3564 3565 3566 -1601
		mu 0 4 2138 2139 2140 2141
		f 4 3567 3568 3569 -3566
		mu 0 4 2139 2142 2143 2140
		f 4 -3570 3570 -3317 3571
		mu 0 4 2140 2143 1967 1970
		f 4 -3567 -3572 -3321 -1605
		mu 0 4 2141 2140 1970 1972
		f 4 -1614 3572 3573 3574
		mu 0 4 2144 2145 2146 2147
		f 4 -1620 -3296 3575 -3573
		mu 0 4 2145 1951 1954 2146
		f 4 -3576 -3301 3576 3577
		mu 0 4 2146 1954 1887 2148
		f 4 -3574 -3578 3578 3579
		mu 0 4 2147 2146 2148 2149
		f 4 3580 3581 3582 3583
		mu 0 4 2150 2151 2152 2153
		f 4 3584 3585 3586 -3582
		mu 0 4 2151 2154 2155 2152
		f 4 -3587 3587 3588 3589
		mu 0 4 2152 2155 1912 2156
		f 4 -3583 -3590 3590 3591
		mu 0 4 2153 2152 2156 2132
		f 4 3592 3593 3594 3595
		mu 0 4 2154 2157 2158 2159
		f 4 3596 3597 3598 -3594
		mu 0 4 2157 2160 2161 2158
		f 4 -3599 3599 -3190 3600
		mu 0 4 2158 2161 1875 1878
		f 4 -3595 -3601 -3198 3601
		mu 0 4 2159 2158 1878 1883
		f 4 3602 3603 3604 -3598
		mu 0 4 2160 2162 2163 2161
		f 4 3605 -3579 3606 -3604
		mu 0 4 2162 2149 2148 2163
		f 4 -3607 -3577 -3204 3607
		mu 0 4 2163 2148 1887 1886
		f 4 -3605 -3608 -3202 -3600
		mu 0 4 2161 2163 1886 1875
		f 4 -3588 3608 3609 -3242
		mu 0 4 1912 2155 2164 1907
		f 4 -3586 -3596 3610 -3609
		mu 0 4 2155 2154 2159 2164
		f 4 -3611 -3602 -3211 3611
		mu 0 4 2164 2159 1883 1891
		f 4 -3610 -3612 -3218 -3234
		mu 0 4 1907 2164 1891 1895
		f 4 3612 3613 3614 -1653
		mu 0 4 2165 2166 2167 2168
		f 4 3615 -3584 3616 -3614
		mu 0 4 2166 2150 2153 2167
		f 4 -3617 -3592 -3552 3617
		mu 0 4 2167 2153 2132 2129
		f 4 -3615 -3618 -3549 -1657
		mu 0 4 2168 2167 2129 2128
		f 4 3618 3619 3620 3621
		mu 0 4 2160 2169 2170 2171
		f 4 3622 -3616 3623 -3620
		mu 0 4 2169 2150 2166 2170
		f 4 -3624 -3613 -1668 3624
		mu 0 4 2170 2166 2165 2172
		f 4 -3621 -3625 -1666 3625
		mu 0 4 2171 2170 2172 2173
		f 4 -3606 3626 3627 -3580
		mu 0 4 2149 2162 2174 2175
		f 4 -3603 -3622 3628 -3627
		mu 0 4 2162 2160 2171 2174
		f 4 -3629 -3626 -1675 3629
		mu 0 4 2174 2171 2173 2176
		f 4 -3628 -3630 -1673 -3575
		mu 0 4 2175 2174 2176 2177
		f 4 3630 3631 3632 -3420
		mu 0 4 2040 2178 2179 2041
		f 4 3633 -3435 3634 -3632
		mu 0 4 2178 2052 2051 2179
		f 4 -3635 -3433 3635 3636
		mu 0 4 2179 2051 2050 2180
		f 4 -3633 -3637 3637 -3422
		mu 0 4 2041 2179 2180 2042
		f 4 3638 3639 3640 -3340
		mu 0 4 1983 2181 2182 1988
		f 4 3641 -3634 3642 -3640
		mu 0 4 2181 1939 2183 2182
		f 4 -3643 -3631 -3269 3643
		mu 0 4 2182 2183 1931 1930
		f 4 -3641 -3644 -3267 -3343
		mu 0 4 1988 2182 1930 1927
		f 4 3644 3645 3646 -3438
		mu 0 4 2184 2185 2186 2187
		f 4 3647 -3412 3648 -3646
		mu 0 4 2185 2033 2030 2186
		f 4 -3649 -3408 3649 3650
		mu 0 4 2186 2030 2029 2188
		f 4 -3647 -3651 3651 -3440
		mu 0 4 2187 2186 2188 2189
		f 4 3652 3653 3654 -3645
		mu 0 4 1948 2190 2191 2192
		f 4 -3223 3655 -3654 3656
		mu 0 4 1900 1897 2191 2190
		f 4 -3648 -3655 -3656 -3219
		mu 0 4 1896 2192 2191 1897
		f 4 -3591 3657 3658 -3553
		mu 0 4 2132 2156 2193 2133
		f 4 -3589 3659 3660 -3658
		mu 0 4 2156 1912 2194 2193
		f 4 -3661 3661 3662 3663
		mu 0 4 2193 2194 2195 2196
		f 4 -3659 -3664 3664 -3555
		mu 0 4 2133 2193 2196 1946
		f 4 -1715 3665 3666 3667
		mu 0 4 2197 2198 2199 2200
		f 4 -1723 3668 3669 -3666
		mu 0 4 2198 2201 2202 2199
		f 4 -3670 3670 3671 3672
		mu 0 4 2199 2202 2203 2204
		f 4 -3667 -3673 3673 3674
		mu 0 4 2200 2199 2204 2205
		f 4 -1727 3675 3676 3677
		mu 0 4 2206 2207 2208 2209
		f 4 -1735 3678 3679 -3676
		mu 0 4 2207 2210 2211 2208
		f 4 -3680 3680 3681 3682
		mu 0 4 2208 2211 2212 2213
		f 4 -3677 -3683 3683 3684
		mu 0 4 2209 2208 2213 2214
		f 4 3685 3686 3687 3688
		mu 0 4 2215 2216 2217 2218
		f 4 3689 3690 3691 -3687
		mu 0 4 2216 2219 2220 2217
		f 4 -3692 3692 -3674 3693
		mu 0 4 2217 2220 2205 2204
		f 4 -3688 -3694 -3672 3694
		mu 0 4 2218 2217 2204 2203
		f 4 -3690 3695 3696 3697
		mu 0 4 2219 2216 2221 2222
		f 4 -3686 3698 3699 -3696
		mu 0 4 2216 2215 2223 2221
		f 4 -3700 3700 -3684 3701
		mu 0 4 2221 2223 2214 2213
		f 4 -3697 -3702 -3682 3702
		mu 0 4 2222 2221 2213 2212
		f 4 -2128 3703 3704 3705
		mu 0 4 1226 1225 2224 2225
		f 4 -2126 3706 3707 -3704
		mu 0 4 1225 1224 2226 2224
		f 4 -3708 3708 -3689 3709
		mu 0 4 2224 2226 2215 2218
		f 4 -3705 -3710 -3695 3710
		mu 0 4 2225 2224 2218 2203
		f 4 -2137 3711 3712 -1762
		mu 0 4 1232 1231 2227 2228
		f 4 -2135 -3706 3713 -3712
		mu 0 4 1231 1226 2225 2227
		f 4 -3714 -3711 -3671 3714
		mu 0 4 2227 2225 2203 2202
		f 4 -3713 -3715 -3669 -1765
		mu 0 4 2228 2227 2202 2201
		f 4 -2146 3715 3716 3717
		mu 0 4 1241 1240 2229 2230
		f 4 -2144 -1775 3718 -3716
		mu 0 4 1240 1239 2231 2229
		f 4 -3719 -1773 -3678 3719
		mu 0 4 2229 2231 2206 2209
		f 4 -3717 -3720 -3685 3720
		mu 0 4 2230 2229 2209 2214
		f 4 -3701 3721 3722 -3721
		mu 0 4 2214 2223 2232 2230
		f 4 -3699 -3709 3723 -3722
		mu 0 4 2223 2215 2226 2232
		f 4 -3724 -3707 -2151 3724
		mu 0 4 2232 2226 1224 1242
		f 4 -3723 -3725 -2148 -3718
		mu 0 4 2230 2232 1242 1241
		f 4 -3693 3725 3726 3727
		mu 0 4 2205 2220 2233 2234
		f 4 -3691 3728 3729 -3726
		mu 0 4 2220 2219 2235 2233
		f 4 -3730 3730 -2050 3731
		mu 0 4 2233 2235 1172 1171
		f 4 -3727 -3732 -2048 3732
		mu 0 4 2234 2233 1171 1170
		f 4 -3668 3733 3734 -1788
		mu 0 4 2197 2200 2236 2237
		f 4 -3675 -3728 3735 -3734
		mu 0 4 2200 2205 2234 2236
		f 4 -3736 -3733 -2057 3736
		mu 0 4 2236 2234 1170 1176
		f 4 -3735 -3737 -2062 -1791
		mu 0 4 2237 2236 1176 1180
		f 4 -3681 3737 3738 3739
		mu 0 4 2212 2211 2238 2239
		f 4 -3679 -1801 3740 -3738
		mu 0 4 2211 2210 2240 2238
		f 4 -3741 -1799 -2078 3741
		mu 0 4 2238 2240 1190 1189
		f 4 -3739 -3742 -2076 3742
		mu 0 4 2239 2238 1189 1184
		f 4 -3731 3743 3744 -2066
		mu 0 4 1172 2235 2241 1183
		f 4 -3729 -3698 3745 -3744
		mu 0 4 2235 2219 2222 2241
		f 4 -3746 -3703 -3740 3746
		mu 0 4 2241 2222 2212 2239
		f 4 -3745 -3747 -3743 -2068
		mu 0 4 1183 2241 2239 1184
		f 4 -3623 3747 3748 -3581
		mu 0 4 2150 2169 2242 2151
		f 4 -3597 3749 -3748 -3619
		mu 0 4 2160 2157 2242 2169
		f 4 -3585 -3749 -3750 -3593
		mu 0 4 2154 2151 2242 2157
		f 4 -3229 3750 3751 -3273
		mu 0 4 1904 1903 2243 1929
		f 4 -3227 3752 3753 -3751
		mu 0 4 1903 1902 2244 2243
		f 4 -3754 3754 -3385 3755
		mu 0 4 2243 2244 2013 2016
		f 4 -3752 -3756 -3389 -3266
		mu 0 4 1929 2243 2016 1922
		f 4 -3283 3756 3757 -1815
		mu 0 4 1941 1940 2245 2246
		f 4 -3281 -3642 3758 -3757
		mu 0 4 1940 1939 2181 2245
		f 4 -3759 -3639 -3333 3759
		mu 0 4 2245 2181 1983 1980
		f 4 -3758 -3760 -3330 -1818
		mu 0 4 2246 2245 1980 1979
		f 4 -3755 3760 3761 3762
		mu 0 4 2013 2244 2247 2248
		f 4 -3753 3763 3764 -3761
		mu 0 4 2244 1902 2249 2247
		f 4 -3765 3765 -3238 3766
		mu 0 4 2247 2249 1910 1909
		f 4 -3762 -3767 -3236 3767
		mu 0 4 2248 2247 1909 1908
		f 4 -3564 3768 3769 -3768
		mu 0 4 1908 2137 2250 2248
		f 4 -3562 3770 3771 -3769
		mu 0 4 2137 2136 2251 2250
		f 4 -3772 3772 -3386 3773
		mu 0 4 2250 2251 2009 2014
		f 4 -3770 -3774 -3382 -3763
		mu 0 4 2248 2250 2014 2013
		f 4 3774 3775 3776 -3663
		mu 0 4 2195 2252 2253 2196
		f 4 3777 -3657 3778 -3776
		mu 0 4 2252 1900 2190 2253
		f 4 -3779 -3653 -3290 3779
		mu 0 4 2253 2190 1948 1947
		f 4 -3777 -3780 -3288 -3665
		mu 0 4 2196 2253 1947 1946
		f 4 -3226 3780 3781 -3764
		mu 0 4 1902 1901 2254 2249
		f 4 -3224 -3778 3782 -3781
		mu 0 4 1901 1900 2252 2254
		f 4 -3783 -3775 3783 3784
		mu 0 4 2254 2252 2195 2255
		f 4 -3782 -3785 3785 -3766
		mu 0 4 2249 2254 2255 1910
		f 4 -3241 3786 3787 -3660
		mu 0 4 1912 1911 2256 2194
		f 4 -3786 3788 -3787 -3239
		mu 0 4 1910 2255 2256 1911
		f 4 -3662 -3788 -3789 -3784
		mu 0 4 2195 2194 2256 2255
		f 4 -3372 3789 3790 -1850
		mu 0 4 2007 2006 2257 2258
		f 4 -3370 3791 3792 -3790
		mu 0 4 2006 2005 2259 2257
		f 4 -3793 3793 -3568 3794
		mu 0 4 2257 2259 2142 2139
		f 4 -3791 -3795 -3565 -1853
		mu 0 4 2258 2257 2139 2138
		f 4 3795 3796 3797 -3771
		mu 0 4 2136 2260 2261 2251
		f 4 3798 -3794 3799 -3797
		mu 0 4 2260 2142 2259 2261
		f 4 -3800 -3792 -3378 3800
		mu 0 4 2261 2259 2005 2010
		f 4 -3798 -3801 -3374 -3773
		mu 0 4 2251 2261 2010 2009
		f 4 -3571 3801 3802 3803
		mu 0 4 1967 2143 2262 2263
		f 4 -3569 -3799 3804 -3802
		mu 0 4 2143 2142 2260 2262
		f 4 -3805 -3796 -3561 3805
		mu 0 4 2262 2260 2136 2135
		f 4 -3803 -3806 -3559 3806
		mu 0 4 2263 2262 2135 1893
		f 4 -3214 3807 3808 -3807
		mu 0 4 1893 1892 2264 2263
		f 4 -3318 3809 -3808 -3212
		mu 0 4 1881 1968 2264 1892
		f 4 -3804 -3809 -3810 -3314
		mu 0 4 1967 2263 2264 1968
		f 4 -3263 3810 3811 -3344
		mu 0 4 1927 1926 2265 1990
		f 4 -3259 -3246 3812 -3811
		mu 0 4 1926 1913 1916 2265
		f 4 -3813 -3254 3813 3814
		mu 0 4 2265 1916 1921 2266
		f 4 -3812 -3815 3815 -3346
		mu 0 4 1990 2265 2266 1991
		f 4 -3443 3816 3817 3818
		mu 0 4 2048 2058 2267 2268
		f 4 -3441 3819 3820 -3817
		mu 0 4 2058 2057 2269 2267
		f 4 -3821 3821 -3400 3822
		mu 0 4 2267 2269 2025 2024
		f 4 -3818 -3823 -3398 3823
		mu 0 4 2268 2267 2024 2023
		f 4 -3432 3824 3825 3826
		mu 0 4 2050 2049 2270 2271
		f 4 -3430 -3819 3827 -3825
		mu 0 4 2049 2048 2268 2270
		f 4 -3828 -3824 -3397 3828
		mu 0 4 2270 2268 2023 2022
		f 4 -3826 -3829 -3395 3829
		mu 0 4 2271 2270 2022 2021
		f 4 -3638 3830 3831 3832
		mu 0 4 2042 2180 2272 2273
		f 4 -3636 -3827 3833 -3831
		mu 0 4 2180 2050 2271 2272
		f 4 -3834 -3830 -3460 3834
		mu 0 4 2272 2271 2021 2070
		f 4 -3832 -3835 -3458 3835
		mu 0 4 2273 2272 2070 2069
		f 4 -3425 3836 3837 3838
		mu 0 4 2037 2043 2274 2275
		f 4 -3423 -3833 3839 -3837
		mu 0 4 2043 2042 2273 2274
		f 4 -3840 -3836 -3457 3840
		mu 0 4 2274 2273 2069 2068
		f 4 -3838 -3841 -3455 3841
		mu 0 4 2275 2274 2068 2065
		f 4 3842 3843 3844 -3448
		mu 0 4 2063 2276 2277 2064
		f 4 3845 -3411 3846 -3844
		mu 0 4 2276 2029 2032 2277
		f 4 -3847 -3417 -3839 3847
		mu 0 4 2277 2032 2037 2275
		f 4 -3845 -3848 -3842 -3452
		mu 0 4 2064 2277 2275 2065
		f 4 -3652 3848 3849 -3820
		mu 0 4 2189 2188 2278 2279
		f 4 -3650 -3846 3850 -3849
		mu 0 4 2188 2029 2276 2278
		f 4 -3851 -3843 -3465 3851
		mu 0 4 2278 2276 2063 2074
		f 4 -3850 -3852 -3463 -3822
		mu 0 4 2279 2278 2074 2073
		f 4 -3544 3852 3853 -3533
		mu 0 4 1279 2125 2280 2122
		f 4 -3542 -3816 3854 -3853
		mu 0 4 2125 1991 2266 2280
		f 4 -3855 -3814 -3352 3855
		mu 0 4 2280 2266 1921 1994
		f 4 -3854 -3856 -3359 -3535
		mu 0 4 2122 2280 1994 1998
		f 4 -3037 3856 3857 3858
		mu 0 4 1787 1786 2281 2282
		f 4 -3035 -1926 3859 -3857
		mu 0 4 1786 1785 2283 2281
		f 4 -3860 -1924 -2194 3860
		mu 0 4 2281 2283 1269 1266
		f 4 -3858 -3861 -2190 3861
		mu 0 4 2282 2281 1266 1265
		f 4 3862 3863 3864 -2219
		mu 0 4 1285 2284 2285 1281
		f 4 3865 -3057 3866 -3864
		mu 0 4 2284 1799 1798 2285
		f 4 -3867 -3055 3867 3868
		mu 0 4 2285 1798 1793 2286
		f 4 -3865 -3869 3869 -2212
		mu 0 4 1281 2285 2286 1274
		f 4 -3047 3870 3871 -3868
		mu 0 4 1793 1792 2287 2286
		f 4 -3045 -3859 3872 -3871
		mu 0 4 1792 1787 2282 2287
		f 4 -3873 -3862 -2204 3873
		mu 0 4 2287 2282 1265 1275
		f 4 -3872 -3874 -2200 -3870
		mu 0 4 2286 2287 1275 1274
		f 4 3874 3875 3876 -3065
		mu 0 4 2288 2289 2290 2291
		f 4 -2921 3877 -3876 3878
		mu 0 4 1718 1717 2290 2289
		f 4 -3067 -3877 -3878 -2919
		mu 0 4 1714 2291 2290 1717
		f 4 3879 3880 3881 -3863
		mu 0 4 2292 2293 2294 2295
		f 4 3882 -2926 3883 -3881
		mu 0 4 2293 1719 1722 2294
		f 4 -3884 -2930 -3879 3884
		mu 0 4 2294 1722 1718 2289
		f 4 -3882 -3885 -3875 -3866
		mu 0 4 2295 2294 2289 2288
		f 4 -2218 3885 3886 -3880
		mu 0 4 2292 2296 2297 2293
		f 4 -2216 -2223 3887 -3886
		mu 0 4 2296 1286 1289 2297
		f 4 -3888 -2231 3888 3889
		mu 0 4 2297 1289 1294 2298
		f 4 -3887 -3890 3890 -3883
		mu 0 4 2293 2297 2298 1719
		f 4 -2894 3891 3892 -3889
		mu 0 4 1294 1702 2299 2298
		f 4 -2892 3893 3894 -3892
		mu 0 4 1702 1677 2300 2299
		f 4 -3895 3895 -2927 3896
		mu 0 4 2299 2300 1698 1720
		f 4 -3893 -3897 -2923 -3891
		mu 0 4 2298 2299 1720 1719
		f 4 -2885 3897 3898 3899
		mu 0 4 1670 1699 2301 2302
		f 4 -2883 -3896 3900 -3898
		mu 0 4 1699 1698 2300 2301
		f 4 -3901 -3894 -2845 3901
		mu 0 4 2301 2300 1677 1676
		f 4 -3899 -3902 -2843 3902
		mu 0 4 2302 2301 1676 1647
		f 4 -2836 3903 3904 3905
		mu 0 4 1638 1671 2303 2304
		f 4 -2833 -3900 3906 -3904
		mu 0 4 1671 1670 2302 2303
		f 4 -3907 -3903 -2794 3907
		mu 0 4 2303 2302 1647 1646
		f 4 -3905 -3908 -2792 3908
		mu 0 4 2304 2303 1646 1626
		f 4 -2782 3909 3910 -2942
		mu 0 4 1573 1639 2305 1729
		f 4 -2778 -3906 3911 -3910
		mu 0 4 1639 1638 2304 2305
		f 4 -3912 -3909 -2756 3912
		mu 0 4 2305 2304 1626 1625
		f 4 -3911 -3913 -2754 -2944
		mu 0 4 1729 2305 1625 1624
		f 4 -2776 3913 3914 -2809
		mu 0 4 1656 2306 2307 1657
		f 4 -2774 -2706 3915 -3914
		mu 0 4 2306 1588 1591 2307
		f 4 -3916 -2713 -2762 3916
		mu 0 4 2307 1591 1596 1628
		f 4 -3915 -3917 -2758 -2811
		mu 0 4 1657 2307 1628 1627
		f 4 -2431 3917 3918 -2468
		mu 0 4 1450 2308 2309 1446
		f 4 -2429 -2366 3919 -3918
		mu 0 4 2308 1387 1386 2309
		f 4 -3920 -2364 -2417 3920
		mu 0 4 2309 1386 1385 1421
		f 4 -3919 -3921 -2413 -2461
		mu 0 4 1446 2309 1421 1420
		f 4 3921 3922 3923 -2433
		mu 0 4 1431 2310 2311 1432
		f 4 3924 -2411 3925 -3923
		mu 0 4 2310 1419 1418 2311
		f 4 -3926 -2409 -2595 3926
		mu 0 4 2311 1418 1417 1523
		f 4 -3924 -3927 -2601 -2437
		mu 0 4 1432 2311 1523 1366
		f 4 3927 3928 3929 -2477
		mu 0 4 1457 2312 2313 1458
		f 4 3930 -2449 3931 -3929
		mu 0 4 2312 1440 1439 2313
		f 4 -3932 -2447 -3925 3932
		mu 0 4 2313 1439 1419 2310
		f 4 -3930 -3933 -3922 -2481
		mu 0 4 1458 2313 2310 1431
		f 4 3933 3934 3935 -2519
		mu 0 4 1481 2314 2315 1482
		f 4 3936 -2530 3937 -3935
		mu 0 4 2314 1485 1488 2315
		f 4 -3938 -2533 -3931 3938
		mu 0 4 2315 1488 1440 2312
		f 4 -3936 -3939 -3928 -2523
		mu 0 4 1482 2315 2312 1457
		f 4 3939 3940 3941 -2568
		mu 0 4 1509 2316 2317 1510
		f 4 3942 -2579 3943 -3941
		mu 0 4 2316 1513 1516 2317
		f 4 -3944 -2583 -3937 3944
		mu 0 4 2317 1516 1485 2314
		f 4 -3942 -3945 -3934 -2572
		mu 0 4 1510 2317 2314 1481
		f 4 -3511 3945 3946 3947
		mu 0 4 2108 2107 2318 2319
		f 4 -3509 -3943 3948 -3946
		mu 0 4 2107 1513 2316 2318
		f 4 -3949 -3940 -3502 3949
		mu 0 4 2318 2316 1509 2102
		f 4 -3947 -3950 -3498 3950
		mu 0 4 2319 2318 2102 2101
		f 4 3951 3952 3953 -3951
		mu 0 4 2111 2320 2321 2322
		f 4 3954 3955 3956 -3953
		mu 0 4 2320 1874 2323 2321
		f 4 -3957 3957 -2325 3958
		mu 0 4 2321 2323 1352 1357
		f 4 -3954 -3959 -2321 -3948
		mu 0 4 2322 2321 1357 1356
		f 4 -3185 3959 3960 -3956
		mu 0 4 1874 1873 2324 2323
		f 4 -3183 3961 3962 -3960
		mu 0 4 1873 1862 2325 2324
		f 4 -3963 3963 -2317 3964
		mu 0 4 2324 2325 1346 1353
		f 4 -3961 -3965 -2313 -3958
		mu 0 4 2323 2324 1353 1352
		f 4 -3169 3965 3966 -3962
		mu 0 4 1862 1861 2326 2325
		f 4 -3167 -2035 3967 -3966
		mu 0 4 1861 1860 2327 2326
		f 4 -3968 -2033 -2309 3968
		mu 0 4 2326 2327 1350 1347
		f 4 -3967 -3969 -2305 -3964
		mu 0 4 2325 2326 1347 1346
		f 4 -3955 3969 3970 -3186
		mu 0 4 1874 2320 2328 1872
		f 4 -3952 -3516 3971 -3970
		mu 0 4 2320 2111 2109 2328
		f 4 -3972 -3512 -2110 3972
		mu 0 4 2328 2109 2079 2329
		f 4 -3971 -3973 -2113 -3181
		mu 0 4 1872 2328 2329 1869
		f 4 -2227 3973 3974 -2232
		mu 0 4 1292 1291 2330 1295
		f 4 -3526 3975 -3974 -2225
		mu 0 4 1290 2331 2330 1291
		f 4 -2238 -3975 -3976 -3530
		mu 0 4 1298 1295 2330 2331;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "locator1";
	rename -uid "44B14790-4664-54AF-B4A4-19A29B4D8B41";
	setAttr ".t" -type "double3" -8.5854539074592857 12.932377898902612 -0.1738811890534393 ;
	setAttr ".r" -type "double3" 7.8151804060559424 19.128422046704021 13.295569348271354 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "64825BB8-4E85-4E35-E413-4F86DF4D27D7";
	setAttr -k off ".v";
createNode transform -n "locator2";
	rename -uid "A1D15FB2-4D87-43D2-5F21-10966A042F9F";
	setAttr ".t" -type "double3" -0.77645981769415506 14.919026271834177 1.385748878234196 ;
	setAttr ".r" -type "double3" -1.5872555479146049 14.092453763132859 -26.723227559917198 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "857A82AE-44D9-7AF1-630E-DC86841A20B1";
	setAttr -k off ".v";
createNode transform -n "locator3";
	rename -uid "0D343AD8-4EB9-2729-E4A8-A28D40ECC92A";
	setAttr ".t" -type "double3" 9.6284170704037404 17.172261391849815 -1.5540392584455986 ;
	setAttr ".r" -type "double3" 43.412275935895231 18.772307759895877 12.899460902554281 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "43108D5E-401B-F1E0-1332-DC9185A32576";
	setAttr -k off ".v";
createNode transform -n "locator4";
	rename -uid "053D9F32-4778-97DA-EDE6-20AD0038D5A8";
	setAttr ".t" -type "double3" 27.863481220506234 15.828216940264277 -0.32075116755461863 ;
	setAttr ".r" -type "double3" 92.845481459082393 14.434497287419918 91.462480450636363 ;
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "E33153B2-4AD3-66B7-E722-23A857B2685D";
	setAttr -k off ".v";
createNode transform -n "wall";
	rename -uid "7A453A7E-4141-56A1-A014-86B527B34DFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.478817445896929 1.7475533342695733 0 ;
createNode mesh -n "wallShape" -p "wall";
	rename -uid "AEA478F4-46D4-6E3E-6E32-ED97B36FEFE5";
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.029826999 -2.67661548 7.24960518 1.029826999 -2.67661548 7.24960518
		 -1.029826999 2.67661548 7.24960518 1.029826999 2.67661548 7.24960518 -1.029826999 2.67661548 -7.24960518
		 1.029826999 2.67661548 -7.24960518 -1.029826999 -2.67661548 -7.24960518 1.029826999 -2.67661548 -7.24960518;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3132010F-B741-D12B-BE61-1C934A090036";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B17E4364-4D1A-2512-1D0D-439B058362C2";
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
	rename -uid "58C6A844-4C71-2652-3C48-A48927D1E1BB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "48E710EA-4148-E298-313D-939B8AE38B1E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "A59DE162-4452-D04B-3D42-F990CD4FBE96";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A2E75C82-2B4E-C765-51DF-71B0FA877795";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "26956DD3-4549-1F93-25EF-5A93EB972C6E";
createNode displayLayerManager -n "layerManager";
	rename -uid "D747601A-E740-36F4-1E90-9E9493B4ACE9";
createNode displayLayer -n "defaultLayer";
	rename -uid "375E58EB-4629-7711-8C57-B384463AB203";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "73DD8AA5-B342-23A3-9C69-FEA4CA2FD164";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "01AC9A74-4419-55A4-9FD7-D288A6F2C791";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "52C77005-4ACD-8BFC-E947-9CAF5F321D8B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 120 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8C9D8B0E-4813-ED89-DFF5-3EBF2075245F";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -338.59856632809215 -132.92814843553734 ;
	setAttr ".tgi[0].vh" -type "double2" -203.13073545379018 504.76188470446959 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "84EC47BF-BC4D-CDE8-2DBD-6AB339174E3B";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "44BAA273-744B-EEAF-CF18-229238AC28DC";
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
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
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
	setAttr -av ".msaa";
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
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
	setAttr -s 3 ".dsm";
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
	setAttr -av -k on ".mcfr";
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
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "default_meshShape.w" "bifrostGraphShape1.mesh";
connectAttr "locator1.wm" "bifrostGraphShape1.transform";
connectAttr "locator2.wm" "bifrostGraphShape1.transform1";
connectAttr "locator3.wm" "bifrostGraphShape1.transform2";
connectAttr "locator4.wm" "bifrostGraphShape1.transform3";
connectAttr "wallShape.w" "bifrostGraphShape1.mesh2";
connectAttr ":time1.o" "bifrostGraphShape1.JobPorts__time";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bifrostGraphShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "default_meshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallShape.iog" ":initialShadingGroup.dsm" -na;
// End of basic_RBD_01_example.ma
