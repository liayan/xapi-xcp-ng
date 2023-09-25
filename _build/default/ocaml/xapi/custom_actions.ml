open API

module type CUSTOM_ACTIONS = sig

  module Session : sig
    val login_with_password : __context:Context.t -> uname:string -> pwd:string -> version:string -> originator:string -> ref_session
    val logout : __context:Context.t -> unit
    val change_password : __context:Context.t -> old_pwd:string -> new_pwd:string -> unit
    val slave_login : __context:Context.t -> host:ref_host -> psecret:secretstring -> ref_session
    val slave_local_login : __context:Context.t -> psecret:secretstring -> ref_session
    val slave_local_login_with_password : __context:Context.t -> uname:string -> pwd:string -> ref_session
    val create_from_db_file : __context:Context.t -> filename:string -> ref_session
    val local_logout : __context:Context.t -> unit
    val get_all_subject_identifiers : __context:Context.t -> string_set
    val logout_subject_identifier : __context:Context.t -> subject_identifier:string -> unit
  end
  module Auth : sig
    val get_subject_identifier : __context:Context.t -> subject_name:string -> string
    val get_subject_information_from_identifier : __context:Context.t -> subject_identifier:string -> string_to_string_map
    val get_group_membership : __context:Context.t -> subject_identifier:string -> string_set
  end
  module Subject : sig
    val create : __context:Context.t -> subject_identifier:string -> other_config:string_to_string_map -> ref_subject
    val destroy : __context:Context.t -> self:ref_subject -> unit
    val add_to_roles : __context:Context.t -> self:ref_subject -> role:ref_role -> unit
    val remove_from_roles : __context:Context.t -> self:ref_subject -> role:ref_role -> unit
    val get_permissions_name_label : __context:Context.t -> self:ref_subject -> string_set
  end
  module Role : sig
    val get_record : __context:Context.t -> self:ref_role -> role_t
    val get_by_uuid : __context:Context.t -> uuid:string -> ref_role
    val get_by_name_label : __context:Context.t -> label:string -> ref_role_set
    val get_uuid : __context:Context.t -> self:ref_role -> string
    val get_name_label : __context:Context.t -> self:ref_role -> string
    val get_name_description : __context:Context.t -> self:ref_role -> string
    val get_subroles : __context:Context.t -> self:ref_role -> ref_role_set
    val get_permissions : __context:Context.t -> self:ref_role -> ref_role_set
    val get_permissions_name_label : __context:Context.t -> self:ref_role -> string_set
    val get_by_permission : __context:Context.t -> permission:ref_role -> ref_role_set
    val get_by_permission_name_label : __context:Context.t -> label:string -> ref_role_set
    val get_all : __context:Context.t -> ref_role_set
    val get_all_records_where : __context:Context.t -> expr:string -> ref_role_to_role_t_map
    val get_all_records : __context:Context.t -> ref_role_to_role_t_map
  end
  module Task : sig
    val create : __context:Context.t -> label:string -> description:string -> ref_task
    val destroy : __context:Context.t -> self:ref_task -> unit
    val cancel : __context:Context.t -> task:ref_task -> unit
    val set_status : __context:Context.t -> self:ref_task -> value:task_status_type -> unit
    val set_progress : __context:Context.t -> self:ref_task -> value:float -> unit
  end
  module Event : sig
    val register : __context:Context.t -> classes:string_set -> unit
    val unregister : __context:Context.t -> classes:string_set -> unit
    val next : __context:Context.t -> Rpc.t
    val from : __context:Context.t -> classes:string_set -> token:string -> timeout:float -> Rpc.t
    val get_current_id : __context:Context.t -> int64
    val inject : __context:Context.t -> _class:string -> _ref:string -> string
  end
  module Pool : sig
    val join : __context:Context.t -> master_address:string -> master_username:string -> master_password:string -> unit
    val join_force : __context:Context.t -> master_address:string -> master_username:string -> master_password:string -> unit
    val eject : __context:Context.t -> host:ref_host -> unit
    val initial_auth : __context:Context.t -> secretstring
    val emergency_transition_to_master : __context:Context.t -> unit
    val emergency_reset_master : __context:Context.t -> master_address:string -> unit
    val recover_slaves : __context:Context.t -> ref_host_set
    val hello : __context:Context.t -> host_uuid:string -> host_address:string -> hello_return
    val is_slave : __context:Context.t -> host:ref_host -> bool
    val create_VLAN : __context:Context.t -> device:string -> network:ref_network -> vLAN:int64 -> ref_PIF_set
    val management_reconfigure : __context:Context.t -> network:ref_network -> unit
    val create_VLAN_from_PIF : __context:Context.t -> pif:ref_PIF -> network:ref_network -> vLAN:int64 -> ref_PIF_set
    val slave_network_report : __context:Context.t -> phydevs:string_to_string_map -> dev_to_mac:string_to_string_map -> dev_to_mtu:string_to_int64_map -> slave_host:ref_host -> ref_PIF_set
    val enable_ha : __context:Context.t -> heartbeat_srs:ref_SR_set -> configuration:string_to_string_map -> unit
    val disable_ha : __context:Context.t -> unit
    val sync_database : __context:Context.t -> unit
    val designate_new_master : __context:Context.t -> host:ref_host -> unit
    val ha_prevent_restarts_for : __context:Context.t -> seconds:int64 -> unit
    val ha_failover_plan_exists : __context:Context.t -> n:int64 -> bool
    val ha_compute_max_host_failures_to_tolerate : __context:Context.t -> int64
    val ha_compute_hypothetical_max_host_failures_to_tolerate : __context:Context.t -> configuration:ref_VM_to_string_map -> int64
    val ha_compute_vm_failover_plan : __context:Context.t -> failed_hosts:ref_host_set -> failed_vms:ref_VM_set -> ref_VM_to_string_to_string_map_map
    val set_ha_host_failures_to_tolerate : __context:Context.t -> self:ref_pool -> value:int64 -> unit
    val create_new_blob : __context:Context.t -> pool:ref_pool -> name:string -> mime_type:string -> public:bool -> ref_blob
    val ha_schedule_plan_recomputation : __context:Context.t -> unit
    val enable_binary_storage : __context:Context.t -> unit
    val disable_binary_storage : __context:Context.t -> unit
    val enable_external_auth : __context:Context.t -> pool:ref_pool -> config:string_to_string_map -> service_name:string -> auth_type:string -> unit
    val disable_external_auth : __context:Context.t -> pool:ref_pool -> config:string_to_string_map -> unit
    val detect_nonhomogeneous_external_auth : __context:Context.t -> pool:ref_pool -> unit
    val initialize_wlb : __context:Context.t -> wlb_url:string -> wlb_username:string -> wlb_password:string -> xenserver_username:string -> xenserver_password:string -> unit
    val deconfigure_wlb : __context:Context.t -> unit
    val send_wlb_configuration : __context:Context.t -> config:string_to_string_map -> unit
    val retrieve_wlb_configuration : __context:Context.t -> string_to_string_map
    val retrieve_wlb_recommendations : __context:Context.t -> ref_VM_to_string_set_map
    val send_test_post : __context:Context.t -> host:string -> port:int64 -> body:string -> string
    val certificate_install : __context:Context.t -> name:string -> cert:string -> unit
    val certificate_uninstall : __context:Context.t -> name:string -> unit
    val certificate_list : __context:Context.t -> string_set
    val crl_install : __context:Context.t -> name:string -> cert:string -> unit
    val crl_uninstall : __context:Context.t -> name:string -> unit
    val crl_list : __context:Context.t -> string_set
    val certificate_sync : __context:Context.t -> unit
    val enable_redo_log : __context:Context.t -> sr:ref_SR -> unit
    val disable_redo_log : __context:Context.t -> unit
    val audit_log_append : __context:Context.t -> line:string -> unit
    val set_vswitch_controller : __context:Context.t -> address:string -> unit
    val test_archive_target : __context:Context.t -> self:ref_pool -> config:string_to_string_map -> string
    val enable_local_storage_caching : __context:Context.t -> self:ref_pool -> unit
    val disable_local_storage_caching : __context:Context.t -> self:ref_pool -> unit
    val get_license_state : __context:Context.t -> self:ref_pool -> string_to_string_map
    val apply_edition : __context:Context.t -> self:ref_pool -> edition:string -> unit
    val disable_ssl_legacy : __context:Context.t -> self:ref_pool -> unit
    val set_igmp_snooping_enabled : __context:Context.t -> self:ref_pool -> value:bool -> unit
    val has_extension : __context:Context.t -> self:ref_pool -> name:string -> bool
    val add_to_guest_agent_config : __context:Context.t -> self:ref_pool -> key:string -> value:string -> unit
    val remove_from_guest_agent_config : __context:Context.t -> self:ref_pool -> key:string -> unit
    val rotate_secret : __context:Context.t -> unit
    val set_https_only : __context:Context.t -> self:ref_pool -> value:bool -> unit
  end
  module Pool_patch : sig
    val apply : __context:Context.t -> self:ref_pool_patch -> host:ref_host -> string
    val pool_apply : __context:Context.t -> self:ref_pool_patch -> unit
    val precheck : __context:Context.t -> self:ref_pool_patch -> host:ref_host -> string
    val clean : __context:Context.t -> self:ref_pool_patch -> unit
    val pool_clean : __context:Context.t -> self:ref_pool_patch -> unit
    val destroy : __context:Context.t -> self:ref_pool_patch -> unit
    val clean_on_host : __context:Context.t -> self:ref_pool_patch -> host:ref_host -> unit
  end
  module Pool_update : sig
    val introduce : __context:Context.t -> vdi:ref_VDI -> ref_pool_update
    val pool_apply : __context:Context.t -> self:ref_pool_update -> unit
    val pool_clean : __context:Context.t -> self:ref_pool_update -> unit
    val destroy : __context:Context.t -> self:ref_pool_update -> unit
    val attach : __context:Context.t -> self:ref_pool_update -> use_localhost_proxy:bool -> string
    val detach : __context:Context.t -> self:ref_pool_update -> unit
    val resync_host : __context:Context.t -> host:ref_host -> unit
  end
  module VM : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> power_state:vm_power_state -> user_version:int64 -> is_a_template:bool -> suspend_VDI:ref_VDI -> affinity:ref_host -> memory_target:int64 -> memory_static_max:int64 -> memory_dynamic_max:int64 -> memory_dynamic_min:int64 -> memory_static_min:int64 -> vCPUs_params:string_to_string_map -> vCPUs_max:int64 -> vCPUs_at_startup:int64 -> actions_after_shutdown:on_normal_exit -> actions_after_reboot:on_normal_exit -> actions_after_crash:on_crash_behaviour -> pV_bootloader:string -> pV_kernel:string -> pV_ramdisk:string -> pV_args:string -> pV_bootloader_args:string -> pV_legacy_args:string -> hVM_boot_policy:string -> hVM_boot_params:string_to_string_map -> hVM_shadow_multiplier:float -> platform:string_to_string_map -> pCI_bus:string -> other_config:string_to_string_map -> last_boot_CPU_flags:string_to_string_map -> last_booted_record:string -> recommendations:string -> xenstore_data:string_to_string_map -> ha_always_run:bool -> ha_restart_priority:string -> tags:string_set -> blocked_operations:vm_operations_to_string_map -> protection_policy:ref_VMPP -> is_snapshot_from_vmpp:bool -> snapshot_schedule:ref_VMSS -> is_vmss_snapshot:bool -> appliance:ref_VM_appliance -> start_delay:int64 -> shutdown_delay:int64 -> order:int64 -> suspend_SR:ref_SR -> version:int64 -> generation_id:string -> hardware_platform_version:int64 -> has_vendor_device:bool -> reference_label:string -> domain_type:domain_type -> nVRAM:string_to_string_map -> ref_VM
    val destroy : __context:Context.t -> self:ref_VM -> unit
    val set_is_a_template : __context:Context.t -> self:ref_VM -> value:bool -> unit
    val set_xenstore_data : __context:Context.t -> self:ref_VM -> value:string_to_string_map -> unit
    val snapshot : __context:Context.t -> vm:ref_VM -> new_name:string -> ref_VM
    val clone : __context:Context.t -> vm:ref_VM -> new_name:string -> ref_VM
    val copy : __context:Context.t -> vm:ref_VM -> new_name:string -> sr:ref_SR -> ref_VM
    val revert : __context:Context.t -> snapshot:ref_VM -> unit
    val checkpoint : __context:Context.t -> vm:ref_VM -> new_name:string -> ref_VM
    val provision : __context:Context.t -> vm:ref_VM -> unit
    val start : __context:Context.t -> vm:ref_VM -> start_paused:bool -> force:bool -> unit
    val start_on : __context:Context.t -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> unit
    val pause : __context:Context.t -> vm:ref_VM -> unit
    val unpause : __context:Context.t -> vm:ref_VM -> unit
    val clean_shutdown : __context:Context.t -> vm:ref_VM -> unit
    val shutdown : __context:Context.t -> vm:ref_VM -> unit
    val clean_reboot : __context:Context.t -> vm:ref_VM -> unit
    val hard_shutdown : __context:Context.t -> vm:ref_VM -> unit
    val power_state_reset : __context:Context.t -> vm:ref_VM -> unit
    val hard_reboot : __context:Context.t -> vm:ref_VM -> unit
    val suspend : __context:Context.t -> vm:ref_VM -> unit
    val csvm : __context:Context.t -> vm:ref_VM -> ref_VM
    val resume : __context:Context.t -> vm:ref_VM -> start_paused:bool -> force:bool -> unit
    val set_is_default_template : __context:Context.t -> vm:ref_VM -> value:bool -> unit
    val hard_reboot_internal : __context:Context.t -> vm:ref_VM -> unit
    val resume_on : __context:Context.t -> vm:ref_VM -> host:ref_host -> start_paused:bool -> force:bool -> unit
    val pool_migrate : __context:Context.t -> vm:ref_VM -> host:ref_host -> options:string_to_string_map -> unit
    val pool_migrate_complete : __context:Context.t -> vm:ref_VM -> host:ref_host -> unit
    val set_VCPUs_number_live : __context:Context.t -> self:ref_VM -> nvcpu:int64 -> unit
    val add_to_VCPUs_params_live : __context:Context.t -> self:ref_VM -> key:string -> value:string -> unit
    val set_NVRAM : __context:Context.t -> self:ref_VM -> value:string_to_string_map -> unit
    val add_to_NVRAM : __context:Context.t -> self:ref_VM -> key:string -> value:string -> unit
    val remove_from_NVRAM : __context:Context.t -> self:ref_VM -> key:string -> unit
    val set_ha_restart_priority : __context:Context.t -> self:ref_VM -> value:string -> unit
    val set_ha_always_run : __context:Context.t -> self:ref_VM -> value:bool -> unit
    val compute_memory_overhead : __context:Context.t -> vm:ref_VM -> int64
    val set_memory_dynamic_max : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_memory_dynamic_min : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_memory_dynamic_range : __context:Context.t -> self:ref_VM -> min:int64 -> max:int64 -> unit
    val set_memory_static_max : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_memory_static_min : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_memory_static_range : __context:Context.t -> self:ref_VM -> min:int64 -> max:int64 -> unit
    val set_memory_limits : __context:Context.t -> self:ref_VM -> static_min:int64 -> static_max:int64 -> dynamic_min:int64 -> dynamic_max:int64 -> unit
    val set_memory : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_memory_target_live : __context:Context.t -> self:ref_VM -> target:int64 -> unit
    val wait_memory_target_live : __context:Context.t -> self:ref_VM -> unit
    val get_cooperative : __context:Context.t -> self:ref_VM -> bool
    val set_HVM_shadow_multiplier : __context:Context.t -> self:ref_VM -> value:float -> unit
    val set_shadow_multiplier_live : __context:Context.t -> self:ref_VM -> multiplier:float -> unit
    val set_VCPUs_max : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_VCPUs_at_startup : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val send_sysrq : __context:Context.t -> vm:ref_VM -> key:string -> unit
    val send_trigger : __context:Context.t -> vm:ref_VM -> trigger:string -> unit
    val maximise_memory : __context:Context.t -> self:ref_VM -> total:int64 -> approximate:bool -> int64
    val migrate_send : __context:Context.t -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> ref_VM
    val assert_can_migrate : __context:Context.t -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> options:string_to_string_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> unit
    val assert_can_migrate_sender : __context:Context.t -> vm:ref_VM -> dest:string_to_string_map -> live:bool -> vdi_map:ref_VDI_to_ref_SR_map -> vif_map:ref_VIF_to_ref_network_map -> vgpu_map:ref_VGPU_to_ref_GPU_group_map -> options:string_to_string_map -> unit
    val get_boot_record : __context:Context.t -> self:ref_VM -> vM_t
    val get_data_sources : __context:Context.t -> self:ref_VM -> data_source_t_set
    val record_data_source : __context:Context.t -> self:ref_VM -> data_source:string -> unit
    val query_data_source : __context:Context.t -> self:ref_VM -> data_source:string -> float
    val forget_data_source_archives : __context:Context.t -> self:ref_VM -> data_source:string -> unit
    val assert_operation_valid : __context:Context.t -> self:ref_VM -> op:vm_operations -> unit
    val update_allowed_operations : __context:Context.t -> self:ref_VM -> unit
    val get_allowed_VBD_devices : __context:Context.t -> vm:ref_VM -> string_set
    val get_allowed_VIF_devices : __context:Context.t -> vm:ref_VM -> string_set
    val get_possible_hosts : __context:Context.t -> vm:ref_VM -> ref_host_set
    val assert_can_boot_here : __context:Context.t -> self:ref_VM -> host:ref_host -> unit
    val atomic_set_resident_on : __context:Context.t -> vm:ref_VM -> host:ref_host -> unit
    val create_new_blob : __context:Context.t -> vm:ref_VM -> name:string -> mime_type:string -> public:bool -> ref_blob
    val s3_suspend : __context:Context.t -> vm:ref_VM -> unit
    val s3_resume : __context:Context.t -> vm:ref_VM -> unit
    val assert_agile : __context:Context.t -> self:ref_VM -> unit
    val update_snapshot_metadata : __context:Context.t -> vm:ref_VM -> snapshot_of:ref_VM -> snapshot_time:datetime -> transportable_snapshot_id:string -> unit
    val retrieve_wlb_recommendations : __context:Context.t -> vm:ref_VM -> ref_host_to_string_set_map
    val set_bios_strings : __context:Context.t -> self:ref_VM -> value:string_to_string_map -> unit
    val copy_bios_strings : __context:Context.t -> vm:ref_VM -> host:ref_host -> unit
    val set_protection_policy : __context:Context.t -> self:ref_VM -> value:ref_VMPP -> unit
    val set_snapshot_schedule : __context:Context.t -> self:ref_VM -> value:ref_VMSS -> unit
    val set_start_delay : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_shutdown_delay : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_order : __context:Context.t -> self:ref_VM -> value:int64 -> unit
    val set_suspend_VDI : __context:Context.t -> self:ref_VM -> value:ref_VDI -> unit
    val assert_can_be_recovered : __context:Context.t -> self:ref_VM -> session_to:ref_session -> unit
    val get_SRs_required_for_recovery : __context:Context.t -> self:ref_VM -> session_to:ref_session -> ref_SR_set
    val recover : __context:Context.t -> self:ref_VM -> session_to:ref_session -> force:bool -> unit
    val import_convert : __context:Context.t -> _type:string -> username:string -> password:string -> sr:ref_SR -> remote_config:string_to_string_map -> unit
    val set_appliance : __context:Context.t -> self:ref_VM -> value:ref_VM_appliance -> unit
    val query_services : __context:Context.t -> self:ref_VM -> string_to_string_map
    val call_plugin : __context:Context.t -> vm:ref_VM -> plugin:string -> fn:string -> args:string_to_string_map -> string
    val set_has_vendor_device : __context:Context.t -> self:ref_VM -> value:bool -> unit
    val import : __context:Context.t -> url:string -> sr:ref_SR -> full_restore:bool -> force:bool -> ref_VM_set
    val set_actions_after_crash : __context:Context.t -> self:ref_VM -> value:on_crash_behaviour -> unit
    val set_domain_type : __context:Context.t -> self:ref_VM -> value:domain_type -> unit
    val set_HVM_boot_policy : __context:Context.t -> self:ref_VM -> value:string -> unit
    val set_NVRAM_EFI_variables : __context:Context.t -> self:ref_VM -> value:string -> unit
  end
  module VM_metrics : sig
  end
  module VM_guest_metrics : sig
  end
  module VMPP : sig
  end
  module VMSS : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> enabled:bool -> _type:vmss_type -> retained_snapshots:int64 -> frequency:vmss_frequency -> schedule:string_to_string_map -> ref_VMSS
    val destroy : __context:Context.t -> self:ref_VMSS -> unit
    val snapshot_now : __context:Context.t -> vmss:ref_VMSS -> string
    val set_retained_snapshots : __context:Context.t -> self:ref_VMSS -> value:int64 -> unit
    val set_frequency : __context:Context.t -> self:ref_VMSS -> value:vmss_frequency -> unit
    val set_schedule : __context:Context.t -> self:ref_VMSS -> value:string_to_string_map -> unit
    val add_to_schedule : __context:Context.t -> self:ref_VMSS -> key:string -> value:string -> unit
    val remove_from_schedule : __context:Context.t -> self:ref_VMSS -> key:string -> unit
    val set_last_run_time : __context:Context.t -> self:ref_VMSS -> value:datetime -> unit
    val set_type : __context:Context.t -> self:ref_VMSS -> value:vmss_type -> unit
  end
  module VM_appliance : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> ref_VM_appliance
    val destroy : __context:Context.t -> self:ref_VM_appliance -> unit
    val start : __context:Context.t -> self:ref_VM_appliance -> paused:bool -> unit
    val clean_shutdown : __context:Context.t -> self:ref_VM_appliance -> unit
    val hard_shutdown : __context:Context.t -> self:ref_VM_appliance -> unit
    val shutdown : __context:Context.t -> self:ref_VM_appliance -> unit
    val assert_can_be_recovered : __context:Context.t -> self:ref_VM_appliance -> session_to:ref_session -> unit
    val get_SRs_required_for_recovery : __context:Context.t -> self:ref_VM_appliance -> session_to:ref_session -> ref_SR_set
    val recover : __context:Context.t -> self:ref_VM_appliance -> session_to:ref_session -> force:bool -> unit
  end
  module DR_task : sig
    val create : __context:Context.t -> _type:string -> device_config:string_to_string_map -> whitelist:string_set -> ref_DR_task
    val destroy : __context:Context.t -> self:ref_DR_task -> unit
  end
  module Host : sig
    val disable : __context:Context.t -> host:ref_host -> unit
    val enable : __context:Context.t -> host:ref_host -> unit
    val shutdown : __context:Context.t -> host:ref_host -> unit
    val reboot : __context:Context.t -> host:ref_host -> unit
    val prepare_for_poweroff : __context:Context.t -> host:ref_host -> unit
    val dmesg : __context:Context.t -> host:ref_host -> string
    val dmesg_clear : __context:Context.t -> host:ref_host -> string
    val get_log : __context:Context.t -> host:ref_host -> string
    val send_debug_keys : __context:Context.t -> host:ref_host -> keys:string -> unit
    val bugreport_upload : __context:Context.t -> host:ref_host -> url:string -> options:string_to_string_map -> unit
    val list_methods : __context:Context.t -> string_set
    val license_add : __context:Context.t -> host:ref_host -> contents:string -> unit
    val license_remove : __context:Context.t -> host:ref_host -> unit
    val create : __context:Context.t -> uuid:string -> name_label:string -> name_description:string -> hostname:string -> address:string -> external_auth_type:string -> external_auth_service_name:string -> external_auth_configuration:string_to_string_map -> license_params:string_to_string_map -> edition:string -> license_server:string_to_string_map -> local_cache_sr:ref_SR -> chipset_info:string_to_string_map -> ssl_legacy:bool -> ref_host
    val destroy : __context:Context.t -> self:ref_host -> unit
    val power_on : __context:Context.t -> host:ref_host -> unit
    val set_license_params : __context:Context.t -> self:ref_host -> value:string_to_string_map -> unit
    val emergency_ha_disable : __context:Context.t -> soft:bool -> unit
    val ha_disarm_fencing : __context:Context.t -> host:ref_host -> unit
    val preconfigure_ha : __context:Context.t -> host:ref_host -> statefiles:ref_VDI_set -> metadata_vdi:ref_VDI -> generation:string -> unit
    val ha_join_liveset : __context:Context.t -> host:ref_host -> unit
    val ha_disable_failover_decisions : __context:Context.t -> host:ref_host -> unit
    val ha_wait_for_shutdown_via_statefile : __context:Context.t -> host:ref_host -> unit
    val ha_stop_daemon : __context:Context.t -> host:ref_host -> unit
    val ha_release_resources : __context:Context.t -> host:ref_host -> unit
    val ha_xapi_healthcheck : __context:Context.t -> bool
    val local_assert_healthy : __context:Context.t -> unit
    val request_backup : __context:Context.t -> host:ref_host -> generation:int64 -> force:bool -> unit
    val request_config_file_sync : __context:Context.t -> host:ref_host -> hash:string -> unit
    val propose_new_master : __context:Context.t -> address:string -> manual:bool -> unit
    val commit_new_master : __context:Context.t -> address:string -> unit
    val abort_new_master : __context:Context.t -> address:string -> unit
    val get_data_sources : __context:Context.t -> host:ref_host -> data_source_t_set
    val record_data_source : __context:Context.t -> host:ref_host -> data_source:string -> unit
    val query_data_source : __context:Context.t -> host:ref_host -> data_source:string -> float
    val forget_data_source_archives : __context:Context.t -> host:ref_host -> data_source:string -> unit
    val assert_can_evacuate : __context:Context.t -> host:ref_host -> unit
    val get_vms_which_prevent_evacuation : __context:Context.t -> self:ref_host -> ref_VM_to_string_set_map
    val get_uncooperative_resident_VMs : __context:Context.t -> self:ref_host -> ref_VM_set
    val get_uncooperative_domains : __context:Context.t -> self:ref_host -> string_set
    val evacuate : __context:Context.t -> host:ref_host -> unit
    val signal_networking_change : __context:Context.t -> unit
    val notify : __context:Context.t -> ty:string -> params:string -> unit
    val syslog_reconfigure : __context:Context.t -> host:ref_host -> unit
    val management_reconfigure : __context:Context.t -> pif:ref_PIF -> unit
    val local_management_reconfigure : __context:Context.t -> interface:string -> unit
    val management_disable : __context:Context.t -> unit
    val get_management_interface : __context:Context.t -> host:ref_host -> ref_PIF
    val get_system_status_capabilities : __context:Context.t -> host:ref_host -> string
    val get_diagnostic_timing_stats : __context:Context.t -> host:ref_host -> string_to_string_map
    val restart_agent : __context:Context.t -> host:ref_host -> unit
    val shutdown_agent : __context:Context.t -> unit
    val set_hostname_live : __context:Context.t -> host:ref_host -> hostname:string -> unit
    val is_in_emergency_mode : __context:Context.t -> bool
    val compute_free_memory : __context:Context.t -> host:ref_host -> int64
    val compute_memory_overhead : __context:Context.t -> host:ref_host -> int64
    val tickle_heartbeat : __context:Context.t -> host:ref_host -> stuff:string_to_string_map -> string_to_string_map
    val sync_data : __context:Context.t -> host:ref_host -> unit
    val backup_rrds : __context:Context.t -> host:ref_host -> delay:float -> unit
    val create_new_blob : __context:Context.t -> host:ref_host -> name:string -> mime_type:string -> public:bool -> ref_blob
    val call_plugin : __context:Context.t -> host:ref_host -> plugin:string -> fn:string -> args:string_to_string_map -> string
    val has_extension : __context:Context.t -> host:ref_host -> name:string -> bool
    val call_extension : __context:Context.t -> host:ref_host -> call:string -> Rpc.t
    val get_servertime : __context:Context.t -> host:ref_host -> datetime
    val get_server_localtime : __context:Context.t -> host:ref_host -> datetime
    val enable_binary_storage : __context:Context.t -> host:ref_host -> unit
    val disable_binary_storage : __context:Context.t -> host:ref_host -> unit
    val enable_external_auth : __context:Context.t -> host:ref_host -> config:string_to_string_map -> service_name:string -> auth_type:string -> unit
    val disable_external_auth : __context:Context.t -> host:ref_host -> config:string_to_string_map -> unit
    val retrieve_wlb_evacuate_recommendations : __context:Context.t -> self:ref_host -> ref_VM_to_string_set_map
    val certificate_install : __context:Context.t -> host:ref_host -> name:string -> cert:string -> unit
    val certificate_uninstall : __context:Context.t -> host:ref_host -> name:string -> unit
    val certificate_list : __context:Context.t -> host:ref_host -> string_set
    val crl_install : __context:Context.t -> host:ref_host -> name:string -> crl:string -> unit
    val crl_uninstall : __context:Context.t -> host:ref_host -> name:string -> unit
    val crl_list : __context:Context.t -> host:ref_host -> string_set
    val certificate_sync : __context:Context.t -> host:ref_host -> unit
    val get_server_certificate : __context:Context.t -> host:ref_host -> string
    val install_server_certificate : __context:Context.t -> host:ref_host -> certificate:string -> private_key:string -> certificate_chain:string -> unit
    val emergency_reset_server_certificate : __context:Context.t -> unit
    val update_pool_secret : __context:Context.t -> host:ref_host -> pool_secret:secretstring -> unit
    val update_master : __context:Context.t -> host:ref_host -> master_address:string -> unit
    val attach_static_vdis : __context:Context.t -> host:ref_host -> vdi_reason_map:ref_VDI_to_string_map -> unit
    val detach_static_vdis : __context:Context.t -> host:ref_host -> vdis:ref_VDI_set -> unit
    val set_localdb_key : __context:Context.t -> host:ref_host -> key:string -> value:string -> unit
    val apply_edition : __context:Context.t -> host:ref_host -> edition:string -> force:bool -> unit
    val refresh_pack_info : __context:Context.t -> host:ref_host -> unit
    val set_power_on_mode : __context:Context.t -> self:ref_host -> power_on_mode:string -> power_on_config:string_to_string_map -> unit
    val reset_networking : __context:Context.t -> host:ref_host -> unit
    val enable_local_storage_caching : __context:Context.t -> host:ref_host -> sr:ref_SR -> unit
    val disable_local_storage_caching : __context:Context.t -> host:ref_host -> unit
    val get_sm_diagnostics : __context:Context.t -> host:ref_host -> string
    val get_thread_diagnostics : __context:Context.t -> host:ref_host -> string
    val sm_dp_destroy : __context:Context.t -> host:ref_host -> dp:string -> allow_leak:bool -> unit
    val sync_vlans : __context:Context.t -> host:ref_host -> unit
    val sync_tunnels : __context:Context.t -> host:ref_host -> unit
    val sync_pif_currently_attached : __context:Context.t -> host:ref_host -> bridges:string_set -> unit
    val migrate_receive : __context:Context.t -> host:ref_host -> network:ref_network -> options:string_to_string_map -> string_to_string_map
    val declare_dead : __context:Context.t -> host:ref_host -> unit
    val enable_display : __context:Context.t -> host:ref_host -> host_display
    val disable_display : __context:Context.t -> host:ref_host -> host_display
    val set_ssl_legacy : __context:Context.t -> self:ref_host -> value:bool -> unit
    val apply_guest_agent_config : __context:Context.t -> host:ref_host -> unit
    val mxgpu_vf_setup : __context:Context.t -> host:ref_host -> unit
    val nvidia_vf_setup : __context:Context.t -> host:ref_host -> pf:ref_PCI -> enable:bool -> unit
    val allocate_resources_for_vm : __context:Context.t -> self:ref_host -> vm:ref_VM -> live:bool -> unit
    val set_iscsi_iqn : __context:Context.t -> host:ref_host -> value:string -> unit
    val set_multipathing : __context:Context.t -> host:ref_host -> value:bool -> unit
    val set_uefi_certificates : __context:Context.t -> host:ref_host -> value:string -> unit
    val notify_accept_new_pool_secret : __context:Context.t -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val notify_send_new_pool_secret : __context:Context.t -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val cleanup_pool_secret : __context:Context.t -> host:ref_host -> old_ps:secretstring -> new_ps:secretstring -> unit
    val set_https_only : __context:Context.t -> self:ref_host -> value:bool -> unit
    val set_sched_gran : __context:Context.t -> self:ref_host -> value:host_sched_gran -> unit
    val get_sched_gran : __context:Context.t -> self:ref_host -> host_sched_gran
  end
  module Host_crashdump : sig
    val destroy : __context:Context.t -> self:ref_host_crashdump -> unit
    val upload : __context:Context.t -> self:ref_host_crashdump -> url:string -> options:string_to_string_map -> unit
  end
  module Host_patch : sig
    val destroy : __context:Context.t -> self:ref_host_patch -> unit
    val apply : __context:Context.t -> self:ref_host_patch -> string
  end
  module Host_metrics : sig
  end
  module Host_cpu : sig
  end
  module Network : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> tags:string_set -> ref_network
    val destroy : __context:Context.t -> self:ref_network -> unit
    val attach : __context:Context.t -> network:ref_network -> host:ref_host -> unit
    val pool_introduce : __context:Context.t -> name_label:string -> name_description:string -> mTU:int64 -> other_config:string_to_string_map -> bridge:string -> managed:bool -> purpose:network_purpose_set -> ref_network
    val create_new_blob : __context:Context.t -> network:ref_network -> name:string -> mime_type:string -> public:bool -> ref_blob
    val set_default_locking_mode : __context:Context.t -> network:ref_network -> value:network_default_locking_mode -> unit
    val attach_for_vm : __context:Context.t -> host:ref_host -> vm:ref_VM -> unit
    val detach_for_vm : __context:Context.t -> host:ref_host -> vm:ref_VM -> unit
    val add_purpose : __context:Context.t -> self:ref_network -> value:network_purpose -> unit
    val remove_purpose : __context:Context.t -> self:ref_network -> value:network_purpose -> unit
  end
  module VIF : sig
    val create : __context:Context.t -> device:string -> network:ref_network -> vM:ref_VM -> mAC:string -> mTU:int64 -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> locking_mode:vif_locking_mode -> ipv4_allowed:string_set -> ipv6_allowed:string_set -> ref_VIF
    val destroy : __context:Context.t -> self:ref_VIF -> unit
    val plug : __context:Context.t -> self:ref_VIF -> unit
    val unplug : __context:Context.t -> self:ref_VIF -> unit
    val unplug_force : __context:Context.t -> self:ref_VIF -> unit
    val move : __context:Context.t -> self:ref_VIF -> network:ref_network -> unit
    val set_locking_mode : __context:Context.t -> self:ref_VIF -> value:vif_locking_mode -> unit
    val set_ipv4_allowed : __context:Context.t -> self:ref_VIF -> value:string_set -> unit
    val add_ipv4_allowed : __context:Context.t -> self:ref_VIF -> value:string -> unit
    val remove_ipv4_allowed : __context:Context.t -> self:ref_VIF -> value:string -> unit
    val set_ipv6_allowed : __context:Context.t -> self:ref_VIF -> value:string_set -> unit
    val add_ipv6_allowed : __context:Context.t -> self:ref_VIF -> value:string -> unit
    val remove_ipv6_allowed : __context:Context.t -> self:ref_VIF -> value:string -> unit
    val configure_ipv4 : __context:Context.t -> self:ref_VIF -> mode:vif_ipv4_configuration_mode -> address:string -> gateway:string -> unit
    val configure_ipv6 : __context:Context.t -> self:ref_VIF -> mode:vif_ipv6_configuration_mode -> address:string -> gateway:string -> unit
  end
  module VIF_metrics : sig
  end
  module PIF : sig
    val create_VLAN : __context:Context.t -> device:string -> network:ref_network -> host:ref_host -> vLAN:int64 -> ref_PIF
    val destroy : __context:Context.t -> self:ref_PIF -> unit
    val reconfigure_ip : __context:Context.t -> self:ref_PIF -> mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> unit
    val reconfigure_ipv6 : __context:Context.t -> self:ref_PIF -> mode:ipv6_configuration_mode -> iPv6:string -> gateway:string -> dNS:string -> unit
    val set_primary_address_type : __context:Context.t -> self:ref_PIF -> primary_address_type:primary_address_type -> unit
    val scan : __context:Context.t -> host:ref_host -> unit
    val introduce : __context:Context.t -> host:ref_host -> mAC:string -> device:string -> managed:bool -> ref_PIF
    val forget : __context:Context.t -> self:ref_PIF -> unit
    val unplug : __context:Context.t -> self:ref_PIF -> unit
    val set_disallow_unplug : __context:Context.t -> self:ref_PIF -> value:bool -> unit
    val plug : __context:Context.t -> self:ref_PIF -> unit
    val pool_introduce : __context:Context.t -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_PIF
    val db_introduce : __context:Context.t -> device:string -> network:ref_network -> host:ref_host -> mAC:string -> mTU:int64 -> vLAN:int64 -> physical:bool -> ip_configuration_mode:ip_configuration_mode -> iP:string -> netmask:string -> gateway:string -> dNS:string -> bond_slave_of:ref_Bond -> vLAN_master_of:ref_VLAN -> management:bool -> other_config:string_to_string_map -> disallow_unplug:bool -> ipv6_configuration_mode:ipv6_configuration_mode -> iPv6:string_set -> ipv6_gateway:string -> primary_address_type:primary_address_type -> managed:bool -> properties:string_to_string_map -> ref_PIF
    val db_forget : __context:Context.t -> self:ref_PIF -> unit
    val set_property : __context:Context.t -> self:ref_PIF -> name:string -> value:string -> unit
  end
  module PIF_metrics : sig
  end
  module Bond : sig
    val create : __context:Context.t -> network:ref_network -> members:ref_PIF_set -> mAC:string -> mode:bond_mode -> properties:string_to_string_map -> ref_Bond
    val destroy : __context:Context.t -> self:ref_Bond -> unit
    val set_mode : __context:Context.t -> self:ref_Bond -> value:bond_mode -> unit
    val set_property : __context:Context.t -> self:ref_Bond -> name:string -> value:string -> unit
  end
  module VLAN : sig
    val pool_introduce : __context:Context.t -> tagged_PIF:ref_PIF -> untagged_PIF:ref_PIF -> tag:int64 -> other_config:string_to_string_map -> ref_VLAN
    val create : __context:Context.t -> tagged_PIF:ref_PIF -> tag:int64 -> network:ref_network -> ref_VLAN
    val destroy : __context:Context.t -> self:ref_VLAN -> unit
  end
  module SM : sig
  end
  module SR : sig
    val create : __context:Context.t -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_SR
    val introduce : __context:Context.t -> uuid:string -> name_label:string -> name_description:string -> _type:string -> content_type:string -> shared:bool -> sm_config:string_to_string_map -> ref_SR
    val make : __context:Context.t -> host:ref_host -> device_config:string_to_string_map -> physical_size:int64 -> name_label:string -> name_description:string -> _type:string -> content_type:string -> sm_config:string_to_string_map -> string
    val destroy : __context:Context.t -> sr:ref_SR -> unit
    val forget : __context:Context.t -> sr:ref_SR -> unit
    val update : __context:Context.t -> sr:ref_SR -> unit
    val get_supported_types : __context:Context.t -> string_set
    val scan : __context:Context.t -> sr:ref_SR -> unit
    val probe : __context:Context.t -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> string
    val probe_ext : __context:Context.t -> host:ref_host -> device_config:string_to_string_map -> _type:string -> sm_config:string_to_string_map -> probe_result_t_set
    val set_shared : __context:Context.t -> sr:ref_SR -> value:bool -> unit
    val set_name_label : __context:Context.t -> sr:ref_SR -> value:string -> unit
    val set_name_description : __context:Context.t -> sr:ref_SR -> value:string -> unit
    val create_new_blob : __context:Context.t -> sr:ref_SR -> name:string -> mime_type:string -> public:bool -> ref_blob
    val set_physical_size : __context:Context.t -> self:ref_SR -> value:int64 -> unit
    val set_virtual_allocation : __context:Context.t -> self:ref_SR -> value:int64 -> unit
    val set_physical_utilisation : __context:Context.t -> self:ref_SR -> value:int64 -> unit
    val assert_can_host_ha_statefile : __context:Context.t -> sr:ref_SR -> unit
    val assert_supports_database_replication : __context:Context.t -> sr:ref_SR -> unit
    val enable_database_replication : __context:Context.t -> sr:ref_SR -> unit
    val disable_database_replication : __context:Context.t -> sr:ref_SR -> unit
    val get_data_sources : __context:Context.t -> sr:ref_SR -> data_source_t_set
    val record_data_source : __context:Context.t -> sr:ref_SR -> data_source:string -> unit
    val query_data_source : __context:Context.t -> sr:ref_SR -> data_source:string -> float
    val forget_data_source_archives : __context:Context.t -> sr:ref_SR -> data_source:string -> unit
    val get_live_hosts : __context:Context.t -> sr:ref_SR -> ref_host_set
  end
  module Sr_stat : sig
  end
  module Probe_result : sig
  end
  module LVHD : sig
  end
  module VDI : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> sR:ref_SR -> virtual_size:int64 -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> tags:string_set -> ref_VDI
    val destroy : __context:Context.t -> self:ref_VDI -> unit
    val snapshot : __context:Context.t -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_VDI
    val clone : __context:Context.t -> vdi:ref_VDI -> driver_params:string_to_string_map -> ref_VDI
    val resize : __context:Context.t -> vdi:ref_VDI -> size:int64 -> unit
    val introduce : __context:Context.t -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> ref_VDI
    val pool_introduce : __context:Context.t -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_VDI
    val db_introduce : __context:Context.t -> uuid:string -> name_label:string -> name_description:string -> sR:ref_SR -> _type:vdi_type -> sharable:bool -> read_only:bool -> other_config:string_to_string_map -> location:string -> xenstore_data:string_to_string_map -> sm_config:string_to_string_map -> managed:bool -> virtual_size:int64 -> physical_utilisation:int64 -> metadata_of_pool:ref_pool -> is_a_snapshot:bool -> snapshot_time:datetime -> snapshot_of:ref_VDI -> cbt_enabled:bool -> ref_VDI
    val db_forget : __context:Context.t -> vdi:ref_VDI -> unit
    val update : __context:Context.t -> vdi:ref_VDI -> unit
    val copy : __context:Context.t -> vdi:ref_VDI -> sr:ref_SR -> base_vdi:ref_VDI -> into_vdi:ref_VDI -> ref_VDI
    val force_unlock : __context:Context.t -> vdi:ref_VDI -> unit
    val set_managed : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val forget : __context:Context.t -> vdi:ref_VDI -> unit
    val set_sharable : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val set_read_only : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val set_missing : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val set_virtual_size : __context:Context.t -> self:ref_VDI -> value:int64 -> unit
    val set_physical_utilisation : __context:Context.t -> self:ref_VDI -> value:int64 -> unit
    val set_is_a_snapshot : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val set_snapshot_of : __context:Context.t -> self:ref_VDI -> value:ref_VDI -> unit
    val set_snapshot_time : __context:Context.t -> self:ref_VDI -> value:datetime -> unit
    val set_metadata_of_pool : __context:Context.t -> self:ref_VDI -> value:ref_pool -> unit
    val set_name_label : __context:Context.t -> self:ref_VDI -> value:string -> unit
    val set_name_description : __context:Context.t -> self:ref_VDI -> value:string -> unit
    val generate_config : __context:Context.t -> host:ref_host -> vdi:ref_VDI -> string
    val set_on_boot : __context:Context.t -> self:ref_VDI -> value:on_boot -> unit
    val set_allow_caching : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val open_database : __context:Context.t -> self:ref_VDI -> ref_session
    val checksum : __context:Context.t -> self:ref_VDI -> string
    val read_database_pool_uuid : __context:Context.t -> self:ref_VDI -> string
    val pool_migrate : __context:Context.t -> vdi:ref_VDI -> sr:ref_SR -> options:string_to_string_map -> ref_VDI
    val enable_cbt : __context:Context.t -> self:ref_VDI -> unit
    val disable_cbt : __context:Context.t -> self:ref_VDI -> unit
    val set_cbt_enabled : __context:Context.t -> self:ref_VDI -> value:bool -> unit
    val data_destroy : __context:Context.t -> self:ref_VDI -> unit
    val list_changed_blocks : __context:Context.t -> vdi_from:ref_VDI -> vdi_to:ref_VDI -> string
    val get_nbd_info : __context:Context.t -> self:ref_VDI -> vdi_nbd_server_info_t_set
  end
  module VBD : sig
    val create : __context:Context.t -> vM:ref_VM -> vDI:ref_VDI -> device:string -> userdevice:string -> bootable:bool -> mode:vbd_mode -> _type:vbd_type -> unpluggable:bool -> empty:bool -> other_config:string_to_string_map -> currently_attached:bool -> qos_algorithm_type:string -> qos_algorithm_params:string_to_string_map -> ref_VBD
    val destroy : __context:Context.t -> self:ref_VBD -> unit
    val eject : __context:Context.t -> vbd:ref_VBD -> unit
    val insert : __context:Context.t -> vbd:ref_VBD -> vdi:ref_VDI -> unit
    val plug : __context:Context.t -> self:ref_VBD -> unit
    val unplug : __context:Context.t -> self:ref_VBD -> unit
    val unplug_force : __context:Context.t -> self:ref_VBD -> unit
    val unplug_force_no_safety_check : __context:Context.t -> self:ref_VBD -> unit
    val assert_attachable : __context:Context.t -> self:ref_VBD -> unit
    val pause : __context:Context.t -> self:ref_VBD -> string
    val unpause : __context:Context.t -> self:ref_VBD -> token:string -> unit
    val set_mode : __context:Context.t -> self:ref_VBD -> value:vbd_mode -> unit
  end
  module VBD_metrics : sig
  end
  module PBD : sig
    val create : __context:Context.t -> host:ref_host -> sR:ref_SR -> device_config:string_to_string_map -> other_config:string_to_string_map -> ref_PBD
    val destroy : __context:Context.t -> self:ref_PBD -> unit
    val plug : __context:Context.t -> self:ref_PBD -> unit
    val unplug : __context:Context.t -> self:ref_PBD -> unit
    val set_device_config : __context:Context.t -> self:ref_PBD -> value:string_to_string_map -> unit
  end
  module Crashdump : sig
    val destroy : __context:Context.t -> self:ref_crashdump -> unit
  end
  module VTPM : sig
    val create : __context:Context.t -> vM:ref_VM -> backend:ref_VM -> ref_VTPM
    val destroy : __context:Context.t -> self:ref_VTPM -> unit
  end
  module Console : sig
    val create : __context:Context.t -> other_config:string_to_string_map -> ref_console
    val destroy : __context:Context.t -> self:ref_console -> unit
  end
  module User : sig
    val create : __context:Context.t -> short_name:string -> fullname:string -> other_config:string_to_string_map -> ref_user
    val destroy : __context:Context.t -> self:ref_user -> unit
  end
  module Data_source : sig
  end
  module Blob : sig
    val create : __context:Context.t -> mime_type:string -> public:bool -> ref_blob
    val destroy : __context:Context.t -> self:ref_blob -> unit
  end
  module Message : sig
    val create : __context:Context.t -> name:string -> priority:int64 -> cls:cls -> obj_uuid:string -> body:string -> ref_message
    val destroy : __context:Context.t -> self:ref_message -> unit
    val get : __context:Context.t -> cls:cls -> obj_uuid:string -> since:datetime -> ref_message_to_message_t_map
    val get_all : __context:Context.t -> ref_message_set
    val get_since : __context:Context.t -> since:datetime -> ref_message_to_message_t_map
    val get_record : __context:Context.t -> self:ref_message -> message_t
    val get_by_uuid : __context:Context.t -> uuid:string -> ref_message
    val get_all_records : __context:Context.t -> ref_message_to_message_t_map
    val get_all_records_where : __context:Context.t -> expr:string -> ref_message_to_message_t_map
  end
  module Secret : sig
    val create : __context:Context.t -> value:string -> other_config:string_to_string_map -> ref_secret
    val destroy : __context:Context.t -> self:ref_secret -> unit
    val introduce : __context:Context.t -> uuid:string -> value:string -> other_config:string_to_string_map -> ref_secret
  end
  module Tunnel : sig
    val create : __context:Context.t -> transport_PIF:ref_PIF -> network:ref_network -> protocol:tunnel_protocol -> ref_tunnel
    val destroy : __context:Context.t -> self:ref_tunnel -> unit
  end
  module Network_sriov : sig
    val create : __context:Context.t -> pif:ref_PIF -> network:ref_network -> ref_network_sriov
    val destroy : __context:Context.t -> self:ref_network_sriov -> unit
    val get_remaining_capacity : __context:Context.t -> self:ref_network_sriov -> int64
  end
  module PCI : sig
  end
  module PGPU : sig
    val add_enabled_VGPU_types : __context:Context.t -> self:ref_PGPU -> value:ref_VGPU_type -> unit
    val remove_enabled_VGPU_types : __context:Context.t -> self:ref_PGPU -> value:ref_VGPU_type -> unit
    val set_enabled_VGPU_types : __context:Context.t -> self:ref_PGPU -> value:ref_VGPU_type_set -> unit
    val set_GPU_group : __context:Context.t -> self:ref_PGPU -> value:ref_GPU_group -> unit
    val get_remaining_capacity : __context:Context.t -> self:ref_PGPU -> vgpu_type:ref_VGPU_type -> int64
    val enable_dom0_access : __context:Context.t -> self:ref_PGPU -> pgpu_dom0_access
    val disable_dom0_access : __context:Context.t -> self:ref_PGPU -> pgpu_dom0_access
  end
  module GPU_group : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_GPU_group
    val destroy : __context:Context.t -> self:ref_GPU_group -> unit
    val update_enabled_VGPU_types : __context:Context.t -> self:ref_GPU_group -> unit
    val update_supported_VGPU_types : __context:Context.t -> self:ref_GPU_group -> unit
    val get_remaining_capacity : __context:Context.t -> self:ref_GPU_group -> vgpu_type:ref_VGPU_type -> int64
  end
  module VGPU : sig
    val create : __context:Context.t -> vM:ref_VM -> gPU_group:ref_GPU_group -> device:string -> other_config:string_to_string_map -> _type:ref_VGPU_type -> ref_VGPU
    val destroy : __context:Context.t -> self:ref_VGPU -> unit
    val atomic_set_resident_on : __context:Context.t -> self:ref_VGPU -> value:ref_PGPU -> unit
  end
  module VGPU_type : sig
  end
  module PVS_site : sig
    val introduce : __context:Context.t -> name_label:string -> name_description:string -> pVS_uuid:string -> ref_PVS_site
    val forget : __context:Context.t -> self:ref_PVS_site -> unit
    val set_PVS_uuid : __context:Context.t -> self:ref_PVS_site -> value:string -> unit
  end
  module PVS_server : sig
    val introduce : __context:Context.t -> addresses:string_set -> first_port:int64 -> last_port:int64 -> site:ref_PVS_site -> ref_PVS_server
    val forget : __context:Context.t -> self:ref_PVS_server -> unit
  end
  module PVS_proxy : sig
    val create : __context:Context.t -> site:ref_PVS_site -> vIF:ref_VIF -> ref_PVS_proxy
    val destroy : __context:Context.t -> self:ref_PVS_proxy -> unit
  end
  module PVS_cache_storage : sig
    val create : __context:Context.t -> host:ref_host -> sR:ref_SR -> site:ref_PVS_site -> size:int64 -> ref_PVS_cache_storage
    val destroy : __context:Context.t -> self:ref_PVS_cache_storage -> unit
  end
  module Feature : sig
  end
  module SDN_controller : sig
    val introduce : __context:Context.t -> protocol:sdn_controller_protocol -> address:string -> port:int64 -> ref_SDN_controller
    val forget : __context:Context.t -> self:ref_SDN_controller -> unit
  end
  module Vdi_nbd_server_info : sig
  end
  module PUSB : sig
    val scan : __context:Context.t -> host:ref_host -> unit
    val set_passthrough_enabled : __context:Context.t -> self:ref_PUSB -> value:bool -> unit
  end
  module USB_group : sig
    val create : __context:Context.t -> name_label:string -> name_description:string -> other_config:string_to_string_map -> ref_USB_group
    val destroy : __context:Context.t -> self:ref_USB_group -> unit
  end
  module VUSB : sig
    val create : __context:Context.t -> vM:ref_VM -> uSB_group:ref_USB_group -> other_config:string_to_string_map -> ref_VUSB
    val unplug : __context:Context.t -> self:ref_VUSB -> unit
    val destroy : __context:Context.t -> self:ref_VUSB -> unit
  end
  module Cluster : sig
    val create : __context:Context.t -> pIF:ref_PIF -> cluster_stack:string -> pool_auto_join:bool -> token_timeout:float -> token_timeout_coefficient:float -> ref_Cluster
    val destroy : __context:Context.t -> self:ref_Cluster -> unit
    val get_network : __context:Context.t -> self:ref_Cluster -> ref_network
    val pool_create : __context:Context.t -> network:ref_network -> cluster_stack:string -> token_timeout:float -> token_timeout_coefficient:float -> ref_Cluster
    val pool_force_destroy : __context:Context.t -> self:ref_Cluster -> unit
    val pool_destroy : __context:Context.t -> self:ref_Cluster -> unit
    val pool_resync : __context:Context.t -> self:ref_Cluster -> unit
  end
  module Cluster_host : sig
    val create : __context:Context.t -> cluster:ref_Cluster -> host:ref_host -> pif:ref_PIF -> ref_Cluster_host
    val destroy : __context:Context.t -> self:ref_Cluster_host -> unit
    val enable : __context:Context.t -> self:ref_Cluster_host -> unit
    val force_destroy : __context:Context.t -> self:ref_Cluster_host -> unit
    val forget : __context:Context.t -> self:ref_Cluster_host -> unit
    val disable : __context:Context.t -> self:ref_Cluster_host -> unit
  end
  module Certificate : sig
  end
  module Diagnostics : sig
    val gc_compact : __context:Context.t -> host:ref_host -> unit
    val gc_stats : __context:Context.t -> host:ref_host -> string_to_string_map
    val db_stats : __context:Context.t -> string_to_string_map
    val network_stats : __context:Context.t -> host:ref_host -> params:string_to_string_map -> string_set_set
  end

end


module ReleaseVersion = struct


end

