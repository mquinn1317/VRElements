//Maya ASCII 2017 scene
//Name: troll_attack_animation.ma
//Last modified: Thu, Jun 29, 2017 09:54:00 PM
//Codeset: 1252
file -rdi 1 -ns "troll_rig_complete" -rfn "troll_rig_completeRN" -op "v=0;" 
		-typ "mayaAscii" "/Users/oliverjek/Desktop/troll_rig_complete.ma";
file -r -ns "troll_rig_complete" -dr 1 -rfn "troll_rig_completeRN" -op "v=0;" -typ
		 "mayaAscii" "/Users/oliverjek/Desktop/troll_rig_complete.ma";
requires maya "2017";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "268000.13910 - 3.14.3.31 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "BF68F4E4-5843-6F2B-8A30-78A898514D6C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -22.43983011578398 17.287875866577593 38.373309687423266 ;
	setAttr ".r" -type "double3" -16.538352729598159 -33.800000000000423 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D976BE55-EF4F-E129-551F-31AC41C55965";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 44.82186966203119;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4B661A32-F842-E27C-1E53-118A20C19A55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ED7BDF01-3441-29C0-FF5C-AEA8B7BD2D06";
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
	rename -uid "3A53F0E3-CC4F-1CCE-5835-E5905C4CD9B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A29897C9-834E-E164-3022-3E83C4C3DCE8";
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
	rename -uid "81244E5C-5A4F-712C-9AC4-30B2129489C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F1156A9B-8C47-895A-3178-6796227FCF62";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "31B04C98-4CAF-6E27-662A-35A933CA1F7A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "0A3A6306-4B62-95D2-F5FC-FF9F68169C0C";
createNode displayLayer -n "defaultLayer";
	rename -uid "F65909BD-FE4B-1184-C30D-55AEB14BF2CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8F010870-4F3A-9EBD-AE7B-A9832F65629C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FBE57D0F-A241-41D2-B8E9-F58D4FC523AA";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D93054EA-4819-D983-50DC-22911602C0CA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "44E318BE-4FC6-C092-55E7-FBB7E81F27B0";
createNode reference -n "troll_rig_completeRN";
	rename -uid "3E66634A-D04A-788A-599F-B8B21B94FCC5";
	setAttr -s 457 ".phl";
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"troll_rig_completeRN"
		"troll_rig_completeRN" 10
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.translateX" 
		"troll_rig_completeRN.placeHolderList[325]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.translateY" 
		"troll_rig_completeRN.placeHolderList[326]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.translateZ" 
		"troll_rig_completeRN.placeHolderList[327]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.visibility" 
		"troll_rig_completeRN.placeHolderList[328]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.rotateX" 
		"troll_rig_completeRN.placeHolderList[329]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.rotateY" 
		"troll_rig_completeRN.placeHolderList[330]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.rotateZ" 
		"troll_rig_completeRN.placeHolderList[331]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.scaleX" 
		"troll_rig_completeRN.placeHolderList[332]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.scaleY" 
		"troll_rig_completeRN.placeHolderList[333]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:Frank_Reference.scaleZ" 
		"troll_rig_completeRN.placeHolderList[334]" ""
		"troll_rig_completeRN" 619
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl" 
		"rotate" " -type \"double3\" 0.44740137386272988 3.5620849075221637 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl" 
		"rotateY" " -av 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"rotate" " -type \"double3\" -0.19319483526969239 -2.3717588358505659 14.56874966069657"
		
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"rotate" " -type \"double3\" 0 -14.961777081401486 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"rotate" " -type \"double3\" -21.065895883127634 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"scale" " -type \"double3\" 1 0.99999999999999989 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"translate" " -type \"double3\" 0 -0.76079200247427003 0.035"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translate" " -type \"double3\" 11 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"translate" " -type \"double3\" 0 0 -3.2392221380271922"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translate" " -type \"double3\" 11 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"visibility" " -av 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"rotateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"rotateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"rotateZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"scaleX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"scaleY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl" 
		"scaleZ" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl" 
		"translate" " -type \"double3\" 0 0.773 0"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl" 
		"translateX" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl" 
		"translateY" " -av"
		2 "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl" 
		"translateZ" " -av"
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_Spine|troll_rig_complete:cavetroll_split:Frank_Spine1|troll_rig_complete:cavetroll_split:Frank_Spine2|troll_rig_complete:cavetroll_split:Frank_Spine3" 
		"translate" " -type \"double3\" 0 0.13231432094426276 0.0018905953759741356"
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_Spine|troll_rig_complete:cavetroll_split:Frank_Spine1|troll_rig_complete:cavetroll_split:Frank_Spine2|troll_rig_complete:cavetroll_split:Frank_Spine3" 
		"translateX" " -av"
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_Spine|troll_rig_complete:cavetroll_split:Frank_Spine1|troll_rig_complete:cavetroll_split:Frank_Spine2|troll_rig_complete:cavetroll_split:Frank_Spine3" 
		"translateY" " -av"
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_Spine|troll_rig_complete:cavetroll_split:Frank_Spine1|troll_rig_complete:cavetroll_split:Frank_Spine2|troll_rig_complete:cavetroll_split:Frank_Spine3" 
		"translateZ" " -av"
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_LeftUpLeg|troll_rig_complete:cavetroll_split:Frank_LeftLeg" 
		"translate" " -type \"double3\" -2.9577045568274229e-007 0.2625070987682469 -3.0947947704529355e-007"
		
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_LeftUpLeg|troll_rig_complete:cavetroll_split:Frank_LeftLeg" 
		"rotate" " -type \"double3\" 23.131064130215421 -4.9499866094168814 11.266418716368293"
		
		2 "|troll_rig_complete:Frank_skeleton_grp|troll_rig_complete:cavetroll_split:Frank_Hips|troll_rig_complete:cavetroll_split:Frank_LeftUpLeg|troll_rig_complete:cavetroll_split:Frank_LeftLeg" 
		"segmentScaleCompensate" " 1"
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[335]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[336]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[337]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[338]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[339]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[340]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[341]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[342]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[343]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[344]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[345]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[346]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[347]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[348]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[349]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[350]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[351]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[352]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[353]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[354]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[355]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[356]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[357]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[358]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[359]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[360]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[361]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[362]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[363]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[364]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[365]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[366]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[367]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[368]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[369]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[370]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[371]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[372]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[373]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[374]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[375]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[376]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[377]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[378]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[379]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[380]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[381]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[382]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[383]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[384]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[385]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[386]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[387]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[388]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[389]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[390]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[391]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[392]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[393]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[394]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[395]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[396]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[397]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[398]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[399]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[400]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:cavetroll_split:frank_neck_null|troll_rig_complete:cavetroll_split:frank_neck_cntrl|troll_rig_complete:cavetroll_split:frank_jaw_null|troll_rig_complete:cavetroll_split:frank_jaw_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[401]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[402]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[403]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[404]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[405]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[406]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[407]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[408]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[409]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[410]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[411]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[412]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[413]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[414]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[415]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[416]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[417]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[418]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[419]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[420]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[421]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[422]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[423]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[424]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[425]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[426]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[427]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[428]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[429]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[430]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[431]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[432]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[433]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[434]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[435]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[436]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[437]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[438]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[439]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[440]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[441]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[442]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[443]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[444]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[445]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[446]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[447]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[448]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[449]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[450]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[451]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[452]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[453]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[454]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[455]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[456]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[457]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[458]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[459]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[460]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[461]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[462]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[463]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[464]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[465]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[466]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[467]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[468]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[469]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[470]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[471]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[472]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[473]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[474]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[475]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[476]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[477]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[478]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[479]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[480]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_r_ring_null1|troll_rig_complete:cavetroll_split:frank_r_ring1_cntrl|troll_rig_complete:cavetroll_split:frank_r_ring3_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[481]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateX" 
		"troll_rig_completeRN.placeHolderList[482]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateY" 
		"troll_rig_completeRN.placeHolderList[483]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateZ" 
		"troll_rig_completeRN.placeHolderList[484]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateX" 
		"troll_rig_completeRN.placeHolderList[485]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateY" 
		"troll_rig_completeRN.placeHolderList[486]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateZ" 
		"troll_rig_completeRN.placeHolderList[487]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleX" 
		"troll_rig_completeRN.placeHolderList[488]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleY" 
		"troll_rig_completeRN.placeHolderList[489]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleZ" 
		"troll_rig_completeRN.placeHolderList[490]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control.visibility" 
		"troll_rig_completeRN.placeHolderList[491]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.translateX" 
		"troll_rig_completeRN.placeHolderList[492]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.translateY" 
		"troll_rig_completeRN.placeHolderList[493]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.translateZ" 
		"troll_rig_completeRN.placeHolderList[494]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.rotateX" 
		"troll_rig_completeRN.placeHolderList[495]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.rotateY" 
		"troll_rig_completeRN.placeHolderList[496]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.rotateZ" 
		"troll_rig_completeRN.placeHolderList[497]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.scaleX" 
		"troll_rig_completeRN.placeHolderList[498]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.scaleY" 
		"troll_rig_completeRN.placeHolderList[499]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.scaleZ" 
		"troll_rig_completeRN.placeHolderList[500]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2.visibility" 
		"troll_rig_completeRN.placeHolderList[501]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.translateX" 
		"troll_rig_completeRN.placeHolderList[502]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.translateY" 
		"troll_rig_completeRN.placeHolderList[503]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.translateZ" 
		"troll_rig_completeRN.placeHolderList[504]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.rotateX" 
		"troll_rig_completeRN.placeHolderList[505]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.rotateY" 
		"troll_rig_completeRN.placeHolderList[506]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.rotateZ" 
		"troll_rig_completeRN.placeHolderList[507]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.scaleX" 
		"troll_rig_completeRN.placeHolderList[508]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.scaleY" 
		"troll_rig_completeRN.placeHolderList[509]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.scaleZ" 
		"troll_rig_completeRN.placeHolderList[510]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:frank_r_pointer_1_null|troll_rig_complete:cavetroll_split:_control|troll_rig_complete:cavetroll_split:_control2|troll_rig_complete:cavetroll_split:_control3.visibility" 
		"troll_rig_completeRN.placeHolderList[511]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[512]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[513]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[514]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[515]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[516]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[517]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[518]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[519]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[520]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[521]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[522]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[523]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[524]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[525]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[526]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[527]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[528]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[529]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[530]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_r_shoulder2_null|troll_rig_complete:frank_r_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_r_shoulder_null1|troll_rig_complete:cavetroll_split:controllers_mirror_grp|troll_rig_complete:cavetroll_split:frank_r_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_r_elbow_null1|troll_rig_complete:cavetroll_split:frank_r_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_r_wrist_null1|troll_rig_complete:cavetroll_split:frank_r_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_thumb_null|troll_rig_complete:cavetroll_split:frank_l_thumb_1_cntrl|troll_rig_complete:cavetroll_split:frank_l_thumb2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[531]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[532]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[533]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[534]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[535]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[536]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[537]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[538]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[539]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[540]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[541]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[542]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[543]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[544]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[545]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[546]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[547]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[548]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[549]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[550]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[551]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[552]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[553]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[554]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[555]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[556]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[557]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[558]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[559]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[560]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[561]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[562]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[563]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[564]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[565]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[566]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[567]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[568]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[569]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[570]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[571]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[572]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[573]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[574]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[575]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[576]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[577]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[578]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[579]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[580]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[581]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[582]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[583]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[584]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[585]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[586]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[587]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[588]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[589]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[590]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_ring3_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[591]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[592]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[593]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[594]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[595]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[596]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[597]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[598]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[599]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[600]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[601]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[602]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[603]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[604]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[605]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[606]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[607]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[608]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[609]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[610]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:troll_l_ring_null|troll_rig_complete:cavetroll_split:frank_l_ring1_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[611]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateX" 
		"troll_rig_completeRN.placeHolderList[612]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateY" 
		"troll_rig_completeRN.placeHolderList[613]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.translateZ" 
		"troll_rig_completeRN.placeHolderList[614]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateX" 
		"troll_rig_completeRN.placeHolderList[615]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateY" 
		"troll_rig_completeRN.placeHolderList[616]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.rotateZ" 
		"troll_rig_completeRN.placeHolderList[617]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleX" 
		"troll_rig_completeRN.placeHolderList[618]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleY" 
		"troll_rig_completeRN.placeHolderList[619]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.scaleZ" 
		"troll_rig_completeRN.placeHolderList[620]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control.visibility" 
		"troll_rig_completeRN.placeHolderList[621]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.translateX" 
		"troll_rig_completeRN.placeHolderList[622]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.translateY" 
		"troll_rig_completeRN.placeHolderList[623]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.translateZ" 
		"troll_rig_completeRN.placeHolderList[624]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.rotateX" 
		"troll_rig_completeRN.placeHolderList[625]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.rotateY" 
		"troll_rig_completeRN.placeHolderList[626]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.rotateZ" 
		"troll_rig_completeRN.placeHolderList[627]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.scaleX" 
		"troll_rig_completeRN.placeHolderList[628]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.scaleY" 
		"troll_rig_completeRN.placeHolderList[629]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.scaleZ" 
		"troll_rig_completeRN.placeHolderList[630]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control2.visibility" 
		"troll_rig_completeRN.placeHolderList[631]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.translateX" 
		"troll_rig_completeRN.placeHolderList[632]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.translateY" 
		"troll_rig_completeRN.placeHolderList[633]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.translateZ" 
		"troll_rig_completeRN.placeHolderList[634]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.rotateX" 
		"troll_rig_completeRN.placeHolderList[635]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.rotateY" 
		"troll_rig_completeRN.placeHolderList[636]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.rotateZ" 
		"troll_rig_completeRN.placeHolderList[637]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.scaleX" 
		"troll_rig_completeRN.placeHolderList[638]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.scaleY" 
		"troll_rig_completeRN.placeHolderList[639]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.scaleZ" 
		"troll_rig_completeRN.placeHolderList[640]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pointer_1_null|troll_rig_complete:cavetroll_split:_control3.visibility" 
		"troll_rig_completeRN.placeHolderList[641]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[642]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[643]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[644]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[645]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[646]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[647]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[648]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[649]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[650]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb_1_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[651]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[652]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[653]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[654]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[655]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[656]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[657]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[658]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[659]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[660]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_torse_null|troll_rig_complete:cavetroll_split:frank_torso_cntrl|troll_rig_complete:cavetroll_split:frank_up_torso_null|troll_rig_complete:cavetroll_split:frank_up_torso_cntrl|troll_rig_complete:cavetroll_split:frank_back_null|troll_rig_complete:cavetroll_split:frank_back_cntrl|troll_rig_complete:cavetroll_split:frank_chest_null|troll_rig_complete:cavetroll_split:frank_chest_cntrl|troll_rig_complete:frank_l_shoulder2_null|troll_rig_complete:frank_l_shoulder2_cntrl|troll_rig_complete:cavetroll_split:frank_l_shoulder_null|troll_rig_complete:cavetroll_split:frank_l_shoulder_null2|troll_rig_complete:cavetroll_split:frank_l_shoulder_cntrl|troll_rig_complete:cavetroll_split:frank_l_elbow_null|troll_rig_complete:cavetroll_split:frank_l_elbow_cntrl|troll_rig_complete:frank_l_wrist2_null|troll_rig_complete:frank_l_wrist2_cntrl|troll_rig_complete:cavetroll_split:frank_l_wrist_null|troll_rig_complete:cavetroll_split:frank_l_wrist_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_thumb_null1|troll_rig_complete:cavetroll_split:frank_r_thumb2_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[661]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[662]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[663]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[664]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[665]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[666]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[667]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[668]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[669]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[670]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:frank_r_hip_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[671]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[672]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[673]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[674]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[675]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[676]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[677]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[678]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[679]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[680]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_r_hip_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_pntr_null1|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[681]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[682]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[683]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[684]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[685]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[686]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[687]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[688]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[689]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[690]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:frank_l_hip_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[691]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[692]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[693]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[694]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[695]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[696]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[697]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[698]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[699]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[700]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:frank_waist_null|troll_rig_complete:cavetroll_split:frank_waist_cntrl|troll_rig_complete:cavetroll_split:frank_l_hip_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_pntr_null|troll_rig_complete:cavetroll_split:frank_pntr_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[701]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[702]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[703]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[704]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[705]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[706]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[707]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[708]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[709]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[710]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[711]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[712]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[713]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[714]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[715]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[716]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[717]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[718]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[719]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[720]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_small_toe_null1|troll_rig_complete:cavetroll_split:frank_r_small_toe_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[721]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[722]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[723]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[724]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[725]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[726]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[727]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[728]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[729]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[730]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toe_null1|troll_rig_complete:cavetroll_split:frank_r_toe_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[731]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[732]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[733]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[734]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[735]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[736]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[737]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[738]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[739]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[740]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_null1|troll_rig_complete:cavetroll_split:cavetroll_split:frank_r_foot_cntrl|troll_rig_complete:cavetroll_split:frank_r_toethumb_null|troll_rig_complete:cavetroll_split:frank_r_toethumb_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[741]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[742]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[743]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[744]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[745]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[746]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[747]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[748]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[749]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[750]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[751]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[752]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[753]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[754]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[755]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[756]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[757]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[758]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[759]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[760]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_small_toe_null|troll_rig_complete:cavetroll_split:frank_l_small_toe_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[761]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[762]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[763]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[764]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[765]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[766]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[767]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[768]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[769]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[770]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:frank_l_toe_null|troll_rig_complete:cavetroll_split:frank_l_toe_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[771]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.translateX" 
		"troll_rig_completeRN.placeHolderList[772]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.translateY" 
		"troll_rig_completeRN.placeHolderList[773]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.translateZ" 
		"troll_rig_completeRN.placeHolderList[774]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.rotateX" 
		"troll_rig_completeRN.placeHolderList[775]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.rotateY" 
		"troll_rig_completeRN.placeHolderList[776]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.rotateZ" 
		"troll_rig_completeRN.placeHolderList[777]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.scaleX" 
		"troll_rig_completeRN.placeHolderList[778]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.scaleY" 
		"troll_rig_completeRN.placeHolderList[779]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.scaleZ" 
		"troll_rig_completeRN.placeHolderList[780]" ""
		5 4 "troll_rig_completeRN" "|troll_rig_complete:cavetroll_split:cavetroll_split:frank_master_null|troll_rig_complete:cavetroll_split:cavetroll_split:Frank_master_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_null|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_foot_cntrl|troll_rig_complete:cavetroll_split:cavetroll_split:frank_l_toethumb_null|troll_rig_complete:cavetroll_split:frank_l_toethumb_cntrl.visibility" 
		"troll_rig_completeRN.placeHolderList[781]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "931B7716-4F4C-F78F-EFD3-4EAEC7905B39";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "C407F9F1-8A4F-E454-7626-4587D84952BA";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "C6237158-2841-A605-1992-07B99A51C4BC";
	setAttr ".miSamplesMax" 50;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "8311C649-B740-36C7-C26C-B989768F875B";
