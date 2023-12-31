Caml1999N025����            ;ocaml/xapi/memory_check.mli����    �  �  q�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������=
 * @group Memory Management
@��;ocaml/xapi/memory_check.mliNGG�Pgi@@@@@����A�    �3host_memory_summary��a�a@@@��Р?host_maximum_guest_memory_bytes��b#'�b#F@@����%int64��b#H�b#M@@�@@@��d��@���)ocaml.doc��������	@ The maximum amount of memory that guests can use on this host. @��-cNV�.cN�@@@@@�@�Р(resident��4d���5d��@@����$list��<d���=d��@������#API&ref_VM��Gd���Hd��@@�@@@@�@@@��Lf��@���-鐠�����	. list of VMs which have a domain running here @��Ye���Ze��@@@@@�@�Р)scheduled��`f���af�@@����$list��hf��if�@������#API&ref_VM��sf��tf�@@�@@@@�@@@�@���X�������	F list of VMs which are in the process of having a domain created here @���g��gh@@@@@@@A@���f"�������
  �
   	The Pool master's view of the total memory and memory consumers on a host.
   	This doesn't take into account dynamic changes i.e. those caused by
   	ballooning. Therefore if we ask a question like, 'is there <x> amount of
   	memory free to boot VM <y>' we will get one of 3 different answers:
   	1. yes:
   		the sum of the static_max's of all VMs with domains + the request
   		is less than the total free.
   	2. maybe:
   		depending on the behaviour of the balloon drivers in the guest we
   		may be able to free the memory.
   	3. no:
   		the sum of the dynamic_min's of all the VMs with domains + the
   		request is more than the total free.
@���Rkk��`@@@@@-@���a��hij@@�@���A�    �1accounting_policy���l����l�@@@��Р*Static_max���m
��m@�@@���m@����I�������	. use static_max: conservative: useful for HA. @���m��mI@@@@@T@�Р+Dynamic_max���nJN��nJY@�@@���nJL@����a�������	? use dynamic_max: fairly conservative: useful for dom0 for HA. @���oZ`��oZ�@@@@@l@�Р+Dynamic_min���p����p��@�@@���p��@����y�������	B use dynamic_min: liberal: assumes that guests always co-operate. @���q����q�@@@@@�@@A@������������	{ Different users will wish to use a different VM accounting policy, depending
    on how conservative or liberal they are. @���jll��k��@@@@@�@���l��"@@�#@���Р7get_host_memory_summary��s�s@���)__context�����'Context!t��t".�t"7@@�@@@���$host�����#API(ref_host�� t"@�!t"L@@�@@@����3host_memory_summary��)t"P�*t"c@@�@@@��-t";@@@��/t"$@@@@���̐������	= Return a host's memory summary from live database contents. @��<udd�=ud�@@@@@�@��?s@�@���Р:vm_compute_required_memory��Hw���Iw��@��@�����#API$vM_t��Tw���Uw��@@�@@@��@����%int64��_w���`w��@@�@@@�������%int64��kw���lw��@@�@@@�����%int64��uw���vw��@@�@@@@�@@@�@@@�'@@@@@��|w��@�@���Р7vm_compute_start_memory���y����y�	@���)__context�����'Context!t���z		��z		 @@�@@@���&policy����1accounting_policy���z		,��z		=@@�@@@��@�����#API$vM_t���z		A��z		I@@�@@@�������%int64���z		M��z		R@@�@@@�����%int64���z		U��z		Z@@�@@@@�@@@�@@@���z		$@@@���z		@@@@@���y��
@�@���Р6vm_compute_used_memory���|	\	`��|	\	v@���)__context�����'Context!t���}	y	���}	y	�@@�@@@��@����1accounting_policy���}	y	���}	y	�@@�@@@��@�����#Ref!t���}	y	���}	y	�@�������"VM��}	y	��}	y	�@A@�@@@@@��}	y	��}	y	�@@@@�@@@����%int64��}	y	��}	y	�@@�@@@�@@@�*@@@��}	y	{@@@@@��|	\	\@�	@���Р	$host_compute_free_memory_with_policy��%	�	��&	�	�@���)__context�����'Context!t��3 @	�	��4 @	�	�@@�@@@��@����3host_memory_summary��> @	�
�? @	�
@@�@@@��@����1accounting_policy��I @	�
�J @	�
)@@�@@@����%int64��R @	�
-�S @	�
2@@�@@@�@@@�@@@��X @	�	�@@@@���9��������	�
   	Given a host's memory summary and a policy flag (i.e. whether to only
   	consider static_max or to consider dynamic balloon data) it returns a
   	hypothetical amount of free memory on the host.
@��e A
3
3�f E
�@@@@@ @��h	�	�@�@���Р	1host_compute_free_memory_with_maximum_compression��q G�r G8@���*dump_stats����$bool��} H;L�~ H;P@@�@@@���)__context�����'Context!t��� IQ`�� IQi@@�@@@���$host�����#Ref!t��� Jj|�� Jj�@�������$host��� Jju�� Jjz@A@�@@@@@��� Jjt�� Jj{@@@@�@@@��@����&option��� K���� K��@������#Ref!t��� K���� K��@�������"VM��� K���� K��@A@�@@@@@��� K���� K��@@@@�@@@@�@@@����%int64��� L���� L��@@�@@@�@@@��� Jjo@@@��� IQV@@@��� H;@	@@@@�����������
  �
   	Compute, from our managed data, how much memory is available on a host; this
   	takes into account both VMs that are resident_on the host and also VMs that
   	are scheduled_to_be_resident_on the host.

   	If ignore_scheduled_vm is set then we do not consider this VM as having any
   	resources allocated via the scheduled_to_be_resident_on mechanism. This is
   	used to ensure that, when we're executing this function with a view to
   	starting a VM, v, and further that v is scheduled_to_be_resident on the
   	specified host, that we do not count the resources required for v twice.

   	If 'dump_stats=true' then we write to the debug log where we think the
   	memory is being used.
@��� M���� Zbd@@@@@�@��� G@�@���Р<host_compute_memory_overhead��� \fj�� \f�@���)__context�����'Context!t��	 ]���
 ]��@@�@@@���$host�����#Ref!t�� ]��� ]��@�������$host��# ]���$ ]��@A@�@@@@@��' ]���( ]��@@@@�@@@����%int64��0 ]���1 ]��@@�@@@��4 ]��@@@��6 ]��@@@@@��8 \ff@�	@���Р:vm_compute_memory_overhead��A _���B _��@���)vm_record�����#API$vM_t��O _���P _��@@�@@@����%int64��X _���Y _��@@�@@@��\ _��@@@@@��^ _��@�@@