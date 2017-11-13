//Maya ASCII 2017ff04 scene
//Name: saber.ma
//Last modified: Fri, Jun 30, 2017 05:53:59 PM
//Codeset: UTF-8
requires maya "2017ff04";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201702071345-1015190";
fileInfo "osv" "Mac OS X 10.12.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0C5CE9DD-CD47-9B59-F381-2B8ED7F04E45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.048868719513138 15.499011354194472 -1.5386285592938467 ;
	setAttr ".r" -type "double3" -15.338352729518952 92.999999999984382 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96CEA902-7B4D-BDC0-EEC3-64972206DCF7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 49.814108291521116;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "1D5B65CE-3E45-92A2-7A54-408D9980D0D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "41706F6A-4A4D-453C-2E81-08B5D7BF38C4";
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
	rename -uid "F4C51351-C746-1558-91CC-8C9DD0740AD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "63F396CE-C24F-D152-5470-87971EDF8FE4";
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
	rename -uid "06C50DAE-CC4F-0BF3-DD7F-F7810E2D32EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F4A5D73F-984B-14CE-C461-F389078EE4FA";
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
createNode transform -n "saber_blade";
	rename -uid "174DAA13-7A4B-E7C9-02B2-4D8141DEFFE4";
	setAttr ".rp" -type "double3" 0 5.6604889137975531 0 ;
	setAttr ".sp" -type "double3" 0 5.6604889137975531 0 ;