createNode animCurveTA -n "Frank_master_cntrl_rotateX";
	rename -uid "AF8325E6-F247-CDBB-92F4-CF8CE3BE27B9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "Frank_master_cntrl_rotateY";
	rename -uid "AD8DF685-B249-3056-7DFB-E5B7B3D6A5F2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "Frank_master_cntrl_rotateZ";
	rename -uid "FE6E91A3-734D-230B-EE63-3EA4E1E80C4D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateX";
	rename -uid "D715B3C5-D447-14ED-C8EC-DE9FF82488E2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 22 0 37 0 60 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateY";
	rename -uid "05E007F4-9545-8F6E-2BA0-50B376D01DF5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 22 0 37 0 60 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateZ";
	rename -uid "AC185F6F-F54D-A001-0C44-BF8FD0DD7181";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 22 0 37 0 60 0;
createNode animCurveTA -n "frank_l_hip_cntrl_rotateX";
	rename -uid "B982ADA8-FE42-1148-D498-758067C1A59C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 22 0 60 0;
createNode animCurveTA -n "frank_l_hip_cntrl_rotateY";
	rename -uid "842B8044-9D49-E6B0-B2D4-95995D8BDDF4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 22 0 60 0;
createNode animCurveTA -n "frank_l_hip_cntrl_rotateZ";
	rename -uid "42ACEC5F-6346-738C-EC77-DF82E84D3E54";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 22 0 60 0;
createNode animCurveTA -n "frank_l_foot_cntrl_rotateX";
	rename -uid "77B33B83-6643-EF62-FF71-FA963AF29433";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_foot_cntrl_rotateY";
	rename -uid "551CF88E-4246-8F60-0FC9-80B6FD9E96FF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_foot_cntrl_rotateZ";
	rename -uid "564DC617-FE42-BEDF-B5EB-F2AC4CE8A564";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_toethumb_cntrl_rotateX";
	rename -uid "ED67EF75-044A-8829-3B66-988229204DAE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 1.2545489601690326e-014;
createNode animCurveTA -n "frank_l_toethumb_cntrl_rotateY";
	rename -uid "DDFEA385-8043-3A20-43AF-509A9EF384FB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -59.532899202484387 60 -59.532899202484387;
createNode animCurveTA -n "frank_l_toethumb_cntrl_rotateZ";
	rename -uid "548D9A41-D343-8644-BC70-C682BAF0660F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 86.350282208406227 60 86.350282208406227;
createNode animCurveTA -n "frank_l_small_toe_cntrl_rotateX";
	rename -uid "665CEFE4-8E44-806E-3E38-A1B8D889155E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_small_toe_cntrl_rotateY";
	rename -uid "83CF0885-044C-EA43-DBD2-C2AB14F198EC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_small_toe_cntrl_rotateZ";
	rename -uid "A1DDDAA0-5F4A-0A97-01DA-F69A0139A09A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_toe_cntrl_rotateX";
	rename -uid "7167C096-5D43-86AD-90DB-948A3B917844";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -11.120980093120416 60 -11.120980093120416;
createNode animCurveTA -n "frank_l_toe_cntrl_rotateY";
	rename -uid "38EA95D6-1D4A-C6D9-F867-198630482FFE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_toe_cntrl_rotateZ";
	rename -uid "F7117BD0-684A-36F3-F209-10A9462C0FC4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateX1";
	rename -uid "92055C2C-1440-BEC0-BB25-3AA9645EC0C3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 26 0 32 0 41 0 60 0;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateY1";
	rename -uid "FD2B2B48-FB49-1D0A-B8FA-80B52817B5FD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 26 0 32 0 41 0 60 0;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "frank_pntr_cntrl_rotateZ1";
	rename -uid "2B1D5A58-BA44-122E-03E2-E18A72B19409";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 26 0 32 0 41 0 60 0;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "frank_r_hip_cntrl_rotateX";
	rename -uid "B5AC03F8-A042-55A9-5C3B-E79D85A58543";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 30 0 34 0 38 0 60 0;
createNode animCurveTA -n "frank_r_hip_cntrl_rotateY";
	rename -uid "0966F3AD-C845-F274-AD9D-04829B8D8258";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 30 0 34 0 38 0 60 0;
createNode animCurveTA -n "frank_r_hip_cntrl_rotateZ";
	rename -uid "23278B32-6745-DCEB-81E4-CC9F03AB9E47";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 0 30 0 34 0 38 0 60 0;
createNode animCurveTA -n "frank_r_foot_cntrl_rotateX";
	rename -uid "5EA6B950-AD4E-A5A6-EDF7-5A967FB961DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 0 15 0 23 0 29 7.8370479941138562
		 41 0 47 0 60 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "frank_r_foot_cntrl_rotateY";
	rename -uid "202613D3-A548-DC13-2C2A-7F9E9D001CE9";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 26.901879733689483 29 8.1597078969487402
		 41 0 47 0 60 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 18;
	setAttr -s 7 ".kix[2:6]"  1 0.46666666865348816 0.40000000596046448 
		0.20000000298023224 0.43333333730697632;
	setAttr -s 7 ".kiy[2:6]"  0 -0.25282189249992371 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.96666663885116577 0.40000000596046448 
		0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 7 ".koy[2:6]"  0 -0.21670448780059814 0 0 0;
createNode animCurveTA -n "frank_r_foot_cntrl_rotateZ";
	rename -uid "A462BB94-F14F-0AA8-4D13-55811FEEB643";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 0 15 0 23 0 29 0 41 0 47 0 60 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "frank_r_small_toe_cntrl_rotateX";
	rename -uid "EFACD245-C24D-D826-CC26-7596F06B4B64";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_small_toe_cntrl_rotateY";
	rename -uid "313B4E71-DE4D-B7EB-6021-179F89B72282";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_small_toe_cntrl_rotateZ";
	rename -uid "0AC5D5D0-6949-EDD8-0D31-4CAFCC3E6133";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_toe_cntrl_rotateX";
	rename -uid "5AEBD3C3-5744-0EE3-39CD-88B7E2FFEFAF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_toe_cntrl_rotateY";
	rename -uid "2F788068-9C43-16BA-9826-0A90451BD98D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_toe_cntrl_rotateZ";
	rename -uid "AEB4955E-3447-0DC3-AA80-D29CA6509B21";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_toethumb_cntrl_rotateX";
	rename -uid "7329763E-EA4F-8240-C783-2CAAAE4A9853";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 1.2545489601690326e-014;
createNode animCurveTA -n "frank_r_toethumb_cntrl_rotateY";
	rename -uid "B26DC898-B54B-760B-772E-2381050CC1F5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -59.532899202484387 60 -59.532899202484387;
createNode animCurveTA -n "frank_r_toethumb_cntrl_rotateZ";
	rename -uid "468D3319-2143-444E-FD96-B5B4677DE819";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 86.350282208406227 60 86.350282208406227;
createNode animCurveTA -n "frank_torso_cntrl_rotateY";
	rename -uid "FDB9D447-A943-61BA-9CCF-0789CB494173";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 3.5620849075221637 60 3.5620849075221637;
createNode animCurveTA -n "frank_up_torso_cntrl_rotateY";
	rename -uid "4160B5BC-6046-5648-394A-F7A187B821CF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 0 60 0;
createNode animCurveTA -n "frank_back_cntrl_rotateX";
	rename -uid "04E170DC-0641-5A71-6C3E-75BC45755B77";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_back_cntrl_rotateY";
	rename -uid "AFE2F024-954E-111C-D307-5087485E1A00";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_back_cntrl_rotateZ";
	rename -uid "5F1A3028-DE4A-B4EC-A361-80A0B413F979";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_chest_cntrl_rotateX";
	rename -uid "BAA5102F-864B-678E-20D6-3B8904224C3A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -0.19319483526969239 22 7.9972377936169883
		 34 3.9150799992204495 41 8.4805205974151594 60 -0.19319483526969239;
createNode animCurveTA -n "frank_chest_cntrl_rotateY";
	rename -uid "69FBF91A-5A4A-D2AB-5CA4-8CAE53F4E58E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -2.3717588358505659 22 11.623013008073945
		 34 -27.372143203360316 41 -15.324842317973447 60 -2.3717588358505659;
createNode animCurveTA -n "frank_chest_cntrl_rotateZ";
	rename -uid "C7742C22-0D45-D461-EAFD-2DBC350394D1";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 14.56874966069657 22 25.313317106840525
		 34 4.6889003054626013 41 5.9466957921883745 60 14.56874966069657;
createNode animCurveTA -n "frank_neck_cntrl_rotateX";
	rename -uid "E4CD1A4E-6C40-85F2-FA45-4F8F8380EEB0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 0.0052025655798153695 37 0.0032941074632459322
		 44 0.75230441235137968 60 0;
createNode animCurveTA -n "frank_neck_cntrl_rotateY";
	rename -uid "9F2A9AF1-4046-192D-C37A-5D963D0EF48C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 -14.371795086624527 37 -9.0997867741959677
		 44 1.2367475887650661 60 0;
createNode animCurveTA -n "frank_neck_cntrl_rotateZ";
	rename -uid "8244B8A1-4A40-29F2-CE74-638714FA0F7C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 16.988957906576697 37 10.756895261435865
		 44 5.6260380109992942 60 0;
createNode animCurveTA -n "frank_jaw_cntrl_rotateX";
	rename -uid "B8F744D9-454B-A020-4331-9F8E3A9D0310";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 60 0;
createNode animCurveTA -n "frank_jaw_cntrl_rotateY";
	rename -uid "F3F61B2F-CD41-19A4-41AE-6185000F62B7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -14.961777081401486 24 -34.317446072523119
		 60 -14.961777081401486;
createNode animCurveTA -n "frank_jaw_cntrl_rotateZ";
	rename -uid "4BC33EA8-F84A-978F-166D-70B315EE87DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 60 0;
createNode animCurveTA -n "frank_l_shoulder2_cntrl_rotateX";
	rename -uid "716D6EEE-7C40-863A-219E-FE92582F4F29";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_shoulder2_cntrl_rotateY";
	rename -uid "662D408E-E54C-1F3A-6FA4-A7A386DB1751";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_shoulder2_cntrl_rotateZ";
	rename -uid "B5138130-B24E-0B40-25DB-08B4FECCB8B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_shoulder_cntrl_rotateX";
	rename -uid "9D6BA386-0841-4428-276C-04BD1B8BE521";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -18.053170304310818 60 -18.053170304310818;
createNode animCurveTA -n "frank_l_shoulder_cntrl_rotateY";
	rename -uid "ABBA59C5-AC4E-F45C-0837-D3B4A1ADEC1C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_shoulder_cntrl_rotateZ";
	rename -uid "F040F316-6247-A2AF-0BBF-3E8A4D93BD9E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_elbow_cntrl_rotateX";
	rename -uid "467B371B-374F-3611-A723-4087170E81A5";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 12.962667136891639 48 -6.6503675894527383
		 60 0;
createNode animCurveTA -n "frank_l_elbow_cntrl_rotateY";
	rename -uid "BE410A61-8F40-97E4-6E5C-C5AE945D06E6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 0 48 0 60 0;
createNode animCurveTA -n "frank_l_elbow_cntrl_rotateZ";
	rename -uid "90DC7B02-3F40-0EAD-A445-8881881F50AA";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 0 48 0 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateX";
	rename -uid "1DABFBAF-DE4A-5687-7CD3-55A229C446D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateY";
	rename -uid "90735246-8145-EAE0-392B-EC8590DBD5D5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateZ";
	rename -uid "07F9A961-2643-D7FA-3164-FD8D53AB537B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist_cntrl_rotateX";
	rename -uid "8D3E9589-BC4C-18F8-1137-7596EBC585E6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist_cntrl_rotateY";
	rename -uid "A240A619-0F41-79CF-B63C-EFA8BC3FC658";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist_cntrl_rotateZ";
	rename -uid "0019895F-4145-CBF7-4278-F7ADE34FBD96";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateX";
	rename -uid "6212A9B6-0349-AF51-2271-4082E0C0C1E1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateY";
	rename -uid "977643C5-834D-5BFC-9CAE-8DB360563584";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateZ";
	rename -uid "0366A78C-364C-82BF-D7C8-238E87DF7D33";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateX";
	rename -uid "85DDE906-D848-1852-D37E-4D81783EC43E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateY";
	rename -uid "A0DD1D54-344E-9E72-28C6-E29D6006A05F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateZ";
	rename -uid "0BF13A8C-2E40-6FB6-5695-1582D7EF05F1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateX";
	rename -uid "1583D622-434D-2640-4A46-44ACF46F78C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateY";
	rename -uid "53FC72CC-9249-EF16-645E-7684032AA1A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateZ";
	rename -uid "3153244B-ED4D-D175-1B00-B18942CF5548";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb2_cntrl_rotateX";
	rename -uid "DB5B35EA-BC4A-8F68-66E2-B58099281EBE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb2_cntrl_rotateY";
	rename -uid "14946F07-9A4D-974D-7872-C285EA6AA657";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb2_cntrl_rotateZ";
	rename -uid "62AA5DA5-B74D-E53A-C433-6CA3F2B01A70";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb_1_cntrl_rotateX";
	rename -uid "13E61B6A-744D-AF12-4D9E-C697E8313FF4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb_1_cntrl_rotateY";
	rename -uid "C3037943-D744-AAB4-2841-F799DD72190B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_thumb_1_cntrl_rotateZ";
	rename -uid "E2586288-F249-23D6-695B-999F1B22DC96";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring3_cntrl_rotateX";
	rename -uid "C498514B-184C-3222-5439-E9ADACAD54A2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring3_cntrl_rotateY";
	rename -uid "143A81B8-D441-33AA-5283-4CB1B8C4EEED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring3_cntrl_rotateZ";
	rename -uid "6BFF3E2C-6943-3F55-102C-4EB39659EFD5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring1_cntrl_rotateX";
	rename -uid "581F7CD8-0D48-CBED-7DB5-ABBF83D12625";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring1_cntrl_rotateY";
	rename -uid "C34575E2-3F40-7269-0676-CE80A83CA93B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring1_cntrl_rotateZ";
	rename -uid "DC01546A-1348-5594-E019-C38A5CFB1F75";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring2_cntrl_rotateX";
	rename -uid "9EB26E56-6D40-F4A5-45F5-32B9146BFA71";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring2_cntrl_rotateY";
	rename -uid "C437A822-8E45-1393-51FC-959D891C3910";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_ring2_cntrl_rotateZ";
	rename -uid "CC44512B-DD42-E6A6-D88F-5B8705A5AE1C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_shoulder2_cntrl_rotateX";
	rename -uid "9EB777E6-5945-3C8D-CA40-6CBBD82B1A1D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_shoulder2_cntrl_rotateY";
	rename -uid "E8FA8D66-6144-409D-1F69-22B244CCFE6B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_shoulder2_cntrl_rotateZ";
	rename -uid "51A26412-2146-9D9D-9286-C780BC784A84";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_shoulder_cntrl_rotateX";
	rename -uid "2C16425D-0849-8133-D772-43997A82E938";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -21.065895883127634 22 -47.019732741457261
		 28 -11.797891262848937 32 -25.122485029922288 35 1.0417902394385123 38 17.48235883139472
		 42 15.02607889634743 55 -27.30813286688479 60 -21.065895883127634;
createNode animCurveTA -n "frank_r_shoulder_cntrl_rotateY";
	rename -uid "FD133A7F-224A-5AE7-4F2F-45BA26202120";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 22 52.647025966595557 28 45.966834895414088
		 32 51.344926724722946 35 46.775143812136534 38 43.272856834885616 42 35.533222086618395
		 55 4.1028328694845566 60 0;
createNode animCurveTA -n "frank_r_shoulder_cntrl_rotateZ";
	rename -uid "266DC0DC-F347-A6B1-1F58-71B434DD394B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 22 -30.308645672974063 28 -30.91954019374754
		 32 -56.446624636311242 35 -59.611479168715832 38 -39.949760711399499 42 -28.212420896613722
		 55 -3.7772544299245694 60 0;
createNode animCurveTA -n "frank_r_elbow_cntrl_rotateX";
	rename -uid "8AFA5FAC-D84C-E57A-5CAE-F9BAE3A4C535";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 0 41 1.4985620048866777 60 0;
createNode animCurveTA -n "frank_r_elbow_cntrl_rotateY";
	rename -uid "7AD7416C-3749-DBEB-4519-7A9E57072AF0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 0 41 27.710113091398142 60 0;
