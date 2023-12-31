Caml1999M025����   *         	(ocaml/xapi/xapi_network_sriov_helpers.ml����  ��  
  ph  mq�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������'Network��	(ocaml/xapi/xapi_network_sriov_helpers.mlOCH�OCO@�@@A��OCC@@�@��������/Db_filter_types��PPU�PPd@�@@A��PPP@@�@��������/Xapi_stdext_std��!Qej�"Qey@�@@A��%Qee@@�@�����!D��.S{��/S{�@�������%Debug$Make��:S{��;S{�@�@@�����@�����$name��IS{��JS{�@�@@@���2xapi_network_sriov@��QS{��RS{�@@@@��TS{�@@�@@��WS{��XS{�@@� �ZS{�@@@��\S{{@�@��������!D��hU���iU��@�@@A��lU��@@�@���@�����,get_sriov_of��xW���yW��@�@@@�Đ)__context@������W����W��@�@@@�Đ1sriov_logical_pif@������W����W��@�@@@����������"Db#PIF8get_sriov_logical_PIF_of���X� ��X�@�@@@���)__context�������X�!��X�*@�@@@���$self����1sriov_logical_pif���X�1��X�B@�@@@@�@@@������"::���YHN��YHP@�������!v���YHL��YHM@�@@@��@���YHQ��YHR@@@@�	A@@�
@@@@����!v���ZV\��ZV]@�@@@������"[]���[^b��[^d@@�@@@@������%raise���\hn��\hs@�@@@��@�  !�����*Api_errors��]t|�]t�@�@@A@����,Server_error��^���^��@��������.internal_error��_���_��@�@@@�����"::��"a���#cSbA�����������&Printf'sprintf��2a��@�@@@��@���	0Cannot find sriov object in sriov logical PIF %s@��;a���<a�@@@��@�������#Ref)string_of��Ib2�Jb?@�@@@��@����1sriov_logical_pif��Tb@�UbQ@�@@@@��Xb1�YbR@��@@@@�;@@@�����"[]��dcSaBA@�CA@@@�EDA@@��h`��F@@@@��j_���kdcp@��VK@@@�c@@@�m�peqz@@@@�}@@@@��sX��@@@��uW��A@@��wW��A@@@��yW��
@@�@���@�����.sriov_bring_up���g|���g|�@�@@@�Đ)__context@������g|���g|�@�@@@�Đ$self@������g|���g|�@�@@@��@�����8update_sriov_with_result���h����h��@�@@@��@@���&result���h����h��@�@@@�  !������#Net%Sriov���i����i��@�@@A���i��@@��@��������$mode���j����j��@�@@@����.require_reboot���j����j� @�@@@@�@@@������&result���k��k@�@@@������0Sysfs_successful���l#��l3@@�@@@@�����%sysfs@���m7B��m7H@@@�����%false��m7J�m7O@@�@@@@��m7A�m7P@��@@@������3Modprobe_successful��nQY�nQl@@�@@@@�����(modprobe@��op{�op�@@@�����#��%op��&op�@@�@@@@��)opz�*op�@��@@@������	#Modprobe_successful_requires_reboot��5p���6p��@@�@@@@�����(modprobe@��?q���@q��@@@�����$true��Hq���Iq��@@�@@@@��Lq���Mq��@��@@@@��Qk	@@@@��Sj��@@��@�����%sriov��]s���^s��@�@@@������,get_sriov_of��hs���is��@�@@@���)__context������ts���us�@�@@@���1sriov_logical_pif����$self���s���s�@�@@@@�@@@@���s��@@��@�����,physical_pif���t"*��t"6@�@@@��������"Db-Network_sriov0get_physical_PIF���u9?��u9`@�@@@���)__context�������u9b��u9k@�@@@���$self����%sriov���u9r��u9w@�@@@@�@@@@���t"&@@�  ������$info���w���w�@�@@@��@���	CEnable network sriov on PIF %s successful, mode: %s need_reboot: %b@���w���w�@@@��@�������#Ref)string_of���x����x��@�@@@��@����,physical_pif���x����x��@�@@@@���x����x��@��@@@��@�������+Record_util	*network_sriov_configuration_mode_to_string���y��� y�.@�@@@��@����$mode��
y�/�y�3@�@@@@��y���y�4@��@@@��@����.require_reboot��z5;�z5I@�@@@@�V@@@�  ��������"Db-Network_sriov6set_configuration_mode��,{LP�-{Lw@�@@@���)__context������8{Ly�9{L�@�@@@���$self����%sriov��E{L��F{L�@�@@@���%value����$mode��R{L��S{L�@�@@@@�*@@@�  ��������"Db-Network_sriov3set_requires_reboot��d|���e|��@�@@@���)__context������p|���q|��@�@@@���$self����%sriov��}|���~|��@�@@@���%value����.require_reboot���}����}��@�@@@@�*@@@��������"Db#PIF6set_currently_attached���~����~�@�@@@���)__context�������~���~�'@�@@@���$self�������~�)��~�-@�@@@���%value������#not���~�6��~�9@�@@@��@����.require_reboot���~�:��~�H@�@@@@���~�5��~�I@��@@@@�;@@@�r@@@��@@@�@@@�@@@�T	@@@��
@@@���i��@@@�-A@@@���h��@@��@�����&device��� @OU�� @O[@�@@@��������"Db#PIF*get_device��� @O^�� @Oo@�@@@���)__context������ @Oq� @Oz@�@@@���$self������ @O|� @O�@�@@@@�@@@@�� @OQ@@�  ��@�����#dbg��! A���" A��@�@@@�������'Context.string_of_task��. A���/ A��@�@@@��@����)__context��9 A���: A��@�@@@@�@@@@��> A��@@����������#Net%Sriov&enable��M B���N B��@�@@@��@����#dbg��X B���Y B��@�@@@��@����&device��c B���d B��@�@@@@�@@@������"Ok��o C���p C��@����&result��w C���x C��@�@@@�@@@@������8update_sriov_with_result��� D���� D�	@�@@@��@����&result��� D�	�� D�	@�@@@@�@@@������%Error��� E		�� E		"@����%error��� E		#�� E		(@�@@@�@@@@�  ��������"Db#PIF6set_currently_attached��� F	,	3�� F	,	P@�@@@���)__context������� F	,	R�� F	,	[@�@@@���$self������� F	,	]�� F	,	a@�@@@���%value����ְ�� F	,	i�� F	,	n@@�@@@@�(@@@������%raise��� G	q	x�� G	q	}@�@@@��@�  !�����*Api_errors��� H	~	��� H	~	�@�@@A@����,Server_error��� I	�	��� I	�	�@��������;network_sriov_enable_failed�� J	�	�� J	�	�@�@@@������� J	�	�� J	�	�A�����������#Ref)string_of��  J	�	�@�@@@��@����$self��* J	�	��+ J	�	�@�@@@@�@@@�������4 J	�	�$A��������%error��? J	�	�@�@@@������6A@�	7A@@@�8A@@�9A@@@�;:A@@��L J	�	�<@@@@��N J	�	��O J	�	�@��KA@@@�X@@@�b�T K	�	�@@@@�r@@@��@@@@��X B��@@@��Z A���[ L	�
@�� 
@@@�������(Xapi_pci+update_pcis��h M

�i M

@�@@@���)__context������t M

�u M

&@�@@@@�@@@�@@@�e@@@��@@@��|g|�A@@��~g|�
A@@@���g||@@�@���@�����?require_operation_on_pci_device��� O
(
,�� O
(
K@�@@@�Đ)__context@������ O
(
M�� O
(
V@�@@@�Đ%sriov@������ O
(
X�� O
(
]@�@@@�Đ$self@������ O
(
_�� O
(
c@�@@@��@�����0is_sriov_enabled��� P
f
l�� P
f
|@�@@@�Đ'pif_rec@������ P
f
~�� P
f
�@�@@@��������'pif_rec��� Q
�
��� Q
�
�@�@@@���#API8pIF_sriov_logical_PIF_of��� Q
�
��� Q
�
�@�@@@���������� R
�
��� R
�
�@@�@@@@������� S
�
��� S
�
�@@�@@@������3��� T
�
��� T
�
�@�������%sriov�� T
�
�� T
�
�@�@@@��@�� T
�
�� T
�
�@@@@�	A@@�
@@@@������"||�� V� V@�@@@��@������'pif_rec��  U
�
��! U
�
�@�@@@���#API6pIF_currently_attached��) U
�
��* U
�@�@@@��@��������"Db-Network_sriov3get_requires_reboot��: V �; VD@�@@@���)__context������F VF�G VO@�@@@���$self����%sriov��S VV�T V[@�@@@@�@@@@�8@@@@��Y Q
�
�@@@��[ P
f
}A@@@��] P
f
h
@@��@�����'pif_rec��g Xag�h Xan@�@@@��������"Db#PIF*get_record��v Xaq�w Xa�@�@@@���)__context������� Xa��� Xa�@�@@@���$self������� Xa��� Xa�@�@@@@�@@@@��� Xac@@��������0is_sriov_enabled��� Y���� Y��@�@@@���'pif_rec������� Y���� Y��@�@@@@�@@@����������"Db-Network_sriov6get_configuration_mode��� Z���� Z��@�@@@���)__context������� Z���� Z��@�@@@���$self����%sriov��� Z���� Z�@�@@@@�@@@����%sysfs@��� [	�� [	@@@@�������� \!�� \%@@�@@@����'unknown@��� ]&,�� ]&4@@@@�������� ^8@�� ^8E@@�@@@����(modprobe@��� _FL�  _FU@@@@��@�����$host��
 `Ye� `Yi@�@@@��������"Db#PIF(get_host�� `Yl� `Y{@�@@@���)__context������% `Y}�& `Y�@�@@@���$self������1 `Y��2 `Y�@�@@@@�@@@@��6 `Ya@@��@�����,physical_pif��@ a���A a��@�@@@��������"Db-Network_sriov0get_physical_PIF��O b���P b��@�@@@���)__context������[ b���\ b��@�@@@���$self����%sriov��h b���i b��@�@@@@�@@@@��m a��@@��@�����#pci��w d��x d�@�@@@��������"Db#PIF'get_PCI��� d��� d�@�@@@���)__context������� d��� d�$@�@@@���$self����,physical_pif��� d�+�� d�7@�@@@@�@@@@��� d�@@��@�����+driver_name��� e;G�� e;R@�@@@��������"Db#PCI/get_driver_name��� e;U�� e;k@�@@@���)__context������� e;m�� e;v@�@@@���$self����#pci��� e;}�� e;�@�@@@@�@@@@��� e;C@@������"|>��� �U]�� �U_@�@@@��@������"|>��� �#+�� �#-@�@@@��@������"|>��� ����� ���@�@@@��@������"|>�� q��� q�@�@@@��@��������"Db#PIF1get_records_where�� j
� j"@�@@@���)__context������( j$�) j-@�@@@���$expr����#And��5 l?L�6 l?O@��������"Eq��A mPa�B mPc@��������%Field��M mPe�N mPj@����$host@��U mPk�V mPq@@@�@@@�����'Literal��_ mPs�` mPz@��������#Ref)string_of��l mP|�m mP�@�@@@��@����$host��w mP��x mP�@�@@@@��{ mP{�| mP�@��@@@�!@@@@��� mPd�� mP�@��8	@@@�E@@@�����#Not��� n���� n��@�����"Eq��� n���� n��@��������%Field��� n���� n��@����4sriov_logical_PIF_of@��� n���� n��@@@�@@@�����'Literal��� n���� n��@����"()@��� n���� n��@@@�@@@@��� n���� n��@��"@@@��� n���� n��@��3@@@�=@@@@��� mP_�� o��@���	@@@��� l?K�� p��@���@@@@��@@@��@�������$List&filter��� q��� q�@�@@@��@��@@����@��� q��� q�@@@����'pif_rec��� q��� q�@�@@@@��� q��� q�@��@@@��@�����%sriov��	 r#6�	 r#;@�@@@��������'pif_rec��	 s>U�	 s>\@�@@@���#API8pIF_sriov_logical_PIF_of��	 s>]�	 s>y@�@@@������c��	& t��	' t�@�������!v��	1 t��	2 t�@�@@@��@��	7 t��	8 t�@@@@�	A@@�
@@@@����!v��	A u���	B u��@�@@@������b��	K v���	L v��@@�@@@@������%raise��	V w���	W w��@�@@@��@�  !�����*Api_errors��	d x���	e x�@�@@A@����,Server_error��	m y$�	n y0@��������.internal_error��	y z1N�	z z1\@�@@@�����a��	� ||��	� �XvA�����������&Printf'sprintf��	� ||�@�@@@��@���	0Cannot find sriov object in sriov logical PIF %s@��	� }���	� ~�!@@@��@������'pif_rec��	� "C�	� "J@�@@@���#API(pIF_uuid��	� "K�	� "W@�@@@@�2@@@�����W��	� �Xu8A@�9A@@@�;:A@@��	� {]z<@@@@��	� z1L�	� �w�@��KA@@@�X@@@�b�	� ���@@@@�r@@@@��	� s>O@@@@��	� r#2@@��@�����,physical_pif��	� ����	� ���@�@@@��������"Db-Network_sriov0get_physical_PIF��	� ����	� ��@�@@@���)__context������	� ���	� ��@�@@@���$self����%sriov��	� ��%�	� ��*@�@@@@�@@@@��
 ���@@��@�����#pci��
 �=P�
 �=S@�@@@��������"Db#PIF'get_PCI��
 �=V�
 �=d@�@@@���)__context������
' �=f�
( �=o@�@@@���$self����,physical_pif��
4 �=v�
5 �=�@�@@@@�@@@@��
9 �=L@@������!=��
B ����
C ���@�@@@��@��������"Db#PCI/get_driver_name��
S ����
T ���@�@@@���)__context������
_ ����
` ���@�@@@���$self����#pci��
l ����
m ���@�@@@@�@@@��@����+driver_name��
x ����
y ���@�@@@@�)@@@�D@@@�|@@@��@@@��
� q��
� ���@���
� q�@@@@��@@@@�k@@@��@�������$List&filter��
� ����
� ���@�@@@��@��@@����@��
� ����
� ���@@@����'pif_rec��
� ����
� ��@�@@@@��
� ����
� ��@��@@@������0is_sriov_enabled��
� ���
� ��@�@@@���'pif_rec������
� ���
� ��!@�@@@@�@@@��
� ����
� ��"@���
� ���	@@@@�;@@@@��@@@��@�������$List#map��
� �#.�
� �#6@�@@@��@��@@������'pif_ref��
� �#=�
� �#D@�@@@��@��
� �#F�
� �#G@@@@��
� �#<�
� �#H@��@@@����'pif_ref��
� �#L�
� �#S@�@@@�� �#7� �#T@��� �#8@@@@�,@@@@��@@@��@������!=�� �U`� �Ue@�@@@��@����	��� �Ug� �UlA��������$self��( �Uk@�@@@�����	ͰA@�	A@@@�A@@��3 �Uf@@@@�#@@@@�@@@�\@@@��@@@��@@@�@@@@��; Z��@@@�����	@��B �tx�C �t}@@�@@@��F Y��@@@��@@@��@@@��J O
(
^A@@��L O
(
W
A@@��N O
(
LA@@@��P O
(
(@@�@���@�����0sriov_bring_down��\ ���] ��@�@@@�Đ)__context@�����g ���h ��@�@@@�Đ$self@�����r ���s ��@�@@@��@�����%sriov��~ ���� ���@�@@@������,get_sriov_of��� ����� ���@�@@@���)__context������� ����� ���@�@@@���1sriov_logical_pif����$self��� ����� ���@�@@@@�@@@@��� ���@@��@�����,physical_pif��� ����� ���@�@@@��������"Db-Network_sriov0get_physical_PIF��� ����� ��@�@@@���)__context������� �� �� ��)@�@@@���$self����%sriov��� ��0�� ��5@�@@@@�@@@@��� ���@@�  ��������?require_operation_on_pci_device��� �9>�� �9]@�@@@���)__context������� �9_�� �9h@�@@@���%sriov������ �9j� �9o@�@@@���$self������ �9q� �9u@�@@@@�(@@@�  ������%debug�� �}�� �}�@�@@@��@���	,Disable network sriov on pci device. PIF: %s@��' �}��( �}�@@@��@�������#Ref)string_of��5 �}��6 �}�@�@@@��@����$self��@ �}��A �}�@�@@@@��D �}��E �}�@��@@@@�,@@@��@�����#dbg��R ����S ���@�@@@�������'Context.string_of_task��_ ����` ���@�@@@��@����)__context��j ����k ���@�@@@@�@@@@��o ���@@��@�����&device��y ���z ��@�@@@��������"Db#PIF*get_device��� ���� ��!@�@@@���)__context������� ��#�� ��,@�@@@���$self������� ��.�� ��2@�@@@@�@@@@��� ��@@����������#Net%Sriov'disable��� �6@�� �6Q@�@@@��@����#dbg��� �6R�� �6U@�@@@��@����&device��� �6V�� �6\@�@@@@�@@@������"Ok��� �bh�� �bj@@�@@@@����"()��� �nv�� �nx@@�@@@������%Error��� �y�� �y�@����%error��� �y��� �y�@�@@@�@@@@������%raise��� ����� ���@�@@@��@�  !�����*Api_errors�� ���� ���@�@@A@����,Server_error�� ���� ���@��������<network_sriov_disable_failed��! ����" ���@�@@@�����	��* ����+ ��A�����������#Ref)string_of��: ��@�@@@��@����$self��D ���E ��@�@@@@�@@@�����-��N ��$A��������%error��Y ��@�@@@�������6A@�	7A@@@�8A@@�9A@@@�;:A@@��f ���<@@@@��h ����i ��@��KA@@@�X@@@�b�n �!@@@@�r@@@@��q �6:@@@��@@@�@@@��u �9{�v �"%@��\@@@@��z �9;@@@�  ������$info��� �(*�� �(.@�@@@��@���	*Disable network sriov on PIF %s successful@��� �(/�� �([@@@��@�������#Ref)string_of��� �(]�� �(j@�@@@��@����,physical_pif��� �(k�� �(w@�@@@@��� �(\�� �(x@��@@@@�,@@@�  ��������"Db#PIF6set_currently_attached��� �{}�� �{�@�@@@���)__context������� �{��� �{�@�@@@���$self������� �{��� �{�@�@@@���%value������� �{��� �{�@@�@@@@�(@@@�  ��������"Db-Network_sriov3set_requires_reboot��� ����� ���@�@@@���)__context������ ���� ���@�@@@���$self����%sriov�� ���� ���@�@@@���%value������ �� � ��@@�@@@@�)@@@�������(Xapi_pci+update_pcis��( �
�) �@�@@@���)__context������4 � �5 �)@�@@@@�@@@�D@@@�{@@@��@@@��@@@�_@@@��	@@@��? ��A@@��A ��A@@@��C �@@�@���@�����?get_remaining_capacity_on_sriov��O �+/�P �+N@�@@@�Đ)__context@�����Z �+P�[ �+Y@�@@@�Đ$self@�����e �+[�f �+_@�@@@��@�����,physical_PIF��q �bh�r �bt@�@@@��������"Db-Network_sriov0get_physical_PIF��� �bw�� �b�@�@@@���)__context������� �b��� �b�@�@@@���$self������� �b��� �b�@�@@@@�@@@@��� �bd@@��@�����#pci��� ����� ���@�@@@��������"Db#PIF'get_PCI��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self����,physical_PIF��� ����� ���@�@@@@�@@@@��� ���@@�������(Xapi_pci0get_idle_vf_nums��� ����� ��@�@@@���)__context������� ���� ��@�@@@���$self����#pci��� ���� ��@�@@@@�@@@�)@@@�a@@@��� �+ZA@@�� �+O	A@@@�� �++@@�@���@�����2get_underlying_pif�� ���� ���@�@@@�Đ)__context@����� ���� ���@�@@@�Đ#pif@�����% ����& ���@�@@@��@�����'pif_rec��1 ����2 ���@�@@@��������"Db#PIF*get_record��@ ����A ���@�@@@���)__context������L ����M ���@�@@@���$self����#pif��Y ����Z ���@�@@@@�@@@@��^ ���@@���������0Xapi_pif_helpers,get_pif_topo��k ����l ��@�@@@���)__context������w ���x ��'@�@@@���'pif_rec������� ��)�� ��0@�@@@@�@@@��������Ͱ�� �6V�� �6X@��������5Network_sriov_logical��� �6:�� �6O@����%sriov��� �6P�� �6U@�@@@�@@@��@��� �6Y�� �6Z@@@@�A@@�@@@������� �[o�� �[q@��������-VLAN_untagged��� �[_�� �[l@��@��� �[m�� �[n@@@�@@@�������� �[��� �[�@��������5Network_sriov_logical��� �[r�� �[�@����%sriov��� �[��� �[�@�@@@�@@@��@��� �[��� �[�@@@@�A@@�@@@@�.A@@�/@@@�T@@@@����$Some��� ����� ���@���������"Db-Network_sriov0get_physical_PIF�� ���� ���@�@@@���)__context������ ���� ���@�@@@���$self����%sriov�� ���� ���@�@@@@��" ����# ���@��!@@@�1@@@���@��+ ����, ���@@@@����$None��3 ����4 ���@@�@@@@��7 ���@@@��@@@��: ���A@@��< ���	A@@@��> ���@@�@���@�����8can_be_up_without_reboot��J � �K �8@�@@@�Đ)__context@�����U �:�V �C@�@@@��@@���%sriov��_ �D�` �I@�@@@����������"Db-Network_sriov6get_configuration_mode��p �LT�q �L{@�@@@���)__context������| �L}�} �L�@�@@@���$self����%sriov��� �L��� �L�@�@@@@�@@@����%sysfs@��� ����� ���@@@@����S��� ����� ���@@�@@@����'unknown@��� ����� ���@@@@�������� ����� ���@@�@@@����(modprobe@��� ����� ���@@@@��@�����#pif��� ����� ���@�@@@��������"Db-Network_sriov/get_logical_PIF��� ����� ��@�@@@���)__context������� ���� ��@�@@@���$self����%sriov��� �� �� ��%@�@@@@�@@@@��� ���@@������
��� �bh�� �bj@�@@@��@��������"Db#PIF6get_currently_attached�� �)/� �)L@�@@@���)__context������ �)N� �)W@�@@@���$self����#pif�� �)^� �)a@�@@@@�@@@��@������!>��+ �b��, �b�@�@@@��@������?get_remaining_capacity_on_sriov��8 �bk�9 �b�@�@@@���)__context������D �b��E �b�@�@@@���$self����%sriov��Q �b��R �b�@�@@@@�@@@��@���!0� L��] �b��^ �b�@@@@�(@@@@�]@@@�w@@@@��c �LN@@@�A@@��f �9	A@@@��h �@@�@���@�����0is_sriov_network��t �^b�u �^r@�@@@�Đ)__context@����� �^t�� �^}@�@@@�Đ$self@������ �^�� �^�@�@@@����������"Db'Network(get_PIFs��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self������� ����� ���@�@@@@�@@@������հ�� ����� ���@@�@@@@����İ�� ����� ���@@�@@@��������� ����� ���@�������#pif��� ����� ���@�@@@��@��� ����� ���@@@@�	A@@�
@@@@������"<>��� ���� ��	@�@@@��@������2get_underlying_pif��� ����� ���@�@@@���)__context������ ���� ��@�@@@���#pif������ ��� ��@�@@@@�@@@��@����$None�� ��
� ��@@�@@@@�(@@@@��# ���@@@��% �^~A@@��' �^s	A@@@��) �^^@@�@���@�����:get_sriov_networks_from_vm��5 ��6 �.@�@@@�Đ)__context@�����@ �0�A �9@�@@@�Đ"vm@�����K �;�L �=@�@@@��@�����(networks��W �@F�X �@N@�@@@������"|>��b �x|�c �x~@�@@@��@��������"Db"VM(get_VIFs��s �QU�t �Qc@�@@@���)__context������ �Qe�� �Qn@�@@@���$self����"vm��� �Qu�� �Qw@�@@@@�@@@��@�������$List#map��� �x�� �x�@�@@@��@��@@���#vif��� �x��� �x�@�@@@��������"Db#VIF+get_network��� �x��� �x�@�@@@���)__context������� �x��� �x�@�@@@���$self����#vif��� �x��� �x�@�@@@@�@@@��� �x��� �x�@���� �x�	@@@@�?@@@@�i@@@@��� �@B@@�������$List&filter��� ����� ���@�@@@��@��@@���'network��� ����� ���@�@@@������0is_sriov_network��� ����  ���@�@@@���)__context������ ���� ���@�@@@���$self����'network�� �� � �� @�@@@@�@@@�� ���� �� @���! ���	@@@��@����(networks��* �  �+ �  @�@@@@�F@@@�R@@@��0 �:A@@��2 �/A@@@��4 �
@@�@���@�����8get_local_underlying_pif��@ � \ `�A � \ x@�@@@�Đ)__context@�����K � \ z�L � \ �@�@@@�Đ'network@�����V � \ ��W � \ �@�@@@�Đ$host@�����a � \ ��b � \ �@�@@@���������;Xapi_network_attach_helpers.get_local_pifs��p � � ��q � � �@�@@@���)__context������| � � ��} � � �@�@@@���'network������� � � ��� � � �@�@@@���$host������� � � ��� � � �@�@@@@�(@@@���������� � � ��� � � �@@�@@@@����$None��� � � ��� � �!@@�@@@��������� �!!
�� �!!@�������#pif��� �!!�� �!!	@�@@@��@��� �!!�� �!!@@@@�	A@@�
@@@@������2get_underlying_pif��� �!!�� �!!*@�@@@���)__context������� �!!,�� �!!5@�@@@���#pif������� �!!7�� �!!:@�@@@@�@@@@��� � � �@@@��� � \ �A@@��� � \ �	A@@��� � \ yA@@@��� � \ \@@�@���@�����>get_remaining_capacity_on_host��  �!�!�� �!�!�@�@@@�Đ)__context@����� �!�!�� �!�!�@�@@@�Đ$host@����� �!�!�� �!�!�@�@@@�Đ'network@�����! �!�!��" �!�!�@�@@@��@�����*local_pifs��- �!�!��. �!�"@�@@@�������;Xapi_network_attach_helpers.get_local_pifs��: �""�; �""5@�@@@���)__context������F �""7�G �""@@�@@@���'network������R �""B�S �""I@�@@@���$host������^ �""K�_ �""O@�@@@@�(@@@@��c �!�!�@@������*local_pifs��l �"U"]�m �"U"g@�@@@���������v �"m"q�w �"m"s@@�@@@@������%raise��� �"w"}�� �"w"�@�@@@��@�  !�����*Api_errors��� �"�"��� �"�"�@�@@A@����,Server_error��� �"�"��� �"�"�@��������.internal_error��� �"�"��� �"�"�@�@@@��������� �"�"��� �"�"�A�������?Cannot get local pif on network@��� �"�"�@@@�����\�A@�A@@@�A@@��� �"�"�@@@@��� �"�"��� �"�"�@��$@@@�1@@@�;�� �"�"�@@@@�K@@@��������� �"�"��� �"�"�@�������)local_pif��� �"�"��� �"�"�@�@@@��@��� �"�# �� �"�#@@@@�	A@@�
@@@@��������2get_underlying_pif��� �##�� �###@�@@@���)__context������� �##%�� �##.@�@@@���#pif����)local_pif�� �##4� �##=@�@@@@�@@@������$Some�� �#C#I� �#C#M@����.underlying_pif�� �#C#N�  �#C#\@�@@@�@@@@��@�����#pci��, �#`#l�- �#`#o@�@@@��������"Db#PIF'get_PCI��; �#`#r�< �#`#�@�@@@���)__context������G �#`#��H �#`#�@�@@@���$self����.underlying_pif��T �#`#��U �#`#�@�@@@@�@@@@��Y �#`#h@@�������(Xapi_pci0get_idle_vf_nums��d �#�#��e �#�#�@�@@@���)__context������p �#�#��q �#�#�@�@@@���$self����#pci��} �#�#��~ �#�#�@�@@@@�@@@�)@@@������$None��� �#�#��� �#�#�@@�@@@@������%raise��� �#�#��� �#�#�@�@@@��@�  !�����*Api_errors��� �#�$�� �#�$@�@@A@����,Server_error��� �$$�� �$$&@��������.internal_error��� �$'$6�� �$'$D@�@@@��������� �$'$G�� �$'$tA�������	*Cannot get underlying pif on sriov network@��� �$'$s@@@�����p�A@�A@@@�A@@��� �$'$F@@@@��� �$'$5�� �$'$u@��$@@@�1@@@�;�� �$v$�@@@@�K@@@@��� �"�#�� �$�$�@���� �##@@@@��� �"U"W@@@��@@@��� �!�!�	A@@��� �!�!�A@@��� �!�!�A@@@��� �!�!�@@�@���@�����9group_hosts_by_best_sriov���&�&���&�&�@�@@@�Đ)__context@�����&�&��&�&�@�@@@�Đ'network@�����&�&��&�&�@�@@@��@�����$pifs��&�&��&�&�@�@@@��������"Db'Network(get_PIFs��-&�&��.&�&�@�@@@���)__context������9&�&��:&�&�@�@@@���$self����'network��F&�'�G&�'@�@@@@�@@@@��K&�&�@@��@��������.attached_hosts��X''�Y''#@�@@@����0unattached_hosts��a''%�b''5@�@@@@�@@@�������$List)fold_left��o'8'<�p'8'J@�@@@��@��@@������"l1��~'K'W�'K'Y@�@@@����"l2���'K'[��'K']@�@@@@���'K'V��'K'^@��@@@��@@���#pif���'K'_��'K'b@�@@@��@�����'pif_rec���'f'r��'f'y@�@@@��������"Db#PIF*get_record���'f'|��'f'�@�@@@���)__context�������'f'���'f'�@�@@@���$self����#pif���'f'���'f'�@�@@@@�@@@@���'f'n@@��@�����$host���'�'���'�'�@�@@@������'pif_rec���'�'���'�'�@�@@@���#API(pIF_host���'�'���'�'�@�@@@@���'�'�@@��������'pif_rec���'�'���'�'�@�@@@���#API6pIF_currently_attached��'�'��'�'�@�@@@��@�����#num��	((�	((@�@@@������>get_remaining_capacity_on_host��	((�	((6@�@@@���)__context������(	((8�)	((A@�@@@���$host������4	((C�5	((G@�@@@���'network������@	((I�A	((P@�@@@@�(@@@@��E	((@@����������O
(T(e�P
(T(f@�@@@��@����#num��Z
(T(a�[
(T(d@�@@@��@���!0� L��e
(T(g�f
(T(i@@@@�@@@�������"l1��q
(T(p�r
(T(r@�@@@�����"l2��{
(T(t�|
(T(v@�@@@@��
(T(o��
(T(w@��@@@��������"::���
(T(���
(T(�@�����������$host���
(T(��
(T(�@�@@@�����#num���
(T(���
(T(�@�@@@@���
(T(~��
(T(�@��@@@�����"l1���
(T(���
(T(�@�@@@@�A@@�@@@�����"l2���
(T(���
(T(�@�@@@@���
(T(}��
(T(�@��@@@���
(T(^@@@��@@@���@�����%sriov���(�(���(�(�@�@@@���������0Xapi_pif_helpers,get_pif_topo���(�(���(�(�@�@@@���)__context�������(�(���(�(�@�@@@���'pif_rec�������(�(���(�(�@�@@@@�@@@��������G��
))+�))-@��������5Network_sriov_logical��))�))$@����%sriov��))%�))*@�@@@�@@@��@��%)).�&))/@@@@�A@@�@@@����k��.)0)N�/)0)P@��������-VLAN_untagged��:)0)>�;)0)K@��@��?)0)L�@)0)M@@@�@@@��������H)0)m�I)0)o@��������5Network_sriov_logical��T)0)Q�U)0)f@����%sriov��\)0)g�])0)l@�@@@�@@@��@��c)0)p�d)0)q@@@@�A@@�@@@@�.A@@�/@@@�T@@@@����%sriov��p)u)��q)u)�@�@@@���@��w)�)��x)�)�@@@@������%raise���)�)���)�)�@�@@@��@�  !�����*Api_errors���)�)���)�)�@�@@A@����,Server_error���)�)���)�)�@��������.internal_error���)�*��)�*@�@@@���������*5*O��*�*�A�����������&Printf'sprintf���*5*]@�@@@��@���	"Cannot find sriov object in PIF %s@���*5*^��*5*�@@@��@�������#Ref)string_of���*�*���*�*�@�@@@��@����#pif���*�*���*�*�@�@@@@���*�*���*�*�@��@@@@�;@@@���������*�*�AA@�BA@@@�DCA@@���**3E@@@@���)�*
��*�*�@��TJ@@@�a@@@�k��*�*�@@@@�{@@@@���(�(�@@@@���(�(�@@��������8can_be_up_without_reboot��
++�+++@�@@@���)__context������++-�++6@�@@@��@����%sriov��!++7�"++<@�@@@@�@@@�������"l1��.+B+O�/+B+Q@�@@@��������7+B+^�8+B+`@�����������$host��F+B+T�G+B+X@�@@@����!0� L��P+B+Z�Q+B+\@@@@��S+B+S�T+B+]@��@@@�����"l2��^+B+a�_+B+c@�@@@@�A@@�@@@@��d+B+N�e+B+d@��:	@@@��������"l1��r +t+��s +t+�@�@@@�����"l2��| +t+��} +t+�@�@@@@��� +t+��� +t+�@��@@@���++@@@��@@@���'�'�@@@��	@@@��
@@@��A@@���'K'Q��!+�+�@����'K'R@@@��@�����������"+�+���"+�+�@@�@@@���������"+�+���"+�+�@@�@@@@���"+�+���"+�+�@��@@@��@����$pifs���"+�+���"+�+�@�@@@@�J@@@@���''@@��@�����*host_lists���$+�+���$+�+�@�@@@������"|>���(,%,)��(,%,+@�@@@��@�������'Helpers(group_by���%+�+���%+�+�@�@@@��@��*descending@���%+�+���%+�+�@@@��@��@@����@���&+�+���&+�+�@@@����#num���&+�+���&+�+�@�@@@@���&+�+���&+�+�@��@@@����#num��&+�+��	&+�+�@�@@@��&+�+��&+�+�@���&+�+�@@@��@��������'Listext$List&setify��'+�,� '+�,@�@@@��@����.attached_hosts��*'+�,�+'+�,#@�@@@@��.'+�, �/'+�,$@��@@@@�U@@@��@�������$List#map��?(,%,,�@(,%,4@�@@@��@��@@���"hl��K(,%,:�L(,%,<@�@@@�������$List#map��X(,%,@�Y(,%,H@�@@@��@��@@���������!h��j(,%,P�k(,%,Q@�@@@����#num��s(,%,S�t(,%,V@�@@@@��w(,%,O�x(,%,W@��@@@��@��~(,%,Y�(,%,Z@@@@���(,%,N��(,%,[@��@@@�������!h���(,%,`��(,%,a@�@@@�����#num���(,%,c��(,%,f@�@@@@���(,%,_��(,%,g@��@@@���(,%,I��(,%,h@����(,%,J	@@@��@����"hl���(,%,i��(,%,k@�@@@@�Z@@@���(,%,5��(,%,l@����(,%,6	@@@@�z@@@@��@@@@���$+�+�@@��������"<>���*,r,���*,r,�@�@@@��@����0unattached_hosts���*,r,w��*,r,�@�@@@��@�������*,r,���*,r,�@@�@@@@�@@@������!@���+,�,���+,�,�@�@@@��@����*host_lists���+,�,���+,�,�@�@@@��@����۰��+,�,���+,�,�A��������0unattached_hosts��+,�,�@�@@@�������A@�	A@@@�A@@��+,�,�@@@@�#@@@�����*host_lists��-,�,��-,�,�@�@@@�� *,r,t@@@�g@@@�i@@@��@@@��%&�&�	A@@��'&�&�A@@@��)&�&�@@�@���@�����1reserve_sriov_vfs��50-O-S�60-O-d@�@@@�Đ)__context@�����@0-O-f�A0-O-o@�@@@�Đ$host@�����K0-O-q�L0-O-u@�@@@�Đ"vm@�����V0-O-w�W0-O-y@�@@@��@�����$vifs��b1-|-��c1-|-�@�@@@��������"Db"VM(get_VIFs��q1-|-��r1-|-�@�@@@���)__context������}1-|-��~1-|-�@�@@@���$self����"vm���1-|-���1-|-�@�@@@@�@@@@���1-|-~@@�������$List$iter���2-�-���2-�-�@�@@@��@��@@���#vif���3-�-���3-�-�@�@@@��@�����'network���4-�-���4-�-�@�@@@��������"Db#VIF+get_network���4-�-���4-�-�@�@@@���)__context�������4-�-���4-�-�@�@@@���$self����#vif���4-�.��4-�.@�@@@@�@@@@���4-�-�@@��������8get_local_underlying_pif���5.
.��5.
..@�@@@���)__context�������5.
.0��5.
.9@�@@@���'network������5.
.;�5.
.B@�@@@���$host������5.
.D�5.
.H@�@@@@�(@@@������$None��6.N.V�6.N.Z@@�@@@@����D��"7.^.h�#7.^.j@@�@@@������$Some��-8.k.s�.8.k.w@����#pif��58.k.x�68.k.{@�@@@�@@@@��@�����#pci��B9.�.��C9.�.�@�@@@��������"Db#PIF'get_PCI��Q9.�.��R9.�.�@�@@@���)__context������]9.�.��^9.�.�@�@@@���$self����#pif��j9.�.��k9.�.�@�@@@@�@@@@��o9.�.�@@���������&Pciops=reserve_free_virtual_function��|:.�.��}:.�.�@�@@@���)__context�������:.�.���:.�.�@�@@@��@����"vm���:.�.���:.�.�@�@@@��@����#pci���:.�.���:.�/@�@@@@�&@@@������$Some���;//��;//@����"vf���;//��;//@�@@@�@@@@��������"Db#VIF0set_reserved_pci���<//-��<//D@�@@@���)__context�������<//F��<//O@�@@@���$self����#vif���<//V��<//Y@�@@@���%value����"vf���<//a��<//c@�@@@@�*@@@������$None���=/d/p��=/d/t@@�@@@@������%raise���>/x/�� >/x/�@�@@@��@�  !�����*Api_errors��?/�/��?/�/�@�@@A@����,Server_error��@/�/��@/�/�@��������.internal_error��"A/�/��#A/�/�@�@@@�����
��+A/�/��,A/�0A�������>No free virtual function found@��6A/�0@@@�����ڰA@�A@@@�A@@��@A/�/�@@@@��BA/�/��CA/�0@��$@@@�1@@@�;�HB00"@@@@�K@@@@��K:.�.�@@@��M8.k.�NC0#0,@���	@@@@��R5.
.@@@�u@@@��U3-�-��VD0-02@���Y3-�-�@@@��@����$vifs��bE0307�cE030;@�@@@@��@@@��@@@��h0-O-vA@@��j0-O-pA@@��l0-O-e
A@@@��n0-O-O@@�@@