Caml1999N025����         	   =ocaml/xapi/redo_log_usage.mli����  i      ՠ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������4
 * @group Redo-log
@��=ocaml/xapi/redo_log_usage.mliNGG�P^`@@@@@����Р2read_from_redo_log��
Rbf�Rbx@��@�����(Redo_log(redo_log��Rb{�Rb�@@�@@@��@����&string��!Rb��"Rb�@@�@@@��@�����&Db_ref!t��.Rb��/Rb�@@�@@@����$unit��7Rb��8Rb�@@�@@@�@@@�@@@�'@@@@���)ocaml.docڐ������	p Connect to the block device and write the latest version of the database
 * on it to a file with a given name. @��JS���KT� @@@@@�@��MRbb@�@���Р3stop_using_redo_log��VV"&�WV"9@��@�����(Redo_log(redo_log��bV"<�cV"M@@�@@@����$unit��kV"Q�lV"U@@�@@@�@@@@���2�������	[ Disconnect from the block device. May be safely called even when not currently connected. @��{WVV�|WV�@@@@@@��~V""@�@@