createNode animCurveTA -n "frank_r_elbow_cntrl_rotateZ";
	rename -uid "829DA397-914D-A9F5-F3C6-DEBC9C692F94";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 -32.187201322088988 41 -0.33364572706050211
		 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateX1";
	rename -uid "1B6D2FDF-F940-E50B-196D-4C9F8CBC6FCC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateY1";
	rename -uid "D4E3F7AA-1B48-CF27-AE72-009C6E764D6B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_wrist2_cntrl_rotateZ1";
	rename -uid "91533702-334F-D8BA-AFBF-8E8E61955EA5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_wrist_cntrl_rotateX";
	rename -uid "EAFC8397-7841-7604-83C0-DD99FF6F5E52";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 15.765206743560878 38 -13.256217481065768
		 60 0;
createNode animCurveTA -n "frank_r_wrist_cntrl_rotateY";
	rename -uid "7247E3FF-DC44-1B7F-8287-E59A29812F4D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 0 38 0 60 0;
createNode animCurveTA -n "frank_r_wrist_cntrl_rotateZ";
	rename -uid "94B634CE-8F4C-77E5-C166-E6AC7743771A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 0 38 0 60 0;
createNode animCurveTA -n "frank_l_thumb_1_cntrl_rotateX";
	rename -uid "EB313D5B-A443-527A-2AD9-9CAAA5D91F85";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_thumb_1_cntrl_rotateY";
	rename -uid "E2D4425A-B14D-08D6-AF96-688745B31939";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_thumb_1_cntrl_rotateZ";
	rename -uid "0C1CC305-294C-461C-D5F2-44ACE490CE63";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_thumb2_cntrl_rotateX";
	rename -uid "0748F12D-934D-DDE6-73EC-F09145AB703E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_thumb2_cntrl_rotateY";
	rename -uid "2AE1DD10-FD4C-F888-57E7-469BE81D4B12";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_l_thumb2_cntrl_rotateZ";
	rename -uid "97AB8248-2546-57C9-2449-F4B92296C657";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateX1";
	rename -uid "171D2362-314B-A692-A19A-E2BBE4B136F8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateY1";
	rename -uid "BFD2155C-6D45-9BBE-D218-6B94BC02B859";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control_rotateZ1";
	rename -uid "03A6F8F2-0145-77C8-F173-79B8632CAAF0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateX1";
	rename -uid "CD0ABFA8-6344-A0F0-32EC-21AC1D39545A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateY1";
	rename -uid "02E9C8D4-504B-A7B4-EA6C-639D06A71753";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control2_rotateZ1";
	rename -uid "FCB77176-8B4A-66AB-4638-DF9A8542BA37";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateX1";
	rename -uid "4ADC7CE4-9E49-27C2-4C8B-DDA17C6E70EF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateY1";
	rename -uid "A7C99120-474C-3875-131D-3897DC553E2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "_control3_rotateZ1";
	rename -uid "1CBE7601-5D45-7602-450A-68BB507716DF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring1_cntrl_rotateX";
	rename -uid "43DBA805-A24B-78AC-271E-729A0C5C495B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring1_cntrl_rotateY";
	rename -uid "054E2797-0C49-2B4D-8197-E3AA9AF06DD8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring1_cntrl_rotateZ";
	rename -uid "D94D7867-0F42-05EC-5CBF-E59C1B40E315";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring2_cntrl_rotateX";
	rename -uid "1A1B04DF-1E4E-972B-5E7B-9895BE2FE097";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring2_cntrl_rotateY";
	rename -uid "01A040AE-B84E-3272-1110-79B9E1204DD2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring2_cntrl_rotateZ";
	rename -uid "C988DA3E-184B-04EA-879D-239F02351B11";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring3_cntrl_rotateX";
	rename -uid "89345EE7-7C43-BAFD-0EA2-419FD5146CC2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring3_cntrl_rotateY";
	rename -uid "19FEA474-5844-1B5D-031F-E09112823CF2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "frank_r_ring3_cntrl_rotateZ";
	rename -uid "3A6C6A93-F04C-ADF9-2852-E59C7F56BA60";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_shoulder_cntrl_visibility";
	rename -uid "3AD81ECB-6E40-CA4D-9188-329D10878009";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 22 1 28 1 32 1 35 1 38 1 42 1 55 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "frank_r_shoulder_cntrl_translateX";
	rename -uid "F06109B2-9045-8CBA-5695-D6AE7BA24595";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 22 0 28 0 32 0 35 0 38 0 42 0 55 0 60 0;
createNode animCurveTL -n "frank_r_shoulder_cntrl_translateY";
	rename -uid "3C28A912-B941-18C7-4D41-3CBF8314E57D";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 22 -2.0597121309129741e-015 28 -7.250186700813666e-016
		 32 0 35 0 38 0 42 -8.641948154027464e-016 55 -6.171205128014092e-015 60 -7.1054273576010019e-015;
createNode animCurveTL -n "frank_r_shoulder_cntrl_translateZ";
	rename -uid "30A6CEC7-D243-D94B-CEFD-EA95A5021021";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 22 -5.1492803272824352e-016 28 -1.8125466752034165e-016
		 32 0 35 0 38 0 42 -2.1604870385068657e-016 55 -1.542801282003523e-015 60 -1.7763568394002505e-015;
createNode animCurveTU -n "frank_r_shoulder_cntrl_scaleX";
	rename -uid "34A8DE2C-884A-6F65-404A-A98EFEB1E30C";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 22 1 28 1 32 1 35 1 38 1 42 1 55 1 60 1;
createNode animCurveTU -n "frank_r_shoulder_cntrl_scaleY";
	rename -uid "F615560A-C44D-DF47-4E03-ADB501650E37";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.99999999999999989 22 0.99999999999999989
		 28 0.99999999999999989 32 0.99999999999999989 35 0.99999999999999989 38 0.99999999999999989
		 42 0.99999999999999989 55 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_r_shoulder_cntrl_scaleZ";
	rename -uid "DFB900EF-FE43-FD05-24C9-15A939191BB7";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 22 1 28 1 32 1 35 1 38 1 42 1 55 1 60 1;
createNode animCurveTU -n "frank_up_torso_cntrl_visibility";
	rename -uid "200FE10A-134A-632F-74EF-F7917DBB930C";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 16 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "frank_up_torso_cntrl_translateX";
	rename -uid "13291F93-CC49-F6FC-BD93-AA918B28AB75";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 0.51767265456203504 60 0;
createNode animCurveTL -n "frank_up_torso_cntrl_translateY";
	rename -uid "B30FE512-FD49-85FC-056E-C08636184C9C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 42.74312804320175 60 0;
createNode animCurveTL -n "frank_up_torso_cntrl_translateZ";
	rename -uid "DA5E6549-3447-F391-9CC1-FA83BBE47DF9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 0.20653304819627311 60 0;
createNode animCurveTU -n "frank_back_cntrl_visibility";
	rename -uid "EC9A29D3-794A-B6D9-B054-77B9BCFFD510";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_back_cntrl_translateX";
	rename -uid "DB8178F0-5847-82C9-6179-F5B0A19CFABF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_back_cntrl_translateY";
	rename -uid "82CF15B3-1741-23B7-2EA0-6C927F353F27";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_back_cntrl_translateZ";
	rename -uid "5B87B58F-234A-FD85-CA7C-A3BF0013CF29";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_back_cntrl_scaleX";
	rename -uid "759BA33C-EC40-F8A6-AA77-8AA421D247A4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_back_cntrl_scaleY";
	rename -uid "EA4FC129-BE4C-C12D-6046-279EF1988C04";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_back_cntrl_scaleZ";
	rename -uid "2124FA9B-7F43-EB73-7E5E-418A0BF8C09B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_chest_cntrl_visibility";
	rename -uid "52F5A7A9-CF4E-6009-4E76-58B797A6E310";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 22 1 34 1 41 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "frank_chest_cntrl_translateX";
	rename -uid "75A3F8E1-CC42-9F2F-73A9-D2B24AEEDD08";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 34 0 41 0 60 0;
createNode animCurveTL -n "frank_chest_cntrl_translateY";
	rename -uid "F8B70AB0-4D42-BE86-24CA-1D9C7EE01463";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 34 0 41 0 60 0;
createNode animCurveTL -n "frank_chest_cntrl_translateZ";
	rename -uid "2C6CCF37-A04A-58E8-4A6F-CA8B74F04F93";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 34 0 41 0 60 0;
createNode animCurveTU -n "frank_jaw_cntrl_visibility";
	rename -uid "6995C3BC-9942-527B-DD7E-5AB20D043702";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "frank_jaw_cntrl_translateX";
	rename -uid "916F9739-5948-3B58-4FA2-BE9B56614459";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 60 0;
createNode animCurveTL -n "frank_jaw_cntrl_translateY";
	rename -uid "78DE2EF4-6144-823D-D8F1-768E9DE94149";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 60 0;
createNode animCurveTL -n "frank_jaw_cntrl_translateZ";
	rename -uid "D1DE36A3-9141-C50C-72D3-0CA155A71C8F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 60 0;
createNode animCurveTU -n "frank_jaw_cntrl_scaleX";
	rename -uid "19B2CD9E-C045-F481-E05D-EFAF10083DCE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 60 1;
createNode animCurveTU -n "frank_jaw_cntrl_scaleY";
	rename -uid "71B58E18-8745-F4EB-3290-0580DC745426";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 60 1;
createNode animCurveTU -n "frank_jaw_cntrl_scaleZ";
	rename -uid "B4CCF6BE-614F-8717-A754-1C93700C831B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 60 1;
createNode animCurveTU -n "frank_neck_cntrl_visibility";
	rename -uid "556E8932-1348-25E2-FAC0-50A4AF44C547";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 21 1 37 1 44 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "frank_neck_cntrl_translateX";
	rename -uid "1B15DDBA-A04B-66E9-7895-198F96A4F318";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 0 37 0 44 0 60 0;
createNode animCurveTL -n "frank_neck_cntrl_translateY";
	rename -uid "F2E7133B-2E43-685B-3D03-E68010734343";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 0 37 0 44 0 60 0;
createNode animCurveTL -n "frank_neck_cntrl_translateZ";
	rename -uid "D5F8C201-CE46-5C1E-AC2E-AF9C8BC951C8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 21 0 37 0 44 0 60 0;
createNode animCurveTU -n "frank_neck_cntrl_scaleX";
	rename -uid "D5F56006-2F4A-25A2-C798-24870D643D29";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 21 1 37 1 44 1 60 1;
createNode animCurveTU -n "frank_neck_cntrl_scaleY";
	rename -uid "5508F346-2643-A5F1-5B6C-F29BB39311B4";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 21 1 37 1 44 1 60 1;
createNode animCurveTU -n "frank_neck_cntrl_scaleZ";
	rename -uid "4E8168FE-0848-72D3-6C89-D88B02BD20B7";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 21 1 37 1 44 1 60 1;
createNode animCurveTU -n "frank_r_shoulder2_cntrl_visibility";
	rename -uid "D593DBBC-6F40-90CB-89D9-B989E8ECB365";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_shoulder2_cntrl_translateX";
	rename -uid "2ED07799-DE49-41AC-2CB2-A29E0B8E4734";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_shoulder2_cntrl_translateY";
	rename -uid "91B01E1E-0A41-5102-00A6-A491BE6B85FD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_shoulder2_cntrl_translateZ";
	rename -uid "207E02CA-554E-889A-CA95-2B9135B67085";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_shoulder2_cntrl_scaleX";
	rename -uid "85001EEE-EA43-47A4-382F-29AB29062E09";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_shoulder2_cntrl_scaleY";
	rename -uid "BAC7CFDC-324A-7652-C956-27B5C659926A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_shoulder2_cntrl_scaleZ";
	rename -uid "FE06A52E-7640-B7C9-4D51-CC806FA03D3A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_torso_cntrl_visibility";
	rename -uid "0A0C68E7-0A43-CC6B-9EE7-E7B4C8C99CC3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Frank_master_cntrl_visibility";
	rename -uid "3BB81A45-2B45-5B2C-A8D6-52BF3472D6D3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Frank_master_cntrl_translateX";
	rename -uid "C3911051-8241-87C5-56D9-D5A7CB3040B6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "Frank_master_cntrl_translateY";
	rename -uid "9964B45E-6C4B-9FD7-62FD-1B9385D35752";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "Frank_master_cntrl_translateZ";
	rename -uid "885BBFEB-0C46-72E1-926E-159E9F3C671B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "Frank_master_cntrl_scaleX";
	rename -uid "ED8AF29E-6C4C-79CC-A1F5-54837CD4CB47";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "Frank_master_cntrl_scaleY";
	rename -uid "36F9A0A2-AC43-AED2-760D-918E0027A93D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "Frank_master_cntrl_scaleZ";
	rename -uid "688D0476-3044-AC5E-BE2F-4F95FE30E4FC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_pntr_cntrl_visibility";
	rename -uid "115DBA7C-6A48-2286-049F-55A45071490D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 22 1 37 1 60 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "frank_pntr_cntrl_translateX";
	rename -uid "E321A5DC-C44A-AE24-ED74-B4B398E5DF6E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 11 22 76.577239566685293 37 32.406651949371259
		 60 11;
createNode animCurveTL -n "frank_pntr_cntrl_translateY";
	rename -uid "E6EA90BA-4042-B189-F41F-61AC3AB145FC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 22 -3.2720923883148271e-014 37 -2.3779619667196768e-014
		 60 3.5527136788005009e-015;
createNode animCurveTL -n "frank_pntr_cntrl_translateZ";
	rename -uid "A187427A-5E43-6D55-D61E-FCA23FA15568";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 22 -1.0956741345979008e-013 37 -2.4300914547684727e-014
		 60 1.4210854715202004e-014;
createNode animCurveTU -n "frank_pntr_cntrl_scaleX";
	rename -uid "D184DC31-004C-5662-85A4-C586F92ECBBE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 22 1 37 1 60 1;
createNode animCurveTU -n "frank_pntr_cntrl_scaleY";
	rename -uid "F88854B6-4941-C60E-A309-EC8C9D4265CF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 22 1 37 1 60 1;
createNode animCurveTU -n "frank_pntr_cntrl_scaleZ";
	rename -uid "C292A24A-8F4E-E802-1B0A-DF81E5A0E9FD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 22 1 37 1 60 1;
createNode animCurveTU -n "frank_l_toethumb_cntrl_visibility";
	rename -uid "35556E24-014A-63A2-4E90-61A6F1B87A1F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_toethumb_cntrl_translateX";
	rename -uid "84D87FF7-6B46-79E8-4324-C0847DE01BA3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -2.2438268075830101 60 -2.2438268075830101;
createNode animCurveTL -n "frank_l_toethumb_cntrl_translateY";
	rename -uid "6EF1E1B7-2049-C035-D43F-7590BCF2AC95";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.14598270766907712 60 0.14598270766907712;
createNode animCurveTL -n "frank_l_toethumb_cntrl_translateZ";
	rename -uid "F092F50B-1247-C5EF-4467-4AA3846DFFB4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.004848818302498145 60 0.004848818302498145;
createNode animCurveTU -n "frank_l_toethumb_cntrl_scaleX";
	rename -uid "71695868-EE46-5033-8F2B-FDA544ACB953";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_l_toethumb_cntrl_scaleY";
	rename -uid "6A511785-C848-6FA2-3A57-34AD6DA60AD2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_l_toethumb_cntrl_scaleZ";
	rename -uid "F7352C25-5441-8741-330D-308264E7A04E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_l_toe_cntrl_visibility";
	rename -uid "A1E4D60B-4A4A-901F-DB2E-51A612D4A8ED";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_toe_cntrl_translateX";
	rename -uid "1699B8B4-CB4C-463C-8F8F-E3BEA6574B4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_toe_cntrl_translateY";
	rename -uid "1BED90C1-E34F-5AAE-14AB-69A6329A11C0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_toe_cntrl_translateZ";
	rename -uid "7D0EE587-FD45-FE51-4625-99A441C454F3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_toe_cntrl_scaleX";
	rename -uid "3E10B0B1-694C-F788-D69E-FDA0ACA7D2D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_toe_cntrl_scaleY";
	rename -uid "F8C25EF7-FC4B-8954-D75B-0F95C0D78DC4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_toe_cntrl_scaleZ";
	rename -uid "69E52F66-694A-0998-9D1F-5B9A7BE6DEB4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_small_toe_cntrl_visibility";
	rename -uid "814C64F8-C34B-5DF5-82F5-F6B5A3FA3B51";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_small_toe_cntrl_translateX";
	rename -uid "FE905751-3F46-4258-479B-22988446EFE8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_small_toe_cntrl_translateY";
	rename -uid "E46179F0-7049-C8C8-9E02-2593B62C9A42";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_small_toe_cntrl_translateZ";
	rename -uid "3D631644-584A-5EB6-57B2-BF948E239D9A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_small_toe_cntrl_scaleX";
	rename -uid "C7F87E89-E444-3A0A-019F-789B21F84DE5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_small_toe_cntrl_scaleY";
	rename -uid "B8ED2983-2A4D-3ED2-25E2-4FBFD5B5DE10";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_small_toe_cntrl_scaleZ";
	rename -uid "AA4F60FB-4C4F-BC9A-2684-158E242A6F28";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_foot_cntrl_visibility";
	rename -uid "9D515AD4-B043-774F-EDF5-6B80548FE48E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_foot_cntrl_translateX";
	rename -uid "E7EF4BD9-0048-7311-CC77-DBA638C749F4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_foot_cntrl_translateY";
	rename -uid "70FF8199-D64D-4868-83FC-A798E990D2D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.77315770755085311 60 0.773;
