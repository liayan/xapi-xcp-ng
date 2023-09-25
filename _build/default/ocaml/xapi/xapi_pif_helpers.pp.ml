Caml1999M025����         	   >ocaml/xapi/xapi_pif_helpers.ml����  }R  v  `8  ]Ơ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������#API��>ocaml/xapi/xapi_pif_helpers.mlN=B�N=E@�@@A��N==@@�@�����!D��PGN�PGO@�������%Debug$Make��PGR�PG\@�@@�����@�����$name��)PGi�*PGm@�@@@���0xapi_pif_helpers@��1PGp�2PG�@@@@��4PGe@@�@@��7PG^�8PG�@@� �:PG�@@@��<PGG@�@��������!D��HR���IR��@�@@A��LR��@@�@���A�    �*pif_type_t��VU���WU��@@@��Р-Tunnel_access��^V���_V��@������*ref_tunnel��hV���iV�@@�@@@@@��lV��@@�Р-VLAN_untagged��rW
�sW@������(ref_VLAN��|W�}W#@@�@@@@@���W@@�Р5Network_sriov_logical���X$(��X$=@������1ref_network_sriov���X$A��X$R@@�@@@@@���X$&@@�Р+Bond_master���YSW��YSb@������(ref_Bond���YSf��YSn@@�@@@@@���YSU@@�Р(Physical���Zos��Zo{@������%pIF_t���Zo��Zo�@@�@@@@@���Zoq@@@A@@���U��@@�@���@�����2pif_type_to_string���\����\��@�@@@��������-Tunnel_access���]����]��@��@���]����]��@@@�@@@@���-Tunnel_access@���^����^��@@@������-VLAN_untagged���_����_��@��@���_����_��@@@�@@@@���-VLAN_untagged@���`����`�@@@������5Network_sriov_logical��a�a@��@��
a�a@@@�@@@@���5Network_sriov_logical@��b!'�b!>@@@������+Bond_master��c?C�c?N@��@��!c?O�"c?P@@@�@@@@���+Bond_master@��)dTZ�*dTg@@@������(Physical��3ehl�4eht@��@��8ehu�9ehv@@@�@@@@���(Physical@��@fz��Afz�@@@@��C\��@@@@��E\��@@�@���@�����4is_tunnel_access_pif��Qh���Rh��@�@@@��@@���'pif_rec��[h���\h��@�@@@��������'pif_rec��hi���ii��@�@@@���#API8pIF_tunnel_access_PIF_of��qi���ri��@�@@@������"::��|j���}j��@�������&tunnel���j����j��@�@@@��@���j����j��@@@@�	A@@�
@@@@����$Some���k����k��@�����-Tunnel_access���k� ��k�@�����&tunnel���k���k�@�@@@���k����k�@��@@@�@@@���@���l��l@@@@����$None���m%��m)@@�@@@@���i��@@@�iA@@@���h��@@�@���@�����2is_vlan_master_pif���o+/��o+A@�@@@��@@���'pif_rec���o+B��o+I@�@@@��@�����$vlan���pLR��pLV@�@@@������'pif_rec���pLY��pL`@�@@@���#API2pIF_VLAN_master_of���pLa��pLw@�@@@@���pLN@@��������!=��
q{��q{�@�@@@��@����$vlan��q{��q{�@�@@@��@�����#Ref$null��"q{��#q{�@�@@@@�@@@����$None��,q{��-q{�@@�@@@�����$Some��6q{��7q{�@�����-VLAN_untagged��?q{��@q{�@�����$vlan��Hq{��Iq{�@�@@@��Lq{��Mq{�@��@@@�@@@��Rq{}@@@�U@@@�zA@@@��Vo++
@@�@���@�����4is_sriov_logical_pif��bs���cs��@�@@@��@@���'pif_rec��ls���ms��@�@@@��������'pif_rec��yt���zt��@�@@@���#API8pIF_sriov_logical_PIF_of���t����t�	@�@@@���������u��u@�������%sriov���u��u@�@@@��@���u��u@@@@�	A@@�
@@@@����$Some���v!'��v!+@�����5Network_sriov_logical���v!-��v!B@�����%sriov���v!C��v!H@�@@@���v!,��v!I@��@@@�@@@���@���wJN��wJO@@@@����$None���xSY��xS]@@�@@@@���t��@@@�hA@@@���s��@@�@���@�����2is_bond_master_pif���z_c��z_u@�@@@��@@���'pif_rec���z_v��z_}@�@@@��������'pif_rec���{����{��@�@@@���#API2pIF_bond_master_of��{���{��@�@@@���������|���|��@�������$bond��|���|��@�@@@��@��|���|��@@@@�	A@@�
@@@@����$Some��&}���'}��@�����+Bond_master��/}���0}��@�����$bond��8}���9}��@�@@@��<}���=}��@��@@@�@@@���@��E~���F~��@@@@����$None��M���N��@@�@@@@��Q{��@@@�hA@@@��Tz__@@�@���@�����/is_physical_pif��` A���a A�@�@@@��@@���'pif_rec��j A��k A�@�@@@��������'pif_rec��w B�x B@�@@@���#API,pIF_physical��� B�� B+@�@@@����$Some��� B1�� B5@�����(Physical��� B7�� B?@�����'pif_rec��� B@�� BG@�@@@��� B6�� BH@��@@@�@@@�����$None��� BN�� BR@@�@@@��� B@@@�GA@@@��� A��@@�@���@�����#>>=��� DTX�� DT_@�@@@��@@������#ret��� DTa�� DTd@�@@@����'pif_rec��� DTf�� DTm@�@@@@��� DT`�� DTn@��@@@��@@���!f��� DTo�� DTp@�@@@���������#ret��� Es|�� Es@�@@@�����'pif_rec��� Es��� Es�@�@@@@��� Es{�  Es�@��@@@�����������$Some�� F��� F��@��@�� F��� F��@@@�@@@�!v�� F��� F��@�� F��� F��@��@@@��@��% F���& F��@@@@�
@@@@�������!v��1 G���2 G��@�@@@�����'pif_rec��; G���< G��@�@@@@��? G���@ G��@��@@@���������$None��N H���O H��@@�@@@��@��T H���U H��@@@@�	@@@@���������!f��b I���c I��@�@@@��@����'pif_rec��m I���n I��@�@@@@�@@@�����'pif_rec��x I���y I��@�@@@@��| I���} I��@��@@@@��� Esu@@@��A@@��A@@@��� DTT	@@�
@���@�����,get_pif_type��� K���� K��@�@@@��@@���'pif_rec��� K���� K��@�@@@��������#>>=��� R���� R��@�@@@��@������#>>=��� Qqu�� Qqx@�@@@��@������#>>=��� PTX�� PT[@�@@@��@������#>>=��� O9=�� O9@@�@@@��@������#>>=��� N �� N#@�@@@��@�������$None��� M�� M@@�@@@�����'pif_rec��� M�� M@�@@@@��� M�� M@��@@@��@����4is_tunnel_access_pif�� N$� N8@�@@@@�@@@��@����2is_vlan_master_pif�� O9A� O9S@�@@@@�@@@��@����4is_sriov_logical_pif�� PT\� PTp@�@@@@�(@@@��@����2is_bond_master_pif��( Qqy�) Qq�@�@@@@�4@@@��@����/is_physical_pif��4 R���5 R��@�@@@@�@@@@���������$Some��C T���D T��@����!v��K T���L T��@�@@@�@@@��@��R T���S T��@@@@�@@@@����!v��[ U���\ U��@�@@@���������$None��i V���j V��@@�@@@��@��o V���p V��@@@@�	@@@@������%raise��z W���{ W��@�@@@��@�  !�����*Api_errors��� X���� X��@�@@A@����,Server_error��� Y���� Y�	
@��������.internal_error��� Z		�� Z		'@�@@@�����"::��� \	8	H�� ^	�	�A�����������&Printf'sprintf��� \	8	V@�@@@��@���?Cannot calculate PIF type of %s@��� \	8	W�� \	8	x@@@��@������'pif_rec��� ]	y	��� ]	y	�@�@@@���#API(pIF_uuid��� ]	y	��� ]	y	�@�@@@@�2@@@�����"[]��� ^	�	�9A@�:A@@@�<;A@@��� [	(	6=@@@@��� Z		�� _	�	�@��MB@@@�Z@@@�d�� `	�	�@@@@�t@@@@��� L @@@�VA@@@��� K��@@�@���@�����,get_pif_topo��� e
`
d�� e
`
p@�@@@�Đ)__context@�����	 e
`
r�
 e
`
{@�@@@�Đ'pif_rec@����� e
`
}� e
`
�@�@@@��A�����6get_pif_type_till_root��  f
�
��! f
�
�@�@@@��@@���#ret��* f
�
��+ f
�
�@�@@@��@@���'pif_rec��4 f
�
��5 f
�
�@�@@@��@�����%pif_t��@ g
�
��A g
�
�@�@@@������,get_pif_type��K g
�
��L g
�
�@�@@@��@����'pif_rec��V g
�
��W g
�
�@�@@@@�@@@@��[ g
�
�@@������%pif_t��d h
�
��e h
�
�@�@@@������-Tunnel_access��o i
�
��p i
�@����&tunnel��w i
��x i
�@�@@@�@@@@��@�����*tunnel_rec��� j�� j'@�@@@��������"Db&Tunnel*get_record��� j*�� j>@�@@@���)__context������� j@�� jI@�@@@���$self����&tunnel��� jP�� jV@�@@@@�@@@@��� j@@��@�����'pif_ref��� kZf�� kZm@�@@@������*tunnel_rec��� kZp�� kZz@�@@@���#API4tunnel_transport_PIF��� kZ{�� kZ�@�@@@@��� kZb@@��@�����'pif_rec��� l���� l��@�@@@��������"Db#PIF*get_record��� l���� l��@�@@@���)__context������� l���� l��@�@@@���$self����'pif_ref�� l��� l��@�@@@@�@@@@��
 l��@@������6get_pif_type_till_root�� m��� m��@�@@@��@����"::�� m�� m�@��������%pif_t��* m���+ m� @�@@@�����#ret��4 m��5 m�@�@@@@�A@@��9 m���: m�@��@@@��@����'pif_rec��E m�	�F m�@�@@@@�6@@@�@@@@�x@@@��@@@������-VLAN_untagged��T n�U n$@����$vlan��\ n%�] n)@�@@@�@@@@��@�����(vlan_rec��i o-9�j o-A@�@@@��������"Db$VLAN*get_record��x o-D�y o-V@�@@@���)__context������� o-X�� o-a@�@@@���$self����$vlan��� o-h�� o-l@�@@@@�@@@@��� o-5@@��@�����'pif_ref��� pp|�� pp�@�@@@������(vlan_rec��� pp��� pp�@�@@@���#API/vLAN_tagged_PIF��� pp��� pp�@�@@@@��� ppx@@��@�����'pif_rec��� q���� q��@�@@@��������"Db#PIF*get_record��� q���� q��@�@@@���)__context������� q���� q��@�@@@���$self����'pif_ref��� q���� q��@�@@@@�@@@@��� q��@@������6get_pif_type_till_root��� r���� r�@�@@@��@������ r�� r�@��������%pif_t�� r�
� r�@�@@@�����#ret�� r�� r�@�@@@@�A@@�� r�	� r�@��@@@��@����'pif_rec��) r��* r�@�@@@@�5@@@�?@@@�w@@@��@@@������5Network_sriov_logical��8 s &�9 s ;@����%sriov��@ s <�A s A@�@@@�@@@@��@�����)sriov_rec��M tEQ�N tEZ@�@@@��������"Db-Network_sriov*get_record��\ tE]�] tEx@�@@@���)__context������h tEz�i tE�@�@@@���$self����%sriov��u tE��v tE�@�@@@@�@@@@��z tEM@@��@�����'pif_ref��� u���� u��@�@@@������)sriov_rec��� u���� u��@�@@@���#API:network_sriov_physical_PIF��� u���� u��@�@@@@��� u��@@��@�����'pif_rec��� v���� v��@�@@@��������"Db#PIF*get_record��� v���� v��@�@@@���)__context������� v���� v�@�@@@���$self����'pif_ref��� v��� v�@�@@@@�@@@@��� v��@@������6get_pif_type_till_root��� w!�� w7@�@@@��@����ɰ�� w?�� wA@��������%pif_t��� w9�� w>@�@@@�����#ret��� wB�� wE@�@@@@�A@@��	 w8�	 wF@��@@@��@����'pif_rec��	 wG�	 wN@�@@@@�5@@@�?@@@�w@@@��@@@��������+Bond_master��	 xOU�	 xO`@��@��	# xOa�	$ xOb@@@�@@@����(Physical��	, xOe�	- xOm@��@��	1 xOn�	2 xOo@@@�@@@�@@@@������	: ys��	; ys�@��������%pif_t��	F ys{�	G ys�@�@@@�����#ret��	P ys��	Q ys�@�@@@@�A@@�@@@@��	V h
�
�@@@��@@@�%A@@�0	A@@@��	[ f
�
�@@��@�����*pif_t_list��	e {���	f {��@�@@@������6get_pif_type_till_root��	p {���	q {��@�@@@��@����"[]��	{ {���	| {��@@�@@@��@����'pif_rec��	� {���	� {��@�@@@@�@@@@��	� {��@@��@�����*pif_t_list��	� |���	� |��@�@@@�������$List#rev��	� |���	� |��@�@@@��@����*pif_t_list��	� |���	� |��@�@@@@�@@@@��	� |��@@����*pif_t_list��	� }���	� }��@�@@@�@@@�3@@@�d@@@��	� e
`
|A@@��	� e
`
q	A@@���)ocaml.doc
[�������	P This function aims to get a list of types of the PIFs underneath the given PIF @��	� d



�	� d


_@@@@@
f@��	� e
`
`@@�@���@�����6vlan_is_allowed_on_pif��	� ��	� �@�@@@�Đ)__context@�����	� ��	� �"@�@@@�Đ*tagged_PIF@�����	� �$�	� �.@�@@@�Đ'pif_rec@�����
  �0�
 �7@�@@@�Đ(pif_topo@�����
 �9�
 �A@�@@@�Đ#tag@�����
 �C�
 �F@�@@@������(pif_topo��
! �IQ�
" �IY@�@@@���������
+ �_t�
, �_v@��������(Physical��
7 �_c�
8 �_k@����'pif_rec��
? �_l�
@ �_s@�@@@�@@@��@��
F �_w�
G �_x@@@@�A@@�@@@�������"<>��
S �_��
T �_�@�@@@��@������'pif_rec��
` �_~�
a �_�@�@@@���#API1pIF_bond_slave_of��
i �_��
j �_�@�@@@��@�����#Ref$null��
v �_��
w �_�@�@@@@�@@@������%raise��
� �9?�
� �9D@�@@@��@�  !�����*Api_errors��
� �EM�
� �EW@�@@A@����,Server_error��
� �Zd�
� �Zp@��������=cannot_add_vlan_to_bond_slave��
� �q~�
� �q�@�@@@�������
� �q��
� �q�A�����������#Ref)string_of��
� �q�@�@@@��@����*tagged_PIF��
� �q��
� �q�@�@@@@�@@@������	#A@�
$A@@@�&%A@@��
� �q�'@@@@��
� �q}�
� �q�@��6,@@@�C@@@�M�
� ���@@@@�]@@@������	k��
� ����
� ���@��������-VLAN_untagged��
� ����
� ���@��@��
� ����
� ���@@@�@@@��@��
� ����
� ���@@@@�A@@�@@@@������%raise��	 ����
 ���@�@@@��@�  !�����*Api_errors�� ���� ���@�@@A@����,Server_error��  ����! ��@��������+pif_is_vlan��, ���- ��@�@@@��������5 ���6 ��,A�����������#Ref)string_of��E �� @�@@@��@����*tagged_PIF��O ��!�P ��+@�@@@@�@@@�����z�	#A@�
$A@@@�&%A@@��\ ��'@@@@��^ ���_ ��-@��6,@@@�C@@@�M�d ��.@@@@�]@@@������	��m �/C�n �/E@��������-Tunnel_access��y �/3�z �/@@��@��~ �/A� �/B@@@�@@@��@��� �/F�� �/G@@@@�A@@�@@@@������%raise��� �KQ�� �KV@�@@@��@�  !�����*Api_errors��� �W_�� �Wi@�@@A@����,Server_error��� �lv�� �l�@��������4is_tunnel_access_pif��� �l��� �l�@�@@@�������� �l��� �l�A�����������#Ref)string_of��� �l�@�@@@��@����*tagged_PIF��� �l��� �l�@�@@@@�@@@������	#A@�
$A@@@�&%A@@��� �l�'@@@@��� �l��� �l�@��6,@@@�C@@@�M�� ���@@@@�]@@@���@��� ����� ���@@@@����"()��� ����� ���@@�@@@@��� �IK@@@��� �BA@@�� �8A@@�� �/
A@@�� �#A@@�� �A@@@��	 ��@@�@���@�����8tunnel_is_allowed_on_pif�� ���� ���@�@@@�Đ)__context@�����  ����! ���@�@@@�Đ-transport_PIF@�����+ ����, ��	@�@@@��@�����'pif_rec��7 ��8 �@�@@@��������"Db#PIF*get_record��F ��G �-@�@@@���)__context������R �/�S �8@�@@@���$self����-transport_PIF��_ �?�` �L@�@@@@�@@@@��d �@@��������,get_pif_topo��o �PX�p �Pd@�@@@���)__context������{ �Pf�| �Po@�@@@���'pif_rec������� �Pq�� �Px@�@@@@�@@@��������� �~��� �~�@��������(Physical��� �~��� �~�@����'pif_rec��� �~��� �~�@�@@@�@@@��@��� �~��� �~�@@@@�A@@�@@@�������"<>��� �~��� �~�@�@@@��@������'pif_rec��� �~��� �~�@�@@@���#API1pIF_bond_slave_of��� �~��� �~�@�@@@��@�����#Ref$null��� �~��� �~�@�@@@@�@@@������%raise��� �X^�� �Xc@�@@@��@�  !�����*Api_errors��� �dl�� �dv@�@@A@����,Server_error��  �y�� �y�@��������?cannot_add_tunnel_to_bond_slave�� ���� ���@�@@@�����o�� ���� ���A�����������#Ref)string_of��% ���@�@@@��@����-transport_PIF��/ ����0 ���@�@@@@�@@@�����Z�	#A@�
$A@@@�&%A@@��< ���'@@@@��> ����? ���@��6,@@@�C@@@�M�D ���@@@@�]@@@������Ұ�M ����N ���@��������-Tunnel_access��Y ����Z ���@��@��^ ����_ ���@@@�@@@��@��d ����e ���@@@@�A@@�@@@@������%raise��p �	�q �@�@@@��@�  !�����*Api_errors��~ �� �!@�@@A@����,Server_error��� �$.�� �$:@��������4is_tunnel_access_pif��� �$<�� �$P@�@@@��������� �$S�� �$oA�����������#Ref)string_of��� �$`@�@@@��@����-transport_PIF��� �$a�� �$n@�@@@@�@@@������	#A@�
$A@@@�&%A@@��� �$R'@@@@��� �$;�� �$p@��6,@@@�C@@@�M�� �qz@@@@�]@@@������Y��� �{��� �{�@��������5Network_sriov_logical��� �{�� �{�@��@��� �{��� �{�@@@�@@@��@��� �{��� �{�@@@@�A@@�@@@@������%raise��� ����� ���@�@@@��@�  !�����*Api_errors�� ���� ���@�@@A@����,Server_error�� ���� ���@��������	"cannot_add_tunnel_to_sriov_logical�� ���� ��@�@@@�����}��# ��	�$ ��%A�����������#Ref)string_of��3 ��@�@@@��@����-transport_PIF��= ���> ��$@�@@@@�@@@�����h�	#A@�
$A@@@�&%A@@��J ��'@@@@��L ����M ��&@��6,@@@�C@@@�M�R �'0@@@@�]@@@��������[ �1E�\ �1G@��������-VLAN_untagged��g �15�h �1B@��@��l �1C�m �1D@@@�@@@��������u �1`�v �1b@��������5Network_sriov_logical��� �1H�� �1]@��@��� �1^�� �1_@@@�@@@��@��� �1c�� �1d@@@@�A@@�@@@@�*A@@�+@@@@������%raise��� �hn�� �hs@�@@@��@�  !�����*Api_errors��� �t|�� �t�@�@@A@����,Server_error��� ����� ���@��������	*cannot_add_tunnel_to_vlan_on_sriov_logical��� ����� ���@�@@@�����	 ��� ����� ��A�����������#Ref)string_of��� ���@�@@@��@����-transport_PIF��� ����� ��@�@@@@�@@@�����	�	#A@�
$A@@@�&%A@@��� ���'@@@@��� ����� �@��6,@@@�C@@@�M�� �@@@@�]@@@���@��� �!�� �"@@@@����
�� �&,� �&.@@�@@@@�� �PR@@@��@@@��	 ���A@@�� ���	A@@@�� ���@@�@���@�����6bond_is_allowed_on_pif�� �04� �0J@�@@@�Đ)__context@�����$ �0L�% �0U@�@@@�Đ$self@�����/ �0W�0 �0[@�@@@��@�����'pif_rec��; �^d�< �^k@�@@@��������"Db#PIF*get_record��J �^n�K �^@�@@@���)__context������V �^��W �^�@�@@@���$self������b �^��c �^�@�@@@@�@@@@��g �^`@@��������,get_pif_topo��r ����s ���@�@@@���)__context������~ ���� ���@�@@@���'pif_rec������� ����� ���@�@@@@�@@@��������� ����� ���@��������(Physical��� ����� ���@����'pif_rec��� ����� ���@�@@@�@@@��@��� ����� ���@@@@�A@@�@@@�������"<>��� ����� ��@�@@@��@������'pif_rec��� ����� ���@�@@@���#API1pIF_bond_slave_of��� ����� ���@�@@@��@�����#Ref$null��� ���� ��
@�@@@@�@@@��@�����$bond��� ����� ���@�@@@������'pif_rec��� ����� ���@�@@@���#API1pIF_bond_slave_of�� ���� ���@�@@@@�� ���@@��@�����&bonded�� ���� ���@�@@@���  ������&ignore�� ���� ���@�@@@��@��������"Db$Bond(get_uuid��/ ����0 ��@�@@@���)__context������; ���< ��@�@@@���$self����$bond��H ��!�I ��%@�@@@@��L ����M ��&@��!@@@@�3@@@����$true��W �)3�X �)7@@�@@@�=@@@���@��_ �8E�` �8F@@@@����%false��g �8J�h �8O@@�@@@@��k ���@@@@��m ���@@������&bonded��v �Yb�w �Yh@�@@@������%raise��� �nv�� �n{@�@@@��@�  !�����*Api_errors��� �|��� �|�@�@@A@����,Server_error��� �|��� �|�@��������2pif_already_bonded��� �|��� �|�@�@@@�������� �|��� �|�A�����������#Ref)string_of��� �|�@�@@@��@����$self��� �|��� �|�@�@@@@�@@@�����
�	#A@�
$A@@@�&%A@@��� �|�'@@@@��� �|��� �|�@��6,@@@�C@@@�M�� �|�@@@@�]@@@@��� �Y_@@@�t@@@��@@@������n��� ����� ���@��������-VLAN_untagged��� ����� ���@��@��� ����� ���@@@�@@@��@��  ���� ���@@@@�A@@�@@@@������%raise�� ���� ���@�@@@��@�  !�����*Api_errors�� ���� ��@�@@A@����,Server_error��# ��$ �@��������/pif_vlan_exists��/ �,�0 �;@�@@@��������8 �>�9 �fA������������"Db#PIF/get_device_name��J �T@�@@@���)__context������U �V�V �_@�@@@���$self������a �a�b �e@�@@@@�-@@@�������	2A@�
3A@@@�54A@@��n �=6@@@@��p �+�q �g@��E;@@@�R@@@�\�v �hq@@@@�l@@@�������� �r��� �r�@��������-Tunnel_access��� �rv�� �r�@��@��� �r��� �r�@@@�@@@��@��� �r��� �r�@@@@�A@@�@@@@������%raise��� ����� ���@�@@@��@�  !�����*Api_errors��� ����� ���@�@@A@����,Server_error��� ����� ���@��������4is_tunnel_access_pif��� ����� ���@�@@@�����(��� ����� ���A�����������#Ref)string_of��� ���@�@@@��@����$self��� ����� ���@�@@@@�@@@������	#A@�
$A@@@�&%A@@��� ���'@@@@��� ����� ���@��6,@@@�C@@@�M�� ���@@@@�]@@@��������� ��� ��@��������5Network_sriov_logical�� ���� ��@��@�� ��� ��@@@�@@@��@�� ��� ��	@@@@�A@@�@@@@������%raise��) ��* �@�@@@��@�  !�����*Api_errors��7 �!�8 �+@�@@A@����,Server_error��@ �-�A �9@��������4pif_is_sriov_logical��L �;�M �O@�@@@��������U �R�V �eA�����������#Ref)string_of��e �_@�@@@��@����$self��o �`�p �d@�@@@@�@@@�������	#A@�
$A@@@�&%A@@��| �Q'@@@@��~ �:� �f@��6,@@@�C@@@�M�� �g@@@@�]@@@���@��� �hl�� �hm@@@@�������� �qw�� �qy@@�@@@@��� ���@@@�0@@@��� �0VA@@��� �0K	A@@@��� �00@@�@���@�����7sriov_is_allowed_on_pif��� �{�� �{�@�@@@�Đ)__context@������ �{��� �{�@�@@@�Đ,physical_PIF@������ �{��� �{�@�@@@�Đ'pif_rec@������ �{��� �{�@�@@@��@���@��� ����� ���@@@��������,get_pif_type��� ����� ���@�@@@��@����'pif_rec��� ����� ���@�@@@@�@@@������(Physical��� ����� ���@��@��� ����� ���@@@�@@@@����
�� ��� ��@@�@@@���@��	 ��
 �@@@@������%raise�� �� � @�@@@��@�  !�����*Api_errors��! �!+�" �!5@�@@A@����,Server_error��* �8D�+ �8P@��������3pif_is_not_physical��6 �8R�7 �8e@�@@@��������? �8h�@ �8�A�����������#Ref)string_of��O �8u@�@@@��@����,physical_PIF��Y �8v�Z �8�@�@@@@�@@@�������	#A@�
$A@@@�&%A@@��f �8g'@@@@��h �8Q�i �8�@��6,@@@�C@@@�M�n ���@@@@�]@@@@��q ���@@@@��s ���@@�  ��������"<>��� ����� ���@�@@@��@������'pif_rec��� ����� ���@�@@@���#API9pIF_sriov_physical_PIF_of��� ����� ���@�@@@��@����
&��� ����� ���@@�@@@@�@@@������%raise��� ����� ���@�@@@��@�  !�����*Api_errors��� ����� ���@�@@A@����,Server_error��� ����� ���@��������=network_sriov_already_enabled��� ��	�� ��&@�@@@�����2��� ��)�� ��DA�����������#Ref)string_of��� ��6@�@@@��@����,physical_PIF��� ��7�� ��C@�@@@@�@@@������	#A@�
$A@@@�&%A@@��� ��('@@@@�� ��� ��E@��6,@@@�C@@@�M� �FM@@@@�]@@@@��
 ���@@@��������#not�� �PU� �PX@�@@@��@�������$List#mem��$ �PZ�% �Pb@�@@@��@���%sriov@��. �Pc�/ �Pj@@@��@������'pif_rec��: �Pk�; �Pr@�@@@���#API0pIF_capabilities��C �Ps�D �P�@�@@@@��G �PY�H �P�@��'@@@@�7@@@������%raise��T ����U ���@�@@@��@�  !�����*Api_errors��b ����c ���@�@@A@����,Server_error��k ����l ���@��������8pif_is_not_sriov_capable��w ����x ���@�@@@�����ڰ�� ����� ���A�����������#Ref)string_of��� ���@�@@@��@����,physical_PIF��� ����� ���@�@@@@�@@@�����Ű	#A@�
$A@@@�&%A@@��� ���'@@@@��� ����� ���@��6,@@@�C@@@�M�� �� @@@@�]@@@@��� �PR@@@��@@@�B@@@��� �{�A@@��� �{�
A@@��� �{�A@@@��� �{{@@�@���@�����5assert_pif_is_managed��� ��� �@�@@@�Đ)__context@������ ��� �&@�@@@�Đ$self@������ �(�� �,@�@@@��������"<>��� �/X�� �/Z@�@@@��@��������"Db#PIF+get_managed��� �/4�� �/F@�@@@���)__context������ �/H�	 �/Q@�@@@���$self������ �/S� �/W@�@@@@�@@@��@����ɰ� �/[�  �/_@@�@@@@�'@@@������%raise��+ �ei�, �en@�@@@��@�  !�����*Api_errors��9 �eo�: �ey@�@@A@����,Server_error��B �e{�C �e�@��������-pif_unmanaged��N �e��O �e�@�@@@��������W �e��X �e�A�����������#Ref)string_of��g �e�@�@@@��@����$self��q �e��r �e�@�@@@@�@@@�������	#A@�
$A@@@�&%A@@��~ �e�'@@@@��� �e��� �e�@��6,@@@�C@@@�M�� �e�@@@@�]@@@@��� �/1@@@��� �'A@@��� �A@@@��� �
@@�@���@�����5assert_not_vlan_slave��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@�Đ$self@������ ����� ���@�@@@��@�����%vlans��� ����� ���@�@@@��������"Db#PIF1get_VLAN_slave_of��� ����� ��@�@@@���)__context������� ���� ��@�@@@���$self������� ���� ��@�@@@@�@@@@��� ���@@�  ������%debug��� ��� �@�@@@��@���?PIF %s assert_no_vlans = [ %s ]@��� � �� �A@@@��@��������"Db#PIF(get_uuid�� �BG� �BV@�@@@���)__context������ �BX� �Ba@�@@@���$self������& �Bc�' �Bg@�@@@@��* �BF�+ �Bh@�� @@@��@�������&String&concat��: �in�; �i{@�@@@��@���"; @��D �i|�E �i�@@@��@�������$List#map��R �i��S �i�@�@@@��@�����#Ref)string_of��_ �i��` �i�@�@@@��@����%vlans��j �i��k �i�@�@@@@��n �i��o �i�@�� @@@@��s �im�t �i�@��=@@@@��@@@��������"<>��� ����� ���@�@@@��@����%vlans��� ����� ���@�@@@��@������� ����� ���@@�@@@@�@@@�  ������"|>��� ��� �@�@@@��@������"|>��� ���� ��@�@@@��@�������$List#map��� ����� ���@�@@@��@��@@���$self��� ����� ���@�@@@��������"Db$VLAN(get_uuid��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self������� ����� ���@�@@@@�@@@��� ����� ���@���� ���	@@@��@����%vlans�� ���� ���@�@@@@�I@@@��@�������&String&concat�� ��� ��@�@@@��@���"; @��  ���! ��@@@@�@@@@�c@@@��@������%debug��. ��/ �$@�@@@��@���	 PIF has associated VLANs: [ %s ]@��8 �%�9 �G@@@@�@@@@�{@@@������%raise��D �JN�E �JS@�@@@��@�  !�����*Api_errors��R �TZ�S �Td@�@@A@����,Server_error��[ �Tf�\ �Tr@��������5pif_vlan_still_exists��g �Tt�h �T�@�@@@�����ʰ�p �T��q �T�A�����������#Ref)string_of��� �T�@�@@@��@����$self��� �T��� �T�@�@@@@�@@@�������	#A@�
$A@@@�&%A@@��� �T�'@@@@��� �Ts�� �T�@��6,@@@�C@@@�M�� �T�@@@@�]@@@��� ����� ���@���@@@@��� ���@@@��@@@��@@@��� ���	A@@��� ���A@@@��� ���@@�@���@�����>is_device_underneath_same_type��� ����� ���@�@@@�Đ)__context@������ ����� ���@�@@@��@@���$pif1��� ����� ���@�@@@��@@���$pif2��� ����� ���@�@@@��@�����/get_device_info��� ����� ���@�@@@��@@���#pif��� ����� ���@�@@@��@�����#pci��� �� �� �� @�@@@��������"Db#PIF'get_PCI�� �� � �� @�@@@���)__context������ �� � �� $@�@@@���$self����#pif��$ �� +�% �� .@�@@@@�@@@@��) �� @@��@�����'pci_rec��3 � 2 :�4 � 2 A@�@@@��������"Db#PCI3get_record_internal��B � 2 D�C � 2 ^@�@@@���)__context������N � 2 `�O � 2 i@�@@@���$self����#pci��[ � 2 p�\ � 2 s@�@@@@�@@@@��` � 2 6@@���������'pci_rec��l � w |�m � w �@�@@@���*Db_actions-pCI_vendor_id��u � w ��v � w �@�@@@�������'pci_rec��� � w ��� � w �@�@@@���*Db_actions-pCI_device_id��� � w ��� � w �@�@@@@��� � w {�� � w �@��&@@@�3@@@�k@@@��A@@@��� ���@@���������� � ��� � �@�@@@��@������/get_device_info��� � ��� � �@�@@@��@����$pif1��� � ��� � �@�@@@@�@@@��@������/get_device_info��� � ��� � �@�@@@��@����$pif2��� � ��� � �@�@@@@�@@@@�)@@@�?@@@��A@@�A@@��� ���	A@@@��� ���@@�@@