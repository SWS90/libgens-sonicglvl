//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgMorphWeight;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   mrgHasBone                    b15      1
//   g_MtxPalette                  c28     75
//   g_EyePosition                 c178     1
//   mrgGlobalLight_Direction      c183     1
//   mrgTexcoordOffset             c191     2
//   mrgMorphWeight                c194     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c0, 1, 3, 0.5, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_color v9
    dcl_normal v10
    dcl_blendweight v11
    dcl_blendindices v12
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord5 o5
    dcl_color o6
    mov r0.xy, v1
    mov r0.zw, v2.xyxy
    add o1, r0, c191
    mov r0.xy, v3
    mov r0.zw, v4.xyxy
    add o2, r0, c192
    mul r0.xyz, c194.y, v6
    mad r0.xyz, c194.x, v5, r0
    mad r0.xyz, c194.z, v7, r0
    mad r0.xyz, c194.w, v8, r0
    add r0.xyz, r0, v0
    if b15
      add r1.x, c0.x, -v11.x
      add r1.x, r1.x, -v11.y
      add r1.x, r1.x, -v11.z
      mul r2, c0.y, v12
      mova a0, r2.yxzw
      mul r3, v11.y, c30[a0.x]
      mad r3, v11.x, c30[a0.y], r3
      mad r3, v11.z, c30[a0.z], r3
      mad r2, r1.x, c30[a0.w], r3
      dp3 r1.y, r2, v10
      mov r0.w, c0.x
      dp4 r1.z, r2, r0
      mul r2, v11.y, c28[a0.x]
      mad r2, v11.x, c28[a0.y], r2
      mad r2, v11.z, c28[a0.z], r2
      mad r2, r1.x, c28[a0.w], r2
      dp3 r1.w, r2, v10
      dp4 r2.x, r2, r0
      mul r3, v11.y, c29[a0.x]
      mad r3, v11.x, c29[a0.y], r3
      mad r3, v11.z, c29[a0.z], r3
      mad r3, r1.x, c29[a0.w], r3
      dp4 r0.y, r3, r0
      dp3 r0.w, r3, v10
      mov r0.x, r2.x
      mov r0.z, r1.z
    else
      mov r0.w, v10.y
      mov r1.yw, v10.xzzx
    endif
    mul r2, r0.y, c233
    mad r2, r0.x, c232, r2
    mad r2, r0.z, c234, r2
    add r2, r2, c235
    mul r3, r2.y, c229
    mad r3, r2.x, c228, r3
    mad r3, r2.z, c230, r3
    mad r3, r2.w, c231, r3
    mul r4, r3.y, c225
    mad r4, r3.x, c224, r4
    mad r4, r3.z, c226, r4
    mad o0, r3.w, c227, r4
    mov o3.xyz, r2
    mul r0.xyz, r0.w, c233
    mad r0.xyz, r1.w, c232, r0
    mad r0.xyz, r1.y, c234, r0
    nrm r1.xyz, r0
    mov o4.xyz, r1
    add r0.x, -r3.z, -c199.y
    mul_sat o5.x, r0.x, c199.x
    add r0.xyz, -r2, c178
    nrm r2.xyz, r0
    dp3_sat r0.x, r1, r2
    add o5.w, -r0.x, c0.x
    mov o3.w, -r3.z
    dp3 r0.x, -c183, r2
    mad o5.y, r0.x, c0.z, c0.z
    mov o4.w, c0.w
    mov o5.z, c0.w
    mov o6, v9

// approximately 78 instruction slots used