createNode animCurveTL -n "frank_l_foot_cntrl_translateZ";
	rename -uid "1B2418AF-934B-B6BC-8084-1B81B13BB5BC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_foot_cntrl_scaleX";
	rename -uid "C0B4D9C6-3E42-872B-F281-E6836D9E1F35";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.74642516718686547 60 0.74642516718686547;
createNode animCurveTU -n "frank_l_foot_cntrl_scaleY";
	rename -uid "9E957D31-CF48-6FE7-315E-279DA4DBBB08";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.67672588912690901 60 0.67672588912690901;
createNode animCurveTU -n "frank_l_foot_cntrl_scaleZ";
	rename -uid "60128CE7-7048-95F6-2F65-3EA88F057BD3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.74642516718686547 60 0.74642516718686547;
createNode animCurveTU -n "frank_l_hip_cntrl_visibility";
	rename -uid "314CC178-8B4A-71F2-6AA1-CCBCEC23D51B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 22 1 60 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "frank_l_hip_cntrl_translateX";
	rename -uid "A643FA0C-914B-0AE2-236D-05B10E0DD699";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0.11288661400763413 22 0.18615436829142862
		 60 1.7763568394002505e-015;
createNode animCurveTL -n "frank_l_hip_cntrl_translateY";
	rename -uid "E100D842-E149-1EFA-7A8F-C891675196B5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0.66918833441594738 22 0.24780773062319361
		 60 0;
createNode animCurveTL -n "frank_l_hip_cntrl_translateZ";
	rename -uid "9178385C-2145-F191-D5AD-17AA8E51E942";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 -3.2392221380271922 13 -1.5733945718044411
		 22 -3.3187558140825488 60 -3.2392221380271922;
createNode animCurveTU -n "frank_l_hip_cntrl_scaleX";
	rename -uid "AA2236C9-F84D-B7F3-8225-1A893F0013EE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 22 1 60 1;
createNode animCurveTU -n "frank_l_hip_cntrl_scaleY";
	rename -uid "ACD2116A-2849-5C93-F6A5-C895E42511EB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 22 1 60 1;
createNode animCurveTU -n "frank_l_hip_cntrl_scaleZ";
	rename -uid "8AFFCF6D-5E48-E001-629D-6386CF58DDC9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 22 1 60 1;
createNode animCurveTU -n "frank_pntr_cntrl_visibility1";
	rename -uid "6CD6F63E-B64A-E0FB-5624-8681C9EE4B95";
	setAttr ".tan" 5;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 26 1 32 1 41 1 60 1;
	setAttr -s 6 ".kit[0:5]"  9 9 1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
createNode animCurveTL -n "frank_pntr_cntrl_translateX1";
	rename -uid "8FDDEBB6-1E4D-E0F3-121B-35984C0F7FBC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 11 13 -17.083481052806128 22 -47.831258930194821
		 41 -0.25712825823909569 60 11;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.082498610019683838 0.63333332538604736 
		0.63333332538604736;
	setAttr -s 5 ".kiy[2:4]"  13.34595775604248 29.415630340576172 0;
	setAttr -s 5 ".kox[2:4]"  0.40546509623527527 0.63333332538604736 
		0.63333332538604736;
	setAttr -s 5 ".koy[2:4]"  65.592849731445313 29.415630340576172 0;
createNode animCurveTL -n "frank_pntr_cntrl_translateY1";
	rename -uid "3F130E3B-5041-0A02-D698-2FA433CC9C46";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 9.7725967413437349 26 9.973766747768309
		 32 2.5535947341374809e-015 41 -4.6951518244696199e-015 60 -5.3290705182007514e-015;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "frank_pntr_cntrl_translateZ1";
	rename -uid "E2218AD8-9B49-CB65-7854-29BA1C235BC3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 -1.5244672098185855e-015 26 -1.5244672098185855e-015
		 32 6.7415345683067921e-014 41 9.0169371776143359e-014 60 -1.4210854715202004e-014;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTU -n "frank_pntr_cntrl_scaleX1";
	rename -uid "88FEE343-6340-3F30-93ED-1EB1A21AA8E8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 26 1 32 1 41 1 60 1;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTU -n "frank_pntr_cntrl_scaleY1";
	rename -uid "67127BDC-E542-27C4-BA96-DAB140826915";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 26 1 32 1 41 1 60 1;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTU -n "frank_pntr_cntrl_scaleZ1";
	rename -uid "361419BA-3C41-810C-A464-6B801DF96C88";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 26 1 32 1 41 1 60 1;
	setAttr -s 6 ".kit[2:5]"  1 18 18 18;
	setAttr -s 6 ".kot[2:5]"  1 18 18 18;
	setAttr -s 6 ".kix[2:5]"  0.40000000596046448 0.20000000298023224 
		0.30000001192092896 0.63333332538604736;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1.5666667222976685 0.30000001192092896 
		0.63333332538604736 0.63333332538604736;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTU -n "frank_r_toethumb_cntrl_visibility";
	rename -uid "FBF9D2F6-F64A-0211-65D4-349232BDB097";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_toethumb_cntrl_translateX";
	rename -uid "BF74E708-1144-212D-1514-579AF4BC892E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -2.2438268075830101 60 -2.2438268075830101;
createNode animCurveTL -n "frank_r_toethumb_cntrl_translateY";
	rename -uid "D9D4A059-4045-1AF2-3A33-F38F3DDDB8DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.14598270766907712 60 0.14598270766907712;
createNode animCurveTL -n "frank_r_toethumb_cntrl_translateZ";
	rename -uid "EA332261-3146-F5D6-2D21-12A2F7EC9763";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.004848818302498145 60 0.004848818302498145;
createNode animCurveTU -n "frank_r_toethumb_cntrl_scaleX";
	rename -uid "B946E397-2A45-3683-5B34-93996EAB53F7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_r_toethumb_cntrl_scaleY";
	rename -uid "70BDA55E-D345-FCAE-89CE-25B899EC0223";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_r_toethumb_cntrl_scaleZ";
	rename -uid "F56428CD-3543-B917-5AF5-FCA83E13BFDF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.53407474815127509 60 0.53407474815127509;
createNode animCurveTU -n "frank_r_toe_cntrl_visibility";
	rename -uid "617B582E-AF41-E259-74E7-C28D1BEE930A";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_toe_cntrl_translateX";
	rename -uid "C0B3D7AD-244A-D871-FEE8-27A958019729";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_toe_cntrl_translateY";
	rename -uid "E0B85035-AB42-519E-2EB6-7C87DA26C66F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_toe_cntrl_translateZ";
	rename -uid "32AE56AB-5140-BB53-A3F3-009B09DF0432";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_toe_cntrl_scaleX";
	rename -uid "30E0D0B0-424F-F9D0-61E3-DFAED0119F24";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_toe_cntrl_scaleY";
	rename -uid "914DED6A-4147-5D41-662E-C6AEA53B059C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_toe_cntrl_scaleZ";
	rename -uid "D4D58EE6-FA4A-E6AF-A6E6-13A48476106E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_small_toe_cntrl_visibility";
	rename -uid "6B372BA0-B049-F50F-D958-F99CFF472042";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_small_toe_cntrl_translateX";
	rename -uid "918CD004-D54A-66C0-805B-659AD00FF186";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_small_toe_cntrl_translateY";
	rename -uid "CDF6990C-CB46-72EF-1697-B7AA9EBBCECD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_small_toe_cntrl_translateZ";
	rename -uid "C132CB94-0245-CA67-C022-479937DE53CD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_small_toe_cntrl_scaleX";
	rename -uid "AB396A7D-9148-DB32-B86A-5AAD55C304E5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_small_toe_cntrl_scaleY";
	rename -uid "1B1084C5-3947-C8AA-46F3-8D86518EC9FD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_small_toe_cntrl_scaleZ";
	rename -uid "3C4927FE-5A46-8737-ECE3-5FAE0A5B64D0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_foot_cntrl_visibility";
	rename -uid "2C577D89-B548-C996-8DA4-F0BC15A8CF95";
	setAttr ".tan" 5;
	setAttr -s 8 ".ktv[0:7]"  1 1 8 1 15 1 23 1 29 1 41 1 47 1 60 1;
	setAttr -s 8 ".kit[0:7]"  9 9 1 9 9 9 9 9;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "frank_r_foot_cntrl_translateX";
	rename -uid "85BF350F-2A43-4461-3276-BCBBD5009EA2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 0.202387182893116 15 0.27193424107818132
		 23 0.27193424107818132 29 -0.048524972704779352 41 -0.63085781001835994 47 -0.63200000000000045
		 60 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 1;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 1;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.1666666716337204 0.20000000298023224 0.60000002384185791;
	setAttr -s 8 ".kiy[2:7]"  0 0 -0.3009306788444519 0 0.17742875218391418 
		0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.60000002384185791 0.80000001192092896;
	setAttr -s 8 ".koy[2:7]"  0 0 -0.60186135768890381 0 0.53228628635406494 
		0;
createNode animCurveTL -n "frank_r_foot_cntrl_translateY";
	rename -uid "3E51D38C-6B40-4E24-BA9C-CC9DD98A53DA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 0.44226655562257089 15 0 23 0 29 0.42263446544656014
		 41 0 47 1.1102230246251565e-016 60 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "frank_r_foot_cntrl_translateZ";
	rename -uid "DB3C0C84-F149-0A41-E830-57BE08A51E55";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 2.0906804123895917 15 2.7360674186522944
		 23 2.7360674186522944 29 2.275289955358045 41 1.4453462508947839 47 1.1458979757802719
		 60 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 -0.43024039268493652 -0.75292795896530151 
		-0.45642513036727905 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 -0.86048078536987305 -0.37646397948265076 
		-0.98892110586166382 0;
createNode animCurveTU -n "frank_r_foot_cntrl_scaleX";
	rename -uid "742C665B-514C-3FD5-62D2-F6BEBA4A6E04";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 8 1 15 1 23 1 29 1 41 1 47 1 60 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "frank_r_foot_cntrl_scaleY";
	rename -uid "B490A3CC-1B44-5F96-8870-CFB023DBF6E2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 8 1 15 1 23 1 29 1 41 1 47 1 60 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "frank_r_foot_cntrl_scaleZ";
	rename -uid "0D6C963C-334D-0A34-4827-7FA80851B8BF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 8 1 15 1 23 1 29 1 41 1 47 1 60 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 18;
	setAttr -s 8 ".kix[2:7]"  1 0.26666668057441711 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  0.96666663885116577 0.20000000298023224 
		0.40000000596046448 0.20000000298023224 0.43333333730697632 0.43333333730697632;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "frank_r_hip_cntrl_visibility";
	rename -uid "FD733422-C843-465E-D6FF-33932098266F";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 30 1 34 1 38 1 60 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "frank_r_hip_cntrl_translateX";
	rename -uid "03FA5A8A-8F43-C93C-E95F-C8ABF5C19E78";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 1.3952400369456049e-015 30 -7.847554391814221e-017
		 34 -2.4729778217612911e-016 38 1.3184271839754134e-015 60 -3.5527136788005009e-015;
createNode animCurveTL -n "frank_r_hip_cntrl_translateY";
	rename -uid "1D16988D-CA4E-DDDE-EF0E-04BA9EC52113";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -0.76079200247427181 13 -0.76079200247427337
		 30 -0.76079200247427237 34 -0.35164807275148435 38 0.40655926813346244 60 -0.76079200247427003;
createNode animCurveTL -n "frank_r_hip_cntrl_translateZ";
	rename -uid "5F001511-C646-75C7-D68E-A0B09C2ADBF3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.035 13 1.7490579003904312 30 1.2385369902474639
		 34 1.0704839706680398 38 -0.867520585545562 60 0.035;
createNode animCurveTU -n "frank_r_hip_cntrl_scaleX";
	rename -uid "A64F1393-3945-5816-5B67-409C6356C3DA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 30 1 34 1 38 1 60 1;
createNode animCurveTU -n "frank_r_hip_cntrl_scaleY";
	rename -uid "50E9995E-F145-72CB-EBCA-0D826D736807";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 30 1 34 1 38 1 60 1;
createNode animCurveTU -n "frank_r_hip_cntrl_scaleZ";
	rename -uid "B7007E7C-574E-755D-C26C-619483153FE6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 13 1 30 1 34 1 38 1 60 1;
createNode animCurveTU -n "frank_l_thumb_1_cntrl_visibility";
	rename -uid "D930F63C-9F49-83FE-A98A-E3A99B45E78D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_thumb_1_cntrl_translateX";
	rename -uid "71215C5B-FE4C-097D-B7D6-3D811B2CFFDB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_thumb_1_cntrl_translateY";
	rename -uid "E98DAE4A-6F4E-6BBE-2E29-758B44FCB24B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_thumb_1_cntrl_translateZ";
	rename -uid "E114C810-BD4C-8CAB-0427-348622BA7474";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_thumb_1_cntrl_scaleX";
	rename -uid "64847EBE-0A4D-3BF8-61C6-33862B7C08EF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_thumb_1_cntrl_scaleY";
	rename -uid "FF1933E2-EF47-6E3E-BBE6-749CFA9A71F0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_thumb_1_cntrl_scaleZ";
	rename -uid "29E2CD8F-9F47-5605-5CD7-B7BF8BA28922";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_visibility";
	rename -uid "1FD83995-2447-16FC-0692-9A9829DBF28F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control3_translateX";
	rename -uid "A5884F08-CE45-7131-959E-AA883E68AF61";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -1.7763568394002505e-015;
createNode animCurveTL -n "_control3_translateY";
	rename -uid "C2F81F8C-2541-8BE7-51F5-17B667AB8EDC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 8.8817841970012523e-016;
createNode animCurveTL -n "_control3_translateZ";
	rename -uid "B2B5D965-9C41-6E1F-DF6B-8EA2DF7AEEE0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -8.8817841970012523e-016;
createNode animCurveTU -n "_control3_scaleX";
	rename -uid "3BC807BD-FB44-ED06-317B-ADBE16F1BE35";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_scaleY";
	rename -uid "F55E306B-644D-9E77-D812-85AB7AC9C293";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_scaleZ";
	rename -uid "B6BD019B-E24B-8013-1CA3-D4899F3276FF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_visibility";
	rename -uid "407F0477-6B45-FB51-41C4-36934D092588";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control2_translateX";
	rename -uid "2A3028AF-9045-0D9D-B11C-BE8A9AC21E3A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -1.7763568394002505e-015;
createNode animCurveTL -n "_control2_translateY";
	rename -uid "54D8D210-1B41-1C3A-F312-118C1D4EEE1B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 8.8817841970012523e-016;
createNode animCurveTL -n "_control2_translateZ";
	rename -uid "7999404F-8E4C-51EF-038D-B589262747F8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -8.8817841970012523e-016;
createNode animCurveTU -n "_control2_scaleX";
	rename -uid "6B959FB4-AC4A-77E8-19BF-E9A646B2BE26";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_scaleY";
	rename -uid "7FBB43EE-724B-0B2D-9DB1-2495B82BC0D4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_scaleZ";
	rename -uid "946F0C3C-5540-E844-7CA0-1998FD6D3694";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_visibility";
	rename -uid "D5A8B2D1-4E49-F4C8-EECE-88A01AE6AA87";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control_translateX";
	rename -uid "DFB1E0CC-BA47-983B-BEAC-199CEAC26761";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control_translateY";
	rename -uid "7DAE2C34-8A4D-6481-DAE5-339057F4743B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control_translateZ";
	rename -uid "82025ADB-584C-0C08-2CA0-1C9E20A49A99";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "_control_scaleX";
	rename -uid "4C10B75F-CE4B-2C3C-98A7-1B98831B93A2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_scaleY";
	rename -uid "81195710-4A43-3627-D461-F196FA5CE7A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_scaleZ";
	rename -uid "A8C3382C-F440-B90D-B627-E6B2585EF17E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring3_cntrl_visibility";
	rename -uid "F0D20FB8-014A-0418-5F4D-FC9D95DCBFC9";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_ring3_cntrl_translateX";
	rename -uid "63C5613A-5142-1E6F-A33D-B4BD0A34EC79";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -2.2204460492503131e-016;
createNode animCurveTL -n "frank_r_ring3_cntrl_translateY";
	rename -uid "FF7B8B3A-8C4E-56DF-A3EF-B1BE63C50BC3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -1.7763568394002505e-015;
createNode animCurveTL -n "frank_r_ring3_cntrl_translateZ";
	rename -uid "CE8D9B12-AF4A-5FDA-3439-2EA345ABB5A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_ring3_cntrl_scaleX";
	rename -uid "27F0808A-6D45-86A6-8476-0D9E565FA36F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring3_cntrl_scaleY";
	rename -uid "5498BFAB-A846-0662-698B-9EB11AC83FB3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_r_ring3_cntrl_scaleZ";
	rename -uid "29B21B83-0B47-75F3-12C8-B5BB83A302C4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_l_wrist2_cntrl_visibility";
	rename -uid "10B26327-E849-1BF9-E53B-BA9F37DF2F4B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateX";
	rename -uid "C5C784F1-8E47-89D1-FCDC-6AB5391492C2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateY";
	rename -uid "1118B83D-A34C-07F7-F2F8-D3A9E2AFDC20";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateZ";
	rename -uid "2BB418C1-C94B-21DA-1576-D5A8359A0668";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleX";
	rename -uid "9B718788-4044-A095-F2CC-7BB682D9F535";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleY";
	rename -uid "AF062F19-AB4F-6A0C-2F34-55B041861A20";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleZ";
	rename -uid "C25A1CD5-C344-E87A-3404-A98CFB3869BA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring2_cntrl_visibility";
	rename -uid "51C756EB-434F-75D9-9A1A-19BCCCA867DF";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_ring2_cntrl_translateX";
	rename -uid "0F74EA91-F74E-EAB0-2017-A6BAE0937B97";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -2.2204460492503131e-016;
