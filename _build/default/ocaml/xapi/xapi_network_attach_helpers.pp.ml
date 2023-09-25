Caml1999M025����   +         	)ocaml/xapi/xapi_network_attach_helpers.ml����  Nn  �  >(  <������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������&Stdext��	)ocaml/xapi/xapi_network_attach_helpers.mlOHM�OHS@�@@A��OHH@@�@��������'Listext��PTY�PT`@�@@A��PTT@@�@�����!D��Rbi�Rbj@�������%Debug$Make��*Rbm�+Rbw@�@@�����@�����$name��9Rb��:Rb�@�@@@���;xapi_network_attach_helpers@��ARb��BRb�@@@@��DRb�@@�@@��GRby�HRb�@@� �JRb�@@@��LRbb@�@��������!D��XT���YT��@�@@A��\T��@@�@��������/Db_filter_types��hU���iU��@�@@A��lU��@@�@���@�����	'assert_network_has_no_vifs_in_use_on_me��xW���yW��@�@@@�Đ)__context@������W����W�@�@@@�Đ$host@������W���W�@�@@@�Đ'network@������W�
��W�@�@@@��@�����$vifs���YU[��YU_@�@@@��������"Db'Network(get_VIFs���YUb��YUu@�@@@���)__context�������YUw��YU�@�@@@���$self����'network���YU���YU�@�@@@@�@@@@���YUW@@�������$List$iter���Z����Z��@�@@@��@��@@���$self���[����[��@�@@@��@�����#ops���]����]��@�@@@��������"Db#VIF6get_current_operations��]���]�@�@@@���)__context������]��]�@�@@@���$self������]�!�]�%@�@@@@�@@@@��!]��@@�  �������$List$iter��.^)/�/^)8@�@@@��@��@@������$task��=_9G�>_9K@�@@@����"op��F_9M�G_9O@�@@@@��J_9F�K_9P@��@@@������"op��V`Td�W`Tf@�@@@����&attach@��_alx�`al@@@@��@�����"vm��jd��kd�	@�@@@��������"Db#VIF&get_VM��yd��zd�@�@@@���)__context�������d���d�$@�@@@���$self�������d�&��d�*@�@@@@�@@@@���d�@@��@�����+resident_on���e.@��e.K@�@@@��������"Db"VM/get_resident_on���e.N��e.c@�@@@���)__context�������e.e��e.n@�@@@���$self����"vm���e.u��e.w@�@@@@�@@@@���e.<@@��@�����;scheduled_to_be_resident_on���f{���f{�@�@@@��������"Db"VM?get_scheduled_to_be_resident_on���g����g��@�@@@���)__context�������g����g��@�@@@���$self����"vm���g��� g��@�@@@@�@@@@��f{�@@��������"||��i*�i,@�@@@��@������!=��i#�i$@�@@@��@����+resident_on��'i�(i"@�@@@��@����$host��2i%�3i)@�@@@@�@@@��@������$��?iI�@iJ@�@@@��@����;scheduled_to_be_resident_on��Ji-�KiH@�@@@��@����$host��UiK�ViO@�@@@@�@@@@�3@@@�  ������%debug��djWg�ejWl@�@@@��@���	,Network contains VIF with attach in progress@��njWm�ojW�@@@@�@@@������%raise��yk���zk��@�@@@��@�����*Api_errors,Server_error���l����l��@���������*Api_errors*vif_in_use���m����m�@�@@@�����"::���n$��nNA�����������#Ref)string_of���n1@�@@@��@����'network���n2��n9@�@@@@�@@@�����%���n;$A�����������#Ref)string_of���nH@�@@@��@����$self���nI��nM@�@@@@�@@@�����"[]�
GA@�HA@@@�&IA@@�'JA@@@�LKA@@���n#M@@@@���m����oOe@��]R@@@���l����pfy@��p@@@@�~@@@���iU��qz�@���	@@@@���i@@@��@@@�3@@@�k@@@���@��r���r��@@@@����"()��s���s��@@�@@@@��`T^@@@��_9A�t��@���_9B
@@@��@����#ops�� u���!u��@�@@@@��@@@����������"Db#VIF6get_currently_attached��2v���3v��@�@@@���)__context������>v���?v��@�@@@���$self������Jv���Kv��@�@@@@�@@@��@�����"vm��Ww�Xw@�@@@��������"Db#VIF&get_VM��fw�gw@�@@@���)__context������rw!�sw*@�@@@���$self������~w,�w0@�@@@@�@@@@���w	@@��@�����+resident_on���x4@��x4K@�@@@��������"Db"VM/get_resident_on���x4N��x4c@�@@@���)__context�������x4e��x4n@�@@@���$self����"vm���x4u��x4w@�@@@@�@@@@���x4<@@������������y{���y{�@�@@@��@����+resident_on���y{���y{�@�@@@��@����$host���y{���y{�@�@@@@�@@@���������9Xapi_vm_lifecycle_helpers'is_live���z����z��@�@@@���)__context�������z����z��@�@@@���$self����"vm��z���z��@�@@@@�@@@������%raise��{���{��@�@@@��@�����*Api_errors,Server_error��|�	�|�	@���������*Api_errors*vif_in_use��*}		2�+}		G@�@@@��������3~	H	\�4~	H	�A�����������#Ref)string_of��C~	H	i@�@@@��@����'network��M~	H	j�N~	H	q@�@@@@�@@@��������W~	H	s$A�����������#Ref)string_of��f~	H	�@�@@@��@����$self��p~	H	��q~	H	�@�@@@@�@@@�������	FA@�
GA@@@�%HA@@�&IA@@@�KJA@@��~	H	[L@@@@���}		0��	�	�@��[Q@@@���|�	�� @	�	�@��n@@@@�|@@@@���z��@@@@���y{�@@@��	@@@�
@@@@���v��@@@�f@@@�t@@@���[���� A	�	�@����[��@@@��@����$vifs��� B	�	��� B	�	�@�@@@@��@@@��@@@���W�	A@@���W�A@@���W��
A@@@���W��@@�@���@�����	"assert_pif_disallow_unplug_not_set��� E	�	��� E	�	�@�@@@�Đ)__context@������ E	�
 �� E	�
	@�@@@��@@���#pif��� E	�

�� E	�
@�@@@����������"Db#PIF3get_disallow_unplug��� F

�� F

/@�@@@���)__context������� F

1�� F

:@�@@@���$self����#pif��� F

A�� F

D@�@@@@�@@@������%raise�� G
J
N� G
J
S@�@@@��@�����*Api_errors,Server_error�� H
T
[� H
T
r@���������*Api_errors9pif_does_not_allow_unplug��! I
s
}�" I
s
�@�@@@��������* I
s
��+ I
s
�A�����������#Ref)string_of��: I
s
�@�@@@��@����#pif��D I
s
��E I
s
�@�@@@@�@@@�����i�	#A@�
$A@@@�&%A@@��Q I
s
�'@@@@��S I
s
|�T I
s
�@��6,@@@��X H
T
Z�Y J
�
�@��I@@@@�W@@@@��^ F

@@@��A@@��a E	�	�	A@@@��c E	�	�@@�@���@�����.get_local_pifs��o L
�
��p L
�
�@�@@@�Đ)__context@�����z L
�
��{ L
�
�@�@@@�Đ'network@������ L
�
��� L
�
�@�@@@�Đ$host@������ L
�
��� L
�
�@�@@@��������"Db#PIF.get_refs_where��� N.0�� N.E@�@@@���)__context������� N.G�� N.P@�@@@���$expr����#And��� P\c�� P\f@��������"Eq��� Qgr�� Qgt@��������%Field��� Qgv�� Qg{@����'network@��� Qg|�� Qg�@@@�@@@�����'Literal��� Qg��� Qg�@��������#Ref)string_of��� Qg��� Qg�@�@@@��@����'network��� Qg��� Qg�@�@@@@��� Qg��� Qg�@��@@@�!@@@@�� Qgu� Qg�@��8	@@@�E@@@�����"Eq�� R��� R��@��������%Field�� R��� R��@����$host@��$ R���% R��@@@�@@@�����'Literal��. R���/ R��@��������#Ref)string_of��; R���< R��@�@@@��@����$host��F R���G R��@�@@@@��J R���K R��@��@@@�!@@@@��P R���Q R��@��8	@@@�E@@@@��V Qgp�W S��@���	@@@��[ P\b�\ T��@���@@@@��@@@��a L
�
�A@@��c L
�
�A@@��e L
�
�
A@@@��g L
�
�@@�@���@�����/assert_no_slave��s W"&�t W"5@�@@@�Đ)__context@�����~ W"7� W"@@�@@@��@@���#pif��� W"A�� W"D@�@@@��������"<>��� XGz�� XG|@�@@@��@��������"Db#PIF1get_bond_slave_of��� XGL�� XGd@�@@@���)__context������� XGf�� XGo@�@@@���$self����#pif��� XGv�� XGy@�@@@@�@@@��@�����#Ref$null��� XG}�� XG�@�@@@@�+@@@������%raise��� Y���� Y��@�@@@��@�����*Api_errors,Server_error��� Z���� Z��@���������*Api_errors6cannot_plug_bond_slave��� [���� [��@�@@@�����`��� [���� [��A�����������#Ref)string_of�� [��@�@@@��@����#pif�� [��� [��@�@@@@�@@@�����<�	#A@�
$A@@@�&%A@@��$ [��'@@@@��& [���' [��@��6,@@@��+ Z���, \��@��I@@@@�W@@@@��1 XGI@@@��A@@��4 W"6	A@@@��6 W""@@�@���@�����	!assert_can_attach_network_on_host��B ^��C ^�$@�@@@�Đ)__context@�����M ^�&�N ^�/@�@@@�Đ$self@�����X ^�1�Y ^�5@�@@@�Đ$host@�����c ^�7�d ^�;@�@@@��@�����*local_pifs��o _>D�p _>N@�@@@������.get_local_pifs��z _>Q�{ _>_@�@@@���)__context������� _>a�� _>j@�@@@���'network����$self��� _>t�� _>x@�@@@���$host������� _>z�� _>~@�@@@@�)@@@@��� _>@@@�������$List$iter��� `���� `��@�@@@��@��@@���#pif��� `���� `��@�@@@������/assert_no_slave��� `���� `��@�@@@���)__context������� `���� `��@�@@@��@����#pif��� `���� `��@�@@@@�@@@��� `���� `��@���� `��	@@@��@����*local_pifs��� `���� `��@�@@@@�D@@@�P@@@��� ^�6A@@��� ^�0A@@��� ^�%
A@@@��� ^��@@�@���@�����=assert_can_see_named_networks�� b��� b��@�@@@�Đ)__context@����� b��� b��@�@@@�Đ"vm@����� b��� b��@�@@@�Đ$host@�����( b���) b��@�@@@��@@���)reqd_nets��2 b���3 b�@�@@@��@�����7is_network_available_on��> c	�? c	&@�@@@��@@���$host��H c	'�I c	+@�@@@��@@���#net��R c	,�S c	/@�@@@��@�����$pifs��^ e���_ e��@�@@@��������"Db'Network(get_PIFs��m e���n e��@�@@@���)__context������y e���z e��@�@@@���$self����#net��� e���� e��@�@@@@�@@@@��� e��@@��@�����'managed��� f���� f��@�@@@��������"Db'Network+get_managed��� f���� f��@�@@@���)__context������� f���� f��@�@@@���$self����#net��� f���� f��@�@@@@�@@@@��� f��@@��������"<>��� g�� g@�@@@��@����$pifs��� g
�� g@�@@@��@����"[]��� g�� g@@�@@@@�@@@��@�����%hosts��� j|��� j|�@�@@@�������$List#map��� k���� k��@�@@@��@��@@���$self��		 k���	
 k��@�@@@��������"Db#PIF(get_host��	 k���	 k��@�@@@���)__context������	$ k���	% k��@�@@@���$self������	0 k���	1 k��@�@@@@�@@@��	5 k���	6 k��@���	9 k��	@@@��@����$pifs��	B k���	C k��@�@@@@�I@@@@��	G j|�@@�������$List#mem��	R m���	S m��@�@@@��@����$host��	] m���	^ m��@�@@@��@����%hosts��	h m���	i m��@�@@@@�@@@�&@@@���@�����,other_config��	w o�	�	x o�@�@@@��������"Db'Network0get_other_config��	� o��	� o�3@�@@@���)__context������	� o�5�	� o�>@�@@@���$self����#net��	� o�E�	� o�H@�@@@@�@@@@��	� o�@@��������"&&��	� r���	� r��@�@@@��@�������$List)mem_assoc��	� qU]�	� qUk@�@@@��@�����*Xapi_globs8assume_network_is_shared��	� qUl�	� qU�@�@@@��@����,other_config��	� qU��	� qU�@�@@@@�@@@��@������Ȱ�	� r���	� r��@�@@@��@�������$List%assoc��	� r���	� r��@�@@@��@�����*Xapi_globs8assume_network_is_shared��	� r���
  r��@�@@@��@����,other_config��

 r���
 r��@�@@@@�@@@��@���$true@��
 r���
 r��@@@@�&@@@@�[@@@�  ������%debug��
# t��
$ t�@�@@@��@���	$other_config:%s is set on Network %s@��
- t��
. t�.@@@��@�����*Xapi_globs8assume_network_is_shared��
9 u/9�
: u/\@�@@@��@�������#Ref)string_of��
H u/^�
I u/k@�@@@��@����#net��
S u/l�
T u/o@�@@@@��
W u/]�
X u/p@��@@@@�9@@@����$true��
b vs{�
c vs@@�@@@��
f s���
g w��@��G@@@���������#not��
u w���
v w��@�@@@��@����'managed��
� w���
� w��@�@@@@�@@@����(��
� x���
� x��@@�@@@���@�����$vifs��
� }my�
� }m}@�@@@��������"Db'Network(get_VIFs��
� }m��
� }m�@�@@@���)__context������
� }m��
� }m�@�@@@���$self����#net��
� }m��
� }m�@�@@@@�@@@@��
� }mu@@��@�����#vms��
� ~���
� ~��@�@@@�������$List#map��
� ~���
� ~��@�@@@��@��@@���$self��
� ~���
� ~��@�@@@��������"Db#VIF&get_VM��
� ~���
� ~��@�@@@���)__context������ ~��� ~��@�@@@���$self������ ~��� ~��@�@@@@�@@@�� ~��� ~��@��� ~��	@@@��@����$vifs�� ~���  ~��@�@@@@�I@@@@��$ ~��@@��@�����#vms��. ��/ �@�@@@�������$List#map��; ��< � @�@@@��@��@@���$self��G �&�H �*@�@@@��������"Db"VM*get_record��V �.�W �>@�@@@���)__context������b �@�c �I@�@@@���$self������n �K�o �O@�@@@@�@@@��s �!�t �P@���w �"	@@@��@����#vms��� �Q�� �T@�@@@@�I@@@@��� �@@��@�����#vms��� �`l�� �`o@�@@@�������$List&filter��� �r|�� �r�@�@@@��@��@@���"vm��� �r��� �r�@�@@@������	���� �r��� �r�@�@@@��@������"vm��� �r��� �r�@�@@@���#API.vM_power_state��� �r��� �r�@�@@@��@��'Running@��� �r��� �r�@@@@�@@@��� �r��� �r�@���� �r�@@@��@����#vms��� �r��� �r�@�@@@@�J@@@@��� �`h@@��@�����%hosts��� ����� ���@�@@@�������$List#map��� ����� ���@�@@@��@��@@���"vm��
 ���� ���@�@@@������"vm�� ���� ���@�@@@���#API.vM_resident_on�� ���� ��@�@@@��" ����# ��@���& ���@@@��@����#vms��/ ���0 ��@�@@@@�5@@@@��4 ���@@������
