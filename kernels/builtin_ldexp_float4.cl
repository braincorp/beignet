__kernel void builtin_ldexp_float4(__global float *dst,  __global float *src1, __global int *src2, __global int *vector) {
  int i = get_global_id(0);
  float4 x1 = (float4) (src1[i * (*vector) + 0],src1[i * (*vector) + 1],src1[i * (*vector) + 2],src1[i * (*vector) + 3]);
  int4 x2 = (int4) (src2[i * (*vector) + 0],src2[i * (*vector) + 1],src2[i * (*vector) + 2],src2[i * (*vector) + 3]);

  float4 ret;
  ret = ldexp(x1,x2);
  dst[i * (*vector) + 0] = ret[0];
  dst[i * (*vector) + 1] = ret[1];
  dst[i * (*vector) + 2] = ret[2];
  dst[i * (*vector) + 3] = ret[3];
};