createNode animCurveTL -n "frank_r_ring2_cntrl_translateY";
	rename -uid "63C2C520-4F44-662C-ACE1-639E5DDBEF78";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -1.7763568394002505e-015;
createNode animCurveTL -n "frank_r_ring2_cntrl_translateZ";
	rename -uid "C9F77045-B24E-FB4E-EB60-AC95E0319F2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_ring2_cntrl_scaleX";
	rename -uid "34998C42-4042-DD0D-D6A2-37AAFF72DF09";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring2_cntrl_scaleY";
	rename -uid "E0A1877B-E949-F2C4-B48B-17A0E1959A4E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_r_ring2_cntrl_scaleZ";
	rename -uid "302DD592-7740-6870-4217-309F8093A936";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_r_ring1_cntrl_visibility";
	rename -uid "F7D18E57-DB4A-5121-E25E-0B9CD08025E5";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_ring1_cntrl_translateX";
	rename -uid "8EE5792C-E647-FFAE-7250-289E5D482C1D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_ring1_cntrl_translateY";
	rename -uid "5987A77B-3749-2C09-BF52-09B97098413E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_ring1_cntrl_translateZ";
	rename -uid "B57A3586-EB40-82B1-BFEA-3EAC8C4B8A31";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_ring1_cntrl_scaleX";
	rename -uid "93519FDB-C343-3782-C861-4AA710D7CF55";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring1_cntrl_scaleY";
	rename -uid "B4DCA5B2-4E44-8290-8312-D8BB8BADE935";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_ring1_cntrl_scaleZ";
	rename -uid "5AE73585-CD46-2861-B09D-2799A45E5512";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_elbow_cntrl_visibility";
	rename -uid "71760D6C-2446-A754-D902-A4BEEF57BC07";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 34 1 41 1 60 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "frank_r_elbow_cntrl_translateX";
	rename -uid "13B3B34A-7E45-56F8-79D7-CD8AC1F47BA0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 0 41 0 60 0;
createNode animCurveTL -n "frank_r_elbow_cntrl_translateY";
	rename -uid "051E66E4-3A42-55AB-3B35-1EAAE35A72D4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 0 41 0 60 0;
createNode animCurveTL -n "frank_r_elbow_cntrl_translateZ";
	rename -uid "355B0E5B-5949-E369-0142-2C8B6BC4CD72";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 34 0 41 0 60 0;
createNode animCurveTU -n "frank_r_elbow_cntrl_scaleX";
	rename -uid "62F78D3C-7A48-F6CD-78CA-B68F0B7D9CC8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 34 1 41 1 60 1;
createNode animCurveTU -n "frank_r_elbow_cntrl_scaleY";
	rename -uid "95EC65C5-BE4A-130A-1C49-7AAD31F54521";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 34 1 41 1 60 1;
createNode animCurveTU -n "frank_r_elbow_cntrl_scaleZ";
	rename -uid "379A2E55-1F4D-3727-3628-4B87169946E6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 34 1 41 1 60 1;
createNode animCurveTU -n "frank_r_wrist_cntrl_visibility";
	rename -uid "831FF1FA-AE4C-9BEC-9E9E-4E9FEE7A44D3";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 18 1 28 1 38 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "frank_r_wrist_cntrl_translateX";
	rename -uid "E082DF57-FE4D-ACB2-1EA2-E5A0DF4C35BC";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 0 38 0 60 0;
createNode animCurveTL -n "frank_r_wrist_cntrl_translateY";
	rename -uid "81CF8ADD-8C4E-0068-5927-069EBC510CF0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 0 38 0 60 0;
createNode animCurveTL -n "frank_r_wrist_cntrl_translateZ";
	rename -uid "F9DF15D7-E04C-D54E-40ED-25AA97FEAB06";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 18 0 28 0 38 0 60 0;
createNode animCurveTU -n "frank_r_wrist_cntrl_scaleX";
	rename -uid "4D45ADB6-B14E-2D9C-5697-838EF3232914";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 18 1 28 1 38 1 60 1;
createNode animCurveTU -n "frank_r_wrist_cntrl_scaleY";
	rename -uid "D7EE5381-E941-B2AB-5D9E-CE8220FF3099";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 18 1 28 1 38 1 60 1;
createNode animCurveTU -n "frank_r_wrist_cntrl_scaleZ";
	rename -uid "0B345971-7A4B-B316-7569-F1AE00AA7131";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 18 1 28 1 38 1 60 1;
createNode animCurveTU -n "frank_l_ring2_cntrl_visibility";
	rename -uid "70A363B3-0B4B-9483-C46B-89888630BD7E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_ring2_cntrl_translateX";
	rename -uid "5BE942CF-BE4E-8007-BBF5-4DBA0FD6E992";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring2_cntrl_translateY";
	rename -uid "62D7A48B-514D-A230-2FC0-AEA449A6FBB7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring2_cntrl_translateZ";
	rename -uid "4181AFDC-2746-D035-F107-00A2AE700F5E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_ring2_cntrl_scaleX";
	rename -uid "05DFAB80-D641-B0BE-0BC2-2580B55A496D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring2_cntrl_scaleY";
	rename -uid "F70D97A1-914B-3ED8-3567-6D9AD5E4CF0E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring2_cntrl_scaleZ";
	rename -uid "3F5A9B3D-864B-2709-8D4E-9B8E115FB9CA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring3_cntrl_visibility";
	rename -uid "D484E01F-A946-D197-DCA1-00A5DA33E2C1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_ring3_cntrl_translateX";
	rename -uid "9EB387F8-324D-0E38-D6AF-6BA1EBE0CCB7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring3_cntrl_translateY";
	rename -uid "36655163-AD4F-4E17-B3FD-3E89E2F98E6D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring3_cntrl_translateZ";
	rename -uid "64DA312F-B741-5CB9-32D3-0992F2F6E225";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_ring3_cntrl_scaleX";
	rename -uid "9555D579-DD40-25CB-E7CA-0192FB141425";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring3_cntrl_scaleY";
	rename -uid "32C4F3F8-814D-B672-FEAC-53B459BF86B4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring3_cntrl_scaleZ";
	rename -uid "1898A70B-0E43-9A1B-3D9C-98AFB5D36B4B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist_cntrl_visibility";
	rename -uid "EF5BD27F-434F-5695-52E7-90ADDCB5ECCB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_wrist_cntrl_translateX";
	rename -uid "C6BC976F-7644-DD1B-6B68-65941FFD49DB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist_cntrl_translateY";
	rename -uid "9418F2CC-CF44-F92F-0A67-0994AEF8DB02";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist_cntrl_translateZ";
	rename -uid "DFE1D95E-EB4C-5698-18F7-FB98A25C0990";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_wrist_cntrl_scaleX";
	rename -uid "B5EDA879-D140-5214-4063-A58E2947286D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist_cntrl_scaleY";
	rename -uid "E944A1EF-A84B-9A5C-8883-FCAF0593E502";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist_cntrl_scaleZ";
	rename -uid "0891D7E7-F347-2E91-5A3B-55B085C14DC3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_shoulder_cntrl_visibility";
	rename -uid "4BEBEDC0-9A43-01FA-BDF7-D2A9047DD541";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_shoulder_cntrl_translateX";
	rename -uid "03E81E7F-8D4A-8BFE-AB7D-B089D5C68BEA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_shoulder_cntrl_translateY";
	rename -uid "03AEF5DB-7A49-B03F-F9CB-C5BB63761240";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -7.1054273576010019e-015;
createNode animCurveTL -n "frank_l_shoulder_cntrl_translateZ";
	rename -uid "28C70759-3F45-4D97-B962-2D893E343724";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 -1.7763568394002505e-015;
createNode animCurveTU -n "frank_l_shoulder_cntrl_scaleX";
	rename -uid "5B4E6ADE-0C4D-0452-1B6F-1798D85F175D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_shoulder_cntrl_scaleY";
	rename -uid "AD875EBB-0E45-A937-0843-D398D98A7858";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 60 0.99999999999999989;
createNode animCurveTU -n "frank_l_shoulder_cntrl_scaleZ";
	rename -uid "5E021C2C-244B-AB80-B9D6-E2A655FCE3A1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_elbow_cntrl_visibility";
	rename -uid "A8516DA0-0D42-A07F-EE7B-8E8B7E55F20B";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 22 1 32 1 48 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "frank_l_elbow_cntrl_translateX";
	rename -uid "83CA524D-F842-3540-8976-7B9AB5E39BFB";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 0 48 0 60 0;
createNode animCurveTL -n "frank_l_elbow_cntrl_translateY";
	rename -uid "838E8C81-9049-9D05-EEDB-B79673A0D406";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 0 48 0 60 0;
createNode animCurveTL -n "frank_l_elbow_cntrl_translateZ";
	rename -uid "D20EA346-2F4B-0FB8-F46A-54B11C70A22D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 22 0 32 0 48 0 60 0;
createNode animCurveTU -n "frank_l_elbow_cntrl_scaleX";
	rename -uid "BF3BBBFF-E64C-4147-33C3-7EA3C3F3C3E3";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 22 1 32 1 48 1 60 1;
createNode animCurveTU -n "frank_l_elbow_cntrl_scaleY";
	rename -uid "8FAFBE77-2444-F7CD-0941-8FBB618D2F8E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 22 1 32 1 48 1 60 1;
createNode animCurveTU -n "frank_l_elbow_cntrl_scaleZ";
	rename -uid "F7292194-8F4E-59E8-0A8C-B2847D8E83E6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 22 1 32 1 48 1 60 1;
createNode animCurveTU -n "frank_l_wrist2_cntrl_visibility1";
	rename -uid "1D145A54-4D46-88AB-C859-EDB22D01020D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateX1";
	rename -uid "E2D72080-6A47-21E7-EDDC-CA80D6262706";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateY1";
	rename -uid "BDC34FC7-3944-2DFE-F9EC-93B79F9EC73C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_wrist2_cntrl_translateZ1";
	rename -uid "FED51D97-A64F-774F-0DF7-4C855C12D5E4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleX1";
	rename -uid "12C01556-B24B-45BE-0451-15938AC6F86A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleY1";
	rename -uid "B80F7B30-E44C-79E2-D8A0-338AA5212F35";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_wrist2_cntrl_scaleZ1";
	rename -uid "04271236-3F41-50EE-3449-36A8E813155D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_shoulder2_cntrl_visibility";
	rename -uid "57B8330E-AF49-BBEF-A7AF-B999B973D00D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_shoulder2_cntrl_translateX";
	rename -uid "66FD9E40-B246-1036-EF31-27A203C60BD8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_shoulder2_cntrl_translateY";
	rename -uid "2EABCA29-B045-87E4-3CCA-C496834C11BD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_shoulder2_cntrl_translateZ";
	rename -uid "64C16DB1-FD4E-5E13-CCF6-00904D64DFD0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_shoulder2_cntrl_scaleX";
	rename -uid "D1C745E2-8845-594C-693D-BFB3C5546633";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_shoulder2_cntrl_scaleY";
	rename -uid "E92B2CA8-704F-A529-8D2E-DF8705DBDF15";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_shoulder2_cntrl_scaleZ";
	rename -uid "272B3A89-F64D-A56E-569B-64B77FADED88";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_thumb2_cntrl_visibility";
	rename -uid "AB4032C5-AB41-177C-E785-3D965F8942C4";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_thumb2_cntrl_translateX";
	rename -uid "F6C24B5D-D248-6AC9-18B7-64824F0A0EE2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 8.8817841970012523e-016;
createNode animCurveTL -n "frank_l_thumb2_cntrl_translateY";
	rename -uid "81FCD1DC-0D4F-1CA5-FAD5-0884FAE4D64C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 8.8817841970012523e-016;
createNode animCurveTL -n "frank_l_thumb2_cntrl_translateZ";
	rename -uid "EBE781B7-634A-75CD-B2E9-019D7F1EF218";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 1.7763568394002505e-015;
createNode animCurveTU -n "frank_l_thumb2_cntrl_scaleX";
	rename -uid "CFE245F2-E74A-2B17-E8EE-CF9DCBCE94C3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_thumb2_cntrl_scaleY";
	rename -uid "A52123D8-C042-4A51-EF62-768102F06D56";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1.0000000000000002 60 1.0000000000000002;
createNode animCurveTU -n "frank_l_thumb2_cntrl_scaleZ";
	rename -uid "505F1867-3E4A-D392-F1A8-DFB46F6D1993";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb2_cntrl_visibility";
	rename -uid "9FFF94BB-AC4D-5BEC-B8CD-2EB437EADF75";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_thumb2_cntrl_translateX";
	rename -uid "C6FBFA3B-1248-6207-34A2-7A8287F819AF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_thumb2_cntrl_translateY";
	rename -uid "045B2371-4245-59BA-F155-F48D449F57E5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_thumb2_cntrl_translateZ";
	rename -uid "93801D0E-2549-866C-95F6-A3B0F3C3AE7E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_thumb2_cntrl_scaleX";
	rename -uid "AAA08913-BB44-18C0-8FDA-A1B734685753";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb2_cntrl_scaleY";
	rename -uid "24734462-7149-527A-2277-2D93656ADC43";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb2_cntrl_scaleZ";
	rename -uid "ABD2ACCE-7C40-CF63-A4CC-BDA8605763AC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb_1_cntrl_visibility";
	rename -uid "8D175FA4-0A40-7B5A-BF8E-5C9441D64E0E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_r_thumb_1_cntrl_translateX";
	rename -uid "F56DEC59-C548-4E35-89F2-989D2799EB48";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_thumb_1_cntrl_translateY";
	rename -uid "2BDD8D89-6140-E685-9B59-628C4BC1FD6F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_r_thumb_1_cntrl_translateZ";
	rename -uid "D8600E10-B848-4434-C656-F4A3E3A04B95";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_r_thumb_1_cntrl_scaleX";
	rename -uid "95D8CCC2-544D-9748-EA50-07A0D14042DB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb_1_cntrl_scaleY";
	rename -uid "CC3A64F7-584F-CDC1-2108-A8923D77FC94";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_r_thumb_1_cntrl_scaleZ";
	rename -uid "390490FE-014A-400A-367D-9B8CE5FAEB78";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_visibility1";
	rename -uid "5763BBA5-0A4C-4BC1-51B6-3BBFCCF4657F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control3_translateX1";
	rename -uid "C52FAC02-EF48-D625-90B3-6B80D22076A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control3_translateY1";
	rename -uid "25329A6E-8641-C284-B2EF-199069A52DDC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control3_translateZ1";
	rename -uid "AB6857BC-A14C-5A08-82E3-96BDD62129D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "_control3_scaleX1";
	rename -uid "5F7140AA-6547-92C2-8F9C-A58B0CACB453";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_scaleY1";
	rename -uid "BFF370E7-194C-24A1-0A9F-85AB94CE01E8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control3_scaleZ1";
	rename -uid "CC999684-C44F-E5F8-BD5F-60A53632CB59";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_visibility1";
	rename -uid "51E29833-6249-DD49-456B-D5AB78EB37DC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control2_translateX1";
	rename -uid "40867768-BD45-DEF9-C017-F5A7CFD6D62F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control2_translateY1";
	rename -uid "A860A901-2541-CE5D-9F7C-56B62FF75FE6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control2_translateZ1";
	rename -uid "9BF59206-3E4B-607B-83DB-408D2D1F5572";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "_control2_scaleX1";
	rename -uid "F43B064C-8A4A-F1D7-1A8A-1FA3B447D9FB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_scaleY1";
	rename -uid "A42D6526-9246-DEAB-6B2D-F9B14D068BA4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control2_scaleZ1";
	rename -uid "532A6C47-5E43-18CD-DBB8-4BA4B4B5A4C4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_visibility1";
	rename -uid "CA8E68EB-3544-A3F2-CC57-6A9F12AEFA65";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "_control_translateX1";
	rename -uid "B00FB4DB-E04B-3534-789B-B39919ED76C1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control_translateY1";
	rename -uid "78E00D30-F342-DAE8-A50B-B5A8B870C722";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "_control_translateZ1";
	rename -uid "504BF6E7-934A-6BE2-95C7-D987DB928C6E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "_control_scaleX1";
	rename -uid "A7160212-1A42-D985-9B25-C2AF3F592F86";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_scaleY1";
	rename -uid "D8D23F1A-7C45-C364-F871-0083D9F7CE2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "_control_scaleZ1";
	rename -uid "851B5BEC-DA46-9938-D19A-B8B2CC615337";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring1_cntrl_visibility";
	rename -uid "1B73FF19-9246-4DA3-688C-67ABF14016A1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "frank_l_ring1_cntrl_translateX";
	rename -uid "FA83365E-1540-A776-A559-CBAFBBCCC569";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring1_cntrl_translateY";
	rename -uid "BE5BB259-2D47-FFD9-C49C-F8BEB14379F4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "frank_l_ring1_cntrl_translateZ";
	rename -uid "41C26704-EB4C-9938-127F-56B7E09ACE41";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "frank_l_ring1_cntrl_scaleX";
	rename -uid "634A0666-9E4C-5934-8CA6-9599AB343E10";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring1_cntrl_scaleY";
	rename -uid "5E4EBC50-7D41-FDC0-3035-9786DCC162AD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "frank_l_ring1_cntrl_scaleZ";
	rename -uid "70E8DB77-6448-A393-84AD-A9A3CE0C535C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "28E47261-4D48-54DB-0B24-2F9DDC0F67F0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 746\n                -height 698\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 746\n            -height 698\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 698\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 746\\n    -height 698\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "314A81AB-204F-9431-7CB1-D9963E0782A6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 60 -ast 1 -aet 250 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Frank_Reference_translateX";
	rename -uid "58AC755A-3D49-F1A9-B39D-BEB226446141";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Frank_Reference_translateY";
	rename -uid "40041200-5947-0628-A3E2-48B4D6902B39";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -3.0729374801139565e-017;
