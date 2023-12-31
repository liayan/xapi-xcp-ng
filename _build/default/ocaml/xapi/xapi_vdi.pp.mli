Caml1999N025����            7ocaml/xapi/xapi_vdi.mli����  oI    S�  QM�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	N Module that defines API functions for VDI objects
 * @group XenAPI functions
@��7ocaml/xapi/xapi_vdi.mliOCC�Q��@@@@@����Р5check_operation_error��
V.2�V.G@���)__context�����'Context!t��WJY�WJb@@�@@@���*sr_records����$list��%Xcw�&Xc{@���!a��,Xct�-Xcv@@@@�	@@@���+pbd_records����$list��9Y|��:Y|�@����������#API#Ref!t��IY|��JY|�@���!b��PY|��QY|�@@@@�	@@@������#API%pBD_t��\Y|��]Y|�@@�@@@@�@@@@��aY|�(@@@���+vbd_records����$list��lZ���mZ��@����������#API#Ref!t��|Z���}Z��@���!c���Z����Z��@@@@�	@@@������*Db_actions%vBD_t���Z����Z��@@�@@@@�@@@@���Z��(@@@��@����$bool���[����[��@@�@@@��@�����*Db_actions%vDI_t���\����\�@@�@@@��@�����#API'ref_VDI���]��]@@�@@@��@�����#API.vdi_operations���^��^/@@�@@@����&option���_0L��_0R@��������&string���_06��_0<@@�@@@�����$list���_0F��_0J@�����&string���_0?��_0E@@�@@@@�@@@@�@@@@���_05%@@@�0&@@@�>'@@@�L(@@@�Z)@@@���Z��+@@@���Y|�-@@@���Xch/@@@���WJO1@@@@���)ocaml.doc��������	w Checks to see if an operation is valid in this state. Returns Some exception
    if not and None if everything is ok. @��`SS�a��@@@@@�@��V..B@�C@���Р6assert_operation_valid��c���c��@���)__context�����'Context!t��&d���'d�@@�@@@���$self������#API#Ref!t��7d��8d�@�������#VDI��Bd��Cd�@A@�@@@@@��Fd��Gd�@@@@�@@@���"op�����#API.vdi_operations��Ud�#�Vd�5@@�@@@����$unit��^d�9�_d�=@@�@@@��bd� @@@��dd�@@@��fd��@@@@@��hc��
@�@���Р	"update_allowed_operations_internal��qf?C�rf?e@���)__context�����'Context!t��ghw��gh�@@�@@@���$self������#API#Ref!t���h����h��@�������#VDI���h����h��@A@�@@@@@���h����h��@@@@�@@@���*sr_records����$list���i����i��@���!a���i����i��@@@@�	@@@���+pbd_records����$list���j����j��@����������#API#Ref!t���j����j��@���!b���j����j��@@@@�	@@@������#API%pBD_t���j����j��@@�@@@@�@@@@���j��(@@@���+vbd_records����$list���k���k�@����������#API#Ref!t��k���k�@���!c��
k���k��@@@@�	@@@������*Db_actions%vBD_t��k��k�@@�@@@@�@@@@��k��(@@@��@����$unit��$l#�%l'@@�@@@����$unit��-m(-�.m(1@@�@@@�@@@��2k��@@@��4j��@@@��6i��	@@@��8h��@@@��:ghm@@@@@��<f??@�@���Р9update_allowed_operations��Eo37�Fo3P@���)__context�����'Context!t��SpS_�TpSh@@�@@@���$self������#API#Ref!t��dpSx�epS�@�������#VDI��opSr�ppSv@A@�@@@@@��spSq�tpSw@@@@�@@@����$unit��|pS��}pS�@@�@@@���pSl@@@���pSU@@@@@���o33@�	@���Р,cancel_tasks���r����r��@���)__context�����'Context!t���s����s��@@�@@@���$self������#API#Ref!t���t����t��@�������#VDI���t����t��@A@�@@@@@���t����t��@@@@�@@@���/all_tasks_in_db����$list���u����u��@������#Ref!t���u����u��@���!a���u����u��@@@@�	@@@@�@@@���(task_ids����$list���v�
��v�@�����&string���v���v�	@@�@@@@�@@@����$unit���w��w@@�@@@���v��@@@��u��@@@��t��@@@��s��
@@@@@��r��@�@���Р&create��y�y$@���)__context�����'Context!t��z'6�z'?@@�@@@���*name_label����&string��+{@P�,{@V@@�@@@���0name_description����&string��8|Wm�9|Ws@@�@@@���"sR������#API#Ref!t��I}t��J}t�@�������"SR��T}t}�U}t�@A@�@@@@@��X}t|�Y}t�@@@@�@@@���,virtual_size����%int64��e~���f~��@@�@@@���%_type�����#API(vdi_type��t���u��@@�@@@���(sharable����$bool��� @���� @��@@�@@@���)read_only����$bool��� A���� A��@@�@@@���,other_config����$list��� B��� B�@��������&string��� B���� B��@@�@@@�����&string��� B���� B�@@�@@@@�@@@@��� B��@@@���-xenstore_data����$list��� C1�� C5@��������&string��� C �� C&@@�@@@�����&string��� C)�� C/@@�@@@@�@@@@��� C@@@���)sm_config����$list��� D6W�� D6[@��������&string��� D6F�� D6L@@�@@@�����&string��� D6O�� D6U@@�@@@@�@@@@�� D6E@@@���$tags����$list�� E\m� E\q@�����&string�� E\f� E\l@@�@@@@�@@@������#API#Ref!t��$ Fr~�% Fr�@�������#VDI��/ Frx�0 Fr|@A@�@@@@@��3 Frw�4 Fr}@@@@�@@@��7 E\a@@@��9 D6;@@@��; C@@@��= B��@@@��? A��@@@��A @��@@@��C��@@@��E~��!@@@��G}ty#@@@��I|W\%@@@��K{@E'@@@��Mz',)@@@@@��Oy+@�,@���Р.pool_introduce��X H���Y H��@���)__context�����'Context!t��f I���g I��@@�@@@���$uuid����&string��s J���t J��@@�@@@���*name_label����&string��� K���� K��@@�@@@���0name_description����&string��� L���� L��@@�@@@���"sR������#API#Ref!t��� M�	
�� M�	@�������"SR��� M�	�� M�	@A@�@@@@@��� M�	�� M�		@@@@�@@@���%_type�����#API(vdi_type��� N		�� N		+@@�@@@���(sharable����$bool��� O	,	:�� O	,	>@@�@@@���)read_only����$bool��� P	?	N�� P	?	R@@�@@@���,other_config����$list��� Q	S	w�� Q	S	{@��������&string��� Q	S	f�� Q	S	l@@�@@@�����&string��� Q	S	o�� Q	S	u@@�@@@@�@@@@��� Q	S	e@@@���(location����&string��	 R	|	��
 R	|	�@@�@@@���-xenstore_data����$list�� S	�	�� S	�	�@��������&string��" S	�	��# S	�	�@@�@@@�����&string��, S	�	��- S	�	�@@�@@@@�@@@@��1 S	�	�@@@���)sm_config����$list��< T	�	��= T	�	�@��������&string��H T	�	��I T	�	�@@�@@@�����&string��R T	�	��S T	�	�@@�@@@@�@@@@��W T	�	�@@@���'managed����$bool��b U	�	��c U	�	�@@�@@@���,virtual_size����%int64��o V	�
�p V	�

@@�@@@���4physical_utilisation����%int64��| W

%�} W

*@@�@@@���0metadata_of_pool������#API#Ref!t��� X
+
I�� X
+
R@�������$pool��� X
+
B�� X
+
G@A@�@@@@@��� X
+
A�� X
+
H@@@@�@@@���-is_a_snapshot����$bool��� Y
S
f�� Y
S
j@@�@@@���-snapshot_time������#API$Date'iso8601��� Z
k
~�� Z
k
�@@�@@@���+snapshot_of������#API#Ref!t��� [
�
��� [
�
�@�������#VDI��� [
�
��� [
�
�@A@�@@@@@��� [
�
��� [
�
�@@@@�@@@���+cbt_enabled����$bool��� \
�
��� \
�
�@@�@@@�����#Ref!t��� ]
�
��� ]
�
�@�������#VDI��� ]
�
��� ]
�
�@A@�@@@@@�� ]
�
�� ]
�
�@@@@�@@@�� \
�
�@@@�� [
�
�@@@��	 Z
k
p@@@�� Y
S
X@@@�� X
+
0@@@�� W

@@@�� V	�	�@@@�� U	�	�!@@@�� T	�	�#@@@�� S	�	�%@@@�� R	|	�'@@@�� Q	S	X)@@@�� P	?	D+@@@�� O	,	1-@@@��! N		/@@@��# M�	1@@@��% L��3@@@��' K��5@@@��) J��7@@@��+ I��9@@@@@��- H��;@�<@���Р,db_introduce��6 _
�
��7 _
�
�@���)__context�����'Context!t��D `
�
��E `
�@@�@@@���$uuid����&string��Q a�R a@@�@@@���*name_label����&string��^ b'�_ b-@@�@@@���0name_description����&string��k c.D�l c.J@@�@@@���"sR������#API#Ref!t��| dKY�} dKb@�������"SR��� dKT�� dKW@A@�@@@@@��� dKS�� dKX@@@@�@@@���%_type�����#API(vdi_type��� ecn�� ecz@@�@@@���(sharable����$bool��� f{��� f{�@@�@@@���)read_only����$bool��� g���� g��@@�@@@���,other_config����$list��� h���� h��@��������&string��� h���� h��@@�@@@�����&string��� h���� h��@@�@@@@�@@@@��� h��@@@���(location����&string��� i���� i��@@�@@@���-xenstore_data����$list��� j��� j�	@��������&string��  j��� j��@@�@@@�����&string��
 j��� j�@@�@@@@�@@@@�� j��@@@���)sm_config����$list�� k
+� k
/@��������&string��& k
�' k
 @@�@@@�����&string��0 k
#�1 k
)@@�@@@@�@@@@��5 k
@@@���'managed����$bool��@ l0=�A l0A@@�@@@���,virtual_size����%int64��M mBT�N mBY@@�@@@���4physical_utilisation����%int64��Z nZt�[ nZy@@�@@@���0metadata_of_pool������#API#Ref!t��k oz��l oz�@�������$pool��v oz��w oz�@A@�@@@@@��z oz��{ oz�@@@@�@@@���-is_a_snapshot����$bool��� p���� p��@@�@@@���-snapshot_time������#API$Date'iso8601��� q���� q��@@�@@@���+snapshot_of������#API#Ref!t��� r���� r��@�������#VDI��� r���� r��@A@�@@@@@��� r���� r��@@@@�@@@���+cbt_enabled����$bool��� s �� s @@�@@@�����#Ref!t��� t"�� t'@�������#VDI��� t�� t @A@�@@@@@��� t�� t!@@@@�@@@��� s @@@��� r��@@@��� q��@@@��� p��@@@��� oz@@@��� nZ_@@@��� mBG@@@��� l05!@@@��� k
#@@@��� j��%@@@��� i��'@@@��� h��)@@@��� g��+@@@��� f{�-@@@��� ech/@@@�� dKP1@@@�� c.33@@@�� b5@@@�� a7@@@��	 `
�
�9@@@@@�� _
�
�;@�<@���Р)db_forget�� v)-� v)6@���)__context�����'Context!t��" v)C�# v)L@@�@@@���#vdi������#API#Ref!t��3 v)[�4 v)d@�������#VDI��> v)U�? v)Y@A@�@@@@@��B v)T�C v)Z@@@@�@@@����$unit��K v)h�L v)l@@�@@@��O v)P@@@��Q v)9@@@@@��S v))@�	@���Р)introduce��\ xnr�] xn{@���)__context�����'Context!t��j y~��k y~�@@�@@@���$uuid����&string��w z���x z��@@�@@@���*name_label����&string��� {���� {��@@�@@@���0name_description����&string��� |���� |��@@�@@@���"sR������#API#Ref!t��� }���� }��@�������"SR��� }���� }��@A@�@@@@@��� }���� }��@@@@�@@@���%_type�����#API(vdi_type��� ~���� ~�@@�@@@���(sharable����$bool��� �� @@�@@@���)read_only��!a��� �.�� �0@@@���,other_config����$list��� �1U�� �1Y@��������&string��� �1D�� �1J@@�@@@�����&string��� �1M�� �1S@@�@@@@�@@@@��� �1C@@@���(location����&string��	
 �Zh�	 �Zn@@�@@@���-xenstore_data����$list��	 �o��	 �o�@��������&string��	# �o��	$ �o�@@�@@@�����&string��	- �o��	. �o�@@�@@@@�@@@@��	2 �o�@@@���)sm_config����$list��	= ����	> ���@��������&string��	I ����	J ���@@�@@@�����&string��	S ����	T ���@@�@@@@�@@@@��	X ���@@@���'managed��!b��	a ����	b ���@@@���,virtual_size��!c��	k ����	l ���@@@���4physical_utilisation��!d��	u ����	v �� @@@���0metadata_of_pool��!e��	 ��	� �@@@���-is_a_snapshot��!f��	� �-�	� �/@@@���-snapshot_time��!g��	� �0C�	� �0E@@@���+snapshot_of��!h��	� �FW�	� �FY@@@������#API#Ref!t��	� �Zf�	� �Zo@�������#VDI��	� �Z`�	� �Zd@A@�@@@@@��	� �Z_�	� �Ze@@@@�@@@��	� �FK@@@��	� �05@@@��	� �@@@��	� �@@@��	� ���@@@��	� ���@@@��	� ���@@@��	� ���!@@@��	� �ot#@@@��	� �Z_%@@@��	� �16'@@@��	� �$)@@@��	� +@@@��	� ~��-@@@��	� }��/@@@��	� |��1@@@��	� {��3@@@��	� z��5@@@��	� y~�7@@@@@��	� xnn9@�:@���Р&update��	� �qu�	� �q{@���)__context�����'Context!t��	� �q��	� �q�@@�@@@���#vdi������#API#Ref!t��

 �q��
 �q�@�������#VDI��
 �q��
 �q�@A@�@@@@@��
 �q��
 �q�@@@@�@@@����$unit��
" �q��
# �q�@@�@@@��
& �q�@@@��
( �q~@@@@@��
* �qq@�	@���Р&forget��
3 ����
4 ���@���)__context�����'Context!t��
A ����
B ���@@�@@@���#vdi������#API#Ref!t��
R ����
S ���@�������#VDI��
] ����
^ ���@A@�@@@@@��
a ����
b ���@@@@�@@@����$unit��
j ����
k ���@@�@@@��
n ���@@@��
p ���@@@@@��
r ���@�	@���Р(snapshot��
{ ����
| ��@���)__context�����'Context!t��
� ��
� �@@�@@@���#vdi������#API#Ref!t��
� �-�
� �6@�������#VDI��
� �'�
� �+@A@�@@@@@��
� �&�
� �,@@@@�@@@���-driver_params����$list��
� �7\�
� �7`@��������&string��
� �7K�
� �7Q@@�@@@�����&string��
� �7T�
� �7Z@@�@@@@�@@@@��
� �7J@@@������#API#Ref!t��
� �am�
� �av@�������#VDI��
� �ag�
� �ak@A@�@@@@@��
� �af�
� �al@@@@�@@@��
� �7<@@@��
� �"@@@��
� �	@@@@���	���������	� driver_params is the storage-backend-specific parameters that are used to drive the
    snapshot operation (e.g. vmhint for NetAPP)
@��  �ww� ��@@@@@�@�� ���'@�(@���Р'destroy�� �� �@���)__context�����'Context!t�� �� �$@@�@@@���$self������#API#Ref!t��+ �4�, �=@�������#VDI��6 �.�7 �2@A@�@@@@@��: �-�; �3@@@@�@@@����$unit��C �A�D �E@@�@@@��G �(@@@��I �@@@@@��K �@�	@���Р,data_destroy��T �GK�U �GW@���)__context�����'Context!t��b �Gd�c �Gm@@�@@@���$self������#API#Ref!t��s �G}�t �G�@�������#VDI��~ �Gw� �G{@A@�@@@@@��� �Gv�� �G|@@@@�@@@����$unit��� �G��� �G�@@�@@@��� �Gq@@@��� �GZ@@@@@��� �GG@�	@���Р-_data_destroy��� ����� ���@���)__context�����'Context!t��� ����� ���@@�@@@���$self������#API#Ref!t��� ����� ���@�������#VDI��� ����� ���@A@�@@@@@��� ����� ���@@@@�@@@���'timeout����%float��� ����� ���@@�@@@����$unit��� ����� ���@@�@@@��� ���@@@��� ���@@@��� ���@@@@���
���������	� This version of {!data_destroy} is for unit testing purposes: the timeout
    for waiting for the VDI's VBDs to disappear is configurable to enable faster
    unit tests. @��� ����� ���@@@@@�@��� ���@�@���Р&resize�� ���� ���@���)__context�����'Context!t�� ���� ���@@�@@@���#vdi������#API#Ref!t��  ����! ���@�������#VDI��+ ����, ���@A@�@@@@@��/ ����0 ���@@@@�@@@���$size����%int64��< ����= ���@@�@@@����$unit��E ����F ���@@�@@@��I ���@@@��K ���@@@��M ���@@@@@��O ���
@�@���Р/generate_config��X ����Y ��@���)__context�����'Context!t��f ��g �@@�@@@���$host��!a��q �#�r �%@@@���#vdi������#API#Ref!t��� �4�� �=@�������#VDI��� �.�� �2@A@�@@@@@��� �-�� �3@@@@�@@@����&string��� �A�� �G@@�@@@��� �)@@@��� �@@@��� �@@@@@��� ���
@�@���Р%clone��� �IM�� �IR@���)__context�����'Context!t��� �Ud�� �Um@@�@@@���#vdi������#API#Ref!t��� �n~�� �n�@�������#VDI��� �nx�� �n|@A@�@@@@@��� �nw�� �n}@@@@�@@@���-driver_params����$list��� ����� ���@��������&string��� ����� ���@@�@@@�����&string��� ����� ���@@�@@@@�@@@@�� ���@@@������#API#Ref!t�� ���� ���@�������#VDI�� ���� ���@A@�@@@@@�� ���� ���@@@@�@@@��  ���@@@��" �ns@@@��$ �UZ@@@@@��& �II@�@���Р$copy��/ ����0 ���@���)__context�����'Context!t��= ����> ���@@�@@@���#vdi������#API#Ref!t��N ����O ��@�������#VDI��Y ����Z ���@A@�@@@@@��] ����^ ���@@@@�@@@���"sr�����#Ref!t��l ��m �@�������"SR��w ��x �@A@�@@@@�@��| ��} �@@@@�@@@���(base_vdi�����#API'ref_VDI��� �+�� �6@@�@@@���(into_vdi������&Client"Id!t��� �7V�� �7a@�������#API#Ref!t��� �7L�� �7U@�������#VDI��� �7F�� �7J@A@�@@@@@��� �7E�� �7K@@@@�@@@@�@@@������&Client"Id!t��� �bx�� �b�@�������#API#Ref!t��� �bn�� �bw@�������#VDI��� �bh�� �bl@A@�@@@@@��� �bg�� �bm@@@@�@@@@�@@@��� �7<!@@@��� �"#@@@��� �%@@@��� ���'@@@��� ���)@@@@@��� ���+@�,@���Р,force_unlock��� ����� ���@���)__context��!a�� ���� ���@@@���#vdi��!b�� ���� ���@@@��!c�� ���� ���@@@�� ���@@@�� ���@@@@@�� ���@�@���Р,set_sharable��$ ����% ���@���)__context�����'Context!t��2 ����3 ���@@�@@@���$self������#API#Ref!t��C ����D ���@�������#VDI��N ����O ���@A@�@@@@@��R ����S ���@@@@�@@@���%value����$bool��_ ���` ��@@�@@@����$unit��h ��	�i ��@@�@@@��l ���@@@��n ���@@@��p ���@@@@@��r ���
@�@���Р+set_managed��{ ��| �@���)__context�����'Context!t��� �!-�� �!6@@�@@@���$self������#API#Ref!t��� �!F�� �!O@�������#VDI��� �!@�� �!D@A@�@@@@@��� �!?�� �!E@@@@�@@@���%value����$bool��� �!Y�� �!]@@�@@@����$unit��� �!a�� �!e@@�@@@��� �!S@@@��� �!:@@@��� �!#@@@@@��� �
@�@���Р-set_read_only��� �gk�� �gx@���)__context�����'Context!t��� �{��� �{�@@�@@@���$self������#API#Ref!t��� �{��� �{�@�������#VDI��� �{��� �{�@A@�@@@@@��  �{�� �{�@@@@�@@@���%value����$bool�� �{�� �{�@@�@@@����$unit�� �{�� �{�@@�@@@�� �{�@@@�� �{�@@@�� �{}@@@@@��  �gg
@�@���Р+set_missing��) ����* ���@���)__context�����'Context!t��7 ����8 ���@@�@@@���$self������#API#Ref!t��H ����I ��@�������#VDI��S ����T ���@A@�@@@@@��W ����X ���@@@@�@@@���%value����$bool��d ���e ��@@�@@@����$unit��m ���n ��@@�@@@��q ��@@@��s ���@@@��u ���@@@@@��w ���
@�@���Р0set_virtual_size��� ��� �-@���)__context�����'Context!t��� �0<�� �0E@@�@@@���$self������#API#Ref!t��� �0U�� �0^@�������#VDI��� �0O�� �0S@A@�@@@@@��� �0N�� �0T@@@@�@@@���%value����%int64��� �0h�� �0m@@�@@@����$unit��� �0q�� �0u@@�@@@��� �0b@@@��� �0I@@@��� �02@@@@@��� �
@�@���Р8set_physical_utilisation��� �w{�� �w�@���)__context�����'Context!t��� ����� ���@@�@@@���$self������#API#Ref!t��� ����� ���@�������#VDI�� ���� ���@A@�@@@@@�� ���� ���@@@@�@@@���%value����%int64�� ���� ���@@�@@@����$unit�� ���� ���@@�@@@�� ���@@@��! ���@@@��# ���@@@@@��% �ww
@�@���Р1set_is_a_snapshot��. ����/ ���@���)__context�����'Context!t��< ���= ��
@@�@@@���$self������#API#Ref!t��M ���N ��#@�������#VDI��X ���Y ��@A@�@@@@@��\ ���] ��@@@@�@@@���%value����$bool��i ��-�j ��1@@�@@@����$unit��r ��5�s ��9@@�@@@��v ��'@@@��x ��@@@��z ���@@@@@��| ���
@�@���Р/set_snapshot_of��� �;?�� �;N@���)__context�����'Context!t��� �Q]�� �Qf@@�@@@���$self������#API#Ref!t��� �Qv�� �Q@�������#VDI��� �Qp�� �Qt@A@�@@@@@��� �Qo�� �Qu@@@@�@@@���%value������#API#Ref!t��� �Q��� �Q�@�������#VDI��� �Q��� �Q�@A@�@@@@@��� �Q��� �Q�@@@@�@@@����$unit��� �Q��� �Q�@@�@@@��� �Q�@@@��� �Qj@@@��� �QS@@@@@��� �;;
@�@���Р1set_snapshot_time��� ����� ���@���)__context�����'Context!t��� ����� ���@@�@@@���$self������#API#Ref!t�� ���� ���@�������#VDI�� ���� ���@A@�@@@@@�� ���� ���@@@@�@@@���%value������#API$Date'iso8601��. ����/ ��@@�@@@����$unit��7 ���8 ��@@�@@@��; ���@@@��= ���@@@��? ���@@@@@��A ���
@�@���Р4set_metadata_of_pool��J ��K �%@���)__context�����'Context!t��X �(7�Y �(@@@�@@@���$self������#API#Ref!t��i �AR�j �A[@�������#VDI��t �AL�u �AP@A@�@@@@@��x �AK�y �AQ@@@@�@@@���%value������#API#Ref!t��� �\o�� �\x@�������$pool��� �\h�� �\m@A@�@@@@@��� �\g�� �\n@@@@�@@@����$unit��� �y~�� �y�@@�@@@��� �\a@@@��� �AF@@@��� �(-@@@@@��� �
@�@���Р+set_on_boot��� ����� ���@���)__context�����'Context!t��� ����� ���@@�@@@���$self������#API#Ref!t��� ����� ���@�������#VDI��� ����� ���@A@�@@@@@��� ����� ���@@@@�@@@���%value�����#API'on_boot��� ����� ���@@�@@@����$unit��� ����� ���@@�@@@��� ���@@@��  ���@@@�� ���@@@@@�� ���
@�@���Р1set_allow_caching�� ���� ���@���)__context�����'Context!t�� ��� ��@@�@@@���$self������#API#Ref!t��, �� �- ��)@�������#VDI��7 ���8 ��@A@�@@@@@��; ���< ��@@@@�@@@���%value����$bool��H ��3�I ��7@@�@@@����$unit��Q ��;�R ��?@@�@@@��U ��-@@@��W ��@@@��Y ���@@@@@��[ ���
@�@���Р.set_name_label��d �AE�e �AS@���)__context�����'Context!t��r �Vb�s �Vk@@�@@@���$self������#API#Ref!t��� �V{�� �V�@�������#VDI��� �Vu�� �Vy@A@�@@@@@��� �Vt�� �Vz@@@@�@@@���%value����&string��� �V��� �V�@@�@@@����$unit��� �V��� �V�@@�@@@��� �V�@@@��� �Vo@@@��� �VX@@@@@��� �AA
@�@���Р4set_name_description��� ����� ���@���)__context�����'Context!t��� ����� ���@@�@@@���$self������#API#Ref!t��� ����� ���@�������#VDI��� ����� ���@A@�@@@@@��� ����� ���@@@@�@@@���%value����&string��� ����� ���@@�@@@����$unit��� ����  ���@@�@@@�� ���@@@�� ���@@@�� ���@@@@@��	 ���
@�@���Р(checksum�� �� �@���)__context�����'Context!t��  ��! �#@@�@@@���$self�����#API'ref_VDI��/ �,�0 �7@@�@@@����&string��8 �;�9 �A@@�@@@��< �'@@@��> �@@@@@��@ �@�	@���Р-open_database��I �CG�J �CT@���)__context�����'Context!t��W �Wc�X �Wl@@�@@@���$self������#API#Ref!t��h �W|�i �W�@�������#VDI��s �Wv�t �Wz@A@�@@@@@��w �Wu�x �W{@@@@�@@@�����#API+ref_session��� �W��� �W�@@�@@@��� �Wp@@@��� �WY@@@@����%�������	" Open a foreign database on a VDI @��� ����� ���@@@@@0@��� �CC@�@���Р7read_database_pool_uuid��� ����� ���@���)__context��!a��� ����� ���@@@���$self�����#API'ref_VDI��� ����� �� @@�@@@����&string��� ���� ��
@@�@@@��� ���@@@��� ���@@@@@��� ���@�	@���Р*enable_cbt��� ��� �@���)__context�����'Context!t��� �'�� �0@@�@@@���$self�����#API'ref_VDI��� �9�� �D@@�@@@����$unit��� �H�� �L@@�@@@��� �4@@@��� �@@@@@�� �@�	@���Р+disable_cbt��
 �NR� �N]@���)__context�����'Context!t�� �Nj� �Ns@@�@@@���$self�����#API'ref_VDI��' �N|�( �N�@@�@@@����$unit��0 �N��1 �N�@@�@@@��4 �Nw@@@��6 �N`@@@@@��8 �NN@�	@���Р/set_cbt_enabled��A ����B ���@���)__context�����'Context!t��O ����P ���@@�@@@���$self�����#API'ref_VDI��^ ����_ ���@@�@@@���%value����$bool��k ����l ���@@�@@@����$unit��t ����u ���@@�@@@��x ���@@@��z ���@@@��| ���@@@@@��~ ���
