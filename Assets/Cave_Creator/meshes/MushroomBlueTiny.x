xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Fri Sep 16 07:52:56 2011

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
    31;
    0.067938; 0.048311; -0.115765;,
    0.027872; 0.000903; -0.058966;,
    -0.067938; 0.048311; -0.115765;,
    -0.027872; 0.000903; -0.058966;,
    -0.109926; 0.048311; 0.013461;,
    -0.045098; 0.000903; -0.005950;,
    0.000000; 0.048311; 0.093327;,
    0.000000; 0.000903; 0.026815;,
    0.109926; 0.048311; 0.013461;,
    0.045098; 0.000903; -0.005950;,
    0.098248; 0.124969; -0.154573;,
    -0.098248; 0.124969; -0.154573;,
    -0.158968; 0.124969; 0.032305;,
    0.000000; 0.124969; 0.147802;,
    0.158968; 0.124969; 0.032305;,
    0.126823; 0.141166; -0.195160;,
    0.098248; 0.124969; -0.154573;,
    -0.126823; 0.141166; -0.195160;,
    -0.098248; 0.124969; -0.154573;,
    -0.205204; 0.141166; 0.046071;,
    -0.158968; 0.124969; 0.032305;,
    0.000000; 0.141166; 0.195160;,
    0.000000; 0.124969; 0.147802;,
    0.205204; 0.141166; 0.046071;,
    0.158968; 0.124969; 0.032305;,
    0.084636; 0.247650; -0.137096;,
    -0.084636; 0.247650; -0.137096;,
    -0.136944; 0.247650; 0.023892;,
    0.000000; 0.247650; 0.123388;,
    0.136944; 0.247650; 0.023892;,
    0.000000; 0.279956; -0.020604;;
    45;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;2, 3, 4;,
    3;3, 5, 4;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;0, 8, 1;,
    3;8, 9, 1;,
    3;10, 0, 11;,
    3;0, 2, 11;,
    3;11, 2, 12;,
    3;2, 4, 12;,
    3;12, 4, 13;,
    3;4, 6, 13;,
    3;13, 6, 14;,
    3;6, 8, 14;,
    3;10, 14, 0;,
    3;14, 8, 0;,
    3;15, 16, 17;,
    3;16, 18, 17;,
    3;17, 18, 19;,
    3;18, 20, 19;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;15, 23, 16;,
    3;23, 24, 16;,
    3;25, 15, 26;,
    3;15, 17, 26;,
    3;26, 17, 27;,
    3;17, 19, 27;,
    3;27, 19, 28;,
    3;19, 21, 28;,
    3;28, 21, 29;,
    3;21, 23, 29;,
    3;25, 29, 15;,
    3;29, 23, 15;,
    3;25, 26, 30;,
    3;26, 27, 30;,
    3;27, 28, 30;,
    3;28, 29, 30;,
    3;29, 25, 30;;

   MeshNormals {
    31;
    0.417748; -0.703042; -0.575516;,
    0.333199; -0.826093; -0.454476;,
    -0.417747; -0.703043; -0.575516;,
    -0.333198; -0.826093; -0.454476;,
    -0.671964; -0.707837; 0.217788;,
    -0.544596; -0.818896; 0.181177;,
    0.000000; -0.710669; 0.703527;,
    0.000000; -0.814316; 0.580422;,
    0.671964; -0.707837; 0.217788;,
    0.544596; -0.818895; 0.181177;,
    0.347815; -0.805689; -0.479469;,
    -0.347815; -0.805689; -0.479469;,
    -0.557502; -0.810328; 0.180442;,
    0.000000; -0.813066; 0.582171;,
    0.557502; -0.810328; 0.180442;,
    0.538925; -0.404960; -0.738625;,
    0.347815; -0.805689; -0.479469;,
    -0.538925; -0.404960; -0.738625;,
    -0.347815; -0.805689; -0.479469;,
    -0.870883; -0.399539; 0.286238;,
    -0.557502; -0.810328; 0.180442;,
    0.000000; -0.396134; 0.918193;,
    0.000000; -0.813066; 0.582171;,
    0.870883; -0.399539; 0.286237;,
    0.557502; -0.810328; 0.180442;,
    0.317666; 0.841379; -0.437229;,
    -0.317666; 0.841379; -0.437229;,
    -0.513994; 0.841379; 0.167007;,
    0.000000; 0.841379; 0.540446;,
    0.513994; 0.841379; 0.167007;,
    0.000000; 1.000000; 0.000000;;
    45;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;2, 3, 4;,
    3;3, 5, 4;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;0, 8, 1;,
    3;8, 9, 1;,
    3;10, 0, 11;,
    3;0, 2, 11;,
    3;11, 2, 12;,
    3;2, 4, 12;,
    3;12, 4, 13;,
    3;4, 6, 13;,
    3;13, 6, 14;,
    3;6, 8, 14;,
    3;10, 14, 0;,
    3;14, 8, 0;,
    3;15, 16, 17;,
    3;16, 18, 17;,
    3;17, 18, 19;,
    3;18, 20, 19;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;15, 23, 16;,
    3;23, 24, 16;,
    3;25, 15, 26;,
    3;15, 17, 26;,
    3;26, 17, 27;,
    3;17, 19, 27;,
    3;27, 19, 28;,
    3;19, 21, 28;,
    3;28, 21, 29;,
    3;21, 23, 29;,
    3;25, 29, 15;,
    3;29, 23, 15;,
    3;25, 26, 30;,
    3;26, 27, 30;,
    3;27, 28, 30;,
    3;28, 29, 30;,
    3;29, 25, 30;;
   }

   MeshTextureCoords {
    31;
    0.890790; 0.315276;,
    0.936620; 0.291178;,
    0.420355; 0.075577;,
    0.411967; 0.023854;,
    0.047018; 0.448915;,
    -0.004400; 0.440222;,
    0.286716; 0.919348;,
    0.262924; 0.964875;,
    0.808193; 0.836754;,
    0.844507; 0.872761;,
    0.862992; 0.364349;,
    0.447048; 0.152416;,
    0.116954; 0.482509;,
    0.328888; 0.898452;,
    0.789963; 0.825425;,
    0.743144; 0.390502;,
    0.752096; 0.384927;,
    0.464356; 0.248453;,
    0.462245; 0.237242;,
    0.243110; 0.469699;,
    0.232219; 0.467267;,
    0.385159; 0.748486;,
    0.379905; 0.757117;,
    0.694196; 0.699540;,
    0.701205; 0.706228;,
    0.669872; 0.435968;,
    0.481693; 0.340088;,
    0.332354; 0.489427;,
    0.428237; 0.677604;,
    0.636833; 0.644566;,
    0.514616; 0.524161;;
   }

   MeshMaterialList {
    1;
    45;
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

    Material MushroomBlue {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.000000; 0.000000; 0.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "C:\\test\\MushroomBlue.tga";
     }
    }

   }
  }
}
