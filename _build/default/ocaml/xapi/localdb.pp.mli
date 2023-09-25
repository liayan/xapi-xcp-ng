Caml1999N025����            6ocaml/xapi/localdb.mli����  
  �  R  Ԡ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	� A map of key-value pairs stored locally. Data stored here can still be
    accessed even when the master connection is down. Writes are immediately
    flushed to disk. @��6ocaml/xapi/localdb.mliNGG�P��@@@@@�������+Missing_key��S6@�S6K@�������&string��S6O�S6U@@�@@@@@��S66@���)ocaml.doc��������	8 Thrown when a particular named key could not be found. @��(R���)R�5@@@@@�@�@�@���Р#get��2UW[�3UW^@��@����&string��<UWa�=UWg@@�@@@����&string��EUWk�FUWq@@�@@@�@@@@���.吠�����3 Retrieves a value @��UVrr�VVr�@@@@@�@��XUWW@�@���Р0get_with_default��aX���bX��@��@����&string��kX���lX��@@�@@@��@����&string��vX���wX��@@�@@@����&string��X����X��@@�@@@�@@@�@@@@���i �������	r [get_with_default key default] returns the value associated with [key],
    	or [default] if the key is missing. @���Y����Z
5@@@@@+@���X��@�@���Р#put���\7;��\7>@��@����&string���\7A��\7G@@�@@@��@����&string���\7K��\7Q@@�@@@����$unit���\7U��\7Y@@�@@@�@@@�@@@@����[�������	\ Inserts a value into the database, only returns when the insertion has
    been persisted. @���]ZZ��^��@@@@@f@���\77@�@���Р$putv���`����`��@��@����$list���`����`��@��������&string���`����`��@@�@@@�����&string���`����`��@@�@@@@�@@@@���`��@@@����$unit��`���`��@@�@@@�@@@@������������	e Insert a set of values into the database, only returns when the insertions
    have been persisted. @��a���b6Q@@@@@�@��`��@�@���Р#del��dSW� dSZ@��@����&string��)dS]�*dSc@@�@@@����$unit��2dSg�3dSk@@�@@@�@@@@���Ґ������	& Delete a key from the local database @��Bell�Cel�@@@@@�@��EdSS@�@@