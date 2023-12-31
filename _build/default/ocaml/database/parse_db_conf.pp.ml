Caml1999M025����          	   ?ocaml/database/parse_db_conf.ml����  Wh  �  C�  A������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����������/Xapi_stdext_std*Xstringext��?ocaml/database/parse_db_conf.mlP���P��@�@@A��P��@@�@��������0Xapi_stdext_unix��Q���Q��@�@@A��Q��@@�@�����!D��S��S�@�������%Debug$Make��*S��+S�@�@@�����@�����$name��9S��:S�!@�@@@���-parse_db_conf@��AS�$�BS�3@@@@��DS�@@�@@��GS��HS�7@@� �JS�8@@@��LS��@�@��������!D��XU:?�YU:@@�@@A��\U::@@�@���A�    �2db_connection_mode��fWBG�gWBY@@@��Р+Write_limit��nWB\�oWBg@�@@�@@�Р(No_limit��wWBj�xWBr@�@@��{WBh@@@A@@��}WBB@@�@���A�    �-db_connection���Yty��Yt�@@@��Р$path���Z����Z��@@����&string���Z����Z��@@�@@@���[��@@�Р$mode���[����[��@@����2db_connection_mode���[����[��@@�@@@���\��@@�Р(compress���\����\��@@����$bool���\����\��@@�@@@���]��@@�Р2write_limit_period���]����]��@@����#int���]����]��@@�@@@���^��@@�Р8write_limit_write_cycles���^����^�@@����#int���^���^�	@@�@@@���_
@@�Р4is_on_remote_storage���_
��_
"@@����$bool���_
$��_
(@@�@@@���`),@@�Р0other_parameters���`)-��`)=@@����$list��`)Q�`)U@��������&string��`)@�`)F@@�@@@�����&string��`)I�`)O@@�@@@@�@@@@��`)?@@@�%� aVY@@�Р5last_generation_count��&aVb�'aVw@A�����*Generation!t��0aVy�1aV�@@�@@@��4aVZ@@@A@@��6Ytt�7b��@@�@���@�����:default_write_limit_period��Cd���Dd��@�@@@���%21600@��Kd���Ld��@@@@��Nd��@@�@���@�����4default_write_cycles��Zf���[f��@�@@@���"10@��bf���cf��@@@@��ef��@@�@���@�����*dummy_conf��qi�ri@�@@@������$path��|k�}k@��� @���k!��k#@@@����$mode���l$(��l$,@����(No_limit���l$.��l$6@@�@@@����2write_limit_period���m7;��m7M@����:default_write_limit_period���m7O��m7i@�@@@����8write_limit_write_cycles���njn��nj�@����4default_write_cycles���nj���nj�@�@@@����(compress���o����o��@����%false���o����o��@@�@@@����4is_on_remote_storage���p����p��@�������p����p��@@�@@@����0other_parameters���q����q��@����"[]���q����q��@@�@@@����5last_generation_count���r����r�@�����*Generation/null_generation���r���r�@�@@@@@���j��s #@@@@��i@@�@���@�����$make��u%)�u%-@�@@@��@@���$path��u%.�u%2@�@@@������$path��"u%F�#u%J@�����@@@@�����*dummy_conf��0u%6�1u%@@�@@@��4u%5�5u%K@@@� A@@@��8u%%@@�@���@�����3generation_filename��DwMQ�EwMd@�@@@��@@���&dbconn��NwMe�OwMk@�@@@������!^��YwMz�ZwM{@�@@@��@������&dbconn��fwMn�gwMt@�@@@��$path��mwMu�nwMy@�
@@@��@�����*Generation&suffix��zwM|�{wM�@�@@@@�@@@�1A@@@���wMM@@�@���@�����/generation_read���|pt��|p�@�@@@��@@���&dbconn���|p���|p�@�@@@��@�����.gencount_fname���}����}��@�@@@������3generation_filename���}����}��@�@@@��@����&dbconn���}����}��@�@@@@�@@@@���}��@@���������*Generation)of_string���~����~��@�@@@��@�������'Unixext.string_of_file���~����~��@�@@@��@����.gencount_fname���~����~�@�@@@@���~����~�@��@@@@�#@@@���@�����@@@@���!0� L�����@@@@���~��@@@�A@@@�iA@@���)ocaml.doc��������	� Return the generation of a given database 'connection'. Note we normally
    	expect the database file and the generation file to be present together;
    	however after upgrade only the database file will be present. @��y���{*o@@@@@�@��|pp@@�@���@�����2db_snapshot_dbconn�� Brv� Br�@�@@@������$path��& Br��' Br�@�����(Db_globs+snapshot_db��0 Br��1 Br�@�@@@@�����*dummy_conf��: Br��; Br�@�@@@��> Br��? Br�@@@@��A Brr@@�@���@�����)from_mode��M D���N D��@�@@@��@@���!v��W D���X D��@�@@@������!v��b E���c E��@�@@@������+Write_limit��m E���n E��@@�@@@@���+write_limit@��u E���v E��@@@������(No_limit�� E���� E�	@@�@@@@���(no_limit@��� E�	�� E�	@@@@��� E��@@@�5A@@@��� D��@@�@���@�����*from_block��� G		�� G		@�@@@��@@���!r��� G		 �� G		!@�@@@�������&String&concat��� H	$	&�� H	$	3@�@@@��@��� @��� H	$	4�� H	$	6@@@��@����"::��� J	=	C�� X:?A�����������&Printf'sprintf��� J	=	Q@�@@@��@���	<[%s]
mode:%s
format:xml
compress:%b
is_on_remote_storage:%b
@��� K	R	Z�� K	R	�@@@��@������!r��� L	�	��� L	�	�@�@@@��$path��� L	�	��� L	�	�@�
@@@��@������)from_mode��� L	�	��� L	�	�@�@@@��@������!r��
 L	�	�� L	�	�@�@@@��$mode�� L	�	�� L	�	�@�
