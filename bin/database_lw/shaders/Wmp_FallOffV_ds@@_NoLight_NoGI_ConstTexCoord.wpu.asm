//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    nrm_pp r0.xyz, v2
    mad_pp r1.xyz, r0, c0.x, c0.x
    mov r2.xyz, c80
    mad r2.xyz, r2, r1.y, c79
    mul_pp r3.xyz, r0, r0
    mul r2.xyz, r2, r3.y
    mov r4, c77
    mad r1.xyw, c78.xyzz, r1.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r2
    mad_pp r1.xyz, r3.z, r4, r1
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r2.xyz, r0.w, c36
    mad_pp r1.xyz, r1, c17, r2
    mul_pp r1.xyz, r1, c16
    mov r2.yw, c0
    mul_pp r0.w, r2.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r2.xyz, c22, -v1
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mad_pp r3.xyz, r2, r1.w, -c10
    mul_pp r2.xyz, r1.w, r2
    dp3_pp r1.w, r0, r2
    nrm_pp r2.xyz, r3
    dp3_sat_pp r0.x, r2, r0
    pow_pp r2.x, r0.x, r0.w
    mul_pp r0.x, r4.w, c20.z
    mul_pp r0.x, r2.x, r0.x
    mul_pp r0.xyz, r0.x, c37
    mul_pp r0.xyz, r0, c18
    texld_pp r3, v0, s1
    mul_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, v2.w
    texld_pp r3, v0, s0
    mad_pp r0.xyz, r1, r3, r0
    mul_pp r0.w, r3.w, c16.w
    mad r0.w, r0.w, v4.w, -c0.w
    mad_pp oC0.w, c16.y, r0.w, r2.w
    mul r0.w, c64.w, c64.y
    mov r3.yw, c64
    mad r1.x, r3.y, -r3.w, r3.w
    mad_pp r0.w, c77.w, r1.x, r0.w
    add_pp r1.x, r2.w, c150.w
    add_sat_pp r1.x, -r1.w, r1.x
    pow_pp r2.x, r1.x, c150.z
    mad_pp r1.x, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.x, v4
    mad_pp r0.xyz, r1, r0.w, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 63 instruction slots used (3 texture, 60 arithmetic)