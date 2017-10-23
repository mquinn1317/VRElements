//Maya ASCII 2017 scene
//Name: spider_model.ma
//Last modified: Tue, Jun 27, 2017 02:27:15 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "268000.13910 - 3.14.3.31 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9104DEEB-7848-6C22-CCE9-A0AC5B707145";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.83927053283463493 2.0399273055982294 -6.9418305629247676 ;
	setAttr ".r" -type "double3" 351.86164726836518 -548.99999999928389 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9CF37F68-CE4E-91D0-331A-BAB3ED3853A4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.6514395416946357;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A07DBD03-3B4F-9CD6-0FEF-87AAAAA31166";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D8C4908F-194E-C36D-005B-4298A7AA8758";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EDF87734-0246-9E46-D178-B6B2270F698F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E08C2BFB-C04B-316E-A08E-7BA7106146D4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "981AD65F-4D4E-76AB-4FE8-30B20C1E78C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2E3C4530-C644-C98E-2EBD-A49021073022";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "spider_grp";
	rename -uid "8B222C74-704A-AD1B-B039-1083C3CAB942";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode transform -n "spider_teeth_grp" -p "spider_grp";
	rename -uid "06EC46F4-FF42-E1DD-6FED-BCA8FE15AB47";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode transform -n "spider_l_bot_tooth1" -p "spider_teeth_grp";
	rename -uid "A5517258-F449-C6AF-74EA-2980735B42ED";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_bot_toothShape1" -p "spider_l_bot_tooth1";
	rename -uid "E8BA3C5E-E347-3EB3-1BE0-EB98C9DD3F07";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.15683065 -0.2492179 -1.23339951 -0.13555941 -0.24529688 -1.21249282
		 -0.15683065 -0.24137586 -1.19158614 -0.1781019 -0.24529688 -1.21249282 -0.15683065 -0.11157514 -1.23757207;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_bot_tooth2" -p "spider_teeth_grp";
	rename -uid "4BC002BD-D04B-C6CD-FD01-F6B16CBC6CD9";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_bot_toothShape2" -p "spider_l_bot_tooth2";
	rename -uid "C68415EE-C14E-5F5B-C880-5BB9D6B5748C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.17035703 -0.22515425 -1.14318144 -0.14908576 -0.22123323 -1.12227476
		 -0.17035703 -0.21731222 -1.10136795 -0.19162828 -0.22123323 -1.12227476 -0.17035703 -0.08751148 -1.14735401;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_bot_tooth3" -p "spider_teeth_grp";
	rename -uid "84A45980-0F4B-7A58-F5EA-1296387973C4";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_bot_toothShape3" -p "spider_l_bot_tooth3";
	rename -uid "98C09B4F-0941-0398-8097-C8888797F24D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.21764854 -0.16265835 -1.063976169 -0.2086665 -0.15794058 -1.03882134
		 -0.23426007 -0.15628488 -1.029993057 -0.24324208 -0.16100265 -1.055148125 -0.22595431 -0.083521128 -1.061228991;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_top_tooth1" -p "spider_teeth_grp";
	rename -uid "B2E9C06B-7E4A-B043-C1E1-C0AC1617F52E";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_top_toothShape1" -p "spider_l_top_tooth1";
	rename -uid "B87A916E-834F-7E7F-4E3A-AAAA1C87E49F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.11133716 -0.0056866109 -1.28691602 -0.13260841 -0.0026162863 -1.26586747
		 -0.11133717 0.00045406818 -1.24481893 -0.090065897 -0.0026162863 -1.26586747 -0.11133717 -0.1372447 -1.24622929;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_top_tooth2" -p "spider_teeth_grp";
	rename -uid "27D89FF1-E941-BCEA-4AB9-54B9C1804D7A";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_top_toothShape2" -p "spider_l_top_tooth2";
	rename -uid "2ACCD4BF-CA41-8FC4-E9BA-53A445E4C596";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.19063956 0.013665229 -1.20649409 -0.21191078 0.016735554 -1.18544567
		 -0.19063956 0.019805908 -1.16439724 -0.16936833 0.016735554 -1.18544567 -0.19063956 -0.11789286 -1.16580749;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_top_tooth3" -p "spider_teeth_grp";
	rename -uid "C76863C1-394E-0773-E588-4CB6114C257A";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_l_top_toothShape3" -p "spider_l_top_tooth3";
	rename -uid "C3B5FBAE-F041-EDF4-D953-139271FEA210";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.5 1 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  -0.21229169 0.013665229 -1.1351378 -0.23356295 0.016735554 -1.11408937
		 -0.2122917 0.019805908 -1.093040705 -0.19102043 0.016735554 -1.11408925 -0.21229169 -0.11789286 -1.09445107;
	setAttr -s 8 ".ed[0:7]"  3 0 0 2 3 0 1 2 0 0 1 0 1 4 0 0 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 1 0
		mu 0 4 0 1 2 3
		f 3 5 -5 -4
		mu 0 3 4 5 6
		f 3 4 -7 -3
		mu 0 3 6 5 7
		f 3 6 -8 -2
		mu 0 3 7 5 8
		f 3 7 -6 -1
		mu 0 3 8 5 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_top_tooth8" -p "spider_teeth_grp";
	rename -uid "856D6C5C-114E-6C60-E0A2-BB8382C015C8";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_top_toothShape8" -p "spider_r_top_tooth8";
	rename -uid "0D00EE78-E942-CD87-1F3C-C6905C23320C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.21229169 0.013665229 -1.1351378 0.23356295 0.016735554 -1.11408937
		 0.2122917 0.019805908 -1.093040705 0.19102043 0.016735554 -1.11408925 0.21229169 -0.11789286 -1.09445107;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_top_tooth6" -p "spider_teeth_grp";
	rename -uid "C49E046F-6948-2B54-6707-D585927C212B";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_top_toothShape6" -p "spider_r_top_tooth6";
	rename -uid "582D0F32-2643-427E-E967-00B240E32878";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.19063956 0.013665229 -1.20649409 0.21191078 0.016735554 -1.18544567
		 0.19063956 0.019805908 -1.16439724 0.16936833 0.016735554 -1.18544567 0.19063956 -0.11789286 -1.16580749;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_top_tooth4" -p "spider_teeth_grp";
	rename -uid "909241C4-404C-1AE6-7C0F-C1B4F987B815";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_top_toothShape4" -p "spider_r_top_tooth4";
	rename -uid "818815B1-1541-B07C-BB4F-599D22A41EAA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.11133716 -0.0056866109 -1.28691602 0.13260841 -0.0026162863 -1.26586747
		 0.11133717 0.00045406818 -1.24481893 0.090065897 -0.0026162863 -1.26586747 0.11133717 -0.1372447 -1.24622929;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_bot_tooth8" -p "spider_teeth_grp";
	rename -uid "6525D386-4545-B891-F079-66A50809DADA";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_bot_toothShape8" -p "spider_r_bot_tooth8";
	rename -uid "99CDD14A-0748-D022-1397-A680C51086BF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.21764854 -0.16265835 -1.063976169 0.2086665 -0.15794058 -1.03882134
		 0.23426007 -0.15628488 -1.029993057 0.24324208 -0.16100265 -1.055148125 0.22595431 -0.083521128 -1.061228991;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_bot_tooth6" -p "spider_teeth_grp";
	rename -uid "8205EE89-0A49-4E70-CC7E-4B8DD37E806D";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_bot_toothShape6" -p "spider_r_bot_tooth6";
	rename -uid "B01E1B04-FB49-9810-58B6-6B9931423634";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.17035703 -0.22515425 -1.14318144 0.14908576 -0.22123323 -1.12227476
		 0.17035703 -0.21731222 -1.10136795 0.19162828 -0.22123323 -1.12227476 0.17035703 -0.08751148 -1.14735401;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_bot_tooth4" -p "spider_teeth_grp";
	rename -uid "E47C5E32-A444-FF28-D46D-D58B3EE67F96";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode mesh -n "spider_r_bot_toothShape4" -p "spider_r_bot_tooth4";
	rename -uid "09E8E586-6C45-DE49-6FD9-25950264DB61";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[0:4]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 5 ".vt[0:4]"  0.15683065 -0.2492179 -1.23339951 0.13555941 -0.24529688 -1.21249282
		 0.15683065 -0.24137586 -1.19158614 0.1781019 -0.24529688 -1.21249282 0.15683065 -0.11157514 -1.23757207;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_eyes_grp" -p "spider_grp";
	rename -uid "A7813FFD-B149-04A9-403A-3F80FA7F2802";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode transform -n "spider_l_eye1" -p "spider_eyes_grp";
	rename -uid "38D35F1A-0D44-E5FB-CDE9-A5836FCE6A52";
	setAttr ".rp" -type "double3" 0.11102903341374715 0.6011032543861724 -1.213056555009747 ;
	setAttr ".sp" -type "double3" 0.11102903341374715 0.6011032543861724 -1.213056555009747 ;
createNode mesh -n "spider_l_eye1Shape" -p "spider_l_eye1";
	rename -uid "63DB4A0C-6B4E-852A-F5C3-3992BB0C8402";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0 0.25 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25 0.125 0.375 0.25 0.375 0.125 0.5 0.25 0.5 0.125 0.625
		 0.25 0.625 0.125 0.75 0.25 0.75 0.125 0.875 0.25 0.875 0.125 1 0.25 1 0.125 0 0.375
		 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1
		 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5
		 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 58 ".vt[0:57]"  -0.13538879 0.095942415 -1.22049236 -0.1299378 0.10149908 -1.22367918
		 -0.12448684 0.10148063 -1.2300849 -0.12222899 0.095897965 -1.23595691 -0.12448689 0.088021204 -1.23785567
		 -0.1299378 0.082464568 -1.23466873 -0.13538876 0.082482986 -1.22826326 -0.13764668 0.088065684 -1.22239101
		 -0.13557327 0.097116649 -1.20935071 -0.12550122 0.10738407 -1.21523929 -0.11542907 0.10735007 -1.22707546
		 -0.11125713 0.097034506 -1.23792565 -0.11542911 0.082480296 -1.24143398 -0.12550116 0.07221283 -1.2355454
		 -0.1355733 0.072246887 -1.22370923 -0.13974527 0.082562342 -1.21285915 -0.13202116 0.096092567 -1.19877315
		 -0.11886125 0.10950756 -1.20646703 -0.10570153 0.1094631 -1.2219317 -0.10025053 0.095985234 -1.23610806
		 -0.10570148 0.076969139 -1.24069214 -0.1188613 0.063554153 -1.23299825 -0.13202113 0.06359861 -1.21753359
		 -0.13747215 0.077076465 -1.2033571 -0.12527314 0.093025886 -1.1903702 -0.11102902 0.10754628 -1.19869816
		 -0.096784942 0.10749809 -1.21543682 -0.090884887 0.092909776 -1.23078132 -0.096784942 0.072326891 -1.23574305
		 -0.11102902 0.057806641 -1.22741508 -0.12527305 0.057854731 -1.21067643 -0.13117319 0.072443061 -1.19533181
		 -0.11635656 0.088383697 -1.18542111 -0.10319678 0.10179871 -1.193115 -0.090036921 0.1017542 -1.20857954
		 -0.084585942 0.088276438 -1.22275615 -0.090036921 0.069260262 -1.22733998 -0.10319673 0.055845398 -1.21964622
		 -0.11635654 0.055889778 -1.20418143 -0.12180754 0.06936755 -1.19000518 -0.10662892 0.082872599 -1.18467915
		 -0.096556835 0.093139954 -1.19056785 -0.086484782 0.093105942 -1.2024039 -0.082312785 0.082790419 -1.21325409
		 -0.086484753 0.068236135 -1.21676254 -0.096556835 0.057968777 -1.21087384 -0.10662896 0.058002774 -1.19903791
		 -0.11080091 0.068318278 -1.18818772 -0.097571231 0.077331632 -1.18825758 -0.092120223 0.08288826 -1.1914444
		 -0.086669274 0.082869865 -1.19784999 -0.08441142 0.077287197 -1.20372212 -0.086669229 0.069410443 -1.20562077
		 -0.092120253 0.0638538 -1.20243406 -0.097571187 0.063872218 -1.19602835 -0.09982913 0.069454923 -1.19015622
		 -0.13149571 0.0927485 -1.23050189 -0.090562277 0.072604373 -1.19561124;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 9 0 8 9 0 0 8 0 1 2 0 2 10 0 9 10 0
		 2 3 0 3 11 0 10 11 0 3 4 0 4 12 0 11 12 0 4 5 0 5 13 0 12 13 0 5 6 0 6 14 0 13 14 0
		 6 7 0 7 15 0 14 15 0 7 0 0 15 8 0 9 17 0 16 17 0 8 16 0 10 18 0 17 18 0 11 19 0 18 19 0
		 12 20 0 19 20 0 13 21 0 20 21 0 14 22 0 21 22 0 15 23 0 22 23 0 23 16 0 17 25 0 24 25 0
		 16 24 0 18 26 0 25 26 0 19 27 0 26 27 0 20 28 0 27 28 0 21 29 0 28 29 0 22 30 0 29 30 0
		 23 31 0 30 31 0 31 24 0 25 33 0 32 33 0 24 32 0 26 34 0 33 34 0 27 35 0 34 35 0 28 36 0
		 35 36 0 29 37 0 36 37 0 30 38 0 37 38 0 31 39 0 38 39 0 39 32 0 33 41 0 40 41 0 32 40 0
		 34 42 0 41 42 0 35 43 0 42 43 0 36 44 0 43 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0
		 46 47 0 47 40 0 41 49 0 48 49 0 40 48 0 42 50 0 49 50 0 43 51 0 50 51 0 44 52 0 51 52 0
		 45 53 0 52 53 0 46 54 0 53 54 0 47 55 0 54 55 0 55 48 0 56 0 0 56 1 0 56 2 0 56 3 0
		 56 4 0 56 5 0 56 6 0 56 7 0 49 57 0 48 57 0 50 57 0 51 57 0 52 57 0 53 57 0 54 57 0
		 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 6 -6 -5
		mu 0 4 3 2 4 5
		f 4 5 9 -9 -8
		mu 0 4 5 4 6 7
		f 4 8 12 -12 -11
		mu 0 4 7 6 8 9
		f 4 11 15 -15 -14
		mu 0 4 9 8 10 11
		f 4 14 18 -18 -17
		mu 0 4 11 10 12 13
		f 4 17 21 -21 -20
		mu 0 4 13 12 14 15
		f 4 20 23 -4 -23
		mu 0 4 15 14 16 17
		f 4 26 25 -25 -3
		mu 0 4 1 18 19 2
		f 4 24 28 -28 -7
		mu 0 4 2 19 20 4
		f 4 27 30 -30 -10
		mu 0 4 4 20 21 6
		f 4 29 32 -32 -13
		mu 0 4 6 21 22 8
		f 4 31 34 -34 -16
		mu 0 4 8 22 23 10
		f 4 33 36 -36 -19
		mu 0 4 10 23 24 12
		f 4 35 38 -38 -22
		mu 0 4 12 24 25 14
		f 4 37 39 -27 -24
		mu 0 4 14 25 26 16
		f 4 42 41 -41 -26
		mu 0 4 18 27 28 19
		f 4 40 44 -44 -29
		mu 0 4 19 28 29 20
		f 4 43 46 -46 -31
		mu 0 4 20 29 30 21
		f 4 45 48 -48 -33
		mu 0 4 21 30 31 22
		f 4 47 50 -50 -35
		mu 0 4 22 31 32 23
		f 4 49 52 -52 -37
		mu 0 4 23 32 33 24
		f 4 51 54 -54 -39
		mu 0 4 24 33 34 25
		f 4 53 55 -43 -40
		mu 0 4 25 34 35 26
		f 4 58 57 -57 -42
		mu 0 4 27 36 37 28
		f 4 56 60 -60 -45
		mu 0 4 28 37 38 29
		f 4 59 62 -62 -47
		mu 0 4 29 38 39 30
		f 4 61 64 -64 -49
		mu 0 4 30 39 40 31
		f 4 63 66 -66 -51
		mu 0 4 31 40 41 32
		f 4 65 68 -68 -53
		mu 0 4 32 41 42 33
		f 4 67 70 -70 -55
		mu 0 4 33 42 43 34
		f 4 69 71 -59 -56
		mu 0 4 34 43 44 35
		f 4 74 73 -73 -58
		mu 0 4 36 45 46 37
		f 4 72 76 -76 -61
		mu 0 4 37 46 47 38
		f 4 75 78 -78 -63
		mu 0 4 38 47 48 39
		f 4 77 80 -80 -65
		mu 0 4 39 48 49 40
		f 4 79 82 -82 -67
		mu 0 4 40 49 50 41
		f 4 81 84 -84 -69
		mu 0 4 41 50 51 42
		f 4 83 86 -86 -71
		mu 0 4 42 51 52 43
		f 4 85 87 -75 -72
		mu 0 4 43 52 53 44
		f 4 90 89 -89 -74
		mu 0 4 45 54 55 46
		f 4 88 92 -92 -77
		mu 0 4 46 55 56 47
		f 4 91 94 -94 -79
		mu 0 4 47 56 57 48
		f 4 93 96 -96 -81
		mu 0 4 48 57 58 49
		f 4 95 98 -98 -83
		mu 0 4 49 58 59 50
		f 4 97 100 -100 -85
		mu 0 4 50 59 60 51
		f 4 99 102 -102 -87
		mu 0 4 51 60 61 52
		f 4 101 103 -91 -88
		mu 0 4 52 61 62 53
		f 3 -106 104 0
		mu 0 3 3 63 0
		f 3 -107 105 4
		mu 0 3 5 64 3
		f 3 -108 106 7
		mu 0 3 7 65 5
		f 3 -109 107 10
		mu 0 3 9 66 7
		f 3 -110 108 13
		mu 0 3 11 67 9
		f 3 -111 109 16
		mu 0 3 13 68 11
		f 3 -112 110 19
		mu 0 3 15 69 13
		f 3 -105 111 22
		mu 0 3 17 70 15
		f 3 113 -113 -90
		mu 0 3 54 71 55
		f 3 112 -115 -93
		mu 0 3 55 72 56
		f 3 114 -116 -95
		mu 0 3 56 73 57
		f 3 115 -117 -97
		mu 0 3 57 74 58
		f 3 116 -118 -99
		mu 0 3 58 75 59
		f 3 117 -119 -101
		mu 0 3 59 76 60
		f 3 118 -120 -103
		mu 0 3 60 77 61
		f 3 119 -114 -104
		mu 0 3 61 78 62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_eye4" -p "spider_eyes_grp";
	rename -uid "B0A39372-474E-6476-802D-A6AB76B0E4DD";
	setAttr ".rp" -type "double3" 0.12048144118217702 0.72534035454172607 -1.0375379407484608 ;
	setAttr ".sp" -type "double3" 0.12048144118217702 0.72534035454172607 -1.0375379407484608 ;