@@@@�� L	�	�� L	�	�@��@@@��@������!r��# L	�	��$ L	�	�@�@@@��(compress��* L	�	��+ L	�	�@�
@@@��@������!r��7 L	�	��8 L	�	�@�@@@��4is_on_remote_storage��> L	�	��? L	�	�@�
@@@@�~@@@��������H M	�	��A������������!=��W M	�	��X M	�	�@�@@@��@������!r��d M	�	��e M	�	�@�@@@��$mode��k M	�	��l M	�	�@�
@@@��@����+Write_limit��v M	�	��w M	�
@@�@@@@�@@@�������&Printf'sprintf��� N

�� N

@�@@@��@���	2write_limit_period:%d
write_limit_write_cycles:%d
@��� N

 �� N

V@@@��@������!r��� O
W
c�� O
W
d@�@@@��2write_limit_period��� O
W
e�� O
W
w@�
@@@��@������!r��� O
W
x�� O
W
y@�@@@��8write_limit_write_cycles��� O
W
z�� O
W
�@�
@@@@�5@@@���� @��� Q
�
��� Q
�
�@@@�z�� R
�
�@���� M	�	�@@@�����	��� S
�
�A�����������&String&concat��� S
�
�@�@@@��@��� @��� S
�
��� S
�
�@@@��@�������$List#map��� T
�
��� T
�
�@�@@@��@��@@������!k�� U
�
�� U
�
�@�@@@����!v��
 U