createNode mesh -n "saber_bladeShape" -p "saber_blade";
	rename -uid "21505143-FE43-FE23-2F3A-DC9FBB67ACE0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.31677886843681335 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 123 ".uvst[0].uvsp[0:122]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.37635922 0.75135922 0.25 0.24864078 0.25 0.375
		 0.37635922 0.24864078 0 0.375 0.87364078 0.625 0.87364078 0.75135922 0 0.75135922
		 0.20252214 0.625 0.20252214 0.375 0.20252214 0.24864078 0.20252214 0.125 0.20252214
		 0.375 0.54747784 0.625 0.54747784 0.875 0.20252214 0.75135922 0.11345645 0.625 0.11345645
		 0.375 0.11345645 0.24864078 0.11345645 0.125 0.11345645 0.375 0.63654351 0.625 0.63654351
		 0.875 0.11345645 0.75135922 0.14276484 0.625 0.14276484 0.375 0.14276484 0.24864078
		 0.14276484 0.125 0.14276484 0.375 0.60723513 0.625 0.60723513 0.875 0.14276484 0.625
		 0.29691875 0.67191875 0.25 0.32808125 0.25 0.375 0.29691875 0.32808125 0.20252214
		 0.32808125 0.14276484 0.32808125 0.11345646 0.32808125 0 0.375 0.95308125 0.625 0.95308125
		 0.67191875 0 0.67191875 0.11345646 0.67191875 0.14276484 0.67191875 0.20252213 0.625
		 0.46726429 0.84226429 0.25 0.15773572 0.25 0.375 0.46726429 0.15773572 0.20252216
		 0.15773572 0.14276484 0.15773572 0.11345645 0.15773572 0 0.375 0.78273571 0.625 0.78273571
		 0.84226429 0 0.84226429 0.11345645 0.84226429 0.14276484 0.84226429 0.20252216 0.5
		 0.25 0.5 0.29691875 0.5 0.37635922 0.5 0.46726429 0.5 0.5 0.5 0.54747784 0.5 0.60723513
		 0.5 0.63654351 0.5 0.75 0.5 0.78273571 0.5 0.87364078 0.5 0.95308125 0.5 0 0.5 1
		 0.5 0.11345645 0.5 0.14276484 0.5 0.20252214 0.625 0.33663899 0.71163899 0.25 0.5
		 0.33663899 0.28836101 0.25 0.375 0.33663899 0.28836101 0.20252214 0.28836101 0.14276484
		 0.28836101 0.11345646 0.28836101 0 0.375 0.91336101 0.5 0.91336101 0.625 0.91336101
		 0.71163899 0 0.71163899 0.11345646 0.71163899 0.14276484 0.71163899 0.20252213 0.625
		 0.42181176 0.79681176 0.25 0.5 0.42181176 0.20318824 0.25 0.375 0.42181176 0.20318824
		 0.20252216 0.20318824 0.14276484 0.20318824 0.11345645 0.20318824 0 0.375 0.82818824
		 0.5 0.82818824 0.625 0.82818824 0.79681176 0 0.79681176 0.11345645 0.79681176 0.14276484
		 0.79681176 0.20252216;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".vt[0:89]"  -0.075915217 1.68896508 0.27234697 0.075915217 1.68896508 0.27234697
		 -0.075915217 9.73455811 0.47546658 0.075915217 9.73455811 0.47546658 -0.075915217 9.63201332 -0.48525727
		 0.075915217 9.63201332 -0.48525727 -0.075915217 1.68896508 -0.27234697 0.075915217 1.68896508 -0.27234697
		 0.075915188 12.11874866 0.041404083 -0.075915262 12.11874866 0.041404083 -0.075915217 1.68896508 -0.0029614526
		 0.075915217 1.68896508 -0.0029614526 0.075915202 10.27661324 -0.14530371 0.075915217 8.042764664 0.30585212
		 -0.075915217 8.042764664 0.30585212 -0.075915247 10.27661324 -0.14530371 -0.075915217 8.12353706 -0.43289977
		 0.075915217 8.12353706 -0.43289977 0.075915217 6.4222703 0.057064228 0.075915217 5.29372501 0.27234697
		 -0.075915217 5.29372501 0.27234697 -0.075915247 6.4222703 0.057064228 -0.075915217 5.29372501 -0.27234697
		 0.075915217 5.29372501 -0.27234697 0.075915217 7.64156961 -0.042223647 0.075915217 6.22491693 0.27234697
		 -0.075915217 6.22491693 0.27234697 -0.075915247 7.64156961 -0.042223647 -0.075915217 6.22491693 -0.27234697
		 0.075915217 6.22491693 -0.27234697 0.075915217 10.25216293 0.18843174 -0.075915217 10.25216293 0.18843174
		 -0.075915217 8.78932285 0.1715281 -0.075915217 6.75093794 0.17971082 -0.075915217 5.71276808 0.19254471
		 -0.075915217 1.68896532 0.17012151 0.075915217 1.68896532 0.17012151 0.075915217 5.71276808 0.19254471
		 0.075915217 6.75093794 0.17971082 0.075915217 8.7893219 0.1715281 0.075915217 10.79154205 -0.39200544
		 -0.075915217 10.79154205 -0.39200544 -0.075915217 8.65746498 -0.29584879 -0.075915217 6.59999657 -0.1822708
		 -0.075915217 5.59252405 -0.18503428 -0.075915217 1.68896484 -0.20102315 0.075915217 1.68896484 -0.20102315
		 0.075915217 5.59252405 -0.18503428 0.075915217 6.59999657 -0.1822708 0.075915217 8.65746498 -0.29584879
		 3.0751366e-09 10.072603226 0.85088062 2.6439484e-09 10.65470409 0.37824532 -3.9671242e-08 12.74930477 0.037559576
		 1.5054737e-09 11.26446724 -0.6125803 1.2986328e-09 9.96586132 -0.82467604 1.3991401e-09 8.27475166 -0.72959125
		 1.5632402e-09 6.14608717 -0.55179042 1.5841868e-09 5.10234356 -0.54486001 1.6652842e-09 1.061879158 -0.51803386
		 1.7804582e-09 1.061347961 -0.39999866 2.1002877e-09 1.059875488 -0.072222695 2.379783e-09 1.058587074 0.2142155
		 2.5448563e-09 1.057826519 0.38339037 2.4637583e-09 5.098289967 0.35656387 2.4428142e-09 6.14203358 0.34963393
		 2.710062e-09 8.17818165 0.50226629 0.075915202 11.18545532 0.11785038 -1.8513644e-08 11.70200253 0.22809055
		 -0.07591524 11.18545532 0.11785038 -0.075915232 9.53296757 0.026507214 -0.075915232 7.19625378 0.066856876
		 -0.075915232 6.067519188 0.12498616 -0.075915217 1.68896532 0.083580025 2.2400353e-09 1.059231281 0.070996389
		 0.075915217 1.68896532 0.083580025 0.075915217 6.067519188 0.12498616 0.075915217 7.19625378 0.066856876
		 0.07591521 9.53296757 0.026507214 0.075915202 11.45514488 -0.17201629 -1.9082879e-08 12.0068855286 -0.3087889
		 -0.07591524 11.45514488 -0.17201629 -0.075915232 9.46703911 -0.18122719 -0.075915232 7.12078285 -0.10221146
		 -0.075915232 6.0073971748 -0.063803345 -0.075915217 1.68896484 -0.1019923 1.9403776e-09 1.060611725 -0.23611066
		 0.075915217 1.68896484 -0.1019923 0.075915217 6.0073971748 -0.063803345 0.075915217 7.12078285 -0.10221146
		 0.07591521 9.46703911 -0.18122719;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 62 0 2 50 0 4 54 0 6 58 0 0 20 0 1 19 0 2 31 0 3 30 0
		 4 16 0 5 17 0 6 45 0 7 46 0 8 78 0 9 80 0 8 52 1 10 72 0 9 15 1 11 74 0 10 60 1 11 18 1
		 12 8 1 13 3 0 12 77 1 14 2 0 13 65 1 15 27 1 14 32 1 16 28 0 15 81 1 17 29 0 16 55 1
		 17 49 1 18 24 1 19 25 0 18 75 1 20 26 0 19 63 1 21 10 1 20 34 1 22 6 0 21 83 1 23 7 0
		 22 57 1 23 47 1 24 12 1 25 13 0 24 76 1 26 14 0 25 64 1 27 21 1 26 33 1 28 22 0 27 82 1
		 29 23 0 28 56 1 29 48 1 30 66 0 31 68 0 30 51 1 32 69 1 31 32 1 33 70 1 32 33 1 34 71 1
		 33 34 1 35 0 0 34 35 1 36 1 0 35 61 1 37 19 1 36 37 1 38 25 1 37 38 1 39 13 1 38 39 1
		 39 30 1 40 5 0 41 4 0 40 53 1 42 16 1 41 42 1 43 28 1 42 43 1 44 22 1 43 44 1 45 84 0
		 44 45 1 46 86 0 45 59 1 47 87 1 46 47 1 48 88 1 47 48 1 49 89 1 48 49 1 49 40 1 50 3 0
		 51 31 1 50 51 1 52 9 1 51 67 1 53 41 1 52 79 1 54 5 0 53 54 1 55 17 1 54 55 1 56 29 1
		 55 56 1 57 23 1 56 57 1 58 7 0 57 58 1 59 46 1 58 59 1 60 11 1 59 85 1 61 36 1 60 73 1
		 62 1 0 61 62 1 63 20 1 62 63 1 64 26 1 63 64 1 65 14 1 64 65 1 65 50 1 66 8 0 67 52 1
		 66 67 1 68 9 0 67 68 1 69 15 1 68 69 1 70 27 1 69 70 1 71 21 1 70 71 1 72 35 0 71 72 1
		 73 61 1 72 73 1 74 36 0 73 74 1 75 37 1 74 75 1 76 38 1 75 76 1 77 39 1 76 77 1 77 66 1
		 78 40 0 79 53 1 78 79 1 80 41 0 79 80 1 81 42 1 80 81 1 82 43 1 81 82 1 83 44 1 82 83 1
		 84 10 0 83 84 1 85 60 1;
	setAttr ".ed[166:175]" 84 85 1 86 11 0 85 86 1 87 18 1 86 87 1 88 24 1 87 88 1
		 89 12 1 88 89 1 89 78 1;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 122 121 -5
		mu 0 4 0 86 88 32
		f 4 1 98 97 -7
		mu 0 4 2 74 75 49
		f 4 42 112 -4 -40
		mu 0 4 35 81 82 6
		f 4 68 120 -1 -66
		mu 0 4 54 85 87 8
		f 4 -68 70 69 -6
		mu 0 4 1 56 57 31
		f 4 65 4 38 66
		mu 0 4 53 0 32 52
		f 4 -100 102 156 -14
		mu 0 4 17 76 109 111
		f 4 163 -38 40 164
		mu 0 4 115 18 33 114
		f 4 166 165 -19 -164
		mu 0 4 116 117 84 19
		f 4 169 -20 -168 170
		mu 0 4 120 30 21 119
		f 4 -74 75 -8 -22
		mu 0 4 23 59 47 3
		f 4 -126 127 -2 -24
		mu 0 4 24 90 74 2
		f 4 -27 23 6 60
		mu 0 4 50 24 2 48
		f 4 -29 -17 13 158
		mu 0 4 112 25 16 110
		f 4 2 106 -31 -9
		mu 0 4 4 78 79 27
		f 4 -21 -174 175 -13
		mu 0 4 15 22 122 108
		f 4 -70 72 71 -34
		mu 0 4 31 57 58 39
		f 4 -122 124 123 -36
		mu 0 4 32 88 89 40
		f 4 -39 35 50 64
		mu 0 4 52 32 40 51
		f 4 -41 -50 52 162
		mu 0 4 114 33 41 113
		f 4 54 110 -43 -52
		mu 0 4 43 80 81 35
		f 4 171 -33 -170 172
		mu 0 4 121 38 30 120
		f 4 -72 74 73 -46
		mu 0 4 39 58 59 23
		f 4 -124 126 125 -48
		mu 0 4 40 89 90 24
		f 4 -51 47 26 62
		mu 0 4 51 40 24 50
		f 4 -53 -26 28 160
		mu 0 4 113 41 25 112
		f 4 30 108 -55 -28
		mu 0 4 27 79 80 43
		f 4 173 -45 -172 174
		mu 0 4 122 22 38 121
		f 4 -98 100 132 -58
		mu 0 4 49 75 93 95
		f 4 -60 -61 57 134
		mu 0 4 96 50 48 94
		f 4 -62 -63 59 136
		mu 0 4 97 51 50 96
		f 4 -64 -65 61 138
		mu 0 4 98 52 51 97
		f 4 139 -67 63 140
		mu 0 4 99 53 52 98
		f 4 142 141 -69 -140
		mu 0 4 100 101 85 54
		f 4 -71 -144 146 145
		mu 0 4 57 56 103 104
		f 4 -73 -146 148 147
		mu 0 4 58 57 104 105
		f 4 -75 -148 150 149
		mu 0 4 59 58 105 106
		f 4 -76 -150 151 -57
		mu 0 4 47 59 106 92
		f 4 -102 104 -3 -78
		mu 0 4 63 77 78 4
		f 4 -80 -81 77 8
		mu 0 4 26 64 62 13
		f 4 -82 -83 79 27
		mu 0 4 42 65 64 26
		f 4 -84 -85 81 51
		mu 0 4 34 66 65 42
		f 4 10 -87 83 39
		mu 0 4 12 67 66 34
		f 4 3 114 -89 -11
		mu 0 4 6 82 83 68
		f 4 43 -91 -12 -42
		mu 0 4 37 71 70 10
		f 4 55 -93 -44 -54
		mu 0 4 45 72 71 37
		f 4 31 -95 -56 -30
		mu 0 4 29 73 72 45
		f 4 -96 -32 -10 -77
		mu 0 4 61 73 29 11
		f 4 96 7 58 -99
		mu 0 4 74 3 46 75
		f 4 -101 -59 56 130
		mu 0 4 93 75 46 91
		f 4 -103 -15 12 154
		mu 0 4 109 76 14 107
		f 4 -105 -79 76 -104
		mu 0 4 78 77 60 5
		f 4 -107 103 9 -106
		mu 0 4 79 78 5 28
		f 4 -109 105 29 -108
		mu 0 4 80 79 28 44
		f 4 -111 107 53 -110
		mu 0 4 81 80 44 36
		f 4 -113 109 41 -112
		mu 0 4 82 81 36 7
		f 4 -115 111 11 -114
		mu 0 4 83 82 7 69
		f 4 -166 168 167 -116
		mu 0 4 84 117 118 20
		f 4 -142 144 143 -118
		mu 0 4 85 101 102 55
		f 4 -121 117 67 -120
		mu 0 4 87 85 55 9
		f 4 -123 119 5 36
		mu 0 4 88 86 1 31
		f 4 -125 -37 33 48
		mu 0 4 89 88 31 39
		f 4 -127 -49 45 24
		mu 0 4 90 89 39 23
		f 4 -128 -25 21 -97
		mu 0 4 74 90 23 3
		f 4 -130 -131 128 14
		mu 0 4 76 93 91 14
		f 4 -133 129 99 -132
		mu 0 4 95 93 76 17
		f 4 -134 -135 131 16
		mu 0 4 25 96 94 16
		f 4 -136 -137 133 25
		mu 0 4 41 97 96 25
		f 4 -138 -139 135 49
		mu 0 4 33 98 97 41
		f 4 15 -141 137 37
		mu 0 4 18 99 98 33
		f 4 18 118 -143 -16
		mu 0 4 19 84 101 100
		f 4 -145 -119 115 17
		mu 0 4 102 101 84 20
		f 4 -147 -18 19 34
		mu 0 4 104 103 21 30
		f 4 -149 -35 32 46
		mu 0 4 105 104 30 38
		f 4 -151 -47 44 22
		mu 0 4 106 105 38 22
		f 4 -152 -23 20 -129
		mu 0 4 92 106 22 15
		f 4 -154 -155 152 78
		mu 0 4 77 109 107 60
		f 4 -157 153 101 -156
		mu 0 4 111 109 77 63
		f 4 -158 -159 155 80
		mu 0 4 64 112 110 62
		f 4 -160 -161 157 82
		mu 0 4 65 113 112 64
		f 4 -162 -163 159 84
		mu 0 4 66 114 113 65
		f 4 85 -165 161 86
		mu 0 4 67 115 114 66
		f 4 88 116 -167 -86
		mu 0 4 68 83 117 116
		f 4 -169 -117 113 87
		mu 0 4 118 117 83 69
		f 4 89 -171 -88 90
		mu 0 4 71 120 119 70
		f 4 91 -173 -90 92
		mu 0 4 72 121 120 71
		f 4 93 -175 -92 94
		mu 0 4 73 122 121 72
		f 4 -176 -94 95 -153
		mu 0 4 108 122 73 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "saber_handle" -p "saber_blade";
	rename -uid "D3849B45-EA47-BBEE-EEAE-59B9763D078F";
	setAttr ".rp" -type "double3" 0 0 -0.099440474482596186 ;
	setAttr ".sp" -type "double3" 0 0 -0.099440474482596186 ;
