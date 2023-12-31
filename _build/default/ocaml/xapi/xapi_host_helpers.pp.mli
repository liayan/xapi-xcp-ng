Caml1999N025����   "      
   	 ocaml/xapi/xapi_host_helpers.mli����  )w  %  d  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	? Common code for dealing with Hosts.
 * @group Host Management
@��	 ocaml/xapi/xapi_host_helpers.mliO>>�Q��@@@@@����Р6assert_operation_valid��
S���S��@���)__context�����'Context!t��T���T��@@�@@@���$self�����#API(ref_host��'U���(U��@@�@@@���"op�����#API7host_allowed_operations��6V���7V��@@�@@@����$unit��?W���@W��@@�@@@��CV��@@@��EU��@@@��GT��@@@@���)ocaml.doc吠�����
  n [assert_operation_valid ~__context ~self ~op] checks the operation [op] is
    currently valid on [host]. There are various checks that are performed,
    for example:
    {ul
    {- Ony one 'provisioning-type' operation is allowed at once}
    {- Reboot / Shutdown cannot run concurrently}
    {- Shutdown and Reboot are only allowed if the host is disabled}
    }@��UX���V_kr@@@@@�@��XS��@�@���Р4assert_host_disabled��aatx�bat�@���)__context�����'Context!t��oat��pat�@@�@@@���$host�����#API(ref_host��~at��at�@@�@@@����$unit���at���at�@@�@@@���at�@@@���at�@@@@���F*�������	p [assert_host_disabled ~__context ~host] raises an API error
    host_not_disabled if the host is not disabled. @���b����c 5@@@@@5@���att@�@���Р9update_allowed_operations���e7;��e7T@���)__context�����'Context!t���e7a��e7j@@�@@@���$self�����#API(ref_host���e7s��e7@@�@@@����$unit���e7���e7�@@�@@@���e7n@@@���e7W@@@@����o�������	� [update_allowed_operations ~__context ~self] updates the
    allowed_operations database field with all the operations that are
    currently allowed given the current state of the host. @���f����hI@@@@@z@���e77@�@���Р	#update_allowed_operations_all_hosts���jKO��jKr@���)__context�����'Context!t���jK��jK�@@�@@@����$unit��jK��jK�@@�@@@��jKu@@@@������������	c [update_allowd_operations_all_hosts ~__context] runs
    [update_alloed_operations] for each host @��k���l��@@@@@�@��jKK@�@���Р,cancel_tasks��n��� n�@���)__context�����'Context!t��-o�.o&@@�@@@���$self�����#API(ref_host��<p'1�=p'=@@�@@@���/all_tasks_in_db����$list��Iq>`�Jq>d@������#API(ref_task��Tq>S�Uq>_@@�@@@@�@@@���(task_ids����$list��brez�cre~@�����&string��kres�lrey@@�@@@@�@@@����$unit��us��vs�@@�@@@��yrej@@@��{q>C@@@��}p',@@@��o
