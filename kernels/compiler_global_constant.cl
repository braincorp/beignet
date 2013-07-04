constant int m[3] = {71,72,73};
constant int n = 1;

__kernel void
compiler_global_constant(__global int *dst, int e, int r)
{
  int id = (int)get_global_id(0);
  dst[id] = m[id%3] * n + e + r;
}