createNode mesh -n "spider_l_eyeShape4" -p "spider_l_eye4";
	rename -uid "6A870080-1A4A-2925-4A86-B58E9D40D1AB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0 0.25 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25 0.125 0.375 0.25 0.375 0.125 0.5 0.25 0.5 0.125 0.625
		 0.25 0.625 0.125 0.75 0.25 0.75 0.125 0.875 0.25 0.875 0.125 1 0.25 1 0.125 0 0.375
		 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1
		 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5
		 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 58 ".vt[0:57]"  -0.14063227 0.22732078 -1.036067247 -0.13419634 0.23212278 -1.038570523
		 -0.12973043 0.23285891 -1.045659781 -0.12985015 0.22909817 -1.053182244 -0.13448578 0.22304326 -1.056731343
		 -0.14092147 0.21824123 -1.054228067 -0.14538768 0.21750513 -1.047139049 -0.14526781 0.22126585 -1.039616346
		 -0.1392307 0.22484744 -1.025228977 -0.12733886 0.23372053 -1.029854417 -0.11908659 0.23508085 -1.04295373
		 -0.11930796 0.22813165 -1.056853533 -0.12787327 0.21694379 -1.063411355 -0.1397652 0.20807076 -1.058785915
		 -0.14801747 0.20671043 -1.045686603 -0.14779615 0.21365957 -1.031787038 -0.13497484 0.21964392 -1.016264439
		 -0.11943737 0.23123716 -1.022308111 -0.10865524 0.23301448 -1.039423108 -0.10894451 0.2239349 -1.057583809
		 -0.12013564 0.20931724 -1.066152334 -0.13567311 0.19772407 -1.0601089 -0.1464552 0.19594668 -1.042993784
		 -0.14616606 0.20502625 -1.024832964 -0.12851247 0.21250227 -1.010538936 -0.11169476 0.22505075 -1.017080545
		 -0.10002425 0.22697452 -1.03560555 -0.10033726 0.21714693 -1.055262685 -0.11245056 0.2013247 -1.064537168
		 -0.1292682 0.1887764 -1.057995558 -0.1409387 0.18685257 -1.039470553 -0.1406256 0.19668017 -1.01981318
		 -0.12082728 0.20450982 -1.0089235306 -0.10528987 0.21610299 -1.014967084 -0.094507672 0.21788035 -1.032082081
		 -0.094796948 0.20880091 -1.05024302 -0.10598812 0.19418299 -1.058811307 -0.12152555 0.1825901 -1.052767873
		 -0.13230771 0.18081251 -1.035652757 -0.13201848 0.18989201 -1.017492056 -0.11308952 0.19688323 -1.011664629
		 -0.10119767 0.20575628 -1.016290069 -0.092945449 0.20711657 -1.029389381 -0.093166851 0.20016745 -1.043289065
		 -0.10173213 0.18897945 -1.049846888 -0.11362401 0.18010651 -1.045221448 -0.12187638 0.17874616 -1.032122374
		 -0.12165494 0.18569535 -1.01822269 -0.10647725 0.1907838 -1.018344641 -0.10004137 0.19558579 -1.020847917
		 -0.095575325 0.19632202 -1.027937055 -0.095695071 0.19256119 -1.035459518 -0.1003306 0.1865063 -1.039008617
		 -0.10676643 0.18170433 -1.036505461 -0.11123251 0.18096797 -1.029416084 -0.11111278 0.18472891 -1.02189362
		 -0.13896605 0.22668722 -1.047129393 -0.10199683 0.18713988 -1.027946472;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 9 0 8 9 0 0 8 0 1 2 0 2 10 0 9 10 0
		 2 3 0 3 11 0 10 11 0 3 4 0 4 12 0 11 12 0 4 5 0 5 13 0 12 13 0 5 6 0 6 14 0 13 14 0
		 6 7 0 7 15 0 14 15 0 7 0 0 15 8 0 9 17 0 16 17 0 8 16 0 10 18 0 17 18 0 11 19 0 18 19 0
		 12 20 0 19 20 0 13 21 0 20 21 0 14 22 0 21 22 0 15 23 0 22 23 0 23 16 0 17 25 0 24 25 0
		 16 24 0 18 26 0 25 26 0 19 27 0 26 27 0 20 28 0 27 28 0 21 29 0 28 29 0 22 30 0 29 30 0
		 23 31 0 30 31 0 31 24 0 25 33 0 32 33 0 24 32 0 26 34 0 33 34 0 27 35 0 34 35 0 28 36 0
		 35 36 0 29 37 0 36 37 0 30 38 0 37 38 0 31 39 0 38 39 0 39 32 0 33 41 0 40 41 0 32 40 0
		 34 42 0 41 42 0 35 43 0 42 43 0 36 44 0 43 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0
		 46 47 0 47 40 0 41 49 0 48 49 0 40 48 0 42 50 0 49 50 0 43 51 0 50 51 0 44 52 0 51 52 0
		 45 53 0 52 53 0 46 54 0 53 54 0 47 55 0 54 55 0 55 48 0 56 0 0 56 1 0 56 2 0 56 3 0
		 56 4 0 56 5 0 56 6 0 56 7 0 49 57 0 48 57 0 50 57 0 51 57 0 52 57 0 53 57 0 54 57 0
		 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 6 -6 -5
		mu 0 4 3 2 4 5
		f 4 5 9 -9 -8
		mu 0 4 5 4 6 7
		f 4 8 12 -12 -11
		mu 0 4 7 6 8 9
		f 4 11 15 -15 -14
		mu 0 4 9 8 10 11
		f 4 14 18 -18 -17
		mu 0 4 11 10 12 13
		f 4 17 21 -21 -20
		mu 0 4 13 12 14 15
		f 4 20 23 -4 -23
		mu 0 4 15 14 16 17
		f 4 26 25 -25 -3
		mu 0 4 1 18 19 2
		f 4 24 28 -28 -7
		mu 0 4 2 19 20 4
		f 4 27 30 -30 -10
		mu 0 4 4 20 21 6
		f 4 29 32 -32 -13
		mu 0 4 6 21 22 8
		f 4 31 34 -34 -16
		mu 0 4 8 22 23 10
		f 4 33 36 -36 -19
		mu 0 4 10 23 24 12
		f 4 35 38 -38 -22
		mu 0 4 12 24 25 14
		f 4 37 39 -27 -24
		mu 0 4 14 25 26 16
		f 4 42 41 -41 -26
		mu 0 4 18 27 28 19
		f 4 40 44 -44 -29
		mu 0 4 19 28 29 20
		f 4 43 46 -46 -31
		mu 0 4 20 29 30 21
		f 4 45 48 -48 -33
		mu 0 4 21 30 31 22
		f 4 47 50 -50 -35
		mu 0 4 22 31 32 23
		f 4 49 52 -52 -37
		mu 0 4 23 32 33 24
		f 4 51 54 -54 -39
		mu 0 4 24 33 34 25
		f 4 53 55 -43 -40
		mu 0 4 25 34 35 26
		f 4 58 57 -57 -42
		mu 0 4 27 36 37 28
		f 4 56 60 -60 -45
		mu 0 4 28 37 38 29
		f 4 59 62 -62 -47
		mu 0 4 29 38 39 30
		f 4 61 64 -64 -49
		mu 0 4 30 39 40 31
		f 4 63 66 -66 -51
		mu 0 4 31 40 41 32
		f 4 65 68 -68 -53
		mu 0 4 32 41 42 33
		f 4 67 70 -70 -55
		mu 0 4 33 42 43 34
		f 4 69 71 -59 -56
		mu 0 4 34 43 44 35
		f 4 74 73 -73 -58
		mu 0 4 36 45 46 37
		f 4 72 76 -76 -61
		mu 0 4 37 46 47 38
		f 4 75 78 -78 -63
		mu 0 4 38 47 48 39
		f 4 77 80 -80 -65
		mu 0 4 39 48 49 40
		f 4 79 82 -82 -67
		mu 0 4 40 49 50 41
		f 4 81 84 -84 -69
		mu 0 4 41 50 51 42
		f 4 83 86 -86 -71
		mu 0 4 42 51 52 43
		f 4 85 87 -75 -72
		mu 0 4 43 52 53 44
		f 4 90 89 -89 -74
		mu 0 4 45 54 55 46
		f 4 88 92 -92 -77
		mu 0 4 46 55 56 47
		f 4 91 94 -94 -79
		mu 0 4 47 56 57 48
		f 4 93 96 -96 -81
		mu 0 4 48 57 58 49
		f 4 95 98 -98 -83
		mu 0 4 49 58 59 50
		f 4 97 100 -100 -85
		mu 0 4 50 59 60 51
		f 4 99 102 -102 -87
		mu 0 4 51 60 61 52
		f 4 101 103 -91 -88
		mu 0 4 52 61 62 53
		f 3 -106 104 0
		mu 0 3 3 63 0
		f 3 -107 105 4
		mu 0 3 5 64 3
		f 3 -108 106 7
		mu 0 3 7 65 5
		f 3 -109 107 10
		mu 0 3 9 66 7
		f 3 -110 108 13
		mu 0 3 11 67 9
		f 3 -111 109 16
		mu 0 3 13 68 11
		f 3 -112 110 19
		mu 0 3 15 69 13
		f 3 -105 111 22
		mu 0 3 17 70 15
		f 3 113 -113 -90
		mu 0 3 54 71 55
		f 3 112 -115 -93
		mu 0 3 55 72 56
		f 3 114 -116 -95
		mu 0 3 56 73 57
		f 3 115 -117 -97
		mu 0 3 57 74 58
		f 3 116 -118 -99
		mu 0 3 58 75 59
		f 3 117 -119 -101
		mu 0 3 59 76 60
		f 3 118 -120 -103
		mu 0 3 60 77 61
		f 3 119 -114 -104
		mu 0 3 61 78 62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_eye2" -p "spider_eyes_grp";
	rename -uid "D0AA5CB6-0344-CA50-B31D-84B1EA350078";
	setAttr ".rp" -type "double3" 0.15896281353951275 0.65232500338792443 -1.1210292929820356 ;
	setAttr ".sp" -type "double3" 0.15896281353951275 0.65232500338792443 -1.1210292929820356 ;
createNode mesh -n "spider_l_eye2Shape" -p "spider_l_eye2";
	rename -uid "06EA0FD5-2C47-484D-FF69-80965C610FD4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0 0.25 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25 0.125 0.375 0.25 0.375 0.125 0.5 0.25 0.5 0.125 0.625
		 0.25 0.625 0.125 0.75 0.25 0.75 0.125 0.875 0.25 0.875 0.125 1 0.25 1 0.125 0 0.375
		 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1
		 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5
		 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 58 ".vt[0:57]"  -0.18332255 0.14716418 -1.12846506 -0.17787158 0.15272075 -1.13165188
		 -0.17242071 0.15270233 -1.13805747 -0.17016283 0.14711964 -1.1439296 -0.17242068 0.13924296 -1.14582837
		 -0.17787161 0.13368629 -1.14264131 -0.18332258 0.13370478 -1.13623607 -0.1855804 0.13928737 -1.1303637
		 -0.18350708 0.14833838 -1.11732328 -0.17343494 0.1586058 -1.12321198 -0.16336289 0.15857182 -1.13504803
		 -0.15919086 0.14825623 -1.14589834 -0.16336283 0.13370204 -1.14940667 -0.17343494 0.12343457 -1.14351809
		 -0.18350708 0.12346862 -1.13168192 -0.18767908 0.13378407 -1.12083173 -0.17995486 0.14731431 -1.10674584
		 -0.16679516 0.16072926 -1.11443961 -0.15363535 0.16068479 -1.12990439 -0.14818442 0.14720695 -1.14408052
		 -0.15363526 0.12819089 -1.14866483 -0.16679505 0.11477584 -1.14097095 -0.17995495 0.11482033 -1.12550628
		 -0.18540588 0.12829816 -1.11132979 -0.17320696 0.14424762 -1.098342776 -0.15896282 0.15876795 -1.10667074
		 -0.1447188 0.15871987 -1.12340939 -0.13881859 0.14413157 -1.13875401 -0.14471868 0.12354861 -1.14371574
		 -0.15896282 0.10902839 -1.13538778 -0.1732069 0.10907646 -1.11864913 -0.17910704 0.12366479 -1.10330451
		 -0.16429034 0.13960536 -1.093393803 -0.15113059 0.15302043 -1.10108757 -0.13797072 0.15297595 -1.11655223
		 -0.13251981 0.13949805 -1.13072884 -0.13797075 0.12048199 -1.13531268 -0.15113059 0.10706708 -1.12761891
		 -0.16429034 0.10711148 -1.11215413 -0.1697413 0.12058929 -1.097977757 -0.15456274 0.13409427 -1.092651725
		 -0.14449063 0.14436169 -1.098540306 -0.13441858 0.14432764 -1.1103766 -0.13024661 0.13401215 -1.12122667
		 -0.13441852 0.11945786 -1.12473512 -0.14449069 0.1091905 -1.11884654 -0.15456283 0.10922453 -1.1070106
		 -0.15873471 0.11954005 -1.096160412 -0.14550498 0.1285533 -1.096230149 -0.14005402 0.13411 -1.09941721
		 -0.13460311 0.13409162 -1.10582268 -0.1323452 0.12850893 -1.11169481 -0.13460305 0.12063213 -1.11359346
		 -0.14005402 0.11507557 -1.11040676 -0.14550492 0.11509399 -1.10400093 -0.14776286 0.12067665 -1.098128915
		 -0.17942956 0.14397018 -1.13847458 -0.13849607 0.12382612 -1.10358393;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 9 0 8 9 0 0 8 0 1 2 0 2 10 0 9 10 0
		 2 3 0 3 11 0 10 11 0 3 4 0 4 12 0 11 12 0 4 5 0 5 13 0 12 13 0 5 6 0 6 14 0 13 14 0
		 6 7 0 7 15 0 14 15 0 7 0 0 15 8 0 9 17 0 16 17 0 8 16 0 10 18 0 17 18 0 11 19 0 18 19 0
		 12 20 0 19 20 0 13 21 0 20 21 0 14 22 0 21 22 0 15 23 0 22 23 0 23 16 0 17 25 0 24 25 0
		 16 24 0 18 26 0 25 26 0 19 27 0 26 27 0 20 28 0 27 28 0 21 29 0 28 29 0 22 30 0 29 30 0
		 23 31 0 30 31 0 31 24 0 25 33 0 32 33 0 24 32 0 26 34 0 33 34 0 27 35 0 34 35 0 28 36 0
		 35 36 0 29 37 0 36 37 0 30 38 0 37 38 0 31 39 0 38 39 0 39 32 0 33 41 0 40 41 0 32 40 0
		 34 42 0 41 42 0 35 43 0 42 43 0 36 44 0 43 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0
		 46 47 0 47 40 0 41 49 0 48 49 0 40 48 0 42 50 0 49 50 0 43 51 0 50 51 0 44 52 0 51 52 0
		 45 53 0 52 53 0 46 54 0 53 54 0 47 55 0 54 55 0 55 48 0 56 0 0 56 1 0 56 2 0 56 3 0
		 56 4 0 56 5 0 56 6 0 56 7 0 49 57 0 48 57 0 50 57 0 51 57 0 52 57 0 53 57 0 54 57 0
		 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 6 -6 -5
		mu 0 4 3 2 4 5
		f 4 5 9 -9 -8
		mu 0 4 5 4 6 7
		f 4 8 12 -12 -11
		mu 0 4 7 6 8 9
		f 4 11 15 -15 -14
		mu 0 4 9 8 10 11
		f 4 14 18 -18 -17
		mu 0 4 11 10 12 13
		f 4 17 21 -21 -20
		mu 0 4 13 12 14 15
		f 4 20 23 -4 -23
		mu 0 4 15 14 16 17
		f 4 26 25 -25 -3
		mu 0 4 1 18 19 2
		f 4 24 28 -28 -7
		mu 0 4 2 19 20 4
		f 4 27 30 -30 -10
		mu 0 4 4 20 21 6
		f 4 29 32 -32 -13
		mu 0 4 6 21 22 8
		f 4 31 34 -34 -16
		mu 0 4 8 22 23 10
		f 4 33 36 -36 -19
		mu 0 4 10 23 24 12
		f 4 35 38 -38 -22
		mu 0 4 12 24 25 14
		f 4 37 39 -27 -24
		mu 0 4 14 25 26 16
		f 4 42 41 -41 -26
		mu 0 4 18 27 28 19
		f 4 40 44 -44 -29
		mu 0 4 19 28 29 20
		f 4 43 46 -46 -31
		mu 0 4 20 29 30 21
		f 4 45 48 -48 -33
		mu 0 4 21 30 31 22
		f 4 47 50 -50 -35
		mu 0 4 22 31 32 23
		f 4 49 52 -52 -37
		mu 0 4 23 32 33 24
		f 4 51 54 -54 -39
		mu 0 4 24 33 34 25
		f 4 53 55 -43 -40
		mu 0 4 25 34 35 26
		f 4 58 57 -57 -42
		mu 0 4 27 36 37 28
		f 4 56 60 -60 -45
		mu 0 4 28 37 38 29
		f 4 59 62 -62 -47
		mu 0 4 29 38 39 30
		f 4 61 64 -64 -49
		mu 0 4 30 39 40 31
		f 4 63 66 -66 -51
		mu 0 4 31 40 41 32
		f 4 65 68 -68 -53
		mu 0 4 32 41 42 33
		f 4 67 70 -70 -55
		mu 0 4 33 42 43 34
		f 4 69 71 -59 -56
		mu 0 4 34 43 44 35
		f 4 74 73 -73 -58
		mu 0 4 36 45 46 37
		f 4 72 76 -76 -61
		mu 0 4 37 46 47 38
		f 4 75 78 -78 -63
		mu 0 4 38 47 48 39
		f 4 77 80 -80 -65
		mu 0 4 39 48 49 40
		f 4 79 82 -82 -67
		mu 0 4 40 49 50 41
		f 4 81 84 -84 -69
		mu 0 4 41 50 51 42
		f 4 83 86 -86 -71
		mu 0 4 42 51 52 43
		f 4 85 87 -75 -72
		mu 0 4 43 52 53 44
		f 4 90 89 -89 -74
		mu 0 4 45 54 55 46
		f 4 88 92 -92 -77
		mu 0 4 46 55 56 47
		f 4 91 94 -94 -79
		mu 0 4 47 56 57 48
		f 4 93 96 -96 -81
		mu 0 4 48 57 58 49
		f 4 95 98 -98 -83
		mu 0 4 49 58 59 50
		f 4 97 100 -100 -85
		mu 0 4 50 59 60 51
		f 4 99 102 -102 -87
		mu 0 4 51 60 61 52
		f 4 101 103 -91 -88
		mu 0 4 52 61 62 53
		f 3 -106 104 0
		mu 0 3 3 63 0
		f 3 -107 105 4
		mu 0 3 5 64 3
		f 3 -108 106 7
		mu 0 3 7 65 5
		f 3 -109 107 10
		mu 0 3 9 66 7
		f 3 -110 108 13
		mu 0 3 11 67 9
		f 3 -111 109 16
		mu 0 3 13 68 11
		f 3 -112 110 19
		mu 0 3 15 69 13
		f 3 -105 111 22
		mu 0 3 17 70 15
		f 3 113 -113 -90
		mu 0 3 54 71 55
		f 3 112 -115 -93
		mu 0 3 55 72 56
		f 3 114 -116 -95
		mu 0 3 56 73 57
		f 3 115 -117 -97
		mu 0 3 57 74 58
		f 3 116 -118 -99
		mu 0 3 58 75 59
		f 3 117 -119 -101
		mu 0 3 59 76 60
		f 3 118 -120 -103
		mu 0 3 60 77 61
		f 3 119 -114 -104
		mu 0 3 61 78 62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_l_eye3" -p "spider_eyes_grp";
	rename -uid "F2975C37-CB45-EA27-BDDF-B2BE28D2E49B";
	setAttr ".rp" -type "double3" 0.20844710298120236 0.64547623777845864 -1.0375379407484611 ;
	setAttr ".sp" -type "double3" 0.20844710298120236 0.64547623777845864 -1.0375379407484611 ;