.��< �Uh�= �Uj@�@@@��@������
-��H �Uc�I �Ud@�@@@��@����%hosts��S �U]�T �Ub@�@@@��@����{��] �Ue�^ �Ug@@�@@@@�@@@��@�������$List#mem��m �Uk�n �Us@�@@@��@����$host��x �Ut�y �Ux@�@@@��@����%hosts��� �Uy�� �U~@�@@@@�@@@@�5@@@�U@@@��@@@�@@@�h@@@��	@@@��� w��@@@��� pLR@@@��@@@��� g@@@��@@@�@@@�EA@@�PA@@@��� c	@@��@�����*avail_nets��� ����� ���@�@@@�������$List&filter��� ����� ���@�@@@��@������7is_network_available_on��� ����� ���@�@@@��@����$host��� ����� ���@�@@@@��� ����� ���@��@@@��@����)reqd_nets��� ����� ���@�@@@@�,@@@@��� ���@@��@�����-not_available��� ����� ���@�@@@�������$List.set_difference��� ����� ���@�@@@��@����)reqd_nets��� ����  ��@�@@@��@����*avail_nets��
 ��� ��@�@@@@�@@@@�� ���@@�  �������$List$iter�� �� �@�@@@��@��@@���#net��( �&�) �)@�@@@������$warn��3 �-3�4 �-7@�@@@��@���=Host %s cannot see Network %s@��= �-8�> �-W@@@��@�������'Helpers)checknull��K �Xa�L �Xr@�@@@��@��@@����
K��W �Xx�X �Xz@@�@@@��������"Db$Host.get_name_label��f �~��g �~�@�@@@���)__context������r �~��s �~�@�@@@���$self����$host�� �~��� �~�@�@@@@�@@@��� �Xs�� ���@���� �Xt	@@@@��� �X`�� ���@��C	@@@��@�������'Helpers)checknull��� ����� ���@�@@@��@��@@����
���� ����� ���@@�@@@��������"Db'Network.get_name_label��� �� �� ��@�@@@���)__context������� ���� ��$@�@@@���$self����#net��� ��+�� ��.@�@@@@�@@@��� ����� �/9@���� ���	@@@@��� ����� �:C@��C	@@@@��@@@��� �!�� �DI@���� �"
@@@��@����-not_available��� �JN�� �J[@�@@@@��@@@�  ��������"<>��� �^q�� �^s@�@@@��@����-not_available�� �^c� �^p@�@@@��@����/�� �^t� �^v@@�@@@@�@@@������%raise�� �|�� �|�@�@@@��@�����*Api_errors,Server_error��* ����+ ���@���������*Api_errors/vm_requires_net��8 ����9 ���@�@@@��������A ����B ��A�����������#Ref)string_of��Q ���@�@@@��@����"vm��[ ����\ ���@�@@@@�@@@�����Ȱ�e ���$A�����������#Ref)string_of��t ���@�@@@��@�������$List"hd��� ����� ���@�@@@��@����-not_available��� �� �� ��@�@@@@��� ����� ��@��@@@@�1@@@�������
ZA@�[A@@@�9\A@@�:]A@@@�_^A@@��� ���`@@@@��� ����� �@��oe@@@��� ����� �"@���@@@@��@@@@��� �^`@@@�������$List$iter��� ����� ���@�@@@��@��@@���'network��� ����� ���@�@@@��������	!assert_can_attach_network_on_host��� ����� ��@�@@@���)__context������� ���� ��%@�@@@���$self����'network��� ��,�� ��3@�@@@���$host������� ��5�� ��9@�@@@@�)@@@�����#exn�� �z�� �z�@�@@@@�  ������%debug�� ���� ���@�@@@��@���	MCaught exception while checking if network %s could be attached on host %s:%s@�� ���� �� @@@��@�������#Ref)string_of��' ��( �@�@@@��@����'network��2 ��3 �!@�@@@@��6 ��7 �"@��@@@��@�������#Ref)string_of��F �$�G �1@�@@@��@����$host��Q �2�R �6@�@@@@��U �#�V �7@��@@@��@�������)ExnHelper-string_of_exn��e �8C�f �8Z@�@@@��@����#exn��p �8[�q �8^@�@@@@��t �8B�u �8_@��@@@@�j@@@������%raise��� �bj�� �bo@�@@@��@�����*Api_errors,Server_error��� �p{�� �p�@���������*Api_errors:host_cannot_attach_network��� ����� ���@�@@@�������� ����� ��A�����������#Ref)string_of��� ���@�@@@��@����$host��� ����� ���@�@@@@�@@@�����,��� ���$A�����������#Ref)string_of��� ���@�@@@��@����'network��� ����� ��@�@@@@�@@@������	FA@�
GA@@@�%HA@@�&IA@@@�KJA@@��� ���L@@@@��� ����� �@��[Q@@@��� �pz�� �@��n@@@@�|@@@��@@@@��� ���@@@�� ���� �#@��� ���@@@��@����*avail_nets�� �$(� �$2@�@@@@�Y@@@�e@@@��@@@�@@@�9@@@�~@@@��	A@@�� b��A@@�� b��A@@�� b��A@@@�� b��@@�@@