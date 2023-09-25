Caml1999M025����            7ocaml/xapi/xapi_fist.ml����  /�  �  #A  !������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	2 Module for reading FIST points
 * @group Testing
@��7ocaml/xapi/xapi_fist.mlNGG�P|~@@@@@���������&Stdext��R���R��@�@@A��R��@@�@�����!D��T���T��@�������%Debug$Make��&T���'T��@�@@�����@�����$name��5T���6T��@�@@@���)xapi_fist@��=T���>T��@@@@��@T��@@�@@��CT���DT��@@� �FT��@@@��HT��@�@��������!D��TV���UV��@�@@A��XV��@@�@�����i��������6 {2 (Fill in title!)} @��hX���iX��@@@@@���@�����(path_for��tZ���uZ��@�@@@��@@���$name��~Z���Z��@�@@@��@�����&prefix���[��[@�@@@���*/tmp/fist_@���[��[@@@@���[@@�������&Printf'sprintf���\ "��\ 0@�@@@��@���$%s%s@���\ 1��\ 7@@@��@����&prefix���\ 8��\ >@�@@@��@����$name���\ ?��\ C@�@@@@�#@@@�/@@@�GA@@@���Z��@@�@���@�����)fistpoint���^EI��^ER@�@@@��@@���$name���^ES��^EW@�@@@���  �������$Unix&access���``d��``o@�@@@��@������(path_for���``q��``y@�@@@��@����$name��``z�``~@�@@@@��	``p�
``@��@@@��@����"::��``��``�A���������$Unix$F_OK��#``�@@�@@@�����"[]�	A@�
A@@@�A@@��/``�@@@@�D@@@����$true��7a���8a��@@�@@@�N@@@���@��?b���@b��@@@@����%false��Gb���Hb��@@�@@@@��K_Z\@@@�qA@@@��N^EE@@�@���@�����*hang_while��Zd���[d��@�@@@��@@���$name��dd���ed��@�@@@��A�����"go��pe���qe��@�@@@��@@���#ctr��ze���{e��@�@@@��������)fistpoint���f����f��@�@@@��@����$name���f����f��@�@@@@�@@@�  �������&Thread%delay���g����g�@�@@@��@���#1.0@���g���g�@@@@�@@@�  ��������!=���h	��h	@�@@@��@������#mod���h	��h	@�@@@��@����#ctr���h	��h	@�@@@��@���"10@���h	��h	@@@@�@@@��@���!0@���h	��h	 @@@@�@@@������%debug���i&.��i&3@�@@@��@���	/hang_while: waiting for fist '%s' to be removed@���i&4��i&e@@@��@����$name��i&f�i&j@�@@@@�@@@@��h	@@@������"go��jmt�jmv@��jms�jm�@��@@���(tailcall�� jmy�!jm�@�@��$jmw�%jm�@@��@������!+��0jm��1jm�@�@@@��@����#ctr��;jm��<jm�@�@@@��@���!1@��Ejm��Fjm�@@@@��Hjm��Ijm�@��@@@@�6@@@�C@@@��Of���Pk��@���
@@@@��Tf��@@@��A@@@��We��@@������"go��`m���am��@�@@@��@���!1@��jm���km��@@@@�@@@�@@@�A@@@��pd��@@�@���@�����.fistpoint_read��|o���}o��@�@@@��@@���$name���o����o��@�@@@������$Some���p����p��@��������'Unixext.string_of_file���p����p��@�@@@��@������(path_for���p����p��@�@@@��@����$name���p����p��@�@@@@���p����p��@��@@@@���p����p��@��%@@@�3@@@���@���p����p��@@@@����$None���p����p��@@�@@@@���p��@@@�PA@@@���o��@@�@���@�����&delete���r���r�	@�@@@��@@���$name���r�
��r�@�@@@�������'Unixext+unlink_safe���r���r�$@�@@@��@������(path_for��r�&�r�.@�@@@��@����$name��r�/�r�3@�@@@@��r�%�r�4@��@@@@�!@@@�/A@@@��r��@@�@���@�����1insert_clock_skew��)u~��*u~�@�@@@��@@����"()��4u~��5u~�@@�@@@������)fistpoint��?u~��@u~�@�@@@��@���1insert_clock_skew@��Iu~��Ju~�@@@@�@@@�A@@���)ocaml.docꐠ�����	B Insert 2 * Xapi_globs.max_clock_skew into the heartbeat messages @��Zt66�[t6}@@@@@�@��]u~~@@�@���@�����:choose_approximate_planner��ix���jx�@�@@@��@@����@��sx��tx�@@�@@@������)fistpoint��~x��x�@�@@@��@���:choose_approximate_planner@���x���x�:@@@@�@@@�A@@���?(�������	2 Force the use of the more conservative binpacker @���w����w��@@@@@3@���x��@@�@���@�����8disable_ha_via_statefile���{����{��@�@@@��@@����~���{����{��@@�@@@������)fistpoint���{����{��@�@@@��@���8disable_ha_via_statefile@���{����{��@@@@�@@@�A@@���}f�������	] Pretend that disabling HA via the statefile (ie via ha_set_pool_state invalid) doesn't work @���z<<��z<�@@@@@q@���{��@@�@���@�����;disable_ha_disable_failover���~AE��~A`@�@@@��@@��������~Aa��~Ac@@�@@@������)fistpoint���~Af��~Ao@�@@@��@���;disable_ha_disable_failover@��~Ap�~A�@@@@�@@@�A@@������������	T Make the current node throw an error during the ha_disable_failover_decisions call @��}���}�@@@@@@�@��~AA@@�@���@�����0fail_healthcheck��# A���$ A��@�@@@��@@�������- A���. A��@@�@@@������)fistpoint��8 A���9 A��@�@@@��@���0fail_healthcheck@��B A���C A�@@@@�@@@�A@@����␠�����	6 Make the current node fail during the HA enable step @��R @���S @��@@@@@�@��U A��@@�@���@�����0reconfigure_host��a C�b C@�@@@��@@����8��k C�l C@@�@@@������)fistpoint��v C�w C&@�@@@��@���0reconfigure_host@��� C'�� C9@@@@�@@@�A@@@��� C@@�@���@�����:ha_cannot_access_statefile��� Fjn�� Fj�@�@@@��@@����h��� Fj��� Fj�@@�@@@������)fistpoint��� Fj��� Fj�@�@@@��@���:ha_cannot_access_statefile@��� Fj��� Fj�@@@@�@@@�A@@���gP�������	) Raise MTC_EXIT_CAN_NOT_ACCESS_STATEFILE @��� E;;�� E;i@@@@@[@��� Fjj@@�@���@�����8ha_daemon_startup_failed��� I���� I�	@�@@@��@@�������� I�	�� I�	@@�@@@������)fistpoint��� I�	
�� I�	@�@@@��@���8ha_daemon_startup_failed@��� I�	�� I�	.@@@@�@@@�A@@������������	, Simulate a misc xHA daemon startup failure @��� H���� H��@@@@@�@�� I��@@�@���@�����8simulate_restart_failure�� L	|	�� L	|	�@�@@@��@@������ L	|	�� L	|	�@@�@@@������)fistpoint��" L	|	��# L	|	�@�@@@��@���8simulate_restart_failure@��, L	|	��- L	|	�@@@@�@@@�A@@����̐������	F Make individual HA failover VM.starts fail with a probability of 2/3 @��< K	0	0�= K	0	{@@@@@�@��? L	|	|@@�@���@�����8simulate_planner_failure��K O
<
@�L O
<
X@�@@@��@@����"��U O
<
Y�V O
<
[@@�@@@������)fistpoint��` O
<
^�a O
<
g@�@@@��@���8simulate_planner_failure@��j O
<
h�k O
<
�@@@@�@@@�A@@���!
�������	r Throw an error in the failed VM restart logic when trying to compute a plan (it should fall back to best-effort) @��z N	�	��{ N	�
;@@@@@@��} O
<
<@@�@���@�����8allow_forget_of_vlan_pif��� R�� R'@�@@@��@@����`��� R(�� R*@@�@@@������)fistpoint��� R-�� R6@�@@@��@���8allow_forget_of_vlan_pif@��� R7�� RQ@@@@�@@@�A@@���_H�������	� Skip the check to prevent untagged VLAN PIFs being forgotten (block added in CA-24056; conflicts with repro advice in CA-23042) @��� Q
�
��� Q
�
@@@@@S@��� R@@�@���@�����5disable_memory_checks��� U���� U��@�@@@��@@�������� U���� U��@@�@@@������)fistpoint��� U���� U��@�@@@��@���5disable_memory_checks@��� U���� U��@@@@�@@@�A@@������������	= Pretend that VMs need no memory while starting or running.  @��� TSS�� TS�@@@@@�@��� U��@@�@���@�����<deterministic_host_selection�� X� X:@�@@@��@@����ܰ� X;� X=@@�@@@������)fistpoint�� X@� XI@�@@@��@���<deterministic_host_selection@��$ XJ�% Xh@@@@�@@@�A@@����Đ������	< Disable randomisation within the host selection algorithm. @��4 W���5 W�@@@@@�@��7 X@@�@���@�����9simulate_blocking_planner��C [���D [��@�@@@��@@������M [���N [��@@�@@@������)fistpoint��X [���Y [��@�@@@��@���9simulate_blocking_planner@��b [���c [�@@@@�@@@�A@@����������	K Used to simulate a very slow planner to test Pool.ha_prevent_restarts_for @��r Zjj�s Zj�@@@@@@��u [��@@�@�������������	o {2 RRD fist points}
 *  NB: these are evaluated once at run time and not again - no dynamic changing here :-) @��� ]�� ^y@@@@@ ���@�����9reduce_blob_sync_interval��� a���� a��@�@@@������)fistpoint��� a���� a��@�@@@��@���9reduce_blob_sync_interval@��� a���� a��@@@@�@@@���\E�������	& Reduce blob sync period to 5 minutes @��� `{{�� `{�@@@@@P@��� a��@@�@���@�����:reduce_rrd_backup_interval��� c���� c�@�@@@������)fistpoint��� c��� c�@�@@@��@���:reduce_rrd_backup_interval@��� c��� c�5@@@@�@@@@��� c��@@�@���@�����5force_remote_vdi_copy��� e7;�� e7P@�@@@��@@�������� e7Q�� e7S@@�@@@������)fistpoint��� e7V�� e7_@�@@@��@���5force_remote_vdi_copy@�� e7`�	 e7w@@@@�@@@�A@@@�� e77@@�@���@�����5pause_storage_migrate�� gy}� gy�@�@@@��@@������# gy��$ gy�@@�@@@������)fistpoint��. gy��/ gy�@�@@@��@���5pause_storage_migrate@��8 gy��9 gy�@@@@�@@@�A@@@��= gyy@@�@���@�����6pause_storage_migrate2��I i���J i��@�@@@��@@���� ��S i���T i��@@�@@@������)fistpoint��^ i���_ i��@�@@@��@���6pause_storage_migrate2@��h i���i i��@@@@�@@@�A@@@��m i��@@�@���@�����7storage_motion_keep_vdi��y k��z k�@�@@@��@@����P��� k��� k�@@�@@@������)fistpoint��� k� �� k�)@�@@@��@���7storage_motion_keep_vdi@��� k�*�� k�C@@@@�@@@�A@@@��� k��@@�@���@�����;delay_xenopsd_event_threads��� mEI�� mEd@�@@@��@@�������� mEe�� mEg@@�@@@������)fistpoint��� mEj�� mEs@�@@@��@���;delay_xenopsd_event_threads@��� mEt�� mE�@@@@�@@@�A@@@��� mEE@@�@���@�����(hang_psr��� o���� o��@�@@@��@@���.psr_checkpoint��� o���� o��@�@@@������"|>��� zoq�� zos@�@@@��@������.psr_checkpoint��� p���� p��@�@@@����&backup@�� q��� q��@@@@���*psr_backup@�� r��� r��@@@����*notify_new@�� s��� s� @@@@���.psr_notify_new@�� t
� t@@@����+notify_send@��" u�# u+@@@@���/psr_notify_send@��) v/5�* v/F@@@����'cleanup@��1 wGK�2 wGS@@@@���+psr_cleanup@��8 xW]�9 xWj@@@@��; p���< ykn@���? p��@@@��@����*hang_while��H zot�I zo~@�@@@@�@@@�jA@@@��N o��@@�@@