createNode mesh -n "spider_l_eyeShape3" -p "spider_l_eye3";
	rename -uid "62D0CF0F-A74C-7998-93DD-6598F9EA9BC3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0 0.25 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25 0.125 0.375 0.25 0.375 0.125 0.5 0.25 0.5 0.125 0.625
		 0.25 0.625 0.125 0.75 0.25 0.75 0.125 0.875 0.25 0.875 0.125 1 0.25 1 0.125 0 0.375
		 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1
		 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5
		 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 0 0 0.51842684 
		0 0 0.51842684 0 0 0.51842684 0;
	setAttr -s 58 ".vt[0:57]"  -0.23026899 0.1454508 -1.034397125 -0.22864196 0.14684622 -1.042530775
		 -0.22950065 0.14239639 -1.049616218 -0.23234212 0.13470818 -1.051503897 -0.23550195 0.12828505 -1.047087312
		 -0.23712885 0.12688969 -1.03895402 -0.23627037 0.13133937 -1.031868339 -0.23342872 0.1390277 -1.029980659
		 -0.22231683 0.15042318 -1.028266549 -0.21931055 0.15300164 -1.043294907 -0.2208972 0.14477943 -1.056387663
		 -0.22614759 0.13057335 -1.05987525 -0.23198593 0.11870497 -1.05171454 -0.23499233 0.1161267 -1.036686063
		 -0.23340559 0.12434894 -1.023593187 -0.22815543 0.13855487 -1.02010572 -0.21225309 0.15183738 -1.023546934
		 -0.20832527 0.15520613 -1.043182373 -0.21039841 0.14446341 -1.060289145 -0.21725813 0.1259023 -1.064845562
		 -0.22488648 0.11039539 -1.054183483 -0.22881448 0.10702667 -1.034547806 -0.22674131 0.11776933 -1.017441273
		 -0.21988159 0.13633057 -1.012884498 -0.20161015 0.14947754 -1.02095747 -0.19735867 0.15312375 -1.042211294
		 -0.19960237 0.14149602 -1.060727119 -0.20702744 0.12140566 -1.065659404 -0.21528423 0.10462107 -1.054118395
		 -0.21953577 0.1009749 -1.032864928 -0.21729195 0.11260261 -1.014348984 -0.20986676 0.13269322 -1.0094165802
		 -0.19200784 0.1437033 -1.020892501 -0.18807989 0.14707206 -1.04052794 -0.19015288 0.13632928 -1.05763483
		 -0.19701284 0.1177682 -1.062191486 -0.20464104 0.10226132 -1.051528931 -0.20856908 0.098892786 -1.031893373
		 -0.20649579 0.10963541 -1.014786482 -0.19963613 0.12819645 -1.010230064 -0.18490836 0.13539359 -1.023361444
		 -0.18190193 0.13797192 -1.038389921 -0.18348873 0.1297498 -1.051482677 -0.18873894 0.11554375 -1.054970145
		 -0.19457719 0.10367535 -1.046809554 -0.19758368 0.10109712 -1.031781077 -0.19599718 0.10931909 -1.018688321
		 -0.19074687 0.12352519 -1.015200853 -0.18139246 0.12581365 -1.027988791 -0.17976537 0.12720898 -1.036122084
		 -0.18062407 0.12275931 -1.043207765 -0.18346539 0.11507107 -1.045095205 -0.18662515 0.10864794 -1.04067862
		 -0.18825227 0.10725252 -1.032545447 -0.18739346 0.11170222 -1.025459647 -0.1845521 0.11939059 -1.023572087
		 -0.23489892 0.13767695 -1.041006327 -0.18199524 0.11642188 -1.034069657;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 9 0 8 9 0 0 8 0 1 2 0 2 10 0 9 10 0
		 2 3 0 3 11 0 10 11 0 3 4 0 4 12 0 11 12 0 4 5 0 5 13 0 12 13 0 5 6 0 6 14 0 13 14 0
		 6 7 0 7 15 0 14 15 0 7 0 0 15 8 0 9 17 0 16 17 0 8 16 0 10 18 0 17 18 0 11 19 0 18 19 0
		 12 20 0 19 20 0 13 21 0 20 21 0 14 22 0 21 22 0 15 23 0 22 23 0 23 16 0 17 25 0 24 25 0
		 16 24 0 18 26 0 25 26 0 19 27 0 26 27 0 20 28 0 27 28 0 21 29 0 28 29 0 22 30 0 29 30 0
		 23 31 0 30 31 0 31 24 0 25 33 0 32 33 0 24 32 0 26 34 0 33 34 0 27 35 0 34 35 0 28 36 0
		 35 36 0 29 37 0 36 37 0 30 38 0 37 38 0 31 39 0 38 39 0 39 32 0 33 41 0 40 41 0 32 40 0
		 34 42 0 41 42 0 35 43 0 42 43 0 36 44 0 43 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0
		 46 47 0 47 40 0 41 49 0 48 49 0 40 48 0 42 50 0 49 50 0 43 51 0 50 51 0 44 52 0 51 52 0
		 45 53 0 52 53 0 46 54 0 53 54 0 47 55 0 54 55 0 55 48 0 56 0 0 56 1 0 56 2 0 56 3 0
		 56 4 0 56 5 0 56 6 0 56 7 0 49 57 0 48 57 0 50 57 0 51 57 0 52 57 0 53 57 0 54 57 0
		 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 1 2 3
		f 4 1 6 -6 -5
		mu 0 4 3 2 4 5
		f 4 5 9 -9 -8
		mu 0 4 5 4 6 7
		f 4 8 12 -12 -11
		mu 0 4 7 6 8 9
		f 4 11 15 -15 -14
		mu 0 4 9 8 10 11
		f 4 14 18 -18 -17
		mu 0 4 11 10 12 13
		f 4 17 21 -21 -20
		mu 0 4 13 12 14 15
		f 4 20 23 -4 -23
		mu 0 4 15 14 16 17
		f 4 26 25 -25 -3
		mu 0 4 1 18 19 2
		f 4 24 28 -28 -7
		mu 0 4 2 19 20 4
		f 4 27 30 -30 -10
		mu 0 4 4 20 21 6
		f 4 29 32 -32 -13
		mu 0 4 6 21 22 8
		f 4 31 34 -34 -16
		mu 0 4 8 22 23 10
		f 4 33 36 -36 -19
		mu 0 4 10 23 24 12
		f 4 35 38 -38 -22
		mu 0 4 12 24 25 14
		f 4 37 39 -27 -24
		mu 0 4 14 25 26 16
		f 4 42 41 -41 -26
		mu 0 4 18 27 28 19
		f 4 40 44 -44 -29
		mu 0 4 19 28 29 20
		f 4 43 46 -46 -31
		mu 0 4 20 29 30 21
		f 4 45 48 -48 -33
		mu 0 4 21 30 31 22
		f 4 47 50 -50 -35
		mu 0 4 22 31 32 23
		f 4 49 52 -52 -37
		mu 0 4 23 32 33 24
		f 4 51 54 -54 -39
		mu 0 4 24 33 34 25
		f 4 53 55 -43 -40
		mu 0 4 25 34 35 26
		f 4 58 57 -57 -42
		mu 0 4 27 36 37 28
		f 4 56 60 -60 -45
		mu 0 4 28 37 38 29
		f 4 59 62 -62 -47
		mu 0 4 29 38 39 30
		f 4 61 64 -64 -49
		mu 0 4 30 39 40 31
		f 4 63 66 -66 -51
		mu 0 4 31 40 41 32
		f 4 65 68 -68 -53
		mu 0 4 32 41 42 33
		f 4 67 70 -70 -55
		mu 0 4 33 42 43 34
		f 4 69 71 -59 -56
		mu 0 4 34 43 44 35
		f 4 74 73 -73 -58
		mu 0 4 36 45 46 37
		f 4 72 76 -76 -61
		mu 0 4 37 46 47 38
		f 4 75 78 -78 -63
		mu 0 4 38 47 48 39
		f 4 77 80 -80 -65
		mu 0 4 39 48 49 40
		f 4 79 82 -82 -67
		mu 0 4 40 49 50 41
		f 4 81 84 -84 -69
		mu 0 4 41 50 51 42
		f 4 83 86 -86 -71
		mu 0 4 42 51 52 43
		f 4 85 87 -75 -72
		mu 0 4 43 52 53 44
		f 4 90 89 -89 -74
		mu 0 4 45 54 55 46
		f 4 88 92 -92 -77
		mu 0 4 46 55 56 47
		f 4 91 94 -94 -79
		mu 0 4 47 56 57 48
		f 4 93 96 -96 -81
		mu 0 4 48 57 58 49
		f 4 95 98 -98 -83
		mu 0 4 49 58 59 50
		f 4 97 100 -100 -85
		mu 0 4 50 59 60 51
		f 4 99 102 -102 -87
		mu 0 4 51 60 61 52
		f 4 101 103 -91 -88
		mu 0 4 52 61 62 53
		f 3 -106 104 0
		mu 0 3 3 63 0
		f 3 -107 105 4
		mu 0 3 5 64 3
		f 3 -108 106 7
		mu 0 3 7 65 5
		f 3 -109 107 10
		mu 0 3 9 66 7
		f 3 -110 108 13
		mu 0 3 11 67 9
		f 3 -111 109 16
		mu 0 3 13 68 11
		f 3 -112 110 19
		mu 0 3 15 69 13
		f 3 -105 111 22
		mu 0 3 17 70 15
		f 3 113 -113 -90
		mu 0 3 54 71 55
		f 3 112 -115 -93
		mu 0 3 55 72 56
		f 3 114 -116 -95
		mu 0 3 56 73 57
		f 3 115 -117 -97
		mu 0 3 57 74 58
		f 3 116 -118 -99
		mu 0 3 58 75 59
		f 3 117 -119 -101
		mu 0 3 59 76 60
		f 3 118 -120 -103
		mu 0 3 60 77 61
		f 3 119 -114 -104
		mu 0 3 61 78 62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_eye1" -p "spider_eyes_grp";
	rename -uid "10EAB170-3D4A-5787-5B1C-ACB7F90E7B82";
	setAttr ".rp" -type "double3" 0.11102903341374722 0.60110325438617251 -1.213056555009747 ;
	setAttr ".sp" -type "double3" 0.11102903341374722 0.60110325438617251 -1.213056555009747 ;
createNode mesh -n "spider_r_eyeShape1" -p "spider_r_eye1";
	rename -uid "BE9A4107-F74F-BA70-DEB5-7797B6D6489C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25
		 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875
		 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875
		 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625
		 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75
		 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625
		 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1
		 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  -0.13520676 1.5382509 -0.94989491 
		0.12993971 1.5438056 -0.84099644 0.39508435 1.5437889 -0.95948935 0.50491178 1.5382044 
		-1.2359569 0.39508435 1.5303295 -1.508455 0.12993783 1.524771 -1.6173515 -0.13520481 
		1.5247953 -1.4988647 -0.24503614 1.5303721 -1.222391 -0.36442482 1.322651 -0.70935261 
		0.12550308 1.3329184 -0.50813365 0.6154291 1.3328844 -0.7270754 0.81836653 1.3225689 
		-1.2379295 0.61543286 1.3080146 -1.741434 0.12550308 1.2977471 -1.9426548 -0.3644267 
		1.2977812 -1.7237092 -0.56735843 1.3080986 -1.212863 -0.52126104 0.99720216 -0.54549098 
		0.11886138 1.0106211 -0.28258744 0.75898373 1.0105765 -0.5686515 1.0241264 0.99709678 
		-1.2361081 0.75898558 0.9780826 -1.8939762 0.11886321 0.96466565 -2.1568799 -0.52125913 
		0.96471012 -1.8708158 -0.78640747 0.97818995 -1.2033572 -0.58183628 0.6114527 -0.48326457 
		0.11103476 0.62597883 -0.19870012 0.80389255 0.62592876 -0.50833124 1.0908867 0.6113385 
		-1.2307832 0.80389631 0.59075755 -1.9428544 0.11102904 0.57623351 -2.2274151 -0.58183062 
		0.57628345 -1.9177859 -0.86882681 0.5908699 -1.1953318 -0.53692371 0.22412774 -0.53214085 
		0.10319677 0.23754275 -0.26923528 0.74331909 0.23749825 -0.55529934 1.0084676 0.22402427 
		-1.2227581 0.74331915 0.20500621 -1.8806241 0.10320058 0.19159326 -2.1435258 -0.53692561 
		0.19163191 -1.8574617 -0.8020702 0.20511156 -1.1900089 -0.39337105 -0.10580814 -0.68467915 
		0.09655685 -0.095540762 -0.48346213 0.58648479 -0.095572889 -0.70240581 0.7894184 
		-0.10589033 -1.213256 0.58648479 -0.1204446 -1.7167643 0.09655685 -0.13071197 -1.9179814 
		-0.39336908 -0.13067222 -1.6990417 -0.5963009 -0.12035859 -1.1881915 -0.17302431 
		-0.32811737 -0.91766208 0.092122145 -0.32256263 -0.80876356 0.35726678 -0.32258099 
		-0.92725259 0.46709612 -0.32816368 -1.2037221 0.35726672 -0.33604234 -1.4762182 0.092124052 
		-0.34159517 -1.5851188 -0.17302626 -0.34158057 -1.4666257 -0.28285369 -0.33599597 
		-1.1901562 0.13149576 1.6111753 -1.2305019 0.090564206 -0.4089669 -1.1956112;
	setAttr -s 58 ".vt[0:57]"  0.27059555 -0.92388153 -0.27059746 -1.9073486e-006 -0.92387962 -0.3826828
		 -0.27059746 -0.92388153 -0.27059555 -0.3826828 -0.92387962 0 -0.27059746 -0.92388153 0.27059937
		 0 -0.92387962 0.3826828 0.27059364 -0.92388535 0.27060127 0.3826828 -0.92387962 0
		 0.49999809 -0.70710754 -0.49999809 -1.9073486e-006 -0.70710754 -0.70710564 -0.5 -0.70710754 -0.5
		 -0.70710945 -0.70710754 3.8146973e-006 -0.50000381 -0.70710754 0.5 -1.9073486e-006 -0.70710754 0.70710945
		 0.5 -0.70710754 0.5 0.70710373 -0.70710945 3.8146973e-006 0.65328217 -0.3826828 -0.65328217
		 0 -0.38268661 -0.92387962 -0.65328217 -0.38268661 -0.65328026 -0.92387581 -0.38268471 0
		 -0.65328407 -0.38268661 0.65328407 -1.9073486e-006 -0.38268471 0.92388153 0.65328026 -0.38268471 0.65328217
		 0.92387962 -0.38268661 0 0.70710945 0 -0.70710564 -5.7220459e-006 -5.7220459e-006 -0.99999809
		 -0.70710754 -3.8146973e-006 -0.70710564 -1.000001907349 -1.9073486e-006 1.9073486e-006
		 -0.70711136 -3.8146973e-006 0.70711136 0 0 1 0.70710373 -1.9073486e-006 0.70710945
		 1 0 0 0.65328026 0.3826828 -0.65328026 0 0.3826828 -0.92387962 -0.65328217 0.3826828 -0.65328026
		 -0.92388153 0.38267899 1.9073486e-006 -0.65328217 0.38268089 0.65328407 -3.8146973e-006 0.38267899 0.92387962
		 0.65328217 0.38268471 0.65328026 0.92387772 0.3826828 3.8146973e-006 0.5 0.70710754 -0.5
		 0 0.70710754 -0.70710564 -0.5 0.70710564 -0.49999809 -0.70710564 0.70710754 1.9073486e-006
		 -0.5 0.70710754 0.50000191 0 0.70710754 0.70710754 0.49999809 0.70710182 0.50000381
		 0.70710182 0.70710373 3.8146973e-006 0.27059555 0.92387581 -0.27059555 -1.9073486e-006 0.92387772 -0.38268089
		 -0.27059746 0.92387772 -0.27059746 -0.38268471 0.92387772 0 -0.27059746 0.92387962 0.27059746
		 -3.8146973e-006 0.92387581 0.38268471 0.27059746 0.92387962 0.27059746 0.3826828 0.92387772 0
		 0 -1 0 -1.9073486e-006 0.99999809 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 2 3
		f 4 1 58 -10 -58
		mu 0 4 1 4 5 2
		f 4 2 59 -11 -59
		mu 0 4 4 6 7 5
		f 4 3 60 -12 -60
		mu 0 4 6 8 9 7
		f 4 4 61 -13 -61
		mu 0 4 8 10 11 9
		f 4 5 62 -14 -62
		mu 0 4 10 12 13 11
		f 4 6 63 -15 -63
		mu 0 4 12 14 15 13
		f 4 7 56 -16 -64
		mu 0 4 14 16 17 15
		f 4 8 65 -17 -65
		mu 0 4 3 2 18 19
		f 4 9 66 -18 -66
		mu 0 4 2 5 20 18
		f 4 10 67 -19 -67
		mu 0 4 5 7 21 20
		f 4 11 68 -20 -68
		mu 0 4 7 9 22 21
		f 4 12 69 -21 -69
		mu 0 4 9 11 23 22
		f 4 13 70 -22 -70
		mu 0 4 11 13 24 23
		f 4 14 71 -23 -71
		mu 0 4 13 15 25 24
		f 4 15 64 -24 -72
		mu 0 4 15 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 19 18 27 28
		f 4 17 74 -26 -74
		mu 0 4 18 20 29 27
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 28 27 36 37
		f 4 25 82 -34 -82
		mu 0 4 27 29 38 36
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 37 36 45 46
		f 4 33 90 -42 -90
		mu 0 4 36 38 47 45
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 46 45 54 55
		f 4 41 98 -50 -98
		mu 0 4 45 47 56 54
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 4 1 64
		f 3 -3 -107 107
		mu 0 3 6 4 65
		f 3 -4 -108 108
		mu 0 3 8 6 66
		f 3 -5 -109 109
		mu 0 3 10 8 67
		f 3 -6 -110 110
		mu 0 3 12 10 68
		f 3 -7 -111 111
		mu 0 3 14 12 69
		f 3 -8 -112 104
		mu 0 3 16 14 70
		f 3 48 113 -113
		mu 0 3 55 54 71
		f 3 49 114 -114
		mu 0 3 54 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_eye2" -p "spider_eyes_grp";
	rename -uid "6B7F2CDB-054C-32CB-649A-1EB42E8B6E72";
	setAttr ".rp" -type "double3" 0.15896281353951261 0.65232500338792443 -1.1210292929820354 ;
	setAttr ".sp" -type "double3" 0.15896281353951261 0.65232500338792443 -1.1210292929820354 ;
createNode mesh -n "spider_r_eyeShape2" -p "spider_r_eye2";
	rename -uid "866FE528-EE40-CE15-07D8-528DFC4D87C9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25
		 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875
		 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875
		 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625
		 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75
		 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625
		 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1
		 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  -0.087273017 1.5894706 -0.85786664 
		0.1778734 1.5950234 -0.74897009 0.44301429 1.595005 -0.86746001 0.55284369 1.589426 
		-1.1439306 0.44301623 1.5815494 -1.4164268 0.17786771 1.5759852 -1.5253222 -0.087267332 
		1.576015 -1.4068364 -0.19710244 1.5815899 -1.1303647 -0.31649294 1.3738708 -0.61732435 
		0.17343865 1.3841364 -0.41610542 0.66336101 1.3841043 -0.63504612 0.86629838 1.3737887 
		-1.1459012 0.66336656 1.3592327 -1.6494057 0.17343496 1.3489671 -1.8506266 -0.31649482 
		1.3490012 -1.6316819 -0.51942855 1.3593147 -1.1208327 -0.47332728 1.0484221 -0.45346272 
		0.16679138 1.0618408 -0.19056009 0.80691558 1.0617964 -0.47662413 1.0720564 1.0483147 
		-1.1440778 0.80691743 1.0293024 -1.801948 0.16679874 1.0158817 -2.0648534 -0.47332728 
		1.015928 -1.7787875 -0.73847568 1.0294058 -1.1113298 -0.53390443 0.66267252 -0.39123628 
		0.15896656 0.67719483 -0.10667175 0.8518244 0.67714864 -0.41630197 1.1388186 0.66255844 
		-1.1387531 0.85182816 0.64197737 -1.8508261 0.15896274 0.62745142 -2.1353869 -0.53389877 
		0.62750328 -1.8257576 -0.8208949 0.64208972 -1.1033036 -0.48899186 0.27534556 -0.44011447 
		0.15113047 0.28876066 -0.17720699 0.79125094 0.2887181 -0.46327102 1.0563995 0.275244 
		-1.1307336 0.791251 0.25622603 -1.7885958 0.15113245 0.24281302 -2.0514996 -0.48899183 
		0.24285364 -1.7654353 -0.75413644 0.25633141 -1.0979806 -0.34543735 -0.054590225 
		-0.5926528 0.14448872 -0.044320941 -0.39143288 0.63441849 -0.044354975 -0.61037755 
		0.8373484 -0.05467236 -1.1212257 0.63441664 -0.069224715 -1.6247351 0.14449055 -0.079493999 
		-1.8259531 -0.3454372 -0.079452395 -1.6070135 -0.54836905 -0.069138765 -1.0961623 
		-0.12509252 -0.27690136 -0.82563275 0.14005592 -0.27134091 -0.71673727 0.40519863 
		-0.27136117 -0.83522332 0.515028 -0.27694386 -1.1116948 0.40519857 -0.28482449 -1.3841919 
		0.14005779 -0.29037529 -1.4930905 -0.12509255 -0.2903626 -1.3745955 -0.23491995 -0.28477609 
		-1.098128 0.17942759 1.6623931 -1.1384755 0.13849792 -0.35774899 -1.103583;
	setAttr -s 58 ".vt[0:57]"  0.27059555 -0.92387962 -0.27059841 -1.9073486e-006 -0.92387581 -0.38268185
		 -0.27059364 -0.92387581 -0.27059746 -0.38268089 -0.92387962 9.5367432e-007 -0.27059555 -0.92387962 0.27059841
		 3.8146973e-006 -0.92387199 0.38268089 0.27058983 -0.92388344 0.27060032 0.3826828 -0.92387581 9.5367432e-007
		 0.5 -0.70710564 -0.49999905 -3.8146973e-006 -0.70710373 -0.70710659 -0.49999809 -0.70710564 -0.50000191
		 -0.70710754 -0.70710564 2.8610229e-006 -0.50000381 -0.70710373 0.49999905 0 -0.70710564 0.7071085
		 0.50000191 -0.70710564 0.5 0.70710754 -0.70710373 9.5367432e-007 0.65328217 -0.38268089 -0.65328312
		 3.8146973e-006 -0.38268471 -0.92387962 -0.65328026 -0.38268471 -0.65328026 -0.92387199 -0.38268089 -2.8610229e-006
		 -0.65328217 -0.38268471 0.65328312 -3.8146973e-006 -0.38267899 0.92388248 0.65328217 -0.38268089 0.65328121
		 0.92388153 -0.38268089 0 0.70711136 1.9073486e-006 -0.70710659 -3.8146973e-006 0 -0.99999905
		 -0.70710564 -1.9073486e-006 -0.70710754 -1 0 -9.5367432e-007 -0.70710945 -1.9073486e-006 0.7071104
		 0 3.8146973e-006 0.99999905 0.70710564 0 0.7071085 1.000001907349 1.9073486e-006 -9.5367432e-007
		 0.65328217 0.38268661 -0.6532793 0 0.38268661 -0.92388058 -0.65328026 0.38268471 -0.65328121
		 -0.92387962 0.38268089 4.7683716e-006 -0.65328026 0.3826828 0.65328312 -1.9073486e-006 0.38268089 0.92388058
		 0.65328217 0.38268471 0.65328121 0.92387772 0.38268471 2.8610229e-006 0.5 0.70711136 -0.49999905
		 1.9073486e-006 0.70710945 -0.70710754 -0.5 0.70710945 -0.49999905 -0.70710182 0.70711136 -9.5367432e-007
		 -0.49999809 0.70710945 0.5 0 0.70711136 0.70710659 0.5 0.70710373 0.50000286 0.70710373 0.70710564 1.9073486e-006
		 0.27059746 0.92388153 -0.27059746 -1.9073486e-006 0.92387772 -0.38267994 -0.27059555 0.92387962 -0.27059937
		 -0.3826828 0.92387962 0 -0.27059555 0.92388344 0.27059841 -3.8146973e-006 0.92387772 0.38268375
		 0.27059746 0.92388344 0.2705946 0.3826828 0.92387962 -9.5367432e-007 1.9073486e-006 -0.99999619 9.5367432e-007
		 -1.9073486e-006 1.000001907349 -9.5367432e-007;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 2 3
		f 4 1 58 -10 -58
		mu 0 4 1 4 5 2
		f 4 2 59 -11 -59
		mu 0 4 4 6 7 5
		f 4 3 60 -12 -60
		mu 0 4 6 8 9 7
		f 4 4 61 -13 -61
		mu 0 4 8 10 11 9
		f 4 5 62 -14 -62
		mu 0 4 10 12 13 11
		f 4 6 63 -15 -63
		mu 0 4 12 14 15 13
		f 4 7 56 -16 -64
		mu 0 4 14 16 17 15
		f 4 8 65 -17 -65
		mu 0 4 3 2 18 19
		f 4 9 66 -18 -66
		mu 0 4 2 5 20 18
		f 4 10 67 -19 -67
		mu 0 4 5 7 21 20
		f 4 11 68 -20 -68
		mu 0 4 7 9 22 21
		f 4 12 69 -21 -69
		mu 0 4 9 11 23 22
		f 4 13 70 -22 -70
		mu 0 4 11 13 24 23
		f 4 14 71 -23 -71
		mu 0 4 13 15 25 24
		f 4 15 64 -24 -72
		mu 0 4 15 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 19 18 27 28
		f 4 17 74 -26 -74
		mu 0 4 18 20 29 27
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 28 27 36 37
		f 4 25 82 -34 -82
		mu 0 4 27 29 38 36
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 37 36 45 46
		f 4 33 90 -42 -90
		mu 0 4 36 38 47 45
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 46 45 54 55
		f 4 41 98 -50 -98
		mu 0 4 45 47 56 54
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 4 1 64
		f 3 -3 -107 107
		mu 0 3 6 4 65
		f 3 -4 -108 108
		mu 0 3 8 6 66
		f 3 -5 -109 109
		mu 0 3 10 8 67
		f 3 -6 -110 110
		mu 0 3 12 10 68
		f 3 -7 -111 111
		mu 0 3 14 12 69
		f 3 -8 -112 104
		mu 0 3 16 14 70
		f 3 48 113 -113
		mu 0 3 55 54 71
		f 3 49 114 -114
		mu 0 3 54 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_eye4" -p "spider_eyes_grp";
	rename -uid "BDD4E72D-8643-65C5-6B2C-EB99CB706DF8";
	setAttr ".rp" -type "double3" 0.12048144118217706 0.72534035454172607 -1.0375379407484604 ;
	setAttr ".sp" -type "double3" 0.12048144118217706 0.72534035454172607 -1.0375379407484604 ;