�
�� U
�
�@�@@@@�� U
�
�� U
�
�@��@@@�������&Printf'sprintf�� U
�
�� U
�@�@@@��@���&%s:%s
@��& U
��' U
�@@@��@����!k��0 U
��1 U
�@�@@@��@����!v��; U
��< U
�@�@@@@�#@@@��@ U
�
��A U
�@���D U
�
�	@@@��@������!r��O V�P V@�@@@��0other_parameters��V V�W V/@�
@@@@��Z T
�
��[ W09@��l@@@@��@@@�����"[]��f X:>�A@��A@@@���A@@���A@@@�#�A@@�$�A@@@���A@@��n I	7	;�@@@@���@@@���A@@@��r G		�@@��@���@�����-write_db_conf��~ ZAE� ZAR@�@@@��@@���+connections��� ZAS�� ZA^@�@@@��@�����&dbconf��� [ag�� [am@�@@@�������&String&concat��� [ap�� [a}@�@@@��@���!
@��� [a~�� [a�@@@��@�������$List#map��� [a��� [a�@�@@@��@����*from_block��� [a��� [a�@�@@@��@����+connections��� [a��� [a�@�@@@@��� [a��� [a�@��@@@@�7@@@@��� [ac@@�������'Unixext4write_string_to_file��� \���� \��@�@@@��@������!!��� \���� \��@�@@@��@�����(Db_globs,db_conf_path��� \��@�@@@@�@@@��@����&dbconf��	 \���
 \��@�@@@@�)@@@�5@@@��A@@@�� ZAA@@�@���@�����'to_mode�� ^��� ^��@�@@@��@@���!s��& ^���' ^��@�@@@������!s��1 _���2 _��@�@@@�����+write_limit@��; `	�< `@@@@����+Write_limit��C a �D a+@@�@@@�����(no_limit@��M b,0�N b,:@@@@����(No_limit��U c>D�V c>L@@�@@@���@��\ dMQ�] dMR@@@@������(failwith��f eV\�g eVd@�@@@��@�������&Printf'sprintf��u eVf�v eVt@�@@@��@���0unknown mode: %s@�� eVu�� eV�@@@��@����!s��� eV��� eV�@�@@@@��� eVe�� eV�@��@@@@�,@@@@��� _��@@@�oA@@@��� ^��	@@�
@������	!Cannot_parse_database_config_file��� g���� g��@��@@��� g��@@<@�@������>Cannot_have_multiple_dbs_in_sr��� i���� i��@��@@��� i��@@K@�@���@�����,sanity_check��� k���� k��@�@@@��@@���+connections��� k���� k��@�@@@��@�����+conns_in_sr��� l�� l@�@@@�������$List&filter��� l�� l!@�@@@��@��@@���!r��� l'�� l(@�@@@������!r��� l,�� l-@�@@@��4is_on_remote_storage�� l.� lB@�
@@@�� l"� lC@���	 l#@@@��@����+connections�� lD� lO@�@@@@�3@@@@�� l@@��������!>��" mSp�# mSq@�@@@��@�������$List&length��1 mSX�2 mSc@�@@@��@����+conns_in_sr��< mSd�= mSo@�@@@@�@@@��@���!1@��G mSr�H mSs@@@@�@@@������%raise��R mSy�S mS~@�@@@��@����>Cannot_have_multiple_dbs_in_sr��] mS�^ mS�@@�@@@@�@@@@��b mSU@@@�M@@@��A@@@��f k��	@@�
@���@�����-parse_db_conf��r o���s o��@�@@@��@@���!s��| o���} o��@�@@@����@�����$conf��� q���� q��@�@@@�������'Unixext.string_of_file��� q���� q��@�@@@��@����!s��� q���� q��@�@@@@�@@@@��� q��@@��@�������%lines��� r���� r��@�@@@��@����#ref��� r��� r�@�����$list��� r���� r�@�����&string��� r���� r��@@�@@@@�@@@@�@@@�A@@�$A@@�  ������#ref��� r��� r�@�@@@��@������� r��� r�@@�@@@@�@@@����76�����32�����/.@+@@@*@@@)@@�KA@@@��� r��@@��@�����,consume_line��	 s�
 s&@�@@@��@@����"()�� s'� s)@@�@@@������":=�� s2�  s4@�@@@��@����%lines��* s,�+ s1@�@@@��@�������$List"tl��9 s5�: s<@�@@@��@������U��E s=�F s>@�@@@��@����%lines�
�P sC@�@@@@�@@@@�@@@@�+@@@�BA@@@��W s@@�  ������C��a tGQ�b tGS@�@@@��@����%lines��l tGK�m tGP@�@@@��@�������&String%split��{ tGT�| tG`@�@@@��@���J��� tGa�� tGe@@@��@����$conf��� tGf�� tGj@�@@@@�@@@@�'@@@�  �������$List$iter��� umq�� umz@�@@@��@��@@���$line��� um��� um�@�@@@������%debug��� um��� um�@�@@@��@���"%s@��� um��� um�@@@��@����$line��� um��� um�@�@@@@�@@@��� um{�� um�@���� um|	@@@��@���������� um��� um�@�@@@��@����%lines�
�� um�@�@@@@�@@@@�M@@@��@�����*read_block��� v���� v��@�@@@��@@������� v���	  v��@@�@@@��@�����)path_line��	 w���	 w��@�@@@�������$List"hd��	 w���	 w��@�@@@��@������4��	$ w���	% w��@�@@@��@����%lines�
�	/ w��@�@@@@�@@@@�@@@@��	4 w��@@��@�����$path��	> x���	? x��@�@@@�������&String#sub��	K x���	L x��@�@@@��@����)path_line��	V x���	W x�@�@@@��@���!1@��	` x��	a x�	@@@��@������!-��	l x�#�	m x�$@�@@@��@�������&String&length��	{ x��	| x�@�@@@��@����)path_line��	� x��	� x�"@�@@@@�@@@��@���!2@��	� x�%�	� x�&@@@@��	� x�
�	� x�'@��@@@@�N@@@@��	� x��@@�  ������,consume_line��	� y+1�	� y+=@�@@@��@�������	� y+>�	� y+@@@�@@@@�@@@��@�����*key_values��	� zCM�	� zCW@�@@@������#ref��	� zCZ�	� zC]@�@@@��@������	� zC^�	� zC`@@�@@@@�@@@@��	� zCI@@�  �  ������"&&��	� {d}�	� {d@�@@@��@������"<>��	� {dw�	� {dy@�@@@��@��������	� {dp�	� {dq@�@@@��@����%lines�
�
 {dv@�@@@@�@@@��@����+��
 {dz�
 {d|@@�@@@@�@@@��@������"<>��
 {d��
  {d�@�@@@��@�������$List"hd��
. {d��
/ {d�@�@@@��@������J��
: {d��
; {d�@�@@@��@����%lines�
�
E {d�@�@@@@�@@@@�@@@��@��� @��
P {d��
Q {d�@@@@�%@@@@�X@@@��@�����$line��
] |���
^ |��@�@@@�������$List"hd��
j |���
k |��@�@@@��@���������
v |���
w |��@�@@@��@����%lines�
�
� |��@�@@@@�@@@@�@@@@��
� |��@@�  ������r��
� }���
� }��@�@@@��@����*key_values��
� }���
� }��@�@@@��@����"::��
� ����
� ���@�������������&String%split��
� ~���
� ~��@�@@@��@���z��
� ~���
� ~��@@@��@����$line��
� ~���
� ~��@�@@@@�@@@������"::��
�  �
�  @�������!k��
�  �
�  @�@@@����"vs��
�  �
�  @�@@@@�A@@�@@@@����������&String/lowercase_ascii��
� �'�
� �=@�@@@��@����!k�� �>�	 �?@�@@@@�@@@��������&String/lowercase_ascii�� �@P� �@f@�@@@��@�������&String&concat��& �@h�' �@u@�@@@��@���!:@��0 �@v�1 �@y@@@��@����"vs��: �@z�; �@|@�@@@@��> �@g�? �@}@��@@@@�,@@@@��D �%�E �~�@��K	@@@���@��L ����M ���@@@@������(failwith��V ����W ���@�@@@��@�������&Printf'sprintf��e ����f ���@�@@@��@���3Failed to parse: %s@��o ����p ���@@@��@����$line��y ����z ���@�@@@@��} ����~ ���@��@@@@�,@@@@��� ~���� ���@���� ~��
@@@����������� ����� ���@�@@@��@����*key_values�
�� ��@�@@@@�@@@@�A@@�@@@@�@@@������,consume_line��� �	�� �	@�@@@��@�������� �	�� �	 @@�@@@@�@@@�@@@�3@@@��� {dj�� �!+@@@��@�����,maybe_put_in��� �<F�� �<R@�@@@��@@���(key_name��� �<S�� �<[@�@@@��@@���'default��� �<\�� �<c@�@@@��@@���'conv_fn��� �<d�� �<k@�@@@���������$List)mem_assoc��� �ny�� �n�@�@@@��@����(key_name��� �n��� �n�@�@@@��@��������	 �n��
 �n�@�@@@��@����*key_values�
� �n�@�@@@@�@@@@�&@@@��@�����%value��! ����" ���@�@@@�������$List%assoc��. ����/ ���@�@@@��@����(key_name��9 ����: ���@�@@@��@������U��E ����F ���@�@@@��@����*key_values�
�P ���@�@@@@�@@@@�&@@@@��U ���@@�  ������A��_ ����` ���@�@@@��@����*key_values��j ����k ���@�@@@��@�������$List,remove_assoc��y ����z ��@�@@@��@����(key_name��� ���� ��@�@@@��@���������� ���� ��@�@@@��@����*key_values�
�� ��@�@@@@�@@@@�&@@@@�6@@@������'conv_fn��� �(�� �/@�@@@��@����%value��� �0�� �5@�@@@@�@@@�N@@@��� �n��� �6?@��h	@@@�����'default��� �EO�� �EV@�@@@��� �nv@@@��A@@��A@@��A@@@��� �<B	@@������$path��� �hp�� �ht@�����@@@����$mode��� �u}�� �u�@������,maybe_put_in��� ����� ���@�@@@��@���$mode@��� ����� ���@@@��@����(No_limit�� ���� ���@@�@@@��@����'to_mode�� ���� ���@�@@@@�#@@@����(compress�� �#� �+@������,maybe_put_in��  �-�! �9@�@@@��@���(compress@��* �:�+ �D@@@��@����n��3 �E�4 �J@@�@@@��@����.bool_of_string��> �K�? �Y@�@@@@�"@@@����4is_on_remote_storage��H �Zb�I �Zv@������,maybe_put_in��R �x��S �x�@�@@@��@���4is_on_remote_storage@��\ �x��] �x�@@@��@�������e �x��f �x�@@�@@@��@����.bool_of_string��p �x��q �x�@�@@@@�"@@@����2write_limit_period��z ����{ ���@������,maybe_put_in��� ����� ���@�@@@��@���2write_limit_period@��� ����� ��@@@��@����:default_write_limit_period��� ���� ��@�@@@��@����-int_of_string��� �*�� �7@�@@@@�#@@@����8write_limit_write_cycles��� �8@�� �8X@������,maybe_put_in��� �Zd�� �Zp@�@@@��@���8write_limit_write_cycles@��� �Zq�� �Z�@@@��@����4default_write_cycles��� �Z��� �Z�@�@@@��@����-int_of_string��� ����� ���@�@@@@�#@@@����0other_parameters��� ����� ���@���������� ����� ���@�@@@��@����*key_values�
�� ���@�@@@@�@@@����5last_generation_count��� �V^�� �Vs@�����*Generation/null_generation�� �Vu� �V�@�@@@@@�� �`f� ���@@@�A@@@�U@@@�:@@@�l@@@�x@@@��@@@�A@@@�� v��
@@��@�������+connections��! ����" ���@�@@@��@����#ref��, ����- ���@�����$list��5 ����6 ���@�����-db_connection��> ����? ���@@�@@@@�@@@@�@@@�A@@�$A@@�  ������#ref��O ����P ���@�@@@��@����s��Y ����Z ���@@�@@@@�@@@����76�����32�����/.@+@@@*@@@)@@�KA@@@��m ���@@�  �  ������"<>��z ����{ ���@�@@@��@���������� ����� ���@�@@@��@����%lines�
�� ���@�@@@@�@@@��@�������� ����� ���@@�@@@@�@@@��@�����$line��� ����� �� @�@@@�������$List"hd��� ���� ��
@�@@@��@������Ѱ�� ���� ��@�@@@��@����%lines�
�� ��@�@@@@�@@@@�@@@@��� ���@@���������&String*startswith��� ��� �/@�@@@��@���![@��� �0�� �3@@@��@����$line��� �4�� �8@�@@@@�@@@������߰�� �>R�� �>T@�@@@��@����+connections�� �>F�	 �>Q@�@@@��@����m�� �>c� �>e@����������*read_block��  �>U�! �>_@�@@@��@������* �>`�+ �>b@@�@@@@�@@@�������	F��6 �>f�7 �>g@�@@@��@����+connections�
�A �>r@�@@@@�@@@@�%A@@�&@@@@�?@@@�������,consume_line��P �~��Q �~�@�@@@��@����G��Z �~��[ �~�@@�@@@@�@@@��_ �@@@��@@@��b ����c ���@@@�  ������,sanity_check��n ����o ���@�@@@��@������	���z ����{ ���@�@@@��@����+connections�
�� ���@�@@@@�@@@@�@@@������	���� ����� ���@�@@@��@����+connections�
�� ���@�@@@@�@@@�1@@@�>@@@�4@@@��@@@�@@@�8	@@@�N
@@@��@@@� @@@�����#exn��� ����� ���@�@@@@�  ������%error��� ����� ���@�@@@��@���	 Database config parse failed: %s@��� ����� ��@@@��@�������(Printexc)to_string��� ���� �� @�@@@��@����#exn��� ��!�� ��$@�@@@@��� ���� ��%@��@@@@�,@@@�������)Backtrace'reraise��� �(,�� �(=@�@@@��@����#exn��� �(>�� �(A@�@@@��@����	!Cannot_parse_database_config_file�� �(B� �(c@@�@@@@�@@@�Q@@@@�� p��@@@��A@@@�� o��	@@�
@���@�����+get_db_conf�� �ei� �et@�@@@��@@���$path��& �eu�' �ey@�@@@���������#Sys+file_exists��5 �|��6 �|�@�@@@��@����$path��@ �|��A �|�@�@@@@�@@@������-parse_db_conf��L ����M ���@�@@@��@����$path��W ����X ���@�@@@@�@@@��  ������$warn��f ����g ���@�@@@��@���>No db_conf file. Using default@��p ����q ���@@@@�@@@�������x ����y �Z_A����������$path��� ����� ��@���5/var/lib/xcp/state.db@��� ���� ��@@@����$mode��� �#�� �'@����(No_limit��� �)�� �1@@�@@@����(compress��� �2:�� �2B@������� �2D�� �2I@@�@@@����4is_on_remote_storage��� �JR�� �Jf@�������� �Jh�� �Jm@@�@@@����2write_limit_period��� �nv�� �n�@����:default_write_limit_period��� �n��� �n�@�@@@����8write_limit_write_cycles��� ����� ���@����4default_write_cycles��� ����� ���@�@@@����0other_parameters��� ����� ���@����,��� ����� ��A����������3available_this_boot@��� ����� ��@@@����$true@�� ��� ��@@@@�� ��@��@@@�������	!A@�
"A@@@�$#A@@�� ���%@@@����5last_generation_count�� � � �5@�����*Generation/null_generation��% �7�& �Q@�@@@@@���) �RY@@@�����˰�0 �Z^�A@��A@@@���A@@��4 ����@@@��6 ����7 �`c@����@@@��; �|~@@@�A@@@��> �ee@@�	@@