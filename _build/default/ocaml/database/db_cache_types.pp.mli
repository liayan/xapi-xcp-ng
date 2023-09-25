Caml1999N025����   #      
   	!ocaml/database/db_cache_types.mli����  S�  �  ={  ;0�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������$Time��	!ocaml/database/db_cache_types.mliOHO�OHS@�����A�    �!t��Q���Q��@@@@A������*Generation!t��Q���Q��@@�@@@���)ocaml.doc��������	B A monotonically increasing counter associated with this database @��(PZ\�)PZ�@@@@@�@��+Q��@@�@@��.OHV�/R��@@@��1OHH@�@�����$Stat��:T���;T��@�����A�    �!t��FV�GV@@@��Р'created��NW�OW @@�����$Time!t��XW"�YW(@@�@@@��\XMR@���B񐠠����= Time this value was created @��iW*�jWL@@@@@�@�Р(modified��pXMS�qXM[@@�����$Time!t��zXM]�{XMc@@�@@@��~Y��@���d�������	# Time this value was last modified @���XMe��XM�@@@@@@�Р'deleted���Y����Y��@@�����$Time!t���Y����Y��@@�@@@�@����4�������	? Time this value was deleted (or 0L meaning it is still alive) @���Z����Z��@@@@@?@@A@����B�������	+ Metadata associated with a database value @���U����U�@@@@@M@���V��[��@@�@@���T����\��@@@���T��@�@�����#MAP���^���^�@������A�    �!t���`;B��`;C@@@@A@����p�������	! A map from string to some value @���_��_:@@@@@{@���`;=@@�@���A�    �%value���cpw��cp|@@@@A@������������	# The type of the values in the map @��bEG�bEo@@@@@�@��cpr@@�@���Р%empty��e~��e~�@����!t��e~��e~�@@�@@@@������������/ The empty map @��&f���'f��@@@@@�@��)e~�@�@���Р#add��2h���3h��@��@�����$Time!t��>h���?h��@@�@@@��@����&string��Ih���Jh��@@�@@@��@����%value��Th���Uh��@@�@@@��@����!t��_h���`h��@@�@@@����!t��hh���ih��@@�@@@�@@@�@@@�%@@@�1@@@@���T�������	n [add now key value map] returns a new map with [key] associated with [value],
      with creation time [now] @��{i���|j*K@@@@@@��~h��@�@���Р&remove���lMS��lMY@��@�����$Time!t���lM\��lMb@@�@@@��@����&string���lMf��lMl@@�@@@��@����!t���lMp��lMq@@�@@@����!t���lMu��lMv@@�@@@�@@@�@@@�%@@@@����L�������	; [remove now key t] removes the binding of [key] from [t]. @���mwy��mw�@@@@@W@���lMO@�@���Р$fold���o����o��@��@��@����&string���o����o��@@�@@@��@�����$Stat!t���o����o��@@�@@@��@����%value���o����o��@@�@@@��@��!b���o����o��@@@��!b��o���o��@@@�	@@@�@@@�@@@�-@@@��@����!t��o���o��@@�@@@��@��!b��o���o��@@@��!b�� o���!o� @@@�	@@@�@@@��%o��@@@@�����������	H [fold f t initial] folds [f key stats value acc] over the items in [t] @��2p�3pP@@@@@�@��5o��@�@���Р0fold_over_recent��>rRX�?rRh@��@�����$Time!t��Jsko�Ksku@@�@@@��@��@����&string��Wskz�Xsk�@@�@@@��@�����$Stat!t��dsk��esk�@@�@@@��@����%value��osk��psk�@@�@@@��@��!b��xsk��ysk�@@@��!b��~sk��sk�@@@�	@@@�@@@�@@@�-@@@��@����!t���sk���sk�@@�@@@��@��!b���sk���sk�@@@��!b���sk���sk�@@@�	@@@�@@@���sky@@@�X@@@@����6�������	� [fold_over_recent since f t initial] folds [f key stats value acc] over all the
      items with a modified time larger than [since] @���t����u?@@@@@A@���rRT@�@���Р$find���wAG��wAK@��@����&string���wAN��wAT@@�@@@��@����!t���wAX��wAY@@�@@@����%value���wA]��wAb@@�@@@�@@@�@@@@����q�������	` [find key t] returns the value associated with [key] in [t] or raises
      [DBCache_NotFound] @���xce��y��@@@@@|@���wAC@�@���Р#mem���{����{��@��@����&string���{��� {��@@�@@@��@����!t��
{���{��@@�@@@����$bool��{���{��@@�@@@�@@@�@@@@������������	^ [mem key t] returns true if [value] is associated with [key] in [t] or false
      otherwise @��$|���%}?Q@@@@@�@��'{��@�@���Р$iter��0SY�1S]@��@��@����&string��<Sa�=Sg@@�@@@��@����%value��GSk�HSp@@�@@@����$unit��PSt�QSx@@�@@@�@@@�@@@��@����!t��]S}�^S~@@�@@@����$unit��fS��gS�@@�@@@�@@@��kS`@@@@���Q �������	9 [iter f t] applies [f key value] to each binding in [t] @��x @���y @��@@@@@@��{SU@�@���Р&update��� B���� B��@��@�����$Time!t��� B���� B��@@�@@@��@����&string��� B���� B��@@�@@@��@����%value��� B���� B��@@�@@@��@��@����%value��� B���� B��@@�@@@����%value��� B���� B�	@@�@@@�@@@��@����!t��� B�		�� B�	
@@�@@@����!t��� B�	�� B�	@@�@@@�@@@��� B��@@@�2@@@�>@@@�J@@@@����n�������
  � [update now key default f t] returns a new map which is the same as [t] except:
      if there is a value associated with [key] it is replaced with [f key]
      or if there is no value associated with [key] then [default] is associated with [key].
      This function touches the modification time of [key] *unless* [f key] is physically
      equal with the current value: in this case the modification time isn't bumped as
      an optimisation.
  @��� C		�� I
�
�@@@@@y@��� B��@�@���Р%touch��� K
�
��� K
�
�@��@�����$Time!t��� K
�
��� K
�
�@@�@@@��@����&string��	 K
�
��
 K
�
�@@�@@@��@����%value�� K
�
�� K
�@@�@@@��@����!t�� K
��  K
�	@@�@@@����!t��( K
��) K
�@@�@@@�@@@�@@@�%@@@�1@@@@���Ð������
  Q [touch now key default t] returns a new map which is the same as [t] except:
      if there is a value associated with [t] then its modification time is set to [now];
      if there is no value associated with [t] then one is created with value [default].
      On exit there will be a binding of [key] whose modification time is [now] @��; L�< Og@@@@@�@��> K
�
�@�@@��A^��B Phk@@@��D^��@�@�����#Row��M Rmt�N Rmw@������������#MAP��] S~��^ S~�@�@@����%value��f S~��g S~�@    �@@@A�������&Schema%Value!t��u S~��v S~�@@�@@@@��y S~�@@�@@��| S~�@@�@���Р,add_defaults��� U���� U��@��@�����$Time!t��� U���� U��@@�@@@��@������&Schema%Table!t��� U���� U��@@�@@@��@����!t��� U���� U��@@�@@@����!t��� U���� U��@@�@@@�@@@�@@@�)@@@@����N�������
  C [add_defaults now schema t]: returns a row which is [t] extended to contain
      all the columns specified in the schema, with default values set if not already
      in [t]. If the schema is missing a default value then raises [DBCache_NotFound]:
      this would happen if a client failed to provide a necessary field. @��� V���� Y�0@@@@@Y@��� U��@�@@��� Rmz�� Z14@@@��� Rmm@�@�����%Table��� \6=�� \6B@������������#MAP��� ]IS�� ]IV@�@@����%value��� ]Ia�� ]If@    �@@@A������#Row!t��� ]Ii�� ]In@@�@@@@�� ]I\@@�@@�� ]IK@@�@���Р1fold_over_deleted�� _pv� _p�@��@�����$Time!t�� `��� `��@@�@@@��@��@����&string��' `���( `��@@�@@@��@�����$Stat!t��4 `���5 `��@@�@@@��@��!b��= `���> `��@@@��!b��C `���D `��@@@�	@@@�@@@�!@@@��@����!t��P `���Q `��@@�@@@��@��!b��Y `���Z `��@@@��!b��_ `���` `��@@@�	@@@�@@@��d `��@@@�L@@@@���K��������	� [fold_over_deleted now f t initial] folds [f key stat acc] over the keys
      which have been recently deleted. Note this is not guaranteed to remember
      all events, so the list may be short. @��r a���s cg�@@@@@@��u _pr@�@@��x \6E�y d��@@@��{ \66@�@�����(TableSet��� f���� f��@������#MAP��� f���� f��@�@@����%value��� f���� f��@    �@@@A������%Table!t��� f���� f��@@�@@@@��� f��@@�@@@��� f��@�@�����(Manifest��� h���� h��@�����A�    �!t��� i���� i��@@@@A@@��� i��@@�@���Р%empty��� k���� k��@����!t��� k���� k��@@�@@@@@��� k��@�@���Р$make��� m��� m�@��@����#int��� m�
�� m�@@�@@@��@����#int��� m��� m�@@�@@@��@�����*Generation!t�� m�� m�$@@�@@@����!t�� m�(� m�)@@�@@@�@@@�@@@�'@@@@@�� m��@�@���Р*generation�� o+1� o+;@��@����!t��& o+>�' o+?@@�@@@�����*Generation!t��1 o+C�2 o+O@@�@@@�@@@@@��6 o+-@�@���Р%touch��? qQW�@ qQ\@��@��@�����*Generation!t��M qQ`�N qQl@@�@@@�����*Generation!t��X qQp�Y qQ|@@�@@@�@@@��@����!t��d qQ��e qQ�@@�@@@����!t��m qQ��n qQ�@@�@@@�@@@��r qQ_@@@@@��t qQS@�@���Р$next��} s���~ s��@��@����!t��� s���� s��@@�@@@����!t��� s���� s��@@�@@@�@@@@@��� s��@�@���Р&schema��� u���� u��@��@����!t��� u���� u��@@�@@@�������#int��� u���� u��@@�@@@�����#int��� u���� u��@@�@@@@�@@@�@@@@@��� u��@�@���Р-update_schema��� w���� w��@��@��@����&option��� w���� w��@��������#int��� w���� w��@@�@@@�����#int��� w���� w��@@�@@@@�@@@@��� w��@@@����&option��� w���� w��@��������#int�� w��� w��@@�@@@�����#int�� w��� w��@@�@@@@�@@@@�� w��@@@�$@@@��@����!t��  w��! w�@@�@@@����!t��) w��* w�@@�@@@�@@@��. w��@@@@@��0 w��@�@@��3 h���4 x@@@��6 h��@�@���A�    �&update��@ {_d�A {_j@@@��Р*RefreshRow��H |mq�I |m{@������&string��R |m�S |m�@@�@@@�����&string��\ |m��] |m�@@�@@@@@��` |mo@@�Р*WriteField��f }���g }��@������&string��p ~���q ~��@@�@@@�����&string��z ���{ ��@@�@@@�����&string��� ����� ��@@�@@@�������&Schema%Value!t��� ��� �&@@�@@@�������&Schema%Value!t��� �4<�� �4J@@�@@@@@��� }��@@�Р)PreDelete��� �X\�� �Xe@������&string��� �Xi�� �Xo@@�@@@�����&string��� �X��� �X�@@�@@@@@��� �XZ@@�Р&Delete��� ����� ���@������&string��� ����� ���@@�@@@�����&string��� ����� ���@@�@@@�����$list��� ����� ���@��������&string��� ����� ���@@�@@@�������&Schema%Value!t��  ���� ���@@�@@@@�@@@@�� ���@@@@@�� ���!@@�Р&Create�� �� �@������&string�� �!� �'@@�@@@�����&string��! �6>�" �6D@@�@@@�����$list��+ �Rt�, �Rx@��������&string��7 �R[�8 �Ra@@�@@@�������&Schema%Value!t��E �Rd�F �Rr@@�@@@@�@@@@��J �RZ@@@@@��L �!@@@A@���2ᐠ�����	L The core database updates (RefreshRow and PreDelete is more of an 'event') @��Y z�Z z^@@@@@�@��\ {__1@@�2@�����(Database��e ����f ���@�����A�    �!t��q ����r ���@@@@A@@��t ���@@�@���Р/update_manifest��} ����~ ���@��@��@�����(Manifest!t��� ����� ���@@�@@@�����(Manifest!t��� ����� ���@@�@@@�@@@��@����!t��� ����� ���@@�@@@����!t��� ����� ���@@�@@@�@@@��� ���@@@@@��� ���@�@���Р/update_tableset��� ����� ���@��@��@�����(TableSet!t��� ����� ��	@@�@@@�����(TableSet!t��� ���� ��@@�@@@�@@@��@����!t��� ���� ��@@�@@@����!t��� ��!�� ��"@@�@@@�@@@��� ���@@@@@��� ���@�@���Р(manifest��� �$*�� �$2@��@����!t��	 �$5�	 �$6@@�@@@�����(Manifest!t��	 �$:�	 �$D@@�@@@�@@@@@��	 �$&@�@���Р(tableset��	 �FL�	 �FT@��@����!t��	& �FW�	' �FX@@�@@@�����(TableSet!t��	1 �F\�	2 �Ff@@�@@@�@@@@@��	6 �FH@�@���Р&schema��	? �hn�	@ �ht@��@����!t��	I �hw�	J �hx@@�@@@�����&Schema!t��	T �h|�	U �h�@@�@@@�@@@@@��	Y �hj@�@���Р)increment��	b ����	c ���@��@����!t��	l ����	m ���@@�@@@����!t��	u ����	v ���@@�@@@�@@@@@��	z ���@�@���Р&update��	� ����	� ���@��@��@�����(TableSet!t��	� ����	� ���@@�@@@�����(TableSet!t��	� ����	� ���@@�@@@�@@@��@����!t��	� ����	� ���@@�@@@����!t��	� ����	� ���@@�@@@�@@@��	� ���@@@@@��	� ���@�@���Р.set_generation��	� ����	� ���@��@�����*Generation!t��	� ����	� ���@@�@@@��@����!t��	� ����	� ���@@�@@@����!t��	� ���	� ��@@�@@@�@@@�@@@@@��	� ���@�@���Р$make��	� �
�	� �@��@�����&Schema!t��	� ��	� �@@�@@@����!t��
 ��
 �@@�@@@�@@@@@��

 �@�@���Р,table_of_ref��
 � &�
 � 2@��@����&string��
 � 5�
 � ;@@�@@@��@����!t��
( � ?�
) � @@@�@@@����&string��
1 � D�
2 � J@@�@@@�@@@�@@@@@��
7 � "@�@���Р*lookup_key��
@ �LR�
A �L\@��@����&string��
J �L_�
K �Le@@�@@@��@����!t��
U �Li�
V �Lj@@�@@@����&option��
^ �L��
_ �L�@��������&string��
j �Lo�
k �Lu@@�@@@�����&string��
t �Lx�
u �L~@@�@@@@�@@@@��
y �Ln@@@�&@@@�2@@@@@��
} �LN@� @���Р'reindex��
� ����
� ���@��@����!t��
� ����
� ���@@�@@@����!t��
� ����
� ���@@�@@@�@@@@@��
� ���@�@���Р1register_callback��
� ����
� ���@��@����&string��
� ����
� ���@@�@@@��@��@����&update��
� ����
� ���@@�@@@��@����!t��
� ����
� ���@@�@@@����$unit��
� ����
� ���@@�@@@�@@@�@@@��@����!t��
� ����
� ���@@�@@@����!t��
� ����
� ���@@�@@@�@@@��
� ���@@@�>@@@@@��
� ���@�	@���Р3unregister_callback��
� ����
� ���@��@����&string�� ��� ��@@�@@@��@����!t�� ��� ��@@�@@@����!t�� ��� ��@@�@@@�@@@�@@@@@�� ���@�@���Р&notify��& ��' �@��@����&update��0 �"�1 �(@@�@@@��@����!t��; �,�< �-@@�@@@����$unit��D �1�E �5@@�@@@�@@@�@@@@@��J �@�@@��M ����N �69@@@��P ���@�@������)Duplicate��Z �;E�[ �;N@��@@��_ �;;@@�@�@���Р*add_to_set��h �PT�i �P^@��@����&string��r �Pa�s �Pg@@�@@@��@������&Schema%Value!t��� �Pk�� �Py@@�@@@������&Schema%Value!t��� �P}�� �P�@@�@@@�@@@�!@@@@@��� �PP@�@���Р/remove_from_set��� ����� ���@��@����&string��� ����� ���@@�@@@��@������&Schema%Value!t��� ����� ���@@�@@@������&Schema%Value!t��� ����� ���@@�@@@�@@@�!@@@@@��� ���@�@���Р*add_to_map��� ����� ���@���*idempotent����$bool��� ����� ���@@�@@@��@����&string��� ����� ���@@�@@@��@����&string��� ����� ��@@�@@@��@������&Schema%Value!t�� ��	� ��@@�@@@������&Schema%Value!t�� ��� ��)@@�@@@�@@@�!@@@�-@@@�� ���@@@@@�� ���	@�
@���Р/remove_from_map��" �+/�# �+>@��@����&string��, �+A�- �+G@@�@@@��@������&Schema%Value!t��; �+K�< �+Y@@�@@@������&Schema%Value!t��H �+]�I �+k@@�@@@�@@@�!@@@@@��N �++@�@���Р)set_field��W �mq�X �mz@��@����&string��a �}�b �}�@@�@@@��@����&string��l �}��m �}�@@�@@@��@����&string��w �}��x �}�@@�@@@��@������&Schema%Value!t��� �}��� �}�@@�@@@��@�����(Database!t��� �}��� �}�@@�@@@�����(Database!t��� �}��� �}�@@�@@@�@@@�@@@�-@@@�9@@@�E@@@@@��� �mm	@�
@���Р)get_field��� ����� ���@��@����&string��� ����� ���@@�@@@��@����&string��� ����� ���@@�@@@��@����&string��� ����� ���@@�@@@��@�����(Database!t��� ����� ��@@�@@@������&Schema%Value!t��� ���� ��@@�@@@�@@@�@@@�+@@@�7@@@@@��� ���@�	@���Р*remove_row��� ��� �#@��@����&string�� �&� �,@@�@@@��@����&string�� �0� �6@@�@@@��@�����(Database!t�� �:� �D@@�@@@�����(Database!t��( �H�) �R@@�@@@�@@@�@@@�)@@@@@��/ �@�@���Р'add_row��8 �TX�9 �T_@��@����&string��B �Tb�C �Th@@�@@@��@����&string��M �Tl�N �Tr@@�@@@��@�����#Row!t��Z �Tv�[ �T{@@�@@@��@�����(Database!t��g �T�h �T�@@�@@@�����(Database!t��r �T��s �T�@@�@@@�@@@�@@@�+@@@�7@@@@@��z �TT@�	@���Р%touch��� ����� ���@��@����&string��� ����� ���@@�@@@��@����&string��� ����� ���@@�@@@��@�����(Database!t��� ����� ���@@�@@@�����(Database!t��� ����� ���@@�@@@�@@@�@@@�)@@@@@��� ���@�@���A�    �,where_record��� ����� ���@@@��Р%table��� ����� ���@@����&string��� ����� ���@@�@@@��� �@����j�������6 table from which ... @��� ����� ��@@@@@u@�Р&return��� ��� �"@@����&string��� �$�� �*@@�@@@��� �UX@������������	# we'd like to return this field... @�� �,� �T@@@@@�@�Р+where_field��	 �UY�
 �Ud@@����&string�� �Uf� �Ul@@�@@@�� ���@������������; where this other field... @��" �Un�# �U�@@@@@�@�Р+where_value��) ����* ���@@����&string��1 ����2 ���@@�@@@�@���ɐ������5 contains this value @��A ����B ���@@@@@�@@A@@��D ����E ���@@�@���Р3where_record_of_rpc��N ����O ���@��@�����#Rpc!t��Z ����[ ���@@�@@@����,where_record��c ����d ���@@�@@@�@@@@@��h ���@�@���Р3rpc_of_where_record��q ����r ��@��@����,where_record��{ ���| ��@@�@@@�����#Rpc!t��� ��!�� ��&@@�@@@�@@@@@��� ���@�@���A�    �/structured_op_t��� �(-�� �(<@@@��Р&AddSet��� �(?�� �(E@�@@�@@�Р)RemoveSet��� �(H�� �(Q@�@@��� �(F@@�Р&AddMap��� �(T�� �(Z@�@@��� �(R@@�Р)RemoveMap��� �(]�� �(f@�@@��� �([@@�Р,AddMapLegacy��� �(i�� �(u@�@@��� �(g@@@A@@��� �((@@�@���Р6structured_op_t_of_rpc��� �w{�� �w�@��@�����#Rpc!t��� �w��� �w�@@�@@@����/structured_op_t��� �w��� �w�@@�@@@�@@@@@��� �ww@�@���Р6rpc_of_structured_op_t��� ����� ���@��@����/structured_op_t��  ���� ���@@�@@@�����#Rpc!t�� ���� ���@@�@@@�@@@@@�� ���@�@@