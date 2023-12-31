Caml1999M025����         	   >ocaml/database/db_interface.ml����  $w  �     |�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����A�    �(response��>ocaml/database/db_interface.mlOHM�OHU@@@@A�����&string��
OHX�OH^@@�@@@@��OHH@@�@�����#RPC��R��R�@������Р*initialise��#S���$S��@��@����$unit��-S���.S��@@�@@@����$unit��6S���7S��@@�@@@�@@@@���)ocaml.docА������	/ [initialise ()] should be called before [rpc] @��GT���HT��@@@@@�@��JS��@�@���Р#rpc��SV���TV��@��@����&string��]V���^V��@@�@@@����(response��fV��gV�@@�@@@�@@@@���0��������	; [rpc request] transmits [request] and receives a response @��vW�wWN@@@@@
@��yV��@�@@��|R��}XOR@@���D�������9 A generic RPC interface @���Q``��Q`~@@@@@@���R@�@���A�    �)db_record���[����[��@@@@A��������$list���[����[��@��������&string���[����[��@@�@@@�����&string���[����[��@@�@@@@�@@@@���[��@@@�����$list���[����[��@��������&string���[����[��@@�@@@�����$list���[����[��@�����&string���[����[��@@�@@@@�@@@@�@@@@���[��%@@@@�/&@@@������������	H dictionary of regular fields x dictionary of associated set_ref values @���ZTT��ZT�@@@@@�@���[��6@@�7@�����)DB_ACCESS��^!�^*@������Р*initialise��_17�_1A@��@����$unit��_1D�_1H@@�@@@����$unit��$_1L�%_1P@@�@@@�@@@@������������	T [initialise ()] must be called before any other function in this
      		interface @��4`QS�5a��@@@@@�@��7_13@�@���Р2get_table_from_ref��@c���Ac��@��@�����&Db_ref!t��Lc���Mc��@@�@@@��@����&string��Wc���Xc��@@�@@@����&option��`c���ac��@�����&string��ic���jc��@@�@@@@�@@@�@@@�#@@@@���5�������	c [get_table_from_ref ref] returns [Some tbl] if [ref] is a
      		valid reference; None otherwise @��{d���|e-W@@@@@@��~c��@�@���Р,is_valid_ref���gY_��gYk@��@�����&Db_ref!t���gYn��gYv@@�@@@��@����&string���gYz��gY�@@�@@@����$bool���gY���gY�@@�@@@�@@@�@@@@���rA�������	D [is_valid_ref ref] returns true if [ref] is valid; false otherwise @���h����h��@@@@@L@���gY[@�@���Р)read_refs���j����j��@��@�����&Db_ref!t���j����j��@@�@@@��@����&string���j����j��@@�@@@����$list���j���j�	@�����&string���j����j�@@�@@@@�@@@�@@@�#@@@@������������	A [read_refs tbl] returns a list of all references in table [tbl] @���k
� k
R@@@@@�@��j��@�@���Р5find_refs_with_filter��mTZ�mTo@��@�����&Db_ref!t��nrv�nr~@@�@@@��@����&string��"nr��#nr�@@�@@@��@�����/Db_filter_types$expr��/nr��0nr�@@�@@@����$list��8nr��9nr�@�����&string��Anr��Bnr�@@�@@@@�@@@�@@@�%@@@�1@@@@���ݐ������	f [find_refs_with_filter tbl expr] returns a list of all references
      		to rows which match [expr] @��To���Up�@@@@@�@��WmTV@� @���Р0read_field_where��`r%�ar5@��@�����&Db_ref!t��lr8�mr@@@�@@@��@�����.Db_cache_types,where_record��yrD�zr_@@�@@@����$list���rj��rn@�����&string���rc��ri@@�@@@@�@@@�@@@�%@@@@���W&�������	� [read_field_where {tbl,return,where_field,where_value}] returns a
      		list of the [return] fields in table [tbl] where the [where_field]
      		equals [where_value] @���soq��u!@@@@@1@���r!@�@���Р.db_get_by_uuid���w#)��w#7@��@�����&Db_ref!t���w#:��w#B@@�@@@��@����&string���w#F��w#L@@�@@@��@����&string���w#P��w#V@@�@@@����&string���w#Z��w#`@@�@@@�@@@�@@@�%@@@@����o�������	^ [db_get_by_uuid tbl uuid] returns the single object reference
      		associated with [uuid] @���xac��y��@@@@@z@���w#%@�@���Р4db_get_by_name_label���{����{��@��@�����&Db_ref!t���{����{��@@�@@@��@����&string��	{���
{��@@�@@@��@����&string��{���{�	@@�@@@����$list��{�	�{�	@�����&string��&{�	�'{�	@@�@@@@�@@@�@@@�#@@@�/@@@@����������	h [db_get_by_name_label tbl label] returns the list of object references
      		associated with [label] @��9|		�:}	^	�@@@@@�@��<{��@� @���Р*create_row��E	�	��F	�	�@��@�����&Db_ref!t��Q @	�	��R @	�	�@@�@@@��@����&string��\ @	�	��] @	�	�@@�@@@��@����$list��g @	�	��h @	�	�@��������&string��s @	�	��t @	�	�@@�@@@�����&string��} @	�	��~ @	�	�@@�@@@@�@@@@��� @	�	�@@@��@����&string��� @	�	��� @	�	�@@�@@@����$unit��� @	�	��� @	�	�@@�@@@�@@@�@@@�>@@@�J@@@@���a0�������	f [create_row tbl kvpairs ref] create a new row in [tbl] with
      		key [ref] and contents [kvpairs] @��� A	�	��� B

E@@@@@;@���	�	�@�@���Р*delete_row��� D
G
M�� D
G
W@��@�����&Db_ref!t��� D
G
Z�� D
G
b@@�@@@��@����&string��� D
G
f�� D
G
l@@�@@@��@����&string��� D
G
p�� D
G
v@@�@@@����$unit��� D
G
z�� D
G
~@@�@@@�@@@�@@@�%@@@@����y�������	A [delete_row context tbl ref] deletes row [ref] from table [tbl] @��� E

��� E

�@@@@@�@��� D
G
I@�@���Р+write_field��� G
�
��� G
�
�@��@�����&Db_ref!t�� G
�
��	 G
�
�@@�@@@��@����&string�� G
�
�� G
�
�@@�@@@��@����&string�� G
�
�� G
�
�@@�@@@��@����&string��) G
�
��* G
�@@�@@@��@����&string��4 G
��5 G
�@@�@@@����$unit��= G
��> G
�@@�@@@�@@@�@@@�%@@@�1@@@�=@@@@���ڐ������	h [write_field context tbl ref fld val] changes field [fld] to [val] in
      		row [ref] in table [tbl] @��Q H�R Ib�@@@@@�@��T G
�
�@�@���Р*read_field��] K���^ K��@��@�����&Db_ref!t��i K���j K��@@�@@@��@����&string��t K���u K��@@�@@@��@����&string�� K���� K��@@�@@@��@����&string��� K���� K��@@�@@@����&string��� K���� K��@@�@@@�@@@�@@@�%@@@�1@@@@���`/�������	g [read_field context tbl ref fld] returns the value of field [fld]
      		in row [ref] in table [tbl] @��� L���� M9@@@@@:@��� K��@�@���Р+read_record��� O;A�� O;L@��@�����&Db_ref!t��� O;O�� O;W@@�@@@��@����&string��� O;[�� O;a@@�@@@��@����&string��� O;e�� O;k@@�@@@����)db_record��� O;o�� O;x@@�@@@�@@@�@@@�%@@@@����x�������	^ [read_record tbl ref] returns
      		[ (field, value) ] * [ (set_ref fieldname * [ ref ]) ] @��� Py{�� Q��@@@@@�@��� O;=@�@���Р2read_records_where��� S���� S��@��@�����&Db_ref!t�� T��� T�@@�@@@��@����&string�� T�� T�@@�@@@��@�����/Db_filter_types$expr�� T��  T�)@@�@@@����$list��( T�B�) T�F@��������&string��4 T�.�5 T�4@@�@@@�����)db_record��> T�7�? T�@@@�@@@@�@@@@��C T�-@@@�&@@@�4@@@�@@@@@���ܐ������	v [read_records_where tbl expr] returns a list of the values returned
      		by read_record that match the expression @��S UGI�T V��@@@@@�@��V S��.@�/@���Р8process_structured_field��_ X���` X��@��@�����&Db_ref!t��k Y���l Y��@@�@@@��@�������&string��y Z���z Z�@@�@@@�����&string��� Z��� Z�@@�@@@@�@@@��@����&string��� [�� [@@�@@@��@����&string��� \#�� \)@@�@@@��@����&string��� ]*1�� ]*7@@�@@@��@�����.Db_cache_types/structured_op_t��� ^8?�� ^8]@@�@@@����$unit��� _^e�� _^i@@�@@@�@@@�@@@�'@@@�3@@@�J@@@�Y@@@@����Y�������	� [process_structured_field context kv tbl fld ref op] modifies the
      		value of field [fld] in row [ref] in table [tbl] according to [op]
      		which may be one of AddSet RemoveSet AddMap RemoveMap with
      		arguments [kv] @��� `jl�� c@Y@@@@@d@��� X��@�@@���^-�� dZ]@@����m�������	& The client interface to the database @���]����]�@@@@@x@���^@�@@