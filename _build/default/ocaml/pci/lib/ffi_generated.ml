module CI = Cstubs_internals

external libpci_stub_1_pci_alloc : unit -> CI.voidp
  = "libpci_stub_1_pci_alloc" 

external libpci_stub_2_pci_init : _ CI.fatptr -> unit
  = "libpci_stub_2_pci_init" 

external libpci_stub_3_pci_cleanup : _ CI.fatptr -> unit
  = "libpci_stub_3_pci_cleanup" 

external libpci_stub_4_pci_scan_bus : _ CI.fatptr -> unit
  = "libpci_stub_4_pci_scan_bus" 

external libpci_stub_5_pci_get_dev
  : _ CI.fatptr -> int -> int -> int -> int -> CI.voidp
  = "libpci_stub_5_pci_get_dev" 

external libpci_stub_6_pci_free_dev : _ CI.fatptr -> unit
  = "libpci_stub_6_pci_free_dev" 

external libpci_stub_7_pci_lookup_method : _ CI.fatptr -> int
  = "libpci_stub_7_pci_lookup_method" 

external libpci_stub_8_pci_get_method_name : int -> CI.voidp
  = "libpci_stub_8_pci_get_method_name" 

external libpci_stub_9_pci_get_param : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "libpci_stub_9_pci_get_param" 

external libpci_stub_10_pci_set_param
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> int
  = "libpci_stub_10_pci_set_param" 

external libpci_stub_11_pci_walk_params
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp = "libpci_stub_11_pci_walk_params" 

external libpci_stub_12_pci_read_byte : _ CI.fatptr -> int -> Unsigned.uint8
  = "libpci_stub_12_pci_read_byte" 

external libpci_stub_13_pci_read_word : _ CI.fatptr -> int -> Unsigned.uint16
  = "libpci_stub_13_pci_read_word" 

external libpci_stub_14_pci_read_long : _ CI.fatptr -> int -> Unsigned.uint32
  = "libpci_stub_14_pci_read_long" 

external libpci_stub_15_pci_read_block
  : _ CI.fatptr -> int -> _ CI.fatptr -> int -> int
  = "libpci_stub_15_pci_read_block" 

external libpci_stub_16_pci_read_vpd
  : _ CI.fatptr -> int -> _ CI.fatptr -> int -> int
  = "libpci_stub_16_pci_read_vpd" 

external libpci_stub_17_pci_write_byte
  : _ CI.fatptr -> int -> Unsigned.uint8 -> int
  = "libpci_stub_17_pci_write_byte" 

external libpci_stub_18_pci_write_long
  : _ CI.fatptr -> int -> Unsigned.uint16 -> int
  = "libpci_stub_18_pci_write_long" 

external libpci_stub_19_pci_write_block
  : _ CI.fatptr -> int -> _ CI.fatptr -> int -> int
  = "libpci_stub_19_pci_write_block" 

external libpci_stub_20_pci_fill_info : _ CI.fatptr -> int -> int
  = "libpci_stub_20_pci_fill_info" 

external libpci_stub_21_pci_setup_cache
  : _ CI.fatptr -> _ CI.fatptr -> int -> unit
  = "libpci_stub_21_pci_setup_cache" 

external libpci_stub_22_pci_find_cap
  : _ CI.fatptr -> Unsigned.uint -> Unsigned.uint -> CI.voidp
  = "libpci_stub_22_pci_find_cap" 

external libpci_stub_23_pci_filter_init : _ CI.fatptr -> _ CI.fatptr -> unit
  = "libpci_stub_23_pci_filter_init" 

external libpci_stub_24_pci_filter_parse_slot
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "libpci_stub_24_pci_filter_parse_slot" 

external libpci_stub_25_pci_filter_parse_id
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "libpci_stub_25_pci_filter_parse_id" 

external libpci_stub_26_pci_filter_match : _ CI.fatptr -> _ CI.fatptr -> int
  = "libpci_stub_26_pci_filter_match" 

external libpci_stub_27_pci_lookup_name
  : _ CI.fatptr -> _ CI.fatptr -> int -> int -> int -> CI.voidp
  = "libpci_stub_27_pci_lookup_name" 

external libpci_stub_28_pci_lookup_name
  : _ CI.fatptr -> _ CI.fatptr -> int -> int -> int -> int -> CI.voidp
  = "libpci_stub_28_pci_lookup_name_byte6" "libpci_stub_28_pci_lookup_name" 

external libpci_stub_29_pci_lookup_name
  : _ CI.fatptr -> _ CI.fatptr -> int -> int -> int -> int -> int -> 
    int -> CI.voidp
  = "libpci_stub_29_pci_lookup_name_byte8" "libpci_stub_29_pci_lookup_name" 

external libpci_stub_30_pci_load_name_list : _ CI.fatptr -> int
  = "libpci_stub_30_pci_load_name_list" 

external libpci_stub_31_pci_free_name_list : _ CI.fatptr -> unit
  = "libpci_stub_31_pci_free_name_list" 

external libpci_stub_32_pci_set_name_list_path
  : _ CI.fatptr -> _ CI.fatptr -> int -> unit
  = "libpci_stub_32_pci_set_name_list_path" 