createNode animCurveTL -n "Frank_Reference_translateZ";
	rename -uid "B35D3AC6-C84E-F3C6-BF41-DE916ED72417";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.069196400451870255;
createNode animCurveTL -n "frank_waist_cntrl_translateX";
	rename -uid "1733CE5D-9840-DB40-2735-5983BF5B6B55";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0.71970825917600689 22 0 35 0 60 0;
createNode animCurveTL -n "frank_waist_cntrl_translateY";
	rename -uid "3739D105-734F-7131-EC87-FCA3E4C2BA75";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 -26.040231298868399 22 -42.941342959191616
		 35 -31.302918034109638 60 0;
createNode animCurveTL -n "frank_waist_cntrl_translateZ";
	rename -uid "1F42E462-3046-DF37-680B-D4A1CCCFA747";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 1.5556395815113135 22 0 35 0 60 0;
createNode animCurveTU -n "frank_waist_cntrl_visibility";
	rename -uid "D349CDB6-3340-472E-1FDF-2EA8CD8EB60B";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 22 1 35 1 60 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "frank_waist_cntrl_rotateX";
	rename -uid "176388EB-AD4C-3536-C041-D69FF7EE4A04";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 22 0 35 0 60 0;
createNode animCurveTA -n "frank_waist_cntrl_rotateY";
	rename -uid "211FB45A-C349-2F51-71A2-91BE60A7B336";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 24.827366228283477 22 40.94128180914052
		 35 -7.0907988852276285 60 0;
createNode animCurveTA -n "frank_waist_cntrl_rotateZ";
	rename -uid "640C00A2-3D45-B77B-D9C4-7EBAEE3EBF26";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 22 0 35 0 60 0;
createNode animCurveTU -n "frank_waist_cntrl_scaleX";
	rename -uid "58A6BC1A-AF41-69D8-9578-EDA038DD0807";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 22 1 35 1 60 1;
createNode animCurveTU -n "frank_waist_cntrl_scaleY";
	rename -uid "EF930037-8445-6612-E02D-FAAAC27B4D19";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 22 1 35 1 60 1;
createNode animCurveTU -n "frank_waist_cntrl_scaleZ";
	rename -uid "FADA3813-2444-63F5-3B24-F080D1433E1C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 22 1 35 1 60 1;
createNode animCurveTU -n "Frank_Reference_visibility";
	rename -uid "9833D426-AA41-F525-6696-09B7FFC55C4D";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Frank_Reference_rotateX";
	rename -uid "A5A041BB-CB41-7071-394C-4A819EBB95C0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 90.000000000000028;
createNode animCurveTA -n "Frank_Reference_rotateY";
	rename -uid "8C1BD934-DE41-CFBA-9329-248E91743B1F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Frank_Reference_rotateZ";
	rename -uid "62CF4B40-4441-452C-A992-D59712622454";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Frank_Reference_scaleX";
	rename -uid "E144E510-674A-941A-7024-CFB45F2061A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 10.400823439264151;
createNode animCurveTU -n "Frank_Reference_scaleY";
	rename -uid "603DD0D5-5945-9311-6F91-20AE9C04D63B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 10.400823439264149;
createNode animCurveTU -n "Frank_Reference_scaleZ";
	rename -uid "8450136B-E948-09D7-5FB7-599EA17BD5AE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 10.400823439264149;
createNode animCurveTU -n "frank_up_torso_cntrl_scaleX";
	rename -uid "573C6CE9-7046-9B09-9CA0-759F9AB052F0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "frank_up_torso_cntrl_scaleY";
	rename -uid "328C524F-A845-2CA1-21FF-E193F91D5EA6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "frank_up_torso_cntrl_scaleZ";
	rename -uid "A1BC5DDC-0A49-8DD0-283F-16A44958EA8B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  16 1;
select -ne :time1;
	setAttr ".o" 60;
	setAttr ".unw" 60;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Frank_master_cntrl_rotateX.o" "troll_rig_completeRN.phl[335]";
connectAttr "Frank_master_cntrl_rotateY.o" "troll_rig_completeRN.phl[336]";
connectAttr "Frank_master_cntrl_rotateZ.o" "troll_rig_completeRN.phl[337]";
connectAttr "Frank_master_cntrl_visibility.o" "troll_rig_completeRN.phl[338]";
connectAttr "Frank_master_cntrl_translateX.o" "troll_rig_completeRN.phl[339]";
connectAttr "Frank_master_cntrl_translateY.o" "troll_rig_completeRN.phl[340]";
connectAttr "Frank_master_cntrl_translateZ.o" "troll_rig_completeRN.phl[341]";
connectAttr "Frank_master_cntrl_scaleX.o" "troll_rig_completeRN.phl[342]";
connectAttr "Frank_master_cntrl_scaleY.o" "troll_rig_completeRN.phl[343]";
connectAttr "Frank_master_cntrl_scaleZ.o" "troll_rig_completeRN.phl[344]";
connectAttr "frank_waist_cntrl_translateX.o" "troll_rig_completeRN.phl[345]";
connectAttr "frank_waist_cntrl_translateY.o" "troll_rig_completeRN.phl[346]";
connectAttr "frank_waist_cntrl_translateZ.o" "troll_rig_completeRN.phl[347]";
connectAttr "frank_waist_cntrl_rotateX.o" "troll_rig_completeRN.phl[348]";
connectAttr "frank_waist_cntrl_rotateY.o" "troll_rig_completeRN.phl[349]";
connectAttr "frank_waist_cntrl_rotateZ.o" "troll_rig_completeRN.phl[350]";
connectAttr "frank_waist_cntrl_scaleX.o" "troll_rig_completeRN.phl[351]";
connectAttr "frank_waist_cntrl_scaleY.o" "troll_rig_completeRN.phl[352]";
connectAttr "frank_waist_cntrl_scaleZ.o" "troll_rig_completeRN.phl[353]";
connectAttr "frank_waist_cntrl_visibility.o" "troll_rig_completeRN.phl[354]";
connectAttr "frank_torso_cntrl_rotateY.o" "troll_rig_completeRN.phl[355]";
connectAttr "frank_torso_cntrl_visibility.o" "troll_rig_completeRN.phl[356]";
connectAttr "frank_up_torso_cntrl_rotateY.o" "troll_rig_completeRN.phl[357]";
connectAttr "frank_up_torso_cntrl_translateX.o" "troll_rig_completeRN.phl[358]";
connectAttr "frank_up_torso_cntrl_translateY.o" "troll_rig_completeRN.phl[359]";
connectAttr "frank_up_torso_cntrl_translateZ.o" "troll_rig_completeRN.phl[360]";
connectAttr "frank_up_torso_cntrl_scaleX.o" "troll_rig_completeRN.phl[361]";
connectAttr "frank_up_torso_cntrl_scaleY.o" "troll_rig_completeRN.phl[362]";
connectAttr "frank_up_torso_cntrl_scaleZ.o" "troll_rig_completeRN.phl[363]";
connectAttr "frank_up_torso_cntrl_visibility.o" "troll_rig_completeRN.phl[364]";
connectAttr "frank_back_cntrl_translateX.o" "troll_rig_completeRN.phl[365]";
connectAttr "frank_back_cntrl_translateY.o" "troll_rig_completeRN.phl[366]";
connectAttr "frank_back_cntrl_translateZ.o" "troll_rig_completeRN.phl[367]";
connectAttr "frank_back_cntrl_rotateX.o" "troll_rig_completeRN.phl[368]";
connectAttr "frank_back_cntrl_rotateY.o" "troll_rig_completeRN.phl[369]";
connectAttr "frank_back_cntrl_rotateZ.o" "troll_rig_completeRN.phl[370]";
connectAttr "frank_back_cntrl_scaleX.o" "troll_rig_completeRN.phl[371]";
connectAttr "frank_back_cntrl_scaleY.o" "troll_rig_completeRN.phl[372]";
connectAttr "frank_back_cntrl_scaleZ.o" "troll_rig_completeRN.phl[373]";
connectAttr "frank_back_cntrl_visibility.o" "troll_rig_completeRN.phl[374]";
connectAttr "frank_chest_cntrl_translateX.o" "troll_rig_completeRN.phl[375]";
connectAttr "frank_chest_cntrl_translateY.o" "troll_rig_completeRN.phl[376]";
connectAttr "frank_chest_cntrl_translateZ.o" "troll_rig_completeRN.phl[377]";
connectAttr "frank_chest_cntrl_rotateX.o" "troll_rig_completeRN.phl[378]";
connectAttr "frank_chest_cntrl_rotateY.o" "troll_rig_completeRN.phl[379]";
connectAttr "frank_chest_cntrl_rotateZ.o" "troll_rig_completeRN.phl[380]";
connectAttr "frank_chest_cntrl_visibility.o" "troll_rig_completeRN.phl[381]";
connectAttr "frank_neck_cntrl_translateX.o" "troll_rig_completeRN.phl[382]";
connectAttr "frank_neck_cntrl_translateY.o" "troll_rig_completeRN.phl[383]";
connectAttr "frank_neck_cntrl_translateZ.o" "troll_rig_completeRN.phl[384]";
connectAttr "frank_neck_cntrl_rotateX.o" "troll_rig_completeRN.phl[385]";
connectAttr "frank_neck_cntrl_rotateY.o" "troll_rig_completeRN.phl[386]";
connectAttr "frank_neck_cntrl_rotateZ.o" "troll_rig_completeRN.phl[387]";
connectAttr "frank_neck_cntrl_scaleX.o" "troll_rig_completeRN.phl[388]";
connectAttr "frank_neck_cntrl_scaleY.o" "troll_rig_completeRN.phl[389]";
connectAttr "frank_neck_cntrl_scaleZ.o" "troll_rig_completeRN.phl[390]";
connectAttr "frank_neck_cntrl_visibility.o" "troll_rig_completeRN.phl[391]";
connectAttr "frank_jaw_cntrl_rotateX.o" "troll_rig_completeRN.phl[392]";
connectAttr "frank_jaw_cntrl_rotateY.o" "troll_rig_completeRN.phl[393]";
connectAttr "frank_jaw_cntrl_rotateZ.o" "troll_rig_completeRN.phl[394]";
connectAttr "frank_jaw_cntrl_visibility.o" "troll_rig_completeRN.phl[395]";
connectAttr "frank_jaw_cntrl_translateX.o" "troll_rig_completeRN.phl[396]";
connectAttr "frank_jaw_cntrl_translateY.o" "troll_rig_completeRN.phl[397]";
connectAttr "frank_jaw_cntrl_translateZ.o" "troll_rig_completeRN.phl[398]";
connectAttr "frank_jaw_cntrl_scaleX.o" "troll_rig_completeRN.phl[399]";
connectAttr "frank_jaw_cntrl_scaleY.o" "troll_rig_completeRN.phl[400]";
connectAttr "frank_jaw_cntrl_scaleZ.o" "troll_rig_completeRN.phl[401]";
connectAttr "frank_r_shoulder2_cntrl_translateX.o" "troll_rig_completeRN.phl[402]"
		;
connectAttr "frank_r_shoulder2_cntrl_translateY.o" "troll_rig_completeRN.phl[403]"
		;
connectAttr "frank_r_shoulder2_cntrl_translateZ.o" "troll_rig_completeRN.phl[404]"
		;
connectAttr "frank_r_shoulder2_cntrl_rotateX.o" "troll_rig_completeRN.phl[405]";
connectAttr "frank_r_shoulder2_cntrl_rotateY.o" "troll_rig_completeRN.phl[406]";
connectAttr "frank_r_shoulder2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[407]";
connectAttr "frank_r_shoulder2_cntrl_scaleX.o" "troll_rig_completeRN.phl[408]";
connectAttr "frank_r_shoulder2_cntrl_scaleY.o" "troll_rig_completeRN.phl[409]";
connectAttr "frank_r_shoulder2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[410]";
connectAttr "frank_r_shoulder2_cntrl_visibility.o" "troll_rig_completeRN.phl[411]"
		;
connectAttr "frank_r_shoulder_cntrl_translateX.o" "troll_rig_completeRN.phl[412]"
		;
connectAttr "frank_r_shoulder_cntrl_translateY.o" "troll_rig_completeRN.phl[413]"
		;
connectAttr "frank_r_shoulder_cntrl_translateZ.o" "troll_rig_completeRN.phl[414]"
		;
connectAttr "frank_r_shoulder_cntrl_rotateX.o" "troll_rig_completeRN.phl[415]";
connectAttr "frank_r_shoulder_cntrl_rotateY.o" "troll_rig_completeRN.phl[416]";
connectAttr "frank_r_shoulder_cntrl_rotateZ.o" "troll_rig_completeRN.phl[417]";
connectAttr "frank_r_shoulder_cntrl_scaleX.o" "troll_rig_completeRN.phl[418]";
connectAttr "frank_r_shoulder_cntrl_scaleY.o" "troll_rig_completeRN.phl[419]";
connectAttr "frank_r_shoulder_cntrl_scaleZ.o" "troll_rig_completeRN.phl[420]";
connectAttr "frank_r_shoulder_cntrl_visibility.o" "troll_rig_completeRN.phl[421]"
		;