createNode mesh -n "spider_r_eyeShape4" -p "spider_r_eye4";
	rename -uid "6EF9FA73-6945-D8CA-4485-888907228724";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25
		 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875
		 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875
		 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625
		 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75
		 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625
		 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1
		 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  -0.12996334 1.6696253 -0.76546979 
		0.13419828 1.6744273 -0.65588576 0.40032592 1.6751635 -0.77506423 0.51253295 1.6714046 
		-1.0531822 0.40508133 1.6653516 -1.3273307 0.14092149 1.6605458 -1.4369109 -0.12520407 
		1.6598172 -1.3177422 -0.23741502 1.6635704 -1.0396163 -0.36076742 1.4503779 -0.52523094 
		0.12734075 1.459255 -0.3227469 0.61908841 1.4606133 -0.54295564 0.82641739 1.4536661 
		-1.0568573 0.62787706 1.4424782 -1.5634133 0.1397671 1.4336052 -1.7658954 -0.35198066 
		1.4322448 -1.5456847 -0.55930758 1.4391959 -1.0317909 -0.51830935 1.1207497 -0.36297846 
		0.11943737 1.1323507 -0.098428473 0.76193553 1.134128 -0.38614285 1.0328184 1.1250446 
		-1.0575819 0.77341968 1.1104307 -1.7194364 0.13567498 1.0988357 -1.9839904 -0.50682509 
		1.0970564 -1.6962759 -0.7777136 1.1061397 -1.024833 -0.57859701 0.73092914 -0.3034333 
		0.11170045 0.7434833 -0.017084382 0.80713171 0.74540132 -0.32849988 1.1003392 0.73557377 
		-1.0552608 0.8195619 0.71975344 -1.7716504 0.12926817 0.70720327 -2.0579956 -0.56616503 
		0.70528132 -1.74658 -0.8593744 0.71510506 -1.0198113 -0.53245491 0.34025192 -0.35564145 
		0.10528982 0.35184702 -0.091087468 0.74778795 0.35362244 -0.37880182 1.0186802 0.34454495 
		-1.050243 0.7592684 0.32992706 -1.7120973 0.1215293 0.3183341 -1.9766456 -0.52097452 
		0.31655273 -1.688933 -0.79185921 0.32563606 -1.0174959 -0.38690856 0.0082025528 -0.5116666 
		0.10119953 0.017073631 -0.30918443 0.59294361 0.018437803 -0.5293932 0.80027241 0.011486709 
		-1.043291 0.60173208 0.00029492378 -1.5498488 0.11362401 -0.0085741878 -1.752329 
		-0.3781217 -0.0099307299 -1.5321281 -0.58544689 -0.0029815435 -1.0182265 -0.16411649 
		-0.21466702 -0.74774718 0.10004328 -0.20986509 -0.63816702 0.36617276 -0.20912886 
		-0.75733966 0.4783797 -0.21289355 -1.0354576 0.37092805 -0.21894652 -1.3096061 0.1067702 
		-0.22374654 -1.4191883 -0.15936497 -0.22448671 -1.3000135 -0.27157193 -0.22072196 
		-1.0218917 0.13896789 1.7451141 -1.0471275 0.10199869 -0.2944333 -1.0279446;
	setAttr -s 58 ".vt[0:57]"  0.27059555 -0.92387772 -0.27059746 -1.9073486e-006 -0.92387772 -0.38268471
		 -0.27059555 -0.92387772 -0.27059555 -0.3826828 -0.92387962 0 -0.27059555 -0.92388153 0.27059937
		 0 -0.92387772 0.3826828 0.27059174 -0.92388535 0.27060318 0.3826828 -0.92387772 0
		 0.49999809 -0.70710373 -0.49999809 -1.9073486e-006 -0.70710754 -0.70710754 -0.50000191 -0.70710564 -0.49999809
		 -0.70710945 -0.70710754 3.8146973e-006 -0.50000381 -0.70710754 0.50000191 -1.9073486e-006 -0.70710754 0.70710945
		 0.49999809 -0.70710754 0.49999809 0.70710373 -0.70710945 3.8146973e-006 0.65328407 -0.38267899 -0.65328598
		 0 -0.38268661 -0.92387962 -0.65328026 -0.38268661 -0.65328026 -0.9238739 -0.3826828 -1.9073486e-006
		 -0.65328407 -0.38268661 0.65328407 -1.9073486e-006 -0.38268471 0.92388153 0.65328026 -0.3826828 0.65328217
		 0.92387962 -0.38268661 0 0.70710945 0 -0.70710564 -5.7220459e-006 -5.7220459e-006 -0.99999619
		 -0.70710754 0 -0.70710564 -1.000001907349 0 -1.9073486e-006 -0.70711136 -1.9073486e-006 0.70711327
		 0 0 1 0.70710373 -1.9073486e-006 0.70710945 1 1.9073486e-006 -1.9073486e-006 0.65328217 0.38268471 -0.65328217
		 0 0.3826828 -0.92387962 -0.65328026 0.38268471 -0.65328026 -0.92388344 0.3826828 0
		 -0.65328026 0.3826828 0.65328598 -3.8146973e-006 0.3826828 0.92387772 0.65328217 0.38268661 0.65328026
		 0.92387772 0.3826828 3.8146973e-006 0.49999809 0.70710754 -0.49999809 -1.9073486e-006 0.70710945 -0.70710564
		 -0.49999809 0.70710564 -0.49999619 -0.70710564 0.70710754 1.9073486e-006 -0.5 0.70711136 0.50000191
		 0 0.70710754 0.70710754 0.49999809 0.70710373 0.50000572 0.70710182 0.70710373 3.8146973e-006
		 0.27059364 0.92387772 -0.27059746 -1.9073486e-006 0.92387772 -0.38268089 -0.27059746 0.92387772 -0.27059746
		 -0.38268471 0.92388153 -1.9073486e-006 -0.27059746 0.92387962 0.27059746 -3.8146973e-006 0.92387772 0.3826828
		 0.27059746 0.92388153 0.27059746 0.38268471 0.92387772 -1.9073486e-006 -1.9073486e-006 -1 -1.9073486e-006
		 -1.9073486e-006 1 -1.9073486e-006;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 2 3
		f 4 1 58 -10 -58
		mu 0 4 1 4 5 2
		f 4 2 59 -11 -59
		mu 0 4 4 6 7 5
		f 4 3 60 -12 -60
		mu 0 4 6 8 9 7
		f 4 4 61 -13 -61
		mu 0 4 8 10 11 9
		f 4 5 62 -14 -62
		mu 0 4 10 12 13 11
		f 4 6 63 -15 -63
		mu 0 4 12 14 15 13
		f 4 7 56 -16 -64
		mu 0 4 14 16 17 15
		f 4 8 65 -17 -65
		mu 0 4 3 2 18 19
		f 4 9 66 -18 -66
		mu 0 4 2 5 20 18
		f 4 10 67 -19 -67
		mu 0 4 5 7 21 20
		f 4 11 68 -20 -68
		mu 0 4 7 9 22 21
		f 4 12 69 -21 -69
		mu 0 4 9 11 23 22
		f 4 13 70 -22 -70
		mu 0 4 11 13 24 23
		f 4 14 71 -23 -71
		mu 0 4 13 15 25 24
		f 4 15 64 -24 -72
		mu 0 4 15 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 19 18 27 28
		f 4 17 74 -26 -74
		mu 0 4 18 20 29 27
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 28 27 36 37
		f 4 25 82 -34 -82
		mu 0 4 27 29 38 36
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 37 36 45 46
		f 4 33 90 -42 -90
		mu 0 4 36 38 47 45
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 46 45 54 55
		f 4 41 98 -50 -98
		mu 0 4 45 47 56 54
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 4 1 64
		f 3 -3 -107 107
		mu 0 3 6 4 65
		f 3 -4 -108 108
		mu 0 3 8 6 66
		f 3 -5 -109 109
		mu 0 3 10 8 67
		f 3 -6 -110 110
		mu 0 3 12 10 68
		f 3 -7 -111 111
		mu 0 3 14 12 69
		f 3 -8 -112 104
		mu 0 3 16 14 70
		f 3 48 113 -113
		mu 0 3 55 54 71
		f 3 49 114 -114
		mu 0 3 54 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_r_eye3" -p "spider_eyes_grp";
	rename -uid "F793482A-8A45-012C-7647-A8941EF4EE4F";
	setAttr ".rp" -type "double3" 0.20844710298120236 0.64547623777845853 -1.0375379407484611 ;
	setAttr ".sp" -type "double3" 0.20844710298120236 0.64547623777845853 -1.0375379407484611 ;
createNode mesh -n "spider_r_eyeShape3" -p "spider_r_eye3";
	rename -uid "1AC32E46-9C41-0D95-3628-F2924867DCA9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25
		 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875
		 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875
		 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625
		 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75
		 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625
		 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1
		 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".pt[0:57]" -type "float3"  -0.040334187 1.5877545 -0.76380152 
		0.22864576 1.5891519 -0.65984648 0.5000962 1.5846999 -0.77902263 0.61502492 1.5770137 
		-1.0515047 0.50609744 1.5705924 -1.3176866 0.23713642 1.5691934 -1.4216369 -0.034321357 
		1.5736516 -1.3024715 -0.14925414 1.5813313 -1.0299807 -0.27767178 1.3759518 -0.52826858 
		0.21931435 1.378536 -0.33618835 0.7208972 1.370311 -0.55639094 0.93325895 1.3561087 
		-1.05988 0.73198974 1.3442384 -1.5517184 0.23499613 1.3416611 -1.7437955 -0.26659441 
		1.3498833 -1.5235913 -0.47894835 1.3640912 -1.0201095 -0.44102907 1.0529432 -0.37026194 
		0.20831764 1.0563186 -0.11930282 0.86367673 1.0455768 -0.40700889 1.1411282 1.0270109 
		-1.0648457 0.8781724 1.0115079 -1.7074682 0.22881447 1.0081391 -1.9584293 -0.42653707 
		1.0188789 -1.6707234 -0.704 1.0374441 -1.012885 -0.50550121 0.66790342 -0.31385326 
		0.19736625 0.67155635 -0.042216089 0.90670985 0.65992188 -0.35362199 1.2070351 0.63983345 
		-1.0656576 0.92239559 0.6230498 -1.7612317 0.21954337 0.61940074 -2.032865 -0.48980418 
		0.63103038 -1.7214586 -0.79013711 0.65111721 -1.0094147 -0.46127436 0.27944452 -0.36761025 
		0.18807602 0.28281513 -0.11665028 0.84343886 0.27207047 -0.40435597 1.1208981 0.25351128 
		-1.0621924 0.85792696 0.23800442 -1.7048155 0.20857285 0.23463777 -1.9557711 -0.44679016 
		0.24537468 -1.6680677 -0.72424161 0.26394051 -1.0102339 -0.31508785 -0.053287089 
		-0.52336389 0.18190189 -0.050710678 -0.33128521 0.68348867 -0.05892992 -0.55148745 
		0.89584267 -0.073137879 -1.054973 0.69458097 -0.085010171 -1.5468119 0.19758366 -0.087584555 
		-1.7388886 -0.30399907 -0.079358757 -1.518694 -0.51635313 -0.065152645 -1.0152056 
		-0.089199342 -0.27963817 -0.75739181 0.17976539 -0.27824283 -0.6534425 0.45122343 
		-0.28269255 -0.77261078 0.56614816 -0.29038459 -1.0450938 0.4572207 -0.2968058 -1.3112761 
		0.18825607 -0.29819828 -1.4152282 -0.083202109 -0.29375339 -1.2960579 -0.19813073 
		-0.28606117 -1.0235702 0.23490274 1.6561029 -1.0410063 0.1819952 -0.36515224 -1.0340677;
	setAttr -s 58 ".vt[0:57]"  0.27060318 -0.92387676 -0.27059555 -3.8146973e-006 -0.92387867 -0.38268423
		 -0.27059555 -0.92387676 -0.27059364 -0.3826828 -0.92387867 9.5367432e-007 -0.27059555 -0.92388058 0.27059937
		 -7.6293945e-006 -0.92387676 0.3826828 0.27059174 -0.92388535 0.27060318 0.3826828 -0.92387676 0
		 0.49998856 -0.70710182 -0.49999809 -3.8146973e-006 -0.70710754 -0.70710659 -0.5 -0.70710468 -0.49999666
		 -0.70711136 -0.7071085 4.7683716e-006 -0.50000381 -0.70710659 0.50000381 -3.8146973e-006 -0.70710754 0.70710945
		 0.5 -0.70710754 0.49999809 0.70710373 -0.70710945 3.8146973e-006 0.65328217 -0.38267899 -0.65328503
		 7.6293945e-006 -0.38268566 -0.92387962 -0.65327835 -0.38268661 -0.65328026 -0.92387009 -0.38268185 0
		 -0.65328598 -0.38268566 0.65328455 0 -0.38268566 0.92388153 0.65327835 -0.3826828 0.65328217
		 0.92388153 -0.38268661 4.7683716e-007 0.70711136 9.5367432e-007 -0.70710421 -7.6293945e-006 -5.7220459e-006 -0.99999523
		 -0.70710754 9.5367432e-007 -0.70710516 -1.000007629395 -9.5367432e-007 -1.9073486e-006
		 -0.70711136 -1.9073486e-006 0.70711327 -7.6293945e-006 9.5367432e-007 1 0.7070961 -9.5367432e-007 0.70710945
		 1.000003814697 2.8610229e-006 -1.9073486e-006 0.65328217 0.38268566 -0.65328217 3.8146973e-006 0.38268375 -0.92387772
		 -0.65328598 0.38268566 -0.65327883 -0.92388535 0.38268375 9.5367432e-007 -0.65328598 0.38268375 0.65328646
		 -3.8146973e-006 0.38268185 0.92387772 0.65328598 0.38268757 0.65328121 0.92387772 0.3826828 3.8146973e-006
		 0.49999619 0.70710754 -0.49999762 0 0.70710945 -0.70710468 -0.5 0.70710659 -0.49999523
		 -0.70710373 0.7071085 2.8610229e-006 -0.50000381 0.70711231 0.50000238 0 0.7071085 0.70710754
		 0.49999619 0.70710468 0.50000572 0.70709991 0.70710468 4.7683716e-006 0.27059174 0.92387867 -0.27059698
		 0 0.92387867 -0.38267946 -0.27059937 0.92387867 -0.27059698 -0.3826828 0.92388248 -1.4305115e-006
		 -0.27059555 0.92388058 0.27059746 -3.8146973e-006 0.92387772 0.3826828 0.27059555 0.92388248 0.27059841
		 0.3826828 0.92387867 -1.9073486e-006 -3.8146973e-006 -0.99999905 0 0 1.000000953674 -1.9073486e-006;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 2 3
		f 4 1 58 -10 -58
		mu 0 4 1 4 5 2
		f 4 2 59 -11 -59
		mu 0 4 4 6 7 5
		f 4 3 60 -12 -60
		mu 0 4 6 8 9 7
		f 4 4 61 -13 -61
		mu 0 4 8 10 11 9
		f 4 5 62 -14 -62
		mu 0 4 10 12 13 11
		f 4 6 63 -15 -63
		mu 0 4 12 14 15 13
		f 4 7 56 -16 -64
		mu 0 4 14 16 17 15
		f 4 8 65 -17 -65
		mu 0 4 3 2 18 19
		f 4 9 66 -18 -66
		mu 0 4 2 5 20 18
		f 4 10 67 -19 -67
		mu 0 4 5 7 21 20
		f 4 11 68 -20 -68
		mu 0 4 7 9 22 21
		f 4 12 69 -21 -69
		mu 0 4 9 11 23 22
		f 4 13 70 -22 -70
		mu 0 4 11 13 24 23
		f 4 14 71 -23 -71
		mu 0 4 13 15 25 24
		f 4 15 64 -24 -72
		mu 0 4 15 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 19 18 27 28
		f 4 17 74 -26 -74
		mu 0 4 18 20 29 27
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 28 27 36 37
		f 4 25 82 -34 -82
		mu 0 4 27 29 38 36
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 37 36 45 46
		f 4 33 90 -42 -90
		mu 0 4 36 38 47 45
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 46 45 54 55
		f 4 41 98 -50 -98
		mu 0 4 45 47 56 54
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 4 1 64
		f 3 -3 -107 107
		mu 0 3 6 4 65
		f 3 -4 -108 108
		mu 0 3 8 6 66
		f 3 -5 -109 109
		mu 0 3 10 8 67
		f 3 -6 -110 110
		mu 0 3 12 10 68
		f 3 -7 -111 111
		mu 0 3 14 12 69
		f 3 -8 -112 104
		mu 0 3 16 14 70
		f 3 48 113 -113
		mu 0 3 55 54 71
		f 3 49 114 -114
		mu 0 3 54 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spider_body_grp" -p "spider_grp";
	rename -uid "450F07ED-FE47-3197-856E-48939A7DD787";
	setAttr ".rp" -type "double3" 0 0.5184268291793046 0 ;
	setAttr ".sp" -type "double3" 0 0.5184268291793046 0 ;
