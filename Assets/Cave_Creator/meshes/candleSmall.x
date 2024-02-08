xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Fri Sep 16 07:49:28 2011

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

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
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
    77;
    0.027724; 0.503629; -0.034435;,
    0.025415; 0.516118; -0.032152;,
    0.034586; 0.504120; -0.034716;,
    0.030729; 0.520504; -0.032240;,
    0.021031; 0.532252; -0.029687;,
    0.017981; 0.526054; -0.029656;,
    0.016315; 0.538068; -0.028559;,
    0.010353; 0.534912; -0.027177;,
    0.009423; 0.548907; -0.029926;,
    0.003469; 0.545738; -0.028539;,
    0.031474; 0.502919; -0.028442;,
    0.028391; 0.517356; -0.026062;,
    0.028391; 0.517356; -0.026062;,
    0.019825; 0.528198; -0.023538;,
    0.019825; 0.528198; -0.023538;,
    0.012507; 0.538946; -0.022218;,
    0.012507; 0.538946; -0.022218;,
    0.005619; 0.549778; -0.023582;,
    0.071629; 0.147700; -0.074345;,
    0.037429; 0.145195; -0.088447;,
    0.062645; 0.528214; -0.053428;,
    0.036223; 0.531050; -0.068861;,
    0.037429; 0.145195; -0.088447;,
    0.003478; 0.114006; -0.074723;,
    0.036223; 0.531050; -0.068861;,
    0.006469; 0.528264; -0.061700;,
    -0.009954; 0.090849; -0.040198;,
    -0.009187; 0.521487; -0.036141;,
    0.005130; 0.082406; -0.005811;,
    -0.001575; 0.514690; -0.007155;,
    0.040028; 0.086851; 0.008157;,
    0.024847; 0.511853; 0.008277;,
    0.074377; 0.097641; -0.006556;,
    0.054601; 0.514639; 0.001116;,
    0.087897; 0.116331; -0.041172;,
    0.070257; 0.521416; -0.024443;,
    0.158712; 0.000000; -0.164301;,
    0.040687; 0.000000; -0.042704;,
    0.038414; 0.000000; -0.212060;,
    0.038414; 0.000000; -0.212060;,
    -0.080386; 0.000000; -0.160779;,
    -0.128094; 0.000000; -0.040503;,
    -0.076768; 0.000000; 0.078314;,
    0.043517; 0.000000; 0.126087;,
    0.162316; 0.000000; 0.074806;,
    0.210038; 0.000000; -0.045483;,
    0.031150; 0.503874; -0.034575;,
    0.037407; 0.122271; -0.121321;,
    0.091223; 0.122909; -0.099956;,
    0.037414; 0.108868; -0.139190;,
    0.107357; 0.109698; -0.111422;,
    0.037407; 0.122271; -0.121321;,
    -0.031075; 0.077603; -0.109965;,
    0.037414; 0.108868; -0.139190;,
    -0.058560; 0.062840; -0.040293;,
    -0.028757; 0.063997; 0.028829;,
    0.040975; 0.075456; 0.056811;,
    0.110047; 0.077430; 0.026996;,
    0.137744; 0.081464; -0.042893;,
    0.038051; 0.063539; -0.158044;,
    0.120754; 0.064520; -0.125211;,
    -0.043224; 0.041179; -0.123194;,
    0.038051; 0.063539; -0.158044;,
    -0.075968; 0.036069; -0.040561;,
    -0.040695; 0.035788; 0.041138;,
    0.041815; 0.046484; 0.074167;,
    0.123488; 0.048818; 0.038912;,
    0.156423; 0.044260; -0.043915;,
    0.038005; 0.045471; -0.185916;,
    0.140273; 0.046684; -0.145315;,
    -0.062906; 0.038383; -0.142406;,
    0.038005; 0.045471; -0.185916;,
    -0.103464; 0.035515; -0.040156;,
    -0.059831; 0.034344; 0.060853;,
    0.042310; 0.041948; 0.101583;,
    0.143304; 0.044835; 0.057988;,
    0.183989; 0.041312; -0.044390;;
    126;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;3, 1, 4;,
    3;1, 5, 4;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;0, 10, 1;,
    3;10, 11, 1;,
    3;3, 12, 2;,
    3;12, 10, 2;,
    3;10, 0, 2;,
    3;1, 11, 5;,
    3;11, 13, 5;,
    3;4, 14, 3;,
    3;14, 12, 3;,
    3;5, 13, 7;,
    3;13, 15, 7;,
    3;6, 16, 4;,
    3;16, 14, 4;,
    3;7, 15, 9;,
    3;15, 17, 9;,
    3;17, 8, 9;,
    3;8, 17, 6;,
    3;17, 16, 6;,
    3;18, 19, 20;,
    3;19, 21, 20;,
    3;22, 23, 24;,
    3;23, 25, 24;,
    3;23, 26, 25;,
    3;26, 27, 25;,
    3;26, 28, 27;,
    3;28, 29, 27;,
    3;28, 30, 29;,
    3;30, 31, 29;,
    3;30, 32, 31;,
    3;32, 33, 31;,
    3;32, 34, 33;,
    3;34, 35, 33;,
    3;34, 18, 35;,
    3;18, 20, 35;,
    3;36, 37, 38;,
    3;39, 37, 40;,
    3;40, 37, 41;,
    3;41, 37, 42;,
    3;42, 37, 43;,
    3;43, 37, 44;,
    3;44, 37, 45;,
    3;45, 37, 36;,
    3;21, 46, 20;,
    3;25, 46, 24;,
    3;27, 46, 25;,
    3;29, 46, 27;,
    3;31, 46, 29;,
    3;33, 46, 31;,
    3;35, 46, 33;,
    3;20, 46, 35;,
    3;47, 48, 49;,
    3;48, 50, 49;,
    3;23, 51, 52;,
    3;51, 53, 52;,
    3;26, 23, 54;,
    3;23, 52, 54;,
    3;28, 26, 55;,
    3;26, 54, 55;,
    3;30, 28, 56;,
    3;28, 55, 56;,
    3;32, 30, 57;,
    3;30, 56, 57;,
    3;34, 32, 58;,
    3;32, 57, 58;,
    3;48, 34, 50;,
    3;34, 58, 50;,
    3;49, 50, 59;,
    3;50, 60, 59;,
    3;52, 53, 61;,
    3;53, 62, 61;,
    3;54, 52, 63;,
    3;52, 61, 63;,
    3;55, 54, 64;,
    3;54, 63, 64;,
    3;56, 55, 65;,
    3;55, 64, 65;,
    3;57, 56, 66;,
    3;56, 65, 66;,
    3;58, 57, 67;,
    3;57, 66, 67;,
    3;50, 58, 60;,
    3;58, 67, 60;,
    3;59, 60, 68;,
    3;60, 69, 68;,
    3;61, 62, 70;,
    3;62, 71, 70;,
    3;63, 61, 72;,
    3;61, 70, 72;,
    3;64, 63, 73;,
    3;63, 72, 73;,
    3;65, 64, 74;,
    3;64, 73, 74;,
    3;66, 65, 75;,
    3;65, 74, 75;,
    3;67, 66, 76;,
    3;66, 75, 76;,
    3;60, 67, 69;,
    3;67, 76, 69;,
    3;68, 69, 38;,
    3;69, 36, 38;,
    3;70, 71, 40;,
    3;71, 39, 40;,
    3;72, 70, 41;,
    3;70, 40, 41;,
    3;73, 72, 42;,
    3;72, 41, 42;,
    3;74, 73, 43;,
    3;73, 42, 43;,
    3;75, 74, 44;,
    3;74, 43, 44;,
    3;76, 75, 45;,
    3;75, 44, 45;,
    3;69, 76, 36;,
    3;76, 45, 36;,
    3;48, 18, 34;,
    3;48, 47, 18;,
    3;47, 19, 18;,
    3;23, 22, 51;;

   MeshNormals {
    77;
    -0.583340; -0.699389; -0.413000;,
    -0.831400; -0.273127; -0.483916;,
    0.631621; -0.540004; -0.556283;,
    0.696044; 0.458730; -0.552349;,
    0.589112; 0.598756; -0.542621;,
    -0.767728; -0.412056; -0.490717;,
    0.634373; 0.475590; -0.609413;,
    -0.786622; -0.456701; -0.415511;,
    0.091390; 0.736456; -0.670284;,
    -0.857280; 0.126057; -0.499181;,
    0.101293; -0.829538; 0.549187;,
    0.091176; -0.146778; 0.984959;,
    0.091176; -0.146778; 0.984959;,
    0.083299; -0.116296; 0.989715;,
    0.083299; -0.116296; 0.989715;,
    0.057902; 0.051734; 0.996981;,
    0.057902; 0.051734; 0.996981;,
    -0.378850; 0.782636; 0.493917;,
    0.713807; 0.439992; -0.544873;,
    -0.159294; 0.456982; -0.875096;,
    0.314234; 0.919289; -0.236991;,
    -0.112110; 0.925621; -0.361464;,
    -0.159294; 0.456982; -0.875096;,
    -0.795412; 0.407337; -0.448772;,
    -0.112110; 0.925621; -0.361464;,
    -0.480127; 0.869691; -0.114521;,
    -0.897640; 0.410366; 0.160754;,
    -0.517988; 0.810945; 0.272135;,
    -0.601054; 0.518502; 0.608186;,
    -0.296119; 0.784956; 0.544205;,
    -0.134251; 0.618344; 0.774356;,
    0.031537; 0.789712; 0.612666;,
    0.389510; 0.624531; 0.676936;,
    0.331968; 0.819916; 0.466407;,
    0.807158; 0.565646; 0.168940;,
    0.469659; 0.872776; 0.132973;,
    0.589207; -0.539244; -0.601707;,
    0.000000; -1.000000; 0.000000;,
    -0.028905; -0.551596; -0.833611;,
    -0.028905; -0.551596; -0.833611;,
    -0.615812; -0.536307; -0.577192;,
    -0.855350; -0.517679; 0.019642;,
    -0.616461; -0.502894; 0.605866;,
    -0.004341; -0.523559; 0.851978;,
    0.603323; -0.544980; 0.582236;,
    0.846795; -0.531910; -0.003120;,
    -0.033968; 0.971004; 0.236639;,
    -0.279704; 0.777952; -0.562633;,
    0.512942; 0.819771; -0.254688;,
    -0.188300; 0.593976; -0.782135;,
    0.576083; 0.688917; -0.439912;,
    -0.279704; 0.777952; -0.562633;,
    -0.773514; 0.513541; -0.371419;,
    -0.188300; 0.593976; -0.782135;,
    -0.772302; 0.616243; 0.154255;,
    -0.497033; 0.728715; 0.471096;,
    -0.136433; 0.803763; 0.579095;,
    0.271839; 0.804260; 0.528460;,
    0.637337; 0.741495; 0.209731;,
    -0.105004; 0.641310; -0.760063;,
    0.457043; 0.782479; -0.422893;,
    -0.553382; 0.704243; -0.444759;,
    -0.105004; 0.641310; -0.760063;,
    -0.536348; 0.843642; 0.024475;,
    -0.381341; 0.870163; 0.312084;,
    -0.038046; 0.867418; 0.496124;,
    0.381471; 0.844192; 0.376590;,
    0.553075; 0.827151; 0.099644;,
    -0.075259; 0.684266; -0.725339;,
    0.414162; 0.802704; -0.429110;,
    -0.484499; 0.754456; -0.442783;,
    -0.075259; 0.684266; -0.725339;,
    -0.497837; 0.867142; 0.014935;,
    -0.358121; 0.881738; 0.307064;,
    -0.023052; 0.871909; 0.489124;,
    0.397533; 0.838054; 0.373674;,
    0.544765; 0.836506; 0.059069;;
    126;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;3, 1, 4;,
    3;1, 5, 4;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;0, 10, 1;,
    3;10, 11, 1;,
    3;3, 12, 2;,
    3;12, 10, 2;,
    3;10, 0, 2;,
    3;1, 11, 5;,
    3;11, 13, 5;,
    3;4, 14, 3;,
    3;14, 12, 3;,
    3;5, 13, 7;,
    3;13, 15, 7;,
    3;6, 16, 4;,
    3;16, 14, 4;,
    3;7, 15, 9;,
    3;15, 17, 9;,
    3;17, 8, 9;,
    3;8, 17, 6;,
    3;17, 16, 6;,
    3;18, 19, 20;,
    3;19, 21, 20;,
    3;22, 23, 24;,
    3;23, 25, 24;,
    3;23, 26, 25;,
    3;26, 27, 25;,
    3;26, 28, 27;,
    3;28, 29, 27;,
    3;28, 30, 29;,
    3;30, 31, 29;,
    3;30, 32, 31;,
    3;32, 33, 31;,
    3;32, 34, 33;,
    3;34, 35, 33;,
    3;34, 18, 35;,
    3;18, 20, 35;,
    3;36, 37, 38;,
    3;39, 37, 40;,
    3;40, 37, 41;,
    3;41, 37, 42;,
    3;42, 37, 43;,
    3;43, 37, 44;,
    3;44, 37, 45;,
    3;45, 37, 36;,
    3;21, 46, 20;,
    3;25, 46, 24;,
    3;27, 46, 25;,
    3;29, 46, 27;,
    3;31, 46, 29;,
    3;33, 46, 31;,
    3;35, 46, 33;,
    3;20, 46, 35;,
    3;47, 48, 49;,
    3;48, 50, 49;,
    3;23, 51, 52;,
    3;51, 53, 52;,
    3;26, 23, 54;,
    3;23, 52, 54;,
    3;28, 26, 55;,
    3;26, 54, 55;,
    3;30, 28, 56;,
    3;28, 55, 56;,
    3;32, 30, 57;,
    3;30, 56, 57;,
    3;34, 32, 58;,
    3;32, 57, 58;,
    3;48, 34, 50;,
    3;34, 58, 50;,
    3;49, 50, 59;,
    3;50, 60, 59;,
    3;52, 53, 61;,
    3;53, 62, 61;,
    3;54, 52, 63;,
    3;52, 61, 63;,
    3;55, 54, 64;,
    3;54, 63, 64;,
    3;56, 55, 65;,
    3;55, 64, 65;,
    3;57, 56, 66;,
    3;56, 65, 66;,
    3;58, 57, 67;,
    3;57, 66, 67;,
    3;50, 58, 60;,
    3;58, 67, 60;,
    3;59, 60, 68;,
    3;60, 69, 68;,
    3;61, 62, 70;,
    3;62, 71, 70;,
    3;63, 61, 72;,
    3;61, 70, 72;,
    3;64, 63, 73;,
    3;63, 72, 73;,
    3;65, 64, 74;,
    3;64, 73, 74;,
    3;66, 65, 75;,
    3;65, 74, 75;,
    3;67, 66, 76;,
    3;66, 75, 76;,
    3;60, 67, 69;,
    3;67, 76, 69;,
    3;68, 69, 38;,
    3;69, 36, 38;,
    3;70, 71, 40;,
    3;71, 39, 40;,
    3;72, 70, 41;,
    3;70, 40, 41;,
    3;73, 72, 42;,
    3;72, 41, 42;,
    3;74, 73, 43;,
    3;73, 42, 43;,
    3;75, 74, 44;,
    3;74, 43, 44;,
    3;76, 75, 45;,
    3;75, 44, 45;,
    3;69, 76, 36;,
    3;76, 45, 36;,
    3;48, 18, 34;,
    3;48, 47, 18;,
    3;47, 19, 18;,
    3;23, 22, 51;;
   }

   MeshTextureCoords {
    77;
    0.975023; 0.970135;,
    0.975023; 0.728012;,
    0.856435; 0.970135;,
    0.856435; 0.723153;,
    0.856435; 0.508645;,
    0.975023; 0.498950;,
    0.856435; 0.273886;,
    0.975023; 0.273588;,
    0.856435; 0.056355;,
    0.975023; 0.056355;,
    0.915729; 0.970135;,
    0.975023; 0.728012;,
    0.856435; 0.723153;,
    0.975023; 0.498950;,
    0.856435; 0.508645;,
    0.975023; 0.273588;,
    0.856435; 0.273886;,
    0.915729; 0.056355;,
    0.745831; 0.678668;,
    0.827765; 0.681157;,
    0.745831; 0.029724;,
    0.827765; 0.029724;,
    0.172299; 0.681157;,
    0.254233; 0.761525;,
    0.172299; 0.029724;,
    0.254233; 0.029724;,
    0.336165; 0.818373;,
    0.336165; 0.029724;,
    0.418098; 0.838989;,
    0.418098; 0.029724;,
    0.500032; 0.828659;,
    0.500032; 0.029724;,
    0.581966; 0.803529;,
    0.581966; 0.029724;,
    0.663898; 0.758133;,
    0.663898; 0.029724;,
    0.745831; 0.944478;,
    0.500021; 0.982180;,
    0.827765; 0.944478;,
    0.172299; 0.944478;,
    0.254233; 0.944478;,
    0.336165; 0.944478;,
    0.418098; 0.944478;,
    0.500032; 0.943446;,
    0.581966; 0.943446;,
    0.663898; 0.944478;,
    0.500021; 0.012041;,
    0.827765; 0.685415;,
    0.759311; 0.685415;,
    0.827765; 0.775058;,
    0.745831; 0.775058;,
    0.172299; 0.685415;,
    0.254233; 0.822688;,
    0.172299; 0.775058;,
    0.336165; 0.843503;,
    0.418098; 0.840320;,
    0.500032; 0.823036;,
    0.581966; 0.823036;,
    0.663898; 0.819666;,
    0.827765; 0.849346;,
    0.745831; 0.849346;,
    0.254233; 0.881908;,
    0.172299; 0.849346;,
    0.336165; 0.886446;,
    0.418098; 0.885365;,
    0.500032; 0.869567;,
    0.581966; 0.869567;,
    0.663898; 0.880751;,
    0.827765; 0.879614;,
    0.745831; 0.879614;,
    0.254233; 0.886446;,
    0.172299; 0.879614;,
    0.336165; 0.886446;,
    0.418098; 0.886446;,
    0.500032; 0.876054;,
    0.581966; 0.876054;,
    0.663898; 0.886446;;
   }

   MeshMaterialList {
    1;
    126;
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

    Material candle {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.000000; 0.000000; 0.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "C:\\test\\Candle.tga";
     }
    }

   }
  }
}
