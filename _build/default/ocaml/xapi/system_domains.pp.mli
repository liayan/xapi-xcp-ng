Caml1999N025����         	   =ocaml/xapi/system_domains.mli����  �  K  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	8
 * @group Helper functions for handling system domains
@��=ocaml/xapi/system_domains.mliNBB�P}@@@@@����Р0is_system_domain��
R���R��@��@�����#API$vM_t��R���R��@@�@@@����$bool��R��� R��@@�@@@�@@@@���)ocaml.doc��������	G [is_system_domain vm] returns true if [vm] is a special system domain @��0S���1S��@@@@@�@��3R��@�@���Р4get_is_system_domain��<U���=U�@���)__context�����'Context!t��JU��KU�%@@�@@@���$self�����#API&ref_VM��YU�.�ZU�8@@�@@@����$bool��bU�<�cU�@@@�@@@��fU�)@@@��hU�@@@@���F�������	W [get_is_system_domain __context self] returns true if [vm] is a special system domain @��uVAA�vVA�@@@@@@��xU��@�@���Р<storage_driver_domain_of_pbd���X����X��@���)__context�����'Context!t���Y����Y��@@�@@@���#pbd�����#API'ref_PBD���Y����Y��@@�@@@�����#API&ref_VM���Y����Y��@@�@@@���Y��@@@���Y��@@@@����L�������	q [storage_driver_domain_of_pbd __context pbd] returns the VM which is hosting
    the storage backends for [pbd] @���Z����[Jo@@@@@W@���X��@�@���Р<storage_driver_domain_of_vbd���]qu��]q�@���)__context�����'Context!t���^����^��@@�@@@���#vbd�����#API'ref_VBD���^����^��@@�@@@�����#API&ref_VM���^����^��@@�@@@���^��@@@���^��@@@@������������	~ [storage_driver_domain_of_vbd __context pbd] returns the VM which is hosting
    the storage backends for [vbd] on this host @��_���`N@@@@@�@��]qq@�@���Р	 record_pbd_storage_driver_domain��bPT�bPt@���)__context�����'Context!t��cw��cw�@@�@@@���#pbd�����#API'ref_PBD��,cw��-cw�@@�@@@���&domain�����#API&ref_VM��;cw��<cw�@@�@@@����$unit��Dcw��Ecw�@@�@@@��Hcw�@@@��Jcw�@@@��Lcwy@@@@���*鐠�����	o [record_pbd_storage_driver_domain __context pbd domain] persists [domain]
    as the driver domain for [pbd]. @��Yd���Ze1@@@@@�@��\bPP@�@���Р	 storage_driver_domain_of_sr_type��eg37�fg3W@���)__context�����'Context!t��shZf�thZo@@�@@@���%_type����&string���hZy��hZ@@�@@@�����#API&ref_VM���hZ���hZ�@@�@@@���hZs@@@���hZ\@@@@���o.�������	� [storage_driver_domain_of_sr_type __context _type] returns the default VM which is hosting
    the storage backends for SR type [_type] @���i����j�@@@@@9@���g33@�@���Р)pbd_of_vm���l"��l+@���)__context�����'Context!t���l8��lA@@�@@@���"vm�����#API&ref_VM���lH��lR@@�@@@����&option���lb��lh@������#API'ref_PBD���lV��la@@�@@@@�@@@���lE@@@���l.@@@@�����������	k [pbd_of_vm __context vm] returns (Some pbd) if [vm] is a driver domain
    	for [pbd] and None otherwise. @���mii��n��@@@@@�@���l"@�#@���Р)is_in_use���p����p��@���)__context�����'Context!t��	p���
p��@@�@@@���$self�����#API&ref_VM��p��p�@@�@@@����$bool��!p��"p�@@�@@@��%p�@@@��'p��@@@@���Đ������	P [is_in_use __context self] returns true if [self] is in use as a system domain @��4q�5qo@@@@@�@��7p��@�@���Р)queryable��@squ�Asq~@���)__context�����'Context!t��Nsq��Osq�@@�@@@��@�����-Xmlrpc_client)transport��[sq��\sq�@@�@@@��@����$unit��fsq��gsq�@@�@@@����$bool��osq��psq�@@�@@@�@@@�@@@��usq�@@@@���S�������	Q [queryable ip port ()] returns true if [ip]:[port] responsds to an XMLRPC query @���t����t�	@@@@@@���sqq@�@���Р%ip_of���v		��v		!@���)__context�����'Context!t���v		.��v		7@@�@@@��@�����#API&ref_VM���v		;��v		E@@�@@@����&string���v		I��v		O@@�@@@�@@@���v		$@@@@����T�������	X [ip_of __context vm] returns the IP of the given VM on the internal management network @���w	P	P��w	P	�@@@@@_@���v		@�@���A�    �'service���z	�	���z	�	�@@@��Р$uuid���z	�	���z	�	�@@����&string���z	�	���z	�
@@�@@@���z	�
@@�Р"ty���z	�
��z	�
@@����&string���z	�
��z	�
@@�@@@���z	�
@@�Р(instance���z	�
��z	�
@@����&string��z	�
�z	�
@@�@@@��	z	�
 @@�Р#url��z	�
!�z	�
$@@����&string��z	�
&�z	�
,@@�@@@�@@@A@������������	0 One of many service running in a driver domain @��'y	�	��(y	�	�@@@@@�@��*z	�	��+z	�
-@@�@���Р.rpc_of_service��4|
/
3�5|
/
A@��@����'service��>|
/
D�?|
/
K@@�@@@�����#Rpc!t��I|
/
O�J|
/
T@@�@@@�@@@@@��N|
/
/@�@���Р.service_of_rpc��W~
V
Z�X~
V
h@��@�����#Rpc!t��c~
V
k�d~
V
p@@�@@@����'service��l~
V
t�m~
V
{@@�@@@�@@@@@��q~
V
V@�@���A�    �(services��{ @
}
��| @
}
�@@@@A�����$list��� @
}
��� @
}
�@�����'service��� @
}
��� @
}
�@@�@@@@�@@@@��� @
}
}@@�@���Р/rpc_of_services��� B
�
��� B
�
�@��@����(services��� B
�
��� B
�
�@@�@@@�����#Rpc!t��� B
�
��� B
�
�@@�@@@�@@@@@��� B
�
�@�@���Р/services_of_rpc��� D
�
��� D
�
�@��@�����#Rpc!t��� D
�
��� D
�
�@@�@@@����(services��� D
�
��� D
�
�@@�@@@�@@@@@��� D
�
�@�@���Р0register_service��� F
�
��� F
�@��@����'service��� F
��� F
�@@�@@@��@����&string��� F
��� F
�@@�@@@����$unit��� F
��  F
�@@�@@@�@@@�@@@@������������	N [register_service service queue_name] associates [queue_name] with [service] @�� G� Gq@@@@@�@�� F
�
�@�@���Р2unregister_service�� Isw� Is�@��@����'service��& Is��' Is�@@�@@@����$unit��/ Is��0 Is�@@�@@@�@@@@���ϐ������	8 [unregister_service service] forgets service [service] @��? J���@ J��@@@@@�@��B Iss@�@���Р+get_service��K L���L L��@��@����'service��U L���V L��@@�@@@����&option��^ L���_ L�@�����&string��g L���h L��@@�@@@@�@@@�@@@@���I�������	X [get_service_address service] returns the queue_name associated with [service] or None @��x M�y Mc@@@@@@��{ L��@�@���Р-list_services��� Oei�� Oev@��@����$unit��� Oey�� Oe}@@�@@@����(services��� Oe��� Oe�@@�@@@�@@@@���x7�������	8 [list_services ()] returns all the registered services @��� P���� P��@@@@@B@��� Oee@�@@