Caml1999M025����            ;ocaml/xapi/xha_statefile.ml����  Fc  ;  5�  3젠���1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	H Manage the lifecycle of HA statefiles
 * @group High Availability (HA)
@��;ocaml/xapi/xha_statefile.mlNGG�P��@@@@@������!D��
R���R��@�������%Debug$Make��R���R��@�@@�����@�����$name��%R���&R��@�@@@���-xha_statefile@��-R���.R��@@@@��0R��@@�@@��3R���4R��@@� �6R��@@@��8R��@�@��������!D��DT���ET��@�@@A��HT��@@�@���@�����&reason��TW/3�UW/9@�@@@���,HA statefile@��\W/<�]W/J@@@���)ocaml.doc��������	L Reason associated with the static VDI attach, to help identify these later @��kV���lV�.@@@@@@��nW//@@�@���@�����3statefile_sm_config��zZ���{Z��@�@@@����"::���Z����Z��A����������$type@���Z����Z��@@@����#raw@���Z����Z��@@@@���Z��@��@@@�����"[]�
"A@�#A@@@�%$A@@���Z��&@@@���LF�������	p CA-17239: special signal to the backend to give us a raw block device (not not a vhd format thing, for example @���YLL��YL�@@@@@Q@���Z��6@@�7@��������&Client���\����\��@�@@A���\��@@�@��������&Stdext���]� ��]�@�@@A���]��@@�@��������'Listext���^��^@�@@A���^@@�@��������*Xstringext���_��_#@�@@A���_@@�@���@�����,minimum_size��c���c��@�@@@��@�����"**��d���d��@�@@@�����%Int64#mul��d���d��@�@@@@�� d��@�����"++��(d���)d��@�@@@�����%Int64#add��3d���4d��@�@@@@��7d��@@��@�����3global_section_size��Ae���Be��@�@@@���$4096� L��Je���Ke��@@@@��Me��@�����1host_section_size��Uf���Vf�@�@@@���$4096� L��^f��_f�@@@@��af��@�����7maximum_number_of_hosts��ig�jg3@�@@@���"64� L��rg6�sg9@@@@��ug@@������"++��~h=S�h=U@�@@@��@����3global_section_size���h=?��h=R@�@@@��@������"**���h=o��h=q@�@@@��@����7maximum_number_of_hosts���h=W��h=n@�@@@��@����1host_section_size���h=r��h=�@�@@@@���h=V��h=�@��@@@@�,@@@�i@@@��@@@���YS�������	c Return the minimum size of an HA statefile, as of
    XenServer HA state-file description vsn 1.3 @���a%%��b[�@@@@@^@���c��@@�@���@�����<assert_sr_can_host_statefile���j����j��@�@@@�Đ)__context@������j����j��@�@@@�Đ"sr@������j����j��@�@@@�Đ-cluster_stack@������j����j��@�@@@��@�����$pbds���l��� l�@�@@@��������"Db"SR(get_PBDs��l��l�@�@@@���)__context������l��l�@�@@@���$self����"sr��'l�&�(l�(@�@@@@�@@@@��,l��@@��@�����/connected_hosts��6m,2�7m,A@�@@@�������$List&setify��CnDH�DnDS@�@@@��@�������$List#map��RnDU�SnD]@�@@@��@��@@���$self��^nDc�_nDg@�@@@��������"Db#PBD(get_host��mnDk�nnDz@�@@@���)__context������ynD|�znD�@�@@@���$self�������nD���nD�@�@@@@�@@@���nD^��nD�@����nD_	@@@��@����$pbds���nD���nD�@�@@@@���nDT��nD�@��M@@@@�]@@@@���m,.@@��@�����)all_hosts���p����p��@�@@@��������"Db$Host'get_all���p����p��@�@@@���)__context�������p����p��@�@@@@�@@@@���p��@@�  ��������!<���q����q��@�@@@��@�������$List&length���q����q��@�@@@��@����/connected_hosts���q����q��@�@@@@�@@@��@�������$List&length��q���q��@�@@@��@����)all_hosts��q���q� @�@@@@�@@@@�+@@@�  ������%error��r�r@�@@@��@���	>Cannot place statefile in SR %s: some hosts lack a PBD: [ %s ]@��&r�'rR@@@��@�������#Ref)string_of��4sSZ�5sSg@�@@@��@����"sr��?sSh�@sSj@�@@@@��CsSY�DsSk@��@@@��@�������&String&concat��Stls�Ttl�@�@@@��@���"; @��]tl��^tl�@@@��@�������$List#map��ku���lu��@�@@@��@�����#Ref)string_of��xu���yu��@�@@@��@�������$List.set_difference���u����u��@�@@@��@����)all_hosts���u����u��@�@@@��@����/connected_hosts���u����u��@�@@@@���u����u��@��@@@@���u����u��@��?@@@@���tlr��v��@��\@@@@��@@@������%raise���w����w��@�@@@��@�����*Api_errors,Server_error���w����w�@���������*Api_errors*sr_no_pbds���w���w�@�@@@�����Z���w���w�/A�����������#Ref)string_of���w�+@�@@@��@����"sr���w�,��w�.@�@@@@�@@@�����[�	#A@�
$A@@@�&%A@@��w�'@@@@��w��w�0@��6,@@@��
w���w�1@��I@@@@�W@@@��q��x25@���	@@@@��q��@@@�  �������$List$iter��"zbd�#zbm@�@@@��@��@@���$self��.{nw�/{n{@�@@@��������#not��;|��<|�@�@@@��@��������"Db#PBD6get_currently_attached��L|��M|�@�@@@���)__context������X|��Y|�@�@@@���$self������d|��e|�@�@@@@��h|��i|�@�� @@@@�2@@@�  ������%error��w}���x}��@�@@@��@���	6Cannot place statefile in SR %s: PBD %s is not plugged@���}����}�	
@@@��@�������#Ref)string_of���~		��~		#@�@@@��@����"sr���~		$��~		&@�@@@@���~		��~		'@��@@@��@�������#Ref)string_of���~		)��~		6@�@@@��@����$self���~		7��~		;@�@@@@���~		(��~		<@��@@@@�K@@@������%raise��� @	�	��� @	�	�@�@@@��@�����*Api_errors,Server_error��� A	�	��� A	�	�@���������*Api_errors*sr_no_pbds��� A	�	��� A	�	�@�@@@�����l��� A	�	��� A	�	�A�����������#Ref)string_of��� A	�	�@�@@@��@����"sr�� A	�	��	 A	�	�@�@@@@�@@@�����m�	#A@�
$A@@@�&%A@@�� A	�	�'@@@@�� A	�	�� A	�	�@��6,@@@�� A	�	�� A	�	�@��I@@@@�W@@@��"|��# B	�	�@���	@@@@��'|�@@@��){nr�* C	�
 @���-{ns@@@��@����$pbds��6 D

�7 D

	@�@@@@�@@@�  �������9Cluster_stack_constraints4assert_sr_compatible��F F
4
6�G F
4
d@�@@@���)__context������R F
4
f�S F
4
o@�@@@���-cluster_stack������^ F
4
q�_ F
4
~@�@@@���"sr������j F
4
��k F
4
�@�@@@@�(@@@��@�����&srtype��w H
�
��x H
�
�@�@@@��������"Db"SR(get_type��� H
�
��� H
�
�@�@@@���)__context������� H
�
��� H
�
�@�@@@���$self����"sr��� H
�
��� H
�
�@�@@@@�@@@@��� H
�
�@@�  !�����/Db_filter_types��� I
��� I
�@�@@A��� I
�
�@@����������"Db"SM:get_internal_records_where��� K"�� KB@�@@@���)__context������� KD�� KM@�@@@���$expr����"Eq��� LN[�� LN]@��������%Field��� LN_�� LNd@����$type@��� LNe�� LNk@@@�@@@�����'Literal��� LNm�� LNt@�����&srtype�� LNu� LN{@�@@@�@@@@�� LN^� LN|@��$@@@�� LNZ� LN}@��5@@@@�O@@@������"[]�� N��� N��@@�@@@@������%raise��# P���$ P��@�@@@��@�����*Api_errors,Server_error��0 Q���1 Q� @���������*Api_errors.internal_error��> R�? R'@�@@@�����Ű�G T7F�H W��A�������	(SR does not have corresponding SM record@��R T7p@@@�����װ�Y Uq�A�����������#Ref)string_of��h Uq�@�@@@��@����"sr��r Uq��s Uq�@�@@@@�@@@��������| V��5A��������&srtype��� V��@�@@@�������� W��HA@�IA@@@�JA@@�KA@@@�;LA@@�<MA@@@�ONA@@��� S(5P@@@@��� R�� X��@��_U@@@��� Q���� Y��@��r@@@@��@@@������"::��� Z���� Z��@��������@��� Z���� Z��@@@����"sm��� Z���� Z��@�@@@@��� Z���� Z��@��@@@��@��� Z���� Z��@@@@�
A@@�@@@@��������"&&��� ]9A�� ]9C@�@@@��@������#not��� \���� \��@�@@@��@�������$List)mem_assoc��� \���� \�@�@@@��@���3VDI_GENERATE_CONFIG@��� \��� \�@@@��@������"sm��	 \��
 \�@�@@@���*Db_actions+sM_features�� \� � \�6@�@@@@�� \��� \�7@��'@@@@�� \��� \�8@��;@@@��@������#not��) ]9D�* ]9G@�@@@��@�������$List)mem_assoc��8 ]9I�9 ]9W@�@@@��@���2VDI_ATTACH_OFFLINE@��B ]9X�C ]9l@@@��@������"sm��N ]9m�O ]9o@�@@@���*Db_actions+sM_features��W ]9p�X ]9�@�@@@@��[ ]9H�\ ]9�@��'@@@@�7@@@@�F@@@������%raise��i _���j _��@�@@@��@�����*Api_errors,Server_error��v `���w `��@���������*Api_errors:sr_operation_not_supported��� a���� a��@�@@@�������� a���� a�A�����������#Ref)string_of��� a�@�@@@��@����"sr��� a��� a�
@�@@@@�@@@������	#A@�
$A@@@�&%A@@��� a��'@@@@��� a���� a�@��6,@@@��� `���� b@��I@@@@�W@@@@��� [��@@@@��� J@@@��� I
�
�
@@@�#@@@��@@@��@@@��@@@� @@@�+@@@��@@@���j��A@@���j��A@@���j��A@@@���j��@@�@���@�����	!list_srs_which_can_host_statefile��� d�� d?@�@@@�Đ)__context@������ dA�� dJ@�@@@�Đ-cluster_stack@������ dL�� dY@�@@@�������$List&filter�� e\^� e\i@�@@@��@��@@���"sr�� fjs� fju@�@@@���  ������<assert_sr_can_host_statefile�� h��� h��@�@@@���)__context������* h���+ h��@�@@@���"sr������6 h���7 h��@�@@@���-cluster_stack������B h���C h��@�@@@@�(@@@����$true��L i���M i��@@�@@@�2@@@���@��T j���U j��@@@@����%false��\ j���] j��@@�@@@@��` gy@@@��b fjn�c k��@���f fjo
@@@��@��������"Db"SR'get_all��u l���v l�@�@@@���)__context������� l��� l�@�@@@@��� l���� l�@��@@@@��@@@��� dKA@@��� d@A@@@��� d
@@�@���@�����&create��� n�� n@�@@@�Đ)__context@������ n�� n&@�@@@�Đ"sr@������ n(�� n*@�@@@�Đ-cluster_stack@������ n,�� n9@�@@@�  ������<assert_sr_can_host_statefile��� o<>�� o<Z@�@@@���)__context������� o<\�� o<e@�@@@���"sr������� o<g�� o<i@�@@@���-cluster_stack������� o<k�� o<x@�@@@@�(@@@��@�����$size��� p{��� p{�@�@@@����,minimum_size��	 p{��	 p{�@�@@@@��	 p{}@@�������'Helpers2call_api_functions��	 q���	 q��@�@@@���)__context������	 q���	 q��@�@@@��@��@@���#rpc��	* q���	+ q��@�@@@��@@���*session_id��	4 q���	5 q��@�@@@��������&Client#VDI&create��	C r���	D r��@�@@@���#rpc������	O r���	P r��@�@@@���*session_id������	[ r���	\ r��@�@@@���*name_label���0Statefile for HA@��	g r��	h r�@@@���0name_description���=Used for storage heartbeating@��	r s9�	s sX@@@���"sR����"sr��	~ s]�	 s_@�@@@���,virtual_size����$size��	� t`v�	� t`z@�@@@���%_type��,ha_statefile@��	� t`��	� t`�@@@���(sharable����V��	� t`��	� t`�@@�@@@���)read_only����R��	� t`��	� t`�@@�@@@���,other_config�������	� u���	� u��@@�@@@���-xenstore_data�������	� u���	� u��@@�@@@���)sm_config����3statefile_sm_config��	� u���	� u��@�@@@���$tags����ǰ�	� v��	� v�
@@�@@@@��@@@��A@@��	� q���	� w@���	� q��
@@@@��@@@��@@@�#@@@��	� n+	A@@��	� n'A@@��	� nA@@@��	� n@@�@���@�����.find_or_create��	� ~���
  ~��@�@@@�Đ)__context@�����

 ~���
 ~��@�@@@�Đ"sr@�����
 ~���
 ~��@�@@@�Đ-cluster_stack@�����
  ~���
! ~��@�@@@�  ������<assert_sr_can_host_statefile��
- ���
. ��@�@@@���)__context������
9 ���
: ��@�@@@���"sr������
E ���
F ��@�@@@���-cluster_stack������
Q ���
R ��@�@@@@�(@@@��@�����$size��
^ ��
_ �@�@@@����,minimum_size��
g ��
h �@�@@@@��
k �@@���������$List&filter��
x �'+�
y �'6@�@@@��@��@@���$self��
� �7B�
� �7F@�@@@���������
� �W_�
� �Wa@�@@@��@����M��
� �JR�
� �JV@@�@@@��@������ΰ�
� ����
� ���@�@@@��@������!=��
� �W��
� �W�@�@@@��@��������"Db#VDI(get_type��
� �Wb�
� �Wq@�@@@���)__context������
� �Ws�
� �W|@�@@@���$self������
� �W~�
� �W�@�@@@@�@@@��@��,ha_statefile@��
� �W��
� �W�@@@@�%@@@��@������">=��
� ����
� ���@�@@@��@��������"Db#VDI0get_virtual_size�� ���� ���@�@@@���)__context������ ���� ���@�@@@���$self������ ���� ���@�@@@@�@@@��@����$size��& ����' ���@�@@@@�(@@@@�i@@@@��@@@��- �7=�. ���@���1 �7>@@@��@��������"Db"SR(get_VDIs��@ ����A ���@�@@@���)__context������L ����M ���@�@@@���$self����"sr��Y ����Z �� @�@@@@��] ����^ ��@��!@@@@��@@@���������i �	�j �	@�������!x��t �	�u �	@�@@@��@��z �	�{ �	@@@@�	A@@�
@@@@�  ������$info��� ��� �!@�@@@��@���?re-using existing statefile: %s@��� �"�� �C@@@��@��������"Db#VDI(get_uuid��� �E�� �T@�@@@���)__context������� �V�� �_@�@@@���$self����!x��� �f�� �g@�@@@@��� �D�� �h@��!@@@@�<@@@����!x��� �kq�� �kr@�@@@�F@@@���������� �sw�� �sy@@�@@@@�  ������$info��� �}��� �}�@�@@@��@���	:no suitable existing statefile found; creating a fresh one@��� �}��� �}�@@@@�@@@������&create��� ����� ���@�@@@���)__context������ ���� ���@�@@@���"sr������ ���� ���@�@@@���-cluster_stack������ ���� ���@�@@@@�(@@@�>@@@@��! �!@@@��@@@��@@@��% ~��
A@@��' ~��A@@��) ~��A@@����Ɛ������
  z Return a reference to a valid statefile VDI in the given SR.
    This function prefers to reuse existing VDIs to avoid confusing the heartbeat component:
    it expects to see a poisoned VDI but not necessarily a stale or corrupted one. Consider that
    when using LVM-based SRs the VDI could be deleted on the master but the slaves would still
    have access to stale data. @��6 y�7 }n�@@@@@�@��9 ~��@@�@���@�����8list_existing_statefiles��E ����F ��@�@@@��@@����"()��P ���Q ��@@�@@@�������$List&filter��] ��^ �"@�@@@��@��@@���!x��i �(�j �)@�@@@������ð�s �B�t �C@�@@@��@������!x��� �-�� �.@�@@@���+Static_vdis&reason��� �/�� �A@�@@@��@����&reason��� �D�� �J@�@@@@�@@@��� �#�� �K@���� �$	@@@��@�������+Static_vdis$list��� �M�� �]@�@@@��@����e��� �^�� �`@@�@@@@��� �L�� �a@��@@@@�`@@@�nA@@@��� ���@@�@���@�����:detach_existing_statefiles��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@��@�����/statefile_uuids��� ����� ���@�@@@�������$List#map��� ���� ��
@�@@@��@��@@���#vdi��� ���� ��@�@@@������#vdi�� ��� ��@�@@@���+Static_vdis$uuid�� ��� ��+@�@@@�� ��� ��,@��� ��@@@��@������8list_existing_statefiles��" ��.�# ��F@�@@@��@����ݰ�, ��G�- ��I@@�@@@@��0 ��-�1 ��J@��@@@@�F@@@@��6 ���@@�������$List$iter��A �PR�B �P[@�@@@��@��@@���$uuid��M �\e�N �\i@�@@@�������+Static_vdis<permanent_vdi_detach_by_uuid��Z �\m�[ �\�@�@@@���)__context������f �\��g �\�@�@@@���$uuid������r �\��s �\�@�@@@@�@@@��w �\`�x �\�@���{ �\a	@@@��@����/statefile_uuids��� ����� ���@�@@@@�G@@@�S@@@��� ���A@@���-'�������	Q Detach all statefiles attached with reason 'HA statefile', to clear stale state @��� �cc�� �c�@@@@@2@��� ���@@�@@