@�@���Р3list_changed_blocks��� ����� ���@���)__context�����'Context!t��� ��� �@@�@@@���(vdi_from�����#API'ref_VDI��� �$�� �/@@�@@@���&vdi_to�����#API'ref_VDI��� �:�� �E@@�@@@����&string��� �I�� �O@@�@@@��� �3@@@��� �@@@��� �@@@@@��� ���
@�@���Р,get_nbd_info��� �QU�� �Qa@���)__context�����'Context!t��� �dp�� �dy@@�@@@���$self�����#API'ref_VDI��� �d��� �d�@@�@@@�����#API9vdi_nbd_server_info_t_set��� �d��� �d�@@�@@@��� �d}@@@��� �df@@@@@��� �QQ@�	@���Р-_get_nbd_info�� ����	 ���@���)__context�����'Context!t�� ���� ���@@�@@@���$self�����#API'ref_VDI��% ����& ���@@�@@@���6get_server_certificate���$host�����#Ref!t��8 ���9 ��"@�������$host��C ���D ��@A@�@@@@@��G ���H ��@@@@�@@@����&string��P ��&�Q ��,@@�@@@��T ��@@@�����#API9vdi_nbd_server_info_t_set��] .3�^ .P@@�@@@��a ���@@@��c ���@@@��e ���@@@@���g�������
   This version of {!get_nbd_info} is only here for unit testing: a mock
    [get_server_certificate] function can be provided to avoid querying the real
    certificate using the Client module, which is what {!get_nbd_info} does,
    which would cause the unit test to fail. @��rQQ�s9h@@@@@@��u ���@�@@