Caml1999N025����            6ocaml/xapi/xapi_ha.mli����  %[    �  �����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	X Functions for implementing 'High Availability' (HA).
    @group High Availability (HA) @��6ocaml/xapi/xapi_ha.mliOCC�P|�@@@@@����Р+ha_redo_log��
R���R��@�����(Redo_log(redo_log��R���R��@@�@@@@���)ocaml.doc��������	# The redo log instance used for HA @��$S���%S��@@@@@�@��'R��@�@�����8ǐ������	/ {2 Interface with the low-level HA subsystem} @��7VAA�8VAu@@@@@������'Monitor��@Xw~�AXw�@�������S␠�����	- Control the background HA monitoring thread @��RY���SY��@@@@@����Р0plan_out_of_date��[[���\[��@����#ref��c[���d[��@�����$bool��l[���m[��@@�@@@@�@@@@���Y�������	1 Used to explicitly signal that we should replan @��|\���}\�@@@@@@��[��@�@���Р$stop���^$��^(@��@����$unit���^+��^/@@�@@@����$unit���^3��^7@@�@@@�@@@@@���^ @�@@���Xw���_8;@@@���Xww@�@���Р7ha_prevent_restarts_for���a=A��a=X@��@��!a���a=[��a=]@@@��@����%int64���a=a��a=f@@�@@@����$unit���a=j��a=n@@�@@@�@@@�@@@@����k�������	O Called by MTC in Orlando Update 1 to temporarily block the VM restart thread. @���boo��bo�@@@@@v@���a==@�@���Р1on_server_restart���d����d��@��@����$unit���d����d��@@�@@@����$unit���d����d��@@�@@@�@@@@������������
   Called when xapi restarts: server may be in emergency mode at this point.
    We need to inspect the local configuration and if HA is supposed to be armed
    we need to set everything up.
    Note that the master shouldn't be able to activate HA while we are offline
    since that would cause us to come up with a broken configuration (the
    enable-HA stage has the critical task of synchronising the HA configuration
    on all the hosts). So really we only want to notice if the Pool has had
    HA disabled while we were offline. @��
e���l�	@@@@@�@��d��@�@���Р8on_database_engine_ready��n�n'@��@����$unit�� n*�!n.@@�@@@����$unit��)n2�*n6@@�@@@�@@@@���ɐ������	� Called in the master xapi startup when the database is ready. We set all
    hosts (including this one) to disabled, then signal the monitor thread to look.
    It can then wait for slaves to turn up before trying to restart VMs. @��9o77�:q�#@@@@@�@��<n@�@�����Mܐ������	6 {2 Internal API calls to configure individual hosts} @��Ltvv�Mtv�@@@@@����Р=ha_disable_failover_decisions��Uv���Vv��@��@��!a��]v���^v��@@@��@��!b��ev���fv��@@@����$unit��mv���nv��@@�@@@�@@@�@@@@���[�������	i Internal API call to prevent this node making an unsafe failover decision.
    This call is idempotent. @��~w���x	7	V@@@@@@���v��@�@���Р1ha_disarm_fencing���z	X	\��z	X	m@��@��!a���z	X	p��z	X	r@@@��@��!b���z	X	v��z	X	x@@@����$unit���z	X	|��z	X	�@@�@@@�@@@�@@@@����C�������	� Internal API call to disarm localhost. If the daemon is missing then we
    return success. Either fencing was previously disabled and the daemon has
    shutdown OR the daemon has died and this node will fence shortly...
@���{	�	���~
c
e@@@@@N@���z	X	X@�@���Р.ha_stop_daemon��� @
g
k�� @
g
y@��@��!a��� @
g
|�� @
g
~@@@��@��!b��� @
g
��� @
g
�@@@����$unit��� @
g
��� @
g
�@@�@@@�@@@�@@@@����x�������	C Internal API call to stop the HA daemon. This call is idempotent. @��� A
�
��� A
�
�@@@@@�@��� @
g
g@�@���Р4emergency_ha_disable��� C
�
��� C
�
�@��@��!a��� C
�
��� C
�
�@@@��@����$bool�� C
�
�� C
�
�@@�@@@����$unit�� C
� � C
�@@�@@@�@@@�@@@@������������	- Emergency-mode API call to disarm localhost @��  D�! D7@@@@@�@��# C
�
�@�@���Р4ha_release_resources��, F9=�- F9Q@��@�����'Context!t��8 F9T�9 F9]@@�@@@��@��!a��A F9a�B F9c@@@����$unit��I F9g�J F9k@@�@@@�@@@�@@@@���7ꐠ�����	� Internal API call to release any HA resources after the system has been
    shutdown. This call is idempotent. Modified for CA-48539 to call
    vdi.deactivate before vdi.detach. @��Z Gll�[ I�%@@@@@�@��] F99@�@���Р	"ha_wait_for_shutdown_via_statefile��f K'+�g K'M@��@��!a��n K'P�o K'R@@@��@��!b��v K'V�w K'X@@@����$unit��~ K'\� K'`@@�@@@�@@@�@@@@���l�������
   Internal API call which blocks until this node's xHA daemon spots the
    invalid statefile and exits cleanly. If the daemon survives but the
    statefile access is lost then this function will return an exception and
    the no-statefile shutdown can be attempted.
@��� Laa�� Ppr@@@@@*@��� K''@�@���Р1preconfigure_host��� Rtx�� Rt�@��@�����'Context!t��� S���� S��@@�@@@��@������#API#Ref!t��� T���� T��@�������$host��� T���� T��@A@�@@@@@��� T���� T��@@@@�@@@��@����$list��� U���� U��@�������#API#Ref!t��� U���� U��@�������#VDI��� U���� U��@A@�@@@@@��� U���� U��@@@@�@@@@�@@@��@������#API#Ref!t��� V���� V��@�������#VDI�� V��� V��@A@�@@@@@�� V��� V��@@@@�@@@��@����&string�� W��� W��@@�@@@����$unit�� X���  X��@@�@@@�@@@�@@@�9@@@�a@@@��@@@@���Ð������	- Internal API call to preconfigure localhost @��3 Y���4 Y�+@@@@@�@��6 Rtt@�@���Р,join_liveset��? [-1�@ [-=@��@��!a��G [-@�H [-B@@@��@�����#Ref!t��S [-I�T [-N@���!b��Z [-F�[ [-H@@@@�	@@@����$unit��c [-R�d [-V@@�@@@�@@@�!@@@@@��i [--@�@���Р2propose_new_master��r ]X\�s ]Xn@���)__context��!a��| ]X{�} ]X}@@@���'address����&string��� ]X��� ]X�@@�@@@���&manual��!b��� ]X��� ]X�@@@����$unit��� ]X��� ]X�@@�@@@��� ]X�@@@��� ]X�@@@��� ]Xq@@@@����@�������	3 First phase of a two-phase commit of a new master @��� ^���� ^��@@@@@K@��� ]XX@�@���Р1commit_new_master��� `���� `��@���)__context�����'Context!t��� `��� `�
@@�@@@���'address����&string��� `��� `�@@�@@@����$unit��� `� �� `�$@@�@@@��� `�@@@��� `��@@@@������������	4 Second phase of a two-phase commit of a new master @��� a%%�� a%^@@@@@�@��� `��@�@���Р0abort_new_master��� c`d�  c`t@���)__context��!a��	 c`��
 c`�@@@���'address����&string�� c`�� c`�@@�@@@����$unit�� c`�� c`�@@�@@@��" c`�@@@��$ c`w@@@@@��& c``@�	@�����7Ɛ������8 {2 External API calls} @��6 f���7 f�@@@@@������G֐������9 {3 Pool.*_ha API calls} @��F h�G h-@@@@@����Р'disable��O j/3�P j/:@��@�����'Context!t��[ j/=�\ j/F@@�@@@����$unit��d j/J�e j/N@@�@@@�@@@@@��i j//@�@���Р&enable��r lPT�s lPZ@��@�����'Context!t��~ lP]� lPf@@�@@@��@����$list��� lPz�� lP~@�������#API#Ref!t��� lPp�� lPy@�������"SR��� lPk�� lPn@A@�@@@@@��� lPj�� lPo@@@@�@@@@�@@@��@����$list��� lP��� lP�@��������&string��� lP��� lP�@@�@@@�����&string��� lP��� lP�@@�@@@@�@@@@��� lP�@@@����$unit��� lP��� lP�@@�@@@�@@@�3@@@�[@@@@@��� lPP@�@������z�������	* {3 Functions called by host.* API calls} @��� n���� n��@@@@@����Р?before_clean_shutdown_or_reboot��� p���� p��@���)__context�����'Context!t�� p�� p�@@�@@@���$host��!a�� p�� p�@@@����$unit�� p�� p�@@�@@@�� p�@@@�� p��@@@@�����������	o Called before shutting down or rebooting a host
    (called by the host.shutdown, host.reboot API functions). @��' q  �( rT�@@@@@�@��* p��@�@���Р	(before_clean_shutdown_or_reboot_precheck��3 t���4 t��@���)__context�����'Context!t��A u���B u��@@�@@@���$host��!a��L u���M u��@@@����$unit��T u���U u��@@�@@@��X u��@@@��Z u��@@@@���D��������	F Only runs the checks performed by [before_clean_shutdown_or_reboot]. @��g v���h v�9@@@@@@��j t��@�@@