createNode transform -n "spider_body" -p "spider_body_grp";
	rename -uid "58BEEB75-4D45-A626-6E68-9E857A417699";
	setAttr ".rp" -type "double3" 0 0.59060607214786387 -0.34437689185142517 ;
	setAttr ".sp" -type "double3" 0 0.59060607214786387 -0.34437689185142517 ;
createNode mesh -n "spider_bodyShape" -p "spider_body";
	rename -uid "09083C57-DE41-9650-161F-97BC9053BBB5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.20980852842330933 0.16744425892829895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 204 ".pt";
	setAttr ".pt[132]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[133]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".pt[349]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[350]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[351]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[352]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[353]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[354]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[355]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[356]" -type "float3" 0 -0.039388783 0 ;
	setAttr ".pt[365]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[366]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[367]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[368]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[369]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[370]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[371]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[372]" -type "float3" 0 -0.017631888 0 ;
	setAttr ".pt[373]" -type "float3" 0 -0.068465203 0 ;
	setAttr ".pt[374]" -type "float3" 0 -0.04093869 0 ;
	setAttr ".pt[375]" -type "float3" 0 -0.0095306439 0 ;
	setAttr ".pt[376]" -type "float3" 0 -0.040309921 0 ;
	setAttr ".pt[377]" -type "float3" 0 -0.068465441 0 ;
	setAttr ".pt[378]" -type "float3" 0 -0.040939558 0 ;
	setAttr ".pt[379]" -type "float3" 0 -0.040310152 0 ;
	setAttr ".pt[380]" -type "float3" 0 -0.0095311003 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "spider_body";
	rename -uid "0F3EB5EA-9E43-3E0F-9BC0-AC8FF87FFADC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:377]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 910 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.5 0 1 0 0 1 0.5 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.068509385 0 0.48798203 8.0397992e-017 0.39308265
		 0.15510167 0.050793953 0.15613244 0 0.450324 0.25858399 0.450324 0.25858402 1 0 1
		 0 0 1 0 1 0.450324 0 0.450324 0 0.450324 1 0.450324 1 1 0 1 0.549676 1 0.549676 0
		 1 0 1 1 0.450324 1 0.450324 0 1 0 1 1 0 0 0.450324 0 0.450324 1 0 1 0 0 0.549676
		 0 0.549676 1 0 1 0.81088817 0.15384349 1.000000119209 1.7853366e-016 1 1 0 1 0 0
		 0 1 1 0 1 1 0 0 0.25858402 0 0 0 1 0 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.12098566 0.59981155 0.26866359 0.59494591 0
		 0.60379773 1 0 1 0.450324 1 1 0 0 0.465767 0 0.46576703 1 0 1 0.53423297 1 0.53423297
		 0 1 0 1 1 0 0 0.46576703 0 0.46576703 1 0 1 0.53423297 1 0.53423297 0 1 0 1 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.58350199 1 0.58350199 0 1 0 1 1 0 0 0.41649801
		 0 0.41649801 1 0 1 0.58350199 1 0.58350199 0 1 0 1 1 0 0 0.41649801 0 0.41649801
		 1 0 1 0.58350199 1 0.58350199 0 1 0 1 1 0 0 0.41649801 0 0.41649801 1 0 1 0 0 1 0
		 1 0.41649801 0 0.41649801 0 0 1 0 1 0.41649801 0 0.41649801 0 0 0.41649801 0 0.41649801
		 1 0 1 0.58350199 1 0.58350199 0 1 0 1 1 0.22509991 1 0.22509991 0 0.40705204 0 0.40705204
		 1 0 0.59294796 1 0.59294796 1 0.77490008 0 0.77490008 0.59294796 1 0.59294796 0 0.77490008
		 0 0.77490008 1 0.59294796 1 0.59294796 0 0.77490008 0 0.77490008 1 0.59294796 1 0.59294796
		 0 0.77490008 0 0.77490008 1 0.22509991 1 0.22509989 0 0.40705204 0 0.40705204 1 0.22509989
		 1 0.22509989 0 0.40705204 0 0.40705204 1 0.22509989 1 0.22509989 0 0.40705204 0 0.40705204
		 1 0 0.59294796 1 0.59294796 1 0.77490008 0 0.77490008 0.59294796 1 0.59294796 0 0.77490008
		 0 0.77490008 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0;
	setAttr ".uvst[0].uvsp[250:499]" 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.38577402
		 1 0.38577402 0 0.6976018 0 0.6976018 1 0.30239818 1 0.30239818 0 0.61422598 0 0.61422598
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0.42763701
		 0 0.42763698 0 0 1 0 1 0.42763701 0 0.42763701 0.684699 1 0.684699 0 1 0 1 1 0 0
		 0.315301 0 0.315301 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.684699 1 0.684699 0 1 0
		 1 1 0 0 0.315301 0 0.315301 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0.49232399 1 0.49232399 0 1 0 1 1
		 0 0 0.50767601 0 0.50767601 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".uvst[0].uvsp[500:749]" 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0.49232399 1 0.49232399 0 1 0 1 1 0 0 0.50767601 0 0.50767601 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 0.50767601 0 0.50767601 0 0 1 0 1 0.50767601 0 0.50767601
		 0 0 1 0 1 0.50767601 0 0.50767601 0 0 1 0 1 0.50767601 0 0.50767601 0.24302876 1
		 0.24302876 0 0.14180776 1 0.14180776 0 1 0.85819221 0 0.85819221 0.85819221 0 0.85819221
		 1 0.85819221 0 0.85819221 1 0.85819221 0 0.85819221 1 0.14180776 1 0.14180775 0 0.14180775
		 1 0.14180775 0 0.14180775 1 0.14180775 0 1 0.85819221 0 0.85819221 0.85819221 0 0.85819221
		 1 0.75697124 0 0.75697124 1 0 0 1 0 1 0.50767601 0 0.50767601 0 0 1 0 1 0.50767601
		 0 0.50767601 0 0 0 1 0 0 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0
		 0 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 1 0 1
		 1 1 1 0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 0 0 1 0.041824751 0.64736795 0.27960536 0.64560926
		 0.28304493 1 0 0.86122012 0.018203037 0.091533676 0.38781905 0.10790497 0.36498713
		 0.19022237 0 0.12163326 0.36498713 0.19022237 0.38781905 0.10790497 0.70276362 0.23206121
		 0.69956213 0.2806392 0.10652192 0.021395117 0.28160083 0.021395117 0.27931854 0.33488852
		 0.095409609 0.34976873 0.69956213 0.2806392 0.70276362 0.23206121 0.99919349 0.5054822
		 1 0.40852091 0.024227813 2.3239622e-016 0.41774809 0 0.38781905 0.10790497 0.018203037
		 0.091533676 0.70276362 0.23206121 0.71062171 0.1128251 0.99919349 0.5054822 0.92816085
		 0.177689 0.27931854 0.33488852 0.28160083 0.021395117 0.38324443 0 0.41961706 0.32353684
		 0.27960536 0.64560926 0.27931854 0.33488852 0.41961706 0.32353684 0.37647957 0.64489275
		 0.28304493 1 0.27960536 0.64560926 0.37647957 0.64489275 0.40594912 0.93981111 0.043132402
		 0 1 1.0622861e-015 0.87816948 0.59737653 0 0.41967684 0.045759056 1.1304298e-015
		 1 0;
	setAttr ".uvst[0].uvsp[750:909]" 0.99718642 0.65536791 0 0.44981608 0.38781905
		 0.10790497 0.018203037 0.091533676 0.36498713 0.19022237 0.36498713 0.19022237 0
		 0.12163326 0 0.12163326 0.38781905 0.10790498 0.36498713 0.19022237 0.70276368 0.23206121
		 0.69956213 0.2806392 0.69956213 0.2806392 0.70276362 0.23206121 0.69956213 0.2806392
		 0.99919349 0.5054822 1 0.40852091 1 0.40852091 0.28160083 0.021395117 0.27931854
		 0.33488852 0.38324443 0 0.38324445 0 0.41961706 0.32353684 0.41961706 0.32353684
		 0.27931857 0.33488855 0.27960536 0.64560926 0.41961706 0.32353684 0.37647957 0.64489275
		 0.37647957 0.64489275 0.27960536 0.64560926 0.28304493 1 0.37647957 0.64489275 0.40594912
		 0.93981111 0.40594912 0.93981111 0.27931854 0.33488852 0.41961706 0.32353684 0.38324445
		 0 0.28160083 0.021395117 0.38781905 0.10790497 0.018203037 0.091533676 0 0.12163326
		 0.36498713 0.19022235 0.27931854 0.33488852 0.41961706 0.32353684 0.38324445 0 0.28160083
		 0.021395117 0.38781905 0.10790497 0.018203037 0.091533676 0 0.12163326 0.36498713
		 0.19022235 0.27960533 0.64560926 0.37647957 0.64489275 0.41961706 0.32353684 0.27931854
		 0.33488852 0.70276368 0.23206121 0.38781905 0.10790497 0.36498713 0.19022237 0.69956213
		 0.2806392 0.27960533 0.64560926 0.37647957 0.64489275 0.41961706 0.32353684 0.27931854
		 0.33488852 0.70276368 0.23206121 0.38781905 0.10790497 0.36498713 0.19022237 0.69956213
		 0.2806392 0.28304493 1 0.40594912 0.93981111 0.37647957 0.64489275 0.27960536 0.64560926
		 0.99919355 0.5054822 0.70276362 0.23206121 0.69956213 0.2806392 1 0.40852094 0.28304493
		 1 0.40594912 0.93981111 0.37647957 0.64489275 0.27960536 0.64560926 0.99919355 0.5054822
		 0.70276362 0.23206121 0.69956213 0.2806392 1 0.40852094 0.28304493 1 0.40594912 0.93981111
		 0.37647957 0.64489275 0.27960536 0.64560926 0.99919349 0.5054822 0.70276362 0.23206121
		 0.69956213 0.2806392 1 0.40852094 0 0 0.12041461 9.9566566e-017 0.29888684 0.47567162
		 0.24003226 0.97113818 0.12317264 1 0.06158632 0.5 0.061540995 0.499632 0.28749311
		 0 0.56751102 0 0.39364678 0.49963203 0.39351872 0.5 0.21952647 1 0 0.82616633 0.4646394
		 0 0.83681357 0 0.11911554 1 0 0.64740235 0.22797114 0.32976022 0.2323197 0.32370117
		 0.14374655 0.41308317 0.47796455 0.5 0.48142409 0.017055439 0.85662568 0.017055439
		 1 0 0.5 0.46910024 0.490641 0.47788087 0 0.93820047 0.061405625 0.76313126 0.053897467
		 0.41816112 0.20178115 0.1503388 0 0.5853197 0.79211414 0.5853197 0.99999994 0.24221064
		 0.42366055 0 0.20815969 0.61500746 1 0.61500746 0.57590586 0 0 0.25148496 0 0.5853197
		 0.79211414 0.5853197 0.99999994 0.24221064 0.42366055 0 0.20815969 0.61500746 1 0.61500746
		 0.57590586 0 0 0.25148496 0.69956213 0.2806392 0.70276362 0.23206121 0.99919349 0.5054822
		 1 0.40852091 0.28304493 1 0.27960536 0.64560926 0.37647957 0.64489275 0.40594912
		 0.93981111 0.36498713 0.19022237 0.38781905 0.10790497 0.70276362 0.23206121 0.69956213
		 0.2806392 0.27960536 0.64560926 0.27931854 0.33488852 0.41961706 0.32353684 0.37647957
		 0.64489275 0.018203037 0.091533676 0.38781905 0.10790497 0.36498713 0.19022237 0
		 0.12163326 0.27931854 0.33488852 0.28160083 0.021395117 0.38324443 0 0.41961706 0.32353684;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt";
	setAttr ".pt[249]" -type "float3" 0 -0.032426212 -0.023248374 ;
	setAttr ".pt[251]" -type "float3" 0 -0.032426212 -0.023248374 ;
	setAttr ".pt[262]" -type "float3" 0 -0.032426212 -0.023248374 ;
	setAttr ".pt[263]" -type "float3" 0 -0.032426212 -0.023248374 ;
	setAttr ".pt[349]" -type "float3" 0.016566284 0.013443377 -0.13936849 ;
	setAttr ".pt[350]" -type "float3" 0.0074523482 0.015940879 -0.13936849 ;
	setAttr ".pt[351]" -type "float3" 0.025188573 0.0027040872 -0.13936849 ;
	setAttr ".pt[352]" -type "float3" 0.027098993 -0.00028738347 -0.13936849 ;
	setAttr ".pt[353]" -type "float3" -0.0073712403 0.016040921 -0.13936849 ;
	setAttr ".pt[354]" -type "float3" -0.016520008 0.013537302 -0.13936849 ;
	setAttr ".pt[355]" -type "float3" -0.027018202 -0.00018735329 -0.13936849 ;
	setAttr ".pt[356]" -type "float3" -0.025098635 0.0028039594 -0.13936849 ;
	setAttr ".pt[357]" -type "float3" -0.0060695587 -0.035365634 -0.023248374 ;
	setAttr ".pt[358]" -type "float3" 0.0083196983 -0.045051765 -0.023248374 ;
	setAttr ".pt[359]" -type "float3" -0.0075206091 -0.030840266 -0.023248374 ;
	setAttr ".pt[360]" -type "float3" 0.00018927867 -0.048425443 -0.023248374 ;
	setAttr ".pt[361]" -type "float3" 0.0061043077 -0.035313856 -0.023248374 ;
	setAttr ".pt[362]" -type "float3" 0.0074777575 -0.0307252 -0.023248374 ;
	setAttr ".pt[363]" -type "float3" -0.0083757741 -0.044998545 -0.023248374 ;
	setAttr ".pt[364]" -type "float3" -0.00020839443 -0.048367113 -0.023248374 ;
	setAttr ".pt[365]" -type "float3" 0.22746669 -0.68334532 0.017342648 ;
	setAttr ".pt[366]" -type "float3" 0.2274671 -0.69606197 0.017342648 ;
	setAttr ".pt[367]" -type "float3" 0.22746669 -0.68478352 0.017342648 ;
	setAttr ".pt[368]" -type "float3" 0.22746697 -0.69462508 0.017342648 ;
	setAttr ".pt[369]" -type "float3" -0.22746669 -0.68334538 0.017342648 ;
	setAttr ".pt[370]" -type "float3" -0.22746669 -0.68478352 0.017342648 ;
	setAttr ".pt[371]" -type "float3" -0.2274671 -0.69606197 0.017342648 ;
	setAttr ".pt[372]" -type "float3" -0.22746697 -0.6946252 0.017342648 ;
	setAttr ".pt[373]" -type "float3" 0.32324412 -0.6739164 0.13763876 ;
	setAttr ".pt[374]" -type "float3" 0.32324371 -0.68545938 0.13763876 ;
	setAttr ".pt[375]" -type "float3" 0.32324424 -0.69862968 0.13763876 ;
	setAttr ".pt[376]" -type "float3" 0.32324436 -0.68572265 0.13763876 ;
	setAttr ".pt[377]" -type "float3" -0.32324412 -0.6739164 0.13763876 ;
	setAttr ".pt[378]" -type "float3" -0.32324371 -0.68545806 0.13763876 ;
	setAttr ".pt[379]" -type "float3" -0.32324436 -0.68572265 0.13763876 ;
	setAttr ".pt[380]" -type "float3" -0.32324424 -0.6986292 0.13763876 ;
	setAttr -s 381 ".vt";
	setAttr ".vt[0:165]"  -0.2838431 -0.1340315 -1.026480556 0 -0.16669369 -0.97040939
		 0.2838431 -0.1340315 -1.026480556 -0.15649472 -0.25656581 -1.27945745 0 -0.19681944 -1.36993122
		 0.15649472 -0.25656581 -1.27945745 -0.27445254 -0.069669336 -1.029290438 -4.6566129e-010 -0.12737072 -0.98895526
		 0.27445254 -0.069669336 -1.029290438 -1.0186341e-010 0.33430496 -0.49970746 -0.22380352 0.19853239 -0.55757684
		 -0.39373606 0.2726649 0.0038313181 0 0.48652092 0.032699458 0.39373606 0.2726649 0.0038313181
		 0.22380351 0.19853237 -0.55757684 -0.38438019 0.25907087 0.24265125 0 0.46897712 0.30645898
		 0.38438019 0.25907087 0.24265125 0 0.33804831 0.58259016 -0.34478194 0.17550093 0.43495938
		 0.34478194 0.17550093 0.43495938 -0.29629099 0.10265802 0.54007071 0 0.1333552 0.69013083
		 0.29629099 0.10265802 0.54007071 -0.12902369 0.28961122 -0.51702774 -0.205828 0.43763331 0.02001759
		 -0.24009071 0.39294142 0.28836823 -0.22462317 0.28720173 0.51285499 -0.19681898 0.1399563 0.62493455
		 0.12902367 0.28961125 -0.51702774 0.205828 0.43763331 0.02001759 0.24009071 0.39294142 0.28836823
		 0.22462317 0.28720173 0.51285499 0.19681898 0.1399563 0.62493455 0.14791805 0.29040793 -0.64295518
		 0 0.32263225 -0.62267679 -0.14807795 0.29051098 -0.64300251 0.2303808 0.22883259 -0.66902333
		 -0.23037243 0.22880717 -0.66901636 -0.14685239 0.18065535 -0.3726393 -0.1200536 0.21755631 -0.3670949
		 1.3405952e-009 0.22587964 -0.37899509 0.12044524 0.21776463 -0.36678997 0.14693923 0.18029368 -0.37293029
		 0.14052255 0.24409075 -0.83842057 0 0.29896799 -0.82039398 -0.14052254 0.24409077 -0.83842057
		 0.17467219 0.21531586 -0.85755956 -0.17467217 0.21531586 -0.85755962 0 0.249878 -0.96186101
		 0.12491473 0.22613223 -0.94960183 -0.12491473 0.22613223 -0.94960183 0.18863368 0.16846228 -0.95336378
		 -0.18863368 0.16846228 -0.95336378 0.10364163 0.20291902 -1.097495079 0 0.192983 -1.13576901
		 -0.10364163 0.20291902 -1.097495079 -0.16167679 0.17435239 -1.083306313 0.16167679 0.17435239 -1.083306313
		 -0.16170277 -0.29282066 0.35850781 0 -0.3076629 0.39065939 0.16170277 -0.29282066 0.35850781
		 -0.27495065 -0.24844863 0.34336054 0.27495065 -0.24844863 0.34336054 -0.34176096 -0.23537825 0.2071816
		 0.34176096 -0.23537825 0.2071816 -0.39856541 -0.19250859 -0.01550416 0.39856541 -0.19250859 -0.01550416
		 -0.23524894 0.015962038 -0.34715742 0.23524894 0.015962042 -0.34715745 0.45814851 -0.022110999 -0.11331027
		 0.46061841 -0.090160586 0.068461597 0.40368393 -0.16027156 0.25111547 0.30167764 -0.20806734 0.39064384
		 0.16813627 -0.25202698 0.46974048 0 -0.26246297 0.52253664 -0.16813627 -0.25202698 0.46974048
		 -0.30167764 -0.20806734 0.39064384 -0.40368393 -0.16027156 0.25111547 -0.46061841 -0.090160586 0.068461597
		 -0.45814851 -0.022110999 -0.11331027 0 -0.091831461 -0.38843739 0.21450025 -0.095765077 -0.38156968
		 0.25257051 -0.29023808 -0.091233864 0 -0.34216243 -0.12014389 -0.25257051 -0.29023808 -0.091233864
		 -0.21450025 -0.095765084 -0.38156968 0.19273181 -0.31247824 0.17047067 0 -0.33556807 0.16373444
		 -0.19273181 -0.31247824 0.17047067 0.31163418 -0.14311521 -0.45919633 0.3660267 0.015222351 -0.55697912
		 -0.3660267 0.015222352 -0.55697912 -0.31163418 -0.14311521 -0.45919636 0 -0.27477261 -0.53536832
		 0 -0.25847995 -0.78677797 -0.28037101 -0.20149 -0.77660298 0.28037101 -0.20149 -0.77660298
		 0 -0.31614318 -1.028566122 0.225106 -0.25654101 -0.97809303 -0.225106 -0.25654101 -0.97809303
		 0 -0.33220282 -1.19838667 0.17077966 -0.30406266 -1.16813278 -0.17077966 -0.30406266 -1.16813278
		 0.30761573 -0.20270592 -0.62700844 0 -0.29885328 -0.6557709 -0.30761573 -0.20270592 -0.62700844
		 0.35662299 -0.0282932 -0.67320466 -0.35662299 -0.0282932 -0.67320466 0.33031413 -0.079933941 -0.8381325
		 -0.33031413 -0.079933941 -0.8381325 0.32748762 -0.10023366 -0.92770451 0.23610966 -0.23434226 -0.91134167
		 0 -0.28503618 -0.91940099 -0.23610966 -0.23434226 -0.91134167 -0.32748762 -0.10023366 -0.92770451
		 0.28260916 -0.0056686606 -1.047849178 0.3478452 0.0032450426 -0.95843607 -0.3478452 0.0032450426 -0.95843607
		 -0.28260916 -0.0056686606 -1.047849178 0.0668073 0.105252 -1.24748099 0 0.120183 -1.25053799
		 -0.0668073 0.105252 -1.24748099 0.064623602 -0.053603701 -1.36428702 0 -0.062924698 -1.38195801
		 -0.064623602 -0.053603701 -1.36428702 0.125438 0.069550902 -1.21416605 -0.125438 0.069550902 -1.21416605
		 0.120203 -0.017089101 -1.32090604 -0.120203 -0.017089101 -1.32090604 0.23348217 0.0096414313 -1.18819237
		 -0.23348217 0.0096414313 -1.18819237 0.1511569 -0.026604522 -1.29702258 -0.1511569 -0.026604522 -1.29702258
		 0.44070601 0.138779 -0.91949677 0.4616113 0.15390487 -0.83504492 0.60426879 0.14827426 -0.86636096
		 0.58112025 0.12279604 -0.93434399 -0.58112025 0.12279604 -0.93434399 -0.60426879 0.14827426 -0.86636096
		 -0.4616113 0.15390487 -0.83504498 -0.44070601 0.138779 -0.91949677 0.58545285 0.040651198 -0.91527134
		 0.464573 0.0477028 -0.92856109 -0.464573 0.0477028 -0.92856109 -0.58545285 0.040651198 -0.91527134
		 0.47908366 0.085611016 -0.8342064 0.59343141 0.065162696 -0.86534286 -0.59343141 0.065162696 -0.86534286
		 -0.47908366 0.085611016 -0.8342064 0.71602792 0.13348289 -0.86551636 0.71390325 0.12836049 -0.93308645
		 -0.71390325 0.12836049 -0.93308645 -0.71602792 0.13348289 -0.86551636 0.80996573 0.14935157 -0.8726297
		 0.81424057 0.1513743 -0.94538152 -0.81424057 0.1513743 -0.94538152 -0.80996573 0.14935157 -0.8726297
		 0.69013703 0.059558 -0.92646801 -0.69013703 0.059558 -0.92646801 0.796287 0.085313901 -0.92564702
		 -0.796287 0.085313901 -0.92564702 0.71682101 0.066517502 -0.860856 -0.71682101 0.066517502 -0.860856
		 0.79576701 0.101606 -0.86337501 -0.79576701 0.101606 -0.86337501;
	setAttr ".vt[166:331]" 0.89382601 0.17324314 -0.8957938 0.90293998 0.18306001 -0.94660997
		 -0.90293998 0.18306001 -0.94660997 -0.8937912 0.17321911 -0.89580351 0.32933551 0.15021256 -0.94255817
		 -0.32933551 0.15021256 -0.94255817 0.35554293 0.071255237 -0.81243402 -0.35554293 0.071255237 -0.81243402
		 0.88520342 0.13103049 -0.89123195 -0.88521248 0.13102989 -0.89122987 0.88329297 0.119272 -0.93338901
		 -0.88329297 0.119272 -0.93338901 0.37906557 0.17180339 -0.8422128 -0.37906557 0.17180339 -0.8422128
		 -0.22344245 0.24262296 -0.77304518 -0.14384557 0.26980841 -0.74990249 0 0.32095605 -0.73033535
		 0.14384557 0.26980841 -0.74990249 0.22344245 0.24262296 -0.77304518 0.33935624 0.090657808 -0.68676323
		 -0.33935624 0.090657808 -0.68676323 0.34964249 0.085052662 -0.59357893 -0.34964249 0.085052662 -0.59357893
		 0.1790572 0.10478348 -0.3992568 0.43838787 0.15553521 -0.11602823 0.46756473 0.094322726 0.14733154
		 0.43069756 0.0086587109 0.33875293 0.32800961 -0.073258862 0.49251205 0.18976131 -0.10669524 0.60927975
		 0 -0.12355606 0.65650475 -0.18976131 -0.10669524 0.60927975 -0.32800961 -0.073258862 0.49251205
		 -0.43069756 0.0086587099 0.33875293 -0.46756473 0.094322726 0.14733154 -0.43838787 0.15553521 -0.11602823
		 -0.1790572 0.10478348 -0.39925683 0.15350655 0.13147134 -0.40552682 0.40988442 0.23623955 -0.04858258
		 0.43803266 0.1760188 0.19020282 0.3983205 0.092112206 0.38592109 0.31724438 0.02145756 0.52518153
		 0.19187202 0.0084237158 0.63944042 0 -0.0038290173 0.69320422 -0.19187202 0.0084237158 0.63944042
		 -0.31724438 0.02145756 0.52518153 -0.3983205 0.092112206 0.38592109 -0.43803266 0.1760188 0.19020282
		 -0.40988442 0.23623955 -0.04858258 -0.15350655 0.13147134 -0.40552682 -0.34326285 -0.050337698 -0.94406289
		 -0.36010325 -0.0072773769 -0.83094829 -0.35499528 0.030749798 -0.6828025 -0.35921296 0.049408559 -0.57902116
		 -0.22636846 0.057823408 -0.38040906 -0.45824012 0.055266902 -0.12445104 -0.47770935 -0.0011294596 0.10976258
		 -0.43259892 -0.081981927 0.29433861 -0.32358754 -0.14680155 0.44442999 -0.18151951 -0.19214737 0.54920948
		 0 -0.20858938 0.59798962 0.18151951 -0.19214737 0.54920948 0.32358754 -0.14680155 0.44442999
		 0.43259892 -0.081981927 0.29433861 0.47770935 -0.0011294596 0.10976258 0.45824012 0.055266902 -0.12445104
		 0.22636846 0.057823408 -0.38040909 0.35921296 0.049408559 -0.57902116 0.35499528 0.030749798 -0.6828025
		 0.36010325 -0.0072773769 -0.83094829 0.34326285 -0.050337698 -0.94406289 -0.28796566 0.13857339 -0.59813529
		 -0.30783033 0.13071659 -0.68773764 0.28796566 0.13857339 -0.59813529 0.30783033 0.13071659 -0.68773764
		 -0.79451793 0.23215249 -0.33392113 -0.79451752 0.18678221 -0.38875142 -0.79451805 0.13501388 -0.38520762
		 -0.79451823 0.18574545 -0.32912749 -0.82698333 0.19022852 -0.50751501 -0.82698381 0.14024094 -0.50350744
		 -0.82698339 0.18457261 -0.56862259 -0.82698369 0.14589173 -0.56728929 -0.89587605 0.20224786 -0.71687406
		 -0.91026545 0.1641749 -0.70266443 -0.89442492 0.22003555 -0.77249575 -0.9021349 0.15091404 -0.76500171
		 0.79451793 0.23215261 -0.33392113 0.79451752 0.18678233 -0.38875142 0.79451823 0.18574557 -0.32912749
		 0.79451805 0.135014 -0.38520759 0.82698333 0.19022846 -0.50751501 0.82698339 0.18457249 -0.56862259
		 0.82698381 0.14024088 -0.50350744 0.82698369 0.14589167 -0.56728935 0.89582759 0.20224057 -0.71694934
		 0.89445424 0.22027701 -0.7726602 0.91030788 0.16417326 -0.70264351 0.9021405 0.1509326 -0.76501286
		 0.41420752 0.15237781 -0.53910589 0.44298425 0.12185246 -0.53871435 0.46248573 0.14702891 -0.46591771
		 0.4051441 0.19207695 -0.46319827 -0.41437879 0.15241095 -0.53831786 -0.4051441 0.19207692 -0.46319827
		 -0.46248573 0.14702889 -0.46591771 -0.44313753 0.12170883 -0.53843111 0.53023058 0.16010465 -0.49788436
		 0.54891133 0.1262373 -0.47959557 0.56027365 0.15830451 -0.38853532 0.54568905 0.20471156 -0.4005546
		 -0.52798694 0.15989447 -0.50851715 -0.54568905 0.20471148 -0.40055463 -0.56027365 0.15830445 -0.38853532
		 -0.55009526 0.11738254 -0.49193946 0.63754737 0.1708923 -0.43145177 0.65423036 0.11912397 -0.42006886
		 0.65887654 0.16985554 -0.33081686 0.65043104 0.21626258 -0.3380506 -0.63754737 0.17089222 -0.43145177
		 -0.65043104 0.21626249 -0.33805063 -0.65887654 0.16985546 -0.33081686 -0.65423036 0.11912389 -0.42006886
		 0.40802723 0.14111082 -0.6892333 0.4334687 0.10131799 -0.68402684 0.43932775 0.10011575 -0.59901083
		 0.39983323 0.14552842 -0.61458701 -0.40802723 0.14111084 -0.6892333 -0.39784816 0.14733778 -0.61473936
		 -0.43957609 0.099813521 -0.59871292 -0.4334687 0.10131799 -0.68402684 0.51776481 0.15249477 -0.66141617
		 0.53654242 0.11299321 -0.65717721 0.54169446 0.12202796 -0.57893747 0.51233357 0.15818931 -0.56800508
		 -0.51776481 0.15249482 -0.66141617 -0.51234317 0.15819427 -0.56805605 -0.54196507 0.12034347 -0.57533795
		 -0.53654242 0.11299323 -0.65717721 0.66327244 0.16758944 -0.60647172 0.67321408 0.12847409 -0.60378587
		 0.67665404 0.13154434 -0.52502495 0.66210371 0.17081161 -0.512573 -0.66327244 0.16758952 -0.60647172
		 -0.6631518 0.16930647 -0.51690996 -0.6768235 0.13105607 -0.52487677 -0.67321408 0.12847413 -0.60378581
		 0.47390708 0.18486618 -0.80036336 0.45463595 0.098782785 -0.78019989 0.44126105 0.10372061 -0.70512718
		 0.41534281 0.1437794 -0.71078241 -0.47390422 0.18486127 -0.80036157 -0.41534281 0.1437794 -0.71078241
		 -0.44126105 0.10372061 -0.70512718 -0.45456851 0.084318042 -0.78009975 0.56350482 0.19720674 -0.81598574
		 0.55327123 0.11101387 -0.79131579 0.54097736 0.11779886 -0.71417254 0.54006857 0.15758027 -0.72851765
		 -0.56350625 0.19710894 -0.81589115 -0.54006743 0.15757988 -0.7285161 -0.54096311 0.11779179 -0.71414906
		 -0.55353671 0.11022376 -0.79065514 0.69387484 0.21516298 -0.80178946 0.68364429 0.12102528 -0.7816357
		 0.67567396 0.13703002 -0.71193713 0.67456472 0.17438747 -0.72596192;
	setAttr ".vt[332:380]" -0.69387484 0.21516302 -0.80178946 -0.67452383 0.17441185 -0.72607124
		 -0.6758368 0.13668755 -0.70916951 -0.68373108 0.12023779 -0.78182125 0.80382073 0.21371943 -0.78152156
		 0.80160123 0.13009629 -0.77283007 0.79812241 0.15023214 -0.69233769 0.79672033 0.18971719 -0.72023326
		 -0.80356854 0.21201849 -0.78044206 -0.79667979 0.18971948 -0.72002286 -0.79812878 0.15021354 -0.69218904
		 -0.80160123 0.13009633 -0.77283007 0 -0.0056686606 -1.047849178 0.00020799041 -0.0056686606 -1.047849178
		 -0.002829358 -0.026604522 -1.29702258 0 -0.026604522 -1.29702258 0 0.0096414313 -1.18819237
		 1.21806192 -0.4476448 -0.81077313 1.22717595 -0.43782794 -0.86158931 1.20943952 -0.48985744 -0.80621129
		 1.20752907 -0.50161594 -0.84836835 -1.22725701 -0.43743473 -0.86136842 -1.21810818 -0.44727564 -0.81056195
		 -1.20760989 -0.50122273 -0.84814745 -1.2095294 -0.48946488 -0.80598831 -1.22855854 -0.47961402 -0.67766178
		 -1.24294794 -0.51768696 -0.66345215 -1.22710741 -0.46182632 -0.73328346 -1.23481739 -0.5309478 -0.72578943
		 1.22852373 -0.4794105 -0.67700309 1.22715032 -0.46137404 -0.73271394 1.24300396 -0.51747781 -0.66269726
		 1.23483658 -0.53071845 -0.7250666 -1.46209526 0.19023535 -0.50751537 -1.46209574 0.14024776 -0.50350779
		 -1.46209526 0.18457943 -0.56862295 -1.4620955 0.14589855 -0.56728965 1.46209526 0.19023487 -0.50751537
		 1.46209526 0.1845789 -0.56862295 1.46209574 0.14024729 -0.50350779 1.4620955 0.14589807 -0.56728971
		 -1.55787253 0.23215717 -0.33393019 -1.55787206 0.18678689 -0.38876048 -1.55787265 0.13501856 -0.38521668
		 -1.55787277 0.18575013 -0.32913655 1.55787253 0.23215765 -0.33393019 1.55787206 0.18678737 -0.38876048
		 1.55787277 0.1857506 -0.32913655 1.55787265 0.13501903 -0.38521665;
	setAttr -s 757 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 0 4 5 0 0 6 0 1 7 0
		 6 7 0 2 8 0 7 8 0 9 24 0 10 39 0 11 25 0 12 41 0 12 30 0 13 43 0 14 29 0 16 12 0
		 11 15 0 15 26 0 16 31 0 17 13 0 19 27 0 18 16 0 15 19 0 18 32 0 20 17 0 19 21 0 21 28 0
		 22 18 0 22 33 0 23 20 0 24 10 0 25 12 0 26 16 0 27 18 0 28 22 0 24 40 1 25 26 1 26 27 1
		 27 28 1 29 9 0 30 13 0 31 17 0 32 20 0 33 23 0 29 42 1 30 31 1 31 32 1 32 33 1 35 9 0
		 29 34 0 34 35 0 35 36 0 36 24 0 14 37 0 37 34 0 36 38 0 38 10 0 39 11 0 40 25 1 41 9 0
		 42 30 1 43 14 0 39 40 1 40 41 1 41 42 1 42 43 1 45 182 0 34 183 0 44 45 0 45 46 0
		 46 181 0 37 184 0 47 44 0 46 48 0 48 180 0 50 49 0 49 45 0 44 50 0 49 51 0 51 46 0
		 47 52 0 52 50 0 51 53 0 53 48 0 55 49 0 50 54 0 54 55 0 55 56 0 56 51 0 57 53 0 56 57 0
		 52 58 0 58 54 0 28 209 0 59 60 0 60 75 0 61 74 0 60 61 0 21 210 0 62 59 0 63 73 0
		 61 63 0 19 211 0 64 62 0 65 72 0 63 65 0 66 64 0 15 212 0 65 67 0 67 71 0 11 213 0
		 68 66 0 67 69 0 69 70 0 70 230 0 71 229 0 72 228 0 73 227 0 74 226 0 75 225 0 76 59 0
		 77 62 0 78 64 0 79 66 0 80 68 0 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 78 1 78 79 1 79 80 1 84 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0 86 81 0 83 87 0
		 87 88 0 88 84 0 88 89 0 89 85 0 87 61 0 60 88 0 59 89 0 87 65 0 64 89 0 83 67 0 66 85 0
		 82 69 0 68 86 0 69 231 0 39 214 0 82 90 0 90 91 0 91 69 0 68 92 0;
	setAttr ".ed[166:331]" 92 93 0 93 86 0 93 94 0 94 81 0 94 90 0 96 95 0 95 105 0
		 93 106 0 95 97 0 97 104 0 95 113 0 98 99 0 99 112 0 96 114 0 100 98 0 98 101 0 101 102 0
		 102 99 0 100 103 0 103 101 0 104 90 0 105 94 0 106 96 0 104 105 1 105 106 1 107 91 0
		 104 107 0 92 108 0 108 106 0 109 107 0 97 109 0 108 110 0 110 96 0 99 2 0 2 111 0
		 110 115 0 0 100 0 101 4 0 5 102 0 103 3 0 111 109 0 112 97 0 113 98 0 114 100 0 115 0 0
		 111 112 1 112 113 1 113 114 1 114 115 1 116 117 0 117 235 0 119 6 0 115 215 0 118 119 0
		 52 117 0 116 58 0 118 53 0 57 119 0 121 55 0 54 120 0 120 121 0 121 122 0 122 56 0
		 120 123 0 123 124 0 124 121 0 125 122 0 124 125 0 58 126 0 126 120 0 127 57 0 122 127 0
		 126 128 0 128 123 0 129 127 0 125 129 0 130 126 0 116 130 0 127 131 0 131 119 0 130 132 0
		 132 128 0 133 131 0 129 133 0 137 134 0 134 135 0 135 136 0 136 137 0 141 138 0 138 139 0
		 139 140 0 140 141 0 143 134 0 137 142 0 142 143 0 141 144 0 144 145 0 145 138 0 135 146 0
		 146 147 0 147 136 0 149 140 0 139 148 0 148 149 0 136 150 0 150 151 0 151 137 0 153 139 0
		 138 152 0 152 153 0 150 154 0 154 155 0 155 151 0 157 153 0 152 156 0 156 157 0 151 158 0
		 158 142 0 145 159 0 159 152 0 155 160 0 160 158 0 159 161 0 161 156 0 147 162 0 162 150 0
		 153 163 0 163 148 0 162 164 0 164 154 0 157 165 0 165 163 0 154 166 0 166 167 0 167 155 0
		 156 168 0 168 169 0 169 157 0 47 170 0 170 117 0 118 171 0 171 48 0 117 172 0 172 234 0
		 110 216 0 173 118 0 146 172 0 117 143 0 143 146 0 173 149 0 149 144 0 144 118 0 142 147 0
		 148 145 0 158 162 0 163 159 0 160 164 0 165 161 0 164 174 0 174 166 1 169 175 1 175 165 0
		 167 176 1 176 160 0 161 177 0 177 168 1;
	setAttr ".ed[332:497]" 170 134 0 141 171 0 170 178 0 178 135 0 179 171 0 140 179 0
		 178 172 0 173 179 0 180 38 0 181 36 0 182 35 0 183 44 0 184 47 0 180 181 1 181 182 1
		 182 183 1 183 184 1 184 178 0 179 180 0 172 185 0 185 233 0 186 173 0 108 217 0 185 187 0
		 187 232 0 188 186 0 92 218 0 189 202 0 190 203 0 191 204 0 192 205 0 193 206 0 194 207 0
		 195 208 0 196 224 0 197 223 0 198 222 0 199 221 0 200 220 0 201 219 0 189 190 1 190 191 1
		 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1
		 200 201 1 187 189 0 201 188 0 202 43 0 203 13 0 204 17 0 205 20 0 206 23 0 207 33 0
		 208 22 0 209 196 0 210 197 0 211 198 0 212 199 0 213 200 0 214 201 0 202 203 1 203 204 1
		 204 205 1 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1
		 213 214 1 215 118 0 216 173 0 217 186 0 218 188 0 219 68 0 220 80 0 221 79 0 222 78 0
		 223 77 0 224 76 0 225 195 0 226 194 0 227 193 0 228 192 0 229 191 0 230 190 0 231 189 0
		 232 91 0 233 107 0 234 109 0 235 111 0 8 116 0 6 215 1 215 216 1 216 217 1 217 218 1
		 218 219 1 219 220 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1 226 227 1
		 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 8 1
		 10 236 1 14 238 1 38 237 1 37 239 1 236 188 0 237 186 0 214 236 0 236 237 0 237 179 0
		 238 187 0 239 185 0 202 238 0 238 239 0 239 178 0 176 174 0 175 177 0 214 269 0 236 268 0
		 240 241 1 188 271 0 241 242 1 201 270 0 243 242 1 240 243 1 236 293 0 188 294 0 244 245 1
		 237 292 0 244 246 1 186 295 0 246 247 1 245 247 1 237 317 0 186 318 0 248 249 1 179 316 0
		 248 250 1 173 319 0 251 250 1 249 251 1 202 267 0 238 264 0 252 253 1;
	setAttr ".ed[498:663]" 189 266 0 254 252 1 187 265 0 255 254 1 253 255 1 238 291 0
		 239 288 0 256 257 1 187 290 0 256 258 1 185 289 0 259 258 1 257 259 1 239 315 0 178 312 0
		 260 261 1 185 314 0 260 262 1 172 313 0 263 262 1 261 263 1 264 272 0 265 273 0 264 265 1
		 266 274 0 265 266 1 267 275 0 266 267 1 267 264 1 268 276 0 269 277 0 268 269 1 270 278 0
		 269 270 1 271 279 0 270 271 1 271 268 1 272 280 0 273 281 0 272 273 1 274 282 0 273 274 1
		 275 283 0 274 275 1 275 272 1 276 284 0 277 285 0 276 277 1 278 286 0 277 278 1 279 287 0
		 278 279 1 279 276 1 280 253 0 281 255 0 280 281 1 282 254 0 281 282 1 283 252 0 282 283 1
		 283 280 1 284 241 0 285 240 0 284 285 1 286 243 0 285 286 1 287 242 0 286 287 1 287 284 1
		 288 296 0 289 297 0 288 289 1 290 298 0 289 290 1 291 299 0 290 291 1 291 288 1 292 300 0
		 293 301 0 292 293 1 294 302 0 293 294 1 295 303 0 294 295 1 295 292 1 296 304 0 297 305 0
		 296 297 1 298 306 0 297 298 1 299 307 0 298 299 1 299 296 1 300 308 0 301 309 0 300 301 1
		 302 310 0 301 302 1 303 311 0 302 303 1 303 300 1 304 257 0 305 259 0 304 305 1 306 258 0
		 305 306 1 307 256 0 306 307 1 307 304 1 308 246 0 309 244 0 308 309 1 310 245 0 309 310 1
		 311 247 0 310 311 1 311 308 1 312 320 0 313 321 0 312 313 1 314 322 0 313 314 1 315 323 0
		 314 315 1 315 312 1 316 324 0 317 325 0 316 317 1 318 326 0 317 318 1 319 327 0 318 319 1
		 319 316 1 320 328 0 321 329 0 320 321 1 322 330 0 321 322 1 323 331 0 322 323 1 323 320 1
		 324 332 0 325 333 0 324 325 1 326 334 0 325 326 1 327 335 0 326 327 1 327 324 1 328 336 0
		 329 337 0 328 329 1 330 338 0 329 330 1 331 339 0 330 331 1 331 328 1 332 340 0 333 341 0
		 332 333 1 334 342 0 333 334 1 335 343 0 334 335 1 335 332 1 336 261 0;
	setAttr ".ed[664:756]" 337 263 0 336 337 1 338 262 0 337 338 1 339 260 0 338 339 1
		 339 336 1 340 250 0 341 248 0 340 341 1 342 249 0 341 342 1 343 251 0 342 343 1 343 340 1
		 119 344 0 344 345 0 345 116 0 345 7 1 131 348 0 133 346 0 346 347 0 347 132 0 348 130 0
		 346 348 1 348 345 1 123 346 1 346 125 1 346 124 1 166 349 0 167 350 0 349 350 0 174 351 0
		 351 349 0 176 352 0 352 351 0 350 352 0 168 353 0 169 354 0 353 354 0 177 355 0 355 353 0
		 175 356 0 356 355 0 354 356 0 248 357 0 249 358 0 357 358 0 250 359 0 357 359 0 251 360 0
		 360 359 0 358 360 0 260 361 0 261 362 0 361 362 0 262 363 0 361 363 0 263 364 0 364 363 0
		 362 364 0 244 365 0 245 366 0 365 366 0 246 367 0 365 367 0 247 368 0 367 368 0 366 368 0
		 256 369 0 257 370 0 369 370 0 258 371 0 369 371 0 259 372 0 372 371 0 370 372 0 240 373 0
		 241 374 0 373 374 0 242 375 0 374 375 0 243 376 0 376 375 0 373 376 0 252 377 0 253 378 0
		 377 378 0 254 379 0 379 377 0 255 380 0 380 379 0 378 380 0;
	setAttr -s 378 -ch 1514 ".fc[0:377]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -7 -4
		mu 0 4 1 2 5 4
		f 4 -1 7 9 -9
		mu 0 4 6 7 8 9
		f 4 -3 8 11 -11
		mu 0 4 10 11 12 13
		f 4 12 39 67 63
		mu 0 4 14 15 16 17
		f 4 48 69 65 18
		mu 0 4 18 19 20 21
		f 4 19 -36 40 36
		mu 0 4 22 23 24 25
		f 4 49 45 23 -45
		mu 0 4 26 27 28 29
		f 4 41 37 25 -37
		mu 0 4 30 31 32 33
		f 4 50 46 28 -46
		mu 0 4 34 35 36 37
		f 4 -38 42 38 31
		mu 0 4 38 39 40 41
		f 4 -47 51 47 33
		mu 0 4 42 43 44 45
		f 4 66 -40 34 13
		mu 0 4 46 16 15 47
		f 4 -41 -15 20 21
		mu 0 4 25 24 48 49
		f 4 24 -42 -22 26
		mu 0 4 50 31 30 51
		f 4 -43 -25 29 30
		mu 0 4 40 39 52 53
		f 4 -64 68 -49 43
		mu 0 4 54 55 19 18
		f 4 -20 22 -50 -17
		mu 0 4 56 57 27 26
		f 4 27 -51 -23 -26
		mu 0 4 58 35 34 59
		f 4 -52 -28 -32 32
		mu 0 4 44 43 60 61
		f 4 52 -44 53 54
		mu 0 4 62 63 64 65
		f 4 -53 55 56 -13
		mu 0 4 66 67 68 69
		f 4 -54 -19 57 58
		mu 0 4 70 71 72 73
		f 4 -57 59 60 -35
		mu 0 4 74 75 76 77
		f 4 -63 -67 61 14
		mu 0 4 78 16 46 79
		f 4 -68 62 35 15
		mu 0 4 17 16 78 80
		f 4 -69 -16 16 -65
		mu 0 4 19 55 81 82
		f 4 -70 64 44 17
		mu 0 4 20 19 82 83
		f 4 70 347 343 72
		mu 0 4 84 85 86 87
		f 4 346 -71 73 74
		mu 0 4 88 89 90 91
		f 4 -344 348 344 76
		mu 0 4 92 93 94 95
		f 4 345 -75 77 78
		mu 0 4 96 97 98 99
		f 4 79 80 -73 81
		mu 0 4 100 101 102 103
		f 4 82 83 -74 -81
		mu 0 4 104 105 106 107
		f 4 -82 -77 84 85
		mu 0 4 108 109 110 111
		f 4 -84 86 87 -78
		mu 0 4 112 113 114 115
		f 4 88 -80 89 90
		mu 0 4 116 117 118 119
		f 4 -89 91 92 -83
		mu 0 4 120 121 122 123
		f 4 93 -87 -93 94
		mu 0 4 124 125 126 127
		f 4 95 96 -90 -86
		mu 0 4 128 129 130 131
		f 4 134 124 98 99
		mu 0 4 132 133 134 135
		f 4 100 133 -100 101
		mu 0 4 136 137 138 139
		f 4 135 125 103 -125
		mu 0 4 140 141 142 143
		f 4 104 132 -101 105
		mu 0 4 144 145 146 147
		f 4 136 126 107 -126
		mu 0 4 148 149 150 151
		f 4 108 131 -105 109
		mu 0 4 152 153 154 155
		f 4 110 -127 137 127
		mu 0 4 156 157 158 159
		f 4 112 113 130 -109
		mu 0 4 160 161 162 163
		f 4 -128 138 128 115
		mu 0 4 164 165 166 167
		f 4 129 -114 116 117
		mu 0 4 168 169 170 171
		f 4 373 -426 448 426
		mu 0 4 172 173 174 175
		f 4 447 425 374 -425
		mu 0 4 176 177 178 179
		f 4 446 424 375 -424
		mu 0 4 180 181 182 183
		f 4 445 423 376 -423
		mu 0 4 184 185 186 187
		f 4 444 422 377 -422
		mu 0 4 188 189 190 191
		f 4 378 366 443 421
		mu 0 4 192 193 194 195
		f 4 379 367 442 -367
		mu 0 4 196 197 198 199
		f 4 380 368 441 -368
		mu 0 4 200 201 202 203
		f 4 440 -369 381 369
		mu 0 4 204 205 206 207
		f 4 439 -370 382 370
		mu 0 4 208 209 210 211
		f 4 139 140 141 142
		mu 0 4 212 213 214 215
		f 4 -140 143 144 145
		mu 0 4 216 217 218 219
		f 4 -143 146 147 148
		mu 0 4 220 221 222 223
		f 4 -144 -149 149 150
		mu 0 4 224 225 226 227
		f 4 -148 151 -102 152
		mu 0 4 228 229 230 231
		f 4 -150 -153 -99 153
		mu 0 4 232 233 234 235
		f 4 -110 -106 -152 154
		mu 0 4 236 237 238 239
		f 4 -108 155 -154 -104
		mu 0 4 240 241 242 243
		f 4 -155 -147 156 -113
		mu 0 4 244 245 246 247
		f 4 -156 -111 157 -151
		mu 0 4 248 249 250 251
		f 4 158 -117 -157 -142
		mu 0 4 252 253 254 255
		f 4 159 -145 -158 -116
		mu 0 4 256 257 258 259
		f 4 372 -427 449 427
		mu 0 4 260 261 262 263
		f 4 438 -371 383 371
		mu 0 4 264 265 266 267
		f 4 -159 162 163 164
		mu 0 4 268 269 270 271
		f 4 -160 165 166 167
		mu 0 4 272 273 274 275
		f 4 -146 -168 168 169
		mu 0 4 276 277 278 279
		f 4 -141 -170 170 -163
		mu 0 4 280 281 282 283
		f 4 171 172 190 188
		mu 0 4 284 285 286 287
		f 4 174 175 189 -173
		mu 0 4 288 289 290 291
		f 4 212 208 177 178
		mu 0 4 292 293 294 295
		f 4 -209 213 209 180
		mu 0 4 296 297 298 299
		f 4 181 182 183 -178
		mu 0 4 300 301 302 303
		f 4 -182 -181 184 185
		mu 0 4 304 305 306 307
		f 4 -190 186 -171 -188
		mu 0 4 291 290 308 309
		f 4 -191 187 -169 173
		mu 0 4 287 286 310 311
		f 4 191 -164 -187 192
		mu 0 4 312 313 314 315
		f 4 193 194 -174 -167
		mu 0 4 316 317 318 319
		f 4 195 -193 -176 196
		mu 0 4 320 321 322 323
		f 4 197 198 -189 -195
		mu 0 4 324 325 326 327
		f 4 211 -179 199 200
		mu 0 4 328 329 330 331
		f 4 -210 214 210 202
		mu 0 4 332 333 334 335
		f 4 -183 203 6 204
		mu 0 4 336 337 338 339
		f 4 -186 205 5 -204
		mu 0 4 340 341 342 343
		f 4 -184 -205 -5 -200
		mu 0 4 344 345 346 347
		f 4 -185 -203 1 -206
		mu 0 4 348 349 350 351
		f 4 -208 -212 206 -197
		mu 0 4 352 329 328 353
		f 4 176 -213 207 -175
		mu 0 4 354 293 292 355
		f 4 -214 -177 -172 179
		mu 0 4 298 297 356 357
		f 4 -215 -180 -199 201
		mu 0 4 334 333 358 359
		f 4 454 432 215 216
		mu 0 4 360 361 362 363
		f 4 217 433 411 219
		mu 0 4 364 365 366 367
		f 4 220 -216 221 -96
		mu 0 4 368 369 370 371
		f 4 222 -94 223 -220
		mu 0 4 372 373 374 375
		f 4 224 -91 225 226
		mu 0 4 376 377 378 379
		f 4 -225 227 228 -92
		mu 0 4 380 381 382 383
		f 4 229 230 231 -227
		mu 0 4 384 385 386 387
		f 4 232 -228 -232 233
		mu 0 4 388 389 390 391
		f 4 234 235 -226 -97
		mu 0 4 392 393 394 395
		f 4 236 -95 -229 237
		mu 0 4 396 397 398 399
		f 4 238 239 -230 -236
		mu 0 4 400 401 402 403
		f 4 240 -238 -233 241
		mu 0 4 404 405 406 407
		f 4 242 -235 -222 243
		mu 0 4 408 409 410 411
		f 4 244 245 -224 -237
		mu 0 4 412 413 414 415
		f 4 246 247 -239 -243
		mu 0 4 416 417 418 419
		f 4 248 -245 -241 249
		mu 0 4 420 421 422 423
		f 4 250 251 252 253
		mu 0 4 424 425 426 427
		f 4 254 255 256 257
		mu 0 4 428 429 430 431
		f 4 258 -251 259 260
		mu 0 4 432 433 434 435
		f 4 261 262 263 -255
		mu 0 4 436 437 438 439
		f 4 264 265 266 -253
		mu 0 4 440 441 442 443
		f 4 267 -257 268 269
		mu 0 4 444 445 446 447
		f 4 270 271 272 -254
		mu 0 4 448 449 450 451
		f 4 273 -256 274 275
		mu 0 4 452 453 454 455
		f 4 276 277 278 -272
		mu 0 4 456 457 458 459
		f 4 279 -276 280 281
		mu 0 4 460 461 462 463
		f 4 -273 282 283 -260
		mu 0 4 464 465 466 467
		f 4 -275 -264 284 285
		mu 0 4 468 469 470 471
		f 4 -279 286 287 -283
		mu 0 4 472 473 474 475
		f 4 -281 -286 288 289
		mu 0 4 476 477 478 479
		f 4 -271 -267 290 291
		mu 0 4 480 481 482 483
		f 4 -274 292 293 -269
		mu 0 4 484 485 486 487
		f 4 -277 -292 294 295
		mu 0 4 488 489 490 491
		f 4 -280 296 297 -293
		mu 0 4 492 493 494 495
		f 4 -278 298 299 300
		mu 0 4 496 497 498 499
		f 4 -282 301 302 303
		mu 0 4 500 501 502 503
		f 4 -221 -85 304 305
		mu 0 4 504 505 506 507
		f 4 -223 306 307 -88
		mu 0 4 508 509 510 511
		f 4 453 -217 308 309
		mu 0 4 512 513 514 515
		f 4 -412 434 412 311
		mu 0 4 516 517 518 519
		f 4 312 -309 313 314
		mu 0 4 520 521 522 523
		f 4 315 316 317 -312
		mu 0 4 524 525 526 527
		f 4 -261 318 -266 -315
		mu 0 4 528 529 530 531
		f 4 -263 -317 -270 319
		mu 0 4 532 533 534 535
		f 4 -291 -319 -284 320
		mu 0 4 536 537 538 539
		f 4 -294 321 -285 -320
		mu 0 4 540 541 542 543
		f 4 -295 -321 -288 322
		mu 0 4 544 545 546 547
		f 4 -298 323 -289 -322
		mu 0 4 548 549 550 551
		f 4 -299 -296 324 325
		mu 0 4 552 553 554 555
		f 4 -304 326 327 -297
		mu 0 4 556 557 558 559
		f 4 -301 328 329 -287
		mu 0 4 560 561 562 563
		f 4 -302 -290 330 331
		mu 0 4 564 565 566 567
		f 4 -306 332 -259 -314
		mu 0 4 568 569 570 571
		f 4 -307 -318 -262 333
		mu 0 4 572 573 574 575
		f 4 334 335 -252 -333
		mu 0 4 576 577 578 579
		f 4 336 -334 -258 337
		mu 0 4 580 581 582 583
		f 4 -336 338 -313 -265
		mu 0 4 584 585 586 587
		f 4 -338 -268 -316 339
		mu 0 4 588 589 590 591
		f 4 -342 -346 340 -60
		mu 0 4 592 97 96 593
		f 4 -343 -347 341 -56
		mu 0 4 594 89 88 595
		f 4 -348 342 -55 71
		mu 0 4 86 85 596 597
		f 4 -349 -72 -59 75
		mu 0 4 94 93 598 599
		f 4 -305 -345 349 -335
		mu 0 4 600 601 602 603
		f 4 -308 -337 350 -79
		mu 0 4 604 605 606 607
		f 4 351 352 452 -310
		mu 0 4 608 609 610 611
		f 4 353 -413 435 413
		mu 0 4 612 613 614 615
		f 4 355 356 451 -353
		mu 0 4 616 617 618 619
		f 4 357 -414 436 414
		mu 0 4 620 621 622 623
		f 4 399 -361 -373 359
		mu 0 4 624 625 261 260
		f 4 400 -362 -374 360
		mu 0 4 626 627 173 172
		f 4 -375 361 401 -363
		mu 0 4 179 178 628 629
		f 4 -376 362 402 -364
		mu 0 4 183 182 630 631
		f 4 -377 363 403 -365
		mu 0 4 187 186 632 633
		f 4 -378 364 404 -366
		mu 0 4 191 190 634 635
		f 4 405 393 -379 365
		mu 0 4 636 637 193 192
		f 4 406 394 -380 -394
		mu 0 4 638 639 197 196
		f 4 407 395 -381 -395
		mu 0 4 640 641 201 200
		f 4 -382 -396 408 396
		mu 0 4 207 206 642 643
		f 4 -383 -397 409 397
		mu 0 4 211 210 644 645
		f 4 -384 -398 410 398
		mu 0 4 267 266 646 647
		f 4 384 -428 450 -357
		mu 0 4 648 649 650 651
		f 4 385 -415 437 -372
		mu 0 4 652 653 654 655
		f 4 -388 -400 386 -18
		mu 0 4 656 625 624 657
		f 4 -389 -401 387 -24
		mu 0 4 658 627 626 659
		f 4 -402 388 -29 -390
		mu 0 4 629 628 660 661
		f 4 -403 389 -34 -391
		mu 0 4 631 630 662 663
		f 4 -404 390 -48 -392
		mu 0 4 633 632 664 665
		f 4 -405 391 -33 -393
		mu 0 4 635 634 666 667
		f 4 97 -406 392 -39
		mu 0 4 668 637 636 669
		f 4 102 -407 -98 -31
		mu 0 4 670 639 638 671
		f 4 106 -408 -103 -30
		mu 0 4 672 641 640 673
		f 4 -409 -107 -27 111
		mu 0 4 643 642 674 675
		f 4 -410 -112 -21 114
		mu 0 4 645 644 676 677
		f 4 -411 -115 -62 161
		mu 0 4 647 646 678 679
		f 4 -434 -8 -211 218
		mu 0 4 366 365 680 681
		f 4 -435 -219 -202 310
		mu 0 4 518 517 682 683
		f 4 -436 -311 -198 354
		mu 0 4 615 614 684 685
		f 4 -437 -355 -194 358
		mu 0 4 623 622 686 687
		f 4 -438 -359 -166 -416
		mu 0 4 655 654 688 689
		f 4 -417 -439 415 -129
		mu 0 4 690 265 264 691
		f 4 -139 -418 -440 416
		mu 0 4 166 165 209 208
		f 4 -138 -419 -441 417
		mu 0 4 159 158 205 204
		f 4 -442 418 -137 -420
		mu 0 4 203 202 149 148
		f 4 -443 419 -136 -421
		mu 0 4 199 198 141 140
		f 4 -444 420 -135 123
		mu 0 4 195 194 133 132
		f 4 -134 122 -445 -124
		mu 0 4 138 137 189 188
		f 4 -133 121 -446 -123
		mu 0 4 146 145 185 184
		f 4 -132 120 -447 -122
		mu 0 4 154 153 181 180
		f 4 -131 119 -448 -121
		mu 0 4 163 162 177 176
		f 4 -449 -120 -130 118
		mu 0 4 175 174 169 168
		f 4 -450 -119 -118 160
		mu 0 4 263 262 692 693
		f 4 -451 -161 -165 -429
		mu 0 4 651 650 694 695
		f 4 -452 428 -192 -430
		mu 0 4 619 618 696 697
		f 4 -453 429 -196 -431
		mu 0 4 611 610 698 699
		f 4 -432 -454 430 -207
		mu 0 4 700 513 512 701
		f 4 10 -455 431 -201
		mu 0 4 702 361 360 703
		f 4 458 468 -350 -76
		mu 0 4 704 705 706 707
		f 4 743 745 -748 -749
		mu 0 4 902 903 904 905
		f 4 -728 729 731 -733
		mu 0 4 894 895 896 897
		f 4 -387 466 -457 -66
		mu 0 4 716 717 718 719
		f 4 -712 713 -716 -717
		mu 0 4 886 887 888 889
		f 4 456 467 -459 -58
		mu 0 4 719 718 705 704
		f 4 -14 455 -462 -162
		mu 0 4 724 725 726 727
		f 4 -463 -456 -61 457
		mu 0 4 728 726 725 729
		f 4 -464 -458 -341 -351
		mu 0 4 730 728 729 731
		f 4 -752 -754 -756 -757
		mu 0 4 906 907 908 909
		f 4 -736 737 -740 -741
		mu 0 4 898 899 900 901
		f 4 -720 721 -724 -725
		mu 0 4 890 891 892 893
		f 4 -325 -323 -330 469
		mu 0 4 744 745 746 747
		f 4 -331 -324 -328 470
		mu 0 4 748 749 750 751
		f 4 461 472 529 -472
		mu 0 4 727 726 752 753
		f 4 459 474 534 -473
		mu 0 4 726 754 755 752
		f 4 -386 476 533 -475
		mu 0 4 754 756 757 755
		f 4 -399 471 531 -477
		mu 0 4 756 727 753 757
		f 4 -460 479 579 -481
		mu 0 4 754 726 758 759
		f 4 462 482 577 -480
		mu 0 4 726 728 760 758
		f 4 460 484 582 -483
		mu 0 4 728 761 762 760
		f 4 -358 480 581 -485
		mu 0 4 761 754 759 762
		f 4 -461 487 627 -489
		mu 0 4 761 728 763 764
		f 4 463 490 625 -488
		mu 0 4 728 730 765 763
		f 4 -340 492 630 -491
		mu 0 4 730 766 767 765
		f 4 -354 488 629 -493
		mu 0 4 766 761 764 767
		f 4 -467 495 526 -497
		mu 0 4 718 717 768 769
		f 4 -360 498 525 -496
		mu 0 4 717 770 771 768
		f 4 -385 500 523 -499
		mu 0 4 770 772 773 771
		f 4 -465 496 521 -501
		mu 0 4 772 718 769 773
		f 4 -468 503 574 -505
		mu 0 4 705 718 774 775
		f 4 464 506 573 -504
		mu 0 4 718 772 776 774
		f 4 -356 508 571 -507
		mu 0 4 772 777 778 776
		f 4 -466 504 569 -509
		mu 0 4 777 705 775 778
		f 4 -469 511 622 -513
		mu 0 4 706 705 779 780
		f 4 465 514 621 -512
		mu 0 4 705 777 781 779
		f 4 -352 516 619 -515
		mu 0 4 777 782 783 781
		f 4 -339 512 617 -517
		mu 0 4 782 706 780 783
		f 4 -522 519 537 -521
		mu 0 4 773 769 784 785
		f 4 -524 520 539 -523
		mu 0 4 771 773 785 786
		f 4 -526 522 541 -525
		mu 0 4 768 771 786 787
		f 4 -527 524 542 -520
		mu 0 4 769 768 787 784
		f 4 -530 527 545 -529
		mu 0 4 753 752 788 789
		f 4 -532 528 547 -531
		mu 0 4 757 753 789 790
		f 4 -534 530 549 -533
		mu 0 4 755 757 790 791
		f 4 -535 532 550 -528
		mu 0 4 752 755 791 788
		f 4 -538 535 553 -537
		mu 0 4 785 784 792 793
		f 4 -540 536 555 -539
		mu 0 4 786 785 793 794
		f 4 -542 538 557 -541
		mu 0 4 787 786 794 795
		f 4 -543 540 558 -536
		mu 0 4 784 787 795 792
		f 4 -546 543 561 -545
		mu 0 4 789 788 796 797
		f 4 -548 544 563 -547
		mu 0 4 790 789 797 798
		f 4 -550 546 565 -549
		mu 0 4 791 790 798 799
		f 4 -551 548 566 -544
		mu 0 4 788 791 799 796
		f 4 -554 551 502 -553
		mu 0 4 793 792 732 735
		f 4 -556 552 501 -555
		mu 0 4 794 793 735 734
		f 4 -558 554 499 -557
		mu 0 4 795 794 734 733
		f 4 -559 556 497 -552
		mu 0 4 792 795 733 732
		f 4 -562 559 -474 -561
		mu 0 4 797 796 709 708
		f 4 -564 560 478 -563
		mu 0 4 798 797 708 711
		f 4 -566 562 477 -565
		mu 0 4 799 798 711 710
		f 4 -567 564 -476 -560
		mu 0 4 796 799 710 709
		f 4 -570 567 585 -569
		mu 0 4 778 775 800 801
		f 4 -572 568 587 -571
		mu 0 4 776 778 801 802
		f 4 -574 570 589 -573
		mu 0 4 774 776 802 803
		f 4 -575 572 590 -568
		mu 0 4 775 774 803 800
		f 4 -578 575 593 -577
		mu 0 4 758 760 804 805
		f 4 -580 576 595 -579
		mu 0 4 759 758 805 806
		f 4 -582 578 597 -581
		mu 0 4 762 759 806 807
		f 4 -583 580 598 -576
		mu 0 4 760 762 807 804
		f 4 -586 583 601 -585
		mu 0 4 801 800 808 809
		f 4 -588 584 603 -587
		mu 0 4 802 801 809 810
		f 4 -590 586 605 -589
		mu 0 4 803 802 810 811
		f 4 -591 588 606 -584
		mu 0 4 800 803 811 808
		f 4 -594 591 609 -593
		mu 0 4 805 804 812 813
		f 4 -596 592 611 -595
		mu 0 4 806 805 813 814
		f 4 -598 594 613 -597
		mu 0 4 807 806 814 815
		f 4 -599 596 614 -592
		mu 0 4 804 807 815 812
		f 4 -602 599 510 -601
		mu 0 4 809 808 736 739
		f 4 -604 600 509 -603
		mu 0 4 810 809 739 738
		f 4 -606 602 -508 -605
		mu 0 4 811 810 738 737
		f 4 -607 604 505 -600
		mu 0 4 808 811 737 736
		f 4 -610 607 -484 -609
		mu 0 4 813 812 714 713
		f 4 -612 608 481 -611
		mu 0 4 814 813 713 712
		f 4 -614 610 486 -613
		mu 0 4 815 814 712 715
		f 4 -615 612 -486 -608
		mu 0 4 812 815 715 714
		f 4 -618 615 633 -617
		mu 0 4 783 780 816 817
		f 4 -620 616 635 -619
		mu 0 4 781 783 817 818
		f 4 -622 618 637 -621
		mu 0 4 779 781 818 819
		f 4 -623 620 638 -616
		mu 0 4 780 779 819 816
		f 4 -626 623 641 -625
		mu 0 4 763 765 820 821
		f 4 -628 624 643 -627
		mu 0 4 764 763 821 822
		f 4 -630 626 645 -629
		mu 0 4 767 764 822 823
		f 4 -631 628 646 -624
		mu 0 4 765 767 823 820
		f 4 -634 631 649 -633
		mu 0 4 817 816 824 825
		f 4 -636 632 651 -635
		mu 0 4 818 817 825 826
		f 4 -638 634 653 -637
		mu 0 4 819 818 826 827
		f 4 -639 636 654 -632
		mu 0 4 816 819 827 824
		f 4 -642 639 657 -641
		mu 0 4 821 820 828 829
		f 4 -644 640 659 -643
		mu 0 4 822 821 829 830
		f 4 -646 642 661 -645
		mu 0 4 823 822 830 831
		f 4 -647 644 662 -640
		mu 0 4 820 823 831 828
		f 4 -650 647 665 -649
		mu 0 4 825 824 832 833
		f 4 -652 648 667 -651
		mu 0 4 826 825 833 834
		f 4 -654 650 669 -653
		mu 0 4 827 826 834 835
		f 4 -655 652 670 -648
		mu 0 4 824 827 835 832
		f 4 -658 655 673 -657
		mu 0 4 829 828 836 837
		f 4 -660 656 675 -659
		mu 0 4 830 829 837 838
		f 4 -662 658 677 -661
		mu 0 4 831 830 838 839
		f 4 -663 660 678 -656
		mu 0 4 828 831 839 836
		f 4 -666 663 518 -665
		mu 0 4 833 832 740 743
		f 4 -668 664 517 -667
		mu 0 4 834 833 743 742
		f 4 -670 666 -516 -669
		mu 0 4 835 834 742 741
		f 4 -671 668 513 -664
		mu 0 4 832 835 741 740
		f 4 -674 671 -492 -673
		mu 0 4 837 836 722 721
		f 4 -676 672 489 -675
		mu 0 4 838 837 721 720
		f 4 -678 674 494 -677
		mu 0 4 839 838 720 723
		f 4 -679 676 493 -672
		mu 0 4 836 839 723 722
		f 5 682 -10 -218 679 680
		mu 0 5 846 842 843 844 845
		f 4 -433 -12 -683 681
		mu 0 4 840 841 842 846
		f 5 689 -681 -680 -246 683
		mu 0 5 859 849 850 851 852
		f 4 688 -684 -249 684
		mu 0 4 857 860 855 856
		f 5 -247 -688 -689 685 686
		mu 0 5 853 854 860 857 858
		f 4 -244 -682 -690 687
		mu 0 4 847 848 849 859
		f 3 690 692 -231
		mu 0 3 861 865 869
		f 5 -240 -248 -687 -686 -691
		mu 0 5 861 862 863 864 865
		f 4 -692 -685 -250 -242
		mu 0 4 868 865 866 867
		f 3 -693 691 -234
		mu 0 3 869 865 868
		f 4 -696 -698 -700 -701
		mu 0 4 878 879 880 881
		f 4 -704 -706 -708 -709
		mu 0 4 882 883 884 885
		f 4 -300 693 695 -695
		mu 0 4 870 871 879 878
		f 4 -326 696 697 -694
		mu 0 4 871 872 880 879
		f 4 -470 698 699 -697
		mu 0 4 872 873 881 880
		f 4 -329 694 700 -699
		mu 0 4 873 870 878 881
		f 4 -303 701 703 -703
		mu 0 4 874 875 883 882
		f 4 -332 704 705 -702
		mu 0 4 875 876 884 883
		f 4 -471 706 707 -705
		mu 0 4 876 877 885 884
		f 4 -327 702 708 -707
		mu 0 4 877 874 882 885
		f 4 -490 709 711 -711
		mu 0 4 720 721 887 886
		f 4 491 712 -714 -710
		mu 0 4 721 722 888 887
		f 4 -494 714 715 -713
		mu 0 4 722 723 889 888
		f 4 -495 710 716 -715
		mu 0 4 723 720 886 889
		f 4 -514 717 719 -719
		mu 0 4 740 741 891 890
		f 4 515 720 -722 -718
		mu 0 4 741 742 892 891
		f 4 -518 722 723 -721
		mu 0 4 742 743 893 892
		f 4 -519 718 724 -723
		mu 0 4 743 740 890 893
		f 4 -482 725 727 -727
		mu 0 4 712 713 895 894
		f 4 483 728 -730 -726
		mu 0 4 713 714 896 895
		f 4 485 730 -732 -729
		mu 0 4 714 715 897 896
		f 4 -487 726 732 -731
		mu 0 4 715 712 894 897
		f 4 -506 733 735 -735
		mu 0 4 736 737 899 898
		f 4 507 736 -738 -734
		mu 0 4 737 738 900 899
		f 4 -510 738 739 -737
		mu 0 4 738 739 901 900
		f 4 -511 734 740 -739
		mu 0 4 739 736 898 901
		f 4 473 742 -744 -742
		mu 0 4 708 709 903 902
		f 4 475 744 -746 -743
		mu 0 4 709 710 904 903
		f 4 -478 746 747 -745
		mu 0 4 710 711 905 904
		f 4 -479 741 748 -747
		mu 0 4 711 708 902 905
		f 4 -498 749 751 -751
		mu 0 4 732 733 907 906
		f 4 -500 752 753 -750
		mu 0 4 733 734 908 907
		f 4 -502 754 755 -753
		mu 0 4 734 735 909 908
		f 4 -503 750 756 -755
		mu 0 4 735 732 906 909;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode materialInfo -n "anansi_materialInfo";
	rename -uid "F6C30E1C-CA40-A85B-4628-5EA1CA895D49";
