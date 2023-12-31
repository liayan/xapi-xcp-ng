Caml1999M025����            8ocaml/tests/test_host.ml����  (  �   u  |�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������+Test_common��8ocaml/tests/test_host.mlOCH�OCS@�@@A��OCC@@�@�����!D��QU\�QU]@�������%Debug$Make��QU`�QUj@�@@�����@�����$name��)QUw�*QU{@�@@@���0test_xapi_xenops@��1QU~�2QU�@@@@��4QUs@@�@@��7QUl�8QU�@@� �:QU�@@@��<QUU@�@��������!D��HS���IS��@�@@A��LS��@@�@���@�����(add_host��XU���YU��@�@@@��@@���)__context��bU���cU��@�@@@��@@���$name��lU���mU��@�@@@������&ignore��wV���xV��@�@@@��@�������)Xapi_host&create���W����W��@�@@@���)__context�������W����W��@�@@@���$uuid�������$Uuid)to_string���X����X�@�@@@��@�������$Uuid)make_uuid���X���X�@�@@@��@����"()���X���X�@@�@@@@���X���X�@��@@@@���X����X�@��'@@@���*name_label����$name���Y,��Y0@�@@@���0name_description��� @���YC��YE@@@���(hostname���%host2@���YP��YW@@@���'address���)127.0.0.1@���ZXh��ZXs@@@���2external_auth_type��� @��ZX��ZX�@@@���:external_auth_service_name��� @��[���[��@@@���;external_auth_configuration����"[]��[���[��@@�@@@���.license_params������$\���%\��@@�@@@���'edition��� @��0\���1\��@@@���.license_server����$��;\��<\�	@@�@@@���.local_cache_sr�����#Ref$null��J]
!�K]
)@�@@@���,chipset_info����?��V]
8�W]
:@@�@@@���*ssl_legacy����%false��c]
G�d]
L@@�@@@@��gW���h^MR@���@@@@��@@@�A@@�A@@@��oU��@@�	@���@�����*setup_test��{a���|a��@�@@@��@@����ɰ��a����a��@@�@@@��@�����)__context���c����c��@�@@@������2make_test_database���c����c��@�@@@��@�������c����c��@@�@@@@�@@@@���c��@@��@�����$pool���d����d�@�@@@������"|>���d���d�!@�@@@��@��������"Db$Pool'get_all���d���d�@�@@@���)__context�������d���d�@�@@@@�@@@��@�����$List"hd���d�"��d�)@�@@@@�@@@@���d��@@�  ��������"Db$Pool0set_restrictions���e-/� e-G@�@@@���)__context������e-I�e-R@�@@@���$self����$pool��e-Y�e-]@�@@@���%value�������(Features-to_assoc_list��)f^j�*f^�@�@@@��@������3f^��4f^�@@�@@@@��7f^i�8f^�@��@@@@�=@@@�  �  ������!<��Hi���Ii� @�@@@��@������"|>��Ui���Vi��@�@@@��@��������"Db$Host'get_all��fi���gi��@�@@@���)__context������ri���si��@�@@@@�@@@��@�����$List&length���i����i��@�@@@@�@@@��@�����*Xapi_globs4restricted_pool_size���i���i� @�@@@@�,@@@������(add_host���k&*��k&2@�@@@��@����)__context���k&3��k&<@�@@@��@���$host@���k&=��k&C@@@@�@@@���h����lDJ@@@�  ���  !�����(Alcotest���mMO��mMW@�@@A@������%check���mMY��mM^@�@@@��@����#int���mM_��mMb@�@@@@�@@@���mMc@@@��@���7initial number of hosts@���ndh��nd�@@@��@�����*Xapi_globs4restricted_pool_size���nd���nd�@�@@@��@������"|>���o����o��@�@@@��@��������"Db$Host'get_all��o���o��@�@@@���)__context������o���o��@�@@@@�@@@��@�����$List&length��)o���*o��@�@@@@��-o���.o��@��"@@@@�p@@@����)__context��8p���9p��@�@@@�z@@@��@@@�?@@@�O@@@��@@@��A@@@��Ba��
@@�@���@�����:test_host_join_restriction��Nr���Or��@�@@@��@@�������Xr� �Yr�@@�@@@��@�����)__context��ds�es@�@@@������*setup_test��os�ps!@�@@@��@�������ys"�zs$@@�@@@@�@@@@��~s@@�  �������(Alcotest,check_raises���uSU��uSj@�@@@��@���+Should fail@���uSk��uSx@@@��@�����*Api_errors,Server_error���vy~��vy�@���������*Api_errors3license_restriction���w����w��@�@@@�����"::���x����x��A�����������(Features/name_of_feature���x��@�@@@��@�����(Features)Pool_size���x����x��@@�@@@@� @@@�����"[]�
&A@�'A@@@�)(A@@���x��*@@@@���w����y��@��:/@@@���vy}��z�@��M@@@��@��@@����;���{��{@@�@@@������&ignore��{�{@�@@@��@������(add_host��{�{#@�@@@��@����)__context��{$�{-@�@@@��@���'badhost@��${.�%{7@@@@��'{�({8@��@@@@�*@@@��-{�.{9@���1{	
@@@@��@@@��@�����$pool��<}U[�=}U_@�@@@������"|>��G}U}�H}U@�@@@��@��������"Db$Pool'get_all��X}Ub�Y}Uq@�@@@���)__context������d}Us�e}U|@�@@@@�@@@��@�����$List"hd��r}U��s}U�@�@@@@�@@@@��w}UW@@�  ��������"Db$Pool0set_restrictions���~����~��@�@@@���)__context�������~����~��@�@@@���$self����$pool���~����~��@�@@@���%value�������(Features-to_assoc_list���������@�@@@��@�������������A���������(Features)Pool_size�����@@�@@@������A@�	A@@@�A@@�����@@@@���������@��)@@@@�T@@@�  ������(add_host��� A		�� A		&@�@@@��@����)__context��� A		'�� A		0@�@@@��@���(goodhost@��� A		1�� A		;@@@@�@@@���  !�����(Alcotest�� B	>	@� B	>	H@�@@A@������%check�� B	>	J� B	>	O@�@@@��@����#int�� B	>	P� B	>	S@�@@@@�@@@��" B	>	T@@@��@���,one added OK@��* C	U	Y�+ C	U	g@@@��@������!+��6 D	h	��7 D	h	�@�@@@��@�����*Xapi_globs4restricted_pool_size��C D	h	m�D D	h	�@�@@@��@���!1@��M D	h	��N D	h	�@@@@��P D	h	l�Q D	h	�@��@@@��@������"|>��^ E	�	��_ E	�	�@�@@@��@��������"Db$Host'get_all��o E	�	��p E	�	�@�@@@���)__context������{ E	�	��| E	�	�@�@@@@�@@@��@�����$List&length��� E	�	��� E	�	�@�@@@@��� E	�	��� E	�	�@��"@@@@��@@@��@@@�@@@�@@@�@@@�	@@@�@
A@@@���r��@@�@���@�����2test_cvm_exception��� G	�	��� G	�	�@�@@@��@@������� G	�	��� G	�	�@@�@@@��@�����)__context��� H	�	��� H	�	�@�@@@������*setup_test��� H	�	��� H	�	�@�@@@��@������� H	�	��� H	�	�@@�@@@@�@@@@��� H	�	�@@�  �������(Alcotest,check_raises��� J
-
/�� J
-
D@�@@@��@���+Should fail@��� J
-
E�� J
-
R@@@��@�����*Api_errors,Server_error��� K
S
X�� K
S
o@���������*Api_errors3license_restriction�� L
p
y� L
p
�@�@@@�����W�� M
�
�� M
�
�A�����������(Features/name_of_feature�� M
�
�@�@@@��@�����(Features)Pool_size��+ M
�
��, M
�
�@@�@@@@� @@@�����V�	%A@�
&A@@@�('A@@��8 M
�
�)@@@@��: L
p
w�; N
�
�@��8.@@@��? K
S
W�@ O
�
�@��K@@@��@��@@�������L P
�
��M P
�
�@@�@@@������&ignore��W P
�
��X P
�
�@�@@@��@������(add_host��d P
�
��e P
�
�@�@@@��@����)__context��o P
�
��p P
�@�@@@��@���'badhost@��y P
��z P
�@@@@��| P
�
��} P
�@��@@@@�*@@@��� P
�
��� P
�@���� P
�
�
@@@@��@@@��@�����&new_vm��� Q�� Q"@�@@@�������+Test_common'make_vm��� Q%�� Q8@�@@@���)__context������� Q:�� QC@�@@@���*name_label���.My test VM-CVM@��� QP�� Q`@@@��@������� Qa�� Qc@@�@@@@�%@@@@��� Q@@�  ��������"Db"VM5set_is_control_domain��� Rgi�� Rg�@�@@@���)__context������� Rg��� Rg�@�@@@���$self����&new_vm��� Rg��� Rg�@�@@@���%value����$true��� Rg��� Rg�@@�@@@@�*@@@�  ������(add_host�� T��� T��@�@@@��@����)__context�� T��� T��@�@@@��@���(goodhost@�� T��� T��@@@@�@@@���  !�����(Alcotest��* U���+ U��@�@@A@������%check��5 U���6 U�@�@@@��@����#int��@ U��A U�@�@@@@�@@@��E U�@@@��@���,one added OK@��M V	�N V	@@@��@������#��X WA�Y WB@�@@@��@�����*Xapi_globs4restricted_pool_size��e W!�f W@@�@@@��@���!1@��o WC�p WD@@@@��r W �s WE@��@@@��@������"|>��� XFf�� XFh@�@@@��@��������"Db$Host'get_all��� XFK�� XFZ@�@@@���)__context������� XF\�� XFe@�@@@@�@@@��@�����$List&length��� XFi�� XFt@�@@@@��� XFJ�� XFu@��"@@@@��@@@��@@@��@@@��@@@��@@@��	@@@�
A@@@��� G	�	�@@�@���@�����$test��� Zw{�� Zw@�@@@������� \���� ^A����������:test_host_join_restriction@��� \���� \��@@@���%Quick@��� \���� \��@@@�����:test_host_join_restriction��� \���� \��@�@@@@�"�� \��@��@@@�����B��� ]��+A����������<test_host_join_cvm_exception@�� ]��� ]��@@@���%Quick@�� ]��� ]��@@@�����2test_cvm_exception�� ]��� ]�@�@@@@�!� ]�@��@@@�����E��$ ^UA@�VA@@@�-WA@@�.XA@@@�ZYA@@��* [��[@@@@��, Zww]@@�^@@