Caml1999N025����   $      
   	"ocaml/xapi/xapi_ha_vm_failover.mli����  !  [  ~  I�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	"
 * @group High Availability (HA)
@��	"ocaml/xapi/xapi_ha_vm_failover.mliNGG�Pln@@@@@����Р1all_protected_vms��
Rpt�Rp�@���)__context�����'Context!t��Rp��Rp�@@�@@@����$list��!Rp��"Rp�@���������#API&ref_VM��/Rp��0Rp�@@�@@@������#API$vM_t��;Rp��<Rp�@@�@@@@�@@@@��@Rp�@@@��BRp�!@@@@@��DRpp#@�$@���Р4restart_auto_run_vms��MT���NT��@���)__context�����'Context!t��[U���\U��@@�@@@��@����$list��fU���gU�@������#API(ref_host��qU���rU��@@�@@@@�@@@��@����#int��}U��~U�	@@�@@@����$unit���U���U�@@�@@@�@@@�@@@���U��@@@@���)ocaml.doc*�������	S Take a set of live VMs and attempt to restart all protected VMs which have failed @���V��Vj@@@@@5@���T��@�@���Р7compute_evacuation_plan���Xlp��Xl�@���)__context�����'Context!t���Y����Y��@@�@@@��@����#int���Z����Z��@@�@@@��@����$list���[����[��@������#API(ref_host���[����[��@@�@@@@�@@@��@����$list���\����\��@���������#API&ref_VM���\����\��@@�@@@������#API$vM_t���\����\��@@�@@@@�@@@@�� \��@@@����$list��]��]�
@���������#API&ref_VM��]���]��@@�@@@������#API(ref_host��!]���"]�@@�@@@@�@@@@��&]��@@@�( @@@�T!@@@�k"@@@��+Y��$@@@@����Ȑ������	" Compute a plan for Host.evacuate @��8^�9^2@@@@@�@��;Xll4@�5@���A�    �+plan_status��Earw�Far�@@@��Р7Plan_exists_for_all_VMs��Mb���Nb��@�@@��Qb��@���������	& All protected VMs could be restarted @��^b���_b��@@@@@�@�Р	#Plan_exists_excluding_non_agile_VMs��ec���fc��@�@@��ic��@�����������	Y Excluding 'trivial' failures due to non-agile VMs, all protected VMs could be restarted @��vd���wd�Z@@@@@@�Р.No_plan_exists��}e[_�~e[m@�@@���e[]@�����������	* Not all protected VMs could be restarted @���e[o��e[�@@@@@)@@A@���,�������	8 Abstract result of the background HA planning function @���`44��`4q@@@@@7@���arr"@@�#@���A�    �4configuration_change���i5:��i5N@@@��Р/old_vms_leaving���jSW��jSf@@����$list���jS���jS�@���������#API(ref_host���jSi��jSu@@�@@@���������#API&ref_VM���jSy��jS�@@�@@@������#API$vM_t���jS���jS�@@�@@@@�@@@@� ��jS�@@@@���jSh0@@@�:��l��@���_��������	  existing VMs which are leaving @���k����k��@@@@@�@�Р0old_vms_arriving���l��� l��@@����$list��l��l�@���������#API(ref_host��l���l��@@�@@@���������#API&ref_VM��$l���%l��@@�@@@������#API$vM_t��0l���1l� @@�@@@@�@@@@� �5l�@@@@��7l��0@@@�:�9n7:@����֐������	! existing VMs which are arriving @��Fm�Gm6@@@@@�@�Р0hosts_to_disable��Mn7;�Nn7K@@����$list��Un7Z�Vn7^@������#API(ref_host��`n7M�an7Y@@�@@@@�@@@��eo��@�����������= hosts to pretend to disable @��rn7`�sn7�@@@@@@�Р,num_failures��yo���zo��@@����&option���o����o��@�����#int���o����o��@@�@@@@�@@@���p��@���,�������	$ new number of failures to consider @���o����o��@@@@@7@�Р2new_vms_to_protect���p����p��@@����$list���p����p��@������#API&ref_VM���p����p��@@�@@@@�@@@�@���.W�������4 new VMs to restart @���p����p�@@@@@b@@A@���<e�������	� Passed to the planner to reason about other possible configurations, used to block operations which would
    destroy the HA VM restart plan. @���g����h4@@@@@p@���i55��q@@�@���Р7no_configuration_change���s��s,@����4configuration_change���s/��sC@@�@@@@@���s@�@���Р2update_pool_status���uEI��uE[@���)__context�����'Context!t��v^j�v^s@@�@@@���(live_set����$list��v^��v^�@������#API(ref_host��v^��v^�@@�@@@@�@@@��@����$unit��)v^��*v^�@@�@@@����$bool��2v^��3v^�@@�@@@�@@@��7v^w@@@��9v^`@@@@����֐������	> Update the Pool.ha_* fields with the current planning status @��Fw���Gw��@@@@@�@��IuEE@�@���Р3plan_for_n_failures��Ry���Sy��@���)__context�����'Context!t��`z		�az		@@�@@@���1all_protected_vms����$list��m{		J�n{		N@���������#API&ref_VM��{{		3�|{		=@@�@@@������#API$vM_t���{		@��{		H@@�@@@@�@@@@���{		2@@@���(live_set����$list���|	O	k��|	O	o@������#API(ref_host���|	O	^��|	O	j@@�@@@@�@@@���&change����4configuration_change���}	p	}��}	p	�@@�@@@��@����#int���~	�	���~	�	�@@�@@@����+plan_status���	�	���	�	�@@�@@@�@@@���}	p	u@@@���|	O	T@@@���{		 	@@@���z		@@@@���Cl�������	- Consider all possible failures of 'n' hosts @��� @	�	��� @	�	�@@@@@w@���y��@�@���Р	%compute_max_host_failures_to_tolerate��� B	�	��� B	�
	@���)__context�����'Context!t��� C

�� C

$@@�@@@���(live_set����$list�� D
%
A� D
%
E@������#API(ref_host�� D
%
4� D
%
@@@�@@@@�@@@���-protected_vms����$list�� E
F
r� E
F
v@���������#API&ref_VM��* E
F
[�+ E
F
e@@�@@@������#API$vM_t��6 E
F
h�7 E
F
p@@�@@@@�@@@@��; E
F
Z@@@��@����$unit��D F
w
|�E F
w
�@@�@@@����%int64��M G
�
��N G
�
�@@�@@@�@@@��R E
F
K@@@��T D
%
*@@@��V C

	@@@@����󐠠����	5 Compute the maximum plan size we can currently find @��c H
�
��d H
�
�@@@@@�@��f B	�	�@�@���Р	%assert_vm_placement_preserves_ha_plan��o J
�
��p J
�
�@���)__context�����'Context!t��} K
��~ K
�@@�@@@���'leaving����$list��� LD�� LH@���������#API(ref_host��� L�� L(@@�@@@���������#API&ref_VM��� L,�� L6@@�@@@������#API$vM_t��� L9�� LA@@�@@@@�@@@@� �� LB@@@@��� L0@@@���(arriving����$list��� MI��� MI�@���������#API(ref_host��� MIY�� MIe@@�@@@���������#API&ref_VM��� MIi�� MIs@@�@@@������#API$vM_t��� MIv�� MI~@@�@@@@�@@@@� �� MI@@@@��� MIX0@@@��@����$unit��� N���� N��@@�@@@����$unit�� O��� O��@@�@@@�@@@�� MIN@@@�� L@@@�� K
�
�	@@@@������������	f HA admission control functions: aim is to block operations which would make us become overcommitted: @�� P��� P�@@@@@�@��  J
�
�@�@���Р	%assert_host_disable_preserves_ha_plan��) R�* R0@���)__context�����'Context!t��7 S3?�8 S3H@@�@@@��@�����#API(ref_host��D S3L�E S3X@@�@@@����$unit��M S3\�N S3`@@�@@@�@@@��R S35@@@@@��T R@�@���Р	)assert_nfailures_change_preserves_ha_plan��] Ubf�^ Ub�@���)__context�����'Context!t��k V���l V��@@�@@@��@����#int��v V���w V��@@�@@@����$unit�� V���� V��@@�@@@�@@@��� V��@@@@@��� Ubb@�@���Р?assert_new_vm_preserves_ha_plan��� X���� X��@���)__context�����'Context!t��� X���� X��@@�@@@��@�����#API&ref_VM��� X���� X��@@�@@@����$unit��� X��� X�@@�@@@�@@@��� X��@@@@@��� X��@�@@