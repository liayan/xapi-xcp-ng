Caml1999N025����            8ocaml/xapi/xapi_pgpu.mli����  g  �    K�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	G Module that defines API functions for PGPU objects
 * @group Graphics
@��8ocaml/xapi/xapi_pgpu.mliNGG�P��@@@@@����Р+update_gpus��
R���R��@���)__context�����'Context!t��R���R��@@�@@@����$unit��!R���"R��@@�@@@��%R��@@@@���)ocaml.docÐ������	] Synchronise the PGPU objects in the database with the actual devices
 *  in the local host. @��3S���4T%@@@@@�@��6R��@�@���Р6add_enabled_VGPU_types��?V'+�@V'A@���)__context�����'Context!t��MWDP�NWDY@@�@@@���$self�����#API(ref_PGPU��\WDb�]WDn@@�@@@���%value�����#API-ref_VGPU_type��kWDx�lWD�@@�@@@����$unit��tWD��uWD�@@�@@@��xWDr@@@��zWD]@@@��|WDF@@@@���W�������	5 Enable one of the VGPU types supported by the PGPU. @���X����X��@@@@@$@���V''@�@���Р9remove_enabled_VGPU_types���Z����Z��@���)__context�����'Context!t���[����[�@@�@@@���$self�����#API(ref_PGPU���[���[�@@�@@@���%value�����#API-ref_VGPU_type���[�"��[�3@@�@@@����$unit���[�7��[�;@@�@@@���[�@@@���[�@@@���[��@@@@����o�������	6 Disable one of the VGPU types supported by the PGPU. @���\<<��\<w@@@@@z@���Z��@�@���Р6set_enabled_VGPU_types���^y}��^y�@���)__context�����'Context!t���_����_��@@�@@@���$self�����#API(ref_PGPU��`���	`��@@�@@@���%value����$list��a���a��@������#API-ref_VGPU_type�� a���!a��@@�@@@@�@@@����$unit��*b���+b��@@�@@@��.a��@@@��0`��@@@��2_��@@@@���ϐ������	3 Enable a set of VGPU types supported by the PGPU. @��?c���@c�*@@@@@�@��B^yy@�@���Р-set_GPU_group��Ke,0�Le,=@���)__context�����'Context!t��Yf@L�Zf@U@@�@@@���$self�����#API(ref_PGPU��hf@^�if@j@@�@@@���%value�����#API-ref_GPU_group��wf@t�xf@�@@�@@@����$unit���f@���f@�@@�@@@���f@n@@@���f@Y@@@���f@B@@@@���c%�������	# Move the PGPU to a new GPU group. @���g����g��@@@@@0@���e,,@�@���Р6get_remaining_capacity���k��k4@���)__context�����'Context!t���l7F��l7O@@�@@@���$self�����#API(ref_PGPU���mPZ��mPf@@�@@@���)vgpu_type�����#API-ref_VGPU_type���ngv��ng�@@�@@@����%int64���o����o��@@�@@@���ngl@@@���mPU@@@���l7<@@@@@���k
@�@���Р3assert_can_run_VGPU���q����q��@���)__context�����'Context!t���r����r��@@�@@@���$self�����#API(ref_PGPU��r���r��@@�@@@���$vgpu�����#API(ref_VGPU��r���r��@@�@@@����$unit��r���r��@@�@@@��"r��@@@��$r��@@@��&r��@@@@���Ð������	4 Check whether a VGPU can run on a particular PGPU. @��3s���4s�/@@@@@�@��6q��@�@���Р2enable_dom0_access��?u15�@u1G@���)__context�����'Context!t��MvJV�NvJ_@@�@@@���$self�����#API(ref_PGPU��\vJh�]vJt@@�@@@�����#API0pgpu_dom0_access��gvJx�hvJ�@@�@@@��kvJc@@@��mvJL@@@@@��ou11@�	@���Р3disable_dom0_access��xx���yx��@���)__context�����'Context!t���y����y��@@�@@@���$self�����#API(ref_PGPU���y����y��@@�@@@�����#API0pgpu_dom0_access���y����y��@@�@@@���y��@@@���y��@@@@@���x��@�	@���Р.mxgpu_vf_setup��������	@���)__context�����'Context!t����	���	@@�@@@����$unit����	"���	&@@�@@@����	@@@@@�����@�@���Р/nvidia_vf_setup��� F
K
O�� F
K
^@���)__context�����'Context!t��� G
a
m�� G
a
v@@�@@@���"pf�����#API'ref_PCI��� G
a
}�� G
a
�@@�@@@���&enable����$bool�� G
a
�� G
a
�@@�@@@����$unit��
 G
a
�� G
a
�@@�@@@�� G
a
�@@@�� G
a
z@@@�� G
a
c@@@@@�� F
K
K
@�@@