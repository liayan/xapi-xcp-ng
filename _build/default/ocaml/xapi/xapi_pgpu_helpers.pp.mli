Caml1999N025����   "      
   	 ocaml/xapi/xapi_pgpu_helpers.mli����  �  �  �  蠠���1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����Р8assert_VGPU_type_enabled��	 ocaml/xapi/xapi_pgpu_helpers.mliO>B�O>Z@���)__context�����'Context!t��P]l�P]u@@�@@@���$self�����#API(ref_PGPU��Qv��Qv�@@�@@@���)vgpu_type�����#API-ref_VGPU_type��-R���.R��@@�@@@����$unit��6S���7S��@@�@@@��:R��@@@��<Qv{@@@��>P]b@@@@���)ocaml.docԐ������	@ Check that the specified type of VGPU is enabled on this PGPU. @��LT���MT��@@@@@�@��OO>>@�@���Р:assert_VGPU_type_supported��XV��YV�@���)__context�����'Context!t��fW /�gW 8@@�@@@���$self�����#API(ref_PGPU��uX9C�vX9O@@�@@@���)vgpu_type�����#API-ref_VGPU_type���YP_��YPp@@�@@@����$unit���Zqv��Zqz@@�@@@���YPU@@@���X9>@@@���W %@@@@���W*�������	B Check that the specified type of VGPU is supported on this PGPU. @���[{{��[{�@@@@@5@���V��@�@���Р8assert_VGPU_type_allowed���]����]��@���)__context�����'Context!t���^����^��@@�@@@���$self�����#API(ref_PGPU���_���_�@@�@@@���)vgpu_type�����#API-ref_VGPU_type���`"��`3@@�@@@����$unit���a49��a4=@@�@@@���`@@@���_�@@@���^��@@@@������������	� Any VGPUs already resident on this PGPU must be compatible with the type of
 *  the VGPUs already running on the PGPU. For now, we only allow one VGPU_type
 *  to run on a PGPU at any one time. @���b>>��d�@@@@@�@���]��@�@���Р	 assert_no_resident_VGPUs_of_type��f�f,@���)__context�����'Context!t��g/>�g/G@@�@@@���$self�����#API(ref_PGPU��!hHR�"hH^@@�@@@���)vgpu_type�����#API-ref_VGPU_type��0i_n�1i_@@�@@@����$unit��9j���:j��@@�@@@��=i_d@@@��?hHM@@@��Ag/4@@@@���֐������	B Check that no VMs resident on this PGPU have the specified type. @��Nk���Ok��@@@@@�@��Qf@�@���Р?get_remaining_capacity_internal��Zohl�[oh�@���)__context�����'Context!t��hp���ip��@@�@@@���$self�����#API(ref_PGPU��wq���xq��@@�@@@���)vgpu_type�����#API-ref_VGPU_type���r����r��@@�@@@���1pre_allocate_list����$list���s���s�@���������#API(ref_VGPU���s����s�@@�@@@������#API(ref_PGPU���s���s�@@�@@@@�@@@@���s��@@@����&result���t+��t1@�����%int64���t��t$@@�@@@�����#exn���t&��t)@@�@@@@���t@@@���s��@@@���r��@@@���q��@@@���p��@@@@@���ohh!@�"@���Р6get_remaining_capacity���x����x��@���)__context�����'Context!t���y����y��@@�@@@���$self�����#API(ref_PGPU�� z���z��@@�@@@���)vgpu_type�����#API-ref_VGPU_type��{���{�@@�@@@���1pre_allocate_list����$list��|8�|<@���������#API(ref_VGPU��*|�+|'@@�@@@������#API(ref_PGPU��6|*�7|6@@�@@@@�@@@@��;|@@@����%int64��B}=B�C}=G@@�@@@��F|@@@��H{��@@@��Jz��@@@��Ly��
@@@@@��Nx��@�@���Р	$assert_capacity_exists_for_VGPU_type��WIM�XIq@���)__context�����'Context!t��e @t��f @t�@@�@@@���$self�����#API(ref_PGPU��t A���u A��@@�@@@���)vgpu_type�����#API-ref_VGPU_type��� B���� B��@@�@@@����$unit��� C���� C��@@�@@@��� B��@@@��� A��@@@��� @ty@@@@���V)�������	= Check that the PGPU has capacity to run the specified VGPU. @��� D���� D�	@@@@@4@���II@�@���Р	-assert_destination_pgpu_is_compatible_with_vm��� F		�� F		D@���)__context�����'Context!t��� G	G	V�� G	G	_@@�@@@���"vm�����#API&ref_VM��� H	`	h�� H	`	r@@�@@@���$vgpu�����#API(ref_VGPU��� I	s	}�� I	s	�@@�@@@���$pgpu�����#API(ref_PGPU��� J	�	��� J	�	�@@�@@@���$host�����#API(ref_host��� K	�	��� K	�	�@@�@@@���&remote�����@�����#Rpc$call�� L	�	�� L	�	�@@�@@@������&Client"Id!t�� L	�	�� L	�	�@������#Rpc(response��# L	�	��$ L	�	�@@�@@@@�@@@�@@@������#Ref!t��1 L	�	��2 L	�
 @�������'session��< L	�	��= L	�	�@A@�@@@@�@��A L	�	��B L	�	�@@@@�@@@@��E L	�	�@@@��@����$unit��N M

�O M


@@�@@@����$unit��W N

�X N

@@�@@@�@@@��\ L	�	�@@@��^ K	�	�@@@��` J	�	�	@@@��b I	s	x@@@��d H	`	e@@@��f G	G	L@@@@���(��������	� Check that the PGPU selected is compatible with the VM VGPU.
 *  Currently checks only nvml compatibility if Nvidia VGPUs
 *  are detected. @��s O

�t Q
�
�@@@@@@��v F		@� @���Р	.assert_destination_has_pgpu_compatible_with_vm�� S
�
��� S
�
�@���)__context�����'Context!t��� T
�
��� T
�
�@@�@@@���"vm�����#API&ref_VM��� U
�
��� U
�	@@�@@@���(vgpu_map����$list��� V
;�� V
?@���������#API(ref_VGPU��� V
�� V
%@@�@@@������#API-ref_GPU_group��� V
(�� V
9@@�@@@@�@@@@��� V
@@@���$host�����#API(ref_host��� W@J�� W@V@@�@@@���&remote�����@�����#Rpc$call��� XWe�� XWm@@�@@@������&Client"Id!t��� XW~�� XW�@������#Rpc(response�� XWq� XW}@@�@@@@�@@@�@@@������#Ref!t�� XW�� XW�@�������'session�� XW�� XW�@A@�@@@@�@�� XW��  XW�@@@@�@@@@��# XWd@@@��@����$unit��, Y���- Y��@@�@@@����$unit��5 Z���6 Z��@@�@@@�@@@��: XW\@@@��< W@E@@@��> V
	@@@��@ U
�
�@@@��B T
�
�@@@@���א������	� Check that the host has a PGPU compatible with the VM VGPU.
 *  Currently checks only nvml compatibility if Nvidia VGPUs
 *  are detected. @��O [���P ]1E@@@@@�@��R S
�
�@�@@