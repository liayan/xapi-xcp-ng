Caml1999M025����            ;ocaml/xapi/xapi_psr_util.ml����  �  �  @  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!D��;ocaml/xapi/xapi_psr_util.mlB]d�B]e@�������%Debug$Make��B]h�B]r@�@@�����@�����$name��B]�B] C@�@@@���(xapi_psr@��$B] F�%B] P@@@@��'B]{@@�@@��*B]t�+B] T@@� �-B] U@@@��/B]]@�@�����'Unixext��8D W ^�9D W e@�����&Stdext'Unixext��BD W h�CD W v@�@@@��FD W W@�@���@�����/checkpoint_path��RF x |�SF x �@�@@@���3/var/lib/xcp/psr_cp@��ZF x ��[F x �@@@@��]F x x@@�@���@�����;old_pool_secret_backup_path��iH � ��jH � �@�@@@���7/var/lib/xcp/ptoken.old@��qH � ��rH � �@@@@��tH � �@@�@���@�����;new_pool_secret_backup_path���J � ���J �@�@@@���7/var/lib/xcp/ptoken.new@���J ���J �@@@@���J � �@@�@���@�����,read_backups���L#��L/@�@@@��@@����"()���L0��L2@@�@@@�����������"|>���P}���P}�@�@@@��@������"|>���O]c��O]e@�@@@��@����;old_pool_secret_backup_path���N;A��N;\@�@@@��@�����'Unixext.string_of_file���O]f��O]|@�@@@@�@@@��@�����,SecretString)of_string���P}���P}�@�@@@@�@@@�������"|>���S����S��@�@@@��@������"|>���R��� R��@�@@@��@����;new_pool_secret_backup_path��
Q���Q��@�@@@��@�����'Unixext.string_of_file��R���R��@�@@@@�@@@��@�����,SecretString)of_string��%S���&S��@�@@@@�@@@@��*N;?�+T�@��d@@@�����!e��5U�6U@�@@@@�  �������!D%error��DV�EV@�@@@��@���	Cxapi_psr_util.ml:read_backups failed (paths='%s', '%s'). reason: %s@��NW#�OWh@@@��@����;old_pool_secret_backup_path��XXio�YXi�@�@@@��@����;new_pool_secret_backup_path��cXi��dXi�@�@@@��@�������(Printexc)to_string��rY���sY��@�@@@��@����!e��}Y���~Y��@�@@@@���Y����Y��@��@@@@�B@@@������%raise���Z����Z��@�@@@��@�  !�����*Api_errors���Z����Z��@�@@A@����,Server_error���Z����Z��@��������.internal_error���Z����Z��@�@@@�����"::���Z����Z�A�������6failed to read backups@���Z�@@@�����"[]�A@�	A@@@�A@@���Z��@@@@���Z����Z�@��&@@@�3@@@�=��Z�@@@@�M@@@��@@@@���M57@@@�=A@@@���L@@�	@���@�����5load_psr_pool_secrets���\��\1@�@@@��@@����U���\2��\4@@�@@@������������#Sys+file_exists��^?E�	^?T@�@@@��@����;old_pool_secret_backup_path��^?U�^?p@�@@@@�@@@��������#Sys+file_exists��"_qw�#_q�@�@@@��@����;new_pool_secret_backup_path��-_q��._q�@�@@@@�@@@@��2^?C�3`��@��.@@@���������%false��Ab���Bb��@@�@@@�����
��Jb���Kb��@@�@@@@�@@@@�������Sc���Tc��@@�@@@�����������"��bd���cd��@@�@@@�����$true��ld���md��@@�@@@@�@@@���������xd���yd��@@�@@@�����A���d����d��@@�@@@@�@@@�$@@@@�  �������!D%error���e����e��@�@@@��@���	%expected both files to exist: %s , %s@���e����e�#@@@��@����;old_pool_secret_backup_path���f$,��f$G@�@@@��@����;new_pool_secret_backup_path���f$H��f$c@�@@@@�#@@@������%raise���gfl��gfq@�@@@��@�  !�����*Api_errors���hrz��hr�@�@@A@����,Server_error���i����i��@��������.internal_error���j����j��@�@@@�����/���j����j��A�������	%inconsistent pool secret backup files@���j��@@@�����.�A@�A@@@�A@@���j��@@@@�� j���j��@��$@@@�1@@@�;�k��@@@@�K@@@�w@@@������������l���l��@@�@@@��������l���l��@@�@@@@�@@@@�  �������!D$info��,m�-m@�@@@��@���	$loading backup pool secrets from psr@��6m�7m5@@@@�@@@��@��������/old_pool_secret��En8B�Fn8Q@�@@@����/new_pool_secret��Nn8S�On8b@�@@@@�@@@������,read_backups��Zn8e�[n8q@�@@@��@����ð�dn8r�en8t@@�@@@@�@@@@��in8>@@���������,SecretString%equal��vp���wp��@�@@@��@�������*Xapi_globs+pool_secret���p����p��@�@@@��@�������p����p��@@�@@@@���p����p��@��@@@��@����/old_pool_secret���p����p��@�@@@@�-@@@������":=���q���q� @�@@@��@�����*Xapi_globs,pool_secrets���q���q�@�@@@��@�������q�"��q�CA��������/old_pool_secret���q�1@�@@@��������q�3A��������/new_pool_secret���q�B@�@@@������&A@�	'A@@@�(A@@�)A@@@�+*A@@���q�!,@@@@�8-@@@�������N���sOo��sOq@�@@@��@�����*Xapi_globs,pool_secrets��sOW�sOn@�@@@��@����U��sOs�sO�A��������/new_pool_secret��sO�@�@@@�����i��#sO�A��������/old_pool_secret��.sO�@�@@@�����i�&A@�	'A@@@�(A@@�)A@@@�+*A@@��;sOr,@@@@�8-@@@��>p��/@@@��0@@@�1@@@@��B]793@@@�N4A@@@��E\6@@�7@@