createNode shadingEngine -n "anansi_blinnSG";
	rename -uid "E82A5F73-044E-5F85-FB70-0FB1C3D36D8B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "anansi_blinn";
	rename -uid "DDA5FD1F-8F4E-6188-4913-7985E7AD337E";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7E45C8C5-4690-AD3B-4A88-BDB2C16C2FE4";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C8F430AB-47F5-4585-4617-A2BC7537D335";
createNode displayLayer -n "defaultLayer";
	rename -uid "66C3BE32-D646-81D1-436C-619BBC49549E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "00B15DB0-4CDC-C9E0-3C0A-F69573FA64EF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27F9178E-B043-286E-AEFA-539376FDB1D2";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4974EF59-4E05-9A77-3305-2B93F31BAB23";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "43F749A0-481F-448F-275D-46A90529B937";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8B719049-CC41-DDCB-D225-3DB6F6085B6A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1308\n                -height 672\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1308\n            -height 672\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1308\\n    -height 672\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1308\\n    -height 672\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "533C25E0-2749-9227-896D-B9BF412FC667";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "5C1FE322-614E-6253-233C-78B260995F71";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "2EB8DBA0-0C4D-D9C6-91F3-6A8F04A2B90D";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "6B037C47-EA4B-6DBA-370D-22A86174F7CF";
	setAttr ".miSamplesMax" 50;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "190DC1E6-264C-5F59-E509-A7BBFAD91C91";