external libpci_stub_33_pci_id_cache_flush : _ CI.fatptr -> unit
  = "libpci_stub_33_pci_id_cache_flush" 

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
| Function (CI.Pointer _, Returns CI.Void), "pci_id_cache_flush" ->
  (fun x1 -> libpci_stub_33_pci_id_cache_flush (CI.cptr x1))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x4; _},
        Function (CI.Primitive CI.Int, Returns CI.Void))),
  "pci_set_name_list_path" ->
  (fun x2 x3 x6 ->
    let x5 = CI.cptr (x4 x3) in
    libpci_stub_32_pci_set_name_list_path (CI.cptr x2) x5 x6)
| Function (CI.Pointer _, Returns CI.Void), "pci_free_name_list" ->
  (fun x7 -> libpci_stub_31_pci_free_name_list (CI.cptr x7))
| Function (CI.Pointer _, Returns (CI.Primitive CI.Int)),
  "pci_load_name_list" ->
  (fun x8 -> libpci_stub_30_pci_load_name_list (CI.cptr x8))
| Function
    (CI.Pointer _,
     Function
       (CI.Pointer _,
        Function
          (CI.Primitive CI.Int,
           Function
             (CI.Primitive CI.Int,
              Function
                (CI.Primitive CI.Int,
                 Function
                   (CI.Primitive CI.Int,
                    Function
                      (CI.Primitive CI.Int,
                       Function
                         (CI.Primitive CI.Int,
                          Returns
                            (CI.View {CI.ty = CI.Pointer x17; read = x18; _}))))))))),
  "pci_lookup_name" ->
  (fun x9 x10 x11 x12 x13 x14 x15 x16 ->
    x18
    (CI.make_ptr x17
       (libpci_stub_29_pci_lookup_name (CI.cptr x9) (CI.cptr x10) x11 x12 x13
        x14 x15 x16)))
| Function
    (CI.Pointer _,
     Function
       (CI.Pointer _,
        Function
          (CI.Primitive CI.Int,
           Function
             (CI.Primitive CI.Int,
              Function
                (CI.Primitive CI.Int,
                 Function
                   (CI.Primitive CI.Int,
                    Returns (CI.View {CI.ty = CI.Pointer x25; read = x26; _}))))))),
  "pci_lookup_name" ->
  (fun x19 x20 x21 x22 x23 x24 ->
    x26
    (CI.make_ptr x25
       (libpci_stub_28_pci_lookup_name (CI.cptr x19) (CI.cptr x20) x21 x22
        x23 x24)))
| Function
    (CI.Pointer _,
     Function
       (CI.Pointer _,
        Function
          (CI.Primitive CI.Int,
           Function
             (CI.Primitive CI.Int,
              Function
                (CI.Primitive CI.Int,
                 Returns (CI.View {CI.ty = CI.Pointer x32; read = x33; _})))))),
  "pci_lookup_name" ->
  (fun x27 x28 x29 x30 x31 ->
    x33
    (CI.make_ptr x32
       (libpci_stub_27_pci_lookup_name (CI.cptr x27) (CI.cptr x28) x29 x30
         x31)))
| Function
    (CI.Pointer _, Function (CI.Pointer _, Returns (CI.Primitive CI.Int))),
  "pci_filter_match" ->
  (fun x34 x35 ->
    libpci_stub_26_pci_filter_match (CI.cptr x34) (CI.cptr x35))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x38; _},
        Returns (CI.View {CI.ty = CI.Pointer x40; read = x41; _}))),
  "pci_filter_parse_id" ->
  (fun x36 x37 ->
    let x39 = CI.cptr (x38 x37) in
    x41
    (CI.make_ptr x40 (libpci_stub_25_pci_filter_parse_id (CI.cptr x36) x39)))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x44; _},
        Returns (CI.View {CI.ty = CI.Pointer x46; read = x47; _}))),
  "pci_filter_parse_slot" ->
  (fun x42 x43 ->
    let x45 = CI.cptr (x44 x43) in
    x47
    (CI.make_ptr x46
       (libpci_stub_24_pci_filter_parse_slot (CI.cptr x42) x45)))
| Function (CI.Pointer _, Function (CI.Pointer _, Returns CI.Void)),
  "pci_filter_init" ->
  (fun x48 x49 -> libpci_stub_23_pci_filter_init (CI.cptr x48) (CI.cptr x49))
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Uint,
        Function (CI.Primitive CI.Uint, Returns (CI.Pointer x53)))),
  "pci_find_cap" ->
  (fun x50 x51 x52 ->
    CI.make_ptr x53 (libpci_stub_22_pci_find_cap (CI.cptr x50) x51 x52))
