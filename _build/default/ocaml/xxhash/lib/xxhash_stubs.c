#include <xxhash.h>
#include "ctypes_cstubs_internals.h"
value xxhash_1_XXH32(value x3, value x2, value x1)
{
   char* x4 = CTYPES_ADDR_OF_FATPTR(x3);
   size_t x5 = ctypes_size_t_val(x2);
   unsigned int x8 = ctypes_uint_val(x1);
   unsigned int x11 = XXH32(x4, x5, x8);
   return ctypes_copy_uint(x11);
}
value xxhash_2_XXH32_createState(value x12)
{
   struct XXH32_state_s* x13 = XXH32_createState();
   return CTYPES_FROM_PTR(x13);
}
value xxhash_3_XXH32_freeState(value x14)
{
   struct XXH32_state_s* x15 = CTYPES_ADDR_OF_FATPTR(x14);
   int x16 = XXH32_freeState(x15);
   return Val_long(x16);
}
value xxhash_4_XXH32_reset(value x18, value x17)
{
   struct XXH32_state_s* x19 = CTYPES_ADDR_OF_FATPTR(x18);
   unsigned int x20 = ctypes_uint_val(x17);
   int x23 = XXH32_reset(x19, x20);
   return Val_long(x23);
}
value xxhash_5_XXH32_update(value x26, value x25, value x24)
{
   struct XXH32_state_s* x27 = CTYPES_ADDR_OF_FATPTR(x26);
   char* x28 = CTYPES_ADDR_OF_FATPTR(x25);
   size_t x29 = ctypes_size_t_val(x24);
   int x32 = XXH32_update(x27, x28, x29);
   return Val_long(x32);
}
value xxhash_6_XXH32_digest(value x33)
{
   struct XXH32_state_s* x34 = CTYPES_ADDR_OF_FATPTR(x33);
   unsigned int x35 = XXH32_digest(x34);
   return ctypes_copy_uint(x35);
}
value xxhash_7_XXH64(value x38, value x37, value x36)
{
   char* x39 = CTYPES_ADDR_OF_FATPTR(x38);
   size_t x40 = ctypes_size_t_val(x37);
   unsigned long long x43 = ctypes_ullong_val(x36);
   unsigned long long x46 = XXH64(x39, x40, x43);
   return ctypes_copy_ullong(x46);
}
value xxhash_8_XXH64_createState(value x47)
{
   struct XXH64_state_s* x48 = XXH64_createState();
   return CTYPES_FROM_PTR(x48);
}
value xxhash_9_XXH64_freeState(value x49)
{
   struct XXH64_state_s* x50 = CTYPES_ADDR_OF_FATPTR(x49);
   int x51 = XXH64_freeState(x50);
   return Val_long(x51);
}
value xxhash_10_XXH64_reset(value x53, value x52)
{
   struct XXH64_state_s* x54 = CTYPES_ADDR_OF_FATPTR(x53);
   unsigned long long x55 = ctypes_ullong_val(x52);
   int x58 = XXH64_reset(x54, x55);
   return Val_long(x58);
}
value xxhash_11_XXH64_update(value x61, value x60, value x59)
{
   struct XXH64_state_s* x62 = CTYPES_ADDR_OF_FATPTR(x61);
   char* x63 = CTYPES_ADDR_OF_FATPTR(x60);
   size_t x64 = ctypes_size_t_val(x59);
   int x67 = XXH64_update(x62, x63, x64);
   return Val_long(x67);
}
value xxhash_12_XXH64_digest(value x68)
{
   struct XXH64_state_s* x69 = CTYPES_ADDR_OF_FATPTR(x68);
   unsigned long long x70 = XXH64_digest(x69);
   return ctypes_copy_ullong(x70);
}
