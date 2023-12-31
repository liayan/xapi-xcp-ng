Caml1999N025����         	   =ocaml/xapi-types/features.mli����  %�  �  2  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	? Module that controls feature restriction.
 * @group Licensing
@��=ocaml/xapi-types/features.mliNGG�P��@@@@@����A�    �'feature��S���S��@@@��Р$VLAN��T���T��@�@@��T��@���)ocaml.doc��������	" Enable VLAN. Currently not used. @��%T���&T��@@@@@�@�Р#QoS��,U �-U @�@@��0U @���͐������	) Enable QoS control. Currently not used. @��=U 	�>U 7@@@@@�@�Р.Shared_storage��DV8<�EV8J@�@@��HV8:@���1吠�����	, Enable shared storage. Currently not used? @��UV8L�VV8}@@@@@�@�Р&Netapp��\W~��]W~�@�@@��`W~�@���I��������: Enable use of NetApp SRs @��mW~��nW~�@@@@@@�Р)Equalogic��tX���uX��@�@@��xX��@���a�������= Enable use of Equalogic SRs @���X����X��@@@@@ @�Р'Pooling���Y����Y��@�@@���Y��@���y-�������9 Enable pooling of hosts @���Y����Y�@@@@@8@�Р"HA���Z��Z@�@@���Z
@����E�������? Enable High Availability (HA) @���Z��Z4@@@@@P@�Р(Marathon���[59��[5A@�@@���[57@����]�������4 Currently not used @���[5C��[5\@@@@@h@�Р%Email���\]a��\]f@�@@���\]_@����u�������7 Enable email alerting @���\]h��\]�@@@@@�@�Р+Performance���]����]��@�@@���]��@������������	6 Used by XenCenter to restrict the performance graphs @���]����]��@@@@@�@�Р#WLB��^���^��@�@@��^��@������������	! Enable Workload Balancing (WLB) @��^���^�@@@@@�@�Р$RBAC��_�_
@�@@�� _@���	��������	) Enable Role-Based Access Control (RBAC) @��-_�._:@@@@@�@�Р#DMC��4`;?�5`;B@�@@��8`;=@���!Ր������	% Enable Dynamic Memory Control (DMC) @��E`;D�F`;n@@@@@�@�Р*Checkpoint��Laos�Mao}@�@@��Paoq@���9퐠�����	! Enable Checkpoint functionality @��]ao�^ao�@@@@@�@�Р+CPU_masking��db���eb��@�@@��hb��@���Q�������	  Enable masking of CPU features @��ub���vb��@@@@@@�Р*Connection��|c���}c��@�@@���c��@���i�������3 Used by XenCenter @���c����c�@@@@@(@�Р2No_platform_filter���d
��d@�@@���d@����5�������6 Filter platform data @���d��d9@@@@@@@�Р-No_nag_dialog���e:>��e:K@�@@���e:<@����M�������3 Used by XenCenter @���e:M��e:e@@@@@X@�Р$VMPR���ffj��ffn@�@@���ffh@����e�������	* Enable use of VM Protection and Recovery @���ffp��ff�@@@@@p@�Р$VMSS���g����g��@�@@���g��@����}�������	$ Enable use of VM Snapshot Schedule @���g����g��@@@@@�@�Р,IntelliCache���h����h��@�@@���h��@������������	$ Enable use of IntelliCache feature @��h���h�@@@@@�@�Р#GPU��i�i@�@@��i@������������? Enable use of GPU passthrough @��i�i=@@@@@�@�Р"DR��$j>B�%j>D@�@@��(j>@@���Ő������: Enable disaster recovery @��5j>F�6j>e@@@@@�@�Р+VIF_locking��<kfj�=kfu@�@@��@kfh@���)ݐ������	D Enable locking of VIFs to specific MAC addresses and IP addresses. @��Mlv|�Nlv�@@@@@�@�Р.Storage_motion��Tm���Um��@�@@��Xm��@���A��������	" Enable Storage XenMotion feature @��em���fm�@@@@@ @�Р$VGPU��ln�mn
@�@@��pn@���Y�������< Enable use of virtual GPUs @��}n�~n-@@@@@@�Р.Integrated_GPU���o.2��o.@@�@@���o.0@���q%�������	* Enable use of integrated GPU passthrough @���o.B��o.q@@@@@0@�Р#VSS���prv��pry@�@@���prt@����=�������3 Enable use of VSS @���pr{��pr�@@@@@H@�Р7Guest_agent_auto_update���q����q��@�@@���q��@����U�������	< Enable use of the Windows guest agent auto-update feature. @���r����r��@@@@@`@�Р:PCI_device_for_auto_update���s����s�	@�@@���s��@����m�������	I Enable making new VMs with the PCI device that triggers Windows Update. @���t		��t		k@@@@@x@�Р*Xen_motion���u	l	p��u	l	z@�@@���u	l	n@������������: Enable XenMotion feature @���u	l	|��u	l	�@@@@@�@�Р0Guest_ip_setting���v	�	���v	�	�@�@@�� v	�	�@������������? Enable use of Guest ip seting @��v	�	��v	�	�@@@@@�@�Р"AD��w	�	��w	�	�@�@@��w	�	�@�����������	  Enable use of Active Directory @��%w	�	��&w	�
@@@@@�@�Р+Nested_virt��,x

	�-x

