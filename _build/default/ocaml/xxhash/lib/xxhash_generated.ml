module CI = Cstubs_internals

external xxhash_1_XXH32
  : _ CI.fatptr -> Unsigned.size_t -> Unsigned.uint -> Unsigned.uint
  = "xxhash_1_XXH32" 

external xxhash_2_XXH32_createState : unit -> CI.voidp
  = "xxhash_2_XXH32_createState" 

external xxhash_3_XXH32_freeState : _ CI.fatptr -> int
  = "xxhash_3_XXH32_freeState" 

external xxhash_4_XXH32_reset : _ CI.fatptr -> Unsigned.uint -> int
  = "xxhash_4_XXH32_reset" 

external xxhash_5_XXH32_update
  : _ CI.fatptr -> _ CI.fatptr -> Unsigned.size_t -> int
  = "xxhash_5_XXH32_update" 

external xxhash_6_XXH32_digest : _ CI.fatptr -> Unsigned.uint
  = "xxhash_6_XXH32_digest" 

external xxhash_7_XXH64
  : _ CI.fatptr -> Unsigned.size_t -> Unsigned.ullong -> Unsigned.ullong
  = "xxhash_7_XXH64" 

external xxhash_8_XXH64_createState : unit -> CI.voidp
  = "xxhash_8_XXH64_createState" 

external xxhash_9_XXH64_freeState : _ CI.fatptr -> int
  = "xxhash_9_XXH64_freeState" 

external xxhash_10_XXH64_reset : _ CI.fatptr -> Unsigned.ullong -> int
  = "xxhash_10_XXH64_reset" 

external xxhash_11_XXH64_update
  : _ CI.fatptr -> _ CI.fatptr -> Unsigned.size_t -> int
  = "xxhash_11_XXH64_update" 

external xxhash_12_XXH64_digest : _ CI.fatptr -> Unsigned.ullong
  = "xxhash_12_XXH64_digest" 

type 'a result = 'a
type 'a return = 'a
type 'a fn =
 | Returns  : 'a CI.typ   -> 'a return fn
 | Function : 'a CI.typ * 'b fn  -> ('a -> 'b) fn
let map_result f x = f x
let returning t = Returns t
let (@->) f p = Function (f, p)
let foreign : type a b. string -> (a -> b) fn -> (a -> b) =
  fun name t -> match t, name with
| Function (CI.Pointer _, Returns (CI.Primitive CI.Ullong)), "XXH64_digest" ->
  (fun x1 -> xxhash_12_XXH64_digest (CI.cptr x1))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x4; _},
        Function (CI.Primitive CI.Size_t, Returns (CI.Primitive CI.Int)))),
  "XXH64_update" ->
  (fun x2 x3 x6 ->
    let x5 = CI.cptr (x4 x3) in xxhash_11_XXH64_update (CI.cptr x2) x5 x6)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Ullong, Returns (CI.Primitive CI.Int))),
  "XXH64_reset" -> (fun x7 x8 -> xxhash_10_XXH64_reset (CI.cptr x7) x8)
| Function (CI.Pointer _, Returns (CI.Primitive CI.Int)), "XXH64_freeState" ->
  (fun x9 -> xxhash_9_XXH64_freeState (CI.cptr x9))
| Function (CI.Void, Returns (CI.Pointer x11)), "XXH64_createState" ->
  (fun x10 -> CI.make_ptr x11 (xxhash_8_XXH64_createState x10))
| Function
    (CI.View {CI.ty = CI.Pointer _; write = x13; _},
     Function
       (CI.Primitive CI.Size_t,
        Function (CI.Primitive CI.Ullong, Returns (CI.Primitive CI.Ullong)))),
  "XXH64" ->
  (fun x12 x15 x16 ->
    let x14 = CI.cptr (x13 x12) in xxhash_7_XXH64 x14 x15 x16)
| Function (CI.Pointer _, Returns (CI.Primitive CI.Uint)), "XXH32_digest" ->
  (fun x17 -> xxhash_6_XXH32_digest (CI.cptr x17))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x20; _},
        Function (CI.Primitive CI.Size_t, Returns (CI.Primitive CI.Int)))),
  "XXH32_update" ->
  (fun x18 x19 x22 ->
    let x21 = CI.cptr (x20 x19) in
    xxhash_5_XXH32_update (CI.cptr x18) x21 x22)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Uint, Returns (CI.Primitive CI.Int))),
  "XXH32_reset" -> (fun x23 x24 -> xxhash_4_XXH32_reset (CI.cptr x23) x24)
| Function (CI.Pointer _, Returns (CI.Primitive CI.Int)), "XXH32_freeState" ->
  (fun x25 -> xxhash_3_XXH32_freeState (CI.cptr x25))
| Function (CI.Void, Returns (CI.Pointer x27)), "XXH32_createState" ->
  (fun x26 -> CI.make_ptr x27 (xxhash_2_XXH32_createState x26))
| Function
    (CI.View {CI.ty = CI.Pointer _; write = x29; _},
     Function
       (CI.Primitive CI.Size_t,
        Function (CI.Primitive CI.Uint, Returns (CI.Primitive CI.Uint)))),
  "XXH32" ->
  (fun x28 x31 x32 ->
    let x30 = CI.cptr (x29 x28) in xxhash_1_XXH32 x30 x31 x32)
| _, s ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match t, name with
| _, s ->  Printf.ksprintf failwith "No match for %s" s

