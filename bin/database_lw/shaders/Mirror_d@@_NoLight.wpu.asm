//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   sampler2D g_ReflectionMapSampler;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   sampDif                  s0       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//   g_ReflectionMapSampler   s14      1
//

    ps_3_0
    def c0, 0.5, 1, 0, -1
    def c1, 2, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    dcl_2d s14
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add r1.xyz, c22, -v1
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c60.z, c60.w
    mul r2.xyz, r0.w, c58
    nrm_pp r3.xyz, v2
    dp3_sat_pp r0.w, r3, r1
    dp3_sat_pp r1.x, r3, -c10
    mul_pp r1.yzw, r2.xxyz, r0.w
    texld r2, v0.zwzw, s10
    mul r0.w, r1.x, r2.w
    mul_pp r2.xyz, r2, r2
    mad_pp r1.xyz, r0.w, c36, r1.yzww
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mul r2.xy, c24.zwzw, vPos
    mov r3.yzw, c0
    mad r3, c24.zzzw, r3.yzzw, r3.zwwz
    mad r2.xy, r2, c1.x, r3
    mov r2.z, -r2.y
    add r2.xy, r3.zwzw, r2.xzzw
    mad r2.xy, r2, c0.x, c0.x
    texld_pp r2, r2, s14
    mul_pp r2.xyz, r2, v2.w
    mad_pp r0.xyz, r1, r0, r2
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 41 instruction slots used (5 texture, 36 arithmetic)
