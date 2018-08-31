__kernel void builtin_fabs_float2(__global float *dst,  __global float *src1, __global int *vector) {
  int i = get_global_id(0);
  float2 x1 = (float2) (src1[i * (*vector) + 0],src1[i * (*vector) + 1]);

  float2 ret;
  ret = fabs(x1);
  dst[i * (*vector) + 0] = ret[0];
  dst[i * (*vector) + 1] = ret[1];
};