| Function
    (CI.Pointer _,
     Function (CI.Pointer _, Function (CI.Primitive CI.Int, Returns CI.Void))),
  "pci_setup_cache" ->
  (fun x54 x55 x56 ->
    libpci_stub_21_pci_setup_cache (CI.cptr x54) (CI.cptr x55) x56)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Int))),
  "pci_fill_info" ->
  (fun x57 x58 -> libpci_stub_20_pci_fill_info (CI.cptr x57) x58)
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function
          (CI.Pointer _,
           Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Int))))),
  "pci_write_block" ->
  (fun x59 x60 x61 x62 ->
    libpci_stub_19_pci_write_block (CI.cptr x59) x60 (CI.cptr x61) x62)
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function (CI.Primitive CI.Uint16_t, Returns (CI.Primitive CI.Int)))),
  "pci_write_long" ->
  (fun x63 x64 x65 -> libpci_stub_18_pci_write_long (CI.cptr x63) x64 x65)
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function (CI.Primitive CI.Uint8_t, Returns (CI.Primitive CI.Int)))),
  "pci_write_byte" ->
  (fun x66 x67 x68 -> libpci_stub_17_pci_write_byte (CI.cptr x66) x67 x68)
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function
          (CI.Pointer _,
           Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Int))))),
  "pci_read_vpd" ->
  (fun x69 x70 x71 x72 ->
    libpci_stub_16_pci_read_vpd (CI.cptr x69) x70 (CI.cptr x71) x72)
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function
          (CI.Pointer _,
           Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Int))))),
  "pci_read_block" ->
  (fun x73 x74 x75 x76 ->
    libpci_stub_15_pci_read_block (CI.cptr x73) x74 (CI.cptr x75) x76)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Uint32_t))),
  "pci_read_long" ->
  (fun x77 x78 -> libpci_stub_14_pci_read_long (CI.cptr x77) x78)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Uint16_t))),
  "pci_read_word" ->
  (fun x79 x80 -> libpci_stub_13_pci_read_word (CI.cptr x79) x80)
| Function
    (CI.Pointer _,
     Function (CI.Primitive CI.Int, Returns (CI.Primitive CI.Uint8_t))),
  "pci_read_byte" ->
  (fun x81 x82 -> libpci_stub_12_pci_read_byte (CI.cptr x81) x82)
| Function (CI.Pointer _, Function (CI.Pointer _, Returns (CI.Pointer x85))),
  "pci_walk_params" ->
  (fun x83 x84 ->
    CI.make_ptr x85
      (libpci_stub_11_pci_walk_params (CI.cptr x83) (CI.cptr x84)))
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x88; _},
        Function
          (CI.View {CI.ty = CI.Pointer _; write = x91; _},
           Returns (CI.Primitive CI.Int)))),
  "pci_set_param" ->
  (fun x86 x87 x90 ->
    let x89 = CI.cptr (x88 x87) in
    let x92 = CI.cptr (x91 x90) in
    libpci_stub_10_pci_set_param (CI.cptr x86) x89 x92)
| Function
    (CI.Pointer _,
     Function
       (CI.View {CI.ty = CI.Pointer _; write = x95; _},
        Returns (CI.View {CI.ty = CI.Pointer x97; read = x98; _}))),
  "pci_get_param" ->
  (fun x93 x94 ->
    let x96 = CI.cptr (x95 x94) in
    x98 (CI.make_ptr x97 (libpci_stub_9_pci_get_param (CI.cptr x93) x96)))
| Function
    (CI.Primitive CI.Int,
     Returns (CI.View {CI.ty = CI.Pointer x100; read = x101; _})),
  "pci_get_method_name" ->
  (fun x99 ->
    x101 (CI.make_ptr x100 (libpci_stub_8_pci_get_method_name x99)))
| Function
    (CI.View {CI.ty = CI.Pointer _; write = x103; _},
     Returns (CI.Primitive CI.Int)),
  "pci_lookup_method" ->
  (fun x102 ->
    let x104 = CI.cptr (x103 x102) in libpci_stub_7_pci_lookup_method x104)
| Function (CI.Pointer _, Returns CI.Void), "pci_free_dev" ->
  (fun x105 -> libpci_stub_6_pci_free_dev (CI.cptr x105))
| Function
    (CI.Pointer _,
     Function
       (CI.Primitive CI.Int,
        Function
          (CI.Primitive CI.Int,
           Function
             (CI.Primitive CI.Int,
              Function (CI.Primitive CI.Int, Returns (CI.Pointer x111)))))),
  "pci_get_dev" ->
  (fun x106 x107 x108 x109 x110 ->
    CI.make_ptr x111
      (libpci_stub_5_pci_get_dev (CI.cptr x106) x107 x108 x109 x110))
| Function (CI.Pointer _, Returns CI.Void), "pci_scan_bus" ->
  (fun x112 -> libpci_stub_4_pci_scan_bus (CI.cptr x112))
| Function (CI.Pointer _, Returns CI.Void), "pci_cleanup" ->
  (fun x113 -> libpci_stub_3_pci_cleanup (CI.cptr x113))
| Function (CI.Pointer _, Returns CI.Void), "pci_init" ->
  (fun x114 -> libpci_stub_2_pci_init (CI.cptr x114))
| Function (CI.Void, Returns (CI.Pointer x116)), "pci_alloc" ->
  (fun x115 -> CI.make_ptr x116 (libpci_stub_1_pci_alloc x115))
| _, s ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match t, name with
| _, s ->  Printf.ksprintf failwith "No match for %s" s