createNode mesh -n "saber_handleShape" -p "saber_handle";
	rename -uid "000095DA-3848-115A-E640-7E81C812E576";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.33599624037742615 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 81 ".uvst[0].uvsp[0:80]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.59375
		 0.50046992 0.5625 0.50046992 0.53125 0.50046992 0.5 0.50046992 0.46875 0.50046992
		 0.4375 0.50046992 0.40625 0.50046992 0.625 0.50046992 0.375 0.50046992 0.46875 0.40648496
		 0.4375 0.40648496 0.40625 0.40648496 0.625 0.40648496 0.375 0.40648496 0.59375 0.40648496
		 0.5625 0.40648496 0.53125 0.40648496 0.5 0.40648496 0.46875 0.35949248 0.4375 0.35949248
		 0.40625 0.35949248 0.625 0.35949248 0.375 0.35949248 0.59375 0.35949248 0.5625 0.35949248
		 0.53125 0.35949248 0.5 0.35949248 0.375 0.3125 0.40625 0.3125 0.40625 0.35949248
		 0.375 0.35949248 0.4375 0.3125 0.4375 0.35949248 0.46875 0.3125 0.46875 0.35949248
		 0.5 0.3125 0.5 0.35949248 0.53125 0.3125 0.53125 0.35949248 0.5625 0.3125 0.5625
		 0.35949248 0.59375 0.3125 0.59375 0.35949248 0.625 0.3125 0.625 0.35949248;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.14838758 -1.2325772 -0.24782807 0 -1.2325772 -0.3092922
		 -0.14838758 -1.2325772 -0.24782807 -0.2098517 -1.2325772 -0.09944047 -0.14838758 -1.2325772 0.048947103
		 0 -1.2325772 0.11041123 0.14838758 -1.2325772 0.048947103 0.20985173 -1.2325772 -0.09944047
		 0.14838758 1.2325772 -0.24782807 0 1.2325772 -0.3092922 -0.14838758 1.2325772 -0.24782807
		 -0.2098517 1.2325772 -0.09944047 -0.14838758 1.2325772 0.048947103 0 1.2325772 0.11041123
		 0.14838758 1.2325772 0.048947103 0.20985173 1.2325772 -0.09944047 0 -1.2325772 -0.09944047
		 0 1.2325772 -0.09944047 0.20985173 0 -0.09944047 0.14838758 0 0.048947103 0 0 0.11041123
		 -0.14838758 0 0.048947103 -0.2098517 0 -0.09944047 -0.14838758 0 -0.24782807 0 0 -0.3092922
		 0.14838758 0 -0.24782807 -0.2098517 -0.6162886 -0.09944047 -0.14838758 -0.6162886 -0.24782807
		 0 -0.6162886 -0.3092922 0.14838758 -0.6162886 -0.24782807 0.20985173 -0.6162886 -0.09944047
		 0.14838758 -0.6162886 0.048947103 0 -0.6162886 0.11041123 -0.14838758 -0.6162886 0.048947103
		 -0.2098517 -0.92443281 -0.09944047 -0.14838758 -0.92443281 -0.24782807 0 -0.92443281 -0.3092922
		 0.14838758 -0.92443281 -0.24782807 0.20985173 -0.92443281 -0.09944047 0.14838758 -0.92443281 0.048947103
		 0 -0.92443281 0.11041123 -0.14838758 -0.92443281 0.048947103 0.19671394 -1.23257697 -0.29439616
		 0 -1.23257697 -0.37514946 0 -0.92443258 -0.37514946 0.19671394 -0.92443258 -0.29439616
		 -0.19671394 -1.23257697 -0.29439616 -0.19671394 -0.92443258 -0.29439616 -0.27746719 -1.23257697 -0.09944047
		 -0.27746719 -0.92443258 -0.09944047 -0.19671394 -1.23257697 0.095515199 -0.19671394 -0.92443258 0.095515199
		 0 -1.23257697 0.17626849 0 -0.92443258 0.17626849 0.19671394 -1.23257697 0.095515199
		 0.19671394 -0.92443258 0.095515199 0.27746725 -1.23257697 -0.09944047 0.27746725 -0.92443258 -0.09944047;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 0 1 16 1 1 16 2 1
		 16 3 1 16 4 1 16 5 1 16 6 1 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1
		 14 17 1 15 17 1 18 15 0 19 14 0 18 19 1 20 13 0 19 20 1 21 12 0 20 21 1 22 11 0 21 22 1
		 23 10 0 22 23 1 24 9 0 23 24 1 25 8 0 24 25 1 25 18 1 26 22 0 27 23 0 26 27 1 28 24 0
		 27 28 1 29 25 0 28 29 1 30 18 0 29 30 1 31 19 0 30 31 1 32 20 0 31 32 1 33 21 0 32 33 1
		 33 26 1 34 26 0 35 27 0 34 35 0 36 28 0 35 36 0 37 29 0 36 37 0 38 30 0 37 38 0 39 31 0
		 38 39 0 40 32 0 39 40 0 41 33 0 40 41 0 41 34 0 0 42 0 1 43 0 42 43 0 36 44 0 43 44 0
		 37 45 0 44 45 0 42 45 0 2 46 0 43 46 0 35 47 0 46 47 0 47 44 0 3 48 0 46 48 0 34 49 0
		 48 49 0 49 47 0 4 50 0 48 50 0 41 51 0 50 51 0 51 49 0 5 52 0 50 52 0 40 53 0 52 53 0
		 53 51 0 6 54 0 52 54 0 39 55 0 54 55 0 55 53 0 7 56 0 54 56 0 38 57 0 56 57 0 57 55 0
		 56 42 0 45 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 82 84 86 -88
		mu 0 4 63 64 65 66
		f 4 89 91 92 -85
		mu 0 4 64 67 68 65
		f 4 94 96 97 -92
		mu 0 4 67 69 70 68
		f 4 99 101 102 -97
		mu 0 4 69 71 72 70
		f 4 104 106 107 -102
		mu 0 4 71 73 74 72
		f 4 109 111 112 -107
		mu 0 4 73 75 76 74
		f 4 114 116 117 -112
		mu 0 4 75 77 78 76
		f 4 118 87 119 -117
		mu 0 4 77 79 80 78
		f 3 -1 -17 17
		mu 0 3 1 0 34
		f 3 -2 -18 18
		mu 0 3 2 1 34
		f 3 -3 -19 19
		mu 0 3 3 2 34
		f 3 -4 -20 20
		mu 0 3 4 3 34
		f 3 -5 -21 21
		mu 0 3 5 4 34
		f 3 -6 -22 22
		mu 0 3 6 5 34
		f 3 -7 -23 23
		mu 0 3 7 6 34
		f 3 -8 -24 16
		mu 0 3 0 7 34
		f 3 8 25 -25
		mu 0 3 32 31 35
		f 3 9 26 -26
		mu 0 3 31 30 35
		f 3 10 27 -27
		mu 0 3 30 29 35
		f 3 11 28 -28
		mu 0 3 29 28 35
		f 3 12 29 -29
		mu 0 3 28 27 35
		f 3 13 30 -30
		mu 0 3 27 26 35
		f 3 14 31 -31
		mu 0 3 26 33 35
		f 3 15 24 -32
		mu 0 3 33 32 35
		f 4 -35 32 -15 -34
		mu 0 4 37 36 24 23
		f 4 -37 33 -14 -36
		mu 0 4 38 37 23 22
		f 4 -39 35 -13 -38
		mu 0 4 39 38 22 21
		f 4 -41 37 -12 -40
		mu 0 4 40 39 21 20
		f 4 -43 39 -11 -42
		mu 0 4 41 40 20 19
		f 4 -45 41 -10 -44
		mu 0 4 42 41 19 18
		f 4 -47 43 -9 -46
		mu 0 4 44 42 18 17
		f 4 -48 45 -16 -33
		mu 0 4 36 43 25 24
		f 4 -51 48 42 -50
		mu 0 4 46 45 40 41
		f 4 -53 49 44 -52
		mu 0 4 47 46 41 42
		f 4 -55 51 46 -54
		mu 0 4 49 47 42 44
		f 4 -57 53 47 -56
		mu 0 4 50 48 43 36
		f 4 -59 55 34 -58
		mu 0 4 51 50 36 37
		f 4 -61 57 36 -60
		mu 0 4 52 51 37 38
		f 4 -63 59 38 -62
		mu 0 4 53 52 38 39
		f 4 -64 61 40 -49
		mu 0 4 45 53 39 40
		f 4 -67 64 50 -66
		mu 0 4 55 54 45 46
		f 4 -69 65 52 -68
		mu 0 4 56 55 46 47
		f 4 -71 67 54 -70
		mu 0 4 58 56 47 49
		f 4 -73 69 56 -72
		mu 0 4 59 57 48 50
		f 4 -75 71 58 -74
		mu 0 4 60 59 50 51
		f 4 -77 73 60 -76
		mu 0 4 61 60 51 52
		f 4 -79 75 62 -78
		mu 0 4 62 61 52 53
		f 4 -80 77 63 -65
		mu 0 4 54 62 53 45
		f 4 0 81 -83 -81
		mu 0 4 8 9 64 63
		f 4 70 85 -87 -84
		mu 0 4 56 58 66 65
		f 4 1 88 -90 -82
		mu 0 4 9 10 67 64
		f 4 68 83 -93 -91
		mu 0 4 55 56 65 68
		f 4 2 93 -95 -89
		mu 0 4 10 11 69 67
		f 4 66 90 -98 -96
		mu 0 4 54 55 68 70
		f 4 3 98 -100 -94
		mu 0 4 11 12 71 69
		f 4 79 95 -103 -101
		mu 0 4 62 54 70 72
		f 4 4 103 -105 -99
		mu 0 4 12 13 73 71
		f 4 78 100 -108 -106
		mu 0 4 61 62 72 74
		f 4 5 108 -110 -104
		mu 0 4 13 14 75 73
		f 4 76 105 -113 -111
		mu 0 4 60 61 74 76
		f 4 6 113 -115 -109
		mu 0 4 14 15 77 75
		f 4 74 110 -118 -116
		mu 0 4 59 60 76 78
		f 4 7 80 -119 -114
		mu 0 4 15 16 79 77
		f 4 72 115 -120 -86
		mu 0 4 57 59 78 80;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "saber_hilt" -p "saber_blade";
	rename -uid "5D37B5E4-7640-BCEC-D026-AB801BE61313";
	setAttr ".rp" -type "double3" 0 0.94930100495962644 -0.32768052674222009 ;
	setAttr ".sp" -type "double3" 0 0.94930100495962644 -0.32768052674222009 ;
