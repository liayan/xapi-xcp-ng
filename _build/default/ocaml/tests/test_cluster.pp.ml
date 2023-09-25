Caml1999M025����            ;ocaml/tests/test_cluster.ml����  ~{  �  `L  ]������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������,Xapi_cluster��;ocaml/tests/test_cluster.mlO>C�O>O@�@@A��O>>@@�@�����*ocaml.text��������	> NOTE: This mock rpc is also used by tests in test_clustering @��QQQ�QQ�@@@@@����@�����1test_clusterd_rpc��"S���#S��@�@@@�Đ)__context@�����-S���.S��@�@@@��@@���$call��7S���8S��@�@@@��@�����*test_token��CT���DT��@�@@@���*test_token@��KT���LT��@@@@��NT��@@�����������$call��\U���]U��@�@@@���#Rpc$name��eU���fU��@�@@@�������$call��qU���rU��@�@@@���#Rpc&params��zU���{U�@�@@@@��~U���U�	@��&@@@��������&create@���V��V@@@��@���V��V@@@@�@@@@�  !�����#Rpc���W"(��W"+@�@@A@������'success���W"-��W"4@����$true���W"6��W":@@�@@@����(contents���W"<��W"D@�����#Rpc&String���W"F��W"P@�����*test_token���W"Q��W"[@�@@@�@@@����%notif���W"]��W"b@����%false���W"d��W"i@@�@@@@@�E��W"j@@@�G@@@��������������&enable@���Xkp��Xkx@@@���'disable@���Xk{��Xk�@@@�
@@@���'destroy@��Xk��Xk�@@@�@@@���%leave@��Xk��Xk�@@@��Xko�Xk�@��@@@��@��Xk��Xk�@@@@�
@@@@�  !�����#Rpc��!Y���"Y��@�@@A@������'success��,Y���-Y��@�������3Y���4Y��@@�@@@����(contents��<Y���=Y��@�����#Rpc$Null��FY���GY��@@�@@@����%notif��OY���PY��@����y��VY���WY��@@�@@@@@�9�ZY��@@@�;@@@��������+diagnostics@��fZ���gZ��@@@��@��kZ���lZ��@@@@�@@@@�  !�����1Cluster_interface��w[��x[�@�@@A��{[� @@��@�����"id���\$��\&@�@@@���!1� l���\)��\+@@@@���\ @@��@�����"me���]/9��]/;@�@@@������$addr���]/?��]/C@����$IPv4���]/E��]/I@����)192.0.2.1@���]/J��]/U@@@�@@@����"id���]/W��]/Y@�����@@@@@���]/>��]/Z@@@@���]/5@@��@�����.cluster_config���^^h��^^v@�@@@������,cluster_name���`����`��@���-xapi-clusterd@���`����`��@@@����/enabled_members���a����a��@����"::���a����a��A��������"me��a��@�@@@�����"[]�	A@�
A@@@�A@@��a��@@@����'authkey��b���b��@���#foo@��b���b��@@@����.config_version��$c���%c��@���!1� L��,c���-c� @@@����8cluster_token_timeout_ms��4d�5d#@���%20000� L��<d%�=d+@@@����<cluster_token_coefficient_ms��De,6�Ee,R@���$1000� L��Le,T�Me,Y@@@@@��O_y��PfZc@@@@��R^^d@@��@�����$diag��\hmw�]hm{@�@@@������,config_valid��gj���hj��@�������nj���oj��@@�@@@����3live_cluster_config��wk���xk��@����$Some��k����k��@�����.cluster_config���k����k��@�@@@�@@@����3next_cluster_config���l����l��@����$Some���l����l��@�����.cluster_config���l����l�
@�@@@�@@@����4saved_cluster_config���m��m)@����$Some���m+��m/@�����.cluster_config���m0��m>@�@@@�@@@����*is_enabled���n?I��n?S@���� ���n?U��n?Y@@�@@@����+all_members���oZd��oZo@����$Some���oZq��oZu@��������oZw��oZzA��������"me���oZy@�@@@������A@�	A@@@�A@@���oZv@@@�!@@@����'node_id��p{��p{�@����$None��p{��p{�@@�@@@����%token��q���q��@����$Some�� q���!q��@�����*test_token��)q���*q��@�@@@�@@@����0num_times_booted��3r���4r��@���!1@��:r���;r��@@@����*is_quorate��Bs���Cs��@�������Is���Js��@@�@@@����*is_running��Rt���St�@�������Yt��Zt�@@�@@@����0startup_finished��bu�cu"@�������iu$�ju(@@�@@@@@��mi~��nv)2@@@@��phms@@��@�����(contents��zx<F�{x<N@�@@@�������*Rpcmarshal'marshal���yQY��yQk@�@@@��@�������1Cluster_interface+diagnostics���yQl��yQ�@�@@@����#Rpc%Types"ty���yQ���yQ�@�@@@��@����$diag���yQ���yQ�@�@@@@�)@@@@���x<B@@�  !�����#Rpc���{����{��@�@@A@������'success���{����{��@�������{����{��@@�@@@����(contents���{����{��@�����@@@����%notif���{����{��@�������{����{��@@�@@@@@�3��{��@@@�5@@@�@@@@��@@@��@@@�*@@@�d@@@���[��	@@@��������$name��|���|��@�@@@����&params��
|���|��@�@@@@�@@@@�������(Alcotest%failf��}���}��@�@@@��@���6Unexpected RPC: %s(%s)@��"}� �#}�@@@��@����$name��,}��-}�@�@@@��@�������&String&concat��;~'�<~4@�@@@��@���! @��E~5�F~8@@@��@�������$List#map��S~:�T~B@�@@@��@�����#Rpc)to_string��`~C�a~P@�@@@��@����&params��k~Q�l~W@�@@@@��o~9�p~X@�� @@@@��t~&�u~Y@��=@@@@�a@@@@��zU��@@@�.@@@�FA@@��~S��
A@@@���S��@@�@���@�����(test_rpc��� @[_�� @[g@�@@@�Đ)__context@������ @[i�� @[r@�@@@��@@���$call��� @[s�� @[w@�@@@�����������$call��� Az��� Az�@�@@@���#Rpc$name��� Az��� Az�@�@@@�������$call��� Az��� Az�@�@@@���#Rpc&params��� Az��� Az�@�@@@@��� Az��� Az�@��&@@@��������4Cluster_host.destroy@��� B���� B��@@@�����"::��� B���� B��A�������$self��� B��@�@@@�����"[]�	A@�
A@@@�A@@�� B��@@@@�"@@@@�  !�����#API�� C��� C��@�@@A�� C��@@�  �������1Xapi_cluster_host'destroy�� D��� D�	@�@@@���)__context������) D�	�* D�	@�@@@���$self������7ref_Cluster_host_of_rpc��8 D�	�9 D�	-@�@@@��@����$self��C D�	.�D D�	2@�@@@@��G D�	�H D�	3@��@@@@�/@@@�  !�����#Rpc��U E	6	<�V E	6	?@�@@A@������'success��` E	6	A�a E	6	H@�������g E	6	J�h E	6	N@@�@@@����(contents��p E	6	P�q E	6	X@�����#Rpc&String��z E	6	Z�{ E	6	d@���� @��� E	6	e�� E	6	g@@@�@@@����%notif��� E	6	i�� E	6	n@�������� E	6	p�� E	6	u@@�@@@@@�A�� E	6	v@@@�C@@@�|@@@��� C��@@@��������/Cluster.destroy@��� F	w	{�� F	w	�@@@�����İ�� F	w	��� F	w	�A�������(_session��� F	w	�@�@@@�����װ�� F	w	�A�������$self�
�� F	w	�@�@@@�����հ$A@�	%A@@@�&A@@�'A@@@�)(A@@��� F	w	�*@@@@�4+@@@@�  !�����#API��� G	�	��� G	�	�@�@@A��� G	�	�@@�  �������,Xapi_cluster'destroy��� H	�	��� H	�	�@�@@@���)__context������� H	�	��  H	�	�@�@@@���$self������2ref_Cluster_of_rpc�� H	�	�� H	�	�@�@@@��@����$self�� H	�	�� H	�	�@�@@@@�� H	�	�� H	�	�@��@@@@�/@@@�  !�����#Rpc��+ I
 
�, I
 
	@�@@A@������'success��6 I
 
�7 I
 
@�������= I
 
�> I
 
@@�@@@����(contents��F I
 
�G I
 
"@�����#Rpc&String��P I
 
$�Q I
 
.@���� @��X I
 
/�Y I
 
1@@@�@@@����%notif��a I
 
3�b I
 
8@�������h I
 
:�i I
 
?@@�@@@@@�A�l I
 
@@@@�C@@@�|@@@��p G	�	�@@@��������$name��{ J
A
E�| J
A
I@�@@@����&params��� J
A
K�� J
A
Q@�@@@@�@@@@�������(Alcotest%failf��� K
U
[�� K
U
i@�@@@��@���6Unexpected RPC: %s(%s)@��� K
U
j�� K
U
�@@@��@����$name��� K
U
��� K
U
�@�@@@��@�������&String&concat��� L
�
��� L
�
�@�@@@��@���! @��� L
�
��� L
�
�@@@��@�������$List#map��� L
�
��� L
�
�@�@@@��@�����#Rpc)to_string��� L
�
��� L
�
�@�@@@��@����&params��� L
�
��� L
�
�@�@@@@��� L
�
��� L
�
�@�� @@@@��� L
�
��� L
�
�@��=@@@@�a@@@@��� Az|@@@�UA@@��� @[h	A@@@��� @[[@@�@���@�����.create_cluster�� N
�
�� N
�
�@�@@@�Đ)__context@����� N
�
�� N
�
�@�@@@�đ-cluster_stack������)Constants=default_smapiv3_cluster_stack��  O
�
��! O
� @�@@@�����' O
�
��( O
�
�@�@@@�đ1test_clusterd_rpc�����1test_clusterd_rpc��5 P"<�6 P"M@�@@@�����< P"(�= P"9@�@@@�đ-token_timeout����"1.@��I P"a�J P"c@@@�����O P"Q�P P"^@�@@@�đ9token_timeout_coefficient����"1.@��\ Qe��] Qe�@@@�����b Qek�c Qe�@�@@@�đ'network��������+Test_common,make_network��t R���u R��@�@@@���)__context������� R���� R��@�@@@��@����"()��� R���� R��@@�@@@@�@@@���*��� R���� R��@�@@@�đ$host��������'Helpers-get_localhost��� S���� S��@�@@@���)__context������� S���� S��@�@@@@�@@@������ S���� S��@�@@@��@@����9��� S���� S��@@�@@@�  �������'Context,set_test_rpc��� T���� T�@�@@@��@����)__context��� T��� T�@�@@@��@������(test_rpc��� T��� T�!@�@@@���)__context������� T�#�� T�,@�@@@@��� T��� T�-@��@@@@�-@@@�  �������'Context5set_test_clusterd_rpc�� U02� U0O@�@@@��@����)__context�� U0P� U0Y@�@@@��@������1test_clusterd_rpc��# U0[�$ U0l@�@@@���)__context������/ U0n�0 U0w@�@@@@��3 U0Z�4 U0x@��@@@@�-@@@��@�����#pIF��A V{��B V{�@�@@@�������+Test_common(make_pif��N V{��O V{�@�@@@���)__context������Z V{��[ V{�@�@@@���'network������f V{��g V{�@�@@@���$host������r V{��s V{�@�@@@��@������| V{��} V{�@@�@@@@�2@@@@��� V{}@@�  ��������"Db#PIF&set_IP��� W���� W��@�@@@���)__context������� W���� W��@�@@@���$self����#pIF��� W���� W��@�@@@���%value���)192.0.2.1@��� W���� W��@@@@�(@@@�  ��������"Db#PIF6set_currently_attached��� X���� X�@�@@@���)__context������� X��� X� @�@@@���$self����#pIF��� X�'�� X�*@�@@@���%value����<��� X�2�� X�6@@�@@@@�)@@@�  ��������"Db#PIF3set_disallow_unplug��� Y9;�� Y9U@�@@@���)__context������		 Y9W�	
 Y9`@�@@@���$self����#pIF��	 Y9g�	 Y9j@�@@@���%value����s��	" Y9r�	# Y9v@@�@@@@�)@@@�������,Xapi_cluster&create��	0 Zy{�	1 Zy�@�@@@���)__context������	< Zy��	= Zy�@�@@@���#pIF������	H Zy��	I Zy�@�@@@���-cluster_stack������	T Zy��	U Zy�@�@@@���.pool_auto_join�������	` Zy��	a Zy�@@�@@@���-token_timeout������	l [���	m [��@�@@@���9token_timeout_coefficient������	x [���	y [��@�@@@@�L@@@��@@@��@@@��@@@��@@@�v@@@��	@@@��
A@@��	� S��A@@��	� R��A@@��	� QeiA@@��	� P"OA@@��	� P"&A@@��	� O
�
�A@@��	� N
�
�A@@@��	� N
�
�@@�@���@�����:test_create_destroy_status��	� ]���	� ]�@�@@@��@@������	� ]��	� ]�@@�@@@��@�����)__context��	� ^�	� ^%@�@@@�������+Test_common2make_test_database��	� ^(�	� ^F@�@@@��@����A��	� ^G�	� ^I@@�@@@@�@@@@��	� ^@@��@�����'cluster��	� _MS�	� _MZ@�@@@������.create_cluster��	� _M]�	� _Mk@�@@@���)__context������	� _Mm�	� _Mv@�@@@��@����q��	� _Mw�	� _My@@�@@@@�@@@@��
  _MO@@������,pool_destroy��
	 `}�

 `}�@�@@@���)__context������
 `}��
 `}�@�@@@���$self����'cluster��
" `}��
# `}�@�@@@@�@@@�'@@@�X@@@��A@@@��
* ]��@@�	@���@�����+test_enable��
6 b���
7 b��@�@@@��@@�������
@ b���
A b��@@�@@@��@�����)__context��
L c���
M c��@�@@@�������+Test_common2make_test_database��
Y c���
Z c��@�@@@��@����ٰ�
c c���
d c��@@�@@@@�@@@@��
h c��@@��@�����'cluster��
r d���
s d��@�@@@������.create_cluster��
} d��
~ d�@�@@@���)__context������
� d��
� d�@�@@@��@����	��
� d��
� d�@@�@@@@�@@@@��
� d��@@�  ���������/Xapi_clustering1find_cluster_host��
� gTZ�
� gT{@�@@@���)__context������
� gT}�
� gT�@�@@@���$host�  !�����'Helpers��
� h���
� h��@�@@A@������-get_localhost��
� h���
� h��@�@@@���)__context������
� h���
� h��@�@@@@�@@@��
� h��@@@@�:@@@������$Some��
� j���
� j��@����$self��
� j���
� j��@�@@@�@@@@�������1Xapi_cluster_host&enable��
� k���  k��@�@@@���)__context������ k��� k��@�@@@���$self������ k��� k�@�@@@@�@@@������$None��# l�$ l
@@�@@@@�������(Alcotest$fail��0 m�1 m!@�@@@��@���	*Couldn't find freshly-created cluster_host@��: m"�; mN@@@@�@@@@��> fJL�? nOR@���B fJN@@@������,pool_destroy��K oUW�L oUc@�@@@���)__context������W oUe�X oUn@�@@@���$self����'cluster��d oUu�e oU|@�@@@@�@@@�+@@@��@@@�@@@�,A@@@��m b��	@@�
@���@�����7test_invalid_parameters��y q~��z q~�@�@@@��@@�������� q~��� q~�@@�@@@��@�����)__context��� r���� r��@�@@@�������+Test_common2make_test_database��� r���� r��@�@@@��@������� r���� r��@@�@@@@�@@@@��� r��@@��@�����-cluster_stack��� s���� s��@�@@@���5invalid_cluster_stack@��� s���� s�@@@@��� s��@@�  �������(Alcotest,check_raises��� t	�� t@�@@@��@���	BCluster.create should fail upon receiving an invalid cluster stack@��� u#�� ug@@@��@�  !�����*Api_errors��� vhl�� vhv@�@@A@����,Server_error��� vhx�� vh�@��������5invalid_cluster_stack��� vh��� vh�@�@@@�����
�� vh�� vh�A��������-cluster_stack�� vh�@�@@@�����
�A@�	A@@@�A@@�� vh�@@@@�� vh�� vh�@��&@@@�3@@@�=�! vh�@@@��@��@@�������+ w���, w��@@�@@@������"|>��6 w���7 w��@�@@@��@������.create_cluster��C w���D w��@�@@@���)__context������O w���P w��@�@@@���-cluster_stack������[ w���\ w��@�@@@��@����۰�e w���f w��@@�@@@@�&@@@��@����&ignore��q w���r w��@�@@@@�2@@@��v w���w w��@���z w��	@@@@��@@@�  �������(Alcotest,check_raises��� x���� x�@�@@@��@���	!token_timeout < minimum threshold@��� x��� x�2@@@��@�  !�����*Api_errors��� y37�� y3A@�@@A@����,Server_error��� y3C�� y3O@��������-invalid_value��� y3Q�� y3^@�@@@�����
Ȱ�� y3a�� y3xA�������-token_timeout@��� y3p@@@�����
ڰ�� y3rA�������#0.5@�
�� y3w@@@�����
ְ"A@�#A@@@�$A@@�%A@@@�'&A@@��� y3`(@@@@��� y3P�� y3y@��7-@@@�D@@@�N�� y3z@@@��@��@@����m��� z{��� z{�@@�@@@������"|>�� z{�� z{�@�@@@��@������.create_cluster�� z{�� z{�@�@@@���)__context������ z{�� z{�@�@@@���-token_timeout���#0.5@��' z{��( z{�@@@��@�������0 z{��1 z{�@@�@@@@�%@@@��@����&ignore��< z{��= z{�@�@@@@�1@@@��A z{�B z{�@���E z{�	@@@@��@@@�������(Alcotest,check_raises��Q {���R {��@�@@@��@���	-token_timeout_coefficient < minimum threshold@��[ {���\ {�@@@��@�  !�����*Api_errors��h |�i |@�@@A@����,Server_error��q } &�r } 2@��������-invalid_value��} } 4�~ } A@�@@@��������� } D�� } gA�������9token_timeout_coefficient@��� } _@@@��������� } aA�������#0.6@�
�� } f@@@�������"A@�#A@@@�$A@@�%A@@@�'&A@@��� } C(@@@@��� } 3�� } h@��7-@@@�D@@@�N�� ~in@@@��@��@@����6��� ox�� oz@@�@@@������"|>��� �~��� �~�@�@@@��@������.create_cluster��� �~��� �~�@�@@@���)__context������� �~��� �~�@�@@@���9token_timeout_coefficient���#0.6@��� �~��� �~�@@@��@����o��� �~��� �~�@@�@@@@�%@@@��@����&ignore�� �~�� �~�@�@@@@�1@@@��
 os� ���@��� ot	@@@@��@@@��@@@�E@@@�S@@@�i	@@@��
A@@@�� q~~@@�@���@�����3test_create_cleanup��" ����# ���@�@@@��@@�������, ����- ���@@�@@@��@�����)__context��8 ����9 ���@�@@@�������+Test_common2make_test_database��E �� �F ��@�@@@��@����Ű�O ���P ��!@@�@@@@�@@@@��T ���@@��@�����1test_clusterd_rpc��^ �%+�_ �%<@�@@@�Đ)__context@�����i �%>�j �%G@�@@@��@@���$call��s �%H�t �%L@�@@@�����������$call��� �OZ�� �O^@�@@@���#Rpc$name��� �O_�� �Og@�@@@�������$call��� �Oi�� �Om@�@@@���#Rpc&params��� �On�� �Ox@�@@@@��� �OY�� �Oy@��&@@@��������&create@��� ���� ��@@@��@��� ���� ��@@@@�@@@@�  !�����#Rpc��� ����� ���@�@@A@������'success��� ����� ���@�������� ����� ���@@�@@@����(contents��� ����� ���@�������*Rpcmarshal'marshal��� ����� ���@�@@@��@�������1Cluster_interface%error��� ����� ��@�@@@����#Rpc%Types"ty�� ��� ��#@�@@@��@�  !�����1Cluster_interface�� �$4� �$E@�@@A@����-InternalError�� �$G� �$T@����5Cluster.create failed@��$ �$U�% �$l@@@�@@@��( �$m@@@@�?@@@����%notif��0 �nz�1 �n@����Z��7 �n��8 �n�@@�@@@@@�w�; ���@@@�y@@@������@��D ����E ���@@@��@��I ����J ���@@@@�@@@@�  !�����#Rpc��U ����V ���@�@@A@������'success��` ����a ���@�������g ����h ���@@�@@@����(contents��p ����q ���@�����#Rpc$Null��z ����{ ���@@�@@@����%notif��� ����� ���@�������� ����� ���@@�@@@@@�9�� ���@@@�;@@@@��� �OS@@@� A@@��� �%=A@@@��� �%'	@@���  ������"|>��� ��'�� ��)@�@@@��@������.create_cluster��� ����� ��@�@@@���)__context������� ���� ��@�@@@���1test_clusterd_rpc������� ���� ��#@�@@@��@����H��� ��$�� ��&@@�@@@@�&@@@��@����&ignore��� ��*�� ��0@�@@@@�2@@@�������(Alcotest$fail��� �37�� �3D@�@@@��@���	!Cluster.create should have failed@��� �3E�� �3h@@@@�@@@�J@@@�����!e�� �ip� �iq@�@@@@�  ������-print_endline�� �uy� �u�@�@@@��@�������)ExnHelper-string_of_exn�� �u�� �u�@�@@@��@����!e��( �u��) �u�@�@@@@��, �u��- �u�@��@@@@�#@@@�  ���  !�����(Alcotest��> ����? ���@�@@A@������%check��I ����J ���@�@@@��@������%slist��V ����W ���@�@@@��@�������4Alcotest_comparators#ref��e ����f ���@�@@@��@������o ����p ���@@�@@@@��s ����t ���@��@@@��@����'compare�� ����� ���@�@@@@��� ����� ���@��1@@@@�?@@@�K�� ���@@@��@���	 Cluster refs should be destroyed@��� ����� ��@@@��@����"[]��� ���� ��@@�@@@��@��������"Db'Cluster'get_all��� ��� �-@�@@@���)__context������� �/�� �8@�@@@@��� ��� �9@��@@@@��@@@���  !�����(Alcotest��� �<@�� �<H@�@@A@������%check��� �<J�� �<O@�@@@��@������%slist��� �<Q�� �<V@�@@@��@�������4Alcotest_comparators#ref��� �<X�� �<p@�@@@��@����	s��� �<q�� �<s@@�@@@@�� �<W� �<t@��@@@��@����'compare�� �<u� �<|@�@@@@�� �<P� �<}@��1@@@@�?@@@�K� �<~@@@��@���	%Cluster_host refs should be destroyed@�� ���  ��@@@��@�������( ���) ��@@�@@@��@��������"Db,Cluster_host'get_all��9 ����: ���@�@@@���)__context������E ����F ���@�@@@@��I ����J ���@��@@@@��@@@�@@@�B@@@@��Q ���@@@��	@@@� 
@@@�)A@@@��V ���@@�@���@�����1make_cluster_host��b ����c ���@�@@@�Đ)__context@�����m ����n ���@�@@@�Đ'cluster@�����x ����y ��@�@@@�đ'network��������+Test_common,make_network��� ��� �.@�@@@���)__context������� �0�� �9@�@@@��@����
��� �:�� �<@@�@@@@�@@@���)��� ��� �@�@@@��@@����
(��� �>�� �@@@�@@@��@�����$host��� �CI�� �CM@�@@@�������+Test_common)make_host��� �CP�� �Ce@�@@@���)__context������� �Cg�� �Cp@�@@@��@����
W��� �Cq�� �Cs@@�@@@@�@@@@��� �CE@@��@�����#pIF��� �w}�� �w�@�@@@�������+Test_common(make_pif��� �w��� �w�@�@@@���)__context������	 �w��
 �w�@�@@@���$host������ �w�� �w�@�@@@���'network������! �w��" �w�@�@@@��@����
���+ �w��, �w�@@�@@@@�2@@@@��0 �wy@@�������+Test_common1make_cluster_host��; ����< ���@�@@@���)__context������G ����H ���@�@@@���'cluster������S ����T ���@�@@@���$host������_ ����` ���@�@@@���#pIF������k ����l ���@�@@@��@����
��u ����v ���@@�@@@@�>@@@�J@@@��@@@��A@@��} �
A@@�� ���
A@@��� ���A@@@��� ���@@�@���@�����9test_get_network_succeeds��� ����� ��@�@@@��@@������� ���� ��@@�@@@��@�����)__context��� �$�� �-@�@@@�������+Test_common2make_test_database��� �0�� �N@�@@@��@����2��� �O�� �Q@@�@@@@�@@@@��� � @@��@�����'network��� �U[�� �Ub@�@@@�������+Test_common,make_network��� �Ue�� �U}@�@@@���)__context������� �U�� �U�@�@@@��@����d��� �U��� �U�@@�@@@@�@@@@��� �UW@@��@�����'cluster��� ����� ���@�@@@������.create_cluster�� ����	 ���@�@@@���)__context������ ���� ���@�@@@���'network������  ����! ���@�@@@��@�������* ����+ ���@@�@@@@�&@@@@��/ ���@@�  �������(Alcotest%check��< ����= ���@�@@@��@�  !�����4Alcotest_comparators��J ����K ���@�@@A@������#ref��U ����V ���@�@@@��@����հ�_ ����` ���@@�@@@@�@@@��d ���@@@��@���0One cluster_host@��l ����m ��@@@��@����'network��v ���w ��@�@@@��@�������,Xapi_cluster+get_network��� ��� �7@�@@@���)__context������� �9�� �B@�@@@���$self����'cluster��� �I�� �P@�@@@@��� ��� �Q@��!@@@@�k@@@��@�����@��� ����� ���@@@�����#API0ref_Cluster_host��� ����� ���@@�@@@��� ����� ���@@@������1make_cluster_host��� ����� ���@�@@@���)__context������� ����� ���@�@@@���'network������� ����� ���@�@@@���'cluster������� ����� ���@�@@@��@����k��� ����� ���@@�@@@@�2@@@@��� ���@@�������(Alcotest%check�� ���� ��@�@@@��@�  !�����4Alcotest_comparators�� �� � @�@@A@������#ref�� �"� �%@�@@@��@�������( �&�) �(@@�@@@@�@@@��- �)@@@��@���	!All cluster_hosts on same network@��5 �*.�6 �*Q@@@��@����'network��? �*R�@ �*Y@�@@@��@�������,Xapi_cluster+get_network��N �Z_�O �Zw@�@@@���)__context������Z �Zy�[ �Z�@�@@@���$self����'cluster��g �Z��h �Z�@�@@@@��k �Z^�l �Z�@��!@@@@�k@@@�w@@@�6@@@�D@@@��@@@��	@@@��
A@@@��w ���@@�@���@�����6test_get_network_fails��� ����� ���@�@@@��@@������� ����� ���@@�@@@��@�����)__context��� ����� ���@�@@@�������+Test_common2make_test_database��� ����� ���@�@@@��@����&��� ����� ���@@�@@@@�@@@@��� ���@@��@�����'network��� ����� ���@�@@@�������+Test_common,make_network��� ����� ��@�@@@���)__context������� ���� ��@�@@@��@����X��� ���� �� @@�@@@@�@@@@��� ���@@��@�����'cluster��� �$*�� �$1@�@@@������.create_cluster��� �$4�� �$B@�@@@���)__context������ �$D�	 �$M@�@@@���'network������ �$O� �$V@�@@@��@������� �$W� �$Y@@�@@@@�&@@@@��# �$&@@��@�����6internal_network_error��- �]c�. �]y@�@@@����'Failure��6 �|��7 �|�@�������!^��A �|��B �|�@�@@@��@���	$No common network found for cluster @��K �|��L �|�@@@��@�������#Ref)string_of��Y �|��Z �|�@�@@@��@����'cluster��d �|��e �|�@�@@@@�@@@@��i �|��j �|�@��"@@@�8@@@@��o �]_@@��@�����$host��y ����z ���@�@@@�������'Helpers-get_localhost��� ����� ���@�@@@���)__context������� ����� ���@�@@@@�@@@@��� ���@@�  ���������/Xapi_clustering1find_cluster_host��� ��	�� ��*@�@@@���)__context������� ��,�� ��5@�@@@���$host������� ��7�� ��;@�@@@@�@@@������$Some��� �AE�� �AI@����$self��� �AJ�� �AN@�@@@�@@@@��������"Db,Cluster_host'destroy��� �RX�� �Ro@�@@@���)__context������� �Rq�� �Rz@�@@@���$self������� �R|�� �R�@�@@@@�@@@������$None�� ���� ���@@�@@@@�������(Alcotest%failf�� ���� ���@�@@@��@���	%No cluster_host found on localhost %s@�� ���� ���@@@��@�������#Ref)string_of��+ ����, ���@�@@@��@����$host��6 ����7 ���@�@@@@��: ����; ���@��@@@@�,@@@@��@ ���A ���@���D ��
@@@�  �������(Alcotest,check_raises��Q ����R ���@�@@@��@���	$No cluster_host exists, only cluster@��[ ����\ ��#@@@��@����'Failure��e �$)�f �$0@�������!^��p �$X�q �$Y@�@@@��@���	#No cluster_hosts found for cluster @��z �$2�{ �$W@@@��@�������#Ref)string_of��� �$Z�� �$g@�@@@��@����'cluster��� �$h�� �$o@�@@@@�@@@@��� �$1�� �$p@��"@@@��� �$(�� �$q@��<@@@��@��@@���� ��� �r{�� �r}@@�@@@������"|>��� �r��� �r�@�@@@��@�������,Xapi_cluster+get_network��� �r��� �r�@�@@@���)__context������� �r��� �r�@�@@@���$self����'cluster��� �r��� �r�@�@@@@�@@@��@����&ignore��� �r��� �r�@�@@@@�)@@@��� �rv�� �r�@���� �rw	@@@@��@@@�  �  ���!i��� ����� ���@�@@@���!0@�� ���� ���@@@���!1@�� ��� ��@@@@������"|>�� �5� �7@�@@@��@������1make_cluster_host��# ��$ �@�@@@���)__context������/ ��0 �(@�@@@���'cluster������; �*�< �1@�@@@��@�������E �2�F �4@@�@@@@�&@@@��@����&ignore��Q �8�R �>@�@@@@�2@@@��V ����W �?E@@@�������(Alcotest,check_raises��b �HJ�c �H_@�@@@��@���	#Cluster_hosts on different networks@��l �H`�m �H�@@@��@����6internal_network_error��v ����w ���@�@@@��@��@@�������� ����� ���@@�@@@������"|>��� ����� ���@�@@@��@�������,Xapi_cluster+get_network��� ����� ���@�@@@���)__context������� ����� ���@�@@@���$self����'cluster��� ����� ���@�@@@@�@@@��@����&ignore��� ����� ���@�@@@@�)@@@��� ����� ���@���� ���	@@@@�j@@@�w@@@�}@@@��@@@�9	@@@�b
@@@��@@@��@@@�@@@�HA@@@��� ���@@�@���@�����$test��� ����� ���@�@@@�������� �  �� �!x!{A����������	"test_create_destroy_service_status@��� �  �� �  +@@@���%Quick@��� �  -�  �  3@@@�����:test_create_destroy_status�� �  5�	 �  O@�@@@@�"� �  P@��@@@����� �� � Q U+A����������+test_enable@��" � Q V�# � Q c@@@���%Quick@��) � Q e�* � Q k@@@�����+test_enable��2 � Q m�3 � Q x@�@@@@�!�6 � Q y@��@@@�����J��? � z ~UA����������7test_invalid_parameters@��L � z �M � z �@@@���%Quick@��S � z ��T � z �@@@�����7test_invalid_parameters��\ � z ��] � z �@�@@@@�!�` � z �@��@@@�����t��i � � �A����������3test_create_cleanup@��v � � ��w � � �@@@���%Quick@��} � � ��~ � � �@@@�����3test_create_cleanup��� � � ��� � � �@�@@@@�!�� � � �@��@@@��������� � � ��A����������9test_get_network_succeeds@��� � � ��� � �!@@@���%Quick@��� � �!�� � �!@@@�����9test_get_network_succeeds��� � �!�� � �!7@�@@@@�!�� � �!8@��@@@�����Ȱ�� �!9!=�A����������6test_get_network_fails@��� �!9!>�� �!9!V@@@���%Quick@��� �!9!X�� �!9!^@@@�����6test_get_network_fails��� �!9!`�� �!9!v@�@@@@�!�� �!9!w@��@@@�����ݰ�� �!x!z�A@��A@@@�-�A@@�. A@@@�YA@@�ZA@@@��A@@��A@@@��A@@��A@@@��A@@��A@@@�
	A@@��� ��  @@@@��� ���@@�@@