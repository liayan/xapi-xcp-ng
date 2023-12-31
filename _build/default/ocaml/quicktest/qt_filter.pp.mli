Caml1999N025����         	   =ocaml/quicktest/qt_filter.mli����  �  �    ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  � This module provides a small framework for selecting the inputs of each
    test case using filters.

    These quicktest filters map a set of Alcotest test cases to another.
    What these filters usually do is select a set of objects that can be passed
    to the test function as the next input it's expecting, and then return a
    new set of tests specialized for those inputs.

    For example, the [sr] filter, which itself is a small domain-specific
    language, allows specifying which SRs a storage test should be run on, and
    it maps each storage test to a set of tests, one for each SR it supports.

    Filters can be chained together using the [|>] operator, to specify each
    input of a test case in turn, including the connection details - the
    session reference and the RPC function.

    The arguments of the quicktest executable have to be processed first before
    these filters are used. @��=ocaml/quicktest/qt_filter.mliA@@�R�@@@@@����Р$wrap��
T���T��@��@��@����$unit��T���T��@@�@@@����$unit��T��� T��@@�@@@�@@@����$unit��)T���*T��@@�@@@��-T��@@@@���)ocaml.docː������	$ This has to wrap the quicktest run @��;U���<U��@@@@@�@��>T��@�@���A�    �)test_case��HYqy�IYq�@����!a��PYqv�QYqx@@@B@@@A��������&string��\Yq��]Yq�@@�@@@������(Alcotest+speed_level��hYq��iYq�@@�@@@���!a��pYq��qYq�@@@@�@@@���E�������	 A slightly different definition of Alcotest.test_case, to ensure we can
    reason about the entire type of the test function @��W����X8p@@@@@@���Yqq@@�@���A�    �&filter���\ ��\ @����!a���\ ��\ @@@B����!b���\ 
��\ @@@B@@@A���@����$list���\ $��\ (@�����)test_case���\ ��\ #@���!a���\ ��\ @@@@�	@@@@�@@@����$list���\ 9��\ =@�����)test_case���\ /��\ 8@���!b���\ ,��\ .@@@@�	@@@@�@@@�@@@����r�������	Q A filter takes a list of tests and returns a new list of transformed test cases @���[����[��@@@@@}@���\  $@@�%@���Р$conn���^?C��^?G@����&filter���^?q��^?w@���@�����"Qt#rpc��^?K�^?Q@@�@@@��@�����#Ref!t��^?`�^?e@�������'session��^?V�^?^@A@�@@@@@��^?U� ^?_@@@@�@@@��!c��&^?i�'^?k@@@�
@@@�'@@@���!c��/^?m�0^?o@@@@��2^?J<@@@@���ϐ������	H Provides connection details: passes the rpc and session_id to the test @��?_xx�@_x�@@@@@�@��B^??L@�M@�����"SR��Ka���La��@�������^퐠�����
  ( Filters to help write test cases that run on a given SR. The idea is that
      one [test_case] is mapped to multiple test cases, one for each SR
      the storage test should run on. Which SRs a storage test can run on is
      defined by listing the supported SRs using the below combinators. @��]b���^e�@@@@@����A�    �#srs��gg�hg@@@@A@@��jg
@@�@���Р#all��si�ti@����#srs��{i �|i#@@�@@@@���P�������	� All connected SRs, or only the default if the corresponding CLI option is
      enabled. The output of this can be piped with [|>] into the below filters
      to refine the set of SRs. @���j$&��l��@@@@@%@���i@�@���Р&random���n����n��@��@����#srs���n����n��@@�@@@����#srs���n����n�@@�@@@�@@@@@���n��@�@���Р'not_iso���p	��p@��@����#srs���p��p@@�@@@����#srs���p��p@@�@@@�@@@@@���p@�@���Р,with_any_vdi���r%��r1@��@����#srs���r4��r7@@�@@@����#srs���r;��r>@@�@@@�@@@@������������	� Selects SRs that either have a VDI or we can create & destroy a VDI on them.
      This filter should be called from tests using [VDI.with_any] @���s?A��t��@@@@@�@���r!@�@���Р*can_unplug��v���v��@��@����#srs��v���v��@@�@@@����#srs��v���v��@@�@@@�@@@@������������	# Selects SRs that can be unplugged @��*w���+w�	!@@@@@�@��-v��@�@���Р2allowed_operations��6y	#	)�7y	#	;@��@�����#API6storage_operations_set��By	#	>�Cy	#	X@@�@@@��@����#srs��My	#	\�Ny	#	_@@�@@@����#srs��Vy	#	c�Wy	#	f@@�@@@�@@@�@@@@@��\y	#	%@�@���Р0has_capabilities��e{	h	n�f{	h	~@��@����$list��o{	h	��p{	h	�@�����&string��x{	h	��y{	h	�@@�@@@@�@@@��@����#srs���{	h	���{	h	�@@�@@@����#srs���{	h	���{	h	�@@�@@@�@@@�@@@@@���{	h	j@�@���Р(has_type���}	�	���}	�	�@��@����&string���}	�	���}	�	�@@�@@@��@����#srs���}	�	���}	�	�@@�@@@����#srs���}	�	���}	�	�@@�@@@�@@@�@@@@����[�������? Selects SRs of the given type @���~	�	���~	�	�@@@@@f@���}	�	�@�@���Р(not_type��� @	�	��� @	�	�@��@����&string��� @	�	��� @	�
@@�@@@��@����#srs��� @	�
�� @	�
@@�@@@����#srs��� @	�
�� @	�
@@�@@@�@@@�@@@@������������	# Filters out SRs of the given type @�� A

� A

:@@@@@�@��	 @	�	�@�@���Р'smapiv1�� C
<
B� C
<
I@��@����#srs�� C
<
L� C
<
O@@�@@@����#srs��% C
<
S�& C
<
V@@�@@@�@@@@����Ő������5 Selects SMAPIv1 SRs @��5 D
W
Y�6 D
W
s@@@@@�@��8 C
<
>@�@���Р'smapiv3��A F
u
{�B F
u
�@��@����#srs��K F
u
��L F
u
�@@�@@@����#srs��T F
u
��U F
u
�@@�@@@�@@@@���*��������5 Selects SMAPIv3 SRs @��d G
�
��e G
�
�@@@@@�@��g F
u
w@�@���Р(thin_pro��p I
�
��q I
�
�@��@����#srs��z I
�
��{ I
�
�@@�@@@����#srs��� I
�
��� I
�
�@@�@@@�@@@@���Y#�������	  Selects thinly-provisioned SRs @��� J
�
��� J
�
�@@@@@.@��� I
�
�@�@���Р(list_srs��� L
�
��� L
�@��@����#srs��� L
��� L
�@@�@@@����$list��� L
��� L
�@������"Qt'sr_info��� L
��� L
�@@�@@@@�@@@�@@@@@��� L
�
�@�@@���a���� M@@@���a��@�@���Р"sr��� O $�� O &@��@�����"SR#srs��� O )�� O /@@�@@@����&filter��� O J�� O P@���@�����"Qt'sr_info��� O 4�� O >@@�@@@��!b��� O B�� O D@@@�
@@@���!b�� O F� O H@@@@�� O 3@@@�* @@@@@��	 O  "@�#@���Р+vm_template�� QRV� QRa@��@����&string�� QRd� QRj@@�@@@����&filter��% QR��& QR�@���@�����#API&ref_VM��2 QRo�3 QRy@@�@@@��!b��9 QR}�: QR@@@�
@@@���!b��A QR��B QR�@@@@��D QRn@@@�* @@@@@��G QRR"@�#@@