connectAttr "frank_r_elbow_cntrl_translateX.o" "troll_rig_completeRN.phl[422]";
connectAttr "frank_r_elbow_cntrl_translateY.o" "troll_rig_completeRN.phl[423]";
connectAttr "frank_r_elbow_cntrl_translateZ.o" "troll_rig_completeRN.phl[424]";
connectAttr "frank_r_elbow_cntrl_rotateX.o" "troll_rig_completeRN.phl[425]";
connectAttr "frank_r_elbow_cntrl_rotateY.o" "troll_rig_completeRN.phl[426]";
connectAttr "frank_r_elbow_cntrl_rotateZ.o" "troll_rig_completeRN.phl[427]";
connectAttr "frank_r_elbow_cntrl_scaleX.o" "troll_rig_completeRN.phl[428]";
connectAttr "frank_r_elbow_cntrl_scaleY.o" "troll_rig_completeRN.phl[429]";
connectAttr "frank_r_elbow_cntrl_scaleZ.o" "troll_rig_completeRN.phl[430]";
connectAttr "frank_r_elbow_cntrl_visibility.o" "troll_rig_completeRN.phl[431]";
connectAttr "frank_l_wrist2_cntrl_translateX.o" "troll_rig_completeRN.phl[432]";
connectAttr "frank_l_wrist2_cntrl_translateY.o" "troll_rig_completeRN.phl[433]";
connectAttr "frank_l_wrist2_cntrl_translateZ.o" "troll_rig_completeRN.phl[434]";
connectAttr "frank_l_wrist2_cntrl_rotateX1.o" "troll_rig_completeRN.phl[435]";
connectAttr "frank_l_wrist2_cntrl_rotateY1.o" "troll_rig_completeRN.phl[436]";
connectAttr "frank_l_wrist2_cntrl_rotateZ1.o" "troll_rig_completeRN.phl[437]";
connectAttr "frank_l_wrist2_cntrl_scaleX.o" "troll_rig_completeRN.phl[438]";
connectAttr "frank_l_wrist2_cntrl_scaleY.o" "troll_rig_completeRN.phl[439]";
connectAttr "frank_l_wrist2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[440]";
connectAttr "frank_l_wrist2_cntrl_visibility.o" "troll_rig_completeRN.phl[441]";
connectAttr "frank_r_wrist_cntrl_translateX.o" "troll_rig_completeRN.phl[442]";
connectAttr "frank_r_wrist_cntrl_translateY.o" "troll_rig_completeRN.phl[443]";
connectAttr "frank_r_wrist_cntrl_translateZ.o" "troll_rig_completeRN.phl[444]";
connectAttr "frank_r_wrist_cntrl_rotateX.o" "troll_rig_completeRN.phl[445]";
connectAttr "frank_r_wrist_cntrl_rotateY.o" "troll_rig_completeRN.phl[446]";
connectAttr "frank_r_wrist_cntrl_rotateZ.o" "troll_rig_completeRN.phl[447]";
connectAttr "frank_r_wrist_cntrl_scaleX.o" "troll_rig_completeRN.phl[448]";
connectAttr "frank_r_wrist_cntrl_scaleY.o" "troll_rig_completeRN.phl[449]";
connectAttr "frank_r_wrist_cntrl_scaleZ.o" "troll_rig_completeRN.phl[450]";
connectAttr "frank_r_wrist_cntrl_visibility.o" "troll_rig_completeRN.phl[451]";
connectAttr "frank_r_ring1_cntrl_translateX.o" "troll_rig_completeRN.phl[452]";
connectAttr "frank_r_ring1_cntrl_translateY.o" "troll_rig_completeRN.phl[453]";
connectAttr "frank_r_ring1_cntrl_translateZ.o" "troll_rig_completeRN.phl[454]";
connectAttr "frank_r_ring1_cntrl_rotateX.o" "troll_rig_completeRN.phl[455]";
connectAttr "frank_r_ring1_cntrl_rotateY.o" "troll_rig_completeRN.phl[456]";
connectAttr "frank_r_ring1_cntrl_rotateZ.o" "troll_rig_completeRN.phl[457]";
connectAttr "frank_r_ring1_cntrl_scaleX.o" "troll_rig_completeRN.phl[458]";
connectAttr "frank_r_ring1_cntrl_scaleY.o" "troll_rig_completeRN.phl[459]";
connectAttr "frank_r_ring1_cntrl_scaleZ.o" "troll_rig_completeRN.phl[460]";
connectAttr "frank_r_ring1_cntrl_visibility.o" "troll_rig_completeRN.phl[461]";
connectAttr "frank_r_ring2_cntrl_translateX.o" "troll_rig_completeRN.phl[462]";
connectAttr "frank_r_ring2_cntrl_translateY.o" "troll_rig_completeRN.phl[463]";
connectAttr "frank_r_ring2_cntrl_translateZ.o" "troll_rig_completeRN.phl[464]";
connectAttr "frank_r_ring2_cntrl_rotateX.o" "troll_rig_completeRN.phl[465]";
connectAttr "frank_r_ring2_cntrl_rotateY.o" "troll_rig_completeRN.phl[466]";
connectAttr "frank_r_ring2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[467]";
connectAttr "frank_r_ring2_cntrl_scaleX.o" "troll_rig_completeRN.phl[468]";
connectAttr "frank_r_ring2_cntrl_scaleY.o" "troll_rig_completeRN.phl[469]";
connectAttr "frank_r_ring2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[470]";
connectAttr "frank_r_ring2_cntrl_visibility.o" "troll_rig_completeRN.phl[471]";
connectAttr "frank_r_ring3_cntrl_translateX.o" "troll_rig_completeRN.phl[472]";
connectAttr "frank_r_ring3_cntrl_translateY.o" "troll_rig_completeRN.phl[473]";
connectAttr "frank_r_ring3_cntrl_translateZ.o" "troll_rig_completeRN.phl[474]";
connectAttr "frank_r_ring3_cntrl_rotateX.o" "troll_rig_completeRN.phl[475]";
connectAttr "frank_r_ring3_cntrl_rotateY.o" "troll_rig_completeRN.phl[476]";
connectAttr "frank_r_ring3_cntrl_rotateZ.o" "troll_rig_completeRN.phl[477]";
connectAttr "frank_r_ring3_cntrl_scaleX.o" "troll_rig_completeRN.phl[478]";
connectAttr "frank_r_ring3_cntrl_scaleY.o" "troll_rig_completeRN.phl[479]";
connectAttr "frank_r_ring3_cntrl_scaleZ.o" "troll_rig_completeRN.phl[480]";
connectAttr "frank_r_ring3_cntrl_visibility.o" "troll_rig_completeRN.phl[481]";
connectAttr "_control_translateX.o" "troll_rig_completeRN.phl[482]";
connectAttr "_control_translateY.o" "troll_rig_completeRN.phl[483]";
connectAttr "_control_translateZ.o" "troll_rig_completeRN.phl[484]";
connectAttr "_control_rotateX1.o" "troll_rig_completeRN.phl[485]";
connectAttr "_control_rotateY1.o" "troll_rig_completeRN.phl[486]";
connectAttr "_control_rotateZ1.o" "troll_rig_completeRN.phl[487]";
connectAttr "_control_scaleX.o" "troll_rig_completeRN.phl[488]";
connectAttr "_control_scaleY.o" "troll_rig_completeRN.phl[489]";
connectAttr "_control_scaleZ.o" "troll_rig_completeRN.phl[490]";
connectAttr "_control_visibility.o" "troll_rig_completeRN.phl[491]";
connectAttr "_control2_translateX.o" "troll_rig_completeRN.phl[492]";
connectAttr "_control2_translateY.o" "troll_rig_completeRN.phl[493]";
connectAttr "_control2_translateZ.o" "troll_rig_completeRN.phl[494]";
connectAttr "_control2_rotateX1.o" "troll_rig_completeRN.phl[495]";
connectAttr "_control2_rotateY1.o" "troll_rig_completeRN.phl[496]";
connectAttr "_control2_rotateZ1.o" "troll_rig_completeRN.phl[497]";
connectAttr "_control2_scaleX.o" "troll_rig_completeRN.phl[498]";
connectAttr "_control2_scaleY.o" "troll_rig_completeRN.phl[499]";
connectAttr "_control2_scaleZ.o" "troll_rig_completeRN.phl[500]";
connectAttr "_control2_visibility.o" "troll_rig_completeRN.phl[501]";
connectAttr "_control3_translateX.o" "troll_rig_completeRN.phl[502]";
connectAttr "_control3_translateY.o" "troll_rig_completeRN.phl[503]";
connectAttr "_control3_translateZ.o" "troll_rig_completeRN.phl[504]";
connectAttr "_control3_rotateX1.o" "troll_rig_completeRN.phl[505]";
connectAttr "_control3_rotateY1.o" "troll_rig_completeRN.phl[506]";
connectAttr "_control3_rotateZ1.o" "troll_rig_completeRN.phl[507]";
connectAttr "_control3_scaleX.o" "troll_rig_completeRN.phl[508]";
connectAttr "_control3_scaleY.o" "troll_rig_completeRN.phl[509]";
connectAttr "_control3_scaleZ.o" "troll_rig_completeRN.phl[510]";
connectAttr "_control3_visibility.o" "troll_rig_completeRN.phl[511]";
connectAttr "frank_l_thumb_1_cntrl_translateX.o" "troll_rig_completeRN.phl[512]"
		;
connectAttr "frank_l_thumb_1_cntrl_translateY.o" "troll_rig_completeRN.phl[513]"
		;
connectAttr "frank_l_thumb_1_cntrl_translateZ.o" "troll_rig_completeRN.phl[514]"
		;
connectAttr "frank_l_thumb_1_cntrl_rotateX.o" "troll_rig_completeRN.phl[515]";
connectAttr "frank_l_thumb_1_cntrl_rotateY.o" "troll_rig_completeRN.phl[516]";
connectAttr "frank_l_thumb_1_cntrl_rotateZ.o" "troll_rig_completeRN.phl[517]";
connectAttr "frank_l_thumb_1_cntrl_scaleX.o" "troll_rig_completeRN.phl[518]";
connectAttr "frank_l_thumb_1_cntrl_scaleY.o" "troll_rig_completeRN.phl[519]";
connectAttr "frank_l_thumb_1_cntrl_scaleZ.o" "troll_rig_completeRN.phl[520]";
connectAttr "frank_l_thumb_1_cntrl_visibility.o" "troll_rig_completeRN.phl[521]"
		;
connectAttr "frank_l_thumb2_cntrl_translateX.o" "troll_rig_completeRN.phl[522]";
connectAttr "frank_l_thumb2_cntrl_translateY.o" "troll_rig_completeRN.phl[523]";
connectAttr "frank_l_thumb2_cntrl_translateZ.o" "troll_rig_completeRN.phl[524]";
connectAttr "frank_l_thumb2_cntrl_rotateX.o" "troll_rig_completeRN.phl[525]";
connectAttr "frank_l_thumb2_cntrl_rotateY.o" "troll_rig_completeRN.phl[526]";
connectAttr "frank_l_thumb2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[527]";
connectAttr "frank_l_thumb2_cntrl_scaleX.o" "troll_rig_completeRN.phl[528]";
connectAttr "frank_l_thumb2_cntrl_scaleY.o" "troll_rig_completeRN.phl[529]";
connectAttr "frank_l_thumb2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[530]";
connectAttr "frank_l_thumb2_cntrl_visibility.o" "troll_rig_completeRN.phl[531]";
connectAttr "frank_l_shoulder2_cntrl_translateX.o" "troll_rig_completeRN.phl[532]"
		;
connectAttr "frank_l_shoulder2_cntrl_translateY.o" "troll_rig_completeRN.phl[533]"
		;
connectAttr "frank_l_shoulder2_cntrl_translateZ.o" "troll_rig_completeRN.phl[534]"
		;
connectAttr "frank_l_shoulder2_cntrl_rotateX.o" "troll_rig_completeRN.phl[535]";
connectAttr "frank_l_shoulder2_cntrl_rotateY.o" "troll_rig_completeRN.phl[536]";
connectAttr "frank_l_shoulder2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[537]";
connectAttr "frank_l_shoulder2_cntrl_scaleX.o" "troll_rig_completeRN.phl[538]";
connectAttr "frank_l_shoulder2_cntrl_scaleY.o" "troll_rig_completeRN.phl[539]";
connectAttr "frank_l_shoulder2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[540]";
connectAttr "frank_l_shoulder2_cntrl_visibility.o" "troll_rig_completeRN.phl[541]"
		;
connectAttr "frank_l_shoulder_cntrl_translateX.o" "troll_rig_completeRN.phl[542]"
		;
connectAttr "frank_l_shoulder_cntrl_translateY.o" "troll_rig_completeRN.phl[543]"
		;
connectAttr "frank_l_shoulder_cntrl_translateZ.o" "troll_rig_completeRN.phl[544]"
		;
connectAttr "frank_l_shoulder_cntrl_rotateX.o" "troll_rig_completeRN.phl[545]";
connectAttr "frank_l_shoulder_cntrl_rotateY.o" "troll_rig_completeRN.phl[546]";
connectAttr "frank_l_shoulder_cntrl_rotateZ.o" "troll_rig_completeRN.phl[547]";
connectAttr "frank_l_shoulder_cntrl_scaleX.o" "troll_rig_completeRN.phl[548]";
connectAttr "frank_l_shoulder_cntrl_scaleY.o" "troll_rig_completeRN.phl[549]";
connectAttr "frank_l_shoulder_cntrl_scaleZ.o" "troll_rig_completeRN.phl[550]";
connectAttr "frank_l_shoulder_cntrl_visibility.o" "troll_rig_completeRN.phl[551]"
		;
connectAttr "frank_l_elbow_cntrl_translateX.o" "troll_rig_completeRN.phl[552]";
connectAttr "frank_l_elbow_cntrl_translateY.o" "troll_rig_completeRN.phl[553]";
connectAttr "frank_l_elbow_cntrl_translateZ.o" "troll_rig_completeRN.phl[554]";
connectAttr "frank_l_elbow_cntrl_rotateX.o" "troll_rig_completeRN.phl[555]";
connectAttr "frank_l_elbow_cntrl_rotateY.o" "troll_rig_completeRN.phl[556]";
connectAttr "frank_l_elbow_cntrl_rotateZ.o" "troll_rig_completeRN.phl[557]";
connectAttr "frank_l_elbow_cntrl_scaleX.o" "troll_rig_completeRN.phl[558]";
connectAttr "frank_l_elbow_cntrl_scaleY.o" "troll_rig_completeRN.phl[559]";
connectAttr "frank_l_elbow_cntrl_scaleZ.o" "troll_rig_completeRN.phl[560]";
connectAttr "frank_l_elbow_cntrl_visibility.o" "troll_rig_completeRN.phl[561]";
connectAttr "frank_l_wrist2_cntrl_translateX1.o" "troll_rig_completeRN.phl[562]"
		;
connectAttr "frank_l_wrist2_cntrl_translateY1.o" "troll_rig_completeRN.phl[563]"
		;
connectAttr "frank_l_wrist2_cntrl_translateZ1.o" "troll_rig_completeRN.phl[564]"
		;
connectAttr "frank_l_wrist2_cntrl_rotateX.o" "troll_rig_completeRN.phl[565]";
connectAttr "frank_l_wrist2_cntrl_rotateY.o" "troll_rig_completeRN.phl[566]";
connectAttr "frank_l_wrist2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[567]";
connectAttr "frank_l_wrist2_cntrl_scaleX1.o" "troll_rig_completeRN.phl[568]";
connectAttr "frank_l_wrist2_cntrl_scaleY1.o" "troll_rig_completeRN.phl[569]";
connectAttr "frank_l_wrist2_cntrl_scaleZ1.o" "troll_rig_completeRN.phl[570]";
connectAttr "frank_l_wrist2_cntrl_visibility1.o" "troll_rig_completeRN.phl[571]"
		;
connectAttr "frank_l_wrist_cntrl_translateX.o" "troll_rig_completeRN.phl[572]";
connectAttr "frank_l_wrist_cntrl_translateY.o" "troll_rig_completeRN.phl[573]";
connectAttr "frank_l_wrist_cntrl_translateZ.o" "troll_rig_completeRN.phl[574]";
connectAttr "frank_l_wrist_cntrl_rotateX.o" "troll_rig_completeRN.phl[575]";
connectAttr "frank_l_wrist_cntrl_rotateY.o" "troll_rig_completeRN.phl[576]";
connectAttr "frank_l_wrist_cntrl_rotateZ.o" "troll_rig_completeRN.phl[577]";
connectAttr "frank_l_wrist_cntrl_scaleX.o" "troll_rig_completeRN.phl[578]";
connectAttr "frank_l_wrist_cntrl_scaleY.o" "troll_rig_completeRN.phl[579]";
connectAttr "frank_l_wrist_cntrl_scaleZ.o" "troll_rig_completeRN.phl[580]";
connectAttr "frank_l_wrist_cntrl_visibility.o" "troll_rig_completeRN.phl[581]";
connectAttr "frank_l_ring3_cntrl_translateX.o" "troll_rig_completeRN.phl[582]";
connectAttr "frank_l_ring3_cntrl_translateY.o" "troll_rig_completeRN.phl[583]";
connectAttr "frank_l_ring3_cntrl_translateZ.o" "troll_rig_completeRN.phl[584]";
connectAttr "frank_l_ring3_cntrl_rotateX.o" "troll_rig_completeRN.phl[585]";
connectAttr "frank_l_ring3_cntrl_rotateY.o" "troll_rig_completeRN.phl[586]";
connectAttr "frank_l_ring3_cntrl_rotateZ.o" "troll_rig_completeRN.phl[587]";
connectAttr "frank_l_ring3_cntrl_scaleX.o" "troll_rig_completeRN.phl[588]";
connectAttr "frank_l_ring3_cntrl_scaleY.o" "troll_rig_completeRN.phl[589]";
connectAttr "frank_l_ring3_cntrl_scaleZ.o" "troll_rig_completeRN.phl[590]";
connectAttr "frank_l_ring3_cntrl_visibility.o" "troll_rig_completeRN.phl[591]";
connectAttr "frank_l_ring2_cntrl_translateX.o" "troll_rig_completeRN.phl[592]";
connectAttr "frank_l_ring2_cntrl_translateY.o" "troll_rig_completeRN.phl[593]";
connectAttr "frank_l_ring2_cntrl_translateZ.o" "troll_rig_completeRN.phl[594]";
connectAttr "frank_l_ring2_cntrl_rotateX.o" "troll_rig_completeRN.phl[595]";
connectAttr "frank_l_ring2_cntrl_rotateY.o" "troll_rig_completeRN.phl[596]";
connectAttr "frank_l_ring2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[597]";
connectAttr "frank_l_ring2_cntrl_scaleX.o" "troll_rig_completeRN.phl[598]";
connectAttr "frank_l_ring2_cntrl_scaleY.o" "troll_rig_completeRN.phl[599]";
connectAttr "frank_l_ring2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[600]";
connectAttr "frank_l_ring2_cntrl_visibility.o" "troll_rig_completeRN.phl[601]";
connectAttr "frank_l_ring1_cntrl_translateX.o" "troll_rig_completeRN.phl[602]";
connectAttr "frank_l_ring1_cntrl_translateY.o" "troll_rig_completeRN.phl[603]";
connectAttr "frank_l_ring1_cntrl_translateZ.o" "troll_rig_completeRN.phl[604]";
connectAttr "frank_l_ring1_cntrl_rotateX.o" "troll_rig_completeRN.phl[605]";
connectAttr "frank_l_ring1_cntrl_rotateY.o" "troll_rig_completeRN.phl[606]";
connectAttr "frank_l_ring1_cntrl_rotateZ.o" "troll_rig_completeRN.phl[607]";
connectAttr "frank_l_ring1_cntrl_scaleX.o" "troll_rig_completeRN.phl[608]";
connectAttr "frank_l_ring1_cntrl_scaleY.o" "troll_rig_completeRN.phl[609]";
connectAttr "frank_l_ring1_cntrl_scaleZ.o" "troll_rig_completeRN.phl[610]";
connectAttr "frank_l_ring1_cntrl_visibility.o" "troll_rig_completeRN.phl[611]";
connectAttr "_control_translateX1.o" "troll_rig_completeRN.phl[612]";
connectAttr "_control_translateY1.o" "troll_rig_completeRN.phl[613]";
connectAttr "_control_translateZ1.o" "troll_rig_completeRN.phl[614]";
connectAttr "_control_rotateX.o" "troll_rig_completeRN.phl[615]";
connectAttr "_control_rotateY.o" "troll_rig_completeRN.phl[616]";
connectAttr "_control_rotateZ.o" "troll_rig_completeRN.phl[617]";
connectAttr "_control_scaleX1.o" "troll_rig_completeRN.phl[618]";
connectAttr "_control_scaleY1.o" "troll_rig_completeRN.phl[619]";
connectAttr "_control_scaleZ1.o" "troll_rig_completeRN.phl[620]";
connectAttr "_control_visibility1.o" "troll_rig_completeRN.phl[621]";
connectAttr "_control2_translateX1.o" "troll_rig_completeRN.phl[622]";
connectAttr "_control2_translateY1.o" "troll_rig_completeRN.phl[623]";
connectAttr "_control2_translateZ1.o" "troll_rig_completeRN.phl[624]";
connectAttr "_control2_rotateX.o" "troll_rig_completeRN.phl[625]";
connectAttr "_control2_rotateY.o" "troll_rig_completeRN.phl[626]";
connectAttr "_control2_rotateZ.o" "troll_rig_completeRN.phl[627]";
connectAttr "_control2_scaleX1.o" "troll_rig_completeRN.phl[628]";
connectAttr "_control2_scaleY1.o" "troll_rig_completeRN.phl[629]";
connectAttr "_control2_scaleZ1.o" "troll_rig_completeRN.phl[630]";
connectAttr "_control2_visibility1.o" "troll_rig_completeRN.phl[631]";
connectAttr "_control3_translateX1.o" "troll_rig_completeRN.phl[632]";
connectAttr "_control3_translateY1.o" "troll_rig_completeRN.phl[633]";
connectAttr "_control3_translateZ1.o" "troll_rig_completeRN.phl[634]";
connectAttr "_control3_rotateX.o" "troll_rig_completeRN.phl[635]";
connectAttr "_control3_rotateY.o" "troll_rig_completeRN.phl[636]";
connectAttr "_control3_rotateZ.o" "troll_rig_completeRN.phl[637]";
connectAttr "_control3_scaleX1.o" "troll_rig_completeRN.phl[638]";
connectAttr "_control3_scaleY1.o" "troll_rig_completeRN.phl[639]";
connectAttr "_control3_scaleZ1.o" "troll_rig_completeRN.phl[640]";
connectAttr "_control3_visibility1.o" "troll_rig_completeRN.phl[641]";
connectAttr "frank_r_thumb_1_cntrl_translateX.o" "troll_rig_completeRN.phl[642]"
		;
