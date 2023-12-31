Caml1999M025����   $      
   	"ocaml/tests/test_pool_db_backup.ml����  #J  �  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!T��	"ocaml/tests/test_pool_db_backup.mlOCJ�OCK@����+Test_common��	OCN�
OCY@�@@@��OCC@�@���@�����4test_prepare_restore��Q[_�Q[s@�@@@��@@����"()��$Q[t�%Q[v@@�@@@��@�����,make_context��0Ry�1Ry�@�@@@��@@���$mac1��:Ry��;Ry�@�@@@��@@���$mac2��DRy��ERy�@�@@@��@@���)host_uuid��NRy��ORy�@�@@@��@@���)dom0_uuid��XRy��YRy�@�@@@��@�����)__context��dS���eS��@�@@@�������!T2make_test_database��qS���rS��@�@@@��@����X��{S���|S��@@�@@@@�@@@@���S��@@��@�����&master���T����T��@�@@@�������$List"hd���T����T��@�@@@��@��������"Db$Host'get_all���T����T�@�@@@���)__context�������T���T�@�@@@@���T����T�@��@@@@�&@@@@���T��@@�  ��������"Db$Host(set_uuid���U��U(@�@@@���)__context�������U*��U3@�@@@���$self����&master���U:��U@@�@@@���%value����)host_uuid���UH��UQ@�@@@@�*@@@�  �������$List$iter��VTX�VTa@�@@@��@��@@���$self��Wbm�Wbq@�@@@��������"Db"VM(set_uuid��Wbu�Wb�@�@@@���)__context������*Wb��+Wb�@�@@@���$self������6Wb��7Wb�@�@@@���%value����)dom0_uuid��CWb��DWb�@�@@@@�)@@@��HWbh�IWb�@���LWbi	@@@��@��������"Db$Host0get_resident_VMs��[X���\X��@�@@@���)__context������gX���hX��@�@@@���$self����&master��tX���uX��@�@@@@��xX���yX��@��!@@@@�z@@@��@�����%slave���Y����Y��@�@@@�������!T)make_host���Y����Y��@�@@@���)__context�������Y����Y�@�@@@���*name_label���%slave@���Y���Y�@@@��@��������Y���Y�@@�@@@@�%@@@@���Y��@@��@�����.management_net���Z#+��Z#9@�@@@�������!T,make_network���[<B��[<P@�@@@���)__context�������[<R��[<[@�@@@���*name_label���2management network@���[<h��[<|@@@��@����ΰ��[<}��[<@@�@@@@�%@@@@���Z#'@@��@�����@���]��� ]��@@@�����#API'ref_PIF��	]���
]��@@�@@@��]���]��@@@�������!T(make_pif��^���^��@�@@@���)__context������%^���&^��@�@@@���'network����.management_net��2^���3^��@�@@@���&device���$eth0@��>^���?^��@@@���$host����&master��J^���K^��@�@@@���*management����$true��W_��X_�@@�@@@���#mAC����$mac1��d_��e_�@�@@@��@����K��n_��o_�@@�@@@@�Y@@@@��s]��@@��@�����@��|a )�}a *@@@�����#API'ref_PIF���a -��a 8@@�@@@���a (��a 9@@@�������!T(make_pif���b<B��b<L@�@@@���)__context�������b<N��b<W@�@@@���'network����.management_net���b<a��b<o@�@@@���&device���$eth0@���b<x��b<~@@@���$host����%slave���b<���b<�@�@@@���*management����}���c����c��@@�@@@���#mAC����$mac2���c����c��@�@@@��@����ǰ��c����c��@@�@@@@�X@@@@���a $@@����)__context���e����e��@�@@@�@@@��@@@�@@@�D@@@��@@@�2@@@�B	@@@��
@@@��A@@��A@@��A@@��A@@@��Ry{@@��@�����4my_installation_uuid��g���g��@�@@@�������.Xapi_inventory&lookup��h���h�@�@@@��@�����.Xapi_inventory2_installation_uuid��*h��+h�#@�@@@@�@@@@��/g��@@��@�����/my_control_uuid��9j)/�:j)>@�@@@�������.Xapi_inventory&lookup��FkAE�GkAZ@�@@@��@�����.Xapi_inventory4_control_domain_uuid��SkA[�TkA~@�@@@@�@@@@��Xj)+@@��@�����+old_context��bm���cm��@�@@@������,make_context��mm���nm��@�@@@��@���!1@��wm���xm��@@@��@���!2@���m����m��@@@��@����4my_installation_uuid���m����m��@�@@@��@����/my_control_uuid���m����m��@�@@@@�,@@@@���m��@@��@�����+new_context���n����n��@�@@@������,make_context���n����n��@�@@@��@���!a@���n����n��@@@��@���!b@���n����n��@@@��@���)host-uuid@���n����n�	@@@��@���)dom0-uuid@���n�
��n�@@@@�(@@@@���n��@@�  �������.Pool_db_backup<prepare_database_for_restore���o��oF@�@@@���+old_context�������oH��oS@�@@@���+new_context�������oU��o`@�@@@@�@@@��@�����)all_hosts��
pci�pcr@�@@@��������"Db$Host'get_all��pcu�pc�@�@@@���)__context����+new_context��&pc��'pc�@�@@@@�@@@@��+pce@@�  ���  !�����(Alcotest��9r���:r��@�@@A@������%check��Dr���Er��@�@@@��@����#int��Or���Pr��@�@@@@�@@@��Tr��@@@��@���	+test_prepare_restore: should only be 1 host@��\s���]s�"@@@��@�������$List&length��js�$�ks�/@�@@@��@����)all_hosts��us�0�vs�9@�@@@@��ys�#�zs�:@��@@@��@���!1@���s�;��s�<@@@@�N@@@��@�����&master���t?E��t?K@�@@@�������$List"hd���t?N��t?U@�@@@��@����)all_hosts���t?V��t?_@�@@@@�@@@@���t?A@@��@�����#pif���v����v��@�@@@�������$List"hd���v����v��@�@@@��@��������"Db$Host(get_PIFs���v����v��@�@@@���)__context����+new_context���v����v��@�@@@���$self����&master���v����v��@�@@@@���v����v��@��"@@@@�4@@@@���v��@@��@�����#mac��w���w��@�@@@��������"Db#PIF'get_MAC��w���w�	@�@@@���)__context����+new_context��w�	� w�	@�@@@���$self����#pif��,w�	&�-w�	)@�@@@@�@@@@��1w��@@�  ���  !�����(Alcotest��?x	-	/�@x	-	7@�@@A@������%check��Jx	-	9�Kx	-	>@�@@@��@����&string��Ux	-	?�Vx	-	E@�@@@@�@@@��Zx	-	F@@@��@���	+test_prepare_restore: PIF should have MAC a@��bx	-	G�cx	-	t@@@��@����#mac��lx	-	u�mx	-	x@�@@@��@���!a@��vx	-	y�wx	-	|@@@@�:@@@��@�����)host_uuid���z	�	���z	�	�@�@@@��������"Db$Host(get_uuid���z	�	���z	�	�@�@@@���)__context����+new_context���z	�	���z	�	�@�@@@���$self����&master���z	�	���z	�	�@�@@@@�@@@@���z	�	�@@�  ���  !�����(Alcotest���{

��{

@�@@A@������%check���{

��{

@�@@@��@����&string���{

��{

@�@@@@�@@@���{

@@@��@���	'test_prepare_restore: master uuid wrong@���|

 ��|

I@@@��@����)host_uuid���|

J��|

S@�@@@��@����4my_installation_uuid���|

T��|

h@�@@@@�<@@@��@�����$dom0��~
�
��~
�
�@�@@@�������$List"hd��
�
��
�
�@�@@@��@��������"Db$Host0get_resident_VMs��!
�
��"
�
�@�@@@���)__context����+new_context��.
�
��/
�
�@�@@@���$self����&master��;
�
��<
�
�@�@@@@��?
�
��@
�
�@��"@@@@�4@@@@��E~
�
�@@��@�����)dom0_uuid��O A�P A@�@@@��������"Db"VM(get_uuid��^ A�_ A!@�@@@���)__context����+new_context��k A-�l A8@�@@@���$self����$dom0��x A?�y AC@�@@@@�@@@@��} A@@���  !�����(Alcotest��� BGI�� BGQ@�@@A@������%check��� BGS�� BGX@�@@@��@����&string��� BGY�� BG_@�@@@@�@@@��� BG`@@@��@���	,test_prepare_restore: master dom0 uuid wrong@��� Cae�� Ca�@@@��@����)dom0_uuid��� Ca��� Ca�@�@@@��@����/my_control_uuid��� Ca��� Ca�@�@@@@�<@@@�I@@@��@@@�
@@@�@@@��@@@��	@@@��
@@@� @@@��@@@��@@@��@@@��@@@�8@@@�{@@@��@@@��@@@��A@@@���Q[[@@�@���@�����$test��� E���� E��@�@@@����"::��� E���� E��A����������4test_prepare_restore@��� E���� E��@@@���%Quick@�� E��� E��@@@�����4test_prepare_restore��
 E��� E��@�@@@@�"� E��@��@@@�����"[]�
+A@�,A@@@�.-A@@�� E��/@@@@�� E��1@@�2@@