createNode groupId -n "groupId20";
	rename -uid "EB554D81-A64C-34D7-9358-99AE82DA3E22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "0AD8021A-344A-4024-B86A-FDB1F81F5C59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "EBB81D82-7B4E-085A-E709-DDA35B003625";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "DE58FC02-9048-A333-924E-31A73CDB6FFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "0B33FDF9-5C4D-0811-D370-0CAF26AC03EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "68A117DD-C543-4D2E-8B97-DF844513A506";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "06142FD7-8845-6BB0-D761-3192EA58C464";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "12DEC201-9545-23BB-7D93-89BC896D2ECC";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "7FBCDBAD-CC45-FE41-5DCF-A4A14D5DD636";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1]" "e[3:4]" "e[181]" "e[183:184]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.41558292508125305;
	setAttr ".re" 183;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "groupId28";
	rename -uid "EFA85343-CF4B-5CA9-4F21-C5B03EB54E63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C1B1ED6E-C444-0CC0-5AB4-6FA1FFC17F94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:377]";
createNode groupId -n "groupId53";
	rename -uid "782FA2A2-A043-EE3B-7012-EBB6A32F2D75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "251A78AB-4E4A-B275-4143-CDAC311F5C68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "9C302D81-084E-5565-8E5C-6C845CC591C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "269CF399-E142-2481-438C-7CA3D2339CCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "C2A78D09-6C40-9549-D973-CF8BE02E09EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "342ADF2A-DD4F-1670-9364-AE9A6B24F978";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "A6DFE0FC-EF48-2927-6343-79860CF1B740";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "E853F1EC-4146-26B2-8600-CC9CE41EEF3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "25154312-2046-CBD8-97B7-CC9435FFA778";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "56952F07-6A44-279F-16FB-14B680AA29A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "9A84A7BC-8A47-72E8-4DAC-7CB042887F7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "E0316072-A84C-09AC-6560-DD83A1C80426";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "C2A3EF3A-AC4D-5F85-4708-7A863F434FC9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[693:694]" "e[696]" "e[698]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.55143415927886963;
	setAttr ".dr" no;
	setAttr ".re" 694;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "BFC6C4B4-3449-7161-1282-3DA34E6C7B9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[701:702]" "e[704]" "e[706]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.55143415927886963;
	setAttr ".dr" no;
	setAttr ".re" 701;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "A82B6C2A-7344-71C5-6CD8-FD8FD7DB4CEF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[717:718]" "e[720]" "e[722]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.6022990345954895;
	setAttr ".dr" no;
	setAttr ".re" 718;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "6A89E715-C048-7416-5EF7-88B00EB9D92C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[709:710]" "e[712]" "e[714]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.6022990345954895;
	setAttr ".dr" no;
	setAttr ".re" 712;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "2E9B6B25-484B-F451-1E18-2BBBD2D0BAC9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[733:734]" "e[736]" "e[738]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58820492029190063;
	setAttr ".dr" no;
	setAttr ".re" 738;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "D8F599A3-AD48-CF76-DA15-2CA3A48ADF65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[725:726]" "e[728]" "e[730]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58820492029190063;
	setAttr ".dr" no;
	setAttr ".re" 730;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "866031FF-7A4F-2B70-8D64-C6956AD15C84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[749:750]" "e[752]" "e[754]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.60851806402206421;
	setAttr ".dr" no;
	setAttr ".re" 750;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "1173E312-1041-DE57-9C03-E4AC643A5C18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[741:742]" "e[744]" "e[746]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.60851806402206421;
	setAttr ".dr" no;
	setAttr ".re" 742;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "2679DB0F-3341-BBDA-45CE-6A8020A34B22";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5184268291793046 0 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".pa" 1;
	setAttr ".dar" 1.3333332538604736;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId59.id" "spider_l_bot_toothShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_bot_toothShape1.iog.og[0].gco";
