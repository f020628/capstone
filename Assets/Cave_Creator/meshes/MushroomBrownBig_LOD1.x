xof 0303txt 0032

// DirectX 8.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Fri Sep 16 08:23:19 2011

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 4800;
}

// Start of Frames

Frame Default_Layer {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh Default_Layer {
    123;
    0.040162; 1.061300; -0.046574;,
    0.072381; 1.030890; -0.119934;,
    0.158451; 1.029940; -0.037127;,
    0.086741; 1.060786; -0.001759;,
    -0.024329; 1.061797; -0.050962;,
    -0.046779; 1.031807; -0.128039;,
    -0.076551; 1.062044; -0.012870;,
    -0.143273; 1.032264; -0.057656;,
    -0.092071; 1.061926; 0.049880;,
    -0.171953; 1.032046; 0.058288;,
    -0.063628; 1.061497; 0.107923;,
    -0.119398; 1.031255; 0.165541;,
    -0.004528; 1.060960; 0.134104;,
    -0.010197; 1.030262; 0.213916;,
    0.057571; 1.060564; 0.116169;,
    0.104550; 1.029530; 0.180780;,
    0.093618; 1.060496; 0.062513;,
    0.171154; 1.029404; 0.081632;,
    0.093992; 1.021582; -0.168908;,
    0.206448; 1.020341; -0.060714;,
    -0.061698; 1.022781; -0.179502;,
    -0.187774; 1.023378; -0.087539;,
    -0.225245; 1.023093; 0.063952;,
    -0.156579; 1.022060; 0.204082;,
    -0.013901; 1.020761; 0.267284;,
    0.136024; 1.019806; 0.223990;,
    0.223045; 1.019640; 0.094451;,
    0.101725; 1.037202; -0.186036;,
    0.223441; 1.035859; -0.068931;,
    -0.066796; 1.038500; -0.197500;,
    -0.203260; 1.039146; -0.097961;,
    -0.243821; 1.038837; 0.066010;,
    -0.169492; 1.037719; 0.217687;,
    -0.015060; 1.036314; 0.286097;,
    0.147218; 1.035279; 0.239235;,
    0.241409; 1.035100; 0.099022;,
    0.101725; 1.037202; -0.186036;,
    0.094438; 1.081311; -0.168687;,
    0.206893; 1.080070; -0.060492;,
    0.223441; 1.035859; -0.068931;,
    -0.066796; 1.038500; -0.197500;,
    -0.061251; 1.082510; -0.179278;,
    -0.203260; 1.039146; -0.097961;,
    -0.187328; 1.083107; -0.087318;,
    -0.243821; 1.038837; 0.066010;,
    -0.224799; 1.082822; 0.064173;,
    -0.169492; 1.037719; 0.217687;,
    -0.156132; 1.081789; 0.204303;,
    -0.015060; 1.036314; 0.286097;,
    -0.013456; 1.080491; 0.267508;,
    0.147218; 1.035279; 0.239235;,
    0.136471; 1.079535; 0.224212;,
    0.241409; 1.035100; 0.099022;,
    0.223492; 1.079369; 0.094675;,
    0.073171; 1.136959; -0.119538;,
    0.159242; 1.136010; -0.036730;,
    -0.045989; 1.137877; -0.127644;,
    -0.142483; 1.138334; -0.057261;,
    -0.171161; 1.138116; 0.058686;,
    -0.118606; 1.137325; 0.165935;,
    -0.009406; 1.136332; 0.214312;,
    0.105340; 1.135600; 0.181173;,
    0.171945; 1.135473; 0.082029;,
    0.041104; 1.187632; -0.046104;,
    0.087683; 1.187118; -0.001287;,
    -0.023389; 1.188128; -0.050492;,
    -0.075609; 1.188376; -0.012400;,
    -0.091131; 1.188257; 0.050351;,
    -0.062688; 1.187829; 0.108394;,
    -0.003588; 1.187292; 0.134575;,
    0.058511; 1.186896; 0.116640;,
    0.094560; 1.186827; 0.062984;,
    0.002020; 1.078948; 0.039890;,
    0.002938; 1.202333; 0.040349;,
    0.020011; -0.000067; -0.161099;,
    0.076742; 0.000287; -0.179533;,
    0.064474; -0.029150; -0.131396;,
    0.020013; -0.000548; -0.101451;,
    0.076745; -0.000491; -0.083024;,
    0.111797; 0.000025; -0.131278;,
    0.076742; 0.000287; -0.179533;,
    -0.033370; 1.059007; 0.019391;,
    -0.019790; 1.092465; 0.029248;,
    -0.003449; 1.092536; 0.022524;,
    -0.002914; 1.058907; 0.006830;,
    -0.030898; 1.056049; 0.052111;,
    -0.018471; 1.090708; 0.046781;,
    0.001087; 1.054120; 0.059768;,
    -0.001316; 1.089694; 0.050890;,
    0.018379; 1.055886; 0.031788;,
    0.007966; 1.090823; 0.035898;,
    -0.002914; 1.058907; 0.006830;,
    -0.003449; 1.092536; 0.022524;,
    -0.017451; 0.898998; -0.027943;,
    0.017402; 0.906035; -0.038479;,
    -0.016884; 0.889449; 0.007883;,
    0.018315; 0.890584; 0.019487;,
    0.039501; 0.900834; -0.009164;,
    0.017402; 0.906035; -0.038479;,
    0.015289; 0.522992; -0.109283;,
    -0.002619; 0.754596; -0.064228;,
    0.033758; 0.760891; -0.075445;,
    0.054081; 0.527614; -0.121585;,
    0.015508; 0.516718; -0.068811;,
    -0.002187; 0.746045; -0.026606;,
    0.054431; 0.517465; -0.056103;,
    0.034457; 0.747054; -0.014576;,
    0.078265; 0.524198; -0.088716;,
    0.056666; 0.756227; -0.044758;,
    0.054081; 0.527614; -0.121585;,
    0.033758; 0.760891; -0.075445;,
    0.011895; 0.096150; -0.163714;,
    0.016548; 0.324350; -0.141050;,
    0.067675; 0.331854; -0.157020;,
    0.077500; 0.097916; -0.185008;,
    0.011913; 0.093755; -0.094757;,
    0.016628; 0.313609; -0.087599;,
    0.077531; 0.094040; -0.073439;,
    0.068359; 0.314458; -0.070747;,
    0.118057; 0.096611; -0.129212;,
    0.099674; 0.325730; -0.113938;,
    0.077500; 0.097916; -0.185008;,
    0.067675; 0.331854; -0.157020;;
    112;
    4;0, 1, 2, 3;,
    4;4, 5, 1, 0;,
    4;6, 7, 5, 4;,
    4;8, 9, 7, 6;,
    4;10, 11, 9, 8;,
    4;12, 13, 11, 10;,
    4;14, 15, 13, 12;,
    4;16, 17, 15, 14;,
    4;3, 2, 17, 16;,
    4;1, 18, 19, 2;,
    4;5, 20, 18, 1;,
    4;7, 21, 20, 5;,
    4;9, 22, 21, 7;,
    4;11, 23, 22, 9;,
    4;13, 24, 23, 11;,
    4;15, 25, 24, 13;,
    4;17, 26, 25, 15;,
    4;2, 19, 26, 17;,
    4;18, 27, 28, 19;,
    4;20, 29, 27, 18;,
    4;21, 30, 29, 20;,
    4;22, 31, 30, 21;,
    4;23, 32, 31, 22;,
    4;24, 33, 32, 23;,
    4;25, 34, 33, 24;,
    4;26, 35, 34, 25;,
    4;19, 28, 35, 26;,
    4;36, 37, 38, 39;,
    4;40, 41, 37, 36;,
    4;42, 43, 41, 40;,
    4;44, 45, 43, 42;,
    4;46, 47, 45, 44;,
    4;48, 49, 47, 46;,
    4;50, 51, 49, 48;,
    4;52, 53, 51, 50;,
    4;39, 38, 53, 52;,
    4;37, 54, 55, 38;,
    4;41, 56, 54, 37;,
    4;43, 57, 56, 41;,
    4;45, 58, 57, 43;,
    4;47, 59, 58, 45;,
    4;49, 60, 59, 47;,
    4;51, 61, 60, 49;,
    4;53, 62, 61, 51;,
    4;38, 55, 62, 53;,
    4;54, 63, 64, 55;,
    4;56, 65, 63, 54;,
    4;57, 66, 65, 56;,
    4;58, 67, 66, 57;,
    4;59, 68, 67, 58;,
    4;60, 69, 68, 59;,
    4;61, 70, 69, 60;,
    4;62, 71, 70, 61;,
    4;55, 64, 71, 62;,
    3;3, 72, 0;,
    3;0, 72, 4;,
    3;4, 72, 6;,
    3;6, 72, 8;,
    3;8, 72, 10;,
    3;10, 72, 12;,
    3;12, 72, 14;,
    3;14, 72, 16;,
    3;16, 72, 3;,
    3;63, 73, 64;,
    3;65, 73, 63;,
    3;66, 73, 65;,
    3;67, 73, 66;,
    3;68, 73, 67;,
    3;69, 73, 68;,
    3;70, 73, 69;,
    3;71, 73, 70;,
    3;64, 73, 71;,
    3;74, 75, 76;,
    3;77, 74, 76;,
    3;78, 77, 76;,
    3;79, 78, 76;,
    3;80, 79, 76;,
    4;81, 82, 83, 84;,
    4;85, 86, 82, 81;,
    4;87, 88, 86, 85;,
    4;89, 90, 88, 87;,
    4;91, 92, 90, 89;,
    4;93, 81, 84, 94;,
    4;95, 85, 81, 93;,
    4;96, 87, 85, 95;,
    4;97, 89, 87, 96;,
    4;98, 91, 89, 97;,
    4;99, 100, 101, 102;,
    4;103, 104, 100, 99;,
    4;105, 106, 104, 103;,
    4;107, 108, 106, 105;,
    4;109, 110, 108, 107;,
    4;111, 112, 113, 114;,
    4;115, 116, 112, 111;,
    4;117, 118, 116, 115;,
    4;119, 120, 118, 117;,
    4;121, 122, 120, 119;,
    4;74, 111, 114, 75;,
    4;77, 115, 111, 74;,
    4;78, 117, 115, 77;,
    4;79, 119, 117, 78;,
    4;80, 121, 119, 79;,
    4;100, 93, 94, 101;,
    4;104, 95, 93, 100;,
    4;106, 96, 95, 104;,
    4;108, 97, 96, 106;,
    4;110, 98, 97, 108;,
    4;112, 99, 102, 113;,
    4;116, 103, 99, 112;,
    4;118, 105, 103, 116;,
    4;120, 107, 105, 118;,
    4;122, 109, 107, 120;;

   MeshNormals {
    123;
    -0.116696; -0.962817; 0.243648;,
    -0.114261; -0.964491; 0.238119;,
    -0.244571; -0.963054; 0.112748;,
    -0.249983; -0.961347; 0.115412;,
    0.067840; -0.964239; 0.256204;,
    0.066154; -0.965881; 0.250395;,
    0.217273; -0.964949; 0.147194;,
    0.212249; -0.966574; 0.143824;,
    0.261684; -0.964611; -0.032362;,
    0.255668; -0.966244; -0.031721;,
    0.180300; -0.963385; -0.198447;,
    0.176099; -0.965046; -0.194101;,
    0.011191; -0.961848; -0.273356;,
    0.010769; -0.963543; -0.267338;,
    -0.166514; -0.960713; -0.222044;,
    -0.162968; -0.962434; -0.217171;,
    -0.269655; -0.960517; -0.068507;,
    -0.263807; -0.962241; -0.067064;,
    0.094819; -0.967616; -0.233942;,
    0.218999; -0.968990; -0.114448;,
    -0.077097; -0.966285; -0.245661;,
    -0.216304; -0.965636; -0.144080;,
    -0.257684; -0.965950; 0.023209;,
    -0.181873; -0.967087; 0.177944;,
    -0.024316; -0.968526; 0.247723;,
    0.141228; -0.969583; 0.199908;,
    0.237337; -0.969761; 0.056878;,
    0.390858; -0.244521; -0.887378;,
    0.868788; -0.249809; -0.427554;,
    -0.270787; -0.239409; -0.932394;,
    -0.806586; -0.236896; -0.541571;,
    -0.965844; -0.238093; 0.102258;,
    -0.674011; -0.242485; 0.697789;,
    -0.067666; -0.248023; 0.966388;,
    0.569497; -0.252093; 0.782382;,
    0.939328; -0.252790; 0.231862;,
    0.390858; -0.244521; -0.887378;,
    0.341550; 0.553419; -0.759651;,
    0.752215; 0.548884; -0.364552;,
    0.868788; -0.249809; -0.427554;,
    -0.270787; -0.239409; -0.932394;,
    -0.226997; 0.557783; -0.798343;,
    -0.806586; -0.236896; -0.541571;,
    -0.687392; 0.559979; -0.462510;,
    -0.965844; -0.238093; 0.102258;,
    -0.824225; 0.558951; 0.090702;,
    -0.674011; -0.242485; 0.697789;,
    -0.573472; 0.555158; 0.602436;,
    -0.067666; -0.248023; 0.966388;,
    -0.052455; 0.550421; 0.833238;,
    0.569497; -0.252093; 0.782382;,
    0.495042; 0.546937; 0.675125;,
    0.939328; -0.252790; 0.231862;,
    0.812837; 0.546315; 0.202082;,
    0.261635; 0.775419; -0.574694;,
    0.573026; 0.771984; -0.275103;,
    -0.169470; 0.778737; -0.604027;,
    -0.518577; 0.780393; -0.349377;,
    -0.622339; 0.779602; 0.070103;,
    -0.432200; 0.776739; 0.458126;,
    -0.037125; 0.773149; 0.633137;,
    0.378023; 0.770503; 0.513247;,
    0.618987; 0.770043; 0.154559;,
    0.148801; 0.936794; -0.316664;,
    0.321401; 0.934891; -0.150601;,
    -0.090161; 0.938634; -0.332922;,
    -0.283669; 0.939552; -0.191768;,
    -0.341183; 0.939113; 0.040748;,
    -0.235791; 0.937527; 0.255824;,
    -0.016801; 0.935537; 0.352829;,
    0.213315; 0.934068; 0.286380;,
    0.346878; 0.933814; 0.087561;,
    -0.007449; -0.999965; -0.003724;,
    0.007449; 0.999965; 0.003724;,
    -0.653292; -0.580722; -0.485769;,
    0.264779; -0.551839; -0.790800;,
    0.022665; -0.999716; -0.007396;,
    -0.650122; -0.593754; 0.474128;,
    0.263079; -0.573224; 0.776018;,
    0.837307; -0.546716; -0.004344;,
    0.264779; -0.551839; -0.790800;,
    -0.808170; 0.278991; -0.518676;,
    -0.772120; 0.447346; -0.451345;,
    0.239222; 0.414271; -0.878153;,
    0.264013; 0.364733; -0.892898;,
    -0.776050; 0.074053; 0.626308;,
    -0.690948; 0.345281; 0.635115;,
    0.354921; 0.033602; 0.934292;,
    0.373339; 0.247519; 0.894065;,
    0.976388; 0.215665; -0.012420;,
    0.955983; 0.289864; -0.045554;,
    0.264013; 0.364733; -0.892898;,
    0.239222; 0.414271; -0.878153;,
    -0.814755; 0.079345; -0.574351;,
    0.291353; 0.289999; -0.911600;,
    -0.797895; -0.213559; 0.563698;,
    0.318711; -0.185563; 0.929510;,
    0.991811; 0.126433; 0.018031;,
    0.291353; 0.289999; -0.911600;,
    -0.811381; 0.069261; -0.580400;,
    -0.812102; 0.056366; -0.580786;,
    0.297132; 0.238652; -0.924531;,
    0.300958; 0.200170; -0.932393;,
    -0.806438; -0.113221; 0.580377;,
    -0.800240; -0.192289; 0.568015;,
    0.312524; -0.095143; 0.945133;,
    0.316837; -0.163656; 0.934254;,
    0.995089; 0.098555; 0.009192;,
    0.994648; 0.102641; 0.011843;,
    0.300958; 0.200170; -0.932393;,
    0.297132; 0.238652; -0.924531;,
    -0.809613; -0.004869; -0.586944;,
    -0.809924; 0.081498; -0.580846;,
    0.304255; 0.158027; -0.939391;,
    0.308785; 0.034964; -0.950489;,
    -0.807718; -0.056286; 0.586875;,
    -0.808759; -0.030308; 0.587359;,
    0.309034; -0.048598; 0.949808;,
    0.309167; -0.023481; 0.950718;,
    0.999969; 0.007779; 0.001169;,
    0.995648; 0.092983; 0.006279;,
    0.308785; 0.034964; -0.950489;,
    0.304255; 0.158027; -0.939391;;
    112;
    4;0, 1, 2, 3;,
    4;4, 5, 1, 0;,
    4;6, 7, 5, 4;,
    4;8, 9, 7, 6;,
    4;10, 11, 9, 8;,
    4;12, 13, 11, 10;,
    4;14, 15, 13, 12;,
    4;16, 17, 15, 14;,
    4;3, 2, 17, 16;,
    4;1, 18, 19, 2;,
    4;5, 20, 18, 1;,
    4;7, 21, 20, 5;,
    4;9, 22, 21, 7;,
    4;11, 23, 22, 9;,
    4;13, 24, 23, 11;,
    4;15, 25, 24, 13;,
    4;17, 26, 25, 15;,
    4;2, 19, 26, 17;,
    4;18, 27, 28, 19;,
    4;20, 29, 27, 18;,
    4;21, 30, 29, 20;,
    4;22, 31, 30, 21;,
    4;23, 32, 31, 22;,
    4;24, 33, 32, 23;,
    4;25, 34, 33, 24;,
    4;26, 35, 34, 25;,
    4;19, 28, 35, 26;,
    4;36, 37, 38, 39;,
    4;40, 41, 37, 36;,
    4;42, 43, 41, 40;,
    4;44, 45, 43, 42;,
    4;46, 47, 45, 44;,
    4;48, 49, 47, 46;,
    4;50, 51, 49, 48;,
    4;52, 53, 51, 50;,
    4;39, 38, 53, 52;,
    4;37, 54, 55, 38;,
    4;41, 56, 54, 37;,
    4;43, 57, 56, 41;,
    4;45, 58, 57, 43;,
    4;47, 59, 58, 45;,
    4;49, 60, 59, 47;,
    4;51, 61, 60, 49;,
    4;53, 62, 61, 51;,
    4;38, 55, 62, 53;,
    4;54, 63, 64, 55;,
    4;56, 65, 63, 54;,
    4;57, 66, 65, 56;,
    4;58, 67, 66, 57;,
    4;59, 68, 67, 58;,
    4;60, 69, 68, 59;,
    4;61, 70, 69, 60;,
    4;62, 71, 70, 61;,
    4;55, 64, 71, 62;,
    3;3, 72, 0;,
    3;0, 72, 4;,
    3;4, 72, 6;,
    3;6, 72, 8;,
    3;8, 72, 10;,
    3;10, 72, 12;,
    3;12, 72, 14;,
    3;14, 72, 16;,
    3;16, 72, 3;,
    3;63, 73, 64;,
    3;65, 73, 63;,
    3;66, 73, 65;,
    3;67, 73, 66;,
    3;68, 73, 67;,
    3;69, 73, 68;,
    3;70, 73, 69;,
    3;71, 73, 70;,
    3;64, 73, 71;,
    3;74, 75, 76;,
    3;77, 74, 76;,
    3;78, 77, 76;,
    3;79, 78, 76;,
    3;80, 79, 76;,
    4;81, 82, 83, 84;,
    4;85, 86, 82, 81;,
    4;87, 88, 86, 85;,
    4;89, 90, 88, 87;,
    4;91, 92, 90, 89;,
    4;93, 81, 84, 94;,
    4;95, 85, 81, 93;,
    4;96, 87, 85, 95;,
    4;97, 89, 87, 96;,
    4;98, 91, 89, 97;,
    4;99, 100, 101, 102;,
    4;103, 104, 100, 99;,
    4;105, 106, 104, 103;,
    4;107, 108, 106, 105;,
    4;109, 110, 108, 107;,
    4;111, 112, 113, 114;,
    4;115, 116, 112, 111;,
    4;117, 118, 116, 115;,
    4;119, 120, 118, 117;,
    4;121, 122, 120, 119;,
    4;74, 111, 114, 75;,
    4;77, 115, 111, 74;,
    4;78, 117, 115, 77;,
    4;79, 119, 117, 78;,
    4;80, 121, 119, 79;,
    4;100, 93, 94, 101;,
    4;104, 95, 93, 100;,
    4;106, 96, 95, 104;,
    4;108, 97, 96, 106;,
    4;110, 98, 97, 108;,
    4;112, 99, 102, 113;,
    4;116, 103, 99, 112;,
    4;118, 105, 103, 116;,
    4;120, 107, 105, 118;,
    4;122, 109, 107, 120;;
   }

   MeshTextureCoords {
    123;
    0.658750; 0.431583;,
    0.587499; 0.382889;,
    0.587499; 0.595150;,
    0.658749; 0.546456;,
    0.698075; 0.343585;,
    0.660164; 0.220291;,
    0.758326; 0.323635;,
    0.771491; 0.183434;,
    0.811308; 0.381072;,
    0.869391; 0.289563;,
    0.832233; 0.489019;,
    0.908054; 0.489019;,
    0.811308; 0.596965;,
    0.869391; 0.688476;,
    0.758325; 0.654401;,
    0.771492; 0.794605;,
    0.698075; 0.634455;,
    0.660164; 0.757746;,
    0.539892; 0.350354;,
    0.539892; 0.627684;,
    0.634833; 0.137908;,
    0.780289; 0.089751;,
    0.908202; 0.228417;,
    0.958719; 0.489019;,
    0.908201; 0.749623;,
    0.780289; 0.888288;,
    0.634832; 0.840128;,
    0.485897; 0.314190;,
    0.485897; 0.663848;,
    0.605600; 0.046332;,
    0.788996; -0.014385;,
    0.950270; 0.160446;,
    1.013961; 0.489019;,
    0.950269; 0.817594;,
    0.788995; 0.992425;,
    0.605600; 0.931704;,
    0.464663; 0.344041;,
    0.423702; 0.372480;,
    0.423702; 0.627520;,
    0.464662; 0.655957;,
    0.361486; 0.105099;,
    0.339340; 0.177109;,
    0.203410; 0.050936;,
    0.210088; 0.132823;,
    0.064401; 0.206893;,
    0.096428; 0.260342;,
    0.009503; 0.499998;,
    0.051539; 0.500000;,
    0.064401; 0.793107;,
    0.096428; 0.739657;,
    0.203409; 0.949064;,
    0.210090; 0.867177;,
    0.361486; 0.894899;,
    0.339340; 0.822889;,
    0.381399; 0.402400;,
    0.381399; 0.597600;,
    0.316831; 0.252871;,
    0.217907; 0.218974;,
    0.130914; 0.316575;,
    0.096559; 0.499999;,
    0.130914; 0.683425;,
    0.217906; 0.781023;,
    0.316831; 0.747128;,
    0.318088; 0.447180;,
    0.318088; 0.552819;,
    0.283143; 0.366253;,
    0.229605; 0.347909;,
    0.182526; 0.400729;,
    0.163932; 0.500000;,
    0.182526; 0.599270;,
    0.229606; 0.652090;,
    0.283144; 0.633747;,
    0.742794; 0.489017;,
    0.243407; 0.499999;,
    0.142813; 0.937733;,
    0.094942; 0.937733;,
    0.214621; 1.000000;,
    0.190685; 0.937733;,
    0.238557; 0.937733;,
    0.286429; 0.937733;,
    0.334300; 0.937733;,
    0.142813; 0.125315;,
    0.142813; 0.000000;,
    0.094942; 0.000000;,
    0.094942; 0.125315;,
    0.190685; 0.125315;,
    0.190685; 0.000000;,
    0.238557; 0.125315;,
    0.238557; 0.000000;,
    0.286429; 0.125315;,
    0.286429; 0.000000;,
    0.334300; 0.125315;,
    0.334300; 0.000000;,
    0.142813; 0.278431;,
    0.094942; 0.278431;,
    0.190685; 0.278431;,
    0.238557; 0.278431;,
    0.286429; 0.278431;,
    0.334300; 0.278431;,
    0.142813; 0.494596;,
    0.142813; 0.362168;,
    0.094942; 0.362103;,
    0.094942; 0.494596;,
    0.190685; 0.494596;,
    0.190685; 0.362261;,
    0.238557; 0.494596;,
    0.238557; 0.362254;,
    0.286429; 0.494596;,
    0.286429; 0.362157;,
    0.334300; 0.494596;,
    0.334300; 0.362103;,
    0.142813; 0.764802;,
    0.142813; 0.620887;,
    0.094942; 0.618623;,
    0.094942; 0.764802;,
    0.190685; 0.764802;,
    0.190685; 0.624361;,
    0.238557; 0.764802;,
    0.238557; 0.624218;,
    0.286429; 0.764802;,
    0.286429; 0.620659;,
    0.334300; 0.764802;,
    0.334300; 0.618623;;
   }

   FVFData {
    258;
    246;
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216;
   }

   MeshMaterialList {
    1;
    112;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;

    Material MushroomBrown {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.000000; 0.000000; 0.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "C:\\test\\MushroomBrown.tga";
     }
    }

   }
  }
}