connectAttr "frank_r_thumb_1_cntrl_translateY.o" "troll_rig_completeRN.phl[643]"
		;
connectAttr "frank_r_thumb_1_cntrl_translateZ.o" "troll_rig_completeRN.phl[644]"
		;
connectAttr "frank_r_thumb_1_cntrl_rotateX.o" "troll_rig_completeRN.phl[645]";
connectAttr "frank_r_thumb_1_cntrl_rotateY.o" "troll_rig_completeRN.phl[646]";
connectAttr "frank_r_thumb_1_cntrl_rotateZ.o" "troll_rig_completeRN.phl[647]";
connectAttr "frank_r_thumb_1_cntrl_scaleX.o" "troll_rig_completeRN.phl[648]";
connectAttr "frank_r_thumb_1_cntrl_scaleY.o" "troll_rig_completeRN.phl[649]";
connectAttr "frank_r_thumb_1_cntrl_scaleZ.o" "troll_rig_completeRN.phl[650]";
connectAttr "frank_r_thumb_1_cntrl_visibility.o" "troll_rig_completeRN.phl[651]"
		;
connectAttr "frank_r_thumb2_cntrl_translateX.o" "troll_rig_completeRN.phl[652]";
connectAttr "frank_r_thumb2_cntrl_translateY.o" "troll_rig_completeRN.phl[653]";
connectAttr "frank_r_thumb2_cntrl_translateZ.o" "troll_rig_completeRN.phl[654]";
connectAttr "frank_r_thumb2_cntrl_rotateX.o" "troll_rig_completeRN.phl[655]";
connectAttr "frank_r_thumb2_cntrl_rotateY.o" "troll_rig_completeRN.phl[656]";
connectAttr "frank_r_thumb2_cntrl_rotateZ.o" "troll_rig_completeRN.phl[657]";
connectAttr "frank_r_thumb2_cntrl_scaleX.o" "troll_rig_completeRN.phl[658]";
connectAttr "frank_r_thumb2_cntrl_scaleY.o" "troll_rig_completeRN.phl[659]";
connectAttr "frank_r_thumb2_cntrl_scaleZ.o" "troll_rig_completeRN.phl[660]";
connectAttr "frank_r_thumb2_cntrl_visibility.o" "troll_rig_completeRN.phl[661]";
connectAttr "frank_r_hip_cntrl_translateX.o" "troll_rig_completeRN.phl[662]";
connectAttr "frank_r_hip_cntrl_translateY.o" "troll_rig_completeRN.phl[663]";
connectAttr "frank_r_hip_cntrl_translateZ.o" "troll_rig_completeRN.phl[664]";
connectAttr "frank_r_hip_cntrl_rotateX.o" "troll_rig_completeRN.phl[665]";
connectAttr "frank_r_hip_cntrl_rotateY.o" "troll_rig_completeRN.phl[666]";
connectAttr "frank_r_hip_cntrl_rotateZ.o" "troll_rig_completeRN.phl[667]";
connectAttr "frank_r_hip_cntrl_scaleX.o" "troll_rig_completeRN.phl[668]";
connectAttr "frank_r_hip_cntrl_scaleY.o" "troll_rig_completeRN.phl[669]";
connectAttr "frank_r_hip_cntrl_scaleZ.o" "troll_rig_completeRN.phl[670]";
connectAttr "frank_r_hip_cntrl_visibility.o" "troll_rig_completeRN.phl[671]";
connectAttr "frank_pntr_cntrl_translateX1.o" "troll_rig_completeRN.phl[672]";
connectAttr "frank_pntr_cntrl_translateY1.o" "troll_rig_completeRN.phl[673]";
connectAttr "frank_pntr_cntrl_translateZ1.o" "troll_rig_completeRN.phl[674]";
connectAttr "frank_pntr_cntrl_visibility1.o" "troll_rig_completeRN.phl[675]";
connectAttr "frank_pntr_cntrl_rotateX1.o" "troll_rig_completeRN.phl[676]";
connectAttr "frank_pntr_cntrl_rotateY1.o" "troll_rig_completeRN.phl[677]";
connectAttr "frank_pntr_cntrl_rotateZ1.o" "troll_rig_completeRN.phl[678]";
connectAttr "frank_pntr_cntrl_scaleX1.o" "troll_rig_completeRN.phl[679]";
connectAttr "frank_pntr_cntrl_scaleY1.o" "troll_rig_completeRN.phl[680]";
connectAttr "frank_pntr_cntrl_scaleZ1.o" "troll_rig_completeRN.phl[681]";
connectAttr "frank_l_hip_cntrl_translateX.o" "troll_rig_completeRN.phl[682]";
connectAttr "frank_l_hip_cntrl_translateY.o" "troll_rig_completeRN.phl[683]";
connectAttr "frank_l_hip_cntrl_translateZ.o" "troll_rig_completeRN.phl[684]";
connectAttr "frank_l_hip_cntrl_rotateX.o" "troll_rig_completeRN.phl[685]";
connectAttr "frank_l_hip_cntrl_rotateY.o" "troll_rig_completeRN.phl[686]";
connectAttr "frank_l_hip_cntrl_rotateZ.o" "troll_rig_completeRN.phl[687]";
connectAttr "frank_l_hip_cntrl_scaleX.o" "troll_rig_completeRN.phl[688]";
connectAttr "frank_l_hip_cntrl_scaleY.o" "troll_rig_completeRN.phl[689]";
connectAttr "frank_l_hip_cntrl_scaleZ.o" "troll_rig_completeRN.phl[690]";
connectAttr "frank_l_hip_cntrl_visibility.o" "troll_rig_completeRN.phl[691]";
connectAttr "frank_pntr_cntrl_translateX.o" "troll_rig_completeRN.phl[692]";
connectAttr "frank_pntr_cntrl_translateY.o" "troll_rig_completeRN.phl[693]";
connectAttr "frank_pntr_cntrl_translateZ.o" "troll_rig_completeRN.phl[694]";
connectAttr "frank_pntr_cntrl_rotateX.o" "troll_rig_completeRN.phl[695]";
connectAttr "frank_pntr_cntrl_rotateY.o" "troll_rig_completeRN.phl[696]";
connectAttr "frank_pntr_cntrl_rotateZ.o" "troll_rig_completeRN.phl[697]";
connectAttr "frank_pntr_cntrl_visibility.o" "troll_rig_completeRN.phl[698]";
connectAttr "frank_pntr_cntrl_scaleX.o" "troll_rig_completeRN.phl[699]";
connectAttr "frank_pntr_cntrl_scaleY.o" "troll_rig_completeRN.phl[700]";
connectAttr "frank_pntr_cntrl_scaleZ.o" "troll_rig_completeRN.phl[701]";
connectAttr "frank_r_foot_cntrl_translateX.o" "troll_rig_completeRN.phl[702]";
connectAttr "frank_r_foot_cntrl_translateY.o" "troll_rig_completeRN.phl[703]";
connectAttr "frank_r_foot_cntrl_translateZ.o" "troll_rig_completeRN.phl[704]";
connectAttr "frank_r_foot_cntrl_rotateX.o" "troll_rig_completeRN.phl[705]";
connectAttr "frank_r_foot_cntrl_rotateY.o" "troll_rig_completeRN.phl[706]";
connectAttr "frank_r_foot_cntrl_rotateZ.o" "troll_rig_completeRN.phl[707]";
connectAttr "frank_r_foot_cntrl_scaleX.o" "troll_rig_completeRN.phl[708]";
connectAttr "frank_r_foot_cntrl_scaleY.o" "troll_rig_completeRN.phl[709]";
connectAttr "frank_r_foot_cntrl_scaleZ.o" "troll_rig_completeRN.phl[710]";
connectAttr "frank_r_foot_cntrl_visibility.o" "troll_rig_completeRN.phl[711]";
connectAttr "frank_r_small_toe_cntrl_translateX.o" "troll_rig_completeRN.phl[712]"
		;
connectAttr "frank_r_small_toe_cntrl_translateY.o" "troll_rig_completeRN.phl[713]"
		;
connectAttr "frank_r_small_toe_cntrl_translateZ.o" "troll_rig_completeRN.phl[714]"
		;
connectAttr "frank_r_small_toe_cntrl_rotateX.o" "troll_rig_completeRN.phl[715]";
connectAttr "frank_r_small_toe_cntrl_rotateY.o" "troll_rig_completeRN.phl[716]";
connectAttr "frank_r_small_toe_cntrl_rotateZ.o" "troll_rig_completeRN.phl[717]";
connectAttr "frank_r_small_toe_cntrl_scaleX.o" "troll_rig_completeRN.phl[718]";
connectAttr "frank_r_small_toe_cntrl_scaleY.o" "troll_rig_completeRN.phl[719]";
connectAttr "frank_r_small_toe_cntrl_scaleZ.o" "troll_rig_completeRN.phl[720]";
connectAttr "frank_r_small_toe_cntrl_visibility.o" "troll_rig_completeRN.phl[721]"
		;
connectAttr "frank_r_toe_cntrl_translateX.o" "troll_rig_completeRN.phl[722]";
connectAttr "frank_r_toe_cntrl_translateY.o" "troll_rig_completeRN.phl[723]";
connectAttr "frank_r_toe_cntrl_translateZ.o" "troll_rig_completeRN.phl[724]";
connectAttr "frank_r_toe_cntrl_rotateX.o" "troll_rig_completeRN.phl[725]";
connectAttr "frank_r_toe_cntrl_rotateY.o" "troll_rig_completeRN.phl[726]";
connectAttr "frank_r_toe_cntrl_rotateZ.o" "troll_rig_completeRN.phl[727]";
connectAttr "frank_r_toe_cntrl_scaleX.o" "troll_rig_completeRN.phl[728]";
connectAttr "frank_r_toe_cntrl_scaleY.o" "troll_rig_completeRN.phl[729]";
connectAttr "frank_r_toe_cntrl_scaleZ.o" "troll_rig_completeRN.phl[730]";
connectAttr "frank_r_toe_cntrl_visibility.o" "troll_rig_completeRN.phl[731]";
connectAttr "frank_r_toethumb_cntrl_translateX.o" "troll_rig_completeRN.phl[732]"
		;
connectAttr "frank_r_toethumb_cntrl_translateY.o" "troll_rig_completeRN.phl[733]"
		;
connectAttr "frank_r_toethumb_cntrl_translateZ.o" "troll_rig_completeRN.phl[734]"
		;
connectAttr "frank_r_toethumb_cntrl_rotateX.o" "troll_rig_completeRN.phl[735]";
connectAttr "frank_r_toethumb_cntrl_rotateY.o" "troll_rig_completeRN.phl[736]";
connectAttr "frank_r_toethumb_cntrl_rotateZ.o" "troll_rig_completeRN.phl[737]";
connectAttr "frank_r_toethumb_cntrl_scaleX.o" "troll_rig_completeRN.phl[738]";
connectAttr "frank_r_toethumb_cntrl_scaleY.o" "troll_rig_completeRN.phl[739]";
connectAttr "frank_r_toethumb_cntrl_scaleZ.o" "troll_rig_completeRN.phl[740]";
connectAttr "frank_r_toethumb_cntrl_visibility.o" "troll_rig_completeRN.phl[741]"
		;
connectAttr "frank_l_foot_cntrl_translateX.o" "troll_rig_completeRN.phl[742]";
connectAttr "frank_l_foot_cntrl_translateY.o" "troll_rig_completeRN.phl[743]";
connectAttr "frank_l_foot_cntrl_translateZ.o" "troll_rig_completeRN.phl[744]";
connectAttr "frank_l_foot_cntrl_rotateX.o" "troll_rig_completeRN.phl[745]";
connectAttr "frank_l_foot_cntrl_rotateY.o" "troll_rig_completeRN.phl[746]";
connectAttr "frank_l_foot_cntrl_rotateZ.o" "troll_rig_completeRN.phl[747]";
connectAttr "frank_l_foot_cntrl_scaleX.o" "troll_rig_completeRN.phl[748]";
connectAttr "frank_l_foot_cntrl_scaleY.o" "troll_rig_completeRN.phl[749]";
connectAttr "frank_l_foot_cntrl_scaleZ.o" "troll_rig_completeRN.phl[750]";
connectAttr "frank_l_foot_cntrl_visibility.o" "troll_rig_completeRN.phl[751]";
connectAttr "frank_l_small_toe_cntrl_translateX.o" "troll_rig_completeRN.phl[752]"
		;
connectAttr "frank_l_small_toe_cntrl_translateY.o" "troll_rig_completeRN.phl[753]"
		;
connectAttr "frank_l_small_toe_cntrl_translateZ.o" "troll_rig_completeRN.phl[754]"
		;
connectAttr "frank_l_small_toe_cntrl_rotateX.o" "troll_rig_completeRN.phl[755]";
connectAttr "frank_l_small_toe_cntrl_rotateY.o" "troll_rig_completeRN.phl[756]";
connectAttr "frank_l_small_toe_cntrl_rotateZ.o" "troll_rig_completeRN.phl[757]";
connectAttr "frank_l_small_toe_cntrl_scaleX.o" "troll_rig_completeRN.phl[758]";
connectAttr "frank_l_small_toe_cntrl_scaleY.o" "troll_rig_completeRN.phl[759]";
connectAttr "frank_l_small_toe_cntrl_scaleZ.o" "troll_rig_completeRN.phl[760]";
connectAttr "frank_l_small_toe_cntrl_visibility.o" "troll_rig_completeRN.phl[761]"
		;
connectAttr "frank_l_toe_cntrl_translateX.o" "troll_rig_completeRN.phl[762]";
connectAttr "frank_l_toe_cntrl_translateY.o" "troll_rig_completeRN.phl[763]";
connectAttr "frank_l_toe_cntrl_translateZ.o" "troll_rig_completeRN.phl[764]";
connectAttr "frank_l_toe_cntrl_rotateX.o" "troll_rig_completeRN.phl[765]";
connectAttr "frank_l_toe_cntrl_rotateY.o" "troll_rig_completeRN.phl[766]";
connectAttr "frank_l_toe_cntrl_rotateZ.o" "troll_rig_completeRN.phl[767]";
connectAttr "frank_l_toe_cntrl_scaleX.o" "troll_rig_completeRN.phl[768]";
connectAttr "frank_l_toe_cntrl_scaleY.o" "troll_rig_completeRN.phl[769]";
connectAttr "frank_l_toe_cntrl_scaleZ.o" "troll_rig_completeRN.phl[770]";
connectAttr "frank_l_toe_cntrl_visibility.o" "troll_rig_completeRN.phl[771]";
connectAttr "frank_l_toethumb_cntrl_translateX.o" "troll_rig_completeRN.phl[772]"
		;
connectAttr "frank_l_toethumb_cntrl_translateY.o" "troll_rig_completeRN.phl[773]"
		;
connectAttr "frank_l_toethumb_cntrl_translateZ.o" "troll_rig_completeRN.phl[774]"
		;
connectAttr "frank_l_toethumb_cntrl_rotateX.o" "troll_rig_completeRN.phl[775]";
connectAttr "frank_l_toethumb_cntrl_rotateY.o" "troll_rig_completeRN.phl[776]";
connectAttr "frank_l_toethumb_cntrl_rotateZ.o" "troll_rig_completeRN.phl[777]";
connectAttr "frank_l_toethumb_cntrl_scaleX.o" "troll_rig_completeRN.phl[778]";
connectAttr "frank_l_toethumb_cntrl_scaleY.o" "troll_rig_completeRN.phl[779]";
connectAttr "frank_l_toethumb_cntrl_scaleZ.o" "troll_rig_completeRN.phl[780]";
connectAttr "frank_l_toethumb_cntrl_visibility.o" "troll_rig_completeRN.phl[781]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Frank_Reference_translateX.o" "troll_rig_completeRN.phl[325]";
connectAttr "Frank_Reference_translateY.o" "troll_rig_completeRN.phl[326]";
connectAttr "Frank_Reference_translateZ.o" "troll_rig_completeRN.phl[327]";
connectAttr "Frank_Reference_visibility.o" "troll_rig_completeRN.phl[328]";
connectAttr "Frank_Reference_rotateX.o" "troll_rig_completeRN.phl[329]";
connectAttr "Frank_Reference_rotateY.o" "troll_rig_completeRN.phl[330]";
connectAttr "Frank_Reference_rotateZ.o" "troll_rig_completeRN.phl[331]";
connectAttr "Frank_Reference_scaleX.o" "troll_rig_completeRN.phl[332]";
connectAttr "Frank_Reference_scaleY.o" "troll_rig_completeRN.phl[333]";
connectAttr "Frank_Reference_scaleZ.o" "troll_rig_completeRN.phl[334]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of troll_attack_animation.ma
