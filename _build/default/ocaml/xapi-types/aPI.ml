type failure = (string list) [@@deriving rpc]
let response_of_failure code params =
  Rpc.failure (rpc_of_failure (code::params))
let response_of_fault code =
  Rpc.failure (rpc_of_failure (["Fault"; code]))

include Rpc
type string_list = string list [@@deriving rpc]

module Ref = struct
  include Ref
  let rpc_of_t (_:'a -> Rpc.t) (x: 'a Ref.t) = rpc_of_string (Ref.string_of x)
  let t_of_rpc (_:Rpc.t -> 'a) x : 'a t = of_string (string_of_rpc x);
end

module Date = struct
  open Xapi_stdext_date
  include Date
  let rpc_of_iso8601 x = DateTime (Date.to_string x)
  let iso8601_of_rpc = function String x | DateTime x -> Date.of_string x | _ -> failwith "Date.iso8601_of_rpc"
end

let on_dict f = function | Rpc.Dict x -> f x | _ -> failwith "Expected Dictionary"

let opt_map f = function | None -> None | Some x -> Some (f x)

let unbox_list = let rec loop aux = function
| [] -> List.rev aux
| None :: tl -> loop aux tl
| Some hd :: tl -> loop (hd :: aux) tl in
loop []

let assocer key map default = 
  try
    List.assoc key map
  with Not_found ->
    match default with
    | Some d -> d
    | None -> failwith (Printf.sprintf "Field %s not present in rpc" key)

type string_to_string_map = (string * string) list [@@deriving rpc]
type ref_host = [`host] Ref.t [@@deriving rpc]
type ref_Certificate = [`Certificate] Ref.t [@@deriving rpc]
type datetime = Date.iso8601 [@@deriving rpc]
type ref_Cluster_host = [`Cluster_host] Ref.t [@@deriving rpc]
type ref_PIF = [`PIF] Ref.t [@@deriving rpc]
type ref_Cluster = [`Cluster] Ref.t [@@deriving rpc]
type cluster_host_operation = [ `enable | `disable | `destroy ] [@@deriving rpc]
type string_to_cluster_host_operation_map = (string * cluster_host_operation) list [@@deriving rpc]
type cluster_host_operation_set = cluster_host_operation list [@@deriving rpc]
type ref_network = [`network] Ref.t [@@deriving rpc]
type cluster_operation = [ `add | `remove | `enable | `disable | `destroy ] [@@deriving rpc]
type string_to_cluster_operation_map = (string * cluster_operation) list [@@deriving rpc]
type cluster_operation_set = cluster_operation list [@@deriving rpc]
type string_set = string list [@@deriving rpc]
type ref_VUSB = [`VUSB] Ref.t [@@deriving rpc]
type ref_USB_group = [`USB_group] Ref.t [@@deriving rpc]
type ref_VM = [`VM] Ref.t [@@deriving rpc]
type vusb_operations = [ `attach | `plug | `unplug ] [@@deriving rpc]
type string_to_vusb_operations_map = (string * vusb_operations) list [@@deriving rpc]
type vusb_operations_set = vusb_operations list [@@deriving rpc]
type ref_PUSB = [`PUSB] Ref.t [@@deriving rpc]
type ref_SDN_controller = [`SDN_controller] Ref.t [@@deriving rpc]
type sdn_controller_protocol = [ `ssl | `pssl ] [@@deriving rpc]
type sdn_controller_protocol_set = sdn_controller_protocol list [@@deriving rpc]
type ref_Feature = [`Feature] Ref.t [@@deriving rpc]
type ref_VDI = [`VDI] Ref.t [@@deriving rpc]
type ref_PVS_cache_storage = [`PVS_cache_storage] Ref.t [@@deriving rpc]
type ref_PVS_site = [`PVS_site] Ref.t [@@deriving rpc]
type ref_SR = [`SR] Ref.t [@@deriving rpc]
type ref_PVS_proxy = [`PVS_proxy] Ref.t [@@deriving rpc]
type ref_VIF = [`VIF] Ref.t [@@deriving rpc]
type pvs_proxy_status = [ `stopped | `initialised | `caching | `incompatible_write_cache_mode | `incompatible_protocol_version ] [@@deriving rpc]
type pvs_proxy_status_set = pvs_proxy_status list [@@deriving rpc]
type ref_PVS_server = [`PVS_server] Ref.t [@@deriving rpc]
type ref_PVS_cache_storage_set = [`PVS_cache_storage] Ref.t list [@@deriving rpc]
type ref_VGPU_type = [`VGPU_type] Ref.t [@@deriving rpc]
type ref_VGPU_type_set = [`VGPU_type] Ref.t list [@@deriving rpc]
type vgpu_type_implementation = [ `passthrough | `nvidia | `nvidia_sriov | `gvt_g | `mxgpu ] [@@deriving rpc]
type vgpu_type_implementation_set = vgpu_type_implementation list [@@deriving rpc]
type ref_GPU_group = [`GPU_group] Ref.t [@@deriving rpc]
type ref_GPU_group_set = [`GPU_group] Ref.t list [@@deriving rpc]
type ref_PGPU = [`PGPU] Ref.t [@@deriving rpc]
type ref_PGPU_set = [`PGPU] Ref.t list [@@deriving rpc]
type ref_VGPU = [`VGPU] Ref.t [@@deriving rpc]
type ref_PCI = [`PCI] Ref.t [@@deriving rpc]
type allocation_algorithm = [ `breadth_first | `depth_first ] [@@deriving rpc]
type allocation_algorithm_set = allocation_algorithm list [@@deriving rpc]
type pgpu_dom0_access = [ `enabled | `disable_on_reboot | `disabled | `enable_on_reboot ] [@@deriving rpc]
type pgpu_dom0_access_set = pgpu_dom0_access list [@@deriving rpc]
type ref_VGPU_type_to_int64_map = (ref_VGPU_type * int64) list [@@deriving rpc]
type ref_PCI_set = [`PCI] Ref.t list [@@deriving rpc]
type ref_network_sriov = [`network_sriov] Ref.t [@@deriving rpc]
type sriov_configuration_mode = [ `sysfs | `modprobe | `unknown ] [@@deriving rpc]
type sriov_configuration_mode_set = sriov_configuration_mode list [@@deriving rpc]
type ref_tunnel = [`tunnel] Ref.t [@@deriving rpc]
type tunnel_protocol = [ `gre | `vxlan ] [@@deriving rpc]
type tunnel_protocol_set = tunnel_protocol list [@@deriving rpc]
type ref_secret = [`secret] Ref.t [@@deriving rpc]
type ref_message = [`message] Ref.t [@@deriving rpc]
type cls = [ `VM | `Host | `SR | `Pool | `VMPP | `VMSS | `PVS_proxy | `VDI ] [@@deriving rpc]
type cls_set = cls list [@@deriving rpc]
type ref_blob = [`blob] Ref.t [@@deriving rpc]
type ref_user = [`user] Ref.t [@@deriving rpc]
type ref_console = [`console] Ref.t [@@deriving rpc]
type console_protocol = [ `vt100 | `rfb | `rdp ] [@@deriving rpc]
type console_protocol_set = console_protocol list [@@deriving rpc]
type ref_VTPM = [`VTPM] Ref.t [@@deriving rpc]
type ref_crashdump = [`crashdump] Ref.t [@@deriving rpc]
type ref_PBD = [`PBD] Ref.t [@@deriving rpc]
type ref_VBD_metrics = [`VBD_metrics] Ref.t [@@deriving rpc]
type vbd_mode = [ `RO | `RW ] [@@deriving rpc]
type vbd_mode_set = vbd_mode list [@@deriving rpc]
type ref_VBD = [`VBD] Ref.t [@@deriving rpc]
type vbd_type = [ `CD | `Disk | `Floppy ] [@@deriving rpc]
type vbd_type_set = vbd_type list [@@deriving rpc]
type vbd_operations = [ `attach | `eject | `insert | `plug | `unplug | `unplug_force | `pause | `unpause ] [@@deriving rpc]
type string_to_vbd_operations_map = (string * vbd_operations) list [@@deriving rpc]
type vbd_operations_set = vbd_operations list [@@deriving rpc]
type on_boot = [ `reset | `persist ] [@@deriving rpc]
type on_boot_set = on_boot list [@@deriving rpc]
type ref_pool = [`pool] Ref.t [@@deriving rpc]
type vdi_type = [ `system | `user | `ephemeral | `suspend | `crashdump | `ha_statefile | `metadata | `redo_log | `rrd | `pvs_cache | `cbt_metadata ] [@@deriving rpc]
type vdi_type_set = vdi_type list [@@deriving rpc]
type vdi_operations = [ `clone | `copy | `resize | `resize_online | `snapshot | `mirror | `destroy | `forget | `update | `force_unlock | `generate_config | `enable_cbt | `disable_cbt | `data_destroy | `list_changed_blocks | `set_on_boot | `blocked ] [@@deriving rpc]
type string_to_vdi_operations_map = (string * vdi_operations) list [@@deriving rpc]
type vdi_operations_set = vdi_operations list [@@deriving rpc]
type ref_LVHD = [`LVHD] Ref.t [@@deriving rpc]
type ref_DR_task = [`DR_task] Ref.t [@@deriving rpc]
type string_to_ref_blob_map = (string * ref_blob) list [@@deriving rpc]
type storage_operations = [ `scan | `destroy | `forget | `plug | `unplug | `update | `vdi_create | `vdi_introduce | `vdi_destroy | `vdi_resize | `vdi_clone | `vdi_snapshot | `vdi_mirror | `vdi_enable_cbt | `vdi_disable_cbt | `vdi_data_destroy | `vdi_list_changed_blocks | `vdi_set_on_boot | `pbd_create | `pbd_destroy ] [@@deriving rpc]
type string_to_storage_operations_map = (string * storage_operations) list [@@deriving rpc]
type storage_operations_set = storage_operations list [@@deriving rpc]
type ref_SM = [`SM] Ref.t [@@deriving rpc]
type string_to_int64_map = (string * int64) list [@@deriving rpc]
type ref_VLAN = [`VLAN] Ref.t [@@deriving rpc]
type ref_Bond = [`Bond] Ref.t [@@deriving rpc]
type bond_mode = [ `balanceslb | `activebackup | `lacp ]
let rpc_of_bond_mode x = match x with `balanceslb -> Rpc.String "balance-slb" | `activebackup -> Rpc.String "active-backup" | `lacp -> Rpc.String "lacp"
let bond_mode_of_rpc x = match x with Rpc.String "balance-slb" -> `balanceslb | Rpc.String "active-backup" -> `activebackup | Rpc.String "lacp" -> `lacp | _ -> failwith "Unmarshalling error in bond-mode"


type bond_mode_set = bond_mode list [@@deriving rpc]
type ref_PIF_set = [`PIF] Ref.t list [@@deriving rpc]
type ref_PIF_metrics = [`PIF_metrics] Ref.t [@@deriving rpc]
type primary_address_type = [ `IPv4 | `IPv6 ] [@@deriving rpc]
type primary_address_type_set = primary_address_type list [@@deriving rpc]
type ipv6_configuration_mode = [ `None | `DHCP | `Static | `Autoconf ] [@@deriving rpc]
type ipv6_configuration_mode_set = ipv6_configuration_mode list [@@deriving rpc]
type ip_configuration_mode = [ `None | `DHCP | `Static ] [@@deriving rpc]
type ip_configuration_mode_set = ip_configuration_mode list [@@deriving rpc]
type pif_igmp_status = [ `enabled | `disabled | `unknown ] [@@deriving rpc]
type pif_igmp_status_set = pif_igmp_status list [@@deriving rpc]
type ref_VIF_metrics = [`VIF_metrics] Ref.t [@@deriving rpc]
type vif_ipv6_configuration_mode = [ `None | `Static ] [@@deriving rpc]
type vif_ipv6_configuration_mode_set = vif_ipv6_configuration_mode list [@@deriving rpc]
type vif_ipv4_configuration_mode = [ `None | `Static ] [@@deriving rpc]
type vif_ipv4_configuration_mode_set = vif_ipv4_configuration_mode list [@@deriving rpc]
type vif_locking_mode = [ `network_default | `locked | `unlocked | `disabled ] [@@deriving rpc]
type vif_locking_mode_set = vif_locking_mode list [@@deriving rpc]
type vif_operations = [ `attach | `plug | `unplug ] [@@deriving rpc]
type string_to_vif_operations_map = (string * vif_operations) list [@@deriving rpc]
type vif_operations_set = vif_operations list [@@deriving rpc]
type network_purpose = [ `nbd | `insecure_nbd ] [@@deriving rpc]
type network_default_locking_mode = [ `unlocked | `disabled ] [@@deriving rpc]
type network_default_locking_mode_set = network_default_locking_mode list [@@deriving rpc]
type network_purpose_set = network_purpose list [@@deriving rpc]
type ref_VIF_to_string_map = (ref_VIF * string) list [@@deriving rpc]
type network_operations = [ `attaching ] [@@deriving rpc]
type string_to_network_operations_map = (string * network_operations) list [@@deriving rpc]
type network_operations_set = network_operations list [@@deriving rpc]
type ref_host_cpu = [`host_cpu] Ref.t [@@deriving rpc]
type ref_host_metrics = [`host_metrics] Ref.t [@@deriving rpc]
type ref_host_patch = [`host_patch] Ref.t [@@deriving rpc]
type ref_pool_patch = [`pool_patch] Ref.t [@@deriving rpc]
type ref_host_crashdump = [`host_crashdump] Ref.t [@@deriving rpc]
type host_sched_gran = [ `core | `cpu | `socket ] [@@deriving rpc]
type host_sched_gran_set = host_sched_gran list [@@deriving rpc]
type secretstring = SecretString.t [@@deriving rpc]
type ref_VDI_set = [`VDI] Ref.t list [@@deriving rpc]
type ref_VDI_to_string_map = (ref_VDI * string) list [@@deriving rpc]
type ref_pool_update = [`pool_update] Ref.t [@@deriving rpc]
type ref_pool_update_set = [`pool_update] Ref.t list [@@deriving rpc]
type int64_set = int64 list [@@deriving rpc]
type host_display = [ `enabled | `disable_on_reboot | `disabled | `enable_on_reboot ] [@@deriving rpc]
type host_display_set = host_display list [@@deriving rpc]
type host_allowed_operations = [ `provision | `evacuate | `shutdown | `reboot | `power_on | `vm_start | `vm_resume | `vm_migrate ] [@@deriving rpc]
type string_to_host_allowed_operations_map = (string * host_allowed_operations) list [@@deriving rpc]
type host_allowed_operations_set = host_allowed_operations list [@@deriving rpc]
type ref_session = [`session] Ref.t [@@deriving rpc]
type ref_VM_appliance = [`VM_appliance] Ref.t [@@deriving rpc]
type vm_appliance_operation = [ `start | `clean_shutdown | `hard_shutdown | `shutdown ] [@@deriving rpc]
type string_to_vm_appliance_operation_map = (string * vm_appliance_operation) list [@@deriving rpc]
type vm_appliance_operation_set = vm_appliance_operation list [@@deriving rpc]
type vmss_type = [ `snapshot | `checkpoint | `snapshot_with_quiesce ] [@@deriving rpc]
type vmss_type_set = vmss_type list [@@deriving rpc]
type ref_VMSS = [`VMSS] Ref.t [@@deriving rpc]
type vmss_frequency = [ `hourly | `daily | `weekly ] [@@deriving rpc]
type vmss_frequency_set = vmss_frequency list [@@deriving rpc]
type ref_VMPP = [`VMPP] Ref.t [@@deriving rpc]
type vmpp_archive_target_type = [ `none | `cifs | `nfs ] [@@deriving rpc]
type vmpp_archive_target_type_set = vmpp_archive_target_type list [@@deriving rpc]
type vmpp_archive_frequency = [ `never | `always_after_backup | `daily | `weekly ] [@@deriving rpc]
type vmpp_archive_frequency_set = vmpp_archive_frequency list [@@deriving rpc]
type vmpp_backup_frequency = [ `hourly | `daily | `weekly ] [@@deriving rpc]
type vmpp_backup_frequency_set = vmpp_backup_frequency list [@@deriving rpc]
type vmpp_backup_type = [ `snapshot | `checkpoint ] [@@deriving rpc]
type vmpp_backup_type_set = vmpp_backup_type list [@@deriving rpc]
type ref_VM_guest_metrics = [`VM_guest_metrics] Ref.t [@@deriving rpc]
type tristate_type = [ `yes | `no | `unspecified ] [@@deriving rpc]
type tristate_type_set = tristate_type list [@@deriving rpc]
type domain_type = [ `hvm | `pv | `pv_in_pvh | `unspecified ] [@@deriving rpc]
type domain_type_set = domain_type list [@@deriving rpc]
type ref_VM_metrics = [`VM_metrics] Ref.t [@@deriving rpc]
type int64_to_string_set_map = (int64 * string_set) list
let rpc_of_int64_to_string_set_map x = Rpc.Dict (List.map (fun (x,y) -> Int64.to_string x, rpc_of_string_set y) x)
let int64_to_string_set_map_of_rpc x = match x with Rpc.Dict x -> List.map (fun (x,y) -> Int64.of_string x, string_set_of_rpc y) x | _ -> failwith "Unmarshalling error"

type int64_to_int64_map = (int64 * int64) list
let rpc_of_int64_to_int64_map x = Rpc.Dict (List.map (fun (x,y) -> Int64.to_string x, Rpc.Int y) x)
let int64_to_int64_map_of_rpc x = match x with Rpc.Dict x -> List.map (fun (x,y) -> Int64.of_string x, int64_of_rpc y) x | _ -> failwith "Unmarshalling error"

type int64_to_float_map = (int64 * float) list
let rpc_of_int64_to_float_map x = Rpc.Dict (List.map (fun (x,y) -> Int64.to_string x, Rpc.Float y) x)
let int64_to_float_map_of_rpc x = match x with Rpc.Dict x -> List.map (fun (x,y) -> Int64.of_string x, float_of_rpc y) x | _ -> failwith "Unmarshalling error"

type on_crash_behaviour = [ `destroy | `coredump_and_destroy | `restart | `coredump_and_restart | `preserve | `rename_restart ] [@@deriving rpc]
type on_crash_behaviour_set = on_crash_behaviour list [@@deriving rpc]
type vm_operations = [ `snapshot | `clone | `copy | `create_template | `revert | `checkpoint | `snapshot_with_quiesce | `provision | `start | `start_on | `pause | `unpause | `clean_shutdown | `clean_reboot | `hard_shutdown | `power_state_reset | `hard_reboot | `suspend | `csvm | `resume | `resume_on | `pool_migrate | `migrate_send | `get_boot_record | `send_sysrq | `send_trigger | `query_services | `shutdown | `call_plugin | `changing_memory_live | `awaiting_memory_live | `changing_dynamic_range | `changing_static_range | `changing_memory_limits | `changing_shadow_memory | `changing_shadow_memory_live | `changing_VCPUs | `changing_VCPUs_live | `changing_NVRAM | `assert_operation_valid | `data_source_op | `update_allowed_operations | `make_into_template | `import | `export | `metadata_export | `reverting | `destroy ] [@@deriving rpc]
type ref_VGPU_to_ref_GPU_group_map = (ref_VGPU * ref_GPU_group) list [@@deriving rpc]
type ref_VIF_to_ref_network_map = (ref_VIF * ref_network) list [@@deriving rpc]
type ref_VDI_to_ref_SR_map = (ref_VDI * ref_SR) list [@@deriving rpc]
type vm_operations_to_string_map = (vm_operations * string) list
let rpc_of_vm_operations_to_string_map x = Rpc.Dict (List.map (fun (x,y) -> (match rpc_of_vm_operations x with Rpc.String x -> x | _ -> failwith "Marshalling error"), Rpc.String y) x)
let vm_operations_to_string_map_of_rpc x = match x with Rpc.Dict l -> List.map (function (x,y) -> vm_operations_of_rpc (Rpc.String x), string_of_rpc y) l | _ -> failwith "Unmarshalling error"


type on_normal_exit = [ `destroy | `restart ] [@@deriving rpc]
type on_normal_exit_set = on_normal_exit list [@@deriving rpc]
type vm_power_state = [ `Halted | `Paused | `Running | `Suspended ] [@@deriving rpc]
type vm_power_state_set = vm_power_state list [@@deriving rpc]
type string_to_vm_operations_map = (string * vm_operations) list [@@deriving rpc]
type vm_operations_set = vm_operations list [@@deriving rpc]
type ref_host_set = [`host] Ref.t list [@@deriving rpc]
type update_after_apply_guidance = [ `restartHVM | `restartPV | `restartHost | `restartXAPI ] [@@deriving rpc]
type update_after_apply_guidance_set = update_after_apply_guidance list [@@deriving rpc]
type after_apply_guidance = [ `restartHVM | `restartPV | `restartHost | `restartXAPI ] [@@deriving rpc]
type after_apply_guidance_set = after_apply_guidance list [@@deriving rpc]
type ref_VM_set = [`VM] Ref.t list [@@deriving rpc]
type ref_VM_to_string_map = (ref_VM * string) list [@@deriving rpc]
type ref_SR_set = [`SR] Ref.t list [@@deriving rpc]
type pool_allowed_operations = [ `ha_enable | `ha_disable | `cluster_create | `designate_new_master ] [@@deriving rpc]
type string_to_pool_allowed_operations_map = (string * pool_allowed_operations) list [@@deriving rpc]
type pool_allowed_operations_set = pool_allowed_operations list [@@deriving rpc]
type ref_task = [`task] Ref.t [@@deriving rpc]
type task_status_type = [ `pending | `success | `failure | `cancelling | `cancelled ] [@@deriving rpc]
type task_status_type_set = task_status_type list [@@deriving rpc]
type task_allowed_operations = [ `cancel | `destroy ] [@@deriving rpc]
type string_to_task_allowed_operations_map = (string * task_allowed_operations) list [@@deriving rpc]
type task_allowed_operations_set = task_allowed_operations list [@@deriving rpc]
type ref_role = [`role] Ref.t [@@deriving rpc]
type ref_role_set = [`role] Ref.t list [@@deriving rpc]
type ref_subject = [`subject] Ref.t [@@deriving rpc]
type ref_task_set = [`task] Ref.t list [@@deriving rpc]
type ref_subject_set = [`subject] Ref.t list [@@deriving rpc]
type hello_return = [ `ok | `unknown_host | `cannot_talk_back ] [@@deriving rpc]
type hello_return_set = hello_return list [@@deriving rpc]
type ref_VM_to_string_to_string_map_map = (ref_VM * string_to_string_map) list [@@deriving rpc]
type ref_VM_to_string_set_map = (ref_VM * string_set) list [@@deriving rpc]
type ref_pool_set = [`pool] Ref.t list [@@deriving rpc]
type ref_pool_patch_set = [`pool_patch] Ref.t list [@@deriving rpc]
type ref_host_patch_set = [`host_patch] Ref.t list [@@deriving rpc]
type livepatch_status = [ `ok_livepatch_complete | `ok_livepatch_incomplete | `ok ] [@@deriving rpc]
type livepatch_status_set = livepatch_status list [@@deriving rpc]
type ref_console_set = [`console] Ref.t list [@@deriving rpc]
type ref_VIF_set = [`VIF] Ref.t list [@@deriving rpc]
type ref_VBD_set = [`VBD] Ref.t list [@@deriving rpc]
type ref_VUSB_set = [`VUSB] Ref.t list [@@deriving rpc]
type ref_crashdump_set = [`crashdump] Ref.t list [@@deriving rpc]
type ref_VTPM_set = [`VTPM] Ref.t list [@@deriving rpc]
type ref_VGPU_set = [`VGPU] Ref.t list [@@deriving rpc]
type ref_host_to_string_set_map = (ref_host * string_set) list [@@deriving rpc]
type ref_VM_metrics_set = [`VM_metrics] Ref.t list [@@deriving rpc]
type ref_VM_guest_metrics_set = [`VM_guest_metrics] Ref.t list [@@deriving rpc]
type ref_VMPP_set = [`VMPP] Ref.t list [@@deriving rpc]
type ref_VMSS_set = [`VMSS] Ref.t list [@@deriving rpc]
type ref_VM_appliance_set = [`VM_appliance] Ref.t list [@@deriving rpc]
type ref_DR_task_set = [`DR_task] Ref.t list [@@deriving rpc]
type ref_host_crashdump_set = [`host_crashdump] Ref.t list [@@deriving rpc]
type ref_PBD_set = [`PBD] Ref.t list [@@deriving rpc]
type ref_host_cpu_set = [`host_cpu] Ref.t list [@@deriving rpc]
type ref_PUSB_set = [`PUSB] Ref.t list [@@deriving rpc]
type ref_Feature_set = [`Feature] Ref.t list [@@deriving rpc]
type ref_Certificate_set = [`Certificate] Ref.t list [@@deriving rpc]
type ref_host_metrics_set = [`host_metrics] Ref.t list [@@deriving rpc]
type ref_network_set = [`network] Ref.t list [@@deriving rpc]
type ref_VIF_metrics_set = [`VIF_metrics] Ref.t list [@@deriving rpc]
type ref_Bond_set = [`Bond] Ref.t list [@@deriving rpc]
type ref_VLAN_set = [`VLAN] Ref.t list [@@deriving rpc]
type ref_tunnel_set = [`tunnel] Ref.t list [@@deriving rpc]
type ref_network_sriov_set = [`network_sriov] Ref.t list [@@deriving rpc]
type ref_PIF_metrics_set = [`PIF_metrics] Ref.t list [@@deriving rpc]
type ref_SM_set = [`SM] Ref.t list [@@deriving rpc]
type ref_VBD_metrics_set = [`VBD_metrics] Ref.t list [@@deriving rpc]
type ref_blob_set = [`blob] Ref.t list [@@deriving rpc]
type ref_message_set = [`message] Ref.t list [@@deriving rpc]
type ref_secret_set = [`secret] Ref.t list [@@deriving rpc]
type ref_PVS_site_set = [`PVS_site] Ref.t list [@@deriving rpc]
type ref_PVS_server_set = [`PVS_server] Ref.t list [@@deriving rpc]
type ref_PVS_proxy_set = [`PVS_proxy] Ref.t list [@@deriving rpc]
type ref_SDN_controller_set = [`SDN_controller] Ref.t list [@@deriving rpc]
type ref_USB_group_set = [`USB_group] Ref.t list [@@deriving rpc]
type ref_Cluster_host_set = [`Cluster_host] Ref.t list [@@deriving rpc]
type ref_Cluster_set = [`Cluster] Ref.t list [@@deriving rpc]
type string_set_set = string list list [@@deriving rpc]
type sr_health = [ `healthy | `recovering ] [@@deriving rpc]
type sr_health_set = sr_health list [@@deriving rpc]
type string_option = string option [@@deriving rpc]
type event_operation = [ `add | `del | `_mod ]
let rpc_of_event_operation x = match x with | `add -> Rpc.String "add" | `del -> Rpc.String "del" | `_mod -> Rpc.String "mod"
let event_operation_of_rpc x = match x with | Rpc.String "add" -> `add | Rpc.String "del" -> `del | Rpc.String "mod" -> `_mod | _ -> failwith "Unmarshalling error"

type event_operation_set = event_operation list [@@deriving rpc]
type ref_Diagnostics = [`Diagnostics] Ref.t [@@deriving rpc]
type ref_Diagnostics_set = [`Diagnostics] Ref.t list [@@deriving rpc]
type ref_vdi_nbd_server_info = [`vdi_nbd_server_info] Ref.t [@@deriving rpc]
type ref_vdi_nbd_server_info_set = [`vdi_nbd_server_info] Ref.t list [@@deriving rpc]
type ref_data_source = [`data_source] Ref.t [@@deriving rpc]
type ref_data_source_set = [`data_source] Ref.t list [@@deriving rpc]
type ref_user_set = [`user] Ref.t list [@@deriving rpc]
type ref_LVHD_set = [`LVHD] Ref.t list [@@deriving rpc]
type ref_probe_result = [`probe_result] Ref.t [@@deriving rpc]
type ref_probe_result_set = [`probe_result] Ref.t list [@@deriving rpc]
type ref_sr_stat = [`sr_stat] Ref.t [@@deriving rpc]
type ref_sr_stat_set = [`sr_stat] Ref.t list [@@deriving rpc]
type ref_event = [`event] Ref.t [@@deriving rpc]
type ref_event_set = [`event] Ref.t list [@@deriving rpc]
type ref_auth = [`auth] Ref.t [@@deriving rpc]
type ref_auth_set = [`auth] Ref.t list [@@deriving rpc]
type ref_session_set = [`session] Ref.t list [@@deriving rpc]

type sr_stat_t = { sr_stat_uuid : string_option; sr_stat_name_label : string; sr_stat_name_description : string; sr_stat_free_space : int64; sr_stat_total_space : int64; sr_stat_clustered : bool; sr_stat_health : sr_health }
let rpc_of_sr_stat_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (opt_map (rpc_of_string) (x.sr_stat_uuid)); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.sr_stat_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.sr_stat_name_description))); opt_map (fun v -> ("free_space", v)) (Some ((rpc_of_int64) (x.sr_stat_free_space))); opt_map (fun v -> ("total_space", v)) (Some ((rpc_of_int64) (x.sr_stat_total_space))); opt_map (fun v -> ("clustered", v)) (Some ((rpc_of_bool) (x.sr_stat_clustered))); opt_map (fun v -> ("health", v)) (Some ((rpc_of_sr_health) (x.sr_stat_health))) ])
let sr_stat_t_of_rpc x = on_dict (fun x -> { sr_stat_uuid = (if List.mem_assoc "uuid" x then Some ((string_of_rpc (assocer "uuid" x None))) else None); sr_stat_name_label = ((string_of_rpc (assocer "name_label" x None))); sr_stat_name_description = ((string_of_rpc (assocer "name_description" x None))); sr_stat_free_space = ((int64_of_rpc (assocer "free_space" x None))); sr_stat_total_space = ((int64_of_rpc (assocer "total_space" x None))); sr_stat_clustered = ((bool_of_rpc (assocer "clustered" x None))); sr_stat_health = ((sr_health_of_rpc (assocer "health" x None))) }) x
type ref_sr_stat_to_sr_stat_t_map = (ref_sr_stat * sr_stat_t) list [@@deriving rpc]
type sr_stat_t_set = sr_stat_t list [@@deriving rpc]
type sr_stat_t_option = sr_stat_t option [@@deriving rpc]

type certificate_t = { certificate_uuid : string; certificate_host : ref_host; certificate_not_before : datetime; certificate_not_after : datetime; certificate_fingerprint : string }
let rpc_of_certificate_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.certificate_uuid))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.certificate_host))); opt_map (fun v -> ("not_before", v)) (Some ((rpc_of_datetime) (x.certificate_not_before))); opt_map (fun v -> ("not_after", v)) (Some ((rpc_of_datetime) (x.certificate_not_after))); opt_map (fun v -> ("fingerprint", v)) (Some ((rpc_of_string) (x.certificate_fingerprint))) ])
let certificate_t_of_rpc x = on_dict (fun x -> { certificate_uuid = ((string_of_rpc (assocer "uuid" x None))); certificate_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); certificate_not_before = ((datetime_of_rpc (assocer "not_before" x (Some (Rpc.String "19700101T00:00:00Z"))))); certificate_not_after = ((datetime_of_rpc (assocer "not_after" x (Some (Rpc.String "19700101T00:00:00Z"))))); certificate_fingerprint = ((string_of_rpc (assocer "fingerprint" x (Some (Rpc.String ""))))) }) x
type ref_Certificate_to_certificate_t_map = (ref_Certificate * certificate_t) list [@@deriving rpc]
type certificate_t_set = certificate_t list [@@deriving rpc]
type certificate_t_option = certificate_t option [@@deriving rpc]

type cluster_host_t = { cluster_host_uuid : string; cluster_host_cluster : ref_Cluster; cluster_host_host : ref_host; cluster_host_enabled : bool; cluster_host_PIF : ref_PIF; cluster_host_joined : bool; cluster_host_allowed_operations : cluster_host_operation_set; cluster_host_current_operations : string_to_cluster_host_operation_map; cluster_host_other_config : string_to_string_map }
let rpc_of_cluster_host_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.cluster_host_uuid))); opt_map (fun v -> ("cluster", v)) (Some ((rpc_of_ref_Cluster) (x.cluster_host_cluster))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.cluster_host_host))); opt_map (fun v -> ("enabled", v)) (Some ((rpc_of_bool) (x.cluster_host_enabled))); opt_map (fun v -> ("PIF", v)) (Some ((rpc_of_ref_PIF) (x.cluster_host_PIF))); opt_map (fun v -> ("joined", v)) (Some ((rpc_of_bool) (x.cluster_host_joined))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_cluster_host_operation_set) (x.cluster_host_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_cluster_host_operation_map) (x.cluster_host_current_operations))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.cluster_host_other_config))) ])
let cluster_host_t_of_rpc x = on_dict (fun x -> { cluster_host_uuid = ((string_of_rpc (assocer "uuid" x None))); cluster_host_cluster = ((ref_Cluster_of_rpc (assocer "cluster" x (Some (Rpc.String "OpaqueRef:NULL"))))); cluster_host_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); cluster_host_enabled = ((bool_of_rpc (assocer "enabled" x (Some (Rpc.Bool false))))); cluster_host_PIF = ((ref_PIF_of_rpc (assocer "PIF" x (Some (Rpc.String "OpaqueRef:NULL"))))); cluster_host_joined = ((bool_of_rpc (assocer "joined" x (Some (Rpc.Bool true))))); cluster_host_allowed_operations = ((cluster_host_operation_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); cluster_host_current_operations = ((string_to_cluster_host_operation_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); cluster_host_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_Cluster_host_to_cluster_host_t_map = (ref_Cluster_host * cluster_host_t) list [@@deriving rpc]
type cluster_host_t_set = cluster_host_t list [@@deriving rpc]
type cluster_host_t_option = cluster_host_t option [@@deriving rpc]

type cluster_t = { cluster_uuid : string; cluster_cluster_hosts : ref_Cluster_host_set; cluster_pending_forget : string_set; cluster_cluster_token : string; cluster_cluster_stack : string; cluster_allowed_operations : cluster_operation_set; cluster_current_operations : string_to_cluster_operation_map; cluster_pool_auto_join : bool; cluster_token_timeout : float; cluster_token_timeout_coefficient : float; cluster_cluster_config : string_to_string_map; cluster_other_config : string_to_string_map }
let rpc_of_cluster_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.cluster_uuid))); opt_map (fun v -> ("cluster_hosts", v)) (Some ((rpc_of_ref_Cluster_host_set) (x.cluster_cluster_hosts))); opt_map (fun v -> ("pending_forget", v)) (Some ((rpc_of_string_set) (x.cluster_pending_forget))); opt_map (fun v -> ("cluster_token", v)) (Some ((rpc_of_string) (x.cluster_cluster_token))); opt_map (fun v -> ("cluster_stack", v)) (Some ((rpc_of_string) (x.cluster_cluster_stack))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_cluster_operation_set) (x.cluster_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_cluster_operation_map) (x.cluster_current_operations))); opt_map (fun v -> ("pool_auto_join", v)) (Some ((rpc_of_bool) (x.cluster_pool_auto_join))); opt_map (fun v -> ("token_timeout", v)) (Some ((rpc_of_float) (x.cluster_token_timeout))); opt_map (fun v -> ("token_timeout_coefficient", v)) (Some ((rpc_of_float) (x.cluster_token_timeout_coefficient))); opt_map (fun v -> ("cluster_config", v)) (Some ((rpc_of_string_to_string_map) (x.cluster_cluster_config))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.cluster_other_config))) ])
let cluster_t_of_rpc x = on_dict (fun x -> { cluster_uuid = ((string_of_rpc (assocer "uuid" x None))); cluster_cluster_hosts = ((ref_Cluster_host_set_of_rpc (assocer "cluster_hosts" x (Some (Rpc.Enum []))))); cluster_pending_forget = ((string_set_of_rpc (assocer "pending_forget" x (Some (Rpc.Enum []))))); cluster_cluster_token = ((string_of_rpc (assocer "cluster_token" x (Some (Rpc.String ""))))); cluster_cluster_stack = ((string_of_rpc (assocer "cluster_stack" x (Some (Rpc.String "corosync"))))); cluster_allowed_operations = ((cluster_operation_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); cluster_current_operations = ((string_to_cluster_operation_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); cluster_pool_auto_join = ((bool_of_rpc (assocer "pool_auto_join" x (Some (Rpc.Bool true))))); cluster_token_timeout = ((float_of_rpc (assocer "token_timeout" x (Some (Rpc.Float (20.000000)))))); cluster_token_timeout_coefficient = ((float_of_rpc (assocer "token_timeout_coefficient" x (Some (Rpc.Float (1.000000)))))); cluster_cluster_config = ((string_to_string_map_of_rpc (assocer "cluster_config" x (Some (Rpc.Dict []))))); cluster_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_Cluster_to_cluster_t_map = (ref_Cluster * cluster_t) list [@@deriving rpc]
type cluster_t_set = cluster_t list [@@deriving rpc]
type cluster_t_option = cluster_t option [@@deriving rpc]

type vUSB_t = { vUSB_uuid : string; vUSB_allowed_operations : vusb_operations_set; vUSB_current_operations : string_to_vusb_operations_map; vUSB_VM : ref_VM; vUSB_USB_group : ref_USB_group; vUSB_other_config : string_to_string_map; vUSB_currently_attached : bool }
let rpc_of_vUSB_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vUSB_uuid))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vusb_operations_set) (x.vUSB_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vusb_operations_map) (x.vUSB_current_operations))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.vUSB_VM))); opt_map (fun v -> ("USB_group", v)) (Some ((rpc_of_ref_USB_group) (x.vUSB_USB_group))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vUSB_other_config))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.vUSB_currently_attached))) ])
let vUSB_t_of_rpc x = on_dict (fun x -> { vUSB_uuid = ((string_of_rpc (assocer "uuid" x None))); vUSB_allowed_operations = ((vusb_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vUSB_current_operations = ((string_to_vusb_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vUSB_VM = ((ref_VM_of_rpc (assocer "VM" x None))); vUSB_USB_group = ((ref_USB_group_of_rpc (assocer "USB_group" x None))); vUSB_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); vUSB_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool false))))) }) x
type ref_VUSB_to_vUSB_t_map = (ref_VUSB * vUSB_t) list [@@deriving rpc]
type vUSB_t_set = vUSB_t list [@@deriving rpc]
type vUSB_t_option = vUSB_t option [@@deriving rpc]

type uSB_group_t = { uSB_group_uuid : string; uSB_group_name_label : string; uSB_group_name_description : string; uSB_group_PUSBs : ref_PUSB_set; uSB_group_VUSBs : ref_VUSB_set; uSB_group_other_config : string_to_string_map }
let rpc_of_uSB_group_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.uSB_group_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.uSB_group_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.uSB_group_name_description))); opt_map (fun v -> ("PUSBs", v)) (Some ((rpc_of_ref_PUSB_set) (x.uSB_group_PUSBs))); opt_map (fun v -> ("VUSBs", v)) (Some ((rpc_of_ref_VUSB_set) (x.uSB_group_VUSBs))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.uSB_group_other_config))) ])
let uSB_group_t_of_rpc x = on_dict (fun x -> { uSB_group_uuid = ((string_of_rpc (assocer "uuid" x None))); uSB_group_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); uSB_group_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); uSB_group_PUSBs = ((ref_PUSB_set_of_rpc (assocer "PUSBs" x (Some (Rpc.Enum []))))); uSB_group_VUSBs = ((ref_VUSB_set_of_rpc (assocer "VUSBs" x (Some (Rpc.Enum []))))); uSB_group_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_USB_group_to_uSB_group_t_map = (ref_USB_group * uSB_group_t) list [@@deriving rpc]
type uSB_group_t_set = uSB_group_t list [@@deriving rpc]
type uSB_group_t_option = uSB_group_t option [@@deriving rpc]

type pUSB_t = { pUSB_uuid : string; pUSB_USB_group : ref_USB_group; pUSB_host : ref_host; pUSB_path : string; pUSB_vendor_id : string; pUSB_vendor_desc : string; pUSB_product_id : string; pUSB_product_desc : string; pUSB_serial : string; pUSB_version : string; pUSB_description : string; pUSB_passthrough_enabled : bool; pUSB_other_config : string_to_string_map; pUSB_speed : float }
let rpc_of_pUSB_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pUSB_uuid))); opt_map (fun v -> ("USB_group", v)) (Some ((rpc_of_ref_USB_group) (x.pUSB_USB_group))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pUSB_host))); opt_map (fun v -> ("path", v)) (Some ((rpc_of_string) (x.pUSB_path))); opt_map (fun v -> ("vendor_id", v)) (Some ((rpc_of_string) (x.pUSB_vendor_id))); opt_map (fun v -> ("vendor_desc", v)) (Some ((rpc_of_string) (x.pUSB_vendor_desc))); opt_map (fun v -> ("product_id", v)) (Some ((rpc_of_string) (x.pUSB_product_id))); opt_map (fun v -> ("product_desc", v)) (Some ((rpc_of_string) (x.pUSB_product_desc))); opt_map (fun v -> ("serial", v)) (Some ((rpc_of_string) (x.pUSB_serial))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.pUSB_version))); opt_map (fun v -> ("description", v)) (Some ((rpc_of_string) (x.pUSB_description))); opt_map (fun v -> ("passthrough_enabled", v)) (Some ((rpc_of_bool) (x.pUSB_passthrough_enabled))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pUSB_other_config))); opt_map (fun v -> ("speed", v)) (Some ((rpc_of_float) (x.pUSB_speed))) ])
let pUSB_t_of_rpc x = on_dict (fun x -> { pUSB_uuid = ((string_of_rpc (assocer "uuid" x None))); pUSB_USB_group = ((ref_USB_group_of_rpc (assocer "USB_group" x (Some (Rpc.String "OpaqueRef:NULL"))))); pUSB_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); pUSB_path = ((string_of_rpc (assocer "path" x (Some (Rpc.String ""))))); pUSB_vendor_id = ((string_of_rpc (assocer "vendor_id" x (Some (Rpc.String ""))))); pUSB_vendor_desc = ((string_of_rpc (assocer "vendor_desc" x (Some (Rpc.String ""))))); pUSB_product_id = ((string_of_rpc (assocer "product_id" x (Some (Rpc.String ""))))); pUSB_product_desc = ((string_of_rpc (assocer "product_desc" x (Some (Rpc.String ""))))); pUSB_serial = ((string_of_rpc (assocer "serial" x (Some (Rpc.String ""))))); pUSB_version = ((string_of_rpc (assocer "version" x (Some (Rpc.String ""))))); pUSB_description = ((string_of_rpc (assocer "description" x (Some (Rpc.String ""))))); pUSB_passthrough_enabled = ((bool_of_rpc (assocer "passthrough_enabled" x (Some (Rpc.Bool false))))); pUSB_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); pUSB_speed = ((float_of_rpc (assocer "speed" x (Some (Rpc.Float (-1.000000)))))) }) x
type ref_PUSB_to_pUSB_t_map = (ref_PUSB * pUSB_t) list [@@deriving rpc]
type pUSB_t_set = pUSB_t list [@@deriving rpc]
type pUSB_t_option = pUSB_t option [@@deriving rpc]

type sDN_controller_t = { sDN_controller_uuid : string; sDN_controller_protocol : sdn_controller_protocol; sDN_controller_address : string; sDN_controller_port : int64 }
let rpc_of_sDN_controller_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.sDN_controller_uuid))); opt_map (fun v -> ("protocol", v)) (Some ((rpc_of_sdn_controller_protocol) (x.sDN_controller_protocol))); opt_map (fun v -> ("address", v)) (Some ((rpc_of_string) (x.sDN_controller_address))); opt_map (fun v -> ("port", v)) (Some ((rpc_of_int64) (x.sDN_controller_port))) ])
let sDN_controller_t_of_rpc x = on_dict (fun x -> { sDN_controller_uuid = ((string_of_rpc (assocer "uuid" x None))); sDN_controller_protocol = ((sdn_controller_protocol_of_rpc (assocer "protocol" x (Some (Rpc.String "ssl"))))); sDN_controller_address = ((string_of_rpc (assocer "address" x (Some (Rpc.String ""))))); sDN_controller_port = ((int64_of_rpc (assocer "port" x (Some (Rpc.Int (0L)))))) }) x
type ref_SDN_controller_to_sDN_controller_t_map = (ref_SDN_controller * sDN_controller_t) list [@@deriving rpc]
type sDN_controller_t_set = sDN_controller_t list [@@deriving rpc]
type sDN_controller_t_option = sDN_controller_t option [@@deriving rpc]

type feature_t = { feature_uuid : string; feature_name_label : string; feature_name_description : string; feature_enabled : bool; feature_experimental : bool; feature_version : string; feature_host : ref_host }
let rpc_of_feature_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.feature_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.feature_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.feature_name_description))); opt_map (fun v -> ("enabled", v)) (Some ((rpc_of_bool) (x.feature_enabled))); opt_map (fun v -> ("experimental", v)) (Some ((rpc_of_bool) (x.feature_experimental))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.feature_version))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.feature_host))) ])
let feature_t_of_rpc x = on_dict (fun x -> { feature_uuid = ((string_of_rpc (assocer "uuid" x None))); feature_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); feature_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); feature_enabled = ((bool_of_rpc (assocer "enabled" x (Some (Rpc.Bool false))))); feature_experimental = ((bool_of_rpc (assocer "experimental" x (Some (Rpc.Bool false))))); feature_version = ((string_of_rpc (assocer "version" x (Some (Rpc.String "1.0"))))); feature_host = ((ref_host_of_rpc (assocer "host" x None))) }) x
type ref_Feature_to_feature_t_map = (ref_Feature * feature_t) list [@@deriving rpc]
type feature_t_set = feature_t list [@@deriving rpc]
type feature_t_option = feature_t option [@@deriving rpc]

type pVS_cache_storage_t = { pVS_cache_storage_uuid : string; pVS_cache_storage_host : ref_host; pVS_cache_storage_SR : ref_SR; pVS_cache_storage_site : ref_PVS_site; pVS_cache_storage_size : int64; pVS_cache_storage_VDI : ref_VDI }
let rpc_of_pVS_cache_storage_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pVS_cache_storage_uuid))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pVS_cache_storage_host))); opt_map (fun v -> ("SR", v)) (Some ((rpc_of_ref_SR) (x.pVS_cache_storage_SR))); opt_map (fun v -> ("site", v)) (Some ((rpc_of_ref_PVS_site) (x.pVS_cache_storage_site))); opt_map (fun v -> ("size", v)) (Some ((rpc_of_int64) (x.pVS_cache_storage_size))); opt_map (fun v -> ("VDI", v)) (Some ((rpc_of_ref_VDI) (x.pVS_cache_storage_VDI))) ])
let pVS_cache_storage_t_of_rpc x = on_dict (fun x -> { pVS_cache_storage_uuid = ((string_of_rpc (assocer "uuid" x None))); pVS_cache_storage_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); pVS_cache_storage_SR = ((ref_SR_of_rpc (assocer "SR" x (Some (Rpc.String "OpaqueRef:NULL"))))); pVS_cache_storage_site = ((ref_PVS_site_of_rpc (assocer "site" x (Some (Rpc.String "OpaqueRef:NULL"))))); pVS_cache_storage_size = ((int64_of_rpc (assocer "size" x (Some (Rpc.Int (21474836480L)))))); pVS_cache_storage_VDI = ((ref_VDI_of_rpc (assocer "VDI" x (Some (Rpc.String "OpaqueRef:NULL"))))) }) x
type ref_PVS_cache_storage_to_pVS_cache_storage_t_map = (ref_PVS_cache_storage * pVS_cache_storage_t) list [@@deriving rpc]
type pVS_cache_storage_t_set = pVS_cache_storage_t list [@@deriving rpc]
type pVS_cache_storage_t_option = pVS_cache_storage_t option [@@deriving rpc]

type pVS_proxy_t = { pVS_proxy_uuid : string; pVS_proxy_site : ref_PVS_site; pVS_proxy_VIF : ref_VIF; pVS_proxy_currently_attached : bool; pVS_proxy_status : pvs_proxy_status }
let rpc_of_pVS_proxy_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pVS_proxy_uuid))); opt_map (fun v -> ("site", v)) (Some ((rpc_of_ref_PVS_site) (x.pVS_proxy_site))); opt_map (fun v -> ("VIF", v)) (Some ((rpc_of_ref_VIF) (x.pVS_proxy_VIF))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.pVS_proxy_currently_attached))); opt_map (fun v -> ("status", v)) (Some ((rpc_of_pvs_proxy_status) (x.pVS_proxy_status))) ])
let pVS_proxy_t_of_rpc x = on_dict (fun x -> { pVS_proxy_uuid = ((string_of_rpc (assocer "uuid" x None))); pVS_proxy_site = ((ref_PVS_site_of_rpc (assocer "site" x (Some (Rpc.String "OpaqueRef:NULL"))))); pVS_proxy_VIF = ((ref_VIF_of_rpc (assocer "VIF" x (Some (Rpc.String "OpaqueRef:NULL"))))); pVS_proxy_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool false))))); pVS_proxy_status = ((pvs_proxy_status_of_rpc (assocer "status" x (Some (Rpc.String "stopped"))))) }) x
type ref_PVS_proxy_to_pVS_proxy_t_map = (ref_PVS_proxy * pVS_proxy_t) list [@@deriving rpc]
type pVS_proxy_t_set = pVS_proxy_t list [@@deriving rpc]
type pVS_proxy_t_option = pVS_proxy_t option [@@deriving rpc]

type pVS_server_t = { pVS_server_uuid : string; pVS_server_addresses : string_set; pVS_server_first_port : int64; pVS_server_last_port : int64; pVS_server_site : ref_PVS_site }
let rpc_of_pVS_server_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pVS_server_uuid))); opt_map (fun v -> ("addresses", v)) (Some ((rpc_of_string_set) (x.pVS_server_addresses))); opt_map (fun v -> ("first_port", v)) (Some ((rpc_of_int64) (x.pVS_server_first_port))); opt_map (fun v -> ("last_port", v)) (Some ((rpc_of_int64) (x.pVS_server_last_port))); opt_map (fun v -> ("site", v)) (Some ((rpc_of_ref_PVS_site) (x.pVS_server_site))) ])
let pVS_server_t_of_rpc x = on_dict (fun x -> { pVS_server_uuid = ((string_of_rpc (assocer "uuid" x None))); pVS_server_addresses = ((string_set_of_rpc (assocer "addresses" x (Some (Rpc.Enum []))))); pVS_server_first_port = ((int64_of_rpc (assocer "first_port" x (Some (Rpc.Int (0L)))))); pVS_server_last_port = ((int64_of_rpc (assocer "last_port" x (Some (Rpc.Int (0L)))))); pVS_server_site = ((ref_PVS_site_of_rpc (assocer "site" x (Some (Rpc.String "OpaqueRef:NULL"))))) }) x
type ref_PVS_server_to_pVS_server_t_map = (ref_PVS_server * pVS_server_t) list [@@deriving rpc]
type pVS_server_t_set = pVS_server_t list [@@deriving rpc]
type pVS_server_t_option = pVS_server_t option [@@deriving rpc]

type pVS_site_t = { pVS_site_uuid : string; pVS_site_name_label : string; pVS_site_name_description : string; pVS_site_PVS_uuid : string; pVS_site_cache_storage : ref_PVS_cache_storage_set; pVS_site_servers : ref_PVS_server_set; pVS_site_proxies : ref_PVS_proxy_set }
let rpc_of_pVS_site_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pVS_site_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.pVS_site_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.pVS_site_name_description))); opt_map (fun v -> ("PVS_uuid", v)) (Some ((rpc_of_string) (x.pVS_site_PVS_uuid))); opt_map (fun v -> ("cache_storage", v)) (Some ((rpc_of_ref_PVS_cache_storage_set) (x.pVS_site_cache_storage))); opt_map (fun v -> ("servers", v)) (Some ((rpc_of_ref_PVS_server_set) (x.pVS_site_servers))); opt_map (fun v -> ("proxies", v)) (Some ((rpc_of_ref_PVS_proxy_set) (x.pVS_site_proxies))) ])
let pVS_site_t_of_rpc x = on_dict (fun x -> { pVS_site_uuid = ((string_of_rpc (assocer "uuid" x None))); pVS_site_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); pVS_site_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); pVS_site_PVS_uuid = ((string_of_rpc (assocer "PVS_uuid" x (Some (Rpc.String ""))))); pVS_site_cache_storage = ((ref_PVS_cache_storage_set_of_rpc (assocer "cache_storage" x (Some (Rpc.Enum []))))); pVS_site_servers = ((ref_PVS_server_set_of_rpc (assocer "servers" x (Some (Rpc.Enum []))))); pVS_site_proxies = ((ref_PVS_proxy_set_of_rpc (assocer "proxies" x (Some (Rpc.Enum []))))) }) x
type ref_PVS_site_to_pVS_site_t_map = (ref_PVS_site * pVS_site_t) list [@@deriving rpc]
type pVS_site_t_set = pVS_site_t list [@@deriving rpc]
type pVS_site_t_option = pVS_site_t option [@@deriving rpc]

type vGPU_type_t = { vGPU_type_uuid : string; vGPU_type_vendor_name : string; vGPU_type_model_name : string; vGPU_type_framebuffer_size : int64; vGPU_type_max_heads : int64; vGPU_type_max_resolution_x : int64; vGPU_type_max_resolution_y : int64; vGPU_type_supported_on_PGPUs : ref_PGPU_set; vGPU_type_enabled_on_PGPUs : ref_PGPU_set; vGPU_type_VGPUs : ref_VGPU_set; vGPU_type_supported_on_GPU_groups : ref_GPU_group_set; vGPU_type_enabled_on_GPU_groups : ref_GPU_group_set; vGPU_type_implementation : vgpu_type_implementation; vGPU_type_identifier : string; vGPU_type_experimental : bool; vGPU_type_compatible_types_in_vm : ref_VGPU_type_set }
let rpc_of_vGPU_type_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vGPU_type_uuid))); opt_map (fun v -> ("vendor_name", v)) (Some ((rpc_of_string) (x.vGPU_type_vendor_name))); opt_map (fun v -> ("model_name", v)) (Some ((rpc_of_string) (x.vGPU_type_model_name))); opt_map (fun v -> ("framebuffer_size", v)) (Some ((rpc_of_int64) (x.vGPU_type_framebuffer_size))); opt_map (fun v -> ("max_heads", v)) (Some ((rpc_of_int64) (x.vGPU_type_max_heads))); opt_map (fun v -> ("max_resolution_x", v)) (Some ((rpc_of_int64) (x.vGPU_type_max_resolution_x))); opt_map (fun v -> ("max_resolution_y", v)) (Some ((rpc_of_int64) (x.vGPU_type_max_resolution_y))); opt_map (fun v -> ("supported_on_PGPUs", v)) (Some ((rpc_of_ref_PGPU_set) (x.vGPU_type_supported_on_PGPUs))); opt_map (fun v -> ("enabled_on_PGPUs", v)) (Some ((rpc_of_ref_PGPU_set) (x.vGPU_type_enabled_on_PGPUs))); opt_map (fun v -> ("VGPUs", v)) (Some ((rpc_of_ref_VGPU_set) (x.vGPU_type_VGPUs))); opt_map (fun v -> ("supported_on_GPU_groups", v)) (Some ((rpc_of_ref_GPU_group_set) (x.vGPU_type_supported_on_GPU_groups))); opt_map (fun v -> ("enabled_on_GPU_groups", v)) (Some ((rpc_of_ref_GPU_group_set) (x.vGPU_type_enabled_on_GPU_groups))); opt_map (fun v -> ("implementation", v)) (Some ((rpc_of_vgpu_type_implementation) (x.vGPU_type_implementation))); opt_map (fun v -> ("identifier", v)) (Some ((rpc_of_string) (x.vGPU_type_identifier))); opt_map (fun v -> ("experimental", v)) (Some ((rpc_of_bool) (x.vGPU_type_experimental))); opt_map (fun v -> ("compatible_types_in_vm", v)) (Some ((rpc_of_ref_VGPU_type_set) (x.vGPU_type_compatible_types_in_vm))) ])
let vGPU_type_t_of_rpc x = on_dict (fun x -> { vGPU_type_uuid = ((string_of_rpc (assocer "uuid" x None))); vGPU_type_vendor_name = ((string_of_rpc (assocer "vendor_name" x (Some (Rpc.String ""))))); vGPU_type_model_name = ((string_of_rpc (assocer "model_name" x (Some (Rpc.String ""))))); vGPU_type_framebuffer_size = ((int64_of_rpc (assocer "framebuffer_size" x (Some (Rpc.Int (0L)))))); vGPU_type_max_heads = ((int64_of_rpc (assocer "max_heads" x (Some (Rpc.Int (0L)))))); vGPU_type_max_resolution_x = ((int64_of_rpc (assocer "max_resolution_x" x (Some (Rpc.Int (0L)))))); vGPU_type_max_resolution_y = ((int64_of_rpc (assocer "max_resolution_y" x (Some (Rpc.Int (0L)))))); vGPU_type_supported_on_PGPUs = ((ref_PGPU_set_of_rpc (assocer "supported_on_PGPUs" x (Some (Rpc.Enum []))))); vGPU_type_enabled_on_PGPUs = ((ref_PGPU_set_of_rpc (assocer "enabled_on_PGPUs" x (Some (Rpc.Enum []))))); vGPU_type_VGPUs = ((ref_VGPU_set_of_rpc (assocer "VGPUs" x (Some (Rpc.Enum []))))); vGPU_type_supported_on_GPU_groups = ((ref_GPU_group_set_of_rpc (assocer "supported_on_GPU_groups" x (Some (Rpc.Enum []))))); vGPU_type_enabled_on_GPU_groups = ((ref_GPU_group_set_of_rpc (assocer "enabled_on_GPU_groups" x (Some (Rpc.Enum []))))); vGPU_type_implementation = ((vgpu_type_implementation_of_rpc (assocer "implementation" x (Some (Rpc.String "passthrough"))))); vGPU_type_identifier = ((string_of_rpc (assocer "identifier" x (Some (Rpc.String ""))))); vGPU_type_experimental = ((bool_of_rpc (assocer "experimental" x (Some (Rpc.Bool false))))); vGPU_type_compatible_types_in_vm = ((ref_VGPU_type_set_of_rpc (assocer "compatible_types_in_vm" x (Some (Rpc.Enum []))))) }) x
type ref_VGPU_type_to_vGPU_type_t_map = (ref_VGPU_type * vGPU_type_t) list [@@deriving rpc]
type vGPU_type_t_set = vGPU_type_t list [@@deriving rpc]
type vGPU_type_t_option = vGPU_type_t option [@@deriving rpc]

type vGPU_t = { vGPU_uuid : string; vGPU_VM : ref_VM; vGPU_GPU_group : ref_GPU_group; vGPU_device : string; vGPU_currently_attached : bool; vGPU_other_config : string_to_string_map; vGPU_type : ref_VGPU_type; vGPU_resident_on : ref_PGPU; vGPU_scheduled_to_be_resident_on : ref_PGPU; vGPU_compatibility_metadata : string_to_string_map; vGPU_extra_args : string; vGPU_PCI : ref_PCI }
let rpc_of_vGPU_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vGPU_uuid))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.vGPU_VM))); opt_map (fun v -> ("GPU_group", v)) (Some ((rpc_of_ref_GPU_group) (x.vGPU_GPU_group))); opt_map (fun v -> ("device", v)) (Some ((rpc_of_string) (x.vGPU_device))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.vGPU_currently_attached))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vGPU_other_config))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_ref_VGPU_type) (x.vGPU_type))); opt_map (fun v -> ("resident_on", v)) (Some ((rpc_of_ref_PGPU) (x.vGPU_resident_on))); opt_map (fun v -> ("scheduled_to_be_resident_on", v)) (Some ((rpc_of_ref_PGPU) (x.vGPU_scheduled_to_be_resident_on))); opt_map (fun v -> ("compatibility_metadata", v)) (Some ((rpc_of_string_to_string_map) (x.vGPU_compatibility_metadata))); opt_map (fun v -> ("extra_args", v)) (Some ((rpc_of_string) (x.vGPU_extra_args))); opt_map (fun v -> ("PCI", v)) (Some ((rpc_of_ref_PCI) (x.vGPU_PCI))) ])
let vGPU_t_of_rpc x = on_dict (fun x -> { vGPU_uuid = ((string_of_rpc (assocer "uuid" x None))); vGPU_VM = ((ref_VM_of_rpc (assocer "VM" x None))); vGPU_GPU_group = ((ref_GPU_group_of_rpc (assocer "GPU_group" x None))); vGPU_device = ((string_of_rpc (assocer "device" x (Some (Rpc.String "0"))))); vGPU_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool false))))); vGPU_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); vGPU_type = ((ref_VGPU_type_of_rpc (assocer "type" x (Some (Rpc.String "OpaqueRef:NULL"))))); vGPU_resident_on = ((ref_PGPU_of_rpc (assocer "resident_on" x (Some (Rpc.String "OpaqueRef:NULL"))))); vGPU_scheduled_to_be_resident_on = ((ref_PGPU_of_rpc (assocer "scheduled_to_be_resident_on" x (Some (Rpc.String "OpaqueRef:NULL"))))); vGPU_compatibility_metadata = ((string_to_string_map_of_rpc (assocer "compatibility_metadata" x (Some (Rpc.Dict []))))); vGPU_extra_args = ((string_of_rpc (assocer "extra_args" x (Some (Rpc.String ""))))); vGPU_PCI = ((ref_PCI_of_rpc (assocer "PCI" x (Some (Rpc.String "OpaqueRef:NULL"))))) }) x
type ref_VGPU_to_vGPU_t_map = (ref_VGPU * vGPU_t) list [@@deriving rpc]
type vGPU_t_set = vGPU_t list [@@deriving rpc]
type vGPU_t_option = vGPU_t option [@@deriving rpc]

type gPU_group_t = { gPU_group_uuid : string; gPU_group_name_label : string; gPU_group_name_description : string; gPU_group_PGPUs : ref_PGPU_set; gPU_group_VGPUs : ref_VGPU_set; gPU_group_GPU_types : string_set; gPU_group_other_config : string_to_string_map; gPU_group_allocation_algorithm : allocation_algorithm; gPU_group_supported_VGPU_types : ref_VGPU_type_set; gPU_group_enabled_VGPU_types : ref_VGPU_type_set }
let rpc_of_gPU_group_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.gPU_group_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.gPU_group_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.gPU_group_name_description))); opt_map (fun v -> ("PGPUs", v)) (Some ((rpc_of_ref_PGPU_set) (x.gPU_group_PGPUs))); opt_map (fun v -> ("VGPUs", v)) (Some ((rpc_of_ref_VGPU_set) (x.gPU_group_VGPUs))); opt_map (fun v -> ("GPU_types", v)) (Some ((rpc_of_string_set) (x.gPU_group_GPU_types))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.gPU_group_other_config))); opt_map (fun v -> ("allocation_algorithm", v)) (Some ((rpc_of_allocation_algorithm) (x.gPU_group_allocation_algorithm))); opt_map (fun v -> ("supported_VGPU_types", v)) (Some ((rpc_of_ref_VGPU_type_set) (x.gPU_group_supported_VGPU_types))); opt_map (fun v -> ("enabled_VGPU_types", v)) (Some ((rpc_of_ref_VGPU_type_set) (x.gPU_group_enabled_VGPU_types))) ])
let gPU_group_t_of_rpc x = on_dict (fun x -> { gPU_group_uuid = ((string_of_rpc (assocer "uuid" x None))); gPU_group_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); gPU_group_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); gPU_group_PGPUs = ((ref_PGPU_set_of_rpc (assocer "PGPUs" x (Some (Rpc.Enum []))))); gPU_group_VGPUs = ((ref_VGPU_set_of_rpc (assocer "VGPUs" x (Some (Rpc.Enum []))))); gPU_group_GPU_types = ((string_set_of_rpc (assocer "GPU_types" x (Some (Rpc.Enum []))))); gPU_group_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); gPU_group_allocation_algorithm = ((allocation_algorithm_of_rpc (assocer "allocation_algorithm" x (Some (Rpc.String "depth_first"))))); gPU_group_supported_VGPU_types = ((ref_VGPU_type_set_of_rpc (assocer "supported_VGPU_types" x (Some (Rpc.Enum []))))); gPU_group_enabled_VGPU_types = ((ref_VGPU_type_set_of_rpc (assocer "enabled_VGPU_types" x (Some (Rpc.Enum []))))) }) x
type ref_GPU_group_to_gPU_group_t_map = (ref_GPU_group * gPU_group_t) list [@@deriving rpc]
type gPU_group_t_set = gPU_group_t list [@@deriving rpc]
type gPU_group_t_option = gPU_group_t option [@@deriving rpc]

type pGPU_t = { pGPU_uuid : string; pGPU_PCI : ref_PCI; pGPU_GPU_group : ref_GPU_group; pGPU_host : ref_host; pGPU_other_config : string_to_string_map; pGPU_supported_VGPU_types : ref_VGPU_type_set; pGPU_enabled_VGPU_types : ref_VGPU_type_set; pGPU_resident_VGPUs : ref_VGPU_set; pGPU_supported_VGPU_max_capacities : ref_VGPU_type_to_int64_map; pGPU_dom0_access : pgpu_dom0_access; pGPU_is_system_display_device : bool; pGPU_compatibility_metadata : string_to_string_map }
let rpc_of_pGPU_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pGPU_uuid))); opt_map (fun v -> ("PCI", v)) (Some ((rpc_of_ref_PCI) (x.pGPU_PCI))); opt_map (fun v -> ("GPU_group", v)) (Some ((rpc_of_ref_GPU_group) (x.pGPU_GPU_group))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pGPU_host))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pGPU_other_config))); opt_map (fun v -> ("supported_VGPU_types", v)) (Some ((rpc_of_ref_VGPU_type_set) (x.pGPU_supported_VGPU_types))); opt_map (fun v -> ("enabled_VGPU_types", v)) (Some ((rpc_of_ref_VGPU_type_set) (x.pGPU_enabled_VGPU_types))); opt_map (fun v -> ("resident_VGPUs", v)) (Some ((rpc_of_ref_VGPU_set) (x.pGPU_resident_VGPUs))); opt_map (fun v -> ("supported_VGPU_max_capacities", v)) (Some ((rpc_of_ref_VGPU_type_to_int64_map) (x.pGPU_supported_VGPU_max_capacities))); opt_map (fun v -> ("dom0_access", v)) (Some ((rpc_of_pgpu_dom0_access) (x.pGPU_dom0_access))); opt_map (fun v -> ("is_system_display_device", v)) (Some ((rpc_of_bool) (x.pGPU_is_system_display_device))); opt_map (fun v -> ("compatibility_metadata", v)) (Some ((rpc_of_string_to_string_map) (x.pGPU_compatibility_metadata))) ])
let pGPU_t_of_rpc x = on_dict (fun x -> { pGPU_uuid = ((string_of_rpc (assocer "uuid" x None))); pGPU_PCI = ((ref_PCI_of_rpc (assocer "PCI" x (Some (Rpc.String "OpaqueRef:NULL"))))); pGPU_GPU_group = ((ref_GPU_group_of_rpc (assocer "GPU_group" x (Some (Rpc.String "OpaqueRef:NULL"))))); pGPU_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); pGPU_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); pGPU_supported_VGPU_types = ((ref_VGPU_type_set_of_rpc (assocer "supported_VGPU_types" x (Some (Rpc.Enum []))))); pGPU_enabled_VGPU_types = ((ref_VGPU_type_set_of_rpc (assocer "enabled_VGPU_types" x (Some (Rpc.Enum []))))); pGPU_resident_VGPUs = ((ref_VGPU_set_of_rpc (assocer "resident_VGPUs" x (Some (Rpc.Enum []))))); pGPU_supported_VGPU_max_capacities = ((ref_VGPU_type_to_int64_map_of_rpc (assocer "supported_VGPU_max_capacities" x (Some (Rpc.Dict []))))); pGPU_dom0_access = ((pgpu_dom0_access_of_rpc (assocer "dom0_access" x (Some (Rpc.String "enabled"))))); pGPU_is_system_display_device = ((bool_of_rpc (assocer "is_system_display_device" x (Some (Rpc.Bool false))))); pGPU_compatibility_metadata = ((string_to_string_map_of_rpc (assocer "compatibility_metadata" x (Some (Rpc.Dict []))))) }) x
type ref_PGPU_to_pGPU_t_map = (ref_PGPU * pGPU_t) list [@@deriving rpc]
type pGPU_t_set = pGPU_t list [@@deriving rpc]
type pGPU_t_option = pGPU_t option [@@deriving rpc]

type pCI_t = { pCI_uuid : string; pCI_class_name : string; pCI_vendor_name : string; pCI_device_name : string; pCI_host : ref_host; pCI_pci_id : string; pCI_dependencies : ref_PCI_set; pCI_other_config : string_to_string_map; pCI_subsystem_vendor_name : string; pCI_subsystem_device_name : string; pCI_driver_name : string }
let rpc_of_pCI_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pCI_uuid))); opt_map (fun v -> ("class_name", v)) (Some ((rpc_of_string) (x.pCI_class_name))); opt_map (fun v -> ("vendor_name", v)) (Some ((rpc_of_string) (x.pCI_vendor_name))); opt_map (fun v -> ("device_name", v)) (Some ((rpc_of_string) (x.pCI_device_name))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pCI_host))); opt_map (fun v -> ("pci_id", v)) (Some ((rpc_of_string) (x.pCI_pci_id))); opt_map (fun v -> ("dependencies", v)) (Some ((rpc_of_ref_PCI_set) (x.pCI_dependencies))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pCI_other_config))); opt_map (fun v -> ("subsystem_vendor_name", v)) (Some ((rpc_of_string) (x.pCI_subsystem_vendor_name))); opt_map (fun v -> ("subsystem_device_name", v)) (Some ((rpc_of_string) (x.pCI_subsystem_device_name))); opt_map (fun v -> ("driver_name", v)) (Some ((rpc_of_string) (x.pCI_driver_name))) ])
let pCI_t_of_rpc x = on_dict (fun x -> { pCI_uuid = ((string_of_rpc (assocer "uuid" x None))); pCI_class_name = ((string_of_rpc (assocer "class_name" x (Some (Rpc.String ""))))); pCI_vendor_name = ((string_of_rpc (assocer "vendor_name" x (Some (Rpc.String ""))))); pCI_device_name = ((string_of_rpc (assocer "device_name" x (Some (Rpc.String ""))))); pCI_host = ((ref_host_of_rpc (assocer "host" x (Some (Rpc.String "OpaqueRef:NULL"))))); pCI_pci_id = ((string_of_rpc (assocer "pci_id" x (Some (Rpc.String ""))))); pCI_dependencies = ((ref_PCI_set_of_rpc (assocer "dependencies" x (Some (Rpc.Enum []))))); pCI_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); pCI_subsystem_vendor_name = ((string_of_rpc (assocer "subsystem_vendor_name" x (Some (Rpc.String ""))))); pCI_subsystem_device_name = ((string_of_rpc (assocer "subsystem_device_name" x (Some (Rpc.String ""))))); pCI_driver_name = ((string_of_rpc (assocer "driver_name" x (Some (Rpc.String ""))))) }) x
type ref_PCI_to_pCI_t_map = (ref_PCI * pCI_t) list [@@deriving rpc]
type pCI_t_set = pCI_t list [@@deriving rpc]
type pCI_t_option = pCI_t option [@@deriving rpc]

type network_sriov_t = { network_sriov_uuid : string; network_sriov_physical_PIF : ref_PIF; network_sriov_logical_PIF : ref_PIF; network_sriov_requires_reboot : bool; network_sriov_configuration_mode : sriov_configuration_mode }
let rpc_of_network_sriov_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.network_sriov_uuid))); opt_map (fun v -> ("physical_PIF", v)) (Some ((rpc_of_ref_PIF) (x.network_sriov_physical_PIF))); opt_map (fun v -> ("logical_PIF", v)) (Some ((rpc_of_ref_PIF) (x.network_sriov_logical_PIF))); opt_map (fun v -> ("requires_reboot", v)) (Some ((rpc_of_bool) (x.network_sriov_requires_reboot))); opt_map (fun v -> ("configuration_mode", v)) (Some ((rpc_of_sriov_configuration_mode) (x.network_sriov_configuration_mode))) ])
let network_sriov_t_of_rpc x = on_dict (fun x -> { network_sriov_uuid = ((string_of_rpc (assocer "uuid" x None))); network_sriov_physical_PIF = ((ref_PIF_of_rpc (assocer "physical_PIF" x (Some (Rpc.String ""))))); network_sriov_logical_PIF = ((ref_PIF_of_rpc (assocer "logical_PIF" x (Some (Rpc.String ""))))); network_sriov_requires_reboot = ((bool_of_rpc (assocer "requires_reboot" x (Some (Rpc.Bool false))))); network_sriov_configuration_mode = ((sriov_configuration_mode_of_rpc (assocer "configuration_mode" x (Some (Rpc.String "unknown"))))) }) x
type ref_network_sriov_to_network_sriov_t_map = (ref_network_sriov * network_sriov_t) list [@@deriving rpc]
type network_sriov_t_set = network_sriov_t list [@@deriving rpc]
type network_sriov_t_option = network_sriov_t option [@@deriving rpc]

type tunnel_t = { tunnel_uuid : string; tunnel_access_PIF : ref_PIF; tunnel_transport_PIF : ref_PIF; tunnel_status : string_to_string_map; tunnel_other_config : string_to_string_map; tunnel_protocol : tunnel_protocol }
let rpc_of_tunnel_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.tunnel_uuid))); opt_map (fun v -> ("access_PIF", v)) (Some ((rpc_of_ref_PIF) (x.tunnel_access_PIF))); opt_map (fun v -> ("transport_PIF", v)) (Some ((rpc_of_ref_PIF) (x.tunnel_transport_PIF))); opt_map (fun v -> ("status", v)) (Some ((rpc_of_string_to_string_map) (x.tunnel_status))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.tunnel_other_config))); opt_map (fun v -> ("protocol", v)) (Some ((rpc_of_tunnel_protocol) (x.tunnel_protocol))) ])
let tunnel_t_of_rpc x = on_dict (fun x -> { tunnel_uuid = ((string_of_rpc (assocer "uuid" x None))); tunnel_access_PIF = ((ref_PIF_of_rpc (assocer "access_PIF" x (Some (Rpc.String ""))))); tunnel_transport_PIF = ((ref_PIF_of_rpc (assocer "transport_PIF" x (Some (Rpc.String ""))))); tunnel_status = ((string_to_string_map_of_rpc (assocer "status" x (Some (Rpc.Dict [("active",Rpc.String "false")]))))); tunnel_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); tunnel_protocol = ((tunnel_protocol_of_rpc (assocer "protocol" x (Some (Rpc.String "gre"))))) }) x
type ref_tunnel_to_tunnel_t_map = (ref_tunnel * tunnel_t) list [@@deriving rpc]
type tunnel_t_set = tunnel_t list [@@deriving rpc]
type tunnel_t_option = tunnel_t option [@@deriving rpc]

type secret_t = { secret_uuid : string; secret_value : string; secret_other_config : string_to_string_map }
let rpc_of_secret_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.secret_uuid))); opt_map (fun v -> ("value", v)) (Some ((rpc_of_string) (x.secret_value))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.secret_other_config))) ])
let secret_t_of_rpc x = on_dict (fun x -> { secret_uuid = ((string_of_rpc (assocer "uuid" x None))); secret_value = ((string_of_rpc (assocer "value" x None))); secret_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_secret_to_secret_t_map = (ref_secret * secret_t) list [@@deriving rpc]
type secret_t_set = secret_t list [@@deriving rpc]
type secret_t_option = secret_t option [@@deriving rpc]

type blob_t = { blob_uuid : string; blob_name_label : string; blob_name_description : string; blob_size : int64; blob_public : bool; blob_last_updated : datetime; blob_mime_type : string }
let rpc_of_blob_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.blob_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.blob_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.blob_name_description))); opt_map (fun v -> ("size", v)) (Some ((rpc_of_int64) (x.blob_size))); opt_map (fun v -> ("public", v)) (Some ((rpc_of_bool) (x.blob_public))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.blob_last_updated))); opt_map (fun v -> ("mime_type", v)) (Some ((rpc_of_string) (x.blob_mime_type))) ])
let blob_t_of_rpc x = on_dict (fun x -> { blob_uuid = ((string_of_rpc (assocer "uuid" x None))); blob_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); blob_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); blob_size = ((int64_of_rpc (assocer "size" x None))); blob_public = ((bool_of_rpc (assocer "public" x (Some (Rpc.Bool false))))); blob_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); blob_mime_type = ((string_of_rpc (assocer "mime_type" x None))) }) x
type ref_blob_to_blob_t_map = (ref_blob * blob_t) list [@@deriving rpc]
type blob_t_set = blob_t list [@@deriving rpc]
type blob_t_option = blob_t option [@@deriving rpc]

type console_t = { console_uuid : string; console_protocol : console_protocol; console_location : string; console_VM : ref_VM; console_other_config : string_to_string_map }
let rpc_of_console_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.console_uuid))); opt_map (fun v -> ("protocol", v)) (Some ((rpc_of_console_protocol) (x.console_protocol))); opt_map (fun v -> ("location", v)) (Some ((rpc_of_string) (x.console_location))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.console_VM))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.console_other_config))) ])
let console_t_of_rpc x = on_dict (fun x -> { console_uuid = ((string_of_rpc (assocer "uuid" x None))); console_protocol = ((console_protocol_of_rpc (assocer "protocol" x None))); console_location = ((string_of_rpc (assocer "location" x None))); console_VM = ((ref_VM_of_rpc (assocer "VM" x None))); console_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))) }) x
type ref_console_to_console_t_map = (ref_console * console_t) list [@@deriving rpc]
type console_t_set = console_t list [@@deriving rpc]
type console_t_option = console_t option [@@deriving rpc]

type crashdump_t = { crashdump_uuid : string; crashdump_VM : ref_VM; crashdump_VDI : ref_VDI; crashdump_other_config : string_to_string_map }
let rpc_of_crashdump_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.crashdump_uuid))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.crashdump_VM))); opt_map (fun v -> ("VDI", v)) (Some ((rpc_of_ref_VDI) (x.crashdump_VDI))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.crashdump_other_config))) ])
let crashdump_t_of_rpc x = on_dict (fun x -> { crashdump_uuid = ((string_of_rpc (assocer "uuid" x None))); crashdump_VM = ((ref_VM_of_rpc (assocer "VM" x None))); crashdump_VDI = ((ref_VDI_of_rpc (assocer "VDI" x None))); crashdump_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_crashdump_to_crashdump_t_map = (ref_crashdump * crashdump_t) list [@@deriving rpc]
type crashdump_t_set = crashdump_t list [@@deriving rpc]
type crashdump_t_option = crashdump_t option [@@deriving rpc]

type pBD_t = { pBD_uuid : string; pBD_host : ref_host; pBD_SR : ref_SR; pBD_device_config : string_to_string_map; pBD_currently_attached : bool; pBD_other_config : string_to_string_map }
let rpc_of_pBD_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pBD_uuid))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pBD_host))); opt_map (fun v -> ("SR", v)) (Some ((rpc_of_ref_SR) (x.pBD_SR))); opt_map (fun v -> ("device_config", v)) (Some ((rpc_of_string_to_string_map) (x.pBD_device_config))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.pBD_currently_attached))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pBD_other_config))) ])
let pBD_t_of_rpc x = on_dict (fun x -> { pBD_uuid = ((string_of_rpc (assocer "uuid" x None))); pBD_host = ((ref_host_of_rpc (assocer "host" x None))); pBD_SR = ((ref_SR_of_rpc (assocer "SR" x None))); pBD_device_config = ((string_to_string_map_of_rpc (assocer "device_config" x None))); pBD_currently_attached = ((bool_of_rpc (assocer "currently_attached" x None))); pBD_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_PBD_to_pBD_t_map = (ref_PBD * pBD_t) list [@@deriving rpc]
type pBD_t_set = pBD_t list [@@deriving rpc]
type pBD_t_option = pBD_t option [@@deriving rpc]

type vBD_metrics_t = { vBD_metrics_uuid : string; vBD_metrics_io_read_kbs : float; vBD_metrics_io_write_kbs : float; vBD_metrics_last_updated : datetime; vBD_metrics_other_config : string_to_string_map }
let rpc_of_vBD_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vBD_metrics_uuid))); opt_map (fun v -> ("io_read_kbs", v)) (Some ((rpc_of_float) (x.vBD_metrics_io_read_kbs))); opt_map (fun v -> ("io_write_kbs", v)) (Some ((rpc_of_float) (x.vBD_metrics_io_write_kbs))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.vBD_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vBD_metrics_other_config))) ])
let vBD_metrics_t_of_rpc x = on_dict (fun x -> { vBD_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); vBD_metrics_io_read_kbs = ((float_of_rpc (assocer "io_read_kbs" x None))); vBD_metrics_io_write_kbs = ((float_of_rpc (assocer "io_write_kbs" x None))); vBD_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); vBD_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_VBD_metrics_to_vBD_metrics_t_map = (ref_VBD_metrics * vBD_metrics_t) list [@@deriving rpc]
type vBD_metrics_t_set = vBD_metrics_t list [@@deriving rpc]
type vBD_metrics_t_option = vBD_metrics_t option [@@deriving rpc]

type vBD_t = { vBD_uuid : string; vBD_allowed_operations : vbd_operations_set; vBD_current_operations : string_to_vbd_operations_map; vBD_VM : ref_VM; vBD_VDI : ref_VDI; vBD_device : string; vBD_userdevice : string; vBD_bootable : bool; vBD_mode : vbd_mode; vBD_type : vbd_type; vBD_unpluggable : bool; vBD_storage_lock : bool; vBD_empty : bool; vBD_other_config : string_to_string_map; vBD_currently_attached : bool; vBD_status_code : int64; vBD_status_detail : string; vBD_runtime_properties : string_to_string_map; vBD_qos_algorithm_type : string; vBD_qos_algorithm_params : string_to_string_map; vBD_qos_supported_algorithms : string_set; vBD_metrics : ref_VBD_metrics }
let rpc_of_vBD_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vBD_uuid))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vbd_operations_set) (x.vBD_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vbd_operations_map) (x.vBD_current_operations))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.vBD_VM))); opt_map (fun v -> ("VDI", v)) (Some ((rpc_of_ref_VDI) (x.vBD_VDI))); opt_map (fun v -> ("device", v)) (Some ((rpc_of_string) (x.vBD_device))); opt_map (fun v -> ("userdevice", v)) (Some ((rpc_of_string) (x.vBD_userdevice))); opt_map (fun v -> ("bootable", v)) (Some ((rpc_of_bool) (x.vBD_bootable))); opt_map (fun v -> ("mode", v)) (Some ((rpc_of_vbd_mode) (x.vBD_mode))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_vbd_type) (x.vBD_type))); opt_map (fun v -> ("unpluggable", v)) (Some ((rpc_of_bool) (x.vBD_unpluggable))); opt_map (fun v -> ("storage_lock", v)) (Some ((rpc_of_bool) (x.vBD_storage_lock))); opt_map (fun v -> ("empty", v)) (Some ((rpc_of_bool) (x.vBD_empty))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vBD_other_config))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.vBD_currently_attached))); opt_map (fun v -> ("status_code", v)) (Some ((rpc_of_int64) (x.vBD_status_code))); opt_map (fun v -> ("status_detail", v)) (Some ((rpc_of_string) (x.vBD_status_detail))); opt_map (fun v -> ("runtime_properties", v)) (Some ((rpc_of_string_to_string_map) (x.vBD_runtime_properties))); opt_map (fun v -> ("qos_algorithm_type", v)) (Some ((rpc_of_string) (x.vBD_qos_algorithm_type))); opt_map (fun v -> ("qos_algorithm_params", v)) (Some ((rpc_of_string_to_string_map) (x.vBD_qos_algorithm_params))); opt_map (fun v -> ("qos_supported_algorithms", v)) (Some ((rpc_of_string_set) (x.vBD_qos_supported_algorithms))); opt_map (fun v -> ("metrics", v)) (Some ((rpc_of_ref_VBD_metrics) (x.vBD_metrics))) ])
let vBD_t_of_rpc x = on_dict (fun x -> { vBD_uuid = ((string_of_rpc (assocer "uuid" x None))); vBD_allowed_operations = ((vbd_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vBD_current_operations = ((string_to_vbd_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vBD_VM = ((ref_VM_of_rpc (assocer "VM" x None))); vBD_VDI = ((ref_VDI_of_rpc (assocer "VDI" x None))); vBD_device = ((string_of_rpc (assocer "device" x (Some (Rpc.String ""))))); vBD_userdevice = ((string_of_rpc (assocer "userdevice" x None))); vBD_bootable = ((bool_of_rpc (assocer "bootable" x None))); vBD_mode = ((vbd_mode_of_rpc (assocer "mode" x None))); vBD_type = ((vbd_type_of_rpc (assocer "type" x None))); vBD_unpluggable = ((bool_of_rpc (assocer "unpluggable" x (Some (Rpc.Bool true))))); vBD_storage_lock = ((bool_of_rpc (assocer "storage_lock" x None))); vBD_empty = ((bool_of_rpc (assocer "empty" x None))); vBD_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); vBD_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool false))))); vBD_status_code = ((int64_of_rpc (assocer "status_code" x None))); vBD_status_detail = ((string_of_rpc (assocer "status_detail" x None))); vBD_runtime_properties = ((string_to_string_map_of_rpc (assocer "runtime_properties" x None))); vBD_qos_algorithm_type = ((string_of_rpc (assocer "qos_algorithm_type" x None))); vBD_qos_algorithm_params = ((string_to_string_map_of_rpc (assocer "qos_algorithm_params" x None))); vBD_qos_supported_algorithms = ((string_set_of_rpc (assocer "qos_supported_algorithms" x None))); vBD_metrics = ((ref_VBD_metrics_of_rpc (assocer "metrics" x None))) }) x
type ref_VBD_to_vBD_t_map = (ref_VBD * vBD_t) list [@@deriving rpc]
type vBD_t_set = vBD_t list [@@deriving rpc]
type vBD_t_option = vBD_t option [@@deriving rpc]

type vDI_t = { vDI_uuid : string; vDI_name_label : string; vDI_name_description : string; vDI_allowed_operations : vdi_operations_set; vDI_current_operations : string_to_vdi_operations_map; vDI_SR : ref_SR; vDI_VBDs : ref_VBD_set; vDI_crash_dumps : ref_crashdump_set; vDI_virtual_size : int64; vDI_physical_utilisation : int64; vDI_type : vdi_type; vDI_sharable : bool; vDI_read_only : bool; vDI_other_config : string_to_string_map; vDI_storage_lock : bool; vDI_location : string; vDI_managed : bool; vDI_missing : bool; vDI_parent : ref_VDI; vDI_xenstore_data : string_to_string_map; vDI_sm_config : string_to_string_map; vDI_is_a_snapshot : bool; vDI_snapshot_of : ref_VDI; vDI_snapshots : ref_VDI_set; vDI_snapshot_time : datetime; vDI_tags : string_set; vDI_allow_caching : bool; vDI_on_boot : on_boot; vDI_metadata_of_pool : ref_pool; vDI_metadata_latest : bool; vDI_is_tools_iso : bool; vDI_cbt_enabled : bool }
let rpc_of_vDI_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vDI_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.vDI_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.vDI_name_description))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vdi_operations_set) (x.vDI_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vdi_operations_map) (x.vDI_current_operations))); opt_map (fun v -> ("SR", v)) (Some ((rpc_of_ref_SR) (x.vDI_SR))); opt_map (fun v -> ("VBDs", v)) (Some ((rpc_of_ref_VBD_set) (x.vDI_VBDs))); opt_map (fun v -> ("crash_dumps", v)) (Some ((rpc_of_ref_crashdump_set) (x.vDI_crash_dumps))); opt_map (fun v -> ("virtual_size", v)) (Some ((rpc_of_int64) (x.vDI_virtual_size))); opt_map (fun v -> ("physical_utilisation", v)) (Some ((rpc_of_int64) (x.vDI_physical_utilisation))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_vdi_type) (x.vDI_type))); opt_map (fun v -> ("sharable", v)) (Some ((rpc_of_bool) (x.vDI_sharable))); opt_map (fun v -> ("read_only", v)) (Some ((rpc_of_bool) (x.vDI_read_only))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vDI_other_config))); opt_map (fun v -> ("storage_lock", v)) (Some ((rpc_of_bool) (x.vDI_storage_lock))); opt_map (fun v -> ("location", v)) (Some ((rpc_of_string) (x.vDI_location))); opt_map (fun v -> ("managed", v)) (Some ((rpc_of_bool) (x.vDI_managed))); opt_map (fun v -> ("missing", v)) (Some ((rpc_of_bool) (x.vDI_missing))); opt_map (fun v -> ("parent", v)) (Some ((rpc_of_ref_VDI) (x.vDI_parent))); opt_map (fun v -> ("xenstore_data", v)) (Some ((rpc_of_string_to_string_map) (x.vDI_xenstore_data))); opt_map (fun v -> ("sm_config", v)) (Some ((rpc_of_string_to_string_map) (x.vDI_sm_config))); opt_map (fun v -> ("is_a_snapshot", v)) (Some ((rpc_of_bool) (x.vDI_is_a_snapshot))); opt_map (fun v -> ("snapshot_of", v)) (Some ((rpc_of_ref_VDI) (x.vDI_snapshot_of))); opt_map (fun v -> ("snapshots", v)) (Some ((rpc_of_ref_VDI_set) (x.vDI_snapshots))); opt_map (fun v -> ("snapshot_time", v)) (Some ((rpc_of_datetime) (x.vDI_snapshot_time))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.vDI_tags))); opt_map (fun v -> ("allow_caching", v)) (Some ((rpc_of_bool) (x.vDI_allow_caching))); opt_map (fun v -> ("on_boot", v)) (Some ((rpc_of_on_boot) (x.vDI_on_boot))); opt_map (fun v -> ("metadata_of_pool", v)) (Some ((rpc_of_ref_pool) (x.vDI_metadata_of_pool))); opt_map (fun v -> ("metadata_latest", v)) (Some ((rpc_of_bool) (x.vDI_metadata_latest))); opt_map (fun v -> ("is_tools_iso", v)) (Some ((rpc_of_bool) (x.vDI_is_tools_iso))); opt_map (fun v -> ("cbt_enabled", v)) (Some ((rpc_of_bool) (x.vDI_cbt_enabled))) ])
let vDI_t_of_rpc x = on_dict (fun x -> { vDI_uuid = ((string_of_rpc (assocer "uuid" x None))); vDI_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); vDI_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); vDI_allowed_operations = ((vdi_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vDI_current_operations = ((string_to_vdi_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vDI_SR = ((ref_SR_of_rpc (assocer "SR" x None))); vDI_VBDs = ((ref_VBD_set_of_rpc (assocer "VBDs" x (Some (Rpc.Enum []))))); vDI_crash_dumps = ((ref_crashdump_set_of_rpc (assocer "crash_dumps" x (Some (Rpc.Enum []))))); vDI_virtual_size = ((int64_of_rpc (assocer "virtual_size" x None))); vDI_physical_utilisation = ((int64_of_rpc (assocer "physical_utilisation" x None))); vDI_type = ((vdi_type_of_rpc (assocer "type" x None))); vDI_sharable = ((bool_of_rpc (assocer "sharable" x None))); vDI_read_only = ((bool_of_rpc (assocer "read_only" x None))); vDI_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); vDI_storage_lock = ((bool_of_rpc (assocer "storage_lock" x None))); vDI_location = ((string_of_rpc (assocer "location" x (Some (Rpc.String ""))))); vDI_managed = ((bool_of_rpc (assocer "managed" x None))); vDI_missing = ((bool_of_rpc (assocer "missing" x None))); vDI_parent = ((ref_VDI_of_rpc (assocer "parent" x None))); vDI_xenstore_data = ((string_to_string_map_of_rpc (assocer "xenstore_data" x (Some (Rpc.Dict []))))); vDI_sm_config = ((string_to_string_map_of_rpc (assocer "sm_config" x (Some (Rpc.Dict []))))); vDI_is_a_snapshot = ((bool_of_rpc (assocer "is_a_snapshot" x (Some (Rpc.Bool false))))); vDI_snapshot_of = ((ref_VDI_of_rpc (assocer "snapshot_of" x (Some (Rpc.String ""))))); vDI_snapshots = ((ref_VDI_set_of_rpc (assocer "snapshots" x (Some (Rpc.Enum []))))); vDI_snapshot_time = ((datetime_of_rpc (assocer "snapshot_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); vDI_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); vDI_allow_caching = ((bool_of_rpc (assocer "allow_caching" x (Some (Rpc.Bool false))))); vDI_on_boot = ((on_boot_of_rpc (assocer "on_boot" x (Some (Rpc.String "persist"))))); vDI_metadata_of_pool = ((ref_pool_of_rpc (assocer "metadata_of_pool" x (Some (Rpc.String "OpaqueRef:NULL"))))); vDI_metadata_latest = ((bool_of_rpc (assocer "metadata_latest" x (Some (Rpc.Bool false))))); vDI_is_tools_iso = ((bool_of_rpc (assocer "is_tools_iso" x (Some (Rpc.Bool false))))); vDI_cbt_enabled = ((bool_of_rpc (assocer "cbt_enabled" x (Some (Rpc.Bool false))))) }) x
type ref_VDI_to_vDI_t_map = (ref_VDI * vDI_t) list [@@deriving rpc]
type vDI_t_set = vDI_t list [@@deriving rpc]
type vDI_t_option = vDI_t option [@@deriving rpc]

type sR_t = { sR_uuid : string; sR_name_label : string; sR_name_description : string; sR_allowed_operations : storage_operations_set; sR_current_operations : string_to_storage_operations_map; sR_VDIs : ref_VDI_set; sR_PBDs : ref_PBD_set; sR_virtual_allocation : int64; sR_physical_utilisation : int64; sR_physical_size : int64; sR_type : string; sR_content_type : string; sR_shared : bool; sR_other_config : string_to_string_map; sR_tags : string_set; sR_sm_config : string_to_string_map; sR_blobs : string_to_ref_blob_map; sR_local_cache_enabled : bool; sR_introduced_by : ref_DR_task; sR_clustered : bool; sR_is_tools_sr : bool }
let rpc_of_sR_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.sR_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.sR_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.sR_name_description))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_storage_operations_set) (x.sR_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_storage_operations_map) (x.sR_current_operations))); opt_map (fun v -> ("VDIs", v)) (Some ((rpc_of_ref_VDI_set) (x.sR_VDIs))); opt_map (fun v -> ("PBDs", v)) (Some ((rpc_of_ref_PBD_set) (x.sR_PBDs))); opt_map (fun v -> ("virtual_allocation", v)) (Some ((rpc_of_int64) (x.sR_virtual_allocation))); opt_map (fun v -> ("physical_utilisation", v)) (Some ((rpc_of_int64) (x.sR_physical_utilisation))); opt_map (fun v -> ("physical_size", v)) (Some ((rpc_of_int64) (x.sR_physical_size))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_string) (x.sR_type))); opt_map (fun v -> ("content_type", v)) (Some ((rpc_of_string) (x.sR_content_type))); opt_map (fun v -> ("shared", v)) (Some ((rpc_of_bool) (x.sR_shared))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.sR_other_config))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.sR_tags))); opt_map (fun v -> ("sm_config", v)) (Some ((rpc_of_string_to_string_map) (x.sR_sm_config))); opt_map (fun v -> ("blobs", v)) (Some ((rpc_of_string_to_ref_blob_map) (x.sR_blobs))); opt_map (fun v -> ("local_cache_enabled", v)) (Some ((rpc_of_bool) (x.sR_local_cache_enabled))); opt_map (fun v -> ("introduced_by", v)) (Some ((rpc_of_ref_DR_task) (x.sR_introduced_by))); opt_map (fun v -> ("clustered", v)) (Some ((rpc_of_bool) (x.sR_clustered))); opt_map (fun v -> ("is_tools_sr", v)) (Some ((rpc_of_bool) (x.sR_is_tools_sr))) ])
let sR_t_of_rpc x = on_dict (fun x -> { sR_uuid = ((string_of_rpc (assocer "uuid" x None))); sR_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); sR_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); sR_allowed_operations = ((storage_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); sR_current_operations = ((string_to_storage_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); sR_VDIs = ((ref_VDI_set_of_rpc (assocer "VDIs" x (Some (Rpc.Enum []))))); sR_PBDs = ((ref_PBD_set_of_rpc (assocer "PBDs" x (Some (Rpc.Enum []))))); sR_virtual_allocation = ((int64_of_rpc (assocer "virtual_allocation" x None))); sR_physical_utilisation = ((int64_of_rpc (assocer "physical_utilisation" x None))); sR_physical_size = ((int64_of_rpc (assocer "physical_size" x None))); sR_type = ((string_of_rpc (assocer "type" x None))); sR_content_type = ((string_of_rpc (assocer "content_type" x None))); sR_shared = ((bool_of_rpc (assocer "shared" x None))); sR_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); sR_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); sR_sm_config = ((string_to_string_map_of_rpc (assocer "sm_config" x (Some (Rpc.Dict []))))); sR_blobs = ((string_to_ref_blob_map_of_rpc (assocer "blobs" x (Some (Rpc.Dict []))))); sR_local_cache_enabled = ((bool_of_rpc (assocer "local_cache_enabled" x (Some (Rpc.Bool false))))); sR_introduced_by = ((ref_DR_task_of_rpc (assocer "introduced_by" x (Some (Rpc.String "OpaqueRef:NULL"))))); sR_clustered = ((bool_of_rpc (assocer "clustered" x (Some (Rpc.Bool false))))); sR_is_tools_sr = ((bool_of_rpc (assocer "is_tools_sr" x (Some (Rpc.Bool false))))) }) x
type ref_SR_to_sR_t_map = (ref_SR * sR_t) list [@@deriving rpc]
type sR_t_set = sR_t list [@@deriving rpc]
type sR_t_option = sR_t option [@@deriving rpc]

type sM_t = { sM_uuid : string; sM_name_label : string; sM_name_description : string; sM_type : string; sM_vendor : string; sM_copyright : string; sM_version : string; sM_required_api_version : string; sM_configuration : string_to_string_map; sM_capabilities : string_set; sM_features : string_to_int64_map; sM_other_config : string_to_string_map; sM_driver_filename : string; sM_required_cluster_stack : string_set }
let rpc_of_sM_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.sM_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.sM_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.sM_name_description))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_string) (x.sM_type))); opt_map (fun v -> ("vendor", v)) (Some ((rpc_of_string) (x.sM_vendor))); opt_map (fun v -> ("copyright", v)) (Some ((rpc_of_string) (x.sM_copyright))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.sM_version))); opt_map (fun v -> ("required_api_version", v)) (Some ((rpc_of_string) (x.sM_required_api_version))); opt_map (fun v -> ("configuration", v)) (Some ((rpc_of_string_to_string_map) (x.sM_configuration))); opt_map (fun v -> ("capabilities", v)) (Some ((rpc_of_string_set) (x.sM_capabilities))); opt_map (fun v -> ("features", v)) (Some ((rpc_of_string_to_int64_map) (x.sM_features))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.sM_other_config))); opt_map (fun v -> ("driver_filename", v)) (Some ((rpc_of_string) (x.sM_driver_filename))); opt_map (fun v -> ("required_cluster_stack", v)) (Some ((rpc_of_string_set) (x.sM_required_cluster_stack))) ])
let sM_t_of_rpc x = on_dict (fun x -> { sM_uuid = ((string_of_rpc (assocer "uuid" x None))); sM_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); sM_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); sM_type = ((string_of_rpc (assocer "type" x None))); sM_vendor = ((string_of_rpc (assocer "vendor" x None))); sM_copyright = ((string_of_rpc (assocer "copyright" x None))); sM_version = ((string_of_rpc (assocer "version" x None))); sM_required_api_version = ((string_of_rpc (assocer "required_api_version" x None))); sM_configuration = ((string_to_string_map_of_rpc (assocer "configuration" x None))); sM_capabilities = ((string_set_of_rpc (assocer "capabilities" x (Some (Rpc.Enum []))))); sM_features = ((string_to_int64_map_of_rpc (assocer "features" x (Some (Rpc.Dict []))))); sM_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); sM_driver_filename = ((string_of_rpc (assocer "driver_filename" x (Some (Rpc.String ""))))); sM_required_cluster_stack = ((string_set_of_rpc (assocer "required_cluster_stack" x (Some (Rpc.Enum []))))) }) x
type ref_SM_to_sM_t_map = (ref_SM * sM_t) list [@@deriving rpc]
type sM_t_set = sM_t list [@@deriving rpc]
type sM_t_option = sM_t option [@@deriving rpc]

type vLAN_t = { vLAN_uuid : string; vLAN_tagged_PIF : ref_PIF; vLAN_untagged_PIF : ref_PIF; vLAN_tag : int64; vLAN_other_config : string_to_string_map }
let rpc_of_vLAN_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vLAN_uuid))); opt_map (fun v -> ("tagged_PIF", v)) (Some ((rpc_of_ref_PIF) (x.vLAN_tagged_PIF))); opt_map (fun v -> ("untagged_PIF", v)) (Some ((rpc_of_ref_PIF) (x.vLAN_untagged_PIF))); opt_map (fun v -> ("tag", v)) (Some ((rpc_of_int64) (x.vLAN_tag))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vLAN_other_config))) ])
let vLAN_t_of_rpc x = on_dict (fun x -> { vLAN_uuid = ((string_of_rpc (assocer "uuid" x None))); vLAN_tagged_PIF = ((ref_PIF_of_rpc (assocer "tagged_PIF" x (Some (Rpc.String ""))))); vLAN_untagged_PIF = ((ref_PIF_of_rpc (assocer "untagged_PIF" x (Some (Rpc.String ""))))); vLAN_tag = ((int64_of_rpc (assocer "tag" x (Some (Rpc.Int (-1L)))))); vLAN_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_VLAN_to_vLAN_t_map = (ref_VLAN * vLAN_t) list [@@deriving rpc]
type vLAN_t_set = vLAN_t list [@@deriving rpc]
type vLAN_t_option = vLAN_t option [@@deriving rpc]

type bond_t = { bond_uuid : string; bond_master : ref_PIF; bond_slaves : ref_PIF_set; bond_other_config : string_to_string_map; bond_primary_slave : ref_PIF; bond_mode : bond_mode; bond_properties : string_to_string_map; bond_links_up : int64; bond_auto_update_mac : bool }
let rpc_of_bond_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.bond_uuid))); opt_map (fun v -> ("master", v)) (Some ((rpc_of_ref_PIF) (x.bond_master))); opt_map (fun v -> ("slaves", v)) (Some ((rpc_of_ref_PIF_set) (x.bond_slaves))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.bond_other_config))); opt_map (fun v -> ("primary_slave", v)) (Some ((rpc_of_ref_PIF) (x.bond_primary_slave))); opt_map (fun v -> ("mode", v)) (Some ((rpc_of_bond_mode) (x.bond_mode))); opt_map (fun v -> ("properties", v)) (Some ((rpc_of_string_to_string_map) (x.bond_properties))); opt_map (fun v -> ("links_up", v)) (Some ((rpc_of_int64) (x.bond_links_up))); opt_map (fun v -> ("auto_update_mac", v)) (Some ((rpc_of_bool) (x.bond_auto_update_mac))) ])
let bond_t_of_rpc x = on_dict (fun x -> { bond_uuid = ((string_of_rpc (assocer "uuid" x None))); bond_master = ((ref_PIF_of_rpc (assocer "master" x (Some (Rpc.String ""))))); bond_slaves = ((ref_PIF_set_of_rpc (assocer "slaves" x (Some (Rpc.Enum []))))); bond_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); bond_primary_slave = ((ref_PIF_of_rpc (assocer "primary_slave" x (Some (Rpc.String "OpaqueRef:NULL"))))); bond_mode = ((bond_mode_of_rpc (assocer "mode" x (Some (Rpc.String "balance-slb"))))); bond_properties = ((string_to_string_map_of_rpc (assocer "properties" x (Some (Rpc.Dict []))))); bond_links_up = ((int64_of_rpc (assocer "links_up" x (Some (Rpc.Int (0L)))))); bond_auto_update_mac = ((bool_of_rpc (assocer "auto_update_mac" x (Some (Rpc.Bool true))))) }) x
type ref_Bond_to_bond_t_map = (ref_Bond * bond_t) list [@@deriving rpc]
type bond_t_set = bond_t list [@@deriving rpc]
type bond_t_option = bond_t option [@@deriving rpc]

type pIF_metrics_t = { pIF_metrics_uuid : string; pIF_metrics_io_read_kbs : float; pIF_metrics_io_write_kbs : float; pIF_metrics_carrier : bool; pIF_metrics_vendor_id : string; pIF_metrics_vendor_name : string; pIF_metrics_device_id : string; pIF_metrics_device_name : string; pIF_metrics_speed : int64; pIF_metrics_duplex : bool; pIF_metrics_pci_bus_path : string; pIF_metrics_last_updated : datetime; pIF_metrics_other_config : string_to_string_map }
let rpc_of_pIF_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pIF_metrics_uuid))); opt_map (fun v -> ("io_read_kbs", v)) (Some ((rpc_of_float) (x.pIF_metrics_io_read_kbs))); opt_map (fun v -> ("io_write_kbs", v)) (Some ((rpc_of_float) (x.pIF_metrics_io_write_kbs))); opt_map (fun v -> ("carrier", v)) (Some ((rpc_of_bool) (x.pIF_metrics_carrier))); opt_map (fun v -> ("vendor_id", v)) (Some ((rpc_of_string) (x.pIF_metrics_vendor_id))); opt_map (fun v -> ("vendor_name", v)) (Some ((rpc_of_string) (x.pIF_metrics_vendor_name))); opt_map (fun v -> ("device_id", v)) (Some ((rpc_of_string) (x.pIF_metrics_device_id))); opt_map (fun v -> ("device_name", v)) (Some ((rpc_of_string) (x.pIF_metrics_device_name))); opt_map (fun v -> ("speed", v)) (Some ((rpc_of_int64) (x.pIF_metrics_speed))); opt_map (fun v -> ("duplex", v)) (Some ((rpc_of_bool) (x.pIF_metrics_duplex))); opt_map (fun v -> ("pci_bus_path", v)) (Some ((rpc_of_string) (x.pIF_metrics_pci_bus_path))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.pIF_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pIF_metrics_other_config))) ])
let pIF_metrics_t_of_rpc x = on_dict (fun x -> { pIF_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); pIF_metrics_io_read_kbs = ((float_of_rpc (assocer "io_read_kbs" x None))); pIF_metrics_io_write_kbs = ((float_of_rpc (assocer "io_write_kbs" x None))); pIF_metrics_carrier = ((bool_of_rpc (assocer "carrier" x None))); pIF_metrics_vendor_id = ((string_of_rpc (assocer "vendor_id" x None))); pIF_metrics_vendor_name = ((string_of_rpc (assocer "vendor_name" x None))); pIF_metrics_device_id = ((string_of_rpc (assocer "device_id" x None))); pIF_metrics_device_name = ((string_of_rpc (assocer "device_name" x None))); pIF_metrics_speed = ((int64_of_rpc (assocer "speed" x None))); pIF_metrics_duplex = ((bool_of_rpc (assocer "duplex" x None))); pIF_metrics_pci_bus_path = ((string_of_rpc (assocer "pci_bus_path" x None))); pIF_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); pIF_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_PIF_metrics_to_pIF_metrics_t_map = (ref_PIF_metrics * pIF_metrics_t) list [@@deriving rpc]
type pIF_metrics_t_set = pIF_metrics_t list [@@deriving rpc]
type pIF_metrics_t_option = pIF_metrics_t option [@@deriving rpc]

type pIF_t = { pIF_uuid : string; pIF_device : string; pIF_network : ref_network; pIF_host : ref_host; pIF_MAC : string; pIF_MTU : int64; pIF_VLAN : int64; pIF_metrics : ref_PIF_metrics; pIF_physical : bool; pIF_currently_attached : bool; pIF_ip_configuration_mode : ip_configuration_mode; pIF_IP : string; pIF_netmask : string; pIF_gateway : string; pIF_DNS : string; pIF_bond_slave_of : ref_Bond; pIF_bond_master_of : ref_Bond_set; pIF_VLAN_master_of : ref_VLAN; pIF_VLAN_slave_of : ref_VLAN_set; pIF_management : bool; pIF_other_config : string_to_string_map; pIF_disallow_unplug : bool; pIF_tunnel_access_PIF_of : ref_tunnel_set; pIF_tunnel_transport_PIF_of : ref_tunnel_set; pIF_ipv6_configuration_mode : ipv6_configuration_mode; pIF_IPv6 : string_set; pIF_ipv6_gateway : string; pIF_primary_address_type : primary_address_type; pIF_managed : bool; pIF_properties : string_to_string_map; pIF_capabilities : string_set; pIF_igmp_snooping_status : pif_igmp_status; pIF_sriov_physical_PIF_of : ref_network_sriov_set; pIF_sriov_logical_PIF_of : ref_network_sriov_set; pIF_PCI : ref_PCI }
let rpc_of_pIF_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pIF_uuid))); opt_map (fun v -> ("device", v)) (Some ((rpc_of_string) (x.pIF_device))); opt_map (fun v -> ("network", v)) (Some ((rpc_of_ref_network) (x.pIF_network))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.pIF_host))); opt_map (fun v -> ("MAC", v)) (Some ((rpc_of_string) (x.pIF_MAC))); opt_map (fun v -> ("MTU", v)) (Some ((rpc_of_int64) (x.pIF_MTU))); opt_map (fun v -> ("VLAN", v)) (Some ((rpc_of_int64) (x.pIF_VLAN))); opt_map (fun v -> ("metrics", v)) (Some ((rpc_of_ref_PIF_metrics) (x.pIF_metrics))); opt_map (fun v -> ("physical", v)) (Some ((rpc_of_bool) (x.pIF_physical))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.pIF_currently_attached))); opt_map (fun v -> ("ip_configuration_mode", v)) (Some ((rpc_of_ip_configuration_mode) (x.pIF_ip_configuration_mode))); opt_map (fun v -> ("IP", v)) (Some ((rpc_of_string) (x.pIF_IP))); opt_map (fun v -> ("netmask", v)) (Some ((rpc_of_string) (x.pIF_netmask))); opt_map (fun v -> ("gateway", v)) (Some ((rpc_of_string) (x.pIF_gateway))); opt_map (fun v -> ("DNS", v)) (Some ((rpc_of_string) (x.pIF_DNS))); opt_map (fun v -> ("bond_slave_of", v)) (Some ((rpc_of_ref_Bond) (x.pIF_bond_slave_of))); opt_map (fun v -> ("bond_master_of", v)) (Some ((rpc_of_ref_Bond_set) (x.pIF_bond_master_of))); opt_map (fun v -> ("VLAN_master_of", v)) (Some ((rpc_of_ref_VLAN) (x.pIF_VLAN_master_of))); opt_map (fun v -> ("VLAN_slave_of", v)) (Some ((rpc_of_ref_VLAN_set) (x.pIF_VLAN_slave_of))); opt_map (fun v -> ("management", v)) (Some ((rpc_of_bool) (x.pIF_management))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pIF_other_config))); opt_map (fun v -> ("disallow_unplug", v)) (Some ((rpc_of_bool) (x.pIF_disallow_unplug))); opt_map (fun v -> ("tunnel_access_PIF_of", v)) (Some ((rpc_of_ref_tunnel_set) (x.pIF_tunnel_access_PIF_of))); opt_map (fun v -> ("tunnel_transport_PIF_of", v)) (Some ((rpc_of_ref_tunnel_set) (x.pIF_tunnel_transport_PIF_of))); opt_map (fun v -> ("ipv6_configuration_mode", v)) (Some ((rpc_of_ipv6_configuration_mode) (x.pIF_ipv6_configuration_mode))); opt_map (fun v -> ("IPv6", v)) (Some ((rpc_of_string_set) (x.pIF_IPv6))); opt_map (fun v -> ("ipv6_gateway", v)) (Some ((rpc_of_string) (x.pIF_ipv6_gateway))); opt_map (fun v -> ("primary_address_type", v)) (Some ((rpc_of_primary_address_type) (x.pIF_primary_address_type))); opt_map (fun v -> ("managed", v)) (Some ((rpc_of_bool) (x.pIF_managed))); opt_map (fun v -> ("properties", v)) (Some ((rpc_of_string_to_string_map) (x.pIF_properties))); opt_map (fun v -> ("capabilities", v)) (Some ((rpc_of_string_set) (x.pIF_capabilities))); opt_map (fun v -> ("igmp_snooping_status", v)) (Some ((rpc_of_pif_igmp_status) (x.pIF_igmp_snooping_status))); opt_map (fun v -> ("sriov_physical_PIF_of", v)) (Some ((rpc_of_ref_network_sriov_set) (x.pIF_sriov_physical_PIF_of))); opt_map (fun v -> ("sriov_logical_PIF_of", v)) (Some ((rpc_of_ref_network_sriov_set) (x.pIF_sriov_logical_PIF_of))); opt_map (fun v -> ("PCI", v)) (Some ((rpc_of_ref_PCI) (x.pIF_PCI))) ])
let pIF_t_of_rpc x = on_dict (fun x -> { pIF_uuid = ((string_of_rpc (assocer "uuid" x None))); pIF_device = ((string_of_rpc (assocer "device" x None))); pIF_network = ((ref_network_of_rpc (assocer "network" x None))); pIF_host = ((ref_host_of_rpc (assocer "host" x None))); pIF_MAC = ((string_of_rpc (assocer "MAC" x None))); pIF_MTU = ((int64_of_rpc (assocer "MTU" x None))); pIF_VLAN = ((int64_of_rpc (assocer "VLAN" x None))); pIF_metrics = ((ref_PIF_metrics_of_rpc (assocer "metrics" x None))); pIF_physical = ((bool_of_rpc (assocer "physical" x (Some (Rpc.Bool false))))); pIF_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool true))))); pIF_ip_configuration_mode = ((ip_configuration_mode_of_rpc (assocer "ip_configuration_mode" x (Some (Rpc.String "None"))))); pIF_IP = ((string_of_rpc (assocer "IP" x (Some (Rpc.String ""))))); pIF_netmask = ((string_of_rpc (assocer "netmask" x (Some (Rpc.String ""))))); pIF_gateway = ((string_of_rpc (assocer "gateway" x (Some (Rpc.String ""))))); pIF_DNS = ((string_of_rpc (assocer "DNS" x (Some (Rpc.String ""))))); pIF_bond_slave_of = ((ref_Bond_of_rpc (assocer "bond_slave_of" x (Some (Rpc.String ""))))); pIF_bond_master_of = ((ref_Bond_set_of_rpc (assocer "bond_master_of" x (Some (Rpc.Enum []))))); pIF_VLAN_master_of = ((ref_VLAN_of_rpc (assocer "VLAN_master_of" x (Some (Rpc.String ""))))); pIF_VLAN_slave_of = ((ref_VLAN_set_of_rpc (assocer "VLAN_slave_of" x (Some (Rpc.Enum []))))); pIF_management = ((bool_of_rpc (assocer "management" x (Some (Rpc.Bool false))))); pIF_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); pIF_disallow_unplug = ((bool_of_rpc (assocer "disallow_unplug" x (Some (Rpc.Bool false))))); pIF_tunnel_access_PIF_of = ((ref_tunnel_set_of_rpc (assocer "tunnel_access_PIF_of" x (Some (Rpc.Enum []))))); pIF_tunnel_transport_PIF_of = ((ref_tunnel_set_of_rpc (assocer "tunnel_transport_PIF_of" x (Some (Rpc.Enum []))))); pIF_ipv6_configuration_mode = ((ipv6_configuration_mode_of_rpc (assocer "ipv6_configuration_mode" x (Some (Rpc.String "None"))))); pIF_IPv6 = ((string_set_of_rpc (assocer "IPv6" x (Some (Rpc.Enum []))))); pIF_ipv6_gateway = ((string_of_rpc (assocer "ipv6_gateway" x (Some (Rpc.String ""))))); pIF_primary_address_type = ((primary_address_type_of_rpc (assocer "primary_address_type" x (Some (Rpc.String "IPv4"))))); pIF_managed = ((bool_of_rpc (assocer "managed" x (Some (Rpc.Bool true))))); pIF_properties = ((string_to_string_map_of_rpc (assocer "properties" x (Some (Rpc.Dict []))))); pIF_capabilities = ((string_set_of_rpc (assocer "capabilities" x (Some (Rpc.Enum []))))); pIF_igmp_snooping_status = ((pif_igmp_status_of_rpc (assocer "igmp_snooping_status" x (Some (Rpc.String "unknown"))))); pIF_sriov_physical_PIF_of = ((ref_network_sriov_set_of_rpc (assocer "sriov_physical_PIF_of" x (Some (Rpc.Enum []))))); pIF_sriov_logical_PIF_of = ((ref_network_sriov_set_of_rpc (assocer "sriov_logical_PIF_of" x (Some (Rpc.Enum []))))); pIF_PCI = ((ref_PCI_of_rpc (assocer "PCI" x (Some (Rpc.String "OpaqueRef:NULL"))))) }) x
type ref_PIF_to_pIF_t_map = (ref_PIF * pIF_t) list [@@deriving rpc]
type pIF_t_set = pIF_t list [@@deriving rpc]
type pIF_t_option = pIF_t option [@@deriving rpc]

type vIF_metrics_t = { vIF_metrics_uuid : string; vIF_metrics_io_read_kbs : float; vIF_metrics_io_write_kbs : float; vIF_metrics_last_updated : datetime; vIF_metrics_other_config : string_to_string_map }
let rpc_of_vIF_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vIF_metrics_uuid))); opt_map (fun v -> ("io_read_kbs", v)) (Some ((rpc_of_float) (x.vIF_metrics_io_read_kbs))); opt_map (fun v -> ("io_write_kbs", v)) (Some ((rpc_of_float) (x.vIF_metrics_io_write_kbs))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.vIF_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vIF_metrics_other_config))) ])
let vIF_metrics_t_of_rpc x = on_dict (fun x -> { vIF_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); vIF_metrics_io_read_kbs = ((float_of_rpc (assocer "io_read_kbs" x None))); vIF_metrics_io_write_kbs = ((float_of_rpc (assocer "io_write_kbs" x None))); vIF_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); vIF_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_VIF_metrics_to_vIF_metrics_t_map = (ref_VIF_metrics * vIF_metrics_t) list [@@deriving rpc]
type vIF_metrics_t_set = vIF_metrics_t list [@@deriving rpc]
type vIF_metrics_t_option = vIF_metrics_t option [@@deriving rpc]

type vIF_t = { vIF_uuid : string; vIF_allowed_operations : vif_operations_set; vIF_current_operations : string_to_vif_operations_map; vIF_device : string; vIF_network : ref_network; vIF_VM : ref_VM; vIF_MAC : string; vIF_MTU : int64; vIF_other_config : string_to_string_map; vIF_currently_attached : bool; vIF_status_code : int64; vIF_status_detail : string; vIF_runtime_properties : string_to_string_map; vIF_qos_algorithm_type : string; vIF_qos_algorithm_params : string_to_string_map; vIF_qos_supported_algorithms : string_set; vIF_metrics : ref_VIF_metrics; vIF_MAC_autogenerated : bool; vIF_locking_mode : vif_locking_mode; vIF_ipv4_allowed : string_set; vIF_ipv6_allowed : string_set; vIF_ipv4_configuration_mode : vif_ipv4_configuration_mode; vIF_ipv4_addresses : string_set; vIF_ipv4_gateway : string; vIF_ipv6_configuration_mode : vif_ipv6_configuration_mode; vIF_ipv6_addresses : string_set; vIF_ipv6_gateway : string }
let rpc_of_vIF_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vIF_uuid))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vif_operations_set) (x.vIF_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vif_operations_map) (x.vIF_current_operations))); opt_map (fun v -> ("device", v)) (Some ((rpc_of_string) (x.vIF_device))); opt_map (fun v -> ("network", v)) (Some ((rpc_of_ref_network) (x.vIF_network))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.vIF_VM))); opt_map (fun v -> ("MAC", v)) (Some ((rpc_of_string) (x.vIF_MAC))); opt_map (fun v -> ("MTU", v)) (Some ((rpc_of_int64) (x.vIF_MTU))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vIF_other_config))); opt_map (fun v -> ("currently_attached", v)) (Some ((rpc_of_bool) (x.vIF_currently_attached))); opt_map (fun v -> ("status_code", v)) (Some ((rpc_of_int64) (x.vIF_status_code))); opt_map (fun v -> ("status_detail", v)) (Some ((rpc_of_string) (x.vIF_status_detail))); opt_map (fun v -> ("runtime_properties", v)) (Some ((rpc_of_string_to_string_map) (x.vIF_runtime_properties))); opt_map (fun v -> ("qos_algorithm_type", v)) (Some ((rpc_of_string) (x.vIF_qos_algorithm_type))); opt_map (fun v -> ("qos_algorithm_params", v)) (Some ((rpc_of_string_to_string_map) (x.vIF_qos_algorithm_params))); opt_map (fun v -> ("qos_supported_algorithms", v)) (Some ((rpc_of_string_set) (x.vIF_qos_supported_algorithms))); opt_map (fun v -> ("metrics", v)) (Some ((rpc_of_ref_VIF_metrics) (x.vIF_metrics))); opt_map (fun v -> ("MAC_autogenerated", v)) (Some ((rpc_of_bool) (x.vIF_MAC_autogenerated))); opt_map (fun v -> ("locking_mode", v)) (Some ((rpc_of_vif_locking_mode) (x.vIF_locking_mode))); opt_map (fun v -> ("ipv4_allowed", v)) (Some ((rpc_of_string_set) (x.vIF_ipv4_allowed))); opt_map (fun v -> ("ipv6_allowed", v)) (Some ((rpc_of_string_set) (x.vIF_ipv6_allowed))); opt_map (fun v -> ("ipv4_configuration_mode", v)) (Some ((rpc_of_vif_ipv4_configuration_mode) (x.vIF_ipv4_configuration_mode))); opt_map (fun v -> ("ipv4_addresses", v)) (Some ((rpc_of_string_set) (x.vIF_ipv4_addresses))); opt_map (fun v -> ("ipv4_gateway", v)) (Some ((rpc_of_string) (x.vIF_ipv4_gateway))); opt_map (fun v -> ("ipv6_configuration_mode", v)) (Some ((rpc_of_vif_ipv6_configuration_mode) (x.vIF_ipv6_configuration_mode))); opt_map (fun v -> ("ipv6_addresses", v)) (Some ((rpc_of_string_set) (x.vIF_ipv6_addresses))); opt_map (fun v -> ("ipv6_gateway", v)) (Some ((rpc_of_string) (x.vIF_ipv6_gateway))) ])
let vIF_t_of_rpc x = on_dict (fun x -> { vIF_uuid = ((string_of_rpc (assocer "uuid" x None))); vIF_allowed_operations = ((vif_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vIF_current_operations = ((string_to_vif_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vIF_device = ((string_of_rpc (assocer "device" x None))); vIF_network = ((ref_network_of_rpc (assocer "network" x None))); vIF_VM = ((ref_VM_of_rpc (assocer "VM" x None))); vIF_MAC = ((string_of_rpc (assocer "MAC" x None))); vIF_MTU = ((int64_of_rpc (assocer "MTU" x None))); vIF_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); vIF_currently_attached = ((bool_of_rpc (assocer "currently_attached" x (Some (Rpc.Bool false))))); vIF_status_code = ((int64_of_rpc (assocer "status_code" x None))); vIF_status_detail = ((string_of_rpc (assocer "status_detail" x None))); vIF_runtime_properties = ((string_to_string_map_of_rpc (assocer "runtime_properties" x None))); vIF_qos_algorithm_type = ((string_of_rpc (assocer "qos_algorithm_type" x None))); vIF_qos_algorithm_params = ((string_to_string_map_of_rpc (assocer "qos_algorithm_params" x None))); vIF_qos_supported_algorithms = ((string_set_of_rpc (assocer "qos_supported_algorithms" x None))); vIF_metrics = ((ref_VIF_metrics_of_rpc (assocer "metrics" x None))); vIF_MAC_autogenerated = ((bool_of_rpc (assocer "MAC_autogenerated" x (Some (Rpc.Bool false))))); vIF_locking_mode = ((vif_locking_mode_of_rpc (assocer "locking_mode" x (Some (Rpc.String "network_default"))))); vIF_ipv4_allowed = ((string_set_of_rpc (assocer "ipv4_allowed" x (Some (Rpc.Enum []))))); vIF_ipv6_allowed = ((string_set_of_rpc (assocer "ipv6_allowed" x (Some (Rpc.Enum []))))); vIF_ipv4_configuration_mode = ((vif_ipv4_configuration_mode_of_rpc (assocer "ipv4_configuration_mode" x (Some (Rpc.String "None"))))); vIF_ipv4_addresses = ((string_set_of_rpc (assocer "ipv4_addresses" x (Some (Rpc.Enum []))))); vIF_ipv4_gateway = ((string_of_rpc (assocer "ipv4_gateway" x (Some (Rpc.String ""))))); vIF_ipv6_configuration_mode = ((vif_ipv6_configuration_mode_of_rpc (assocer "ipv6_configuration_mode" x (Some (Rpc.String "None"))))); vIF_ipv6_addresses = ((string_set_of_rpc (assocer "ipv6_addresses" x (Some (Rpc.Enum []))))); vIF_ipv6_gateway = ((string_of_rpc (assocer "ipv6_gateway" x (Some (Rpc.String ""))))) }) x
type ref_VIF_to_vIF_t_map = (ref_VIF * vIF_t) list [@@deriving rpc]
type vIF_t_set = vIF_t list [@@deriving rpc]
type vIF_t_option = vIF_t option [@@deriving rpc]

type network_t = { network_uuid : string; network_name_label : string; network_name_description : string; network_allowed_operations : network_operations_set; network_current_operations : string_to_network_operations_map; network_VIFs : ref_VIF_set; network_PIFs : ref_PIF_set; network_MTU : int64; network_other_config : string_to_string_map; network_bridge : string; network_managed : bool; network_blobs : string_to_ref_blob_map; network_tags : string_set; network_default_locking_mode : network_default_locking_mode; network_assigned_ips : ref_VIF_to_string_map; network_purpose : network_purpose_set }
let rpc_of_network_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.network_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.network_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.network_name_description))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_network_operations_set) (x.network_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_network_operations_map) (x.network_current_operations))); opt_map (fun v -> ("VIFs", v)) (Some ((rpc_of_ref_VIF_set) (x.network_VIFs))); opt_map (fun v -> ("PIFs", v)) (Some ((rpc_of_ref_PIF_set) (x.network_PIFs))); opt_map (fun v -> ("MTU", v)) (Some ((rpc_of_int64) (x.network_MTU))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.network_other_config))); opt_map (fun v -> ("bridge", v)) (Some ((rpc_of_string) (x.network_bridge))); opt_map (fun v -> ("managed", v)) (Some ((rpc_of_bool) (x.network_managed))); opt_map (fun v -> ("blobs", v)) (Some ((rpc_of_string_to_ref_blob_map) (x.network_blobs))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.network_tags))); opt_map (fun v -> ("default_locking_mode", v)) (Some ((rpc_of_network_default_locking_mode) (x.network_default_locking_mode))); opt_map (fun v -> ("assigned_ips", v)) (Some ((rpc_of_ref_VIF_to_string_map) (x.network_assigned_ips))); opt_map (fun v -> ("purpose", v)) (Some ((rpc_of_network_purpose_set) (x.network_purpose))) ])
let network_t_of_rpc x = on_dict (fun x -> { network_uuid = ((string_of_rpc (assocer "uuid" x None))); network_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); network_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); network_allowed_operations = ((network_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); network_current_operations = ((string_to_network_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); network_VIFs = ((ref_VIF_set_of_rpc (assocer "VIFs" x (Some (Rpc.Enum []))))); network_PIFs = ((ref_PIF_set_of_rpc (assocer "PIFs" x (Some (Rpc.Enum []))))); network_MTU = ((int64_of_rpc (assocer "MTU" x (Some (Rpc.Int (1500L)))))); network_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); network_bridge = ((string_of_rpc (assocer "bridge" x (Some (Rpc.String ""))))); network_managed = ((bool_of_rpc (assocer "managed" x (Some (Rpc.Bool true))))); network_blobs = ((string_to_ref_blob_map_of_rpc (assocer "blobs" x (Some (Rpc.Dict []))))); network_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); network_default_locking_mode = ((network_default_locking_mode_of_rpc (assocer "default_locking_mode" x (Some (Rpc.String "unlocked"))))); network_assigned_ips = ((ref_VIF_to_string_map_of_rpc (assocer "assigned_ips" x (Some (Rpc.Dict []))))); network_purpose = ((network_purpose_set_of_rpc (assocer "purpose" x (Some (Rpc.Enum []))))) }) x
type ref_network_to_network_t_map = (ref_network * network_t) list [@@deriving rpc]
type network_t_set = network_t list [@@deriving rpc]
type network_t_option = network_t option [@@deriving rpc]

type host_cpu_t = { host_cpu_uuid : string; host_cpu_host : ref_host; host_cpu_number : int64; host_cpu_vendor : string; host_cpu_speed : int64; host_cpu_modelname : string; host_cpu_family : int64; host_cpu_model : int64; host_cpu_stepping : string; host_cpu_flags : string; host_cpu_features : string; host_cpu_utilisation : float; host_cpu_other_config : string_to_string_map }
let rpc_of_host_cpu_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.host_cpu_uuid))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.host_cpu_host))); opt_map (fun v -> ("number", v)) (Some ((rpc_of_int64) (x.host_cpu_number))); opt_map (fun v -> ("vendor", v)) (Some ((rpc_of_string) (x.host_cpu_vendor))); opt_map (fun v -> ("speed", v)) (Some ((rpc_of_int64) (x.host_cpu_speed))); opt_map (fun v -> ("modelname", v)) (Some ((rpc_of_string) (x.host_cpu_modelname))); opt_map (fun v -> ("family", v)) (Some ((rpc_of_int64) (x.host_cpu_family))); opt_map (fun v -> ("model", v)) (Some ((rpc_of_int64) (x.host_cpu_model))); opt_map (fun v -> ("stepping", v)) (Some ((rpc_of_string) (x.host_cpu_stepping))); opt_map (fun v -> ("flags", v)) (Some ((rpc_of_string) (x.host_cpu_flags))); opt_map (fun v -> ("features", v)) (Some ((rpc_of_string) (x.host_cpu_features))); opt_map (fun v -> ("utilisation", v)) (Some ((rpc_of_float) (x.host_cpu_utilisation))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_cpu_other_config))) ])
let host_cpu_t_of_rpc x = on_dict (fun x -> { host_cpu_uuid = ((string_of_rpc (assocer "uuid" x None))); host_cpu_host = ((ref_host_of_rpc (assocer "host" x None))); host_cpu_number = ((int64_of_rpc (assocer "number" x None))); host_cpu_vendor = ((string_of_rpc (assocer "vendor" x None))); host_cpu_speed = ((int64_of_rpc (assocer "speed" x None))); host_cpu_modelname = ((string_of_rpc (assocer "modelname" x None))); host_cpu_family = ((int64_of_rpc (assocer "family" x None))); host_cpu_model = ((int64_of_rpc (assocer "model" x None))); host_cpu_stepping = ((string_of_rpc (assocer "stepping" x None))); host_cpu_flags = ((string_of_rpc (assocer "flags" x None))); host_cpu_features = ((string_of_rpc (assocer "features" x None))); host_cpu_utilisation = ((float_of_rpc (assocer "utilisation" x None))); host_cpu_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_host_cpu_to_host_cpu_t_map = (ref_host_cpu * host_cpu_t) list [@@deriving rpc]
type host_cpu_t_set = host_cpu_t list [@@deriving rpc]
type host_cpu_t_option = host_cpu_t option [@@deriving rpc]

type host_metrics_t = { host_metrics_uuid : string; host_metrics_memory_total : int64; host_metrics_memory_free : int64; host_metrics_live : bool; host_metrics_last_updated : datetime; host_metrics_other_config : string_to_string_map }
let rpc_of_host_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.host_metrics_uuid))); opt_map (fun v -> ("memory_total", v)) (Some ((rpc_of_int64) (x.host_metrics_memory_total))); opt_map (fun v -> ("memory_free", v)) (Some ((rpc_of_int64) (x.host_metrics_memory_free))); opt_map (fun v -> ("live", v)) (Some ((rpc_of_bool) (x.host_metrics_live))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.host_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_metrics_other_config))) ])
let host_metrics_t_of_rpc x = on_dict (fun x -> { host_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); host_metrics_memory_total = ((int64_of_rpc (assocer "memory_total" x None))); host_metrics_memory_free = ((int64_of_rpc (assocer "memory_free" x None))); host_metrics_live = ((bool_of_rpc (assocer "live" x None))); host_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); host_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_host_metrics_to_host_metrics_t_map = (ref_host_metrics * host_metrics_t) list [@@deriving rpc]
type host_metrics_t_set = host_metrics_t list [@@deriving rpc]
type host_metrics_t_option = host_metrics_t option [@@deriving rpc]

type host_patch_t = { host_patch_uuid : string; host_patch_name_label : string; host_patch_name_description : string; host_patch_version : string; host_patch_host : ref_host; host_patch_applied : bool; host_patch_timestamp_applied : datetime; host_patch_size : int64; host_patch_pool_patch : ref_pool_patch; host_patch_other_config : string_to_string_map }
let rpc_of_host_patch_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.host_patch_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.host_patch_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.host_patch_name_description))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.host_patch_version))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.host_patch_host))); opt_map (fun v -> ("applied", v)) (Some ((rpc_of_bool) (x.host_patch_applied))); opt_map (fun v -> ("timestamp_applied", v)) (Some ((rpc_of_datetime) (x.host_patch_timestamp_applied))); opt_map (fun v -> ("size", v)) (Some ((rpc_of_int64) (x.host_patch_size))); opt_map (fun v -> ("pool_patch", v)) (Some ((rpc_of_ref_pool_patch) (x.host_patch_pool_patch))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_patch_other_config))) ])
let host_patch_t_of_rpc x = on_dict (fun x -> { host_patch_uuid = ((string_of_rpc (assocer "uuid" x None))); host_patch_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); host_patch_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); host_patch_version = ((string_of_rpc (assocer "version" x None))); host_patch_host = ((ref_host_of_rpc (assocer "host" x None))); host_patch_applied = ((bool_of_rpc (assocer "applied" x None))); host_patch_timestamp_applied = ((datetime_of_rpc (assocer "timestamp_applied" x None))); host_patch_size = ((int64_of_rpc (assocer "size" x None))); host_patch_pool_patch = ((ref_pool_patch_of_rpc (assocer "pool_patch" x (Some (Rpc.String ""))))); host_patch_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_host_patch_to_host_patch_t_map = (ref_host_patch * host_patch_t) list [@@deriving rpc]
type host_patch_t_set = host_patch_t list [@@deriving rpc]
type host_patch_t_option = host_patch_t option [@@deriving rpc]

type host_crashdump_t = { host_crashdump_uuid : string; host_crashdump_host : ref_host; host_crashdump_timestamp : datetime; host_crashdump_size : int64; host_crashdump_other_config : string_to_string_map }
let rpc_of_host_crashdump_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.host_crashdump_uuid))); opt_map (fun v -> ("host", v)) (Some ((rpc_of_ref_host) (x.host_crashdump_host))); opt_map (fun v -> ("timestamp", v)) (Some ((rpc_of_datetime) (x.host_crashdump_timestamp))); opt_map (fun v -> ("size", v)) (Some ((rpc_of_int64) (x.host_crashdump_size))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_crashdump_other_config))) ])
let host_crashdump_t_of_rpc x = on_dict (fun x -> { host_crashdump_uuid = ((string_of_rpc (assocer "uuid" x None))); host_crashdump_host = ((ref_host_of_rpc (assocer "host" x None))); host_crashdump_timestamp = ((datetime_of_rpc (assocer "timestamp" x None))); host_crashdump_size = ((int64_of_rpc (assocer "size" x None))); host_crashdump_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_host_crashdump_to_host_crashdump_t_map = (ref_host_crashdump * host_crashdump_t) list [@@deriving rpc]
type host_crashdump_t_set = host_crashdump_t list [@@deriving rpc]
type host_crashdump_t_option = host_crashdump_t option [@@deriving rpc]

type host_t = { host_uuid : string; host_name_label : string; host_name_description : string; host_memory_overhead : int64; host_allowed_operations : host_allowed_operations_set; host_current_operations : string_to_host_allowed_operations_map; host_API_version_major : int64; host_API_version_minor : int64; host_API_version_vendor : string; host_API_version_vendor_implementation : string_to_string_map; host_enabled : bool; host_software_version : string_to_string_map; host_other_config : string_to_string_map; host_capabilities : string_set; host_cpu_configuration : string_to_string_map; host_sched_policy : string; host_supported_bootloaders : string_set; host_resident_VMs : ref_VM_set; host_logging : string_to_string_map; host_PIFs : ref_PIF_set; host_suspend_image_sr : ref_SR; host_crash_dump_sr : ref_SR; host_crashdumps : ref_host_crashdump_set; host_patches : ref_host_patch_set; host_updates : ref_pool_update_set; host_PBDs : ref_PBD_set; host_host_CPUs : ref_host_cpu_set; host_cpu_info : string_to_string_map; host_hostname : string; host_address : string; host_metrics : ref_host_metrics; host_license_params : string_to_string_map; host_ha_statefiles : string_set; host_ha_network_peers : string_set; host_blobs : string_to_ref_blob_map; host_tags : string_set; host_external_auth_type : string; host_external_auth_service_name : string; host_external_auth_configuration : string_to_string_map; host_edition : string; host_license_server : string_to_string_map; host_bios_strings : string_to_string_map; host_power_on_mode : string; host_power_on_config : string_to_string_map; host_local_cache_sr : ref_SR; host_chipset_info : string_to_string_map; host_PCIs : ref_PCI_set; host_PGPUs : ref_PGPU_set; host_PUSBs : ref_PUSB_set; host_ssl_legacy : bool; host_guest_VCPUs_params : string_to_string_map; host_display : host_display; host_virtual_hardware_platform_versions : int64_set; host_control_domain : ref_VM; host_updates_requiring_reboot : ref_pool_update_set; host_features : ref_Feature_set; host_iscsi_iqn : string; host_multipathing : bool; host_uefi_certificates : string; host_certificates : ref_Certificate_set; host_editions : string_set; host_https_only : bool }
let rpc_of_host_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.host_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.host_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.host_name_description))); opt_map (fun v -> ("memory_overhead", v)) (Some ((rpc_of_int64) (x.host_memory_overhead))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_host_allowed_operations_set) (x.host_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_host_allowed_operations_map) (x.host_current_operations))); opt_map (fun v -> ("API_version_major", v)) (Some ((rpc_of_int64) (x.host_API_version_major))); opt_map (fun v -> ("API_version_minor", v)) (Some ((rpc_of_int64) (x.host_API_version_minor))); opt_map (fun v -> ("API_version_vendor", v)) (Some ((rpc_of_string) (x.host_API_version_vendor))); opt_map (fun v -> ("API_version_vendor_implementation", v)) (Some ((rpc_of_string_to_string_map) (x.host_API_version_vendor_implementation))); opt_map (fun v -> ("enabled", v)) (Some ((rpc_of_bool) (x.host_enabled))); opt_map (fun v -> ("software_version", v)) (Some ((rpc_of_string_to_string_map) (x.host_software_version))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_other_config))); opt_map (fun v -> ("capabilities", v)) (Some ((rpc_of_string_set) (x.host_capabilities))); opt_map (fun v -> ("cpu_configuration", v)) (Some ((rpc_of_string_to_string_map) (x.host_cpu_configuration))); opt_map (fun v -> ("sched_policy", v)) (Some ((rpc_of_string) (x.host_sched_policy))); opt_map (fun v -> ("supported_bootloaders", v)) (Some ((rpc_of_string_set) (x.host_supported_bootloaders))); opt_map (fun v -> ("resident_VMs", v)) (Some ((rpc_of_ref_VM_set) (x.host_resident_VMs))); opt_map (fun v -> ("logging", v)) (Some ((rpc_of_string_to_string_map) (x.host_logging))); opt_map (fun v -> ("PIFs", v)) (Some ((rpc_of_ref_PIF_set) (x.host_PIFs))); opt_map (fun v -> ("suspend_image_sr", v)) (Some ((rpc_of_ref_SR) (x.host_suspend_image_sr))); opt_map (fun v -> ("crash_dump_sr", v)) (Some ((rpc_of_ref_SR) (x.host_crash_dump_sr))); opt_map (fun v -> ("crashdumps", v)) (Some ((rpc_of_ref_host_crashdump_set) (x.host_crashdumps))); opt_map (fun v -> ("patches", v)) (Some ((rpc_of_ref_host_patch_set) (x.host_patches))); opt_map (fun v -> ("updates", v)) (Some ((rpc_of_ref_pool_update_set) (x.host_updates))); opt_map (fun v -> ("PBDs", v)) (Some ((rpc_of_ref_PBD_set) (x.host_PBDs))); opt_map (fun v -> ("host_CPUs", v)) (Some ((rpc_of_ref_host_cpu_set) (x.host_host_CPUs))); opt_map (fun v -> ("cpu_info", v)) (Some ((rpc_of_string_to_string_map) (x.host_cpu_info))); opt_map (fun v -> ("hostname", v)) (Some ((rpc_of_string) (x.host_hostname))); opt_map (fun v -> ("address", v)) (Some ((rpc_of_string) (x.host_address))); opt_map (fun v -> ("metrics", v)) (Some ((rpc_of_ref_host_metrics) (x.host_metrics))); opt_map (fun v -> ("license_params", v)) (Some ((rpc_of_string_to_string_map) (x.host_license_params))); opt_map (fun v -> ("ha_statefiles", v)) (Some ((rpc_of_string_set) (x.host_ha_statefiles))); opt_map (fun v -> ("ha_network_peers", v)) (Some ((rpc_of_string_set) (x.host_ha_network_peers))); opt_map (fun v -> ("blobs", v)) (Some ((rpc_of_string_to_ref_blob_map) (x.host_blobs))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.host_tags))); opt_map (fun v -> ("external_auth_type", v)) (Some ((rpc_of_string) (x.host_external_auth_type))); opt_map (fun v -> ("external_auth_service_name", v)) (Some ((rpc_of_string) (x.host_external_auth_service_name))); opt_map (fun v -> ("external_auth_configuration", v)) (Some ((rpc_of_string_to_string_map) (x.host_external_auth_configuration))); opt_map (fun v -> ("edition", v)) (Some ((rpc_of_string) (x.host_edition))); opt_map (fun v -> ("license_server", v)) (Some ((rpc_of_string_to_string_map) (x.host_license_server))); opt_map (fun v -> ("bios_strings", v)) (Some ((rpc_of_string_to_string_map) (x.host_bios_strings))); opt_map (fun v -> ("power_on_mode", v)) (Some ((rpc_of_string) (x.host_power_on_mode))); opt_map (fun v -> ("power_on_config", v)) (Some ((rpc_of_string_to_string_map) (x.host_power_on_config))); opt_map (fun v -> ("local_cache_sr", v)) (Some ((rpc_of_ref_SR) (x.host_local_cache_sr))); opt_map (fun v -> ("chipset_info", v)) (Some ((rpc_of_string_to_string_map) (x.host_chipset_info))); opt_map (fun v -> ("PCIs", v)) (Some ((rpc_of_ref_PCI_set) (x.host_PCIs))); opt_map (fun v -> ("PGPUs", v)) (Some ((rpc_of_ref_PGPU_set) (x.host_PGPUs))); opt_map (fun v -> ("PUSBs", v)) (Some ((rpc_of_ref_PUSB_set) (x.host_PUSBs))); opt_map (fun v -> ("ssl_legacy", v)) (Some ((rpc_of_bool) (x.host_ssl_legacy))); opt_map (fun v -> ("guest_VCPUs_params", v)) (Some ((rpc_of_string_to_string_map) (x.host_guest_VCPUs_params))); opt_map (fun v -> ("display", v)) (Some ((rpc_of_host_display) (x.host_display))); opt_map (fun v -> ("virtual_hardware_platform_versions", v)) (Some ((rpc_of_int64_set) (x.host_virtual_hardware_platform_versions))); opt_map (fun v -> ("control_domain", v)) (Some ((rpc_of_ref_VM) (x.host_control_domain))); opt_map (fun v -> ("updates_requiring_reboot", v)) (Some ((rpc_of_ref_pool_update_set) (x.host_updates_requiring_reboot))); opt_map (fun v -> ("features", v)) (Some ((rpc_of_ref_Feature_set) (x.host_features))); opt_map (fun v -> ("iscsi_iqn", v)) (Some ((rpc_of_string) (x.host_iscsi_iqn))); opt_map (fun v -> ("multipathing", v)) (Some ((rpc_of_bool) (x.host_multipathing))); opt_map (fun v -> ("uefi_certificates", v)) (Some ((rpc_of_string) (x.host_uefi_certificates))); opt_map (fun v -> ("certificates", v)) (Some ((rpc_of_ref_Certificate_set) (x.host_certificates))); opt_map (fun v -> ("editions", v)) (Some ((rpc_of_string_set) (x.host_editions))); opt_map (fun v -> ("https_only", v)) (Some ((rpc_of_bool) (x.host_https_only))) ])
let host_t_of_rpc x = on_dict (fun x -> { host_uuid = ((string_of_rpc (assocer "uuid" x None))); host_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); host_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); host_memory_overhead = ((int64_of_rpc (assocer "memory_overhead" x (Some (Rpc.Int (0L)))))); host_allowed_operations = ((host_allowed_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); host_current_operations = ((string_to_host_allowed_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); host_API_version_major = ((int64_of_rpc (assocer "API_version_major" x None))); host_API_version_minor = ((int64_of_rpc (assocer "API_version_minor" x None))); host_API_version_vendor = ((string_of_rpc (assocer "API_version_vendor" x None))); host_API_version_vendor_implementation = ((string_to_string_map_of_rpc (assocer "API_version_vendor_implementation" x None))); host_enabled = ((bool_of_rpc (assocer "enabled" x None))); host_software_version = ((string_to_string_map_of_rpc (assocer "software_version" x None))); host_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); host_capabilities = ((string_set_of_rpc (assocer "capabilities" x None))); host_cpu_configuration = ((string_to_string_map_of_rpc (assocer "cpu_configuration" x None))); host_sched_policy = ((string_of_rpc (assocer "sched_policy" x None))); host_supported_bootloaders = ((string_set_of_rpc (assocer "supported_bootloaders" x None))); host_resident_VMs = ((ref_VM_set_of_rpc (assocer "resident_VMs" x (Some (Rpc.Enum []))))); host_logging = ((string_to_string_map_of_rpc (assocer "logging" x None))); host_PIFs = ((ref_PIF_set_of_rpc (assocer "PIFs" x (Some (Rpc.Enum []))))); host_suspend_image_sr = ((ref_SR_of_rpc (assocer "suspend_image_sr" x None))); host_crash_dump_sr = ((ref_SR_of_rpc (assocer "crash_dump_sr" x None))); host_crashdumps = ((ref_host_crashdump_set_of_rpc (assocer "crashdumps" x (Some (Rpc.Enum []))))); host_patches = ((ref_host_patch_set_of_rpc (assocer "patches" x (Some (Rpc.Enum []))))); host_updates = ((ref_pool_update_set_of_rpc (assocer "updates" x (Some (Rpc.Enum []))))); host_PBDs = ((ref_PBD_set_of_rpc (assocer "PBDs" x (Some (Rpc.Enum []))))); host_host_CPUs = ((ref_host_cpu_set_of_rpc (assocer "host_CPUs" x (Some (Rpc.Enum []))))); host_cpu_info = ((string_to_string_map_of_rpc (assocer "cpu_info" x (Some (Rpc.Dict []))))); host_hostname = ((string_of_rpc (assocer "hostname" x None))); host_address = ((string_of_rpc (assocer "address" x None))); host_metrics = ((ref_host_metrics_of_rpc (assocer "metrics" x None))); host_license_params = ((string_to_string_map_of_rpc (assocer "license_params" x None))); host_ha_statefiles = ((string_set_of_rpc (assocer "ha_statefiles" x (Some (Rpc.Enum []))))); host_ha_network_peers = ((string_set_of_rpc (assocer "ha_network_peers" x (Some (Rpc.Enum []))))); host_blobs = ((string_to_ref_blob_map_of_rpc (assocer "blobs" x (Some (Rpc.Dict []))))); host_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); host_external_auth_type = ((string_of_rpc (assocer "external_auth_type" x (Some (Rpc.String ""))))); host_external_auth_service_name = ((string_of_rpc (assocer "external_auth_service_name" x (Some (Rpc.String ""))))); host_external_auth_configuration = ((string_to_string_map_of_rpc (assocer "external_auth_configuration" x (Some (Rpc.Dict []))))); host_edition = ((string_of_rpc (assocer "edition" x (Some (Rpc.String ""))))); host_license_server = ((string_to_string_map_of_rpc (assocer "license_server" x (Some (Rpc.Dict [("address",Rpc.String "localhost");("port",Rpc.String "27000")]))))); host_bios_strings = ((string_to_string_map_of_rpc (assocer "bios_strings" x (Some (Rpc.Dict []))))); host_power_on_mode = ((string_of_rpc (assocer "power_on_mode" x (Some (Rpc.String ""))))); host_power_on_config = ((string_to_string_map_of_rpc (assocer "power_on_config" x (Some (Rpc.Dict []))))); host_local_cache_sr = ((ref_SR_of_rpc (assocer "local_cache_sr" x (Some (Rpc.String "OpaqueRef:NULL"))))); host_chipset_info = ((string_to_string_map_of_rpc (assocer "chipset_info" x (Some (Rpc.Dict []))))); host_PCIs = ((ref_PCI_set_of_rpc (assocer "PCIs" x (Some (Rpc.Enum []))))); host_PGPUs = ((ref_PGPU_set_of_rpc (assocer "PGPUs" x (Some (Rpc.Enum []))))); host_PUSBs = ((ref_PUSB_set_of_rpc (assocer "PUSBs" x (Some (Rpc.Enum []))))); host_ssl_legacy = ((bool_of_rpc (assocer "ssl_legacy" x (Some (Rpc.Bool true))))); host_guest_VCPUs_params = ((string_to_string_map_of_rpc (assocer "guest_VCPUs_params" x (Some (Rpc.Dict []))))); host_display = ((host_display_of_rpc (assocer "display" x (Some (Rpc.String "enabled"))))); host_virtual_hardware_platform_versions = ((int64_set_of_rpc (assocer "virtual_hardware_platform_versions" x (Some (Rpc.Enum [Rpc.Int (0L)]))))); host_control_domain = ((ref_VM_of_rpc (assocer "control_domain" x (Some (Rpc.String "OpaqueRef:NULL"))))); host_updates_requiring_reboot = ((ref_pool_update_set_of_rpc (assocer "updates_requiring_reboot" x (Some (Rpc.Enum []))))); host_features = ((ref_Feature_set_of_rpc (assocer "features" x (Some (Rpc.Enum []))))); host_iscsi_iqn = ((string_of_rpc (assocer "iscsi_iqn" x (Some (Rpc.String ""))))); host_multipathing = ((bool_of_rpc (assocer "multipathing" x (Some (Rpc.Bool false))))); host_uefi_certificates = ((string_of_rpc (assocer "uefi_certificates" x (Some (Rpc.String ""))))); host_certificates = ((ref_Certificate_set_of_rpc (assocer "certificates" x (Some (Rpc.Enum []))))); host_editions = ((string_set_of_rpc (assocer "editions" x (Some (Rpc.Enum []))))); host_https_only = ((bool_of_rpc (assocer "https_only" x (Some (Rpc.Bool false))))) }) x
type ref_host_to_host_t_map = (ref_host * host_t) list [@@deriving rpc]
type host_t_set = host_t list [@@deriving rpc]
type host_t_option = host_t option [@@deriving rpc]

type dR_task_t = { dR_task_uuid : string; dR_task_introduced_SRs : ref_SR_set }
let rpc_of_dR_task_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.dR_task_uuid))); opt_map (fun v -> ("introduced_SRs", v)) (Some ((rpc_of_ref_SR_set) (x.dR_task_introduced_SRs))) ])
let dR_task_t_of_rpc x = on_dict (fun x -> { dR_task_uuid = ((string_of_rpc (assocer "uuid" x None))); dR_task_introduced_SRs = ((ref_SR_set_of_rpc (assocer "introduced_SRs" x (Some (Rpc.Enum []))))) }) x
type ref_DR_task_to_dR_task_t_map = (ref_DR_task * dR_task_t) list [@@deriving rpc]
type dR_task_t_set = dR_task_t list [@@deriving rpc]
type dR_task_t_option = dR_task_t option [@@deriving rpc]

type vM_appliance_t = { vM_appliance_uuid : string; vM_appliance_name_label : string; vM_appliance_name_description : string; vM_appliance_allowed_operations : vm_appliance_operation_set; vM_appliance_current_operations : string_to_vm_appliance_operation_map; vM_appliance_VMs : ref_VM_set }
let rpc_of_vM_appliance_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vM_appliance_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.vM_appliance_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.vM_appliance_name_description))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vm_appliance_operation_set) (x.vM_appliance_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vm_appliance_operation_map) (x.vM_appliance_current_operations))); opt_map (fun v -> ("VMs", v)) (Some ((rpc_of_ref_VM_set) (x.vM_appliance_VMs))) ])
let vM_appliance_t_of_rpc x = on_dict (fun x -> { vM_appliance_uuid = ((string_of_rpc (assocer "uuid" x None))); vM_appliance_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); vM_appliance_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); vM_appliance_allowed_operations = ((vm_appliance_operation_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vM_appliance_current_operations = ((string_to_vm_appliance_operation_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vM_appliance_VMs = ((ref_VM_set_of_rpc (assocer "VMs" x (Some (Rpc.Enum []))))) }) x
type ref_VM_appliance_to_vM_appliance_t_map = (ref_VM_appliance * vM_appliance_t) list [@@deriving rpc]
type vM_appliance_t_set = vM_appliance_t list [@@deriving rpc]
type vM_appliance_t_option = vM_appliance_t option [@@deriving rpc]

type vMSS_t = { vMSS_uuid : string; vMSS_name_label : string; vMSS_name_description : string; vMSS_enabled : bool; vMSS_type : vmss_type; vMSS_retained_snapshots : int64; vMSS_frequency : vmss_frequency; vMSS_schedule : string_to_string_map; vMSS_last_run_time : datetime; vMSS_VMs : ref_VM_set }
let rpc_of_vMSS_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vMSS_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.vMSS_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.vMSS_name_description))); opt_map (fun v -> ("enabled", v)) (Some ((rpc_of_bool) (x.vMSS_enabled))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_vmss_type) (x.vMSS_type))); opt_map (fun v -> ("retained_snapshots", v)) (Some ((rpc_of_int64) (x.vMSS_retained_snapshots))); opt_map (fun v -> ("frequency", v)) (Some ((rpc_of_vmss_frequency) (x.vMSS_frequency))); opt_map (fun v -> ("schedule", v)) (Some ((rpc_of_string_to_string_map) (x.vMSS_schedule))); opt_map (fun v -> ("last_run_time", v)) (Some ((rpc_of_datetime) (x.vMSS_last_run_time))); opt_map (fun v -> ("VMs", v)) (Some ((rpc_of_ref_VM_set) (x.vMSS_VMs))) ])
let vMSS_t_of_rpc x = on_dict (fun x -> { vMSS_uuid = ((string_of_rpc (assocer "uuid" x None))); vMSS_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); vMSS_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); vMSS_enabled = ((bool_of_rpc (assocer "enabled" x (Some (Rpc.Bool true))))); vMSS_type = ((vmss_type_of_rpc (assocer "type" x None))); vMSS_retained_snapshots = ((int64_of_rpc (assocer "retained_snapshots" x (Some (Rpc.Int (7L)))))); vMSS_frequency = ((vmss_frequency_of_rpc (assocer "frequency" x None))); vMSS_schedule = ((string_to_string_map_of_rpc (assocer "schedule" x (Some (Rpc.Dict []))))); vMSS_last_run_time = ((datetime_of_rpc (assocer "last_run_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); vMSS_VMs = ((ref_VM_set_of_rpc (assocer "VMs" x (Some (Rpc.Enum []))))) }) x
type ref_VMSS_to_vMSS_t_map = (ref_VMSS * vMSS_t) list [@@deriving rpc]
type vMSS_t_set = vMSS_t list [@@deriving rpc]
type vMSS_t_option = vMSS_t option [@@deriving rpc]

type vMPP_t = { vMPP_uuid : string; vMPP_name_label : string; vMPP_name_description : string; vMPP_is_policy_enabled : bool; vMPP_backup_type : vmpp_backup_type; vMPP_backup_retention_value : int64; vMPP_backup_frequency : vmpp_backup_frequency; vMPP_backup_schedule : string_to_string_map; vMPP_is_backup_running : bool; vMPP_backup_last_run_time : datetime; vMPP_archive_target_type : vmpp_archive_target_type; vMPP_archive_target_config : string_to_string_map; vMPP_archive_frequency : vmpp_archive_frequency; vMPP_archive_schedule : string_to_string_map; vMPP_is_archive_running : bool; vMPP_archive_last_run_time : datetime; vMPP_VMs : ref_VM_set; vMPP_is_alarm_enabled : bool; vMPP_alarm_config : string_to_string_map; vMPP_recent_alerts : string_set }
let rpc_of_vMPP_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vMPP_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.vMPP_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.vMPP_name_description))); opt_map (fun v -> ("is_policy_enabled", v)) (Some ((rpc_of_bool) (x.vMPP_is_policy_enabled))); opt_map (fun v -> ("backup_type", v)) (Some ((rpc_of_vmpp_backup_type) (x.vMPP_backup_type))); opt_map (fun v -> ("backup_retention_value", v)) (Some ((rpc_of_int64) (x.vMPP_backup_retention_value))); opt_map (fun v -> ("backup_frequency", v)) (Some ((rpc_of_vmpp_backup_frequency) (x.vMPP_backup_frequency))); opt_map (fun v -> ("backup_schedule", v)) (Some ((rpc_of_string_to_string_map) (x.vMPP_backup_schedule))); opt_map (fun v -> ("is_backup_running", v)) (Some ((rpc_of_bool) (x.vMPP_is_backup_running))); opt_map (fun v -> ("backup_last_run_time", v)) (Some ((rpc_of_datetime) (x.vMPP_backup_last_run_time))); opt_map (fun v -> ("archive_target_type", v)) (Some ((rpc_of_vmpp_archive_target_type) (x.vMPP_archive_target_type))); opt_map (fun v -> ("archive_target_config", v)) (Some ((rpc_of_string_to_string_map) (x.vMPP_archive_target_config))); opt_map (fun v -> ("archive_frequency", v)) (Some ((rpc_of_vmpp_archive_frequency) (x.vMPP_archive_frequency))); opt_map (fun v -> ("archive_schedule", v)) (Some ((rpc_of_string_to_string_map) (x.vMPP_archive_schedule))); opt_map (fun v -> ("is_archive_running", v)) (Some ((rpc_of_bool) (x.vMPP_is_archive_running))); opt_map (fun v -> ("archive_last_run_time", v)) (Some ((rpc_of_datetime) (x.vMPP_archive_last_run_time))); opt_map (fun v -> ("VMs", v)) (Some ((rpc_of_ref_VM_set) (x.vMPP_VMs))); opt_map (fun v -> ("is_alarm_enabled", v)) (Some ((rpc_of_bool) (x.vMPP_is_alarm_enabled))); opt_map (fun v -> ("alarm_config", v)) (Some ((rpc_of_string_to_string_map) (x.vMPP_alarm_config))); opt_map (fun v -> ("recent_alerts", v)) (Some ((rpc_of_string_set) (x.vMPP_recent_alerts))) ])
let vMPP_t_of_rpc x = on_dict (fun x -> { vMPP_uuid = ((string_of_rpc (assocer "uuid" x None))); vMPP_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); vMPP_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); vMPP_is_policy_enabled = ((bool_of_rpc (assocer "is_policy_enabled" x (Some (Rpc.Bool true))))); vMPP_backup_type = ((vmpp_backup_type_of_rpc (assocer "backup_type" x (Some (Rpc.String "snapshot"))))); vMPP_backup_retention_value = ((int64_of_rpc (assocer "backup_retention_value" x (Some (Rpc.Int (7L)))))); vMPP_backup_frequency = ((vmpp_backup_frequency_of_rpc (assocer "backup_frequency" x (Some (Rpc.String "daily"))))); vMPP_backup_schedule = ((string_to_string_map_of_rpc (assocer "backup_schedule" x (Some (Rpc.Dict []))))); vMPP_is_backup_running = ((bool_of_rpc (assocer "is_backup_running" x None))); vMPP_backup_last_run_time = ((datetime_of_rpc (assocer "backup_last_run_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); vMPP_archive_target_type = ((vmpp_archive_target_type_of_rpc (assocer "archive_target_type" x (Some (Rpc.String "none"))))); vMPP_archive_target_config = ((string_to_string_map_of_rpc (assocer "archive_target_config" x (Some (Rpc.Dict []))))); vMPP_archive_frequency = ((vmpp_archive_frequency_of_rpc (assocer "archive_frequency" x (Some (Rpc.String "never"))))); vMPP_archive_schedule = ((string_to_string_map_of_rpc (assocer "archive_schedule" x (Some (Rpc.Dict []))))); vMPP_is_archive_running = ((bool_of_rpc (assocer "is_archive_running" x None))); vMPP_archive_last_run_time = ((datetime_of_rpc (assocer "archive_last_run_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); vMPP_VMs = ((ref_VM_set_of_rpc (assocer "VMs" x (Some (Rpc.Enum []))))); vMPP_is_alarm_enabled = ((bool_of_rpc (assocer "is_alarm_enabled" x (Some (Rpc.Bool false))))); vMPP_alarm_config = ((string_to_string_map_of_rpc (assocer "alarm_config" x (Some (Rpc.Dict []))))); vMPP_recent_alerts = ((string_set_of_rpc (assocer "recent_alerts" x (Some (Rpc.Enum []))))) }) x
type ref_VMPP_to_vMPP_t_map = (ref_VMPP * vMPP_t) list [@@deriving rpc]
type vMPP_t_set = vMPP_t list [@@deriving rpc]
type vMPP_t_option = vMPP_t option [@@deriving rpc]

type vM_guest_metrics_t = { vM_guest_metrics_uuid : string; vM_guest_metrics_os_version : string_to_string_map; vM_guest_metrics_PV_drivers_version : string_to_string_map; vM_guest_metrics_PV_drivers_up_to_date : bool; vM_guest_metrics_memory : string_to_string_map; vM_guest_metrics_disks : string_to_string_map; vM_guest_metrics_networks : string_to_string_map; vM_guest_metrics_other : string_to_string_map; vM_guest_metrics_last_updated : datetime; vM_guest_metrics_other_config : string_to_string_map; vM_guest_metrics_live : bool; vM_guest_metrics_can_use_hotplug_vbd : tristate_type; vM_guest_metrics_can_use_hotplug_vif : tristate_type; vM_guest_metrics_PV_drivers_detected : bool }
let rpc_of_vM_guest_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vM_guest_metrics_uuid))); opt_map (fun v -> ("os_version", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_os_version))); opt_map (fun v -> ("PV_drivers_version", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_PV_drivers_version))); opt_map (fun v -> ("PV_drivers_up_to_date", v)) (Some ((rpc_of_bool) (x.vM_guest_metrics_PV_drivers_up_to_date))); opt_map (fun v -> ("memory", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_memory))); opt_map (fun v -> ("disks", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_disks))); opt_map (fun v -> ("networks", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_networks))); opt_map (fun v -> ("other", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_other))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.vM_guest_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vM_guest_metrics_other_config))); opt_map (fun v -> ("live", v)) (Some ((rpc_of_bool) (x.vM_guest_metrics_live))); opt_map (fun v -> ("can_use_hotplug_vbd", v)) (Some ((rpc_of_tristate_type) (x.vM_guest_metrics_can_use_hotplug_vbd))); opt_map (fun v -> ("can_use_hotplug_vif", v)) (Some ((rpc_of_tristate_type) (x.vM_guest_metrics_can_use_hotplug_vif))); opt_map (fun v -> ("PV_drivers_detected", v)) (Some ((rpc_of_bool) (x.vM_guest_metrics_PV_drivers_detected))) ])
let vM_guest_metrics_t_of_rpc x = on_dict (fun x -> { vM_guest_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); vM_guest_metrics_os_version = ((string_to_string_map_of_rpc (assocer "os_version" x None))); vM_guest_metrics_PV_drivers_version = ((string_to_string_map_of_rpc (assocer "PV_drivers_version" x None))); vM_guest_metrics_PV_drivers_up_to_date = ((bool_of_rpc (assocer "PV_drivers_up_to_date" x None))); vM_guest_metrics_memory = ((string_to_string_map_of_rpc (assocer "memory" x None))); vM_guest_metrics_disks = ((string_to_string_map_of_rpc (assocer "disks" x None))); vM_guest_metrics_networks = ((string_to_string_map_of_rpc (assocer "networks" x None))); vM_guest_metrics_other = ((string_to_string_map_of_rpc (assocer "other" x None))); vM_guest_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); vM_guest_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); vM_guest_metrics_live = ((bool_of_rpc (assocer "live" x (Some (Rpc.Bool false))))); vM_guest_metrics_can_use_hotplug_vbd = ((tristate_type_of_rpc (assocer "can_use_hotplug_vbd" x (Some (Rpc.String "unspecified"))))); vM_guest_metrics_can_use_hotplug_vif = ((tristate_type_of_rpc (assocer "can_use_hotplug_vif" x (Some (Rpc.String "unspecified"))))); vM_guest_metrics_PV_drivers_detected = ((bool_of_rpc (assocer "PV_drivers_detected" x (Some (Rpc.Bool false))))) }) x
type ref_VM_guest_metrics_to_vM_guest_metrics_t_map = (ref_VM_guest_metrics * vM_guest_metrics_t) list [@@deriving rpc]
type vM_guest_metrics_t_set = vM_guest_metrics_t list [@@deriving rpc]
type vM_guest_metrics_t_option = vM_guest_metrics_t option [@@deriving rpc]

type vM_metrics_t = { vM_metrics_uuid : string; vM_metrics_memory_actual : int64; vM_metrics_VCPUs_number : int64; vM_metrics_VCPUs_utilisation : int64_to_float_map; vM_metrics_VCPUs_CPU : int64_to_int64_map; vM_metrics_VCPUs_params : string_to_string_map; vM_metrics_VCPUs_flags : int64_to_string_set_map; vM_metrics_state : string_set; vM_metrics_start_time : datetime; vM_metrics_install_time : datetime; vM_metrics_last_updated : datetime; vM_metrics_other_config : string_to_string_map; vM_metrics_hvm : bool; vM_metrics_nested_virt : bool; vM_metrics_nomigrate : bool; vM_metrics_current_domain_type : domain_type }
let rpc_of_vM_metrics_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vM_metrics_uuid))); opt_map (fun v -> ("memory_actual", v)) (Some ((rpc_of_int64) (x.vM_metrics_memory_actual))); opt_map (fun v -> ("VCPUs_number", v)) (Some ((rpc_of_int64) (x.vM_metrics_VCPUs_number))); opt_map (fun v -> ("VCPUs_utilisation", v)) (Some ((rpc_of_int64_to_float_map) (x.vM_metrics_VCPUs_utilisation))); opt_map (fun v -> ("VCPUs_CPU", v)) (Some ((rpc_of_int64_to_int64_map) (x.vM_metrics_VCPUs_CPU))); opt_map (fun v -> ("VCPUs_params", v)) (Some ((rpc_of_string_to_string_map) (x.vM_metrics_VCPUs_params))); opt_map (fun v -> ("VCPUs_flags", v)) (Some ((rpc_of_int64_to_string_set_map) (x.vM_metrics_VCPUs_flags))); opt_map (fun v -> ("state", v)) (Some ((rpc_of_string_set) (x.vM_metrics_state))); opt_map (fun v -> ("start_time", v)) (Some ((rpc_of_datetime) (x.vM_metrics_start_time))); opt_map (fun v -> ("install_time", v)) (Some ((rpc_of_datetime) (x.vM_metrics_install_time))); opt_map (fun v -> ("last_updated", v)) (Some ((rpc_of_datetime) (x.vM_metrics_last_updated))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vM_metrics_other_config))); opt_map (fun v -> ("hvm", v)) (Some ((rpc_of_bool) (x.vM_metrics_hvm))); opt_map (fun v -> ("nested_virt", v)) (Some ((rpc_of_bool) (x.vM_metrics_nested_virt))); opt_map (fun v -> ("nomigrate", v)) (Some ((rpc_of_bool) (x.vM_metrics_nomigrate))); opt_map (fun v -> ("current_domain_type", v)) (Some ((rpc_of_domain_type) (x.vM_metrics_current_domain_type))) ])
let vM_metrics_t_of_rpc x = on_dict (fun x -> { vM_metrics_uuid = ((string_of_rpc (assocer "uuid" x None))); vM_metrics_memory_actual = ((int64_of_rpc (assocer "memory_actual" x None))); vM_metrics_VCPUs_number = ((int64_of_rpc (assocer "VCPUs_number" x None))); vM_metrics_VCPUs_utilisation = ((int64_to_float_map_of_rpc (assocer "VCPUs_utilisation" x None))); vM_metrics_VCPUs_CPU = ((int64_to_int64_map_of_rpc (assocer "VCPUs_CPU" x None))); vM_metrics_VCPUs_params = ((string_to_string_map_of_rpc (assocer "VCPUs_params" x None))); vM_metrics_VCPUs_flags = ((int64_to_string_set_map_of_rpc (assocer "VCPUs_flags" x None))); vM_metrics_state = ((string_set_of_rpc (assocer "state" x None))); vM_metrics_start_time = ((datetime_of_rpc (assocer "start_time" x None))); vM_metrics_install_time = ((datetime_of_rpc (assocer "install_time" x None))); vM_metrics_last_updated = ((datetime_of_rpc (assocer "last_updated" x None))); vM_metrics_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); vM_metrics_hvm = ((bool_of_rpc (assocer "hvm" x (Some (Rpc.Bool false))))); vM_metrics_nested_virt = ((bool_of_rpc (assocer "nested_virt" x (Some (Rpc.Bool false))))); vM_metrics_nomigrate = ((bool_of_rpc (assocer "nomigrate" x (Some (Rpc.Bool false))))); vM_metrics_current_domain_type = ((domain_type_of_rpc (assocer "current_domain_type" x (Some (Rpc.String "unspecified"))))) }) x
type ref_VM_metrics_to_vM_metrics_t_map = (ref_VM_metrics * vM_metrics_t) list [@@deriving rpc]
type vM_metrics_t_set = vM_metrics_t list [@@deriving rpc]
type vM_metrics_t_option = vM_metrics_t option [@@deriving rpc]

type vM_t = { vM_uuid : string; vM_allowed_operations : vm_operations_set; vM_current_operations : string_to_vm_operations_map; vM_name_label : string; vM_name_description : string; vM_power_state : vm_power_state; vM_user_version : int64; vM_is_a_template : bool; vM_is_default_template : bool; vM_suspend_VDI : ref_VDI; vM_resident_on : ref_host; vM_scheduled_to_be_resident_on : ref_host; vM_affinity : ref_host; vM_memory_overhead : int64; vM_memory_target : int64; vM_memory_static_max : int64; vM_memory_dynamic_max : int64; vM_memory_dynamic_min : int64; vM_memory_static_min : int64; vM_VCPUs_params : string_to_string_map; vM_VCPUs_max : int64; vM_VCPUs_at_startup : int64; vM_actions_after_shutdown : on_normal_exit; vM_actions_after_reboot : on_normal_exit; vM_actions_after_crash : on_crash_behaviour; vM_consoles : ref_console_set; vM_VIFs : ref_VIF_set; vM_VBDs : ref_VBD_set; vM_VUSBs : ref_VUSB_set; vM_crash_dumps : ref_crashdump_set; vM_VTPMs : ref_VTPM_set; vM_PV_bootloader : string; vM_PV_kernel : string; vM_PV_ramdisk : string; vM_PV_args : string; vM_PV_bootloader_args : string; vM_PV_legacy_args : string; vM_HVM_boot_policy : string; vM_HVM_boot_params : string_to_string_map; vM_HVM_shadow_multiplier : float; vM_platform : string_to_string_map; vM_PCI_bus : string; vM_other_config : string_to_string_map; vM_domid : int64; vM_domarch : string; vM_last_boot_CPU_flags : string_to_string_map; vM_is_control_domain : bool; vM_metrics : ref_VM_metrics; vM_guest_metrics : ref_VM_guest_metrics; vM_last_booted_record : string; vM_recommendations : string; vM_xenstore_data : string_to_string_map; vM_ha_always_run : bool; vM_ha_restart_priority : string; vM_is_a_snapshot : bool; vM_snapshot_of : ref_VM; vM_snapshots : ref_VM_set; vM_snapshot_time : datetime; vM_transportable_snapshot_id : string; vM_blobs : string_to_ref_blob_map; vM_tags : string_set; vM_blocked_operations : vm_operations_to_string_map; vM_snapshot_info : string_to_string_map; vM_snapshot_metadata : string; vM_parent : ref_VM; vM_children : ref_VM_set; vM_bios_strings : string_to_string_map; vM_protection_policy : ref_VMPP; vM_is_snapshot_from_vmpp : bool; vM_snapshot_schedule : ref_VMSS; vM_is_vmss_snapshot : bool; vM_appliance : ref_VM_appliance; vM_start_delay : int64; vM_shutdown_delay : int64; vM_order : int64; vM_VGPUs : ref_VGPU_set; vM_attached_PCIs : ref_PCI_set; vM_suspend_SR : ref_SR; vM_version : int64; vM_generation_id : string; vM_hardware_platform_version : int64; vM_has_vendor_device : bool; vM_requires_reboot : bool; vM_reference_label : string; vM_domain_type : domain_type; vM_NVRAM : string_to_string_map }
let rpc_of_vM_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vM_uuid))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_vm_operations_set) (x.vM_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_vm_operations_map) (x.vM_current_operations))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.vM_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.vM_name_description))); opt_map (fun v -> ("power_state", v)) (Some ((rpc_of_vm_power_state) (x.vM_power_state))); opt_map (fun v -> ("user_version", v)) (Some ((rpc_of_int64) (x.vM_user_version))); opt_map (fun v -> ("is_a_template", v)) (Some ((rpc_of_bool) (x.vM_is_a_template))); opt_map (fun v -> ("is_default_template", v)) (Some ((rpc_of_bool) (x.vM_is_default_template))); opt_map (fun v -> ("suspend_VDI", v)) (Some ((rpc_of_ref_VDI) (x.vM_suspend_VDI))); opt_map (fun v -> ("resident_on", v)) (Some ((rpc_of_ref_host) (x.vM_resident_on))); opt_map (fun v -> ("scheduled_to_be_resident_on", v)) (Some ((rpc_of_ref_host) (x.vM_scheduled_to_be_resident_on))); opt_map (fun v -> ("affinity", v)) (Some ((rpc_of_ref_host) (x.vM_affinity))); opt_map (fun v -> ("memory_overhead", v)) (Some ((rpc_of_int64) (x.vM_memory_overhead))); opt_map (fun v -> ("memory_target", v)) (Some ((rpc_of_int64) (x.vM_memory_target))); opt_map (fun v -> ("memory_static_max", v)) (Some ((rpc_of_int64) (x.vM_memory_static_max))); opt_map (fun v -> ("memory_dynamic_max", v)) (Some ((rpc_of_int64) (x.vM_memory_dynamic_max))); opt_map (fun v -> ("memory_dynamic_min", v)) (Some ((rpc_of_int64) (x.vM_memory_dynamic_min))); opt_map (fun v -> ("memory_static_min", v)) (Some ((rpc_of_int64) (x.vM_memory_static_min))); opt_map (fun v -> ("VCPUs_params", v)) (Some ((rpc_of_string_to_string_map) (x.vM_VCPUs_params))); opt_map (fun v -> ("VCPUs_max", v)) (Some ((rpc_of_int64) (x.vM_VCPUs_max))); opt_map (fun v -> ("VCPUs_at_startup", v)) (Some ((rpc_of_int64) (x.vM_VCPUs_at_startup))); opt_map (fun v -> ("actions_after_shutdown", v)) (Some ((rpc_of_on_normal_exit) (x.vM_actions_after_shutdown))); opt_map (fun v -> ("actions_after_reboot", v)) (Some ((rpc_of_on_normal_exit) (x.vM_actions_after_reboot))); opt_map (fun v -> ("actions_after_crash", v)) (Some ((rpc_of_on_crash_behaviour) (x.vM_actions_after_crash))); opt_map (fun v -> ("consoles", v)) (Some ((rpc_of_ref_console_set) (x.vM_consoles))); opt_map (fun v -> ("VIFs", v)) (Some ((rpc_of_ref_VIF_set) (x.vM_VIFs))); opt_map (fun v -> ("VBDs", v)) (Some ((rpc_of_ref_VBD_set) (x.vM_VBDs))); opt_map (fun v -> ("VUSBs", v)) (Some ((rpc_of_ref_VUSB_set) (x.vM_VUSBs))); opt_map (fun v -> ("crash_dumps", v)) (Some ((rpc_of_ref_crashdump_set) (x.vM_crash_dumps))); opt_map (fun v -> ("VTPMs", v)) (Some ((rpc_of_ref_VTPM_set) (x.vM_VTPMs))); opt_map (fun v -> ("PV_bootloader", v)) (Some ((rpc_of_string) (x.vM_PV_bootloader))); opt_map (fun v -> ("PV_kernel", v)) (Some ((rpc_of_string) (x.vM_PV_kernel))); opt_map (fun v -> ("PV_ramdisk", v)) (Some ((rpc_of_string) (x.vM_PV_ramdisk))); opt_map (fun v -> ("PV_args", v)) (Some ((rpc_of_string) (x.vM_PV_args))); opt_map (fun v -> ("PV_bootloader_args", v)) (Some ((rpc_of_string) (x.vM_PV_bootloader_args))); opt_map (fun v -> ("PV_legacy_args", v)) (Some ((rpc_of_string) (x.vM_PV_legacy_args))); opt_map (fun v -> ("HVM_boot_policy", v)) (Some ((rpc_of_string) (x.vM_HVM_boot_policy))); opt_map (fun v -> ("HVM_boot_params", v)) (Some ((rpc_of_string_to_string_map) (x.vM_HVM_boot_params))); opt_map (fun v -> ("HVM_shadow_multiplier", v)) (Some ((rpc_of_float) (x.vM_HVM_shadow_multiplier))); opt_map (fun v -> ("platform", v)) (Some ((rpc_of_string_to_string_map) (x.vM_platform))); opt_map (fun v -> ("PCI_bus", v)) (Some ((rpc_of_string) (x.vM_PCI_bus))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.vM_other_config))); opt_map (fun v -> ("domid", v)) (Some ((rpc_of_int64) (x.vM_domid))); opt_map (fun v -> ("domarch", v)) (Some ((rpc_of_string) (x.vM_domarch))); opt_map (fun v -> ("last_boot_CPU_flags", v)) (Some ((rpc_of_string_to_string_map) (x.vM_last_boot_CPU_flags))); opt_map (fun v -> ("is_control_domain", v)) (Some ((rpc_of_bool) (x.vM_is_control_domain))); opt_map (fun v -> ("metrics", v)) (Some ((rpc_of_ref_VM_metrics) (x.vM_metrics))); opt_map (fun v -> ("guest_metrics", v)) (Some ((rpc_of_ref_VM_guest_metrics) (x.vM_guest_metrics))); opt_map (fun v -> ("last_booted_record", v)) (Some ((rpc_of_string) (x.vM_last_booted_record))); opt_map (fun v -> ("recommendations", v)) (Some ((rpc_of_string) (x.vM_recommendations))); opt_map (fun v -> ("xenstore_data", v)) (Some ((rpc_of_string_to_string_map) (x.vM_xenstore_data))); opt_map (fun v -> ("ha_always_run", v)) (Some ((rpc_of_bool) (x.vM_ha_always_run))); opt_map (fun v -> ("ha_restart_priority", v)) (Some ((rpc_of_string) (x.vM_ha_restart_priority))); opt_map (fun v -> ("is_a_snapshot", v)) (Some ((rpc_of_bool) (x.vM_is_a_snapshot))); opt_map (fun v -> ("snapshot_of", v)) (Some ((rpc_of_ref_VM) (x.vM_snapshot_of))); opt_map (fun v -> ("snapshots", v)) (Some ((rpc_of_ref_VM_set) (x.vM_snapshots))); opt_map (fun v -> ("snapshot_time", v)) (Some ((rpc_of_datetime) (x.vM_snapshot_time))); opt_map (fun v -> ("transportable_snapshot_id", v)) (Some ((rpc_of_string) (x.vM_transportable_snapshot_id))); opt_map (fun v -> ("blobs", v)) (Some ((rpc_of_string_to_ref_blob_map) (x.vM_blobs))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.vM_tags))); opt_map (fun v -> ("blocked_operations", v)) (Some ((rpc_of_vm_operations_to_string_map) (x.vM_blocked_operations))); opt_map (fun v -> ("snapshot_info", v)) (Some ((rpc_of_string_to_string_map) (x.vM_snapshot_info))); opt_map (fun v -> ("snapshot_metadata", v)) (Some ((rpc_of_string) (x.vM_snapshot_metadata))); opt_map (fun v -> ("parent", v)) (Some ((rpc_of_ref_VM) (x.vM_parent))); opt_map (fun v -> ("children", v)) (Some ((rpc_of_ref_VM_set) (x.vM_children))); opt_map (fun v -> ("bios_strings", v)) (Some ((rpc_of_string_to_string_map) (x.vM_bios_strings))); opt_map (fun v -> ("protection_policy", v)) (Some ((rpc_of_ref_VMPP) (x.vM_protection_policy))); opt_map (fun v -> ("is_snapshot_from_vmpp", v)) (Some ((rpc_of_bool) (x.vM_is_snapshot_from_vmpp))); opt_map (fun v -> ("snapshot_schedule", v)) (Some ((rpc_of_ref_VMSS) (x.vM_snapshot_schedule))); opt_map (fun v -> ("is_vmss_snapshot", v)) (Some ((rpc_of_bool) (x.vM_is_vmss_snapshot))); opt_map (fun v -> ("appliance", v)) (Some ((rpc_of_ref_VM_appliance) (x.vM_appliance))); opt_map (fun v -> ("start_delay", v)) (Some ((rpc_of_int64) (x.vM_start_delay))); opt_map (fun v -> ("shutdown_delay", v)) (Some ((rpc_of_int64) (x.vM_shutdown_delay))); opt_map (fun v -> ("order", v)) (Some ((rpc_of_int64) (x.vM_order))); opt_map (fun v -> ("VGPUs", v)) (Some ((rpc_of_ref_VGPU_set) (x.vM_VGPUs))); opt_map (fun v -> ("attached_PCIs", v)) (Some ((rpc_of_ref_PCI_set) (x.vM_attached_PCIs))); opt_map (fun v -> ("suspend_SR", v)) (Some ((rpc_of_ref_SR) (x.vM_suspend_SR))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_int64) (x.vM_version))); opt_map (fun v -> ("generation_id", v)) (Some ((rpc_of_string) (x.vM_generation_id))); opt_map (fun v -> ("hardware_platform_version", v)) (Some ((rpc_of_int64) (x.vM_hardware_platform_version))); opt_map (fun v -> ("has_vendor_device", v)) (Some ((rpc_of_bool) (x.vM_has_vendor_device))); opt_map (fun v -> ("requires_reboot", v)) (Some ((rpc_of_bool) (x.vM_requires_reboot))); opt_map (fun v -> ("reference_label", v)) (Some ((rpc_of_string) (x.vM_reference_label))); opt_map (fun v -> ("domain_type", v)) (Some ((rpc_of_domain_type) (x.vM_domain_type))); opt_map (fun v -> ("NVRAM", v)) (Some ((rpc_of_string_to_string_map) (x.vM_NVRAM))) ])
let vM_t_of_rpc x = on_dict (fun x -> { vM_uuid = ((string_of_rpc (assocer "uuid" x None))); vM_allowed_operations = ((vm_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); vM_current_operations = ((string_to_vm_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); vM_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); vM_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); vM_power_state = ((vm_power_state_of_rpc (assocer "power_state" x (Some (Rpc.String "Halted"))))); vM_user_version = ((int64_of_rpc (assocer "user_version" x None))); vM_is_a_template = ((bool_of_rpc (assocer "is_a_template" x None))); vM_is_default_template = ((bool_of_rpc (assocer "is_default_template" x (Some (Rpc.Bool false))))); vM_suspend_VDI = ((ref_VDI_of_rpc (assocer "suspend_VDI" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_resident_on = ((ref_host_of_rpc (assocer "resident_on" x None))); vM_scheduled_to_be_resident_on = ((ref_host_of_rpc (assocer "scheduled_to_be_resident_on" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_affinity = ((ref_host_of_rpc (assocer "affinity" x None))); vM_memory_overhead = ((int64_of_rpc (assocer "memory_overhead" x (Some (Rpc.Int (0L)))))); vM_memory_target = ((int64_of_rpc (assocer "memory_target" x (Some (Rpc.Int (0L)))))); vM_memory_static_max = ((int64_of_rpc (assocer "memory_static_max" x None))); vM_memory_dynamic_max = ((int64_of_rpc (assocer "memory_dynamic_max" x None))); vM_memory_dynamic_min = ((int64_of_rpc (assocer "memory_dynamic_min" x None))); vM_memory_static_min = ((int64_of_rpc (assocer "memory_static_min" x None))); vM_VCPUs_params = ((string_to_string_map_of_rpc (assocer "VCPUs_params" x None))); vM_VCPUs_max = ((int64_of_rpc (assocer "VCPUs_max" x None))); vM_VCPUs_at_startup = ((int64_of_rpc (assocer "VCPUs_at_startup" x None))); vM_actions_after_shutdown = ((on_normal_exit_of_rpc (assocer "actions_after_shutdown" x None))); vM_actions_after_reboot = ((on_normal_exit_of_rpc (assocer "actions_after_reboot" x None))); vM_actions_after_crash = ((on_crash_behaviour_of_rpc (assocer "actions_after_crash" x None))); vM_consoles = ((ref_console_set_of_rpc (assocer "consoles" x (Some (Rpc.Enum []))))); vM_VIFs = ((ref_VIF_set_of_rpc (assocer "VIFs" x (Some (Rpc.Enum []))))); vM_VBDs = ((ref_VBD_set_of_rpc (assocer "VBDs" x (Some (Rpc.Enum []))))); vM_VUSBs = ((ref_VUSB_set_of_rpc (assocer "VUSBs" x (Some (Rpc.Enum []))))); vM_crash_dumps = ((ref_crashdump_set_of_rpc (assocer "crash_dumps" x (Some (Rpc.Enum []))))); vM_VTPMs = ((ref_VTPM_set_of_rpc (assocer "VTPMs" x (Some (Rpc.Enum []))))); vM_PV_bootloader = ((string_of_rpc (assocer "PV_bootloader" x None))); vM_PV_kernel = ((string_of_rpc (assocer "PV_kernel" x None))); vM_PV_ramdisk = ((string_of_rpc (assocer "PV_ramdisk" x None))); vM_PV_args = ((string_of_rpc (assocer "PV_args" x None))); vM_PV_bootloader_args = ((string_of_rpc (assocer "PV_bootloader_args" x None))); vM_PV_legacy_args = ((string_of_rpc (assocer "PV_legacy_args" x None))); vM_HVM_boot_policy = ((string_of_rpc (assocer "HVM_boot_policy" x None))); vM_HVM_boot_params = ((string_to_string_map_of_rpc (assocer "HVM_boot_params" x None))); vM_HVM_shadow_multiplier = ((float_of_rpc (assocer "HVM_shadow_multiplier" x (Some (Rpc.Float (1.000000)))))); vM_platform = ((string_to_string_map_of_rpc (assocer "platform" x None))); vM_PCI_bus = ((string_of_rpc (assocer "PCI_bus" x None))); vM_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); vM_domid = ((int64_of_rpc (assocer "domid" x None))); vM_domarch = ((string_of_rpc (assocer "domarch" x None))); vM_last_boot_CPU_flags = ((string_to_string_map_of_rpc (assocer "last_boot_CPU_flags" x (Some (Rpc.Dict []))))); vM_is_control_domain = ((bool_of_rpc (assocer "is_control_domain" x None))); vM_metrics = ((ref_VM_metrics_of_rpc (assocer "metrics" x None))); vM_guest_metrics = ((ref_VM_guest_metrics_of_rpc (assocer "guest_metrics" x None))); vM_last_booted_record = ((string_of_rpc (assocer "last_booted_record" x (Some (Rpc.String ""))))); vM_recommendations = ((string_of_rpc (assocer "recommendations" x None))); vM_xenstore_data = ((string_to_string_map_of_rpc (assocer "xenstore_data" x (Some (Rpc.Dict []))))); vM_ha_always_run = ((bool_of_rpc (assocer "ha_always_run" x (Some (Rpc.Bool false))))); vM_ha_restart_priority = ((string_of_rpc (assocer "ha_restart_priority" x (Some (Rpc.String ""))))); vM_is_a_snapshot = ((bool_of_rpc (assocer "is_a_snapshot" x (Some (Rpc.Bool false))))); vM_snapshot_of = ((ref_VM_of_rpc (assocer "snapshot_of" x (Some (Rpc.String ""))))); vM_snapshots = ((ref_VM_set_of_rpc (assocer "snapshots" x (Some (Rpc.Enum []))))); vM_snapshot_time = ((datetime_of_rpc (assocer "snapshot_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); vM_transportable_snapshot_id = ((string_of_rpc (assocer "transportable_snapshot_id" x (Some (Rpc.String ""))))); vM_blobs = ((string_to_ref_blob_map_of_rpc (assocer "blobs" x (Some (Rpc.Dict []))))); vM_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); vM_blocked_operations = ((vm_operations_to_string_map_of_rpc (assocer "blocked_operations" x (Some (Rpc.Dict []))))); vM_snapshot_info = ((string_to_string_map_of_rpc (assocer "snapshot_info" x (Some (Rpc.Dict []))))); vM_snapshot_metadata = ((string_of_rpc (assocer "snapshot_metadata" x (Some (Rpc.String ""))))); vM_parent = ((ref_VM_of_rpc (assocer "parent" x (Some (Rpc.String ""))))); vM_children = ((ref_VM_set_of_rpc (assocer "children" x (Some (Rpc.Enum []))))); vM_bios_strings = ((string_to_string_map_of_rpc (assocer "bios_strings" x (Some (Rpc.Dict []))))); vM_protection_policy = ((ref_VMPP_of_rpc (assocer "protection_policy" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_is_snapshot_from_vmpp = ((bool_of_rpc (assocer "is_snapshot_from_vmpp" x (Some (Rpc.Bool false))))); vM_snapshot_schedule = ((ref_VMSS_of_rpc (assocer "snapshot_schedule" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_is_vmss_snapshot = ((bool_of_rpc (assocer "is_vmss_snapshot" x (Some (Rpc.Bool false))))); vM_appliance = ((ref_VM_appliance_of_rpc (assocer "appliance" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_start_delay = ((int64_of_rpc (assocer "start_delay" x (Some (Rpc.Int (0L)))))); vM_shutdown_delay = ((int64_of_rpc (assocer "shutdown_delay" x (Some (Rpc.Int (0L)))))); vM_order = ((int64_of_rpc (assocer "order" x (Some (Rpc.Int (0L)))))); vM_VGPUs = ((ref_VGPU_set_of_rpc (assocer "VGPUs" x (Some (Rpc.Enum []))))); vM_attached_PCIs = ((ref_PCI_set_of_rpc (assocer "attached_PCIs" x (Some (Rpc.Enum []))))); vM_suspend_SR = ((ref_SR_of_rpc (assocer "suspend_SR" x (Some (Rpc.String "OpaqueRef:NULL"))))); vM_version = ((int64_of_rpc (assocer "version" x (Some (Rpc.Int (0L)))))); vM_generation_id = ((string_of_rpc (assocer "generation_id" x (Some (Rpc.String "0:0"))))); vM_hardware_platform_version = ((int64_of_rpc (assocer "hardware_platform_version" x (Some (Rpc.Int (0L)))))); vM_has_vendor_device = ((bool_of_rpc (assocer "has_vendor_device" x (Some (Rpc.Bool false))))); vM_requires_reboot = ((bool_of_rpc (assocer "requires_reboot" x (Some (Rpc.Bool false))))); vM_reference_label = ((string_of_rpc (assocer "reference_label" x (Some (Rpc.String ""))))); vM_domain_type = ((domain_type_of_rpc (assocer "domain_type" x (Some (Rpc.String "unspecified"))))); vM_NVRAM = ((string_to_string_map_of_rpc (assocer "NVRAM" x (Some (Rpc.Dict []))))) }) x
type ref_VM_to_vM_t_map = (ref_VM * vM_t) list [@@deriving rpc]
type vM_t_set = vM_t list [@@deriving rpc]
type vM_t_option = vM_t option [@@deriving rpc]

type pool_update_t = { pool_update_uuid : string; pool_update_name_label : string; pool_update_name_description : string; pool_update_version : string; pool_update_installation_size : int64; pool_update_key : string; pool_update_after_apply_guidance : update_after_apply_guidance_set; pool_update_vdi : ref_VDI; pool_update_hosts : ref_host_set; pool_update_other_config : string_to_string_map; pool_update_enforce_homogeneity : bool }
let rpc_of_pool_update_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pool_update_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.pool_update_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.pool_update_name_description))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.pool_update_version))); opt_map (fun v -> ("installation_size", v)) (Some ((rpc_of_int64) (x.pool_update_installation_size))); opt_map (fun v -> ("key", v)) (Some ((rpc_of_string) (x.pool_update_key))); opt_map (fun v -> ("after_apply_guidance", v)) (Some ((rpc_of_update_after_apply_guidance_set) (x.pool_update_after_apply_guidance))); opt_map (fun v -> ("vdi", v)) (Some ((rpc_of_ref_VDI) (x.pool_update_vdi))); opt_map (fun v -> ("hosts", v)) (Some ((rpc_of_ref_host_set) (x.pool_update_hosts))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_update_other_config))); opt_map (fun v -> ("enforce_homogeneity", v)) (Some ((rpc_of_bool) (x.pool_update_enforce_homogeneity))) ])
let pool_update_t_of_rpc x = on_dict (fun x -> { pool_update_uuid = ((string_of_rpc (assocer "uuid" x None))); pool_update_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); pool_update_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); pool_update_version = ((string_of_rpc (assocer "version" x (Some (Rpc.String ""))))); pool_update_installation_size = ((int64_of_rpc (assocer "installation_size" x (Some (Rpc.Int (0L)))))); pool_update_key = ((string_of_rpc (assocer "key" x (Some (Rpc.String ""))))); pool_update_after_apply_guidance = ((update_after_apply_guidance_set_of_rpc (assocer "after_apply_guidance" x (Some (Rpc.Enum []))))); pool_update_vdi = ((ref_VDI_of_rpc (assocer "vdi" x None))); pool_update_hosts = ((ref_host_set_of_rpc (assocer "hosts" x (Some (Rpc.Enum []))))); pool_update_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); pool_update_enforce_homogeneity = ((bool_of_rpc (assocer "enforce_homogeneity" x (Some (Rpc.Bool false))))) }) x
type ref_pool_update_to_pool_update_t_map = (ref_pool_update * pool_update_t) list [@@deriving rpc]
type pool_update_t_set = pool_update_t list [@@deriving rpc]
type pool_update_t_option = pool_update_t option [@@deriving rpc]

type pool_patch_t = { pool_patch_uuid : string; pool_patch_name_label : string; pool_patch_name_description : string; pool_patch_version : string; pool_patch_size : int64; pool_patch_pool_applied : bool; pool_patch_host_patches : ref_host_patch_set; pool_patch_after_apply_guidance : after_apply_guidance_set; pool_patch_pool_update : ref_pool_update; pool_patch_other_config : string_to_string_map }
let rpc_of_pool_patch_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pool_patch_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.pool_patch_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.pool_patch_name_description))); opt_map (fun v -> ("version", v)) (Some ((rpc_of_string) (x.pool_patch_version))); opt_map (fun v -> ("size", v)) (Some ((rpc_of_int64) (x.pool_patch_size))); opt_map (fun v -> ("pool_applied", v)) (Some ((rpc_of_bool) (x.pool_patch_pool_applied))); opt_map (fun v -> ("host_patches", v)) (Some ((rpc_of_ref_host_patch_set) (x.pool_patch_host_patches))); opt_map (fun v -> ("after_apply_guidance", v)) (Some ((rpc_of_after_apply_guidance_set) (x.pool_patch_after_apply_guidance))); opt_map (fun v -> ("pool_update", v)) (Some ((rpc_of_ref_pool_update) (x.pool_patch_pool_update))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_patch_other_config))) ])
let pool_patch_t_of_rpc x = on_dict (fun x -> { pool_patch_uuid = ((string_of_rpc (assocer "uuid" x None))); pool_patch_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); pool_patch_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); pool_patch_version = ((string_of_rpc (assocer "version" x (Some (Rpc.String ""))))); pool_patch_size = ((int64_of_rpc (assocer "size" x (Some (Rpc.Int (0L)))))); pool_patch_pool_applied = ((bool_of_rpc (assocer "pool_applied" x (Some (Rpc.Bool false))))); pool_patch_host_patches = ((ref_host_patch_set_of_rpc (assocer "host_patches" x (Some (Rpc.Enum []))))); pool_patch_after_apply_guidance = ((after_apply_guidance_set_of_rpc (assocer "after_apply_guidance" x (Some (Rpc.Enum []))))); pool_patch_pool_update = ((ref_pool_update_of_rpc (assocer "pool_update" x (Some (Rpc.String "OpaqueRef:NULL"))))); pool_patch_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_pool_patch_to_pool_patch_t_map = (ref_pool_patch * pool_patch_t) list [@@deriving rpc]
type pool_patch_t_set = pool_patch_t list [@@deriving rpc]
type pool_patch_t_option = pool_patch_t option [@@deriving rpc]

type pool_t = { pool_uuid : string; pool_name_label : string; pool_name_description : string; pool_master : ref_host; pool_default_SR : ref_SR; pool_suspend_image_SR : ref_SR; pool_crash_dump_SR : ref_SR; pool_other_config : string_to_string_map; pool_ha_enabled : bool; pool_ha_configuration : string_to_string_map; pool_ha_statefiles : string_set; pool_ha_host_failures_to_tolerate : int64; pool_ha_plan_exists_for : int64; pool_ha_allow_overcommit : bool; pool_ha_overcommitted : bool; pool_blobs : string_to_ref_blob_map; pool_tags : string_set; pool_gui_config : string_to_string_map; pool_health_check_config : string_to_string_map; pool_wlb_url : string; pool_wlb_username : string; pool_wlb_enabled : bool; pool_wlb_verify_cert : bool; pool_redo_log_enabled : bool; pool_redo_log_vdi : ref_VDI; pool_vswitch_controller : string; pool_restrictions : string_to_string_map; pool_metadata_VDIs : ref_VDI_set; pool_ha_cluster_stack : string; pool_allowed_operations : pool_allowed_operations_set; pool_current_operations : string_to_pool_allowed_operations_map; pool_guest_agent_config : string_to_string_map; pool_cpu_info : string_to_string_map; pool_policy_no_vendor_device : bool; pool_live_patching_disabled : bool; pool_igmp_snooping_enabled : bool; pool_uefi_certificates : string; pool_is_psr_pending : bool }
let rpc_of_pool_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.pool_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.pool_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.pool_name_description))); opt_map (fun v -> ("master", v)) (Some ((rpc_of_ref_host) (x.pool_master))); opt_map (fun v -> ("default_SR", v)) (Some ((rpc_of_ref_SR) (x.pool_default_SR))); opt_map (fun v -> ("suspend_image_SR", v)) (Some ((rpc_of_ref_SR) (x.pool_suspend_image_SR))); opt_map (fun v -> ("crash_dump_SR", v)) (Some ((rpc_of_ref_SR) (x.pool_crash_dump_SR))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_other_config))); opt_map (fun v -> ("ha_enabled", v)) (Some ((rpc_of_bool) (x.pool_ha_enabled))); opt_map (fun v -> ("ha_configuration", v)) (Some ((rpc_of_string_to_string_map) (x.pool_ha_configuration))); opt_map (fun v -> ("ha_statefiles", v)) (Some ((rpc_of_string_set) (x.pool_ha_statefiles))); opt_map (fun v -> ("ha_host_failures_to_tolerate", v)) (Some ((rpc_of_int64) (x.pool_ha_host_failures_to_tolerate))); opt_map (fun v -> ("ha_plan_exists_for", v)) (Some ((rpc_of_int64) (x.pool_ha_plan_exists_for))); opt_map (fun v -> ("ha_allow_overcommit", v)) (Some ((rpc_of_bool) (x.pool_ha_allow_overcommit))); opt_map (fun v -> ("ha_overcommitted", v)) (Some ((rpc_of_bool) (x.pool_ha_overcommitted))); opt_map (fun v -> ("blobs", v)) (Some ((rpc_of_string_to_ref_blob_map) (x.pool_blobs))); opt_map (fun v -> ("tags", v)) (Some ((rpc_of_string_set) (x.pool_tags))); opt_map (fun v -> ("gui_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_gui_config))); opt_map (fun v -> ("health_check_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_health_check_config))); opt_map (fun v -> ("wlb_url", v)) (Some ((rpc_of_string) (x.pool_wlb_url))); opt_map (fun v -> ("wlb_username", v)) (Some ((rpc_of_string) (x.pool_wlb_username))); opt_map (fun v -> ("wlb_enabled", v)) (Some ((rpc_of_bool) (x.pool_wlb_enabled))); opt_map (fun v -> ("wlb_verify_cert", v)) (Some ((rpc_of_bool) (x.pool_wlb_verify_cert))); opt_map (fun v -> ("redo_log_enabled", v)) (Some ((rpc_of_bool) (x.pool_redo_log_enabled))); opt_map (fun v -> ("redo_log_vdi", v)) (Some ((rpc_of_ref_VDI) (x.pool_redo_log_vdi))); opt_map (fun v -> ("vswitch_controller", v)) (Some ((rpc_of_string) (x.pool_vswitch_controller))); opt_map (fun v -> ("restrictions", v)) (Some ((rpc_of_string_to_string_map) (x.pool_restrictions))); opt_map (fun v -> ("metadata_VDIs", v)) (Some ((rpc_of_ref_VDI_set) (x.pool_metadata_VDIs))); opt_map (fun v -> ("ha_cluster_stack", v)) (Some ((rpc_of_string) (x.pool_ha_cluster_stack))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_pool_allowed_operations_set) (x.pool_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_pool_allowed_operations_map) (x.pool_current_operations))); opt_map (fun v -> ("guest_agent_config", v)) (Some ((rpc_of_string_to_string_map) (x.pool_guest_agent_config))); opt_map (fun v -> ("cpu_info", v)) (Some ((rpc_of_string_to_string_map) (x.pool_cpu_info))); opt_map (fun v -> ("policy_no_vendor_device", v)) (Some ((rpc_of_bool) (x.pool_policy_no_vendor_device))); opt_map (fun v -> ("live_patching_disabled", v)) (Some ((rpc_of_bool) (x.pool_live_patching_disabled))); opt_map (fun v -> ("igmp_snooping_enabled", v)) (Some ((rpc_of_bool) (x.pool_igmp_snooping_enabled))); opt_map (fun v -> ("uefi_certificates", v)) (Some ((rpc_of_string) (x.pool_uefi_certificates))); opt_map (fun v -> ("is_psr_pending", v)) (Some ((rpc_of_bool) (x.pool_is_psr_pending))) ])
let pool_t_of_rpc x = on_dict (fun x -> { pool_uuid = ((string_of_rpc (assocer "uuid" x None))); pool_name_label = ((string_of_rpc (assocer "name_label" x None))); pool_name_description = ((string_of_rpc (assocer "name_description" x None))); pool_master = ((ref_host_of_rpc (assocer "master" x None))); pool_default_SR = ((ref_SR_of_rpc (assocer "default_SR" x None))); pool_suspend_image_SR = ((ref_SR_of_rpc (assocer "suspend_image_SR" x None))); pool_crash_dump_SR = ((ref_SR_of_rpc (assocer "crash_dump_SR" x None))); pool_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x None))); pool_ha_enabled = ((bool_of_rpc (assocer "ha_enabled" x (Some (Rpc.Bool false))))); pool_ha_configuration = ((string_to_string_map_of_rpc (assocer "ha_configuration" x (Some (Rpc.Dict []))))); pool_ha_statefiles = ((string_set_of_rpc (assocer "ha_statefiles" x (Some (Rpc.Enum []))))); pool_ha_host_failures_to_tolerate = ((int64_of_rpc (assocer "ha_host_failures_to_tolerate" x (Some (Rpc.Int (0L)))))); pool_ha_plan_exists_for = ((int64_of_rpc (assocer "ha_plan_exists_for" x (Some (Rpc.Int (0L)))))); pool_ha_allow_overcommit = ((bool_of_rpc (assocer "ha_allow_overcommit" x (Some (Rpc.Bool false))))); pool_ha_overcommitted = ((bool_of_rpc (assocer "ha_overcommitted" x (Some (Rpc.Bool false))))); pool_blobs = ((string_to_ref_blob_map_of_rpc (assocer "blobs" x (Some (Rpc.Dict []))))); pool_tags = ((string_set_of_rpc (assocer "tags" x (Some (Rpc.Enum []))))); pool_gui_config = ((string_to_string_map_of_rpc (assocer "gui_config" x (Some (Rpc.Dict []))))); pool_health_check_config = ((string_to_string_map_of_rpc (assocer "health_check_config" x (Some (Rpc.Dict []))))); pool_wlb_url = ((string_of_rpc (assocer "wlb_url" x (Some (Rpc.String ""))))); pool_wlb_username = ((string_of_rpc (assocer "wlb_username" x (Some (Rpc.String ""))))); pool_wlb_enabled = ((bool_of_rpc (assocer "wlb_enabled" x (Some (Rpc.Bool false))))); pool_wlb_verify_cert = ((bool_of_rpc (assocer "wlb_verify_cert" x (Some (Rpc.Bool false))))); pool_redo_log_enabled = ((bool_of_rpc (assocer "redo_log_enabled" x (Some (Rpc.Bool false))))); pool_redo_log_vdi = ((ref_VDI_of_rpc (assocer "redo_log_vdi" x (Some (Rpc.String "OpaqueRef:NULL"))))); pool_vswitch_controller = ((string_of_rpc (assocer "vswitch_controller" x (Some (Rpc.String ""))))); pool_restrictions = ((string_to_string_map_of_rpc (assocer "restrictions" x (Some (Rpc.Dict []))))); pool_metadata_VDIs = ((ref_VDI_set_of_rpc (assocer "metadata_VDIs" x (Some (Rpc.Enum []))))); pool_ha_cluster_stack = ((string_of_rpc (assocer "ha_cluster_stack" x (Some (Rpc.String ""))))); pool_allowed_operations = ((pool_allowed_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); pool_current_operations = ((string_to_pool_allowed_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); pool_guest_agent_config = ((string_to_string_map_of_rpc (assocer "guest_agent_config" x (Some (Rpc.Dict []))))); pool_cpu_info = ((string_to_string_map_of_rpc (assocer "cpu_info" x (Some (Rpc.Dict []))))); pool_policy_no_vendor_device = ((bool_of_rpc (assocer "policy_no_vendor_device" x (Some (Rpc.Bool false))))); pool_live_patching_disabled = ((bool_of_rpc (assocer "live_patching_disabled" x (Some (Rpc.Bool false))))); pool_igmp_snooping_enabled = ((bool_of_rpc (assocer "igmp_snooping_enabled" x (Some (Rpc.Bool false))))); pool_uefi_certificates = ((string_of_rpc (assocer "uefi_certificates" x (Some (Rpc.String ""))))); pool_is_psr_pending = ((bool_of_rpc (assocer "is_psr_pending" x (Some (Rpc.Bool false))))) }) x
type ref_pool_to_pool_t_map = (ref_pool * pool_t) list [@@deriving rpc]
type pool_t_set = pool_t list [@@deriving rpc]
type pool_t_option = pool_t option [@@deriving rpc]

type task_t = { task_uuid : string; task_name_label : string; task_name_description : string; task_allowed_operations : task_allowed_operations_set; task_current_operations : string_to_task_allowed_operations_map; task_created : datetime; task_finished : datetime; task_status : task_status_type; task_resident_on : ref_host; task_progress : float; task_type : string; task_result : string; task_error_info : string_set; task_other_config : string_to_string_map; task_subtask_of : ref_task; task_subtasks : ref_task_set; task_backtrace : string }
let rpc_of_task_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.task_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.task_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.task_name_description))); opt_map (fun v -> ("allowed_operations", v)) (Some ((rpc_of_task_allowed_operations_set) (x.task_allowed_operations))); opt_map (fun v -> ("current_operations", v)) (Some ((rpc_of_string_to_task_allowed_operations_map) (x.task_current_operations))); opt_map (fun v -> ("created", v)) (Some ((rpc_of_datetime) (x.task_created))); opt_map (fun v -> ("finished", v)) (Some ((rpc_of_datetime) (x.task_finished))); opt_map (fun v -> ("status", v)) (Some ((rpc_of_task_status_type) (x.task_status))); opt_map (fun v -> ("resident_on", v)) (Some ((rpc_of_ref_host) (x.task_resident_on))); opt_map (fun v -> ("progress", v)) (Some ((rpc_of_float) (x.task_progress))); opt_map (fun v -> ("type", v)) (Some ((rpc_of_string) (x.task_type))); opt_map (fun v -> ("result", v)) (Some ((rpc_of_string) (x.task_result))); opt_map (fun v -> ("error_info", v)) (Some ((rpc_of_string_set) (x.task_error_info))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.task_other_config))); opt_map (fun v -> ("subtask_of", v)) (Some ((rpc_of_ref_task) (x.task_subtask_of))); opt_map (fun v -> ("subtasks", v)) (Some ((rpc_of_ref_task_set) (x.task_subtasks))); opt_map (fun v -> ("backtrace", v)) (Some ((rpc_of_string) (x.task_backtrace))) ])
let task_t_of_rpc x = on_dict (fun x -> { task_uuid = ((string_of_rpc (assocer "uuid" x None))); task_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); task_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); task_allowed_operations = ((task_allowed_operations_set_of_rpc (assocer "allowed_operations" x (Some (Rpc.Enum []))))); task_current_operations = ((string_to_task_allowed_operations_map_of_rpc (assocer "current_operations" x (Some (Rpc.Dict []))))); task_created = ((datetime_of_rpc (assocer "created" x None))); task_finished = ((datetime_of_rpc (assocer "finished" x None))); task_status = ((task_status_type_of_rpc (assocer "status" x None))); task_resident_on = ((ref_host_of_rpc (assocer "resident_on" x None))); task_progress = ((float_of_rpc (assocer "progress" x None))); task_type = ((string_of_rpc (assocer "type" x None))); task_result = ((string_of_rpc (assocer "result" x None))); task_error_info = ((string_set_of_rpc (assocer "error_info" x None))); task_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); task_subtask_of = ((ref_task_of_rpc (assocer "subtask_of" x (Some (Rpc.String ""))))); task_subtasks = ((ref_task_set_of_rpc (assocer "subtasks" x (Some (Rpc.Enum []))))); task_backtrace = ((string_of_rpc (assocer "backtrace" x (Some (Rpc.String "()"))))) }) x
type ref_task_to_task_t_map = (ref_task * task_t) list [@@deriving rpc]
type task_t_set = task_t list [@@deriving rpc]
type task_t_option = task_t option [@@deriving rpc]

type role_t = { role_uuid : string; role_name_label : string; role_name_description : string; role_subroles : ref_role_set }
let rpc_of_role_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.role_uuid))); opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.role_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.role_name_description))); opt_map (fun v -> ("subroles", v)) (Some ((rpc_of_ref_role_set) (x.role_subroles))) ])
let role_t_of_rpc x = on_dict (fun x -> { role_uuid = ((string_of_rpc (assocer "uuid" x None))); role_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); role_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); role_subroles = ((ref_role_set_of_rpc (assocer "subroles" x (Some (Rpc.Enum []))))) }) x
type ref_role_to_role_t_map = (ref_role * role_t) list [@@deriving rpc]
type role_t_set = role_t list [@@deriving rpc]
type role_t_option = role_t option [@@deriving rpc]

type subject_t = { subject_uuid : string; subject_subject_identifier : string; subject_other_config : string_to_string_map; subject_roles : ref_role_set }
let rpc_of_subject_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.subject_uuid))); opt_map (fun v -> ("subject_identifier", v)) (Some ((rpc_of_string) (x.subject_subject_identifier))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.subject_other_config))); opt_map (fun v -> ("roles", v)) (Some ((rpc_of_ref_role_set) (x.subject_roles))) ])
let subject_t_of_rpc x = on_dict (fun x -> { subject_uuid = ((string_of_rpc (assocer "uuid" x None))); subject_subject_identifier = ((string_of_rpc (assocer "subject_identifier" x (Some (Rpc.String ""))))); subject_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); subject_roles = ((ref_role_set_of_rpc (assocer "roles" x (Some (Rpc.Enum []))))) }) x
type ref_subject_to_subject_t_map = (ref_subject * subject_t) list [@@deriving rpc]
type subject_t_set = subject_t list [@@deriving rpc]
type subject_t_option = subject_t option [@@deriving rpc]

type event_t = { event_id : int64; event_timestamp : datetime; event_class : string; event_operation : event_operation; event_ref : string; event_obj_uuid : string }
let rpc_of_event_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("id", v)) (Some ((rpc_of_int64) (x.event_id))); opt_map (fun v -> ("timestamp", v)) (Some ((rpc_of_datetime) (x.event_timestamp))); opt_map (fun v -> ("class", v)) (Some ((rpc_of_string) (x.event_class))); opt_map (fun v -> ("operation", v)) (Some ((rpc_of_event_operation) (x.event_operation))); opt_map (fun v -> ("ref", v)) (Some ((rpc_of_string) (x.event_ref))); opt_map (fun v -> ("obj_uuid", v)) (Some ((rpc_of_string) (x.event_obj_uuid))) ])
let event_t_of_rpc x = on_dict (fun x -> { event_id = ((int64_of_rpc (assocer "id" x None))); event_timestamp = ((datetime_of_rpc (assocer "timestamp" x None))); event_class = ((string_of_rpc (assocer "class" x None))); event_operation = ((event_operation_of_rpc (assocer "operation" x None))); event_ref = ((string_of_rpc (assocer "ref" x None))); event_obj_uuid = ((string_of_rpc (assocer "obj_uuid" x None))) }) x
type ref_event_to_event_t_map = (ref_event * event_t) list [@@deriving rpc]
type event_t_set = event_t list [@@deriving rpc]
type event_t_option = event_t option [@@deriving rpc]

type data_source_t = { data_source_name_label : string; data_source_name_description : string; data_source_enabled : bool; data_source_standard : bool; data_source_units : string; data_source_min : float; data_source_max : float; data_source_value : float }
let rpc_of_data_source_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("name_label", v)) (Some ((rpc_of_string) (x.data_source_name_label))); opt_map (fun v -> ("name_description", v)) (Some ((rpc_of_string) (x.data_source_name_description))); opt_map (fun v -> ("enabled", v)) (Some ((rpc_of_bool) (x.data_source_enabled))); opt_map (fun v -> ("standard", v)) (Some ((rpc_of_bool) (x.data_source_standard))); opt_map (fun v -> ("units", v)) (Some ((rpc_of_string) (x.data_source_units))); opt_map (fun v -> ("min", v)) (Some ((rpc_of_float) (x.data_source_min))); opt_map (fun v -> ("max", v)) (Some ((rpc_of_float) (x.data_source_max))); opt_map (fun v -> ("value", v)) (Some ((rpc_of_float) (x.data_source_value))) ])
let data_source_t_of_rpc x = on_dict (fun x -> { data_source_name_label = ((string_of_rpc (assocer "name_label" x (Some (Rpc.String ""))))); data_source_name_description = ((string_of_rpc (assocer "name_description" x (Some (Rpc.String ""))))); data_source_enabled = ((bool_of_rpc (assocer "enabled" x None))); data_source_standard = ((bool_of_rpc (assocer "standard" x None))); data_source_units = ((string_of_rpc (assocer "units" x None))); data_source_min = ((float_of_rpc (assocer "min" x None))); data_source_max = ((float_of_rpc (assocer "max" x None))); data_source_value = ((float_of_rpc (assocer "value" x None))) }) x
type ref_data_source_to_data_source_t_map = (ref_data_source * data_source_t) list [@@deriving rpc]
type data_source_t_set = data_source_t list [@@deriving rpc]
type data_source_t_option = data_source_t option [@@deriving rpc]

type probe_result_t = { probe_result_configuration : string_to_string_map; probe_result_complete : bool; probe_result_sr : sr_stat_t_option; probe_result_extra_info : string_to_string_map }
let rpc_of_probe_result_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("configuration", v)) (Some ((rpc_of_string_to_string_map) (x.probe_result_configuration))); opt_map (fun v -> ("complete", v)) (Some ((rpc_of_bool) (x.probe_result_complete))); opt_map (fun v -> ("sr", v)) (opt_map (rpc_of_sr_stat_t) (x.probe_result_sr)); opt_map (fun v -> ("extra_info", v)) (Some ((rpc_of_string_to_string_map) (x.probe_result_extra_info))) ])
let probe_result_t_of_rpc x = on_dict (fun x -> { probe_result_configuration = ((string_to_string_map_of_rpc (assocer "configuration" x None))); probe_result_complete = ((bool_of_rpc (assocer "complete" x None))); probe_result_sr = (if List.mem_assoc "sr" x then Some ((sr_stat_t_of_rpc (assocer "sr" x None))) else None); probe_result_extra_info = ((string_to_string_map_of_rpc (assocer "extra_info" x None))) }) x
type ref_probe_result_to_probe_result_t_map = (ref_probe_result * probe_result_t) list [@@deriving rpc]
type probe_result_t_set = probe_result_t list [@@deriving rpc]
type probe_result_t_option = probe_result_t option [@@deriving rpc]

type vdi_nbd_server_info_t = { vdi_nbd_server_info_exportname : string; vdi_nbd_server_info_address : string; vdi_nbd_server_info_port : int64; vdi_nbd_server_info_cert : string; vdi_nbd_server_info_subject : string }
let rpc_of_vdi_nbd_server_info_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("exportname", v)) (Some ((rpc_of_string) (x.vdi_nbd_server_info_exportname))); opt_map (fun v -> ("address", v)) (Some ((rpc_of_string) (x.vdi_nbd_server_info_address))); opt_map (fun v -> ("port", v)) (Some ((rpc_of_int64) (x.vdi_nbd_server_info_port))); opt_map (fun v -> ("cert", v)) (Some ((rpc_of_string) (x.vdi_nbd_server_info_cert))); opt_map (fun v -> ("subject", v)) (Some ((rpc_of_string) (x.vdi_nbd_server_info_subject))) ])
let vdi_nbd_server_info_t_of_rpc x = on_dict (fun x -> { vdi_nbd_server_info_exportname = ((string_of_rpc (assocer "exportname" x None))); vdi_nbd_server_info_address = ((string_of_rpc (assocer "address" x None))); vdi_nbd_server_info_port = ((int64_of_rpc (assocer "port" x None))); vdi_nbd_server_info_cert = ((string_of_rpc (assocer "cert" x None))); vdi_nbd_server_info_subject = ((string_of_rpc (assocer "subject" x None))) }) x
type ref_vdi_nbd_server_info_to_vdi_nbd_server_info_t_map = (ref_vdi_nbd_server_info * vdi_nbd_server_info_t) list [@@deriving rpc]
type vdi_nbd_server_info_t_set = vdi_nbd_server_info_t list [@@deriving rpc]
type vdi_nbd_server_info_t_option = vdi_nbd_server_info_t option [@@deriving rpc]

type message_t = { message_uuid : string; message_name : string; message_priority : int64; message_cls : cls; message_obj_uuid : string; message_timestamp : datetime; message_body : string }
let rpc_of_message_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.message_uuid))); opt_map (fun v -> ("name", v)) (Some ((rpc_of_string) (x.message_name))); opt_map (fun v -> ("priority", v)) (Some ((rpc_of_int64) (x.message_priority))); opt_map (fun v -> ("cls", v)) (Some ((rpc_of_cls) (x.message_cls))); opt_map (fun v -> ("obj_uuid", v)) (Some ((rpc_of_string) (x.message_obj_uuid))); opt_map (fun v -> ("timestamp", v)) (Some ((rpc_of_datetime) (x.message_timestamp))); opt_map (fun v -> ("body", v)) (Some ((rpc_of_string) (x.message_body))) ])
let message_t_of_rpc x = on_dict (fun x -> { message_uuid = ((string_of_rpc (assocer "uuid" x None))); message_name = ((string_of_rpc (assocer "name" x None))); message_priority = ((int64_of_rpc (assocer "priority" x None))); message_cls = ((cls_of_rpc (assocer "cls" x None))); message_obj_uuid = ((string_of_rpc (assocer "obj_uuid" x None))); message_timestamp = ((datetime_of_rpc (assocer "timestamp" x None))); message_body = ((string_of_rpc (assocer "body" x None))) }) x
type ref_message_to_message_t_map = (ref_message * message_t) list [@@deriving rpc]
type message_t_set = message_t list [@@deriving rpc]
type message_t_option = message_t option [@@deriving rpc]

type user_t = { user_uuid : string; user_short_name : string; user_fullname : string; user_other_config : string_to_string_map }
let rpc_of_user_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.user_uuid))); opt_map (fun v -> ("short_name", v)) (Some ((rpc_of_string) (x.user_short_name))); opt_map (fun v -> ("fullname", v)) (Some ((rpc_of_string) (x.user_fullname))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.user_other_config))) ])
let user_t_of_rpc x = on_dict (fun x -> { user_uuid = ((string_of_rpc (assocer "uuid" x None))); user_short_name = ((string_of_rpc (assocer "short_name" x None))); user_fullname = ((string_of_rpc (assocer "fullname" x None))); user_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))) }) x
type ref_user_to_user_t_map = (ref_user * user_t) list [@@deriving rpc]
type user_t_set = user_t list [@@deriving rpc]
type user_t_option = user_t option [@@deriving rpc]

type vTPM_t = { vTPM_uuid : string; vTPM_VM : ref_VM; vTPM_backend : ref_VM }
let rpc_of_vTPM_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.vTPM_uuid))); opt_map (fun v -> ("VM", v)) (Some ((rpc_of_ref_VM) (x.vTPM_VM))); opt_map (fun v -> ("backend", v)) (Some ((rpc_of_ref_VM) (x.vTPM_backend))) ])
let vTPM_t_of_rpc x = on_dict (fun x -> { vTPM_uuid = ((string_of_rpc (assocer "uuid" x None))); vTPM_VM = ((ref_VM_of_rpc (assocer "VM" x None))); vTPM_backend = ((ref_VM_of_rpc (assocer "backend" x None))) }) x
type ref_VTPM_to_vTPM_t_map = (ref_VTPM * vTPM_t) list [@@deriving rpc]
type vTPM_t_set = vTPM_t list [@@deriving rpc]
type vTPM_t_option = vTPM_t option [@@deriving rpc]

type lVHD_t = { lVHD_uuid : string }
let rpc_of_lVHD_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.lVHD_uuid))) ])
let lVHD_t_of_rpc x = on_dict (fun x -> { lVHD_uuid = ((string_of_rpc (assocer "uuid" x None))) }) x
type ref_LVHD_to_lVHD_t_map = (ref_LVHD * lVHD_t) list [@@deriving rpc]
type lVHD_t_set = lVHD_t list [@@deriving rpc]
type lVHD_t_option = lVHD_t option [@@deriving rpc]

type session_t = { session_uuid : string; session_this_host : ref_host; session_this_user : ref_user; session_last_active : datetime; session_pool : bool; session_other_config : string_to_string_map; session_is_local_superuser : bool; session_subject : ref_subject; session_validation_time : datetime; session_auth_user_sid : string; session_auth_user_name : string; session_rbac_permissions : string_set; session_tasks : ref_task_set; session_parent : ref_session; session_originator : string }
let rpc_of_session_t x = Rpc.Dict (unbox_list [ opt_map (fun v -> ("uuid", v)) (Some ((rpc_of_string) (x.session_uuid))); opt_map (fun v -> ("this_host", v)) (Some ((rpc_of_ref_host) (x.session_this_host))); opt_map (fun v -> ("this_user", v)) (Some ((rpc_of_ref_user) (x.session_this_user))); opt_map (fun v -> ("last_active", v)) (Some ((rpc_of_datetime) (x.session_last_active))); opt_map (fun v -> ("pool", v)) (Some ((rpc_of_bool) (x.session_pool))); opt_map (fun v -> ("other_config", v)) (Some ((rpc_of_string_to_string_map) (x.session_other_config))); opt_map (fun v -> ("is_local_superuser", v)) (Some ((rpc_of_bool) (x.session_is_local_superuser))); opt_map (fun v -> ("subject", v)) (Some ((rpc_of_ref_subject) (x.session_subject))); opt_map (fun v -> ("validation_time", v)) (Some ((rpc_of_datetime) (x.session_validation_time))); opt_map (fun v -> ("auth_user_sid", v)) (Some ((rpc_of_string) (x.session_auth_user_sid))); opt_map (fun v -> ("auth_user_name", v)) (Some ((rpc_of_string) (x.session_auth_user_name))); opt_map (fun v -> ("rbac_permissions", v)) (Some ((rpc_of_string_set) (x.session_rbac_permissions))); opt_map (fun v -> ("tasks", v)) (Some ((rpc_of_ref_task_set) (x.session_tasks))); opt_map (fun v -> ("parent", v)) (Some ((rpc_of_ref_session) (x.session_parent))); opt_map (fun v -> ("originator", v)) (Some ((rpc_of_string) (x.session_originator))) ])
let session_t_of_rpc x = on_dict (fun x -> { session_uuid = ((string_of_rpc (assocer "uuid" x None))); session_this_host = ((ref_host_of_rpc (assocer "this_host" x None))); session_this_user = ((ref_user_of_rpc (assocer "this_user" x None))); session_last_active = ((datetime_of_rpc (assocer "last_active" x None))); session_pool = ((bool_of_rpc (assocer "pool" x None))); session_other_config = ((string_to_string_map_of_rpc (assocer "other_config" x (Some (Rpc.Dict []))))); session_is_local_superuser = ((bool_of_rpc (assocer "is_local_superuser" x (Some (Rpc.Bool false))))); session_subject = ((ref_subject_of_rpc (assocer "subject" x (Some (Rpc.String "OpaqueRef:NULL"))))); session_validation_time = ((datetime_of_rpc (assocer "validation_time" x (Some (Rpc.String "19700101T00:00:00Z"))))); session_auth_user_sid = ((string_of_rpc (assocer "auth_user_sid" x (Some (Rpc.String ""))))); session_auth_user_name = ((string_of_rpc (assocer "auth_user_name" x (Some (Rpc.String ""))))); session_rbac_permissions = ((string_set_of_rpc (assocer "rbac_permissions" x (Some (Rpc.Enum []))))); session_tasks = ((ref_task_set_of_rpc (assocer "tasks" x (Some (Rpc.Enum []))))); session_parent = ((ref_session_of_rpc (assocer "parent" x (Some (Rpc.String "OpaqueRef:NULL"))))); session_originator = ((string_of_rpc (assocer "originator" x (Some (Rpc.String ""))))) }) x
type ref_session_to_session_t_map = (ref_session * session_t) list [@@deriving rpc]
type session_t_set = session_t list [@@deriving rpc]
type session_t_option = session_t option [@@deriving rpc]


module type API = sig

  module AsyncF : sig
    module Session : sig
      val create_from_db_file : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> filename:string -> ref_task
      val get_all_subject_identifiers : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val logout_subject_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> ref_task
    end
    module Subject : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:subject_t -> ref_task
    end
    module Role : sig
    end
    module Task : sig
      val cancel : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> task:ref_task -> ref_task
    end
    module Event : sig
      val register : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> classes:string_set -> ref_task
      val unregister : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> classes:string_set -> ref_task
    end
    module Pool : sig
      val join : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> master_address:string -> master_username:string -> master_password:string -> ref_task
      val join_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> master_address:string -> master_username:string -> master_password:string -> ref_task
      val eject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val initial_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val recover_slaves : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val hello : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host_uuid:string -> host_address:string -> ref_task
      val create_VLAN : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> vLAN:int64 -> ref_task
      val management_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> ref_task
      val create_VLAN_from_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> network:ref_network -> vLAN:int64 -> ref_task
      val slave_network_report : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> phydevs:string_to_string_map -> dev_to_mac:string_to_string_map -> dev_to_mtu:string_to_int64_map -> slave_host:ref_host -> ref_task
      val enable_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> heartbeat_srs:ref_SR_set -> configuration:string_to_string_map -> ref_task
      val disable_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val sync_database : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val designate_new_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val set_ha_host_failures_to_tolerate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:int64 -> ref_task
      val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pool:ref_pool -> name:string -> mime_type:string -> public:bool -> ref_task
      val ha_schedule_plan_recomputation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val enable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val disable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val initialize_wlb : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> wlb_url:string -> wlb_username:string -> wlb_password:string -> xenserver_username:string -> xenserver_password:string -> ref_task
      val deconfigure_wlb : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val send_wlb_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> config:string_to_string_map -> ref_task
      val retrieve_wlb_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val retrieve_wlb_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val send_test_post : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:string -> port:int64 -> body:string -> ref_task
      val certificate_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> cert:string -> ref_task
      val certificate_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> ref_task
      val certificate_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val crl_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> cert:string -> ref_task
      val crl_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> ref_task
      val crl_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val certificate_sync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val enable_redo_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val disable_redo_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val audit_log_append : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> line:string -> ref_task
      val set_vswitch_controller : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> address:string -> ref_task
      val enable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_task
      val disable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_task
      val get_license_state : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_task
      val apply_edition : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> edition:string -> ref_task
      val enable_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_task
      val disable_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_task
      val set_igmp_snooping_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> ref_task
      val has_extension : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> name:string -> ref_task
      val add_to_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> value:string -> ref_task
      val remove_from_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> ref_task
      val rotate_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val set_https_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> ref_task
    end
    module Pool_patch : sig
      val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> ref_task
      val pool_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_task
      val precheck : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> ref_task
      val clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_task
      val pool_clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_task
      val clean_on_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> ref_task
    end
    module Pool_update : sig
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_task
      val precheck : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> host:ref_host -> ref_task
      val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> host:ref_host -> ref_task
      val pool_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_task
      val pool_clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_task
      val attach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> use_localhost_proxy:bool -> ref_task
      val detach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_task
      val resync_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
    end
    module VM : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> power_state:vm_power_state -> user_version:int64 -> is_a_template:bool -> suspend_VDI:ref_VDI -> affinity:ref_host -> memory_target:int64 -> memory_static_max:int64 -> memory_dynamic_max:int64 -> memory_dynamic_min:int64 -> memory_static_min:int64 -> vCPUs_params:string_to_string_map -> vCPUs_max:int64 -> vCPUs_at_startup:int64 -> actions_after_shutdown:on_normal_exit -> actions_after_reboot:on_normal_exit -> actions_after_crash:on_crash_behaviour -> pV_bootloader:string -> pV_kernel:string -> pV_ramdisk:string -> pV_args:string -> pV_bootloader_args:string -> pV_legacy_args:string -> hVM_boot_policy:string -> hVM_boot_params:string_to_string_map -> hVM_shadow_multiplier:float -> platform:string_to_string_map -> pCI_bus:string -> other_config:string_to_string_map -> last_boot_CPU_flags:string_to_string_map -> last_booted_record:string -> recommendations:string -> xenstore_data:string_to_string_map -> ha_always_run:bool -> ha_restart_priority:string -> tags:string_set -> blocked_operations:vm_operations_to_string_map -> protection_policy:ref_VMPP -> is_snapshot_from_vmpp:bool -> snapshot_schedule:ref_VMSS -> is_vmss_snapshot:bool -> appliance:ref_VM_appliance -> start_delay:int64 -> shutdown_delay:int64 -> order:int64 -> suspend_SR:ref_SR -> version:int64 -> generation_id:string -> hardware_platform_version:int64 -> has_vendor_device:bool -> reference_label:string -> domain_type:domain_type -> nVRAM:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_task
      val snapshot_with_quiesce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_task
      val clone : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_task
      val copy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> sr:ref_SR -> ref_task
      val revert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> snapshot:ref_VM -> ref_task
      val checkpoint : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_task
      val provision : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val start : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> start_paused:bool -> force:bool -> ref_task
      val start_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> ref_task
      val pause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val unpause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val clean_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val clean_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val hard_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val power_state_reset : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val hard_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val suspend : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val csvm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val resume : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> start_paused:bool -> force:bool -> ref_task
      val set_is_default_template : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> value:bool -> ref_task
      val hard_reboot_internal : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val resume_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> ref_task
      val pool_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> options:string_to_string_map -> ref_task
      val pool_migrate_complete : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> ref_task
      val set_VCPUs_number_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> nvcpu:int64 -> ref_task
      val add_to_VCPUs_params_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> ref_task
      val compute_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val set_memory_dynamic_range : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> min:int64 -> max:int64 -> ref_task
      val set_memory_static_range : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> min:int64 -> max:int64 -> ref_task
      val set_memory_limits : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> static_min:int64 -> static_max:int64 -> dynamic_min:int64 -> dynamic_max:int64 -> ref_task
      val set_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> ref_task
      val set_memory_target_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> target:int64 -> ref_task
      val wait_memory_target_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val get_cooperative : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val set_shadow_multiplier_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> multiplier:float -> ref_task
      val send_sysrq : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> key:string -> ref_task
      val send_trigger : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> trigger:string -> ref_task
      val maximise_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> total:int64 -> approximate:bool -> ref_task
      val migrate_send : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> ref_task
      val assert_can_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> ref_task
      val assert_can_migrate_sender : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> options:string_to_string_map -> ref_task
      val assert_operation_valid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> op:vm_operations -> ref_task
      val update_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val get_possible_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val assert_can_boot_here : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> host:ref_host -> ref_task
      val atomic_set_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> ref_task
      val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> name:string -> mime_type:string -> public:bool -> ref_task
      val s3_suspend : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val s3_resume : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val assert_agile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val update_snapshot_metadata : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> snapshot_of:ref_VM -> snapshot_time:datetime -> transportable_snapshot_id:string -> ref_task
      val retrieve_wlb_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_task
      val set_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> ref_task
      val copy_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> ref_task
      val set_start_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> ref_task
      val set_shutdown_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> ref_task
      val set_order : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> ref_task
      val set_suspend_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VDI -> ref_task
      val assert_can_be_recovered : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> ref_task
      val get_SRs_required_for_recovery : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> ref_task
      val recover : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> force:bool -> ref_task
      val import_convert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> _type:string -> username:string -> password:string -> sr:ref_SR -> remote_config:string_to_string_map -> ref_task
      val set_appliance : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VM_appliance -> ref_task
      val query_services : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_task
      val call_plugin : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> plugin:string -> fn:string -> args:string_to_string_map -> ref_task
      val set_has_vendor_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:bool -> ref_task
      val import : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> url:string -> sr:ref_SR -> full_restore:bool -> force:bool -> ref_task
      val set_actions_after_crash : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:on_crash_behaviour -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vM_t -> ref_task
    end
    module VM_metrics : sig
    end
    module VM_guest_metrics : sig
    end
    module VMPP : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> is_policy_enabled:bool -> backup_type:vmpp_backup_type -> backup_retention_value:int64 -> backup_frequency:vmpp_backup_frequency -> backup_schedule:string_to_string_map -> archive_target_type:vmpp_archive_target_type -> archive_target_config:string_to_string_map -> archive_frequency:vmpp_archive_frequency -> archive_schedule:string_to_string_map -> is_alarm_enabled:bool -> alarm_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vMPP_t -> ref_task
    end
    module VMSS : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> enabled:bool -> _type:vmss_type -> retained_snapshots:int64 -> frequency:vmss_frequency -> schedule:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vMSS_t -> ref_task
    end
    module VM_appliance : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> ref_task
      val start : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> paused:bool -> ref_task
      val clean_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> ref_task
      val hard_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> ref_task
      val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> ref_task
      val assert_can_be_recovered : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> ref_task
      val get_SRs_required_for_recovery : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> ref_task
      val recover : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> force:bool -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vM_appliance_t -> ref_task
    end
    module DR_task : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> _type:string -> device_config:string_to_string_map -> whitelist:string_set -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_DR_task -> ref_task
    end
    module Host : sig
      val disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val enable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val prepare_for_poweroff : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val dmesg : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val dmesg_clear : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val get_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val send_debug_keys : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> keys:string -> ref_task
      val bugreport_upload : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> url:string -> options:string_to_string_map -> ref_task
      val license_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> contents:string -> ref_task
      val license_add : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> contents:string -> ref_task
      val license_remove : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> hostname:string -> address:string -> external_auth_type:string -> external_auth_service_name:string -> external_auth_configuration:string_to_string_map -> license_params:string_to_string_map -> edition:string -> license_server:string_to_string_map -> local_cache_sr:ref_SR -> chipset_info:string_to_string_map -> ssl_legacy:bool -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
      val power_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val set_license_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> ref_task
      val ha_disarm_fencing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val preconfigure_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> statefiles:ref_VDI_set -> metadata_vdi:ref_VDI -> generation:string -> ref_task
      val ha_join_liveset : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val ha_disable_failover_decisions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val ha_wait_for_shutdown_via_statefile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val ha_stop_daemon : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val ha_release_resources : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val assert_can_evacuate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val get_vms_which_prevent_evacuation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
      val get_uncooperative_resident_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
      val get_uncooperative_domains : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
      val evacuate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val notify : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ty:string -> params:string -> ref_task
      val syslog_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val management_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> ref_task
      val get_management_interface : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val restart_agent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val compute_free_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val compute_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> mime_type:string -> public:bool -> ref_task
      val call_plugin : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> plugin:string -> fn:string -> args:string_to_string_map -> ref_task
      val has_extension : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> ref_task
      val enable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val disable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val retrieve_wlb_evacuate_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
      val certificate_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> cert:string -> ref_task
      val certificate_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> ref_task
      val certificate_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val crl_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> crl:string -> ref_task
      val crl_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> ref_task
      val crl_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val certificate_sync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val get_server_certificate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val install_server_certificate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> certificate:string -> private_key:string -> certificate_chain:string -> ref_task
      val update_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> pool_secret:secretstring -> ref_task
      val update_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> master_address:string -> ref_task
      val attach_static_vdis : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdi_reason_map:ref_VDI_to_string_map -> ref_task
      val detach_static_vdis : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdis:ref_VDI_set -> ref_task
      val set_localdb_key : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> key:string -> value:string -> ref_task
      val refresh_pack_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val set_power_on_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> power_on_mode:string -> power_on_config:string_to_string_map -> ref_task
      val reset_networking : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val migrate_receive : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> network:ref_network -> options:string_to_string_map -> ref_task
      val declare_dead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val enable_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val disable_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val set_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:bool -> ref_task
      val apply_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val mxgpu_vf_setup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val nvidia_vf_setup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> pf:ref_PCI -> enable:bool -> ref_task
      val allocate_resources_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> vm:ref_VM -> live:bool -> ref_task
      val set_iscsi_iqn : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:string -> ref_task
      val set_multipathing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:bool -> ref_task
      val set_uefi_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:string -> ref_task
      val notify_accept_new_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> ref_task
      val notify_send_new_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> ref_task
      val cleanup_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> ref_task
      val set_https_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:bool -> ref_task
      val set_sched_gran : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:host_sched_gran -> ref_task
      val get_sched_gran : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_task
    end
    module Host_crashdump : sig
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> ref_task
      val upload : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> url:string -> options:string_to_string_map -> ref_task
    end
    module Host_patch : sig
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> ref_task
      val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> ref_task
    end
    module Host_metrics : sig
    end
    module Host_cpu : sig
    end
    module Network : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> tags:string_set -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> ref_task
      val attach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> host:ref_host -> ref_task
      val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> purpose:network_purpose_set -> ref_task
      val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> name:string -> mime_type:string -> public:bool -> ref_task
      val set_default_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> value:network_default_locking_mode -> ref_task
      val attach_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vm:ref_VM -> ref_task
      val detach_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vm:ref_VM -> ref_task
      val add_purpose : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:network_purpose -> ref_task
      val remove_purpose : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:network_purpose -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:network_t -> ref_task
    end
    module VIF : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> vM:ref_VM -> mAC:string -> mTU:int64 -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> locking_mode:vif_locking_mode -> ipv4_allowed:string_set -> ipv6_allowed:string_set -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_task
      val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_task
      val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_task
      val unplug_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_task
      val move : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> network:ref_network -> ref_task
      val set_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:vif_locking_mode -> ref_task
      val set_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_set -> ref_task
      val add_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> ref_task
      val remove_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> ref_task
      val set_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_set -> ref_task
      val add_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> ref_task
      val remove_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> ref_task
      val configure_ipv4 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> mode:vif_ipv4_configuration_mode -> address:string -> gateway:string -> ref_task
      val configure_ipv6 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> mode:vif_ipv6_configuration_mode -> address:string -> gateway:string -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vIF_t -> ref_task
    end
    module VIF_metrics : sig
    end
    module PIF : sig
      val create_VLAN : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> vLAN:int64 -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_task
      val reconfigure_ip : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> ref_task
      val reconfigure_ipv6 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> mode:ipv6_configuration_mode -> iPv6:string -> gateway:string -> dNS:string -> ref_task
      val set_primary_address_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> primary_address_type:primary_address_type -> ref_task
      val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> mAC:string -> device:string -> managed:bool -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_task
      val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_task
      val set_disallow_unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> value:bool -> ref_task
      val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_task
      val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_task
      val db_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_task
      val db_forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_task
      val set_property : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> name:string -> value:string -> ref_task
    end
    module PIF_metrics : sig
    end
    module Bond : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> members:ref_PIF_set -> mAC:string -> mode:bond_mode -> properties:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> ref_task
      val set_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> value:bond_mode -> ref_task
      val set_property : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> name:string -> value:string -> ref_task
    end
    module VLAN : sig
      val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> tagged_PIF:ref_PIF -> untagged_PIF:ref_PIF -> tag:int64 -> other_config:string_to_string_map -> ref_task
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> tagged_PIF:ref_PIF -> tag:int64 -> network:ref_network -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> ref_task
    end
    module SM : sig
    end
    module SR : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_task
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_task
      val make : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> sm_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val update : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val probe : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> ref_task
      val probe_ext : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> ref_task
      val set_shared : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:bool -> ref_task
      val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:string -> ref_task
      val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:string -> ref_task
      val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> name:string -> mime_type:string -> public:bool -> ref_task
      val assert_can_host_ha_statefile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val assert_supports_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val enable_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val disable_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
      val get_live_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_task
    end
    module Sr_stat : sig
    end
    module Probe_result : sig
    end
    module LVHD : sig
      val enable_thin_provisioning : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> initial_allocation:int64 -> allocation_quantum:int64 -> ref_task
    end
    module VDI : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> sR:ref_SR -> virtual_size:int64 -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> tags:string_set -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_task
      val clone : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_task
      val resize : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> size:int64 -> ref_task
      val resize_online : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> size:int64 -> ref_task
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> ref_task
      val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_task
      val db_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_task
      val db_forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_task
      val update : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_task
      val copy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> sr:ref_SR -> base_vdi:ref_VDI -> into_vdi:ref_VDI -> ref_task
      val force_unlock : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_task
      val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> ref_task
      val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> ref_task
      val generate_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdi:ref_VDI -> ref_task
      val set_on_boot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:on_boot -> ref_task
      val set_allow_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> ref_task
      val open_database : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val checksum : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val read_database_pool_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val pool_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> sr:ref_SR -> options:string_to_string_map -> ref_task
      val enable_cbt : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val disable_cbt : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val set_cbt_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> ref_task
      val data_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_task
      val list_changed_blocks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi_from:ref_VDI -> vdi_to:ref_VDI -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vDI_t -> ref_task
    end
    module VBD : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> vDI:ref_VDI -> device:string -> userdevice:string -> bootable:bool -> mode:vbd_mode -> _type:vbd_type -> unpluggable:bool -> empty:bool -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val eject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vbd:ref_VBD -> ref_task
      val insert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vbd:ref_VBD -> vdi:ref_VDI -> ref_task
      val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val unplug_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val unplug_force_no_safety_check : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val assert_attachable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val pause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_task
      val unpause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> token:string -> ref_task
      val set_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:vbd_mode -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vBD_t -> ref_task
    end
    module VBD_metrics : sig
    end
    module PBD : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> device_config:string_to_string_map -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> ref_task
      val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> ref_task
      val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> ref_task
      val set_device_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> value:string_to_string_map -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:pBD_t -> ref_task
    end
    module Crashdump : sig
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> ref_task
    end
    module VTPM : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> backend:ref_VM -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vTPM_t -> ref_task
    end
    module Console : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:console_t -> ref_task
    end
    module User : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> short_name:string -> fullname:string -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:user_t -> ref_task
    end
    module Data_source : sig
    end
    module Blob : sig
    end
    module Message : sig
    end
    module Secret : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:string -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:secret_t -> ref_task
    end
    module Tunnel : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> transport_PIF:ref_PIF -> network:ref_network -> protocol:tunnel_protocol -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> ref_task
    end
    module Network_sriov : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> network:ref_network -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> ref_task
      val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> ref_task
    end
    module PCI : sig
    end
    module PGPU : sig
      val add_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type -> ref_task
      val remove_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type -> ref_task
      val set_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type_set -> ref_task
      val set_GPU_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_GPU_group -> ref_task
      val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> vgpu_type:ref_VGPU_type -> ref_task
      val enable_dom0_access : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_task
      val disable_dom0_access : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_task
    end
    module GPU_group : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_task
      val update_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_task
      val update_supported_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_task
      val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> vgpu_type:ref_VGPU_type -> ref_task
    end
    module VGPU : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> gPU_group:ref_GPU_group -> device:string -> other_config:string_to_string_map -> _type:ref_VGPU_type -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_task
      val atomic_set_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> value:ref_PGPU -> ref_task
    end
    module VGPU_type : sig
    end
    module PVS_site : sig
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> pVS_uuid:string -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> ref_task
      val set_PVS_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> value:string -> ref_task
    end
    module PVS_server : sig
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> addresses:string_set -> first_port:int64 -> last_port:int64 -> site:ref_PVS_site -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> ref_task
    end
    module PVS_proxy : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> site:ref_PVS_site -> vIF:ref_VIF -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> ref_task
    end
    module PVS_cache_storage : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> site:ref_PVS_site -> size:int64 -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> ref_task
      val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:pVS_cache_storage_t -> ref_task
    end
    module Feature : sig
    end
    module SDN_controller : sig
      val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> protocol:sdn_controller_protocol -> address:string -> port:int64 -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> ref_task
    end
    module Vdi_nbd_server_info : sig
    end
    module PUSB : sig
      val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val set_passthrough_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> value:bool -> ref_task
    end
    module USB_group : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> ref_task
    end
    module VUSB : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> uSB_group:ref_USB_group -> other_config:string_to_string_map -> ref_task
      val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> ref_task
    end
    module Cluster : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pIF:ref_PIF -> cluster_stack:string -> pool_auto_join:bool -> token_timeout:float -> token_timeout_coefficient:float -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_task
      val get_network : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_task
      val pool_create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> cluster_stack:string -> token_timeout:float -> token_timeout_coefficient:float -> ref_task
      val pool_force_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_task
      val pool_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_task
      val pool_resync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_task
    end
    module Cluster_host : sig
      val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> cluster:ref_Cluster -> host:ref_host -> pif:ref_PIF -> ref_task
      val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_task
      val enable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_task
      val force_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_task
      val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_task
      val disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_task
    end
    module Certificate : sig
    end
    module Diagnostics : sig
      val gc_compact : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val gc_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_task
      val db_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task
      val network_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> params:string_to_string_map -> ref_task
    end
  end
  module Session : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> session_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_session
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string
    val get_this_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> ref_host
    val get_this_user : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> ref_user
    val get_last_active : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> datetime
    val get_pool : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string_to_string_map
    val get_is_local_superuser : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> bool
    val get_subject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> ref_subject
    val get_validation_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> datetime
    val get_auth_user_sid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string
    val get_auth_user_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string
    val get_rbac_permissions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string_set
    val get_tasks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> ref_task_set
    val get_parent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> ref_session
    val get_originator : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> string
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_session -> key:string -> unit
    val login_with_password : rpc:(Rpc.call -> Rpc.response) -> uname:string -> pwd:string -> version:string -> originator:string -> ref_session
    val logout : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val change_password : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> old_pwd:string -> new_pwd:string -> unit
    val slave_login : rpc:(Rpc.call -> Rpc.response) -> host:ref_host -> psecret:secretstring -> ref_session
    val slave_local_login : rpc:(Rpc.call -> Rpc.response) -> psecret:secretstring -> ref_session
    val slave_local_login_with_password : rpc:(Rpc.call -> Rpc.response) -> uname:string -> pwd:string -> ref_session
    val create_from_db_file : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> filename:string -> ref_session
    val local_logout : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val get_all_subject_identifiers : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_set
    val logout_subject_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> unit
  end
  module Auth : sig
    val get_subject_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_name:string -> string
    val get_subject_information_from_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> string_to_string_map
    val get_group_membership : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> string_set
  end
  module Subject : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> subject_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_subject
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> subject_identifier:string -> other_config:string_to_string_map -> ref_subject
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> string
    val get_subject_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> string
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> string_to_string_map
    val get_roles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> ref_role_set
    val add_to_roles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> role:ref_role -> unit
    val remove_from_roles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> role:ref_role -> unit
    val get_permissions_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_subject -> string_set
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_subject_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_subject_to_subject_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_subject_to_subject_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:subject_t -> ref_subject
  end
  module Role : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> role_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_role
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_role_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> string
    val get_subroles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> ref_role_set
    val get_permissions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> ref_role_set
    val get_permissions_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_role -> string_set
    val get_by_permission : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> permission:ref_role -> ref_role_set
    val get_by_permission_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_role_set
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_role_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_role_to_role_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_role_to_role_t_map
  end
  module Task : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> task_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_task
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_task_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> task_allowed_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string_to_task_allowed_operations_map
    val get_created : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> datetime
    val get_finished : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> datetime
    val get_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> task_status_type
    val get_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> ref_host
    val get_progress : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> float
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val get_result : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val get_error_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string_to_string_map
    val get_subtask_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> ref_task
    val get_subtasks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> ref_task_set
    val get_backtrace : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> string
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> description:string -> ref_task
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> unit
    val cancel : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> task:ref_task -> unit
    val set_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> value:task_status_type -> unit
    val set_progress : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_task -> value:float -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_task_to_task_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_task_to_task_t_map
  end
  module Event : sig
    val register : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> classes:string_set -> unit
    val unregister : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> classes:string_set -> unit
    val next : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> Rpc.t
    val from : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> classes:string_set -> token:string -> timeout:float -> Rpc.t
    val get_current_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> int64
    val inject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> _class:string -> _ref:string -> string
  end
  module Pool : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> pool_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_pool
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_host
    val get_default_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_SR
    val get_suspend_image_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_SR
    val get_crash_dump_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_SR
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_ha_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_ha_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_ha_statefiles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_set
    val get_ha_host_failures_to_tolerate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> int64
    val get_ha_plan_exists_for : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> int64
    val get_ha_allow_overcommit : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_ha_overcommitted : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_blobs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_ref_blob_map
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_set
    val get_gui_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_health_check_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_wlb_url : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_wlb_username : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_wlb_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_wlb_verify_cert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_redo_log_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_redo_log_vdi : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_VDI
    val get_vswitch_controller : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_restrictions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_metadata_VDIs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> ref_VDI_set
    val get_ha_cluster_stack : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> pool_allowed_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_pool_allowed_operations_map
    val get_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_cpu_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val get_policy_no_vendor_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_live_patching_disabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_igmp_snooping_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val get_uefi_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string
    val get_is_psr_pending : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> bool
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string -> unit
    val set_default_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:ref_SR -> unit
    val set_suspend_image_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:ref_SR -> unit
    val set_crash_dump_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:ref_SR -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> unit
    val set_ha_allow_overcommit : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string -> unit
    val set_gui_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string_to_string_map -> unit
    val add_to_gui_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> value:string -> unit
    val remove_from_gui_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> unit
    val set_health_check_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string_to_string_map -> unit
    val add_to_health_check_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> value:string -> unit
    val remove_from_health_check_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> unit
    val set_wlb_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val set_wlb_verify_cert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val set_policy_no_vendor_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val set_live_patching_disabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val set_uefi_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:string -> unit
    val set_is_psr_pending : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val join : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> master_address:string -> master_username:string -> master_password:string -> unit
    val join_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> master_address:string -> master_username:string -> master_password:string -> unit
    val eject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val initial_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> secretstring
    val emergency_transition_to_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val emergency_reset_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> master_address:string -> unit
    val recover_slaves : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_set
    val hello : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host_uuid:string -> host_address:string -> hello_return
    val is_slave : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> bool
    val create_VLAN : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> vLAN:int64 -> ref_PIF_set
    val management_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> unit
    val create_VLAN_from_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> network:ref_network -> vLAN:int64 -> ref_PIF_set
    val slave_network_report : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> phydevs:string_to_string_map -> dev_to_mac:string_to_string_map -> dev_to_mtu:string_to_int64_map -> slave_host:ref_host -> ref_PIF_set
    val enable_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> heartbeat_srs:ref_SR_set -> configuration:string_to_string_map -> unit
    val disable_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val sync_database : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val designate_new_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_prevent_restarts_for : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> seconds:int64 -> unit
    val ha_failover_plan_exists : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> n:int64 -> bool
    val ha_compute_max_host_failures_to_tolerate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> int64
    val ha_compute_hypothetical_max_host_failures_to_tolerate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> configuration:ref_VM_to_string_map -> int64
    val ha_compute_vm_failover_plan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> failed_hosts:ref_host_set -> failed_vms:ref_VM_set -> ref_VM_to_string_to_string_map_map
    val set_ha_host_failures_to_tolerate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:int64 -> unit
    val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pool:ref_pool -> name:string -> mime_type:string -> public:bool -> ref_blob
    val ha_schedule_plan_recomputation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val enable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val disable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val enable_external_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pool:ref_pool -> config:string_to_string_map -> service_name:string -> auth_type:string -> unit
    val disable_external_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pool:ref_pool -> config:string_to_string_map -> unit
    val detect_nonhomogeneous_external_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pool:ref_pool -> unit
    val initialize_wlb : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> wlb_url:string -> wlb_username:string -> wlb_password:string -> xenserver_username:string -> xenserver_password:string -> unit
    val deconfigure_wlb : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val send_wlb_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> config:string_to_string_map -> unit
    val retrieve_wlb_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_to_string_map
    val retrieve_wlb_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_to_string_set_map
    val send_test_post : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:string -> port:int64 -> body:string -> string
    val certificate_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> cert:string -> unit
    val certificate_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> unit
    val certificate_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_set
    val crl_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> cert:string -> unit
    val crl_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> unit
    val crl_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_set
    val certificate_sync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val enable_redo_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val disable_redo_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val audit_log_append : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> line:string -> unit
    val set_vswitch_controller : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> address:string -> unit
    val test_archive_target : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> config:string_to_string_map -> string
    val enable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> unit
    val disable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> unit
    val get_license_state : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> string_to_string_map
    val apply_edition : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> edition:string -> unit
    val enable_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> unit
    val disable_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> unit
    val set_igmp_snooping_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val has_extension : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> name:string -> bool
    val add_to_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> value:string -> unit
    val remove_from_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> key:string -> unit
    val rotate_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val set_https_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool -> value:bool -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_pool_to_pool_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_to_pool_t_map
  end
  module Pool_patch : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> pool_patch_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_pool_patch
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_pool_patch_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> string
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> string
    val get_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> int64
    val get_pool_applied : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> bool
    val get_host_patches : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_host_patch_set
    val get_after_apply_guidance : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> after_apply_guidance_set
    val get_pool_update : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> ref_pool_update
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> key:string -> unit
    val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> string
    val pool_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> unit
    val precheck : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> string
    val clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> unit
    val pool_clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> unit
    val clean_on_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_patch -> host:ref_host -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_patch_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_pool_patch_to_pool_patch_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_patch_to_pool_patch_t_map
  end
  module Pool_update : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> pool_update_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_pool_update
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_pool_update_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string
    val get_installation_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> int64
    val get_key : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string
    val get_after_apply_guidance : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> update_after_apply_guidance_set
    val get_vdi : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_VDI
    val get_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> ref_host_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> string_to_string_map
    val get_enforce_homogeneity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> key:string -> unit
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> ref_pool_update
    val precheck : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> host:ref_host -> livepatch_status
    val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> host:ref_host -> unit
    val pool_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> unit
    val pool_clean : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> unit
    val attach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> use_localhost_proxy:bool -> string
    val detach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_pool_update -> unit
    val resync_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_update_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_pool_update_to_pool_update_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_pool_update_to_pool_update_t_map
  end
  module VM : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> vM_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VM
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> power_state:vm_power_state -> user_version:int64 -> is_a_template:bool -> suspend_VDI:ref_VDI -> affinity:ref_host -> memory_target:int64 -> memory_static_max:int64 -> memory_dynamic_max:int64 -> memory_dynamic_min:int64 -> memory_static_min:int64 -> vCPUs_params:string_to_string_map -> vCPUs_max:int64 -> vCPUs_at_startup:int64 -> actions_after_shutdown:on_normal_exit -> actions_after_reboot:on_normal_exit -> actions_after_crash:on_crash_behaviour -> pV_bootloader:string -> pV_kernel:string -> pV_ramdisk:string -> pV_args:string -> pV_bootloader_args:string -> pV_legacy_args:string -> hVM_boot_policy:string -> hVM_boot_params:string_to_string_map -> hVM_shadow_multiplier:float -> platform:string_to_string_map -> pCI_bus:string -> other_config:string_to_string_map -> last_boot_CPU_flags:string_to_string_map -> last_booted_record:string -> recommendations:string -> xenstore_data:string_to_string_map -> ha_always_run:bool -> ha_restart_priority:string -> tags:string_set -> blocked_operations:vm_operations_to_string_map -> protection_policy:ref_VMPP -> is_snapshot_from_vmpp:bool -> snapshot_schedule:ref_VMSS -> is_vmss_snapshot:bool -> appliance:ref_VM_appliance -> start_delay:int64 -> shutdown_delay:int64 -> order:int64 -> suspend_SR:ref_SR -> version:int64 -> generation_id:string -> hardware_platform_version:int64 -> has_vendor_device:bool -> reference_label:string -> domain_type:domain_type -> nVRAM:string_to_string_map -> ref_VM
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_VM_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> vm_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_vm_operations_map
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_power_state : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> vm_power_state
    val get_user_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_is_a_template : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_is_default_template : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_suspend_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VDI
    val get_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_host
    val get_scheduled_to_be_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_host
    val get_affinity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_host
    val get_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_memory_target : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_memory_static_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_memory_dynamic_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_memory_dynamic_min : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_memory_static_min : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_VCPUs_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_VCPUs_at_startup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_actions_after_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> on_normal_exit
    val get_actions_after_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> on_normal_exit
    val get_actions_after_crash : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> on_crash_behaviour
    val get_consoles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_console_set
    val get_VIFs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VIF_set
    val get_VBDs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VBD_set
    val get_VUSBs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VUSB_set
    val get_crash_dumps : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_crashdump_set
    val get_VTPMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VTPM_set
    val get_PV_bootloader : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_PV_kernel : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_PV_ramdisk : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_PV_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_PV_bootloader_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_PV_legacy_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_HVM_boot_policy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_HVM_boot_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_HVM_shadow_multiplier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> float
    val get_platform : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_PCI_bus : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_domid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_domarch : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_last_boot_CPU_flags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_is_control_domain : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM_metrics
    val get_guest_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM_guest_metrics
    val get_last_booted_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_ha_always_run : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_ha_restart_priority : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_is_a_snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_snapshot_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM
    val get_snapshots : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM_set
    val get_snapshot_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> datetime
    val get_transportable_snapshot_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_blobs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_ref_blob_map
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_set
    val get_blocked_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> vm_operations_to_string_map
    val get_snapshot_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_snapshot_metadata : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_parent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM
    val get_children : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM_set
    val get_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val get_protection_policy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VMPP
    val get_is_snapshot_from_vmpp : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_snapshot_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VMSS
    val get_is_vmss_snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_appliance : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VM_appliance
    val get_start_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_shutdown_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_order : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_VGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_VGPU_set
    val get_attached_PCIs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_PCI_set
    val get_suspend_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> ref_SR
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_generation_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_hardware_platform_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> int64
    val get_has_vendor_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_requires_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val get_reference_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string
    val get_domain_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> domain_type
    val get_NVRAM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_user_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_is_a_template : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:bool -> unit
    val set_affinity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_host -> unit
    val set_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_actions_after_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:on_normal_exit -> unit
    val set_actions_after_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:on_normal_exit -> unit
    val set_PV_bootloader : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_PV_kernel : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_PV_ramdisk : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_PV_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_PV_bootloader_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_PV_legacy_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_HVM_boot_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_HVM_boot_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_HVM_boot_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_platform : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_platform : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_platform : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_PCI_bus : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_blocked_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:vm_operations_to_string_map -> unit
    val add_to_blocked_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:vm_operations -> value:string -> unit
    val remove_from_blocked_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:vm_operations -> unit
    val set_suspend_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_SR -> unit
    val set_hardware_platform_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_VM
    val snapshot_with_quiesce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_VM
    val clone : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_VM
    val copy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> sr:ref_SR -> ref_VM
    val revert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> snapshot:ref_VM -> unit
    val checkpoint : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> new_name:string -> ref_VM
    val provision : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val start : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> start_paused:bool -> force:bool -> unit
    val start_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> unit
    val pause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val unpause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val clean_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val clean_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val hard_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val power_state_reset : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val hard_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val suspend : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val csvm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_VM
    val resume : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> start_paused:bool -> force:bool -> unit
    val set_is_default_template : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> value:bool -> unit
    val hard_reboot_internal : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val resume_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> unit
    val pool_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> options:string_to_string_map -> unit
    val pool_migrate_complete : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> unit
    val set_VCPUs_number_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> nvcpu:int64 -> unit
    val add_to_VCPUs_params_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val set_NVRAM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_NVRAM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_NVRAM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> key:string -> unit
    val set_ha_restart_priority : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_ha_always_run : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:bool -> unit
    val compute_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> int64
    val set_memory_dynamic_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_memory_dynamic_min : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_memory_dynamic_range : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> min:int64 -> max:int64 -> unit
    val set_memory_static_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_memory_static_min : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_memory_static_range : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> min:int64 -> max:int64 -> unit
    val set_memory_limits : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> static_min:int64 -> static_max:int64 -> dynamic_min:int64 -> dynamic_max:int64 -> unit
    val set_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_memory_target_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> target:int64 -> unit
    val wait_memory_target_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> unit
    val get_cooperative : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> bool
    val set_HVM_shadow_multiplier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:float -> unit
    val set_shadow_multiplier_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> multiplier:float -> unit
    val set_VCPUs_max : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_VCPUs_at_startup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val send_sysrq : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> key:string -> unit
    val send_trigger : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> trigger:string -> unit
    val maximise_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> total:int64 -> approximate:bool -> int64
    val migrate_send : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> ref_VM
    val assert_can_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> unit
    val assert_can_migrate_sender : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> options:string_to_string_map -> unit
    val get_boot_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> vM_t
    val get_data_sources : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> data_source_t_set
    val record_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> data_source:string -> unit
    val query_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> data_source:string -> float
    val forget_data_source_archives : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> data_source:string -> unit
    val assert_operation_valid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> op:vm_operations -> unit
    val update_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> unit
    val get_allowed_VBD_devices : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> string_set
    val get_allowed_VIF_devices : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> string_set
    val get_possible_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_host_set
    val assert_can_boot_here : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> host:ref_host -> unit
    val atomic_set_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> unit
    val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> name:string -> mime_type:string -> public:bool -> ref_blob
    val s3_suspend : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val s3_resume : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> unit
    val assert_agile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> unit
    val update_snapshot_metadata : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> snapshot_of:ref_VM -> snapshot_time:datetime -> transportable_snapshot_id:string -> unit
    val retrieve_wlb_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> ref_host_to_string_set_map
    val set_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string_to_string_map -> unit
    val copy_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> host:ref_host -> unit
    val set_protection_policy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VMPP -> unit
    val set_snapshot_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VMSS -> unit
    val set_start_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_shutdown_delay : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_order : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:int64 -> unit
    val set_suspend_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VDI -> unit
    val assert_can_be_recovered : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> unit
    val get_SRs_required_for_recovery : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> ref_SR_set
    val recover : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> session_to:ref_session -> force:bool -> unit
    val import_convert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> _type:string -> username:string -> password:string -> sr:ref_SR -> remote_config:string_to_string_map -> unit
    val set_appliance : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:ref_VM_appliance -> unit
    val query_services : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> string_to_string_map
    val call_plugin : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vm:ref_VM -> plugin:string -> fn:string -> args:string_to_string_map -> string
    val set_has_vendor_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:bool -> unit
    val import : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> url:string -> sr:ref_SR -> full_restore:bool -> force:bool -> ref_VM_set
    val set_actions_after_crash : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:on_crash_behaviour -> unit
    val set_domain_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:domain_type -> unit
    val set_HVM_boot_policy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val set_NVRAM_EFI_variables : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM -> value:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VM_to_vM_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_to_vM_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vM_t -> ref_VM
  end
  module VM_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> vM_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VM_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> string
    val get_memory_actual : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> int64
    val get_VCPUs_number : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> int64
    val get_VCPUs_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> int64_to_float_map
    val get_VCPUs_CPU : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> int64_to_int64_map
    val get_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> string_to_string_map
    val get_VCPUs_flags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> int64_to_string_set_map
    val get_state : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> string_set
    val get_start_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> datetime
    val get_install_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> datetime
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> string_to_string_map
    val get_hvm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> bool
    val get_nested_virt : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> bool
    val get_nomigrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> bool
    val get_current_domain_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> domain_type
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VM_metrics_to_vM_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_metrics_to_vM_metrics_t_map
  end
  module VM_guest_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> vM_guest_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VM_guest_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string
    val get_os_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_PV_drivers_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_PV_drivers_up_to_date : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> bool
    val get_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_disks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_networks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_other : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> string_to_string_map
    val get_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> bool
    val get_can_use_hotplug_vbd : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> tristate_type
    val get_can_use_hotplug_vif : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> tristate_type
    val get_PV_drivers_detected : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_guest_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_guest_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VM_guest_metrics_to_vM_guest_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_guest_metrics_to_vM_guest_metrics_t_map
  end
  module VMPP : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> vMPP_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VMPP
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> is_policy_enabled:bool -> backup_type:vmpp_backup_type -> backup_retention_value:int64 -> backup_frequency:vmpp_backup_frequency -> backup_schedule:string_to_string_map -> archive_target_type:vmpp_archive_target_type -> archive_target_config:string_to_string_map -> archive_frequency:vmpp_archive_frequency -> archive_schedule:string_to_string_map -> is_alarm_enabled:bool -> alarm_config:string_to_string_map -> ref_VMPP
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_VMPP_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string
    val get_is_policy_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> bool
    val get_backup_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> vmpp_backup_type
    val get_backup_retention_value : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> int64
    val get_backup_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> vmpp_backup_frequency
    val get_backup_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string_to_string_map
    val get_is_backup_running : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> bool
    val get_backup_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> datetime
    val get_archive_target_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> vmpp_archive_target_type
    val get_archive_target_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string_to_string_map
    val get_archive_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> vmpp_archive_frequency
    val get_archive_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string_to_string_map
    val get_is_archive_running : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> bool
    val get_archive_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> datetime
    val get_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> ref_VM_set
    val get_is_alarm_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> bool
    val get_alarm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string_to_string_map
    val get_recent_alerts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> string_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string -> unit
    val set_is_policy_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:bool -> unit
    val set_backup_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:vmpp_backup_type -> unit
    val protect_now : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vmpp:ref_VMPP -> string
    val archive_now : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> snapshot:ref_VM -> string
    val create_alert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vmpp:ref_VMPP -> name:string -> priority:int64 -> body:string -> data:string -> unit
    val get_alerts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vmpp:ref_VMPP -> hours_from_now:int64 -> string_set
    val set_backup_retention_value : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:int64 -> unit
    val set_is_backup_running : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:bool -> unit
    val set_is_archive_running : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:bool -> unit
    val set_backup_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:vmpp_backup_frequency -> unit
    val set_backup_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string_to_string_map -> unit
    val set_archive_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:vmpp_archive_frequency -> unit
    val set_archive_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string_to_string_map -> unit
    val set_archive_target_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:vmpp_archive_target_type -> unit
    val set_archive_target_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string_to_string_map -> unit
    val set_is_alarm_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:bool -> unit
    val set_alarm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:string_to_string_map -> unit
    val add_to_backup_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> value:string -> unit
    val add_to_archive_target_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> value:string -> unit
    val add_to_archive_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> value:string -> unit
    val add_to_alarm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> value:string -> unit
    val remove_from_backup_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> unit
    val remove_from_archive_target_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> unit
    val remove_from_archive_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> unit
    val remove_from_alarm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> key:string -> unit
    val set_backup_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:datetime -> unit
    val set_archive_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMPP -> value:datetime -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VMPP_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VMPP_to_vMPP_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VMPP_to_vMPP_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vMPP_t -> ref_VMPP
  end
  module VMSS : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> vMSS_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VMSS
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> enabled:bool -> _type:vmss_type -> retained_snapshots:int64 -> frequency:vmss_frequency -> schedule:string_to_string_map -> ref_VMSS
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_VMSS_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> string
    val get_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> bool
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> vmss_type
    val get_retained_snapshots : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> int64
    val get_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> vmss_frequency
    val get_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> string_to_string_map
    val get_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> datetime
    val get_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> ref_VM_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:string -> unit
    val set_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:bool -> unit
    val snapshot_now : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vmss:ref_VMSS -> string
    val set_retained_snapshots : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:int64 -> unit
    val set_frequency : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:vmss_frequency -> unit
    val set_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:string_to_string_map -> unit
    val add_to_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> key:string -> value:string -> unit
    val remove_from_schedule : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> key:string -> unit
    val set_last_run_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:datetime -> unit
    val set_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VMSS -> value:vmss_type -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VMSS_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VMSS_to_vMSS_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VMSS_to_vMSS_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vMSS_t -> ref_VMSS
  end
  module VM_appliance : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> vM_appliance_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VM_appliance
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> ref_VM_appliance
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_VM_appliance_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> vm_appliance_operation_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> string_to_vm_appliance_operation_map
    val get_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> ref_VM_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> value:string -> unit
    val start : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> paused:bool -> unit
    val clean_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> unit
    val hard_shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> unit
    val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> unit
    val assert_can_be_recovered : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> unit
    val get_SRs_required_for_recovery : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> ref_SR_set
    val recover : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VM_appliance -> session_to:ref_session -> force:bool -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_appliance_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VM_appliance_to_vM_appliance_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VM_appliance_to_vM_appliance_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vM_appliance_t -> ref_VM_appliance
  end
  module DR_task : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_DR_task -> dR_task_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_DR_task
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_DR_task -> string
    val get_introduced_SRs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_DR_task -> ref_SR_set
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> _type:string -> device_config:string_to_string_map -> whitelist:string_set -> ref_DR_task
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_DR_task -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_DR_task_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_DR_task_to_dR_task_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_DR_task_to_dR_task_t_map
  end
  module Host : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> host_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_host
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_host_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> int64
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> host_allowed_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_host_allowed_operations_map
    val get_API_version_major : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> int64
    val get_API_version_minor : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> int64
    val get_API_version_vendor : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_API_version_vendor_implementation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> bool
    val get_software_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_capabilities : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_cpu_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_sched_policy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_supported_bootloaders : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_resident_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_VM_set
    val get_logging : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_PIFs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_PIF_set
    val get_suspend_image_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_SR
    val get_crash_dump_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_SR
    val get_crashdumps : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_host_crashdump_set
    val get_patches : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_host_patch_set
    val get_updates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_pool_update_set
    val get_PBDs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_PBD_set
    val get_host_CPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_host_cpu_set
    val get_cpu_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_hostname : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_address : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_host_metrics
    val get_license_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_ha_statefiles : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_ha_network_peers : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_blobs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_ref_blob_map
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_external_auth_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_external_auth_service_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_external_auth_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_edition : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_license_server : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_bios_strings : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_power_on_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_power_on_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_local_cache_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_SR
    val get_chipset_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_PCIs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_PCI_set
    val get_PGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_PGPU_set
    val get_PUSBs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_PUSB_set
    val get_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> bool
    val get_guest_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_to_string_map
    val get_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> host_display
    val get_virtual_hardware_platform_versions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> int64_set
    val get_control_domain : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_VM
    val get_updates_requiring_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_pool_update_set
    val get_features : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_Feature_set
    val get_iscsi_iqn : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_multipathing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> bool
    val get_uefi_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string
    val get_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_Certificate_set
    val get_editions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val get_https_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> bool
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> unit
    val set_logging : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> unit
    val add_to_logging : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> value:string -> unit
    val remove_from_logging : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> unit
    val set_suspend_image_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:ref_SR -> unit
    val set_crash_dump_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:ref_SR -> unit
    val set_hostname : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val set_address : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string -> unit
    val set_license_server : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> unit
    val add_to_license_server : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> value:string -> unit
    val remove_from_license_server : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> unit
    val set_guest_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> unit
    val add_to_guest_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> value:string -> unit
    val remove_from_guest_VCPUs_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> key:string -> unit
    val set_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:host_display -> unit
    val disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val enable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val shutdown : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val prepare_for_poweroff : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val dmesg : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val dmesg_clear : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val get_log : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val send_debug_keys : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> keys:string -> unit
    val bugreport_upload : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> url:string -> options:string_to_string_map -> unit
    val list_methods : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_set
    val license_apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> contents:string -> unit
    val license_add : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> contents:string -> unit
    val license_remove : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> hostname:string -> address:string -> external_auth_type:string -> external_auth_service_name:string -> external_auth_configuration:string_to_string_map -> license_params:string_to_string_map -> edition:string -> license_server:string_to_string_map -> local_cache_sr:ref_SR -> chipset_info:string_to_string_map -> ssl_legacy:bool -> ref_host
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> unit
    val power_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val set_license_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:string_to_string_map -> unit
    val emergency_ha_disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> soft:bool -> unit
    val ha_disarm_fencing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val preconfigure_ha : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> statefiles:ref_VDI_set -> metadata_vdi:ref_VDI -> generation:string -> unit
    val ha_join_liveset : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_disable_failover_decisions : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_wait_for_shutdown_via_statefile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_stop_daemon : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_release_resources : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val ha_xapi_healthcheck : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> bool
    val local_assert_healthy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val request_backup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> generation:int64 -> force:bool -> unit
    val request_config_file_sync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> hash:string -> unit
    val propose_new_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> address:string -> manual:bool -> unit
    val commit_new_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> address:string -> unit
    val abort_new_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> address:string -> unit
    val get_data_sources : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> data_source_t_set
    val record_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> data_source:string -> unit
    val query_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> data_source:string -> float
    val forget_data_source_archives : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> data_source:string -> unit
    val assert_can_evacuate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val get_vms_which_prevent_evacuation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_VM_to_string_set_map
    val get_uncooperative_resident_VMs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_VM_set
    val get_uncooperative_domains : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> string_set
    val evacuate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val signal_networking_change : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val notify : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ty:string -> params:string -> unit
    val syslog_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val management_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> unit
    val local_management_reconfigure : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> interface:string -> unit
    val management_disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val get_management_interface : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> ref_PIF
    val get_system_status_capabilities : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val get_diagnostic_timing_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string_to_string_map
    val restart_agent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val shutdown_agent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val set_hostname_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> hostname:string -> unit
    val is_in_emergency_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> bool
    val compute_free_memory : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> int64
    val compute_memory_overhead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> int64
    val tickle_heartbeat : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> stuff:string_to_string_map -> string_to_string_map
    val sync_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val backup_rrds : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> delay:float -> unit
    val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> mime_type:string -> public:bool -> ref_blob
    val call_plugin : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> plugin:string -> fn:string -> args:string_to_string_map -> string
    val has_extension : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> bool
    val call_extension : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> call:string -> Rpc.t
    val get_servertime : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> datetime
    val get_server_localtime : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> datetime
    val enable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val disable_binary_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val enable_external_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> config:string_to_string_map -> service_name:string -> auth_type:string -> unit
    val disable_external_auth : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> config:string_to_string_map -> unit
    val retrieve_wlb_evacuate_recommendations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> ref_VM_to_string_set_map
    val certificate_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> cert:string -> unit
    val certificate_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> unit
    val certificate_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string_set
    val crl_install : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> crl:string -> unit
    val crl_uninstall : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> name:string -> unit
    val crl_list : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string_set
    val certificate_sync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val get_server_certificate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val install_server_certificate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> certificate:string -> private_key:string -> certificate_chain:string -> unit
    val emergency_reset_server_certificate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> unit
    val update_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> pool_secret:secretstring -> unit
    val update_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> master_address:string -> unit
    val attach_static_vdis : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdi_reason_map:ref_VDI_to_string_map -> unit
    val detach_static_vdis : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdis:ref_VDI_set -> unit
    val set_localdb_key : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> key:string -> value:string -> unit
    val apply_edition : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> edition:string -> force:bool -> unit
    val refresh_pack_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val set_power_on_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> power_on_mode:string -> power_on_config:string_to_string_map -> unit
    val set_cpu_features : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> features:string -> unit
    val reset_cpu_features : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val reset_networking : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val enable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sr:ref_SR -> unit
    val disable_local_storage_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val get_sm_diagnostics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val get_thread_diagnostics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string
    val sm_dp_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> dp:string -> allow_leak:bool -> unit
    val sync_vlans : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val sync_tunnels : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val sync_pif_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> bridges:string_set -> unit
    val migrate_receive : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> network:ref_network -> options:string_to_string_map -> string_to_string_map
    val declare_dead : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val enable_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> host_display
    val disable_display : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> host_display
    val set_ssl_legacy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:bool -> unit
    val apply_guest_agent_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val mxgpu_vf_setup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val nvidia_vf_setup : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> pf:ref_PCI -> enable:bool -> unit
    val allocate_resources_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> vm:ref_VM -> live:bool -> unit
    val set_iscsi_iqn : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:string -> unit
    val set_multipathing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:bool -> unit
    val set_uefi_certificates : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> value:string -> unit
    val notify_accept_new_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val notify_send_new_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val cleanup_pool_secret : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val set_https_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:bool -> unit
    val set_sched_gran : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> value:host_sched_gran -> unit
    val get_sched_gran : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host -> host_sched_gran
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_host_to_host_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_to_host_t_map
  end
  module Host_crashdump : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> host_crashdump_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_host_crashdump
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> ref_host
    val get_timestamp : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> datetime
    val get_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> int64
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> key:string -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> unit
    val upload : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_crashdump -> url:string -> options:string_to_string_map -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_crashdump_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_host_crashdump_to_host_crashdump_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_crashdump_to_host_crashdump_t_map
  end
  module Host_patch : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> host_patch_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_host_patch
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_host_patch_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> ref_host
    val get_applied : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> bool
    val get_timestamp_applied : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> datetime
    val get_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> int64
    val get_pool_patch : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> ref_pool_patch
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> key:string -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> unit
    val apply : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_patch -> string
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_patch_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_host_patch_to_host_patch_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_patch_to_host_patch_t_map
  end
  module Host_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> host_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_host_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> string
    val get_memory_total : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> int64
    val get_memory_free : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> int64
    val get_live : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> bool
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_host_metrics_to_host_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_metrics_to_host_metrics_t_map
  end
  module Host_cpu : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> host_cpu_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_host_cpu
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> ref_host
    val get_number : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> int64
    val get_vendor : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_speed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> int64
    val get_modelname : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_family : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> int64
    val get_model : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> int64
    val get_stepping : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_flags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_features : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string
    val get_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> float
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_host_cpu -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_cpu_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_host_cpu_to_host_cpu_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_host_cpu_to_host_cpu_t_map
  end
  module Network : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> network_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_network
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> tags:string_set -> ref_network
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_network_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> network_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string_to_network_operations_map
    val get_VIFs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> ref_VIF_set
    val get_PIFs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> ref_PIF_set
    val get_MTU : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> int64
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string_to_string_map
    val get_bridge : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string
    val get_managed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> bool
    val get_blobs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string_to_ref_blob_map
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> string_set
    val get_default_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> network_default_locking_mode
    val get_assigned_ips : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> ref_VIF_to_string_map
    val get_purpose : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> network_purpose_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string -> unit
    val set_MTU : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:int64 -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> key:string -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:string -> unit
    val attach : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> host:ref_host -> unit
    val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> purpose:network_purpose_set -> ref_network
    val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> name:string -> mime_type:string -> public:bool -> ref_blob
    val set_default_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> value:network_default_locking_mode -> unit
    val attach_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vm:ref_VM -> unit
    val detach_for_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vm:ref_VM -> unit
    val add_purpose : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:network_purpose -> unit
    val remove_purpose : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network -> value:network_purpose -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_network_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_network_to_network_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_network_to_network_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:network_t -> ref_network
  end
  module VIF : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> vIF_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VIF
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> vM:ref_VM -> mAC:string -> mTU:int64 -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> locking_mode:vif_locking_mode -> ipv4_allowed:string_set -> ipv6_allowed:string_set -> ref_VIF
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> vif_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_to_vif_operations_map
    val get_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_network : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_network
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_VM
    val get_MAC : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_MTU : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> int64
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_to_string_map
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> bool
    val get_status_code : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> int64
    val get_status_detail : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_runtime_properties : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_to_string_map
    val get_qos_algorithm_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_to_string_map
    val get_qos_supported_algorithms : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_set
    val get_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> ref_VIF_metrics
    val get_MAC_autogenerated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> bool
    val get_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> vif_locking_mode
    val get_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_set
    val get_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_set
    val get_ipv4_configuration_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> vif_ipv4_configuration_mode
    val get_ipv4_addresses : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_set
    val get_ipv4_gateway : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val get_ipv6_configuration_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> vif_ipv6_configuration_mode
    val get_ipv6_addresses : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string_set
    val get_ipv6_gateway : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> string
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> key:string -> unit
    val set_qos_algorithm_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> unit
    val set_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_to_string_map -> unit
    val add_to_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> key:string -> value:string -> unit
    val remove_from_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> key:string -> unit
    val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> unit
    val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> unit
    val unplug_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> unit
    val move : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> network:ref_network -> unit
    val set_locking_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:vif_locking_mode -> unit
    val set_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_set -> unit
    val add_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> unit
    val remove_ipv4_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> unit
    val set_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string_set -> unit
    val add_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> unit
    val remove_ipv6_allowed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> value:string -> unit
    val configure_ipv4 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> mode:vif_ipv4_configuration_mode -> address:string -> gateway:string -> unit
    val configure_ipv6 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF -> mode:vif_ipv6_configuration_mode -> address:string -> gateway:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VIF_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VIF_to_vIF_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VIF_to_vIF_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vIF_t -> ref_VIF
  end
  module VIF_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> vIF_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VIF_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> string
    val get_io_read_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> float
    val get_io_write_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> float
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VIF_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VIF_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VIF_metrics_to_vIF_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VIF_metrics_to_vIF_metrics_t_map
  end
  module PIF : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> pIF_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PIF
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_network : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_network
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_host
    val get_MAC : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_MTU : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> int64
    val get_VLAN : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> int64
    val get_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_PIF_metrics
    val get_physical : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> bool
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> bool
    val get_ip_configuration_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ip_configuration_mode
    val get_IP : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_netmask : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_gateway : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_DNS : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_bond_slave_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_Bond
    val get_bond_master_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_Bond_set
    val get_VLAN_master_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_VLAN
    val get_VLAN_slave_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_VLAN_set
    val get_management : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string_to_string_map
    val get_disallow_unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> bool
    val get_tunnel_access_PIF_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_tunnel_set
    val get_tunnel_transport_PIF_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_tunnel_set
    val get_ipv6_configuration_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ipv6_configuration_mode
    val get_IPv6 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string_set
    val get_ipv6_gateway : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string
    val get_primary_address_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> primary_address_type
    val get_managed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> bool
    val get_properties : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string_to_string_map
    val get_capabilities : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> string_set
    val get_igmp_snooping_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> pif_igmp_status
    val get_sriov_physical_PIF_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_network_sriov_set
    val get_sriov_logical_PIF_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_network_sriov_set
    val get_PCI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> ref_PCI
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> key:string -> unit
    val create_VLAN : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> vLAN:int64 -> ref_PIF
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> unit
    val reconfigure_ip : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> unit
    val reconfigure_ipv6 : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> mode:ipv6_configuration_mode -> iPv6:string -> gateway:string -> dNS:string -> unit
    val set_primary_address_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> primary_address_type:primary_address_type -> unit
    val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> mAC:string -> device:string -> managed:bool -> ref_PIF
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> unit
    val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> unit
    val set_disallow_unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> value:bool -> unit
    val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> unit
    val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_PIF
    val db_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_PIF
    val db_forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> unit
    val set_property : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF -> name:string -> value:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PIF_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PIF_to_pIF_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PIF_to_pIF_t_map
  end
  module PIF_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> pIF_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PIF_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_io_read_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> float
    val get_io_write_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> float
    val get_carrier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> bool
    val get_vendor_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_vendor_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_device_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_device_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_speed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> int64
    val get_duplex : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> bool
    val get_pci_bus_path : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PIF_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PIF_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PIF_metrics_to_pIF_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PIF_metrics_to_pIF_metrics_t_map
  end
  module Bond : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> bond_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_Bond
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> string
    val get_master : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> ref_PIF
    val get_slaves : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> ref_PIF_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> string_to_string_map
    val get_primary_slave : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> ref_PIF
    val get_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> bond_mode
    val get_properties : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> string_to_string_map
    val get_links_up : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> int64
    val get_auto_update_mac : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> members:ref_PIF_set -> mAC:string -> mode:bond_mode -> properties:string_to_string_map -> ref_Bond
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> unit
    val set_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> value:bond_mode -> unit
    val set_property : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Bond -> name:string -> value:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Bond_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_Bond_to_bond_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Bond_to_bond_t_map
  end
  module VLAN : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> vLAN_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VLAN
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> string
    val get_tagged_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> ref_PIF
    val get_untagged_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> ref_PIF
    val get_tag : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> int64
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> key:string -> unit
    val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> tagged_PIF:ref_PIF -> untagged_PIF:ref_PIF -> tag:int64 -> other_config:string_to_string_map -> ref_VLAN
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> tagged_PIF:ref_PIF -> tag:int64 -> network:ref_network -> ref_VLAN
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VLAN -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VLAN_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VLAN_to_vLAN_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VLAN_to_vLAN_t_map
  end
  module SM : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> sM_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_SM
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_SM_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_vendor : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_copyright : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_required_api_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_configuration : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string_to_string_map
    val get_capabilities : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string_set
    val get_features : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string_to_int64_map
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string_to_string_map
    val get_driver_filename : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string
    val get_required_cluster_stack : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> string_set
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SM -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SM_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_SM_to_sM_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SM_to_sM_t_map
  end
  module SR : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> sR_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_SR
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_SR_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> storage_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string_to_storage_operations_map
    val get_VDIs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> ref_VDI_set
    val get_PBDs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> ref_PBD_set
    val get_virtual_allocation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> int64
    val get_physical_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> int64
    val get_physical_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> int64
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string
    val get_content_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string
    val get_shared : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string_to_string_map
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string_set
    val get_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string_to_string_map
    val get_blobs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> string_to_ref_blob_map
    val get_local_cache_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> bool
    val get_introduced_by : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> ref_DR_task
    val get_clustered : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> bool
    val get_is_tools_sr : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> key:string -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:string -> unit
    val set_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:string_to_string_map -> unit
    val add_to_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> key:string -> value:string -> unit
    val remove_from_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_SR
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_SR
    val make : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> sm_config:string_to_string_map -> string
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val update : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val get_supported_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_set
    val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val probe : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> string
    val probe_ext : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> probe_result_t_set
    val set_shared : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:bool -> unit
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> value:string -> unit
    val create_new_blob : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> name:string -> mime_type:string -> public:bool -> ref_blob
    val set_physical_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:int64 -> unit
    val set_virtual_allocation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:int64 -> unit
    val set_physical_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SR -> value:int64 -> unit
    val assert_can_host_ha_statefile : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val assert_supports_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val enable_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val disable_database_replication : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> unit
    val get_data_sources : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> data_source_t_set
    val record_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> data_source:string -> unit
    val query_data_source : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> data_source:string -> float
    val forget_data_source_archives : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> data_source:string -> unit
    val get_live_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> sr:ref_SR -> ref_host_set
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SR_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_SR_to_sR_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SR_to_sR_t_map
  end
  module Sr_stat : sig
  end
  module Probe_result : sig
  end
  module LVHD : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_LVHD -> lVHD_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_LVHD
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_LVHD -> string
    val enable_thin_provisioning : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> initial_allocation:int64 -> allocation_quantum:int64 -> string
  end
  module VDI : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> vDI_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VDI
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> sR:ref_SR -> virtual_size:int64 -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> tags:string_set -> ref_VDI
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> unit
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_VDI_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> vdi_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string_to_vdi_operations_map
    val get_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_SR
    val get_VBDs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_VBD_set
    val get_crash_dumps : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_crashdump_set
    val get_virtual_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> int64
    val get_physical_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> int64
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> vdi_type
    val get_sharable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_read_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string_to_string_map
    val get_storage_lock : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_location : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val get_managed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_missing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_parent : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_VDI
    val get_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string_to_string_map
    val get_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string_to_string_map
    val get_is_a_snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_snapshot_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_VDI
    val get_snapshots : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_VDI_set
    val get_snapshot_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> datetime
    val get_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string_set
    val get_allow_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_on_boot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> on_boot
    val get_metadata_of_pool : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_pool
    val get_metadata_latest : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_is_tools_iso : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val get_cbt_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> unit
    val set_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string_to_string_map -> unit
    val add_to_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> value:string -> unit
    val remove_from_xenstore_data : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> unit
    val set_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string_to_string_map -> unit
    val add_to_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> value:string -> unit
    val remove_from_sm_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> key:string -> unit
    val set_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string_set -> unit
    val add_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> unit
    val remove_tags : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> unit
    val snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_VDI
    val clone : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_VDI
    val resize : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> size:int64 -> unit
    val resize_online : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> size:int64 -> unit
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> ref_VDI
    val pool_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_VDI
    val db_introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_VDI
    val db_forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> unit
    val update : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> unit
    val copy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> sr:ref_SR -> base_vdi:ref_VDI -> into_vdi:ref_VDI -> ref_VDI
    val force_unlock : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> unit
    val set_managed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> unit
    val set_sharable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val set_read_only : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val set_missing : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val set_virtual_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:int64 -> unit
    val set_physical_utilisation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:int64 -> unit
    val set_is_a_snapshot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val set_snapshot_of : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:ref_VDI -> unit
    val set_snapshot_time : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:datetime -> unit
    val set_metadata_of_pool : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:ref_pool -> unit
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:string -> unit
    val generate_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> vdi:ref_VDI -> string
    val set_on_boot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:on_boot -> unit
    val set_allow_caching : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val open_database : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> ref_session
    val checksum : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val read_database_pool_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> string
    val pool_migrate : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi:ref_VDI -> sr:ref_SR -> options:string_to_string_map -> ref_VDI
    val enable_cbt : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> unit
    val disable_cbt : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> unit
    val set_cbt_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> value:bool -> unit
    val data_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> unit
    val list_changed_blocks : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vdi_from:ref_VDI -> vdi_to:ref_VDI -> string
    val get_nbd_info : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VDI -> vdi_nbd_server_info_t_set
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VDI_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VDI_to_vDI_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VDI_to_vDI_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vDI_t -> ref_VDI
  end
  module VBD : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> vBD_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VBD
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> vDI:ref_VDI -> device:string -> userdevice:string -> bootable:bool -> mode:vbd_mode -> _type:vbd_type -> unpluggable:bool -> empty:bool -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> ref_VBD
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> vbd_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string_to_vbd_operations_map
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_VM
    val get_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_VDI
    val get_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val get_userdevice : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val get_bootable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> bool
    val get_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> vbd_mode
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> vbd_type
    val get_unpluggable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> bool
    val get_storage_lock : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> bool
    val get_empty : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string_to_string_map
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> bool
    val get_status_code : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> int64
    val get_status_detail : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val get_runtime_properties : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string_to_string_map
    val get_qos_algorithm_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val get_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string_to_string_map
    val get_qos_supported_algorithms : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string_set
    val get_metrics : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> ref_VBD_metrics
    val set_userdevice : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:string -> unit
    val set_bootable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:bool -> unit
    val set_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:vbd_type -> unit
    val set_unpluggable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:bool -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> key:string -> unit
    val set_qos_algorithm_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:string -> unit
    val set_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:string_to_string_map -> unit
    val add_to_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> key:string -> value:string -> unit
    val remove_from_qos_algorithm_params : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> key:string -> unit
    val eject : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vbd:ref_VBD -> unit
    val insert : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vbd:ref_VBD -> vdi:ref_VDI -> unit
    val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val unplug_force : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val unplug_force_no_safety_check : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val assert_attachable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> unit
    val pause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> string
    val unpause : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> token:string -> unit
    val set_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD -> value:vbd_mode -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VBD_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VBD_to_vBD_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VBD_to_vBD_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vBD_t -> ref_VBD
  end
  module VBD_metrics : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> vBD_metrics_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VBD_metrics
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> string
    val get_io_read_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> float
    val get_io_write_kbs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> float
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> datetime
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VBD_metrics -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VBD_metrics_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VBD_metrics_to_vBD_metrics_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VBD_metrics_to_vBD_metrics_t_map
  end
  module PBD : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> pBD_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PBD
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> device_config:string_to_string_map -> other_config:string_to_string_map -> ref_PBD
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> ref_host
    val get_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> ref_SR
    val get_device_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> string_to_string_map
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> key:string -> unit
    val plug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> unit
    val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> unit
    val set_device_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PBD -> value:string_to_string_map -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PBD_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PBD_to_pBD_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PBD_to_pBD_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:pBD_t -> ref_PBD
  end
  module Crashdump : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> crashdump_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_crashdump
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> string
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> ref_VM
    val get_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> ref_VDI
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> key:string -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_crashdump -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_crashdump_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_crashdump_to_crashdump_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_crashdump_to_crashdump_t_map
  end
  module VTPM : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> vTPM_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VTPM
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> backend:ref_VM -> ref_VTPM
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> string
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> ref_VM
    val get_backend : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VTPM -> ref_VM
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:vTPM_t -> ref_VTPM
  end
  module Console : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> console_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_console
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> other_config:string_to_string_map -> ref_console
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> string
    val get_protocol : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> console_protocol
    val get_location : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> string
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> ref_VM
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_console -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_console_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_console_to_console_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_console_to_console_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:console_t -> ref_console
  end
  module User : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> user_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_user
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> short_name:string -> fullname:string -> other_config:string_to_string_map -> ref_user
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> string
    val get_short_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> string
    val get_fullname : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> string
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> string_to_string_map
    val set_fullname : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_user -> key:string -> unit
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:user_t -> ref_user
  end
  module Data_source : sig
  end
  module Blob : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> blob_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_blob
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_blob_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> string
    val get_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> int64
    val get_public : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> bool
    val get_last_updated : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> datetime
    val get_mime_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> string
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> value:string -> unit
    val set_public : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> value:bool -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> mime_type:string -> public:bool -> ref_blob
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_blob -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_blob_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_blob_to_blob_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_blob_to_blob_t_map
  end
  module Message : sig
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name:string -> priority:int64 -> cls:cls -> obj_uuid:string -> body:string -> ref_message
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_message -> unit
    val get : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> cls:cls -> obj_uuid:string -> since:datetime -> ref_message_to_message_t_map
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_message_set
    val get_since : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> since:datetime -> ref_message_to_message_t_map
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_message -> message_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_message
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_message_to_message_t_map
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_message_to_message_t_map
  end
  module Secret : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> secret_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_secret
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:string -> other_config:string_to_string_map -> ref_secret
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> string
    val get_value : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> string
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> string_to_string_map
    val set_value : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_secret -> key:string -> unit
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> value:string -> other_config:string_to_string_map -> ref_secret
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_secret_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_secret_to_secret_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_secret_to_secret_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:secret_t -> ref_secret
  end
  module Tunnel : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> tunnel_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_tunnel
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> string
    val get_access_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> ref_PIF
    val get_transport_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> ref_PIF
    val get_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> string_to_string_map
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> string_to_string_map
    val get_protocol : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> tunnel_protocol
    val set_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> value:string_to_string_map -> unit
    val add_to_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> key:string -> value:string -> unit
    val remove_from_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> key:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> key:string -> unit
    val set_protocol : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> value:tunnel_protocol -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> transport_PIF:ref_PIF -> network:ref_network -> protocol:tunnel_protocol -> ref_tunnel
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_tunnel -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_tunnel_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_tunnel_to_tunnel_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_tunnel_to_tunnel_t_map
  end
  module Network_sriov : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> network_sriov_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_network_sriov
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> string
    val get_physical_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> ref_PIF
    val get_logical_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> ref_PIF
    val get_requires_reboot : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> bool
    val get_configuration_mode : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> sriov_configuration_mode
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pif:ref_PIF -> network:ref_network -> ref_network_sriov
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> unit
    val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_network_sriov -> int64
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_network_sriov_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_network_sriov_to_network_sriov_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_network_sriov_to_network_sriov_t_map
  end
  module PCI : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> pCI_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PCI
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_class_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_vendor_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_device_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> ref_host
    val get_pci_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_dependencies : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> ref_PCI_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string_to_string_map
    val get_subsystem_vendor_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_subsystem_device_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val get_driver_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> string
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PCI -> key:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PCI_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PCI_to_pCI_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PCI_to_pCI_t_map
  end
  module PGPU : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> pGPU_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PGPU
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> string
    val get_PCI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_PCI
    val get_GPU_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_GPU_group
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_host
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> string_to_string_map
    val get_supported_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_VGPU_type_set
    val get_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_VGPU_type_set
    val get_resident_VGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_VGPU_set
    val get_supported_VGPU_max_capacities : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> ref_VGPU_type_to_int64_map
    val get_dom0_access : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> pgpu_dom0_access
    val get_is_system_display_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> bool
    val get_compatibility_metadata : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> key:string -> unit
    val add_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type -> unit
    val remove_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type -> unit
    val set_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_VGPU_type_set -> unit
    val set_GPU_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> value:ref_GPU_group -> unit
    val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> vgpu_type:ref_VGPU_type -> int64
    val enable_dom0_access : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> pgpu_dom0_access
    val disable_dom0_access : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PGPU -> pgpu_dom0_access
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PGPU_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PGPU_to_pGPU_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PGPU_to_pGPU_t_map
  end
  module GPU_group : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> gPU_group_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_GPU_group
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_GPU_group_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> string
    val get_PGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_PGPU_set
    val get_VGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_VGPU_set
    val get_GPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> string_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> string_to_string_map
    val get_allocation_algorithm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> allocation_algorithm
    val get_supported_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_VGPU_type_set
    val get_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> ref_VGPU_type_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> key:string -> unit
    val set_allocation_algorithm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> value:allocation_algorithm -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_GPU_group
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> unit
    val update_enabled_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> unit
    val update_supported_VGPU_types : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> unit
    val get_remaining_capacity : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_GPU_group -> vgpu_type:ref_VGPU_type -> int64
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_GPU_group_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_GPU_group_to_gPU_group_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_GPU_group_to_gPU_group_t_map
  end
  module VGPU : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> vGPU_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VGPU
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> string
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_VM
    val get_GPU_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_GPU_group
    val get_device : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> string
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> string_to_string_map
    val get_type : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_VGPU_type
    val get_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_PGPU
    val get_scheduled_to_be_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_PGPU
    val get_compatibility_metadata : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> string_to_string_map
    val get_extra_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> string
    val get_PCI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> ref_PCI
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> key:string -> unit
    val set_extra_args : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> value:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> gPU_group:ref_GPU_group -> device:string -> other_config:string_to_string_map -> _type:ref_VGPU_type -> ref_VGPU
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> unit
    val atomic_set_resident_on : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU -> value:ref_PGPU -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VGPU_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VGPU_to_vGPU_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VGPU_to_vGPU_t_map
  end
  module VGPU_type : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> vGPU_type_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VGPU_type
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> string
    val get_vendor_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> string
    val get_model_name : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> string
    val get_framebuffer_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> int64
    val get_max_heads : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> int64
    val get_max_resolution_x : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> int64
    val get_max_resolution_y : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> int64
    val get_supported_on_PGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_PGPU_set
    val get_enabled_on_PGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_PGPU_set
    val get_VGPUs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_VGPU_set
    val get_supported_on_GPU_groups : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_GPU_group_set
    val get_enabled_on_GPU_groups : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_GPU_group_set
    val get_implementation : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> vgpu_type_implementation
    val get_identifier : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> string
    val get_experimental : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> bool
    val get_compatible_types_in_vm : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VGPU_type -> ref_VGPU_type_set
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VGPU_type_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VGPU_type_to_vGPU_type_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VGPU_type_to_vGPU_type_t_map
  end
  module PVS_site : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> pVS_site_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PVS_site
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_PVS_site_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> string
    val get_PVS_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> string
    val get_cache_storage : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> ref_PVS_cache_storage_set
    val get_servers : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> ref_PVS_server_set
    val get_proxies : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> ref_PVS_proxy_set
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> value:string -> unit
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> pVS_uuid:string -> ref_PVS_site
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> unit
    val set_PVS_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_site -> value:string -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_site_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PVS_site_to_pVS_site_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_site_to_pVS_site_t_map
  end
  module PVS_server : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> pVS_server_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PVS_server
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> string
    val get_addresses : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> string_set
    val get_first_port : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> int64
    val get_last_port : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> int64
    val get_site : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> ref_PVS_site
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> addresses:string_set -> first_port:int64 -> last_port:int64 -> site:ref_PVS_site -> ref_PVS_server
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_server -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_server_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PVS_server_to_pVS_server_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_server_to_pVS_server_t_map
  end
  module PVS_proxy : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> pVS_proxy_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PVS_proxy
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> string
    val get_site : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> ref_PVS_site
    val get_VIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> ref_VIF
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> bool
    val get_status : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> pvs_proxy_status
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> site:ref_PVS_site -> vIF:ref_VIF -> ref_PVS_proxy
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_proxy -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_proxy_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PVS_proxy_to_pVS_proxy_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_proxy_to_pVS_proxy_t_map
  end
  module PVS_cache_storage : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> pVS_cache_storage_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PVS_cache_storage
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> sR:ref_SR -> site:ref_PVS_site -> size:int64 -> ref_PVS_cache_storage
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> unit
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> ref_host
    val get_SR : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> ref_SR
    val get_site : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> ref_PVS_site
    val get_size : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> int64
    val get_VDI : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PVS_cache_storage -> ref_VDI
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_cache_storage_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PVS_cache_storage_to_pVS_cache_storage_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PVS_cache_storage_to_pVS_cache_storage_t_map
    val create_from_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> value:pVS_cache_storage_t -> ref_PVS_cache_storage
  end
  module Feature : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> feature_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_Feature
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_Feature_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> string
    val get_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> bool
    val get_experimental : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> bool
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Feature -> ref_host
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Feature_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_Feature_to_feature_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Feature_to_feature_t_map
  end
  module SDN_controller : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> sDN_controller_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_SDN_controller
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> string
    val get_protocol : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> sdn_controller_protocol
    val get_address : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> string
    val get_port : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> int64
    val introduce : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> protocol:sdn_controller_protocol -> address:string -> port:int64 -> ref_SDN_controller
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_SDN_controller -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SDN_controller_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_SDN_controller_to_sDN_controller_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_SDN_controller_to_sDN_controller_t_map
  end
  module Vdi_nbd_server_info : sig
  end
  module PUSB : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> pUSB_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_PUSB
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_USB_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> ref_USB_group
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> ref_host
    val get_path : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_vendor_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_vendor_desc : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_product_id : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_product_desc : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_serial : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_version : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string
    val get_passthrough_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> bool
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> string_to_string_map
    val get_speed : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> float
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> key:string -> unit
    val scan : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val set_passthrough_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_PUSB -> value:bool -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PUSB_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_PUSB_to_pUSB_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_PUSB_to_pUSB_t_map
  end
  module USB_group : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> uSB_group_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_USB_group
    val get_by_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> label:string -> ref_USB_group_set
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> string
    val get_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> string
    val get_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> string
    val get_PUSBs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> ref_PUSB_set
    val get_VUSBs : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> ref_VUSB_set
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> string_to_string_map
    val set_name_label : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> value:string -> unit
    val set_name_description : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> value:string -> unit
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_USB_group
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_USB_group -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_USB_group_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_USB_group_to_uSB_group_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_USB_group_to_uSB_group_t_map
  end
  module VUSB : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> vUSB_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_VUSB
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> vusb_operations_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> string_to_vusb_operations_map
    val get_VM : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> ref_VM
    val get_USB_group : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> ref_USB_group
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> string_to_string_map
    val get_currently_attached : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> bool
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> vM:ref_VM -> uSB_group:ref_USB_group -> other_config:string_to_string_map -> ref_VUSB
    val unplug : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> unit
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_VUSB -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VUSB_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_VUSB_to_vUSB_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_VUSB_to_vUSB_t_map
  end
  module Cluster : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> cluster_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_Cluster
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string
    val get_cluster_hosts : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_Cluster_host_set
    val get_pending_forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string_set
    val get_cluster_token : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string
    val get_cluster_stack : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> cluster_operation_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string_to_cluster_operation_map
    val get_pool_auto_join : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> bool
    val get_token_timeout : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> float
    val get_token_timeout_coefficient : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> float
    val get_cluster_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string_to_string_map
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> string_to_string_map
    val set_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> value:string_to_string_map -> unit
    val add_to_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> key:string -> value:string -> unit
    val remove_from_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> key:string -> unit
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> pIF:ref_PIF -> cluster_stack:string -> pool_auto_join:bool -> token_timeout:float -> token_timeout_coefficient:float -> ref_Cluster
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> unit
    val get_network : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> ref_network
    val pool_create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> network:ref_network -> cluster_stack:string -> token_timeout:float -> token_timeout_coefficient:float -> ref_Cluster
    val pool_force_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> unit
    val pool_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> unit
    val pool_resync : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Cluster_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_Cluster_to_cluster_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Cluster_to_cluster_t_map
  end
  module Cluster_host : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> cluster_host_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_Cluster_host
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> string
    val get_cluster : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_Cluster
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_host
    val get_enabled : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> bool
    val get_PIF : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> ref_PIF
    val get_joined : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> bool
    val get_allowed_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> cluster_host_operation_set
    val get_current_operations : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> string_to_cluster_host_operation_map
    val get_other_config : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> string_to_string_map
    val create : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> cluster:ref_Cluster -> host:ref_host -> pif:ref_PIF -> ref_Cluster_host
    val destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> unit
    val enable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> unit
    val force_destroy : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> unit
    val forget : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> unit
    val disable : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Cluster_host -> unit
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Cluster_host_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_Cluster_host_to_cluster_host_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Cluster_host_to_cluster_host_t_map
  end
  module Certificate : sig
    val get_record : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> certificate_t
    val get_by_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> uuid:string -> ref_Certificate
    val get_uuid : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> string
    val get_host : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> ref_host
    val get_not_before : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> datetime
    val get_not_after : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> datetime
    val get_fingerprint : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> self:ref_Certificate -> string
    val get_all : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Certificate_set
    val get_all_records_where : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> expr:string -> ref_Certificate_to_certificate_t_map
    val get_all_records : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> ref_Certificate_to_certificate_t_map
  end
  module Diagnostics : sig
    val gc_compact : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> unit
    val gc_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> string_to_string_map
    val db_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> string_to_string_map
    val network_stats : rpc:(Rpc.call -> Rpc.response) -> session_id:ref_session -> host:ref_host -> params:string_to_string_map -> string_set_set
  end

end