connectAttr "groupId60.id" "spider_l_bot_toothShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_bot_toothShape2.iog.og[0].gco";
connectAttr "groupId61.id" "spider_l_bot_toothShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_bot_toothShape3.iog.og[0].gco";
connectAttr "groupId62.id" "spider_l_top_toothShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_top_toothShape1.iog.og[0].gco";
connectAttr "groupId63.id" "spider_l_top_toothShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_top_toothShape2.iog.og[0].gco";
connectAttr "groupId64.id" "spider_l_top_toothShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_top_toothShape3.iog.og[0].gco";
connectAttr "groupId56.id" "spider_r_top_toothShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_top_toothShape8.iog.og[0].gco";
connectAttr "groupId57.id" "spider_r_top_toothShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_top_toothShape6.iog.og[0].gco";
connectAttr "groupId58.id" "spider_r_top_toothShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_top_toothShape4.iog.og[0].gco";
connectAttr "groupId55.id" "spider_r_bot_toothShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_bot_toothShape8.iog.og[0].gco";
connectAttr "groupId54.id" "spider_r_bot_toothShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_bot_toothShape6.iog.og[0].gco";
connectAttr "groupId53.id" "spider_r_bot_toothShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_bot_toothShape4.iog.og[0].gco";
connectAttr "groupId25.id" "spider_l_eye1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_eye1Shape.iog.og[0].gco";
connectAttr "groupId27.id" "spider_l_eyeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_eyeShape4.iog.og[0].gco";
connectAttr "groupId22.id" "spider_l_eye2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_eye2Shape.iog.og[0].gco";
connectAttr "groupId20.id" "spider_l_eyeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_l_eyeShape3.iog.og[0].gco";
connectAttr "groupId26.id" "spider_r_eyeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_eyeShape1.iog.og[0].gco";
connectAttr "groupId23.id" "spider_r_eyeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_eyeShape2.iog.og[0].gco";
connectAttr "groupId24.id" "spider_r_eyeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_eyeShape4.iog.og[0].gco";
connectAttr "groupId21.id" "spider_r_eyeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_r_eyeShape3.iog.og[0].gco";
connectAttr "transformGeometry1.og" "spider_bodyShape.i";
connectAttr "groupId28.id" "spider_bodyShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "spider_bodyShape.iog.og[0].gco";
connectAttr "anansi_blinnSG.msg" "anansi_materialInfo.sg";
connectAttr "anansi_blinn.msg" "anansi_materialInfo.m";
connectAttr "anansi_blinn.oc" "anansi_blinnSG.ss";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "anansi_blinnSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "anansi_blinnSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "groupParts1.og" "polySplitRing1.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId28.id" "groupParts1.gi";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "spider_bodyShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "transformGeometry1.ig";
connectAttr "anansi_blinnSG.pa" ":renderPartition.st" -na;
connectAttr "anansi_blinn.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "spider_l_eyeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_eyeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_eye2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_eyeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_eyeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_eye1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_eyeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_eyeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_bodyShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_bot_toothShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_bot_toothShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_bot_toothShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_top_toothShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_top_toothShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_r_top_toothShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_bot_toothShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_bot_toothShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_bot_toothShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_top_toothShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_top_toothShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "spider_l_top_toothShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
// End of spider_model.ma
