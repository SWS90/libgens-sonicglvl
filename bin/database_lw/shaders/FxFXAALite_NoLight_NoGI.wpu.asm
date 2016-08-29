//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//   sampler2D s0;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c24      1
//   s0             s0       1
//

    ps_3_0
    def c0, 0.298999995, 0.587000012, 0.114, -8
    def c1, -0.166666672, 0.166666672, -0.5, 0.5
    def c2, 0.5, 0, 1, 0.0078125
    def c3, 0.25, 0, 0, 0
    dcl vPos.xy
    dcl_2d s0
    mov r0.z, c2.y
    mov r1.x, c24.w
    mov r2.xyz, c2
    mul r1.yz, r2.x, c24.xzww
    add r2.xw, c2.x, vPos.xyzy
    mad r0.xy, r2.xwzw, c24.zwzw, -r1.yzzw
    mul r3.xy, r2.xwzw, c24.zwzw
    add r0.w, r1.x, r0.y
    texldl r1, r0.xwzz, s0
    texldl r4, r0.xyzz, s0
    dp3 r0.z, r4, c0
    dp3 r0.w, r1, c0
    add r1.xy, r0, c24.zwzw
    mad r2.xy, c24.zwzw, r2.zyzw, r0
    mov r1.zw, c2.y
    texldl r1, r1, s0
    dp3 r0.x, r1, c0
    add r0.y, r0.x, r0.w
    mov r2.zw, c2.y
    texldl r1, r2, s0
    dp3 r1.x, r1, c0
    add r1.y, r0.z, r1.x
    add r1.x, r0.x, r1.x
    add r0.y, -r0.y, r1.y
    mov r2.xz, -r0.y
    cmp r0.y, r2.z, r2.z, r0.y
    add r1.y, r0.w, r0.z
    add r2.yw, -r1.x, r1.y
    min r1.x, r2_abs.w, r0.y
    add r0.y, r1.x, c2.w
    rcp r0.y, r0.y
    mul r1, r0.y, r2
    mad r2, r2.zwzw, -r0.y, c0.w
    cmp r1, r2, c0.w, r1
    add r2, -r1.zwzw, -c0.w
    cmp r1, r2, r1, -c0.w
    mul r1, r1, c24.zwzw
    mad r2, r1, c1.zzww, r3.xyxy
    mad r1, r1.zwzw, c1.xxyy, r3.xyxy
    mul r4, r2.xyxx, c2.zzyy
    mul r2, r2.zwxx, c2.zzyy
    texldl r2, r2, s0
    texldl r4, r4, s0
    add r2.xyz, r2, r4
    mul r2.xyz, r2, c3.x
    mul r4, r1.xyxx, c2.zzyy
    mul r1, r1.zwxx, c2.zzyy
    texldl r1, r1, s0
    texldl r4, r4, s0
    add r1.xyz, r1, r4
    mad r2.xyz, r1, c3.x, r2
    mul r1.xyz, r1, c2.x
    dp3 r0.y, r2, c0
    min r1.w, r0.x, r0.w
    max r2.w, r0.w, r0.x
    max r4.x, r0.z, r2.w
    min r2.w, r1.w, r0.z
    mov r3.zw, c2.y
    texldl r3, r3, s0
    dp3 r0.x, r3, c0
    min r1.w, r2.w, r0.x
    max r2.w, r0.x, r4.x
    add r0.x, -r0.y, r2.w
    add r0.y, r0.y, -r1.w
    cmp r0.xy, r0, c2.y, c2.z
    add r0.x, r0.x, r0.y
    cmp oC0.xyz, -r0.x, r2, r1
    mov oC0.w, c2.z

// approximately 77 instruction slots used (18 texture, 59 arithmetic)