@�@@��0x

@���͐������	) Enable the use of nested virtualisation @��=x

�>x

D@@@@@�@�Р-Live_patching��Dy
E
I�Ey
E
V@�@@��Hy
E
G@���1吠�����	* Enable the use of live patching feature. @��Uy
E
X�Vy
E
�@@@@@�@�Р.Live_set_vcpus��\z
�
��]z
�
�@�@@��`z
�
�@���I��������	< Enable setting the number of virtual CPUs of a running VM. @��m{
�
��n{
�
�@@@@@@�Р)PVS_proxy��t|
�
��u|
�
�@�@@��x|
�
�@���a�������	! Enable the use of PVS proxying. @���|
�
���|
�@@@@@ @�Р-IGMP_snooping���}��}*@�@@���}@���y-�������	* Enable the use of IGMP snooping feature. @���},��}[@@@@@8@�Р#RPU���~\`��~\c@�@@���~\^@����E�������	$ Enable use of Rolling Pool Upgrade @���~\e��~\�@@@@@P@�Р)Pool_size���������@�@@�����@����]�������	- Enable use of Pooling for more than 3 Hosts @���������@@@@@h@�Р#CBT��� @���� @��@�@@��� @��@����u�������7 Enable the use of CBT @��� @���� @��@@@@@�@�Р/USB_passthrough��� A���� A�
@�@@��� A��@������������	$ Enable the use of USB passthrough. @��� A��� A�5@@@@@�@�Р-Network_sriov�� B6:� B6G@�@@�� B68@������������	" Enable the use of Network SRIOV. @�� B6I� B6p@@@@@�@�Р(Corosync�� Cqu� Cq}@�@@��  Cqs@���	��������= Enable the use of corosync. @��- Cq�. Cq�@@@@@�@�Р+Zstd_export��4 D���5 D��@�@@��8 D��@���!Ր������	4 Enable the use of VM export with zstd compression. @��E D���F D��@@@@@�@�Р4Pool_secret_rotation��L E���M E�@�@@��P E��@���9퐠�����= Enable Pool Secret Rotation @��] E��^ E�)@@@@@�@@A@���G��������	, Features than can be enabled and disabled. @��kR���lR��@@@@@@��nS��"@@�#@���Р.feature_of_rpc��w G+/�x G+=@��@�����#Rpc!t��� G+@�� G+E@@�@@@����'feature��� G+I�� G+P@@�@@@�@@@@���x,�������> Convert RPC into {!feature}s @��� HQQ�� HQt@@@@@7@��� G++@�@���Р.rpc_of_feature��� Jvz�� Jv�@��@����'feature��� Jv��� Jv�@@�@@@�����#Rpc!t��� Jv��� Jv�@@�@@@�@@@@����]�������> Convert {!feature}s into RPC @��� K���� K��@@@@@h@��� Jvv@�@���Р/name_of_feature��� M���� M��@��@����'feature��� M���� M��@@�@@@����&string��� M���� M��@@�@@@�@@@@������������	" Convert {!feature}s into strings @��� N���� N�@@@@@�@��� M��@�@���Р,all_features�� P�	 P"@����$list�� P-� P1@�����'feature�� P%� P,@@�@@@@�@@@@�����������	! The list of all known features. @��) Q22�* Q2X@@@@@�@��, P@�@���Р1to_compact_string��5 SZ^�6 SZo@��@����$list��? SZz�@ SZ~@�����'feature��H SZr�I SZy@@�@@@@�@@@����&string��R SZ��S SZ�@@�@@@�@@@@���>򐠠����	5 Returns a compact list of the current restrictions. @��b T���c T��@@@@@�@��e SZZ@�@���Р-to_assoc_list��n V���o V��@��@����$list��x V���y V��@�����'feature��� V���� V��@@�@@@@�@@@����$list��� V���� V��@��������&string��� V���� V��@@�@@@�����&string��� V���� V��@@�@@@@�@@@@��� V��@@@�'@@@@����D�������	5 Convert a {!feature} list into an association list. @��� W  �� W :@@@@@O@��� V��,@�-@���Р-of_assoc_list��� Y<@�� Y<M@��@����$list��� Y<b�� Y<f@��������&string��� Y<Q�� Y<W@@�@@@�����&string��� Y<Z�� Y<`@@�@@@@�@@@@��� Y<P@@@����$list��� Y<r�� Y<v@�����'feature��� Y<j�� Y<q@@�@@@@�@@@�@@@@������������	A Convert an association list of features into a {!feature} list. @�� Zww� Zw�@@@@@�@��	 Y<<@�@@