createNode mesh -n "saber_hiltShape" -p "saber_hilt";
	rename -uid "6EC9F1F8-5C4D-0196-CEC8-CEA1D130184C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 75 ".uvst[0].uvsp[0:74]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.81761324 0.8073867 0 0.19261326 0 0.37499997
		 0.81761324 0.19261327 0.25 0.375 0.43238673 0.625 0.43238673 0.8073867 0.25 0.375
		 0.75 0.625 0.75 0.625 0.81761324 0.37499997 0.81761324 0.625 0.81761324 0.625 0.75
		 0.375 0.75 0.37499997 0.81761324 0.625 0.81761324 0.625 0.75 0.375 0.75 0.37499997
		 0.81761324 0.8073867 0.10669926 0.625 0.64330077 0.875 0.10669926 0.125 0.10669926
		 0.375 0.64330077 0.19261326 0.10669926 0.375 0.10669926 0.625 0.10669926 0.85955834
		 0.10669926 0.625 0.48455834 0.85955834 0.25 0.14044167 0.25 0.375 0.48455834 0.14044167
		 0.10669926 0.14044167 0 0.37499997 0.76544166 0.37499997 0.76544166 0.37499997 0.76544166
		 0.37499997 0.76544166 0.625 0.76544166 0.625 0.76544166 0.625 0.76544166 0.625 0.76544166
		 0.85955834 0 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.76544166 0.5 0.81761324 0.5
		 0.81761324 0.5 0.81761324 0.5 0.81761324 0.5 0 0.5 1 0.5 0.10669926 0.5 0.25 0.5
		 0.43238673 0.5 0.48455834 0.5 0.5 0.5 0.64330077;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  -0.22715202 0.81629646 0.30109227 0.22715202 0.81629646 0.30109227
		 -0.26340714 1.18353271 0.47722811 0.26340714 1.18353271 0.47722811 -0.22715202 1.44092405 -1.29798532
		 0.22715202 1.44092405 -1.29798532 -0.22715202 0.94371682 -1.11667752 0.22715202 0.94371682 -1.11667752
		 0.227152 0.68271655 -0.25985193 -0.227152 0.68271655 -0.25985193 -0.22715202 1.23225987 -0.77886868
		 0.22715202 1.23225987 -0.77886868 -0.22715202 -1.55243278 -0.82587671 0.22715202 -1.55243278 -0.82587671
		 0.093501844 -1.44600201 -0.25732669 -0.093501844 -1.44600201 -0.25732669 0.13007304 -1.0062308311 -0.63004708
		 0.22715202 -1.36310244 -0.83816922 -0.22715202 -1.36310244 -0.83816922 -0.13007304 -1.0062308311 -0.63004708
		 0.11499549 0.43325287 -0.84283948 0.22715202 -0.33652484 -0.94382584 -0.22715202 -0.33652484 -0.94382584
		 -0.11499549 0.43325287 -0.84283948 0.22715202 0.91726005 -0.48136672 0.22715202 1.15592337 -1.19405913
		 -0.22715202 1.15592337 -1.19405913 -0.22715202 0.91726005 -0.48136672 -0.24262559 0.97303176 0.37626642
		 0.24262559 0.97303176 0.37626642 0.22715202 1.10141695 -1.031292915 0.22715202 1.39326882 -1.17942846
		 -0.22715202 1.39326882 -1.17942846 -0.22715202 1.10141695 -1.031292915 -0.22715202 0.88410902 -0.92099375
		 -0.20153746 -0.1607213 -0.92076248 -0.20498091 -1.28159928 -0.79063791 -0.19662869 -1.52812576 -0.69602996
		 0.19662869 -1.52812576 -0.69602996 0.20498091 -1.28159928 -0.79063791 0.20153746 -0.1607213 -0.92076248
		 0.22715202 0.88410902 -0.92099375 0 1.27255297 -1.5096879 0 -0.24258459 -1.22652018
		 0 -1.45674515 -1.050355315 0 -1.68050194 -1.028979182 0 -1.6548562 -0.82869452 0 -1.56820869 -0.15200777
		 0 -1.04040432 -0.73334187 0 0.66362637 -1.080218077 0 0.9444046 -0.18274722 0 1.088919163 0.68213218
		 0 1.27215481 0.79628521 0 1.51824367 0.94960243 0 1.60520399 -0.99146765 0 1.80463684 -1.61229467
		 0 1.86366355 -1.79604387 0 1.52483773 -1.63190389;
	setAttr -s 112 ".ed[0:111]"  0 51 0 2 53 0 4 56 0 6 42 0 0 28 0 1 29 0
		 2 10 0 3 11 0 4 26 0 5 25 0 6 34 1 7 41 1 8 1 0 9 0 0 8 50 0 10 32 0 9 27 1 11 31 0
		 10 54 1 11 24 1 6 22 0 7 21 0 12 45 0 8 20 0 13 38 0 9 23 0 14 47 0 12 37 0 16 14 0
		 17 13 0 16 39 1 18 12 0 17 44 1 19 15 0 18 36 1 19 48 1 20 16 0 21 17 0 20 40 1 22 18 0
		 21 43 1 23 19 0 22 35 1 23 49 1 24 8 1 25 7 0 24 30 1 26 6 0 25 57 1 27 10 1 26 33 1
		 28 2 0 27 28 1 29 3 0 28 52 1 29 24 1 30 25 1 31 5 0 30 31 1 32 4 0 31 55 1 33 27 1
		 32 33 1 34 9 1 33 34 1 35 23 1 34 35 1 36 19 1 35 36 1 37 15 0 36 37 1 38 14 0 37 46 1
		 39 17 1 38 39 1 40 21 1 39 40 1 41 8 1 40 41 1 41 30 1 42 7 0 43 22 1 42 43 1 44 18 1
		 43 44 1 45 13 0 44 45 1 46 38 1 45 46 1 47 15 0 46 47 1 48 16 1 47 48 1 49 20 1 48 49 1
		 50 9 0 49 50 1 51 1 0 50 51 1 52 29 1 51 52 1 53 3 0 52 53 1 54 11 1 53 54 1 55 32 1
		 54 55 1 56 5 0 55 56 1 57 26 1 56 57 1 57 42 1;
	setAttr -s 56 -ch 224 ".fc[0:55]" -type "polyFaces" 
		f 4 54 102 -2 -52
		mu 0 4 40 69 70 2
		f 4 18 106 105 -16
		mu 0 4 19 71 72 46
		f 4 2 110 109 -9
		mu 0 4 4 73 74 38
		f 4 72 90 89 -70
		mu 0 4 52 62 63 25
		f 4 19 46 58 -18
		mu 0 4 21 34 42 44
		f 4 61 49 15 62
		mu 0 4 47 39 18 45
		f 4 -96 98 -1 -14
		mu 0 4 17 66 68 8
		f 4 -50 52 51 6
		mu 0 4 18 39 40 2
		f 4 1 104 -19 -7
		mu 0 4 2 70 71 19
		f 4 55 -20 -8 -54
		mu 0 4 41 34 21 3
		f 4 3 82 81 -21
		mu 0 4 6 58 59 32
		f 4 77 23 38 78
		mu 0 4 56 14 30 55
		f 4 95 25 43 96
		mu 0 4 66 17 33 65
		f 4 -64 66 65 -26
		mu 0 4 17 49 50 33
		f 4 -31 28 -72 74
		mu 0 4 54 26 24 53
		f 4 -84 86 -23 -32
		mu 0 4 28 60 61 22
		f 4 -68 70 69 -34
		mu 0 4 29 51 52 25
		f 4 -36 33 -90 92
		mu 0 4 64 29 25 63
		f 4 -39 36 30 76
		mu 0 4 55 30 26 54
		f 4 -82 84 83 -40
		mu 0 4 32 59 60 28
		f 4 -66 68 67 -42
		mu 0 4 33 50 51 29
		f 4 -44 41 35 94
		mu 0 4 65 33 29 64
		f 4 44 -78 79 -47
		mu 0 4 34 15 57 42
		f 4 -110 111 -4 -48
		mu 0 4 38 74 58 6
		f 4 63 16 -62 64
		mu 0 4 48 16 39 47
		f 4 -53 -17 13 4
		mu 0 4 40 39 16 0
		f 4 0 100 -55 -5
		mu 0 4 0 67 69 40
		f 4 -13 -45 -56 -6
		mu 0 4 1 15 34 41
		f 4 -59 56 -10 -58
		mu 0 4 44 42 36 11
		f 4 -106 108 -3 -60
		mu 0 4 46 72 73 4
		f 4 50 -63 59 8
		mu 0 4 37 47 45 13
		f 4 10 -65 -51 47
		mu 0 4 12 48 47 37
		f 4 -67 -11 20 42
		mu 0 4 50 49 6 32
		f 4 -69 -43 39 34
		mu 0 4 51 50 32 28
		f 4 -71 -35 31 27
		mu 0 4 52 51 28 22
		f 4 22 88 -73 -28
		mu 0 4 22 61 62 52
		f 4 -74 -75 -25 -30
		mu 0 4 27 54 53 23
		f 4 -76 -77 73 -38
		mu 0 4 31 55 54 27
		f 4 11 -79 75 -22
		mu 0 4 7 56 55 31
		f 4 -80 -12 -46 -57
		mu 0 4 42 57 10 36
		f 4 80 21 40 -83
		mu 0 4 58 7 31 59
		f 4 -85 -41 37 32
		mu 0 4 60 59 31 27
		f 4 -87 -33 29 -86
		mu 0 4 61 60 27 23
		f 4 -89 85 24 -88
		mu 0 4 62 61 23 53
		f 4 -91 87 71 26
		mu 0 4 63 62 53 24
		f 4 -92 -93 -27 -29
		mu 0 4 26 64 63 24
		f 4 -94 -95 91 -37
		mu 0 4 30 65 64 26
		f 4 14 -97 93 -24
		mu 0 4 14 66 65 30
		f 4 -99 -15 12 -98
		mu 0 4 68 66 14 9
		f 4 -101 97 5 -100
		mu 0 4 69 67 1 41
		f 4 -103 99 53 -102
		mu 0 4 70 69 41 3
		f 4 -105 101 7 -104
		mu 0 4 71 70 3 20
		f 4 -107 103 17 60
		mu 0 4 72 71 20 43
		f 4 -109 -61 57 -108
		mu 0 4 73 72 43 5
		f 4 -111 107 9 48
		mu 0 4 74 73 5 35
		f 4 -112 -49 45 -81
		mu 0 4 58 74 35 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "ABF0EFA5-AD43-0BEB-FAD0-9EB0DDEC2966";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "83455834-DA42-2C3C-8909-FAA5B8214EE3";
createNode displayLayer -n "defaultLayer";
	rename -uid "DA7CAF0B-814A-7DE0-8CD6-DE961F370488";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FF14D1C4-6741-B230-54B3-67912D7F7E68";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "80A6AB99-7646-4F02-D270-28B5BC73A9A1";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B09F5CAC-824C-E42F-1D06-96945D86BA85";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8DA656AD-5A4F-7C7D-5E55-2C826BA921C8";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "224B2246-0F46-BA8E-9C1D-189BB37F5355";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1310\n            -height 850\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1310\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1310\\n    -height 850\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "20630CCC-8346-BDF7-CD5C-FDB7D9ACAF9A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "saber_bladeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "saber_handleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "saber_hiltShape.iog" ":initialShadingGroup.dsm" -na;
// End of saber.ma
