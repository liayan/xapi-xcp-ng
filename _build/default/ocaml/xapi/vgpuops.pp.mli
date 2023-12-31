Caml1999N025����            6ocaml/xapi/vgpuops.mli����  &  �  
  	e�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	R Module that handles assigning vGPUs to VMs.
 * @group Virtual-Machine Management
@��6ocaml/xapi/vgpuops.mliOHH�Q��@@@@@����Р,create_vgpus��
S���S��@���)__context�����'Context!t��T���T��@@�@@@��@�����#API(ref_host��%T���&T��@@�@@@��@��������#API&ref_VM��5T���6T��@@�@@@������#API$vM_t��AT���BT��@@�@@@@�@@@��@����$bool��MT���NT��@@�@@@����$unit��VT���WT�@@�@@@�@@@�&@@@�7@@@��]T��@@@@���)ocaml.doc��������	2 Assign a list of VGPU and/or PCI devices to a VM @��kU�lU:@@@@@@��nS��@�@���Р9list_pcis_for_passthrough��wW<@�xW<Y@���)__context�����'Context!t���X\h��X\q@@�@@@���"vm�����#API&ref_VM���X\x��X\�@@�@@@����$list���X\���X\�@��������#int���X\���X\�@@�@@@��������#int���X\���X\�@@�@@@�����#int���X\���X\�@@�@@@�����#int���X\���X\�@@�@@@�����#int���X\���X\�@@�@@@@�"@@@@�0��X\�@@@@���X\�>@@@���X\u@@@@���X\^B@@@@����|�������	J Return a list of the GPU PCI devices which have been assigned to this VM @���Y����Y��@@@@@�@���W<<R@�S@���A�    �&vgpu_t���dMR��dMX@@@@A@������������
  K Allocate a vGPU to a pGPU of a host for the VM
 *  return a list indicate which pGPU is allocated for the vGPU in following format
 *  [(v1,p1);(v2,p2);(v3,p1)]
 *  Two additional arguments dry_run and pre_allocate_list is added to this fuction.
 *  They are designed to be optional to keep the arguments interface backward-compatibility
 *  dry_run set to "false", pre_allocate_list set to "[]" by default.
 *  if dry_run mode is specified, the function just dry run the allocation process
 *  without any database operation. pre_allocate_list is used to record the dry run
 *  states @��[���c?L@@@@@�@��
dMM@@�@���Р4allocate_vgpu_to_gpu��fZ^�fZr@���'dry_run����$bool��gu�� gu�@@�@@@���1pre_allocate_list����$list��,h���-h��@���������#API(ref_VGPU��:h���;h��@@�@@@������#API(ref_PGPU��Fh���Gh��@@�@@@@�@@@@��Kh��@@@���)__context�����'Context!t��Xi���Yi��@@�@@@��@�����#API&ref_VM��ej���fj��@@�@@@��@�����#API(ref_host��rk���sk��@@�@@@��@����&vgpu_t��}l��~l�	@@�@@@����$list���m
-��m
1@���������#API(ref_VGPU���m
��m
@@�@@@������#API(ref_PGPU���m
��m
+@@�@@@@�@@@@���m
@@@�* @@@�6!@@@�D"@@@���i��$@@@���h��&@@@���guz(@@@@@���fZZ*@�+@���Р+vgpu_of_ref���o37��o3B@���)__context�����'Context!t���o3O��o3X@@�@@@��@�����#API(ref_VGPU���o3\��o3h@@�@@@����&vgpu_t���o3l��o3r@@�@@@�@@@���o3E@@@@�����������	! Get a vgpu record from vgpu ref @���pss��ps�@@@@@�@���o33@�@@