@@@@���8�������	� [cancel_tasks ~__context ~self ~all_tasks_in_db ~task_ids] is a helper
    utility for batch cancelling tasks associated with a previously dead host.
    See the file `cancel_tasks.ml` and the function [Helpers.cancel_tasks] for
    more context. @���t����wr�@@@@@'@���n��@�@���Р1mark_host_as_dead���y����y��@���)__context�����'Context!t���z����z��@@�@@@���$host�����#API(ref_host���z����z��@@�@@@���&reason����&string���z����z��@@�@@@����$unit���z����z��@@�@@@���z��@@@���z��@@@���z��@@@@����p�������
  l [mark_host_as_dead ~__context ~host ~reason] is called on the master when a
    host is declaring it's going to be dead soon, via the [tickle_heartbeat]
    code. The host will be added to the Xapi_globs table of
    [hosts_which_are_shutting_down], the host_metrics live field will be set to
    false and any pre and post declare_dead scripts will be executed. @���{����

U@@@@@{@���y��@�@���Р6consider_enabling_host��� A
W
[�� A
W
q@���)__context�����'Context!t��� A
W
~�� A
W
�@@�@@@����$unit�� A
W
�� A
W
�@@�@@@�� A
W
t@@@@������������
  B [consider_enabling_host ~__context] is called at the end of the xapi
    startup sequence. It will enable the host unless:
    {ul
    {- the user asked the host to be disabled and there was a problem}
    {- HA is enabled and one-or-more PBDs failed to plug}
    {- `disabled_until_next_reboot` is set in the local DB}}
@�� B
�
�� H��@@@@@�@�� A
W
W@�@���Р>consider_enabling_host_request��  J���! J��@���)__context�����'Context!t��. J��/ J�@@�@@@����$unit��7 J��8 J�@@�@@@��; J��@@@@����ؐ������	� [consider_enabling_host_request ~__context] will ensure that
    [consider_enabling_host] is called soon. It will coalesce multiple requests
    that are made. @��H K�I M��@@@@@�@��K J��@�@���Р;user_requested_host_disable��T O���U O��@����#ref��\ O���] O��@�����$bool��e O���f O��@@�@@@@�@@@@���!�������	T [user_requested_host_disable] : true if so. Persistent until xapi is
    restarted @��u P���v Q6F@@@@@@��x O��@�@���Р7assert_startup_complete��� SHL�� SHc@��@����$unit��� SHf�� SHj@@�@@@����$unit��� SHn�� SHr@@�@@@�@@@@���P4�������	o [assert_startup_complete ()] will raise `host_still_booting` if the startup
    sequence is not yet complete. @��� Tss�� U��@@@@@?@��� SHH@�@���Р5assert_xen_compatible��� W���� W�@��@����$unit��� W��� W�	@@�@@@����$unit��� W��� W�@@�@@@�@@@@���c�������	� Checks whether the currently installed Toolstack is compatible with the
    currently installed xenctrl library and the currently running Xen hypervisor.)
    Raises XEN_INCOMPATIBLE if not, and caches the outcome of the check. @��� X�� Z��@@@@@n@��� W��@�@�����4Host_requires_reboot��� \��� \�@�����Р#set��� ] &�� ] )@��@����$unit��� ] ,�� ] 0@@�@@@����$unit��� ] 4�� ] 8@@�@@@�@@@@������������	� [set ()] is used to signal the host needs a reboot. This could be, for
      example, that the dom0 memory settings have changed and a reboot is
      required for them to take effect. @�� ^9;� `��@@@@@�@�� ] "@�@���Р#get�� b�� b�@��@����$unit��# b��$ b�@@�@@@����$bool��, b��- b�@@�@@@�@@@@����̐������	: [get ()] returns [true] if the host needs to be rebooted @��< c�= cV@@@@@�@��? b��@�@@��B \��C dWZ@@@��E \��@�@�����-Configuration��N f\c�O f\p@�����Р2set_initiator_name��Y gw}�Z gw�@��@����&string��c gw��d gw�@@�@@@����$unit��l gw��m gw�@@�@@@�@@@@���(�������	� [set_initiator_name iqn] will write the iscsi initiator configuration to
      the file specified in Xapi_globs (usually /etc/iscsi/initiatorname.iscsi)
      @��| h���} j@H@@@@@@�� gwy@�@���Р0set_multipathing��� lJP�� lJ`@��@����$bool��� lJc�� lJg@@�@@@����$unit��� lJk�� lJo@@�@@@�@@@@���W;�������	� [set_multipathing enabled] will touch the file specified in Xapi_globs
      (usually /var/run/nonpersistent/multipath_enabled) if [enabled] is true,
      otherwise it will remove the file. @��� mpr�� o7@@@@@F@��� lJL@�@���Р1sync_config_files��� q9?�� q9P@���)__context�����'Context!t��� q9]�� q9f@@�@@@����$unit��� q9j�� q9n@@�@@@��� q9S@@@@����o�������
  $ [sync_config_files ~__context] ensures that the iscsi iqn and
      multipathing configuration files reflect the values of the corresponding
      fields in xapi's database. It should be called at startup on every host
      BEFORE the other_config watcher [start_watcher_thread] is started @��� roq�� uP�@@@@@z@��� q9;@�@���Р3watch_other_configs��� w���� w��@���)__context�����'Context!t��� x���� x��@@�@@@��@����%float�� x��� x��@@�@@@��@�������&string�� x��� x��@@�@@@�����$bool�� x��� x��@@�@@@@�@@@�������&string��) x���* x��@@�@@@�����$bool��3 x���4 x��@@�@@@@�@@@�&@@@�5@@@��: x��@@@@����א������
  � [watch_other_configs ~__context timeout] returns a function that performs
      one iteration of watching Host.other_config. If an update occurs this
      will check whether the iscsi_iqn field in other-config is correctly
      reflected in the field Host.iscsi_iqn, and if not it will call
      Host.set_iscsi_iqn with the value specified in other-config. This is
      intended to be run on the master. The calls will not be made if the pool
      is in rolling upgrade mode, so when the pool exits rolling upgrade mode
      all hosts are checked. The returned function has type [token -> token],
      where [token] is a (string * bool). The initial value should be a tuple
      of the empty string and a boolean whose value is true if the pool is
      currently in rolling pool upgrade mode, and the returned value should be
      used for further invocations. This function is exposed only for unit
      testing, and should not be invoked directly.@��G y���H ���@@@@@�@��J w��@�@���Р4start_watcher_thread��S ����T ���@���)__context�����'Context!t��a ����b ���@@�@@@����$unit��j ����k ���@@�@@@��n ���@@@@���'�������
   [start_watcher_thread ~__context] will start a thread that watches the
      other-config field of all hosts and keeps the iscsi_iqn value in sync
      with the first-class field Host.iscsi_iqn. As with watch_other_configs,
      this function must only be run on the master. @��{ �� �| ��@@@@@@��~ ���@�@@��� f\s�� �@@@��� f\\@�@@