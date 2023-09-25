#include <pci/pci.h>
#include <stdio.h>
#include <stddef.h>
#include "ctypes_cstubs_internals.h"

int main(void)
{

  puts("include Ctypes");
  puts("let lift x = x");
  puts("open Ctypes_static");
  puts("");
  puts("let rec field : type t a. t typ -> string -> a typ -> (a, t) field =");
  puts("  fun s fname ftype -> match s, fname with");
  puts("  | View { ty }, _ ->");
  puts("    let { ftype; foffset; fname } = field ty fname ftype in");
  puts("    { ftype; foffset; fname }");
  puts("  | _ -> failwith (\"Unexpected field \"^ fname)");
  puts("");
  puts("let rec seal : type a. a typ -> unit = function");
  puts("  | Struct { tag; spec = Complete _ } ->");
  puts("    raise (ModifyingSealedType tag)");
  puts("  | Union { utag; uspec = Some _ } ->");
  puts("    raise (ModifyingSealedType utag)");
  puts("  | View { ty } -> seal ty");
  puts("  | _ ->");
  puts("    raise (Unsupported \"Sealing a non-structured type\")");
  puts("");
  puts("type 'a const = 'a");
  puts("let constant (type t) name (t : t typ) : t = match t, name with");
  {
     enum { check_PCI_ACCESS_DUMP_const = (int)PCI_ACCESS_DUMP };
     unsigned int v = (PCI_ACCESS_DUMP);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Uint, \"PCI_ACCESS_DUMP\" ->\n    Unsigned.UInt.of_string \"%u\"\n",
                  v);
     
  }
  {
     enum { check_PCI_ACCESS_AUTO_const = (int)PCI_ACCESS_AUTO };
     unsigned int v = (PCI_ACCESS_AUTO);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Uint, \"PCI_ACCESS_AUTO\" ->\n    Unsigned.UInt.of_string \"%u\"\n",
                  v);
     
  }
  {
     enum { check_PCI_CB_SUBSYSTEM_ID_const = (int)PCI_CB_SUBSYSTEM_ID };
     int v = (PCI_CB_SUBSYSTEM_ID);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_CB_SUBSYSTEM_ID\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_CB_SUBSYSTEM_VENDOR_ID_const = (int)PCI_CB_SUBSYSTEM_VENDOR_ID };
     int v = (PCI_CB_SUBSYSTEM_VENDOR_ID);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_CB_SUBSYSTEM_VENDOR_ID\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_HEADER_TYPE_CARDBUS_const = (int)PCI_HEADER_TYPE_CARDBUS };
     int v = (PCI_HEADER_TYPE_CARDBUS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_HEADER_TYPE_CARDBUS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_SUBSYSTEM_ID_const = (int)PCI_SUBSYSTEM_ID };
     int v = (PCI_SUBSYSTEM_ID);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_SUBSYSTEM_ID\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_SUBSYSTEM_VENDOR_ID_const = (int)PCI_SUBSYSTEM_VENDOR_ID };
     int v = (PCI_SUBSYSTEM_VENDOR_ID);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_SUBSYSTEM_VENDOR_ID\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_HEADER_TYPE_NORMAL_const = (int)PCI_HEADER_TYPE_NORMAL };
     int v = (PCI_HEADER_TYPE_NORMAL);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_HEADER_TYPE_NORMAL\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_HEADER_TYPE_const = (int)PCI_HEADER_TYPE };
     int v = (PCI_HEADER_TYPE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_HEADER_TYPE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_CLASS_OTHERS_const = (int)PCI_CLASS_OTHERS };
     int v = (PCI_CLASS_OTHERS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_CLASS_OTHERS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_SIGNAL_const = (int)PCI_BASE_CLASS_SIGNAL };
     int v = (PCI_BASE_CLASS_SIGNAL);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_SIGNAL\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_CRYPT_const = (int)PCI_BASE_CLASS_CRYPT };
     int v = (PCI_BASE_CLASS_CRYPT);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_CRYPT\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_SATELLITE_const = (int)PCI_BASE_CLASS_SATELLITE };
     int v = (PCI_BASE_CLASS_SATELLITE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_SATELLITE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_INTELLIGENT_const = (int)PCI_BASE_CLASS_INTELLIGENT };
     int v = (PCI_BASE_CLASS_INTELLIGENT);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_INTELLIGENT\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_WIRELESS_const = (int)PCI_BASE_CLASS_WIRELESS };
     int v = (PCI_BASE_CLASS_WIRELESS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_WIRELESS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_SERIAL_const = (int)PCI_BASE_CLASS_SERIAL };
     int v = (PCI_BASE_CLASS_SERIAL);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_SERIAL\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_PROCESSOR_const = (int)PCI_BASE_CLASS_PROCESSOR };
     int v = (PCI_BASE_CLASS_PROCESSOR);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_PROCESSOR\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_DOCKING_const = (int)PCI_BASE_CLASS_DOCKING };
     int v = (PCI_BASE_CLASS_DOCKING);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_DOCKING\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_INPUT_const = (int)PCI_BASE_CLASS_INPUT };
     int v = (PCI_BASE_CLASS_INPUT);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_INPUT\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_SYSTEM_const = (int)PCI_BASE_CLASS_SYSTEM };
     int v = (PCI_BASE_CLASS_SYSTEM);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_SYSTEM\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_COMMUNICATION_const = (int)PCI_BASE_CLASS_COMMUNICATION };
     int v = (PCI_BASE_CLASS_COMMUNICATION);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_COMMUNICATION\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_BRIDGE_const = (int)PCI_BASE_CLASS_BRIDGE };
     int v = (PCI_BASE_CLASS_BRIDGE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_BRIDGE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_MEMORY_const = (int)PCI_BASE_CLASS_MEMORY };
     int v = (PCI_BASE_CLASS_MEMORY);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_MEMORY\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_MULTIMEDIA_const = (int)PCI_BASE_CLASS_MULTIMEDIA };
     int v = (PCI_BASE_CLASS_MULTIMEDIA);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_MULTIMEDIA\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_DISPLAY_const = (int)PCI_BASE_CLASS_DISPLAY };
     int v = (PCI_BASE_CLASS_DISPLAY);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_DISPLAY\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_NETWORK_const = (int)PCI_BASE_CLASS_NETWORK };
     int v = (PCI_BASE_CLASS_NETWORK);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_NETWORK\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_BASE_CLASS_STORAGE_const = (int)PCI_BASE_CLASS_STORAGE };
     int v = (PCI_BASE_CLASS_STORAGE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_BASE_CLASS_STORAGE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_CLASS_NOT_DEFINED_const = (int)PCI_CLASS_NOT_DEFINED };
     int v = (PCI_CLASS_NOT_DEFINED);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_CLASS_NOT_DEFINED\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_RESCAN_const = (int)PCI_FILL_RESCAN };
     int v = (PCI_FILL_RESCAN);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_RESCAN\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_MODULE_ALIAS_const = (int)PCI_FILL_MODULE_ALIAS };
     int v = (PCI_FILL_MODULE_ALIAS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_MODULE_ALIAS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_PHYS_SLOT_const = (int)PCI_FILL_PHYS_SLOT };
     int v = (PCI_FILL_PHYS_SLOT);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_PHYS_SLOT\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_EXT_CAPS_const = (int)PCI_FILL_EXT_CAPS };
     int v = (PCI_FILL_EXT_CAPS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_EXT_CAPS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_CAPS_const = (int)PCI_FILL_CAPS };
     int v = (PCI_FILL_CAPS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_CAPS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_CLASS_const = (int)PCI_FILL_CLASS };
     int v = (PCI_FILL_CLASS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_CLASS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_SIZES_const = (int)PCI_FILL_SIZES };
     int v = (PCI_FILL_SIZES);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_SIZES\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_ROM_BASE_const = (int)PCI_FILL_ROM_BASE };
     int v = (PCI_FILL_ROM_BASE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_ROM_BASE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_BASES_const = (int)PCI_FILL_BASES };
     int v = (PCI_FILL_BASES);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_BASES\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_IRQ_const = (int)PCI_FILL_IRQ };
     int v = (PCI_FILL_IRQ);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_IRQ\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_FILL_IDENT_const = (int)PCI_FILL_IDENT };
     int v = (PCI_FILL_IDENT);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_FILL_IDENT\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_REFRESH_CACHE_const = (int)PCI_LOOKUP_REFRESH_CACHE };
     int v = (PCI_LOOKUP_REFRESH_CACHE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_REFRESH_CACHE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_CACHE_const = (int)PCI_LOOKUP_CACHE };
     int v = (PCI_LOOKUP_CACHE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_CACHE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_SKIP_LOCAL_const = (int)PCI_LOOKUP_SKIP_LOCAL };
     int v = (PCI_LOOKUP_SKIP_LOCAL);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_SKIP_LOCAL\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_NETWORK_const = (int)PCI_LOOKUP_NETWORK };
     int v = (PCI_LOOKUP_NETWORK);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_NETWORK\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_MIXED_const = (int)PCI_LOOKUP_MIXED };
     int v = (PCI_LOOKUP_MIXED);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_MIXED\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_NO_NUMBERS_const = (int)PCI_LOOKUP_NO_NUMBERS };
     int v = (PCI_LOOKUP_NO_NUMBERS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_NO_NUMBERS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_NUMERIC_const = (int)PCI_LOOKUP_NUMERIC };
     int v = (PCI_LOOKUP_NUMERIC);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_NUMERIC\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_PROGIF_const = (int)PCI_LOOKUP_PROGIF };
     int v = (PCI_LOOKUP_PROGIF);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_PROGIF\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_SUBSYSTEM_const = (int)PCI_LOOKUP_SUBSYSTEM };
     int v = (PCI_LOOKUP_SUBSYSTEM);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_SUBSYSTEM\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_CLASS_const = (int)PCI_LOOKUP_CLASS };
     int v = (PCI_LOOKUP_CLASS);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_CLASS\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_DEVICE_const = (int)PCI_LOOKUP_DEVICE };
     int v = (PCI_LOOKUP_DEVICE);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_DEVICE\" ->\n    %d\n",
                  v);
     
  }
  {
     enum { check_PCI_LOOKUP_VENDOR_const = (int)PCI_LOOKUP_VENDOR };
     int v = (PCI_LOOKUP_VENDOR);
     ctypes_printf("  | Ctypes_static.Primitive Cstubs_internals.Int, \"PCI_LOOKUP_VENDOR\" ->\n    %d\n",
                  v);
     
  }
  puts("  | _, s -> failwith (\"unmatched constant: \"^ s)");
  puts("");
  puts("let enum (type a) name ?typedef ?unexpected (alist : (a * int64) list) =");
  puts("  match name with");
  puts("  | s ->");
  puts("    failwith (\"unmatched enum: \"^ s)");
  
  return 0;
}
