__kernel void compiler_local_memory_barrier_wg64(__global int *dst, __local int *src) {
  src[get_local_id(0)] = get_local_id(0);
  barrier(CLK_LOCAL_MEM_FENCE);
  dst[get_global_id(0)] = src[63 - get_local_id(0)];
}

