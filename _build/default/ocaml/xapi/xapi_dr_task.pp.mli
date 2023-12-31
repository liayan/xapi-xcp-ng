Caml1999N025����            ;ocaml/xapi/xapi_dr_task.mli����  _  ]  :  Π����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����Р&create��;ocaml/xapi/xapi_dr_task.mliO>B�O>H@���)__context�����'Context!t��PKZ�PKc@@�@@@���%_type����&string��Qdo�Qdu@@�@@@���-device_config����$list��)Rv��*Rv�@��������&string��5Rv��6Rv�@@�@@@�����&string��?Rv��@Rv�@@�@@@@�@@@@��DRv�@@@���)whitelist����$list��OS���PS��@�����&string��XS���YS��@@�@@@@�@@@�����#API+ref_DR_task��dT���eT��@@�@@@��hS��@@@��jRv{@@@��lQdi@@@��nPKP
@@@@���)ocaml.doc�������
  7 * Introduce SR records into the database based on a probe result.
    * Create a PBD for each SR for each host.
    * Plug all the PBDs.
    * Set the SR's introduced_by field to the returned DR_task.

    If anything goes wrong, unplug all PBDs which were created, forget the SRs,
    and re-raise the error. @��|U���}[�@@@@@@��O>>@�@���Р'destroy���]��]@���)__context�����'Context!t���]&��]/@@�@@@���$self�����#API+ref_DR_task���]8��]G@@�@@@����$unit���]K��]O@@�@@@���]3@@@���]@@@@���FI�������	� * Unplug all PBDs for each SR associated with the DR_task.
    * Forget each SR associated with the DR_task.
    * Destroy the DR_task. @���^PP��`��@@@@@T@���]@�@@