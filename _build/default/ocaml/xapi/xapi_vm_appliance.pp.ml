Caml1999M025����          	   ?ocaml/xapi/xapi_vm_appliance.ml����  o  d  Tj  Qˠ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������&Client��?ocaml/xapi/xapi_vm_appliance.mlOHM�OHS@�@@A��OHH@@�@�����!D��QU\�QU]@�������%Debug$Make��QU`�QUj@�@@�����@�����$name��)QUw�*QU{@�@@@���1xapi_vm_appliance@��1QU~�2QU�@@@@��4QUs@@�@@��7QUl�8QU�@@� �:QU�@@@��<QUU@�@��������!D��HS���IS��@�@@A��LS��@@�@�����(Int64Map��UU���VU��@�������#Map$Make��aU���bU��@�@@�����A�    �!t��nV���oV��@@@@A�����%int64��wV���xV��@@�@@@@��{V��@@�@���@�����'compare���X����X��@�@@@����'compare���X����X��@�@@@@���X��@@�@@���U����Y��@@�9��Y��@@@���U��@�@���A�    �3appliance_operation���[����[�@@@��Р$name���\��\@@����&string���\��\ @@�@@@���]!$@@�Р,vm_operation���]!%��]!1@@��@�����#API&ref_VM���^3<��^3F@@�@@@��@��@�����#Rpc$call���_GQ��_GY@@�@@@�����#Rpc(response���_G]��_Gi@@�@@@�@@@��@�����#API+ref_session���`kt��`k�@@�@@@�����#API(ref_task���a��� a��@@�@@@�@@@��_GP@@@�:@@@�G�b��@@�Р.required_state��b���b��@@�����#API.vm_power_state��b���b��@@�@@@�@@@A@@��[���c��@@�@���@�����6assert_operation_valid��)e���*e��@�@@@�����;Xapi_vm_appliance_lifecycle6assert_operation_valid��4e���5e�@�@@@@��8e��@@�@���@�����9update_allowed_operations��Dg�Eg2@�@@@�����;Xapi_vm_appliance_lifecycle9update_allowed_operations��Oh57�Ph5l@�@@@@��Sg@@�@���@�����&create��_jnr�`jnx@�@@@�Đ)__context@�����jjnz�kjn�@�@@@�Đ*name_label@�����ujn��vjn�@�@@@�Đ0name_description@������jn���jn�@�@@@��@�����$uuid���k����k��@�@@@�������$Uuid)make_uuid���k����k��@�@@@��@����"()���k����k��@@�@@@@�@@@@���k��@@��@�����#ref���l����l��@�@@@�������#Ref$make���l����l��@�@@@��@����'���l����l��@@�@@@@�@@@@���l��@@�  ��������"Db,VM_appliance&create���m����m��@�@@@���)__context�������m����m�@�@@@���#ref�������m���m�	@�@@@���$uuid�������$Uuid)to_string��m��m�@�@@@��@����$uuid��m� �m�$@�@@@@��m��m�%@��@@@���*name_label������#m�'�$m�1@�@@@���0name_description������/n27�0n2G@�@@@���2allowed_operations����"[]��<n2\�=n2^@@�@@@���2current_operations������Hn2s�In2u@@�@@@@�n@@@�  ������9update_allowed_operations��Voxz�Wox�@�@@@���)__context������box��cox�@�@@@���$self����#ref��oox��pox�@�@@@@�@@@����#ref��yp���zp��@�@@@�'@@@��@@@��@@@��@@@���jn�A@@���jn�
A@@���jnyA@@@���jnn@@�@���@�����'destroy���r����r��@�@@@�Đ)__context@������r����r��@�@@@�Đ$self@������r����r��@�@@@��������"Db,VM_appliance'destroy���r����r��@�@@@���)__context�������r����r��@�@@@���$self�������r����r��@�@@@@�@@@���r��A@@���r��A@@@���r��	@@�
@���@�����2group_vms_by_order���v~���v~�@�@@@�Đ)__context@������v~���v~�@�@@@��@@���#vms���v~���v~�@�@@@�������$List)fold_left��w���w��@�@@@��@��@@���#map��x���x��@�@@@��@@���"vm��x���x��@�@@@��@�����%order��)y���*y��@�@@@��������"Db"VM)get_order��8y���9y��@�@@@���)__context������Dy���Ey��@�@@@���$self����"vm��Qy���Ry��@�@@@@�@@@@��Vy��@@��@�����(existing��`z�az@�@@@���������(Int64Map#mem��o{#�p{/@�@@@��@����%order��z{0�{{5@�@@@��@����#map���{6��{9@�@@@@�@@@�������(Int64Map$find���{?��{L@�@@@��@����%order���{M��{R@�@@@��@����#map���{S��{V@�@@@@�@@@�����x���{\��{^@@�@@@���{ @@@@���z	@@�������(Int64Map#add���}hn��}hz@�@@@��@����%order���}h{��}h�@�@@@��@����"::���}h���}h�@��������"vm���}h���}h�@�@@@�����(existing���}h���}h�@�@@@@�A@@���}h���}h�@��@@@��@����#map��}h��}h�@�@@@@�A@@@�M@@@��@@@��A@@��	x���
~��@���x��@@@��@�����(Int64Map%empty�������@�@@@��@����#vms��#���$��@�@@@@� @@@�.A@@��)v~�A@@@��+v~~@@�	@���@�����2create_action_list��7 C�8 C+@�@@@�Đ)__context@�����B C-�C C6@�@@@��@@���%start��L C7�M C<@�@@@��@@���#vms��V C=�W C@@�@@@��@�����)order_map��b DCI�c DCR@�@@@������2group_vms_by_order��m DCU�n DCg@�@@@���)__context������y DCi�z DCr@�@@@��@����#vms��� DCs�� DCv@�@@@@�@@@@��� DCE@@��������%start��� Ez��� Ez�@�@@@�����$List#rev��� Ez��� Ez�@�@@@���@@���!x��� Ez��� Ez�@�@@@����!x��� Ez��� Ez�@�@@@��� Ez�@@@��� Ez|�� Ez�@���� Ez}
@@@��@�������(Int64Map$fold��� F���� F��@�@@@��@��@@�@��� F���� F��@@@��@@���#vms��� F���� F��@�@@@��@@���&groups��� F���� F��@�@@@������� F���� F��@��������#vms��� F���� F��@�@@@�����&groups�� F��� F��@�@@@@�A@@�@@@�$A@@�/A@@�� F��� F��@��� F��@@@��@����)order_map�� F��� F��@�@@@��@������# F���$ F��@@�@@@@��' F���( F��@��a@@@@�s@@@��@@@��A@@��A@@��0 C,	A@@@��2 C@@�@���@�����4run_operation_on_vms��> J	�	��? J	�	�@�@@@�Đ)__context@�����I J	�	��J J	�	�@�@@@��@@���)operation��S J	�	��T J	�	�@�@@@��@@���#vms��] J	�	��^ J	�	�@�@@@�������'Helpers2call_api_functions��j K	�	��k K	�	�@�@@@���)__context������v K	�	��w K	�	�@�@@@��@��@@���#rpc��� K	�	��� K	�
 @�@@@��@@���*session_id��� K	�
�� K	�
@�@@@��@��������%tasks��� L

�� L

@�@@@����*failed_vms��� L

 �� L

*@�@@@@�@@@�������$List)fold_left��� M
-
5�� M
-
C@�@@@��@��@@������%tasks��� N
D
T�� N
D
Y@�@@@����*failed_vms��� N
D
[�� N
D
e@�@@@@��� N
D
S�� N
D
f@��@@@��@@���"vm��� N
D
g�� N
D
i@�@@@����@�����$task��� P
}
��� P
}
�@�@@@������)operation��� P
}
��� P
}
�@�@@@��@����"vm��� P
}
��� P
}
�@�@@@��@����#rpc�� P
}
��	 P
}
�@�@@@��@����*session_id�� P
}
�� P
}
�@�@@@@�%@@@@�� P
}
�@@�������H��! Q
�
��" Q
�
�@��������$task��- Q
�
��. Q
�
�@�@@@�����%tasks��7 Q
�
��8 Q
�
�@�@@@@�A@@�@@@�����*failed_vms��C Q
�
��D Q
�
�@�@@@@��G Q
�
��H Q
�
�@��@@@�4@@@�����!e��S R
�
��T R
�
�@�@@@@�������%tasks��_ R
�
��` R
�
�@�@@@��������h R
� �i R
�@��������"vm��t R
�
��u R
�
�@�@@@�����*failed_vms��~ R
�� R
�@�@@@@�A@@�@@@@��� R
�
��� R
�@��)	@@@@��� O
m
y@@@��A@@��� N
D
N�� S@���� N
D
O@@@��@�������`��� T&�� T(@@�@@@�����i��� T*�� T,@@�@@@@��� T%�� T-@��@@@��@����#vms��� T.�� T1@�@@@@�@@@@��� L

@@�������%Tasks,wait_for_all��� V;A�� V;S@�@@@���#rpc������� V;U�� V;X@�@@@���*session_id������� V;Z�� V;d@�@@@���%tasks������� V;f�� V;k@�@@@@�(@@@�4@@@�bA@@��� K	�	��� Wlo@���� K	�	�@@@@��@@@��A@@��A@@��� J	�	�	A@@@��� J	�	�@@�@���@�����1perform_operation�� Yqu� Yq�@�@@@�Đ)__context@����� Yq�� Yq�@�@@@�Đ$self@����� Yq�� Yq�@�@@@�Đ)operation@�����' Yq��( Yq�@�@@@�Đ2ascending_priority@�����2 Yq��3 Yq�@�@@@��@�����.appliance_uuid��> Z���? Z��@�@@@��������"Db,VM_appliance(get_uuid��M Z���N Z��@�@@@���)__context������Y Z���Z Z��@�@@@���$self������e Z���f Z��@�@@@@�@@@@��j Z��@@��@�����-contained_vms��t [��u [�@�@@@��������"Db,VM_appliance'get_VMs��� [��� [�*@�@@@���)__context������� [�,�� [�5@�@@@���$self������� [�7�� [�;@�@@@@�@@@@��� [��@@��@�����*target_vms��� ]���� ]��@�@@@�������$List&filter��� ^���� ^��@�@@@��@��@@���"vm��� _���� _��@�@@@������"<>��� `���� `��@�@@@��@��������"Db"VM/get_power_state��� `���� `��@�@@@���)__context������� `���� `��@�@@@���$self����"vm��� `���� `��@�@@@@�@@@��@������)operation�� `��� `�@�@@@��.required_state�� `�� `�@�
@@@@�2@@@�� _��� a@��� _��	@@@��@����-contained_vms�� b�  b,@�@@@@�l@@@@��$ ]��@@��@�����+action_list��. d28�/ d2C@�@@@������2create_action_list��9 eFJ�: eF\@�@@@���)__context������E eF^�F eFg@�@@@��@����2ascending_priority��P eFh�Q eFz@�@@@��@����*target_vms��[ eF{�\ eF�@�@@@@�&@@@@��` d24@@�  ������%debug��k g���l g��@�@@@��@���	&Beginning operation %s on appliance %s@��u g���v g��@@@��@������)operation��� g���� g��@�@@@��$name��� g���� g��@�
@@@��@����.appliance_uuid��� g���� g��@�@@@@�,@@@�  �������$List$iter��� h���� h��@�@@@��@��@@���'vm_list��� i���� i��@�@@@������4run_operation_on_vms��� j��� j�@�@@@���)__context������� j��� j�!@�@@@��@������)operation��� j�"�� j�+@�@@@��,vm_operation��� j�,�� j�8@�
@@@��@����'vm_list��� j�9�� j�@@�@@@@�/@@@��� i���� kAF@���� i��	@@@��@����+action_list��� lGK�� lGV@�@@@@�X@@@��@�����*failed_vms��	 n���	 n��@�@@@�������$List&filter��	 o���	 o��@�@@@��@��@@���"vm��	 p���	 p��@�@@@������"<>��	( q��	) q�@�@@@��@��������"Db"VM/get_power_state��	9 q���	: q��@�@@@���)__context������	E q���	F q�@�@@@���$self����"vm��	R q��	S q�@�@@@@�@@@��@������)operation��	` q��	a q�@�@@@��.required_state��	g q��	h q�+@�
@@@@�2@@@��	l p���	m r,3@���	p p��	@@@��@����*target_vms��	y s4:�	z s4D@�@@@@�l@@@@��	~ n��@@������*failed_vms��	� uJR�	� uJ\@�@@@������V��	� vbf�	� vbh@@�@@@@������%debug��	� wlr�	� wlw@�@@@��@���	=Operation %s on appliance with uuid %s completed successfully@��	� wlx�	� wl�@@@��@������)operation��	� x���	� x��@�@@@��$name��	� x���	� x��@�
@@@��@����.appliance_uuid��	� x���	� x��@�@@@@�,@@@���@��	� y���	� y��@@@@�  ������%debug��	� z���	� z��@�@@@��@���	7Operation %s on appliance with uuid %s partially failed@��	� z���	� z�,@@@��@������)operation��	� {-5�	� {->@�@@@��$name��	� {-?�	� {-C@�
@@@��@����.appliance_uuid��
  {-D�
 {-R@�@@@@�,@@@������%raise��
 |U[�
 |U`@�@@@��@�����*Api_errors,Server_error��
 }aj�
 }a�@���������*Api_errors:operation_partially_failed��
' ~���
( ~��@�@@@�����W��
0 ���
1 ��@����������)operation��
> ���
? ��@�@@@��$name��
E ���
F ��@�
@@@��������$List#map��
S ���
T ��@�@@@��@�����#Ref)string_of��
` ���
a ��@�@@@��@����*failed_vms��
k ���
l ��@�@@@@�@@@@�2A@@�3@@@@��
r ~���
s ��@��O
@@@��
w }ai�
x �@��b@@@@�p@@@��@@@@��
~ uJL@@@�@@@��	@@@�
@@@�#@@@�`@@@��@@@�@@@��
� Yq�A@@��
� Yq�A@@��
� Yq�A@@��
� Yq�A@@@��
� Yqq@@�@���@�����%start��
� ��
� �@�@@@�Đ)__context@�����
� ��
� �"@�@@@�Đ$self@�����
� �$�
� �(@�@@@�Đ&paused@�����
� �*�
� �0@�@@@��@�����)operation��
� �39�
� �3B@�@@@������$name��
� �KQ�
� �KU@���2VM_appliance.start@��
� �KW�
� �Kk@@@����,vm_operation��
� �lr�
� �l~@��@@���"vm��
� ����
� ���@�@@@��@@���#rpc��
� ����
� ���@�@@@��@@���*session_id��
� ����  ���@�@@@���������&Client%Async"VM%start�� ���� ���@�@@@���#rpc������ ���� ���@�@@@���*session_id������( ����) ���@�@@@���"vm������4 ����5 ���@�@@@���,start_paused����&paused��A ����B ���@�@@@���%force����%false��N ����O ��@@�@@@@�B@@@�TA@@�_A@@��U ����V �@���Y ���@@@����.required_state��` ��a �#@������&paused��j �)�k �/@�@@@��&Paused@��q �5�r �<@@@���'Running@��x �B�y �J@@@��{ �%�| �K@��� �&@@@@@��� �EI�� �LQ@@@@��� �35@@������1perform_operation��� �WY�� �Wj@�@@@���)__context������� �Wl�� �Wu@�@@@���$self������� �Ww�� �W{@�@@@���)operation������� �W}�� �W�@�@@@���2ascending_priority����$true��� �W��� �W�@@�@@@@�5@@@�?@@@��� �)A@@��� �#A@@��� �
A@@@��� �@@�@���@�����.clean_shutdown��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@�Đ$self@������ ����� ���@�@@@��@�����)operation��� ����� ���@�@@@������$name�� ���� ���@���;VM_appliance.clean_shutdown@��
 ���� ��@@@����,vm_operation�� �	� �	@��@@���"vm�� �*� �,@�@@@��@@���#rpc��% �-�& �0@�@@@��@@���*session_id��/ �1�0 �;@�@@@���������&Client%Async"VM.clean_shutdown��@ �?I�A �?g@�@@@���#rpc������L �?i�M �?l@�@@@���*session_id������X �?n�Y �?x@�@@@���"vm������d �?z�e �?|@�@@@@�(@@@�:A@@�EA@@��k �%�l �}�@���o �&@@@����.required_state��v ����w ���@��&Halted@��| ����} ���@@@@@�� ����� ���@@@@��� ���@@������1perform_operation��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self������� ����� ���@�@@@���)operation������� ����� ���@�@@@���2ascending_priority����n��� ����� ���@@�@@@@�4@@@�>@@@��� ���A@@��� ���A@@@��� ���
@@�@���@�����-hard_shutdown��� ����� ��@�@@@�Đ)__context@������ ���� ��@�@@@�Đ$self@������ ���� ��@�@@@��@�����)operation��� � &�� � /@�@@@������$name��� �8>�� �8B@���:VM_appliance.hard_shutdown@�� �8D� �8`@@@����,vm_operation�� �ag� �as@��@@���"vm�� �u�� �u�@�@@@��@@���#rpc��  �u��! �u�@�@@@��@@���*session_id��* �u��+ �u�@�@@@���������&Client%Async"VM-hard_shutdown��; ����< ���@�@@@���#rpc������G ����H ���@�@@@���*session_id������S ����T ���@�@@@���"vm������_ ����` ���@�@@@@�(@@@�:A@@�EA@@��f �u}�g ���@���j �u~@@@����.required_state��q ����r ���@��&Halted@��w ����x ���@@@@@��z �26�{ ��@@@@��} � "@@������1perform_operation��� �	�� �@�@@@���)__context������� ��� �%@�@@@���$self������� �'�� �+@�@@@���)operation������� �-�� �6@�@@@���2ascending_priority����i��� �K�� �P@@�@@@@�4@@@�>@@@��� ��A@@��� ��A@@@��� ���
@@�@���@�����(shutdown��� �RV�� �R^@�@@@�Đ)__context@������ �R`�� �Ri@�@@@�Đ$self@������ �Rk�� �Ro@�@@@��@�����)operation��� �rx�� �r�@�@@@������$name��� ����� ���@���5VM_appliance.shutdown@��  ���� ���@@@����,vm_operation�� ����	 ���@��@@���"vm�� ���� ���@�@@@��@@���#rpc�� ���� ���@�@@@��@@���*session_id��% ����& ���@�@@@���������&Client%Async"VM(shutdown��6 ����7 ���@�@@@���#rpc������B ����C ��@�@@@���*session_id������N ���O ��@�@@@���"vm������Z ���[ ��@�@@@@�(@@@�:A@@�EA@@��a ����b ��@���e ���@@@����.required_state��l ��m �'@��&Halted@��r �)�s �0@@@@@��u ����v �16@@@@��x �rt@@������1perform_operation��� �<>�� �<O@�@@@���)__context������� �<Q�� �<Z@�@@@���$self������� �<\�� �<`@�@@@���)operation������� �<b�� �<k@�@@@���2ascending_priority����d��� �<��� �<�@@�@@@@�4@@@�>@@@��� �RjA@@��� �R_A@@@��� �RR
@@�@���@�����7assert_can_be_recovered��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@�Đ$self@������ ����� ���@�@@@�Đ*session_to@������ ����� ��@�@@@��@�����#vms��� ��� �@�@@@��������"Db,VM_appliance'get_VMs�� �� �(@�@@@���)__context������ �*� �3@�@@@���$self������ �5� �9@�@@@@�@@@@��  �@@�������$List$iter��+ �=?�, �=H@�@@@��@��@@���"vm��7 �IR�8 �IT@�@@@�������/Xapi_vm_helpers7assert_can_be_recovered��D �X^�E �X�@�@@@���)__context������P �X��Q �X�@�@@@���$self����"vm��] �X��^ �X�@�@@@���*session_to������i �X��j �X�@�@@@@�)@@@��n �IM�o ���@���r �IN	@@@��@����#vms��{ ����| ���@�@@@@�T@@@�`@@@��� ���A@@��� ���A@@��� ���
A@@@��� ���@@�@���@�����=get_SRs_required_for_recovery��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@�Đ$self@������ ����� ���@�@@@�Đ*session_to@������ ����� ���@�@@@������"|>��� ����� ���@�@@@��@������"|>��� ����� ���@�@@@��@������"|>��� �24�� �26@�@@@��@������"|>��� �!#�� �!%@�@@@��@��������"Db,VM_appliance'get_VMs��� ����� ��@�@@@���)__context������ ��� ��@�@@@���$self������ ��� �� @�@@@@�@@@��@�����$List&to_seq�� �!&� �!1@�@@@@�*@@@��@�������#Seq(flat_map��- �27�. �2C@�@@@��@��@@���"vm��9 �2I�: �2K@�@@@������"|>��D ����E ���@�@@@��@�������/Xapi_vm_helpers=get_SRs_required_for_recovery��S �OX�T �O�@�@@@���)__context������_ �O��` �O�@�@@@���$self����"vm��l �O��m �O�@�@@@���*session_to������x ����y ���@�@@@@�)@@@��@�����$List&to_seq��� ����� ���@�@@@@�7@@@��� �2D�� ���@���� �2E	@@@@�d@@@@��@@@��@������/Xapi_vm_helpers%SRSet&of_seq��� ����� ���@�@@@@��@@@��@������/Xapi_vm_helpers%SRSet(elements��� ����� ��@�@@@@��@@@��� ���A@@��� ���A@@��� ���	A@@@��� ���@@�@���@�����'recover��� ��� �"@�@@@�Đ)__context@������ �$�� �-@�@@@�Đ$self@������ �/�� �3@�@@@�Đ*session_to@������ �5�� �?@�@@@�Đ%force@������ �A�� �F@�@@@�  �������'Xapi_dr8assert_session_allows_dr��  �IK� �Ik@�@@@���*session_id����*session_to�� �Ix� �I�@�@@@���&action���4VM_appliance.recover@�� ���� ���@@@@�@@@�  ������7assert_can_be_recovered��& ����' ���@�@@@���)__context������2 ����3 ���@�@@@���$self������> ����? ���@�@@@���*session_to������J ����K ���@�@@@@�(@@@��@�����#vms��W ����X ���@�@@@��������"Db,VM_appliance'get_VMs��f ����g ��@�@@@���)__context������r ���s ��@�@@@���$self������~ ��� ��@�@@@@�@@@@��� ���@@��@�����-recovered_vms��� ��� �,@�@@@�������'Xapi_dr+recover_vms��� �/�� �B@�@@@���)__context������� �D�� �M@�@@@���#vms������� �O�� �R@�@@@���*session_to������� �T�� �^@�@@@���%force������� �`�� �e@�@@@@�4@@@@��� �@@��@�����-old_appliance��� ����� ���@�@@@��������"Db,VM_appliance*get_record��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self������  ���� ���@�@@@@�@@@@�� ���@@�������.Server_helpers2exec_with_new_task�� ���� ���@�@@@���*session_id����*session_to�� ��	� ��@�@@@��@���>Recreating VM appliance object@��' ��( �8@@@��@��@@���,__context_to��2 �>�3 �J@�@@@��@�����3recovered_appliance��> �NX�? �Nk@�@@@����@�����2existing_appliance��L ��M �#@�@@@��������"Db,VM_appliance+get_by_uuid��[ �&2�\ �&M@�@@@���)__context����,__context_to��h �&Y�i �&e@�@@@���$uuid������-old_appliance��w �fz�x �f�@�@@@���#API1vM_appliance_uuid��� �f��� �f�@�@@@@�)@@@@��� �@@�  ������%debug��� ����� ���@�@@@��@���	6An appliance with UUID %s already exists - reusing it.@��� ����� ���@@@��@������-old_appliance��� �� �� ��@�@@@���#API1vM_appliance_uuid��� ���� ��#@�@@@@�#@@@��@�����#vms��� �&4�� �&7@�@@@��������"Db,VM_appliance'get_VMs��� �:F�� �:]@�@@@���)__context����,__context_to��� �:i�� �:u@�@@@���$self����2existing_appliance��� �v��� �v�@�@@@@�@@@@��� �&0@@�  �������$List$iter��� ����� ���@�@@@��@��@@���"vm�� ���� ���@�@@@��������"Db"VM-set_appliance�� ���� ���@�@@@���)__context����,__context_to�� ���  ��@�@@@���$self����"vm��, ���- ��@�@@@���%value�����#Ref$null��; �/�< �7@�@@@@�-@@@��@ ����A �8E@���D ���	@@@��@����#vms��M �FR�N �FU@�@@@@�Z@@@�  ��������"Db,VM_appliance.set_name_label��_ �Xb�` �X�@�@@@���)__context����,__context_to��l �X��m �X�@�@@@���$self����2existing_appliance��y ����z ���@�@@@���%value������-old_appliance��� ����� ���@�@@@���#API7vM_appliance_name_label��� ����� ���@�@@@@�6@@@�  ��������"Db,VM_appliance4set_name_description��� ���� ��+@�@@@���)__context����,__context_to��� ��7�� ��C@�@@@���$self����2existing_appliance��� �DV�� �Dh@�@@@���%value������-old_appliance��� �i|�� �i�@�@@@���#API=vM_appliance_name_description��� �i��� �i�@�@@@@�6@@@����2existing_appliance��� ����� ���@�@@@�@@@@��@@@��@@@��@@@�W@@@�c@@@�������&Db_exn1Read_missing_uuid��� ����� ���@�������,VM_appliance@��� ����� ��  @@@��@�� �� � �� @@@��@�� �� � �� @@@@��
 ���� �� @��@@@�@@@@�  ������%debug�� � v �� � v �@�@@@��@���	6No appliance with UUID %s exists - creating a new one.@��# � v ��$ � v �@@@��@������-old_appliance��/ � � ��0 � � �@�@@@���#API1vM_appliance_uuid��8 � � ��9 � � �@�@@@@�#@@@��@�����-new_appliance��E � � ��F � �!@�@@@������&create��P �!!�Q �!!!@�@@@���)__context����,__context_to��] �!!-�^ �!!9@�@@@���*name_label������-old_appliance��l �!:!T�m �!:!a@�@@@���#API7vM_appliance_name_label��u �!:!b�v �!:!}@�@@@���0name_description������-old_appliance��� �!~!��� �!~!�@�@@@���#API=vM_appliance_name_description��� �!~!��� �!~!�@�@@@@�A@@@@��� � � �@@�  ��������"Db,VM_appliance(set_uuid��� �!�!��� �!�!�@�@@@���)__context����,__context_to��� �!�"	�� �!�"@�@@@���$self����-new_appliance��� �!�"�� �!�")@�@@@���%value������-old_appliance��� �"*"=�� �"*"J@�@@@���#API1vM_appliance_uuid��� �"*"K�� �"*"`@�@@@@�6@@@����-new_appliance��� �"c"m�� �"c"z@�@@@�@@@@�P@@@��@@@@��� �nv@@@@��� �NT	@@�  �������$List$iter��� �"�"��� �"�"�@�@@@��@��@@���"vm��� �"�"��  �"�"�@�@@@��������#not�� �"�"�� �"�"�@�@@@��@��������"Db"VM1get_is_a_template�� �"�"�� �"�#@�@@@���)__context����,__context_to��* �"�#�+ �"�##@�@@@���$self����"vm��7 �"�#*�8 �"�#,@�@@@@��; �"�"��< �"�#-@��"@@@@�4@@@��������"Db"VM-set_appliance��L �#3#?�M �#3#R@�@@@���)__context����,__context_to��Y �#3#^�Z �#3#j@�@@@���$self����"vm��f �#3#q�g �#3#s@�@@@���%value����3recovered_appliance��s #t#��t #t#�@�@@@@�+@@@@��x �"�"�@@@��z �"�"��{#�#�@���~ �"�"�@@@��@����-recovered_vms���#�#���#�#�@�@@@@��@@@������9update_allowed_operations���#�#���#�#�@�@@@���)__context����,__context_to���#�#���#�#�@�@@@���$self����3recovered_appliance���#�$��#�$@�@@@@�@@@��@@@��@@@��� �9��$$@���� �:@@@@��@@@��@@@��@@@�:@@@��	@@@��
@@@��� �@A@@��� �4A@@��� �.A@@��� �#A@@@��� �@@�@@