Caml1999M025����         	   >ocaml/xapi/xapi_pci_helpers.ml����  G  �  8  6������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!D��>ocaml/xapi/xapi_pci_helpers.mlO>E�O>F@�������%Debug$Make��O>I�O>S@�@@�����@�����$name��O>`�O>d@�@@@���0xapi_pci_helpers@��$O>g�%O>y@@@@��'O>\@@�@@��*O>U�+O>}@@� �-O>~@@@��/O>>@�@��������!D��;Q���<Q��@�@@A��?Q��@@�@���A�    �,pci_property��IS���JS��@@@��Р"id��QS���RS��@@����#int��YS���ZS��@@�@@@��]S��@@�Р$name��cS���dS��@@����&string��kS���lS��@@�@@@�@@@A@@��pS���qS��@@�@���A�    �#pci��{U���|U��@@@��Р'address���V����V��@@����&string���V����V��@@�@@@���W��@@�Р&vendor���W����W��@@����,pci_property���W����W��@@�@@@���X��@@�Р&device���X����X��@@����,pci_property���X����X�@@�@@@���Y@@�Р)pci_class���Y��Y@@����,pci_property���Y��Y#@@�@@@���Z$'@@�Р0subsystem_vendor���Z$(��Z$8@@����&option���Z$G��Z$M@�����,pci_property���Z$:��Z$F@@�@@@@�@@@���[NQ@@�Р0subsystem_device���[NR��[Nb@@����&option���[Nq��[Nw@�����,pci_property���[Nd��[Np@@�@@@@�@@@���\x{@@�Р'related��\x|�\x�@@����$list��\x��\x�@�����&string��\x��\x�@@�@@@@�@@@��]��@@�Р+driver_name��]��� ]��@@����&option��']���(]��@�����&string��0]���1]��@@�@@@@�@@@�@@@A@@��6U���7^��@@�@���@�����/get_driver_name��C`���D`��@�@@@��@@���'address��M`���N`��@�@@@����@�����+driver_path��[b���\b��@�@@@�������$Unix(readlink��hc���ic� @�@@@��@�������&Printf'sprintf��wc��xc�@�@@@��@���>/sys/bus/pci/devices/%s/driver@���c���c�1@@@��@����'address���c�2��c�9@�@@@@���c���c�:@��@@@@�,@@@@���b��@@����������'Astring&String#cut���eBL��eB^@�@@@���#sep���!/@���eBd��eBg@@@���#rev����$true���eBm��eBq@@�@@@��@����+driver_path���eBr��eB}@�@@@@�'@@@������$Some���f����f��@�������&prefix���f����f��@�@@@����&suffix���f����f��@�@@@@���f����f��@��@@@�@@@@����$Some���g����g��@�����&suffix���g��� g��@�@@@�@@@������$None��h���h��@@�@@@@����$None��i���i��@@�@@@@��eBF@@@��@@@���@��j���j��@@@@����$None��&j���'j��@@�@@@@��*a��@@@��A@@@��-`��@@�@���@�����.address_of_dev��9l���:l��@�@@@��@@���!x��Cl���Dl��@�@@@�  !������#Pci'Pci_dev��Qm��Rm�@�@@A��Um� @@�������&Printf'sprintf��`n�an$@�@@@��@���1%04x:%02x:%02x.%d@��jn%�kn8@@@��@������!x��vn9�wn:@�@@@��&domain��}n;�~nA@�
@@@��@������!x���nB��nC@�@@@��#bus���nD��nG@�
@@@��@������!x���nH��nI@�@@@��#dev���nJ��nM@�
@@@��@������!x���nN��nO@�@@@��$func���nP��nT@�
@@@@�]@@@���m��@@@�}A@@@���l��@@�	@�����(PCIcache���r����r��@�������A�    �!t���{]d��{]e@@@@A������'Hashtbl!t���{]w��{]�@�����&string���{]i��{]o@@�@@@�����$bool���{]q��{]u@@�@@@@���{]h@@@@���{]_@@�@���A�    �$addr��}���}��@@@@A�����&string��}���}��@@�@@@@��}��@@�@���@�����*is_virtual�� C@F�  C@P@�@@@��@@���$addr��) C@Q�* C@U@�@@@��@�����$path��5 DX`�6 DXd@�@@@�������&Printf'sprintf��B DXg�C DXu@�@@@��@���>/sys/bus/pci/devices/%s/physfn@��L DXv�M DX�@@@��@����$addr��V DX��W DX�@�@@@@�@@@@��[ DX\@@���  ������"@@��h F���i F��@�@@@��@����&ignore��s F���t F��@�@@@��@�������$Unix(readlink��� F���� F��@�@@@��@����$path��� F���� F��@�@@@@�@@@@�@@@����ܰ�� G���� G��@@�@@@�(@@@���@��� H���� H��@@@@����%false��� H���� H��@@�@@@@��� E��@@@�R@@@��A@@���)ocaml.docC�������	� [is_virtual_pci "0000:37:00.4"] is true, if this designates a
   * virtual PCI function (VF), false otherwise. Only a VF has a "physfn"
   * symbolic link.
   @������� B:?@@@@@N@��� C@B@@�@���@�����$make��� J���� J��@�@@@��@@����"()��� J���� J��@@�@@@�������'Hashtbl&create��� J���� J�
@�@@@��@���#100@��� J��� J�@@@@�@@@�A@@@��� J��@@�@���@�����*is_virtual��� L�� L @�@@@��@@���!t�� L!� L"@�@@@��@@���$addr�� L#� L'@�@@@���������'Hashtbl$find��  M*2�! M*>@�@@@��@����!t��+ M*?�, M*@@�@@@��@����$addr��6 M*A�7 M*E@�@@@@�@@@������)Not_found��B NFO�C NFX@@�@@@@��@�����!v��N O\f�O O\g@�@@@������*is_virtual��Y O\j�Z O\t@�@@@��@����$addr��d O\u�e O\y@�@@@@�@@@@��i O\b@@�  �������'Hashtbl'replace��v P}��w P}�@�@@@��@����!t��� P}��� P}�@�@@@��@����$addr��� P}��� P}�@�@@@��@����!v��� P}��� P}�@�@@@@�%@@@����!v��� P}��� P}�@�@@@�/@@@�=@@@@��� M*.@@@��A@@��A@@@��� L
@@�@@���zPV�� Q��@@�����A�    �!t���s����s��@@@@A@@���s��@@�@���A�    �$addr���u����u��@@@@A�����&string���u����u��@@�@@@@���u��@@�@���Р$make���w��w@��@����$unit���w ��w$@@�@@@����!t���w(��w)@@�@@@�@@@@@���w@�@���Р*is_virtual���y+1��y+;@��@����!t��y+>�	y+?@@�@@@��@����$addr��y+C�y+G@@�@@@����$bool��y+K�y+O@@�@@@�@@@�@@@@@��"y+-@�@@��%r���&zPS@@��(r��z@@@��*r��|@�}@���@�����-is_related_to��6 V		�7 V		@�@@@��@@���%cache��@ V		�A V		#@�@@@��@@�����!x��L V		%�M V		&@�@@@������#Pci'Pci_dev!t��Y V		)�Z V		6@@�@@@��] V		$�^ V		7@@@��@@�����!y��h V		9�i V		:@�@@@������#Pci'Pci_dev!t��u V		=�v V		J@@�@@@��y V		8�z V		K@@@�  !������#Pci'Pci_dev��� W	N	Y�� W	N	d@�@@A��� W	N	T@@������"&&��� Y	~	��� Y	~	�@�@@@��@������!=��� X	h	s�� X	h	t@�@@@��@������!x��� X	h	j�� X	h	k@�@@@��&domain��� X	h	l�� X	h	r@�
@@@��@������!y��� X	h	u�� X	h	v@�@@@��&domain��� X	h	w�� X	h	}@�
@@@@�@@@��@������C��� Z	�	��� Z	�	�@�@@@��@������B��� Y	~	��� Y	~	�@�@@@��@������!x��� Y	~	��� Y	~	�@�@@@��#bus��� Y	~	��� Y	~	�@�
@@@��@������!y�� Y	~	�� Y	~	�@�@@@��#bus��	 Y	~	��
 Y	~	�@�
@@@@�@@@��@��������� [	�	�� [	�	�@�@@@��@���������" Z	�	��# Z	�	�@�@@@��@������!x��/ Z	�	��0 Z	�	�@�@@@��#dev��6 Z	�	��7 Z	�	�@�
@@@��@������!y��C Z	�	��D Z	�	�@�@@@��#dev��J Z	�	��K Z	�	�@�
@@@@�@@@��@������Ű�W \	�	��X \	�	�@�@@@��@������"<>��d [	�	��e [	�	�@�@@@��@������!x��q [	�	��r [	�	�@�@@@��$func��x [	�	��y [	�	�@�
@@@��@������!y��� [	�	��� [	�	�@�@@@��$func��� [	�	��� [	�	�@�
@@@@�@@@��@��������� ]	�	��� ]	�	�@�@@@��@������"@@��� \	�	��� \	�	�@�@@@��@����#not��� \	�	��� \	�	�@�@@@��@������"@@��� \	�	��� \	�	�@�@@@��@�������(PCIcache*is_virtual��� \	�	��� \	�	�@�@@@��@����%cache��� \	�	��� \	�	�@�@@@@�@@@��@������.address_of_dev��� \	�	��� \	�	�@�@@@��@����!x��� \	�	��� \	�	�@�@@@@�@@@@�)@@@@��� \	�	��� \	�	�@��J	@@@��@������"@@�� ]	�
 � ]	�
@�@@@��@����#not�� ]	�	�� ]	�	�@�@@@��@������"@@�� ]	�
� ]	�
@�@@@��@�������(PCIcache*is_virtual��, ]	�
�- ]	�
@�@@@��@����%cache��7 ]	�
�8 ]	�
@�@@@@�@@@��@������.address_of_dev��E ]	�
 �F ]	�
.@�@@@��@����!y��P ]	�
/�Q ]	�
0@�@@@@�@@@@�)@@@@��V ]	�	��W ]	�
1@��J	@@@@�d@@@@��@@@@�.@@@@�p@@@@��@@@��` W	N	P
@@@��A@@�A@@�$A@@������������	a [is_related_to x y] is true, if two non-virtual PCI devices
 *  only differ in their function.
 @��p S���q U		@@@@@@��s V		@@�@���@�����-get_host_pcis�� _
3
7�� _
3
D@�@@@��@@�������� _
3
E�� _
3
G@@�@@@��@�����'default��� `
J
P�� `
J
W@�@@@�Đ#msg@������ `
J
Y�� `
J
\@�@@@��@@���!v��� `
J
]�� `
J
^@�@@@������!v��� a
a
k�� a
a
l@�@@@������$Some��� b
r
x�� b
r
|@����!v��� b
r
}�� b
r
~@�@@@�@@@@����!v��� c
�
��� c
�
�@�@@@������$None��� d
�
��� d
�
�@@�@@@@�  ������%debug��� e
�
��� e
�
�@�@@@��@���7get_host_pcis: empty %s@��� e
�
��� e
�
�@@@��@����#msg��� e
�
��� e
�
�@�@@@@�@@@��� @�� f
�
�� f
�
�@@@� @@@@�� a
a
e@@@�cA@@�� `
J
XA@@@�� `
J
L	@@�  !�����#Pci�� h
�
�� h
�
�@�@@A�� h
�
�@@������+with_access��' i
�
��( i
�
�@�@@@��@��@@���&access��3 i
�
��4 i
�@�@@@��@�����$devs��? j�@ j@�@@@������+get_devices��J j�K j#@�@@@��@����&access��U j$�V j*@�@@@@�@@@@��Z j@@��@�����%cache��d k.8�e k.=@�@@@�������(PCIcache$make��q k.@�r k.M@�@@@��@�������{ k.N�| k.P@@�@@@@�@@@@��� k.4@@�������$List#map��� lTZ�� lTb@�@@@��@��@@���!d��� mcp�� mcq@�@@@�  !�����'Pci_dev��� nu��� nu�@�@@A��� nu�@@�  ������%debug��� o���� o��@�@@@��@���	1get_host_pcis: vendor=%04x device=%04x class=%04x@��� o���� o��@@@��@������!d��� o���� o��@�@@@��)vendor_id��� o���� o��@�
@@@��@������!d��� p���� p��@�@@@��)device_id��� p���� p��@�
@@@��@������!d��� p���� p��@�@@@��,device_class��� p���� p�	@�
@@@@�I@@@��@�����&vendor��	 q�	 q @�@@@������"id��	 s1?�	 s1A@������!d��	 s1C�	 s1D@�@@@��)vendor_id��	  s1E�	! s1N@�
@@@����$name��	) tO]�	* tOa@������"|>��	3 v���	4 v��@�@@@��@������2lookup_vendor_name��	@ ucs�	A uc�@�@@@��@����&access��	K uc��	L uc�@�@@@��@������!d��	X uc��	Y uc�@�@@@��)vendor_id��	_ uc��	` uc�@�
@@@@�#@@@��@������'default��	m v���	n v��@�@@@���#msg���+vendor name@��	y v���	z v��@@@@�@@@@�=@@@@@��	~ r#/�	 w��@@@@��	� q@@��@�����&device��	� y���	� y��@�@@@������"id��	� {�	� {@������!d��	� {�	� {@�@@@��)device_id��	� {�	� {$@�
@@@����$name��	� |%3�	� |%7@������"|>��	� ~{��	� ~{�@�@@@��@������2lookup_device_name��	� }9I�	� }9[@�@@@��@����&access��	� }9\�	� }9b@�@@@��@������!d��	� }9c�	� }9d@�@@@��)vendor_id��	� }9e�	� }9n@�
@@@��@������!d��	� }9o�	� }9p@�@@@��)device_id��	� }9q�	� }9z@�
@@@@�7@@@��@������'default��
 ~{��
	 ~{�@�@@@���#msg���+device name@��
 ~{��
 ~{�@@@@�@@@@�Q@@@@@��
 z��
 ��@@@@��
 y��@@��@�����'address��
& ����
' ���@�@@@������.address_of_dev��
1 ����
2 ���@�@@@��@����!d��
< ����
= ���@�@@@@�@@@@��
A ���@@��@�����+driver_name��
K ����
L ��	@�@@@������/get_driver_name��
V ���
W ��@�@@@��@����'address��
a ���
b ��#@�@@@@�@@@@��
f ���@@��@��������0subsystem_vendor��
s �'5�
t �'E@�@@@����0subsystem_device��
| �'G�
} �'W@�@@@@�@@@��������!d��
� �Zl�
� �Zm@�@@@��,subsystem_id��
� �Zn�
� �Zz@�
@@@������$None��
� ����
� ���@@�@@@@�������$None��
� ����
� ���@@�@@@�����$None��
� ����
� ���@@�@@@@��
� ����
� ���@��@@@������$Some��
� ����
� ���@�������%sv_id��
� ����
� ���@�@@@����%sd_id��
� ����
� ���@�@@@@��
� ����
� ���@��@@@�@@@@��@�����'sv_name��
� ����
� ���@�@@@������"|>��
� �2D�
� �2F@�@@@��@������<lookup_subsystem_vendor_name��  ��� ��$@�@@@��@����&access�� ��%� ��+@�@@@��@����%sv_id�� ��,� ��1@�@@@@�@@@��@������'default��$ �2G�% �2N@�@@@���#msg���5subsystem vendor name@��0 �2T�1 �2k@@@@�@@@@�4@@@@��5 ���@@��@�����'sd_name��? ���@ ��@�@@@������"|>��J ��K �@�@@@��@������<lookup_subsystem_device_name��W ����X ���@�@@@��@����&access��b ����c ���@�@@@��@������!d��o ����p ���@�@@@��)vendor_id��v ����w ���@�
@@@��@������!d��� ����� ���@�@@@��)device_id��� ����� ���@�
@@@��@����%sv_id��� ����� ��@�@@@��@����%sd_id��� ���� ��
@�@@@@�M@@@��@������'default��� � �� �'@�@@@���#msg���5susbsytem device name@��� �-�� �D@@@@�@@@@�g@@@@��� ��@@�������$Some��� �Xj�� �Xn@�������"id��� �Xp�� �Xr@����%sv_id��� �Xt�� �Xy@�@@@����$name��� �X{�� �X@����'sv_name��� �X��� �X�@�@@@@@��� �Xo�� �X�@@@�+@@@�����$Some��� ����� ���@�������"id�� ���� ���@����%sd_id�� ���� ���@�@@@����$name�� ���� ���@����'sd_name�� ����  ���@�@@@@@��# ����$ ���@@@�+@@@@��' �Xh�( ���@��b@@@�m@@@��@@@@��. �Zf@@@@��0 �'1	@@��@�����)pci_class��: ����; ���@�@@@������"id��E ��F �@������!d��O ��P �@�@@@��,device_class��V ��W �#@�
@@@����$name��_ �$2�` �$6@������"|>��i �p��j �p�@�@@@��@������1lookup_class_name��v �8H�w �8Y@�@@@��@����&access��� �8Z�� �8`@�@@@��@������!d��� �8a�� �8b@�@@@��,device_class��� �8c�� �8o@�
@@@@�#@@@��@������'default��� �p��� �p�@�@@@���#msg���*class name@��� �p��� �p�@@@@�@@@@�=@@@@@��� ���� ���@@@@��� ���@@��@�����,related_devs��� ����� ���@�@@@�������$List&filter��� ����� ���@�@@@��@������-is_related_to��� ����� ���@�@@@��@����%cache��� ����� ���@�@@@��@����!d��� ����� ���@�@@@@��� ����� ���@��@@@��@����$devs�� ���� ���@�@@@@�7@@@@�� ���@@������'address�� �� � @�����@@@����&vendor�� �!-� �!3@�����@@@����&device��) �4@�* �4F@�����@@@����0subsystem_vendor��6 �GS�7 �Gc@�����@@@����0subsystem_device��C �dp�D �d�@�����@@@����)pci_class��P ����Q ���@�����@@@����'related��] ����^ ���@�������$List#map��i ����j ���@�@@@��@����.address_of_dev��t ����u ���@�@@@��@����,related_devs�� ����� ���@�@@@@�@@@����+driver_name��� ����� ���@�����@@@@@��� ��� ���@@@��@@@��@@@�f@@@�1@@@�W@@@�}@@@�@@@��	@@@��� nu@@@��� mck�� ���@���� mcl@@@��@����$devs��� ���� ��@�@@@@�$@@@�0@@@�W@@@��� i
�
��� �@���� i
�
�@@@@��@@@��� h
�
�@@@��@@@�3	A@@@��� _
3
3@@�@���@�����2igd_is_whitelisted��� ��� �'@�@@@�Đ)__context@������ �)�� �2@�@@@��@@���#pci��� �3�� �6@�@@@��@�����)vendor_id��� �9?�� �9H@�@@@��������"Db#PCI-get_vendor_id��� �9K�� �9_@�@@@���)__context������ �9a� �9j@�@@@���$self����#pci�� �9q� �9t@�@@@@�@@@@�� �9;@@�������$List#mem��" �xz�# �x�@�@@@��@����)vendor_id��- �x��. �x�@�@@@��@������!!��: �x��; �x�@�@@@��@�����*Xapi_globs=igd_passthru_vendor_whitelist��G �x�@�@@@@�@@@@�)@@@�5@@@�oA@@��N �(A@@@��P �
@@�@@