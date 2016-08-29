//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampFO;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_SonicSkinFalloffParam  c150     1
//   g_EmissionParam          c151     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampFO                   s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v5.w
    add_pp r1.xyz, -c54, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r2.xyz, r0.w, c55
    add_pp r3.xyz, -c50, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    add_pp r5.xyz, -c42, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r6.xyz, r0.w, c43
    add_pp r7.xyz, -c46, v2
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r7.xyz, r0.w, r7
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r8.xyz, r0.w, c47
    mov r9.yw, c0
    mul_pp r0.w, r9.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r9.xyz, c22, -v2
    dp3_pp r1.w, r9, r9
    rsq_pp r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r7
    nrm_pp r11.xyz, r10
    nrm_pp r10.xyz, v3
    dp3_sat_pp r2.w, r11, r10
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r11.xyz, r8, r2.w
    mad_pp r12.xyz, r9, r1.w, -r5
    dp3_sat_pp r2.w, r10, -r5
    nrm_pp r5.xyz, r12
    dp3_sat_pp r3.w, r5, r10
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mad_pp r5.xyz, r3.w, r6, r11
    mad_pp r11.xyz, r9, r1.w, -r3
    dp3_sat_pp r3.x, r10, -r3
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.y, r12, r10
    pow_pp r4.w, r3.y, r0.w
    mul_pp r3.y, r4.w, c20.z
    mad_pp r3.yzw, r3.y, r4.xxyz, r5.xxyz
    mad_pp r5.xyz, r9, r1.w, -r1
    dp3_sat_pp r1.x, r10, -r1
    nrm_pp r11.xyz, r5
    dp3_sat_pp r1.y, r11, r10
    pow_pp r4.w, r1.y, r0.w
    mul_pp r1.y, r4.w, c20.z
    mad_pp r3.yzw, r1.y, r2.xxyz, r3
    mov r1.z, c20.z
    mul_pp r1.y, r1.z, c77.w
    mad_pp r5.xyz, r9, r1.w, -c10
    mul_pp r9.xyz, r1.w, r9
    rcp r1.z, r1.w
    mad_sat_pp r1.z, -r1.z, c60.z, c60.w
    nrm_pp r11.xyz, r5
    dp3_sat_pp r1.w, r11, r10
    pow_pp r4.w, r1.w, r0.w
    mul_pp r1.y, r1.y, r4.w
    mad_pp r3.yzw, r1.y, c37.xxyz, r3
    mul_pp r5.xyz, r1.z, c59
    mul r1.yzw, r1.z, c58.xxyz
    add_pp r11.xyz, r9, r9
    dp3_pp r4.w, r10, r9
    nrm_pp r9.xyz, r11
    dp3_sat_pp r5.w, r9, r10
    pow_pp r6.w, r5.w, r0.w
    mul_pp r0.w, r6.w, c20.z
    mad_pp r3.yzw, r0.w, r5.xxyz, r3
    mul_pp r3.yzw, r3, c18.xxyz
    texld_pp r5, v0, s1
    mul_pp r3.yzw, r3, r5.xxyz
    mul_pp r3.yzw, r3, v3.w
    dp3_sat_pp r0.w, r10, -r7
    mul_pp r5.xyz, r8, r0.w
    mad_pp r5.xyz, r2.w, r6, r5
    mad_pp r4.xyz, r3.x, r4, r5
    mad_pp r2.xyz, r1.x, r2, r4
    dp3_sat_pp r0.w, r10, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mov_sat_pp r0.w, r4.w
    mad_pp r1.xyz, r0.w, r1.yzww, r2
    mad_pp r2.xyz, r10, c0.x, c0.x
    mul_pp r4.xyz, r10, r10
    mov r5.xyz, c80
    mad r5.xyz, r5, r2.y, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r2.z, c81
    mad_pp r2.xyz, r4.x, r2.xyww, r5
    mad_pp r2.xyz, r4.z, r6, r2
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r3.yzww
    mul r0.w, c64.w, c64.y
    mov r1.yw, c64
    mad r1.x, r1.y, -r1.w, r1.w
    mad_pp r0.w, c77.w, r1.x, r0.w
    add_pp r1.x, r9.w, c150.w
    add_sat_pp r1.x, -r4.w, r1.x
    pow_pp r2.x, r1.x, c150.z
    mad_pp r1.x, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.x, v5
    mad_pp r0.xyz, r1, r0.w, r0
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c151
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c151.w
    mad_pp r0.xyz, r1, c17, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 165 instruction slots used (5 texture, 160 arithmetic)