Caml1999M025����   %      
   	#ocaml/tests/test_xapi_db_upgrade.ml����  N�  �  >%  <?�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!T��	#ocaml/tests/test_xapi_db_upgrade.mlOCJ�OCK@����+Test_common��	OCN�
OCY@�@@@��OCC@�@�����!X��PZa�PZb@����/Xapi_db_upgrade��PZe�PZt@�@@@��"PZZ@�@�����$Date��+Qu|�,Qu�@�����0Xapi_stdext_date$Date��5Qu��6Qu�@�@@@��9Quu@�@���@�����9upgrade_vm_memory_for_dmc��ES���FS��@�@@@��@@����"()��PS���QS��@@�@@@��@�����)__context��\T���]T��@�@@@�������!T2make_test_database��iT���jT��@�@@@��@����$��sT���tT��@@�@@@@�@@@@��xT��@@��@�����$self���U����U��@�@@@�������$List"hd���U����U��@�@@@��@��������"Db"VM'get_all���U� ��U�@�@@@���)__context�������U���U�@�@@@@���U����U�@��@@@@�&@@@@���U��@@�  ��������"Db"VM6set_memory_dynamic_min���W_a��W_}@�@@@���)__context�������W_��W_�@�@@@���$self�������W_���W_�@�@@@���%value���!1� L���W_���W_�@@@@�(@@@�  ��������"Db"VM1set_memory_target���X����X��@�@@@���)__context������X���X��@�@@@���$self������X���X��@�@@@���%value���!2� L�� X���!X��@@@@�(@@@�  ��������"Db"VM6set_memory_dynamic_max��1Y���2Y��@�@@@���)__context������=Y���>Y��@�@@@���$self������IY���JY�@�@@@���%value���!3� L��VY�	�WY�@@@@�(@@@�  ���������!X9upgrade_vm_memory_for_dmc��g[-/�h[-J@�@@@��"fn��n[-K�o[-M@�
@@@���)__context������z[-O�{[-X@�@@@@�@@@��@�����!r���\[a��\[b@�@@@��������"Db"VM*get_record���\[e��\[u@�@@@���)__context�������\[w��\[�@�@@@���$self�������\[���\[�@�@@@@�@@@@���\[]@@�  ���  !�����(Alcotest���]����]��@�@@A@������%check���]����]��@�@@@��@����%int64���]����]��@�@@@@�@@@���]��@@@��@���	Mupgrade_vm_memory_for_dmc: control domain memory_dynamic_min <> memory_target@���^����_��@@@��@������!r���`���`�@�@@@���#API5vM_memory_dynamic_min���`���`�@�@@@��@������!r��`��`�@�@@@���#API0vM_memory_target��`� �`�4@�@@@@�R@@@�  ���  !�����(Alcotest�� a79�!a7A@�@@A@������%check��+a7C�,a7H@�@@@��@����%int64��6a7I�7a7N@�@@@@�@@@��;a7O@@@��@���	Mupgrade_vm_memory_for_dmc: control domain memory_dynamic_max <> memory_target@��CbPT�Dc��@@@��@������!r��Od���Pd��@�@@@���#API5vM_memory_dynamic_max��Xd���Yd��@�@@@��@������!r��ed���fd��@�@@@���#API0vM_memory_target��nd���od��@�@@@@�R@@@�  ��������"Db"VM5set_is_control_domain���f(*��f(E@�@@@���)__context�������f(G��f(P@�@@@���$self�������f(R��f(V@�@@@���%value����%false���f(^��f(c@@�@@@@�)@@@�  ��������"Db"VM5set_memory_static_min���gfh��gf�@�@@@���)__context�������gf���gf�@�@@@���$self�������gf���gf�@�@@@���%value���!5� L���gf���gf�@@@@�(@@@�  ��������"Db"VM6set_memory_dynamic_min���h����h��@�@@@���)__context�������h����h��@�@@@���$self������h���h��@�@@@���%value���!1� L��h���h��@@@@�(@@@�  ��������"Db"VM1set_memory_target��#i���$i��@�@@@���)__context������/i���0i�@�@@@���$self������;i��<i�@�@@@���%value���!2� L��Hi��Ii�@@@@�(@@@�  ��������"Db"VM6set_memory_dynamic_max��Yj�Zj2@�@@@���)__context������ej4�fj=@�@@@���$self������qj?�rjC@�@@@���%value���!3� L��~jK�jM@@@@�(@@@�  ��������"Db"VM5set_memory_static_max���kPR��kPm@�@@@���)__context�������kPo��kPx@�@@@���$self�������kPz��kP~@�@@@���%value���!4� L���kP���kP�@@@@�(@@@�  ���������!X9upgrade_vm_memory_for_dmc���m����m��@�@@@��"fn���m����m��@�
@@@���)__context�������m����m��@�@@@@�@@@��@�����!r���n����n��@�@@@��������"Db"VM*get_record���n����n��@�@@@���)__context������ n���n��@�@@@���$self������n���n�@�@@@@�@@@@��n��@@�  ���  !�����(Alcotest��o	� o@�@@A@������%check��*o�+o@�@@@��@����%int64��5o�6o@�@@@@�@@@��:o@@@��@���	Bupgrade_vm_memory_for_dmc: memory_dynamic_max <> memory_static_max@��Bp $�Cp h@@@��@������!r��Nqim�Oqin@�@@@���#API5vM_memory_dynamic_max��Wqio�Xqi�@�@@@��@������!r��dqi��eqi�@�@@@���#API4vM_memory_static_max��mqi��nqi�@�@@@@�R@@@�  ���  !�����(Alcotest��~r���r��@�@@A@������%check���r����r��@�@@@��@����%int64���r����r��@�@@@@�@@@���r��@@@��@���	=upgrade_vm_memory_for_dmc: memory_target <> memory_static_max@���s����s�	@@@��@������!r���t		��t		@�@@@���#API0vM_memory_target���t			��t		@�@@@��@������!r���t		��t		@�@@@���#API4vM_memory_static_max���t		 ��t		8@�@@@@�R@@@�  ���  !�����(Alcotest���u	;	=��u	;	E@�@@A@������%check���u	;	G��u	;	L@�@@@��@����%int64���u	;	M��u	;	R@�@@@@�@@@���u	;	S@@@��@���	Bupgrade_vm_memory_for_dmc: memory_dynamic_min <> memory_static_max@�� v	T	X�v	T	�@@@��@������!r��w	�	��w	�	�@�@@@���#API5vM_memory_dynamic_min��w	�	��w	�	�@�@@@��@������!r��"w	�	��#w	�	�@�@@@���#API4vM_memory_static_max��+w	�	��,w	�	�@�@@@@�R@@@���  !�����(Alcotest��:x	�	��;x	�	�@�@@A@������%check��Ex	�	��Fx	�	�@�@@@��@����$bool��Px	�	��Qx	�	�@�@@@@�@@@��Ux	�	�@@@��@���	@upgrade_vm_memory_for_dmc: memory_static_min > memory_static_max@��]y	�	��^y	�
8@@@��@����$true��gy	�
9�hy	�
=@@�@@@��@������"<=��tz
>
^�uz
>
`@�@@@��@������!r���z
>
C��z
>
D@�@@@���#API4vM_memory_static_min���z
>
E��z
>
]@�@@@��@������!r���z
>
a��z
>
b@�@@@���#API4vM_memory_static_max���z
>
c��z
>
{@�@@@@���z
>
B��z
>
|@��'@@@@�o@@@��@@@�-@@@��@@@��@@@��	@@@� 
@@@�W@@@��@@@��@@@��@@@�4@@@��@@@��@@@�@@@�Q@@@��@@@��@@@��@@@�@@@�E@@@�nA@@@���S��@@�@���@�����,upgrade_bios���|
~
���|
~
�@�@@@��@@��������|
~
���|
~
�@@�@@@��@�����,tmp_filename���}
�
���}
�
�@�@@@���6/tmp/previousInventory@���}
�
���}
�
�@@@@���}
�
�@@��@�����%check���~
�
���~
�
�@�@@@��@@���)inventory�� ~
�
��~
�
�@�@@@��@@���,bios_strings��
~
�
��~
�
�@�@@@�  ��������0Xapi_stdext_unix'Unixext4write_string_to_file��
�
��
�@�@@@��@����,tmp_filename��&
��'
�(@�@@@��@����)inventory��1
�)�2
�2@�@@@@�@@@��@�����)__context��> @5=�? @5F@�@@@�������!T2make_test_database��K @5I�L @5]@�@@@��@������U @5^�V @5`@@�@@@@�@@@@��Z @59@@�  ���������!X4upgrade_bios_strings��i Adh�j Ad~@�@@@��"fn��p Ad�q Ad�@�
@@@���)__context������| Ad��} Ad�@�@@@@�@@@��@������@��� B���� B��@@@����$vm_r��� B���� B��@�@@@@�@@@�������$List"hd��� B���� B��@�@@@��@��������"Db"VM/get_all_records��� B���� B��@�@@@���)__context������� B���� B��@�@@@@��� B���� B��@��@@@@�&@@@@��� B��@@���  !�����(Alcotest��� C���� C��@�@@A@������%check��� C���� C��@�@@@��@������$list��� C���� C��@�@@@��@������$pair��� C���� C��@�@@@��@����&string�� C��� C��@�@@@��@����&string�� C��� C��@�@@@@�� C��� C��@��@@@@�� C��� C��@��0@@@@�>@@@�J� C��@@@��@���4bios strings upgrade@��$ D �% D @@@��@������$vm_r��0 D �1 D !@�@@@���#API/vM_bios_strings��9 D "�: D 5@�@@@��@����,bios_strings��D D 6�E D B@�@@@@�v@@@��@@@��@@@��@@@�1@@@�CA@@�N	A@@@��O~
�
�@@�  ������%check��Z FHJ�[ FHO@�@@@��@���5OEM_MANUFACTURER=Dell@��d FHP�e FHg@@@��@�����)Constants5old_dell_bios_strings��p FHh�q FH�@�@@@@�@@@�  ������%check��~ G��� G��@�@@@��@���3OEM_MANUFACTURER=HP@��� G���� G��@@@��@�����)Constants3old_hp_bios_strings��� G���� G��@�@@@@�@@@�  ������%check��� H���� H��@�@@@��@��� @��� H���� H��@@@��@�����)Constants4generic_bios_strings��� H���� H��@�@@@@�@@@��������0Xapi_stdext_unix'Unixext+unlink_safe��� I���� I�@�@@@��@����,tmp_filename��� I��� I�'@�@@@@�@@@�6@@@�[@@@��@@@��@@@��@@@�	A@@@���|
~
~@@�@���@�����0update_snapshots��� K)-�� K)=@�@@@��@@�������� K)>�� K)@@@�@@@��@�����)__context��  LCI� LCR@�@@@�������!T2make_test_database�� LCU� LCi@�@@@��@����Ȱ� LCj� LCl@@�@@@@�@@@@�� LCE@@��@�����!a��& Mpv�' Mpw@�@@@�������!T'make_vm��3 Mpz�4 Mp�@�@@@���)__context������? Mp��@ Mp�@�@@@���*name_label���!a@��K Mp��L Mp�@@@��@������T Mp��U Mp�@@�@@@@�%@@@@��Y Mpr@@��@�����&a_snap��c N���d N��@�@@@�������!T'make_vm��p N���q N��@�@@@���)__context������| N���} N��@�@@@���*name_label���&a snap@��� N���� N��@@@��@����B��� N���� N��@@�@@@@�%@@@@��� N��@@�  ��������"Db"VM/set_snapshot_of��� O���� O��@�@@@���)__context������� O���� O�@�@@@���$self����&a_snap��� O��� O�@�@@@���%value����!a��� O��� O�@�@@@@�*@@@�  ��������"Db"VM1set_snapshot_time��� P!�� P8@�@@@���)__context������� P:�� PC@�@@@���$self����&a_snap��� PJ�� PP@�@@@���%value�������$Date(of_float��	 PY�	 Pf@�@@@��@���"1.@��	 Pg�	 Pi@@@@��	 PX�	 Pj@��@@@@�<@@@��@�����!b��	" Qms�	# Qmt@�@@@�������!T'make_vm��	/ Qmw�	0 Qm�@�@@@���)__context������	; Qm��	< Qm�@�@@@���*name_label���!b@��	G Qm��	H Qm�@@@��@����	��	P Qm��	Q Qm�@@�@@@@�%@@@@��	U Qmo@@��@�����&b_snap��	_ R���	` R��@�@@@�������!T'make_vm��	l R���	m R��@�@@@���)__context������	x R���	y R��@�@@@���*name_label���&b snap@��	� R���	� R��@@@��@����	>��	� R���	� R��@@�@@@@�%@@@@��	� R��@@�  ��������"Db"VM/set_snapshot_of��	� S���	� S��@�@@@���)__context������	� S���	� S�@�@@@���$self����&b_snap��	� S�
�	� S�@�@@@���%value����!b��	� S��	� S�@�@@@@�*@@@�  ��������"Db"VM1set_snapshot_time��	� T�	� T5@�@@@���)__context������	� T7�	� T@@�@@@���$self����&b_snap��	� TG�	� TM@�@@@���%value�������$Date(of_float��
 TV�
 Tc@�@@@��@���"1.@��
 Td�
 Tf@@@@��
 TU�
 Tg@��@@@@�<@@@��@�����'b_snap2��
 Ujp�
 Ujw@�@@@�������!T'make_vm��
+ Ujz�
, Uj�@�@@@���)__context������
7 Uj��
8 Uj�@�@@@���*name_label���'b snap2@��
C Uj��
D Uj�@@@��@����	���
L Uj��
M Uj�@@�@@@@�%@@@@��
Q Ujl@@�  ��������"Db"VM/set_snapshot_of��
` V���
a V��@�@@@���)__context������
l V���
m V��@�@@@���$self����'b_snap2��
y V���
z V��@�@@@���%value����!b��
� V���
� V��@�@@@@�*@@@�  ��������"Db"VM1set_snapshot_time��
� W���
� W� @�@@@���)__context������
� W��
� W�@�@@@���$self����'b_snap2��
� W��
� W�@�@@@���%value�������$Date(of_float��
� W�"�
� W�/@�@@@��@���"2.@��
� W�0�
� W�2@@@@��
� W�!�
� W�3@��@@@@�<@@@�  ���������!X0update_snapshots��
� X68�
� X6J@�@@@��"fn��
� X6K�
� X6M@�
@@@���)__context������
� X6O�
� X6X@�@@@@�@@@��@�����(check_vm�� Y[a� Y[i@�@@@�������(Alcotest%check�� Y[l� Y[z@�@@@��@�  !�����4Alcotest_comparators�� Y[{� Y[�@�@@A@������#ref��( Y[��) Y[�@�@@@��@����
��2 Y[��3 Y[�@@�@@@@�@@@��7 Y[�@@@@�*@@@@��: Y[]@@�  ������(check_vm��E [���F [��@�@@@��@���2a.parent <> a_snap@��O [���P [��@@@��@����&a_snap��Y [���Z [��@�@@@��@��������"Db"VM*get_parent��j [���k [��@�@@@���)__context������v [���w [��@�@@@���$self����!a��� [� �� [�@�@@@@��� [���� [�@��!@@@@�G@@@�  ������(check_vm��� ] "�� ] *@�@@@��@���3b.parent <> b_snap2@��� ] +�� ] @@@@��@����'b_snap2��� ] A�� ] H@�@@@��@��������"Db"VM*get_parent��� ] J�� ] Z@�@@@���)__context������� ] \�� ] e@�@@@���$self����!b��� ] l�� ] m@�@@@@��� ] I�� ] n@��!@@@@�G@@@������(check_vm��� _���� _��@�@@@��@���8b_snap2.parent <> b_snap@��� _���� _��@@@��@����&b_snap��� _���� _��@�@@@��@��������"Db"VM*get_parent��
 `��� `��@�@@@���)__context������ `��� `��@�@@@���$self����'b_snap2��# `���$ `��@�@@@@��' `���( `��@��!@@@@�G@@@��@@@��@@@��@@@�N@@@��	@@@��
@@@��@@@�[@@@��@@@��@@@��@@@�[@@@��@@@��@@@��@@@� @@@�IA@@@��> K))@@�@���@�����:remove_restricted_pbd_keys��J b���K b�@�@@@��@@������T b��U b�@@�@@@��@�����/restricted_keys��` c�a c(@�@@@����"::��i c,�j c7A�������(SRmaster@��t c6@@@�����"[]�A@�	A@@@�A@@�� c+@@@@��� c@@��@�����*other_keys��� d;A�� d;K@�@@@����+��� d;O�� d;\A�������#foo@��� d;T@@@�����=��� d;VA�������#bar@�
�� d;[@@@�����;�"A@�#A@@@�$A@@�%A@@@�'&A@@��� d;N(@@@@��� d;=*@@��@�����-device_config��� f���� f��@�@@@�������$List#map��� g���� g��@�@@@��@��@@���!k��� g���� g��@�@@@�������!k��� g���� g��@�@@@����*some_value@��� g���� g��@@@@��� g���� g��@��@@@��� g���� g��@��� g��	@@@��@������!@�� g��� g��@�@@@��@����/restricted_keys�� g��� g��@�@@@��@����*other_keys��" g���# g��@�@@@@��& g���' g��@��@@@@�W@@@@��, f��@@��@�����)__context��6 i���7 i��@�@@@�������!T2make_test_database��C i� �D i�@�@@@��@�������M i��N i�@@�@@@@�@@@@��R i��@@��@�����#pbd��\ j!�] j$@�@@@�������!T(make_pbd��i j'�j j1@�@@@���)__context������u j3�v j<@�@@@���-device_config������� j>�� jK@�@@@��@����<��� jL�� jN@@�@@@@�&@@@@��� j@@�  ���������!X:remove_restricted_pbd_keys��� kRT�� kRp@�@@@��"fn��� kRq�� kRs@�
@@@���)__context������� kRu�� kR~@�@@@@�@@@��@�����.device_config'��� l���� l��@�@@@��������"Db#PBD1get_device_config��� l���� l��@�@@@���)__context������� l���� l��@�@@@���$self����#pbd��� l���� l��@�@@@@�@@@@��� l��@@�  �������$List$iter��� m���� m��@�@@@��@��@@���!k�� n��� n��@�@@@���  !�����(Alcotest�� o��� o��@�@@A@������%check�� o��� o��@�@@@��@����$bool��) o���* o��@�@@@@�@@@��. o��@@@��@�������&Printf'sprintf��; p��< p�@�@@@��@���	6Restricted key, %s, not removed from PBD.device_config@��E p��F p�O@@@��@����!k��O qP[�P qP\@�@@@@��S p��T r]f@��@@@��@�������^ sgo�_ sgt@@�@@@��@�������$List)mem_assoc��m tu~�n tu�@�@@@��@����!k��x tu��y tu�@�@@@��@����.device_config'��� tu��� tu�@�@@@@��� tu}�� tu�@��@@@@�y@@@��� n���� u��@���� n��
@@@��@����/restricted_keys��� v���� v��@�@@@@��@@@�������$List$iter��� w���� w��@�@@@��@��@@���!k��� x���� x��@�@@@���  !�����(Alcotest��� y���� y��@�@@A@������%check��� y���� y��@�@@@��@����$bool��� y���� y��@�@@@@�@@@��� y��@@@��@�������&Printf'sprintf��� z���� z�@�@@@��@���	6Non-restricted key, %s, removed from PBD.device_config@��� z�	�� z�A@@@��@����!k��� {BM�� {BN@�@@@@�� z��� |OX@��@@@��@����	��� }Ya� }Ye@@�@@@��@�������$List)mem_assoc�� ~fo� ~f}@�@@@��@����!k��' ~f~�( ~f@�@@@��@����.device_config'��2 ~f��3 ~f�@�@@@@��6 ~fn�7 ~f�@��@@@@�y@@@��< x���= ��@���@ x��
@@@��@����*other_keys��I ����J ���@�@@@@��@@@�U@@@�c@@@��@@@��@@@� @@@�'	@@@��
@@@��@@@�A@@@��W b��@@�@���@�����$test��c ����d ���@�@@@������k ����l ���A����������9upgrade_vm_memory_for_dmc@��y ����z ���@@@���%Quick@��� ����� ���@@@�����9upgrade_vm_memory_for_dmc��� ����� ���@�@@@@�"�� ���@��@@@�����.��� ���+A����������,upgrade_bios@��� ����� ��@@@���%Quick@��� ���� ��@@@�����,upgrade_bios��� ���� ��#@�@@@@�!�� ��$@��@@@�����X��� �%)UA����������0update_snapshots@��� �%*�� �%<@@@���%Quick@��� �%>�� �%D@@@�����0update_snapshots��� �%F�� �%V@�@@@@�!�� �%W@��@@@��������� �X\A����������:remove_restricted_pbd_keys@��� �X]�� �Xy@@@���%Quick@��� �X{�� �X�@@@�����:remove_restricted_pbd_keys�� �X�� �X�@�@@@@�!� �X�@��@@@�������� ����A@��A@@@�-�A@@�.�A@@@�Y�A@@�Z�A@@@���A@@���A@@@���A@@�� ����@@@@��  ����@@��@@