Caml1999M025����   +         	)ocaml/tests/test_vm_memory_constraints.ml����  M~  �  >E  =�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������&Printf��	)ocaml/tests/test_vm_memory_constraints.mlNGL�NGR@�@@A��NGG@@�@�����!C��OSZ�OS[@�����5Vm_memory_constraints5Vm_memory_constraints��OS^�OS�@�@@@��OSS@�@���@�����"++��(Q���)Q��@�@@@�����%Int64#add��3Q���4Q��@�@@@@��7Q��@@�@���@�����"--��CS���DS��@�@@@�����%Int64#sub��NS���OS��@�@@@@��RS��@@�@���@�����"**��^U���_U��@�@@@�����%Int64#mul��iU���jU��@�@@@@��mU��@@�@���@�����"//��yW���zW��@�@@@�����%Int64#div���W����W��@�@@@@���W��@@�@���@�����&create���[os��[oy@�@@@��@@������*static_min���[o{��[o�@�@@@����+dynamic_min���[o���[o�@�@@@����&target���[o���[o�@�@@@����+dynamic_max���[o���[o�@�@@@����*static_max���[o���[o�@�@@@@���[oz��[o�@��,@@@��@�����%scale���\����\��@�@@@��@@���%value���\����\��@�@@@������"**���\����\��@�@@@��@�������%Int64&of_int���\����\��@�@@@��@����%value��\���\��@�@@@@�@@@��@������"**��\���\��@�@@@��@���$1024� L��\���\��@@@��@���$1024� L��(\���)\��@@@@�@@@@�2@@@�MA@@@��.\��@@�  !�����!C��8]���9]��@�@@A@������*static_min��C_��D_�@������%scale��M_��N_�@�@@@��@����*static_min��X_��Y_� @�@@@@�@@@����+dynamic_min��b`!'�c`!2@������%scale��l`!4�m`!9@�@@@��@����+dynamic_min��w`!:�x`!E@�@@@@�@@@����&target���aFL��aFR@������%scale���aFT��aFY@�@@@��@����&target���aFZ��aF`@�@@@@�@@@����+dynamic_max���bag��bar@������%scale���bat��bay@�@@@��@����+dynamic_max���baz��ba�@�@@@@�@@@����*static_max���c����c��@������%scale���c����c��@�@@@��@����*static_max���c����c��@�@@@@�@@@@@����d��@@@��@@@��@@@�A@@���)ocaml.docu�������	~ Creates a memory constraints record (with values in bytes) from the given
    memory constraints tuple (with values in MiB). @���Y����Z9n@@@@@�@���[oo@@�@���@�����2constraints_pinned���g����g��@�@@@����"::��i���oHKA����������!0@��i���i��@@@����!0@��i���i��@@@����!0@�� i���!i��@@@����!0@��(i���)i��@@@����!5@��0i���1i��@@@@�1�3i��@��&@@@�����;��<j��:A����������!0@��Ij���Jj��@@@����!1@��Qj���Rj��@@@����!1@��Yj���Zj��@@@����!1@��aj���bj��@@@����!5@��ij���jj��@@@@�0�lj��@��&@@@�����t��uk��sA����������!0@���k����k��@@@����!2@���k� ��k�@@@����!2@���k���k�@@@����!2@���k���k�@@@����!5@���k�	��k�
@@@@�0��k�@��&@@@���������l�A����������!0@���l��l@@@����!3@���l��l@@@����!3@���l��l@@@����!3@���l��l@@@����!5@���l��l@@@@�0��l@��&@@@��������m $�A����������!0@���m %��m &@@@����!4@���m (��m )@@@����!4@��m +�m ,@@@����!4@��m .�m /@@@����!5@��m 1�m 2@@@@�0�m 3@��&@@@������� n48A����������!0@��-n49�.n4:@@@����!5@��5n4<�6n4=@@@����!5@��=n4?�>n4@@@@����!5@��En4B�Fn4C@@@����!5@��Mn4E�Nn4F@@@@�0�Pn4G@��&@@@�����"[]��ZoHJXA@�YA@@@�=ZA@@�>[A@@@�x\A@@�y]A@@@��^A@@��_A@@@��`A@@��aA@@@�)bA@@�*cA@@@�edA@@��hh��f@@@@��jg��h@@�i@���@�����4constraints_unpinned��vqMQ�wqMe@�@@@����}��~slp�y��A����������!0@���slq��slr@@@����!0@���slt��slu@@@����!0@���slw��slx@@@����!1@���slz��sl{@@@����!5@���sl}��sl~@@@@�1��sl@��&@@@���������t��:A����������!0@���t����t��@@@����!1@���t����t��@@@����!1@���t����t��@@@����!2@���t����t��@@@����!5@���t����t��@@@@�0��t��@��&@@@��������u��sA����������!0@���u����u��@@@����!2@��u���u��@@@����!2@��u���u��@@@����!3@��u���u��@@@����!5@��u���u��@@@@�0�!u��@��&@@@�����)��*v���A����������!0@��7v���8v��@@@����!2@��?v���@v��@@@����!3@��Gv���Hv��@@@����!3@��Ov���Pv��@@@����!5@��Wv���Xv��@@@@�0�Zv��@��&@@@�����b��cw���A����������!0@��pw���qw��@@@����!3@��xw���yw��@@@����!4@���w����w��@@@����!4@���w����w��@@@����!5@���w����w��@@@@�0��w��@��&@@@���������x��A����������!0@���x����x��@@@����!4@���x����x��@@@����!5@���x����x��@@@����!5@���x����x��@@@����!5@���x����x��@@@@�0��x��@��&@@@�����|���y��WA@�XA@@@�<YA@@�=ZA@@@�w[A@@�x\A@@@��]A@@��^A@@@��_A@@��`A@@@�(aA@@�)bA@@@�dcA@@���rhje@@@@���qMMg@@�h@���@�����1constraints_valid���{����{��@�@@@��������}	�� G��A����������!0@��}
�}@@@����!1@��}�}@@@����!2@��}�}@@@����!3@��}� }@@@����!4@��'}�(}@@@@�1�*}@��&@@@�����2��3~:A����������!1@��@~�A~@@@����!2@��H~!�I~"@@@����!3@��P~$�Q~%@@@����!4@��X~'�Y~(@@@����!5@��`~*�a~+@@@@�0�c~,@��&@@@�����k��l-1sA����������!1@��y-2�z-3@@@����!1@���-5��-6@@@����!2@���-8��-9@@@����!3@���-;��-<@@@����!4@���->��-?@@@@�0��-@@��&@@@��������� @AE�A����������!1@��� @AF�� @AG@@@����!2@��� @AI�� @AJ@@@����!3@��� @AL�� @AM@@@����!4@��� @AO�� @AP@@@����!4@��� @AR�� @AS@@@@�0�� @AT@��&@@@�����ݰ�� AUY�A����������!2@��� AUZ�� AU[@@@����!2@��� AU]�� AU^@@@����!2@��� AU`�� AUa@@@����!3@�� AUc� AUd@@@����!4@�� AUf� AUg@@@@�0� AUh@��&@@@������� BimA����������!1@��$ Bin�% Bio@@@����!2@��, Biq�- Bir@@@����!3@��4 Bit�5 Biu@@@����!3@��< Biw�= Bix@@@����!3@��D Biz�E Bi{@@@@�0�G Bi|@��&@@@�����O��P C}�WA����������!3@��] C}��^ C}�@@@����!3@��e C}��f C}�@@@����!3@��m C}��n C}�@@@����!3@��u C}��v C}�@@@����!4@��} C}��~ C}�@@@@�0�� C}�@��&@@@��������� D���A����������!1@��� D���� D��@@@����!2@��� D���� D��@@@����!2@��� D���� D��@@@����!2@��� D���� D��@@@����!2@��� D���� D��@@@@�0�� D��@��&@@@��������� E���A����������!4@��� E���� E��@@@����!4@��� E���� E��@@@����!4@��� E���� E��@@@����!4@��� E���� E��@@@����!4@��� E���� E��@@@@�0�� E��@��&@@@��������� F��A����������!1@�� F���	 F��@@@����!1@�� F��� F��@@@����!1@�� F��� F��@@@����!1@��  F���! F��@@@����!1@��( F���) F��@@@@�0�+ F��@��&@@@�����۰�4 G��;A@�<A@@@�<=A@@�=>A@@@�w?A@@�x@A@@@��AA@@��BA@@@��CA@@��DA@@@�(EA@@�)FA@@@�cGA@@�dHA@@@��IA@@��JA@@@��KA@@��LA@@@�MA@@�NA@@@�POA@@��J|Q@@@@��L{��S@@�T@���@�����3constraints_invalid��X I���Y I��@�@@@����_��` K���a QhkA����������!2@��n K���o K��@@@����!1@��v K���w K��@@@����!2@��~ K��� K��@@@����!3@��� K���� K��@@@����!4@��� K��� K�@@@@�1�� K�@��&@@@��������� L:A����������!4@��� L	�� L
@@@����!1@��� L�� L@@@����!2@��� L�� L@@@����!3@��� L�� L@@@����!4@��� L�� L@@@@�0�� L@��&@@@�����Ұ�� MsA����������!5@��� M�� M@@@����!1@��� M �� M!@@@����!2@��� M#�� M$@@@����!3@��� M&�� M'@@@����!4@��  M)� M*@@@@�0� M+@��&@@@������� N,0�A����������!0@�� N,1� N,2@@@����!4@��! N,4�" N,5@@@����!2@��) N,7�* N,8@@@����!3@��1 N,:�2 N,;@@@����!4@��9 N,=�: N,>@@@@�0�< N,?@��&@@@�����D��E O@D�A����������!0@��R O@E�S O@F@@@����!5@��Z O@H�[ O@I@@@����!2@��b O@K�c O@L@@@����!3@��j O@N�k O@O@@@����!4@��r O@Q�s O@R@@@@�0�u O@S@��&@@@�����}��~ PTXA����������!0@��� PTY�� PTZ@@@����!1@��� PT\�� PT]@@@����!2@��� PT_�� PT`@@@����!5@��� PTb�� PTc@@@����!4@��� PTe�� PTf@@@@�0�� PTg@��&@@@�����^��� QhjWA@�XA@@@�<YA@@�=ZA@@@�w[A@@�x\A@@@��]A@@��^A@@@��_A@@��`A@@@�(aA@@�)bA@@@�dcA@@��� J��e@@@@��� I��g@@�h@���@�����	 constraints_pinned_at_static_max��� Smq�� Sm�@�@@@����ڰ�� T���� T��A����������!0@��� T���� T��@@@����!0@��� T���� T��@@@����!0@��� T���� T��@@@����!0@��	 T���	 T��@@@����!0@��		 T���	
 T��@@@@�1�	 T��@��&@@@�������	 T��:A����������!0@��	" T���	# T��@@@����!1@��	* T���	+ T��@@@����!1@��	2 T���	3 T��@@@����!1@��	: T���	; T��@@@����!1@��	B T���	C T��@@@@�0�	E T��@��&@@@�����M��	N T��sA����������!0@��	[ T���	\ T��@@@����!2@��	c T���	d T��@@@����!2@��	k T���	l T��@@@����!2@��	s T���	t T��@@@����!2@��	{ T���	| T��@@@@�0�	~ T��@��&@@@��������	� T���A����������!1@��	� T���	� T��@@@����!2@��	� T���	� T��@@@����!2@��	� T���	� T��@@@����!2@��	� T���	� T��@@@����!2@��	� T���	� T��@@@@�0�	� T��@��&@@@�����g�	�A@�
�A@@@�;�A@@�<�A@@@�v�A@@�w�A@@@���A@@���A@@@���A@@��	� T���@@@@��	� Smm�@@��@���@�����7test_indicator_function��	� W+/�	� W+F@�@@@��@@���"fn��	� W+G�	� W+I@�@@@��@@���'fn_name��	� W+J�	� W+Q@�@@@��@@���&output��	� W+R�	� W+X@�@@@��@@���+output_name��	� W+Y�
  W+d@�@@@��@@���&inputs��
	 W+e�

 W+k@�@@@���������'sprintf��
 Xnr�
 Xny@�@@@��@���%%s_%s@��
! Xnz�
" Xn�@@@��@����'fn_name��
+ Xn��
, Xn�@�@@@��@����+output_name��
6 Xn��
7 Xn�@�@@@@�#@@@���%Quick@��
? Y���
@ Y��@@@���@@����"()��
J Z���
K Z��@@�@@@�������$List$iter��
W [���
X [��@�@@@��@��@@���!i��
c \���
d \��@�@@@�������(Alcotest%check��
p ]���
q ]��@�@@@��@�������4Alcotest_comparators,only_compare��
 ^���
� ^�	@�@@@��@����@��
� ^�	�
� ^�	@@�@@@@��
� ^���
� ^�	@��@@@��@���,return value@��
� _		)�
� _		7@@@��@����&output��
� _		8�
� _		>@�@@@��@������"fn��
� `	?	L�
� `	?	N@�@@@���+constraints������&create��
� `	?	]�
� `	?	c@�@@@��@����!i��
� `	?	d�
� `	?	e@�@@@@��
� `	?	\�
� `	?	f@��@@@@��
� `	?	K�
� `	?	g@��'@@@@�g@@@��
� \���
� a	h	q@���
� \��
@@@��@����&inputs��
� b	r	z�
� b	r	�@�@@@@��@@@��
� Z��@@@@��
� Xnp�
� c	�	�@���
@@@��A@@��A@@��A@@�	A@@�A@@���	��������	I Tests that [fn i] evaluates to [output] for all values [i] in [inputs]. @�� V��� V�*@@@@@�@�� W++@@�@���@�����4test_are_pinned_true�� e	�	�� e	�	�@�@@@������7test_indicator_function�� f	�	�� f	�	�@�@@@��@�����!C*are_pinned��( f	�	��) f	�	�@�@@@��@���*are_pinned@��2 f	�	��3 f	�	�@@@��@����$true��< f	�	��= f	�	�@@�@@@��@���$true@��F f	�	��G f	�	�@@@��@����2constraints_pinned��P g	�	��Q g	�	�@�@@@@�9@@@@��U e	�	�@@�@���@�����5test_are_pinned_false��a i	�	��b i	�
@�@@@������7test_indicator_function��l j

�m j

.@�@@@��@�����!C*are_pinned��y j

/�z j

;@�@@@��@���*are_pinned@��� j

<�� j

H@@@��@����%false��� j

I�� j

N@@�@@@��@���%false@��� j

O�� j

V@@@��@����4constraints_unpinned��� k
W
[�� k
W
o@�@@@@�9@@@@��� i	�	�@@�@���@�����3test_are_valid_true��� m
q
u�� m
q
�@�@@@������7test_indicator_function��� n
�
��� n
�
�@�@@@��@�����!C)are_valid��� n
�
��� n
�
�@�@@@��@���)are_valid@��� n
�
��� n
�
�@@@��@�������� n
�
��� n
�
�@@�@@@��@���$true@��� n
�
��� n
�
�@@@��@����1constraints_valid��� n
�
��� n
�
�@�@@@@�8@@@@��� m
q
q@@�@���@�����4test_are_valid_false�� p
�
�� p
�
�@�@@@������7test_indicator_function�� q
�
�� q
�@�@@@��@�����!C)are_valid�� q
�� q
�@�@@@��@���)are_valid@��$ q
��% q
�(@@@��@�������- q
�)�. q
�.@@�@@@��@���%false@��7 q
�/�8 q
�6@@@��@����3constraints_invalid��A r7;�B r7N@�@@@@�8@@@@��F p
�
�@@�@���@�����	,test_are_valid_and_pinned_at_static_max_true��R tPT�S tP�@�@@@������7test_indicator_function��] u���^ u��@�@@@��@�����!C	"are_valid_and_pinned_at_static_max��j u���k u��@�@@@��@���	"are_valid_and_pinned_at_static_max@��t v���u v��@@@��@����B��} v���~ v��@@�@@@��@���$true@��� v���� v��@@@��@����	 constraints_pinned_at_static_max��� w���� w�@�@@@@�8@@@@��� tPP@@�@���@�����	-test_are_valid_and_pinned_at_static_max_false��� y!�� yN@�@@@������7test_indicator_function��� zQS�� zQj@�@@@��@�����!C	"are_valid_and_pinned_at_static_max��� zQk�� zQ�@�@@@��@���	"are_valid_and_pinned_at_static_max@��� {���� {��@@@��@����A��� {���� {��@@�@@@��@���%false@��� {���� {��@@@��@������!@��� |���� |��@�@@@��@����3constraints_invalid��� |���� |��@�@@@��@����4constraints_unpinned��� |���� |��@�@@@@��� |���� |��@��@@@@�U@@@@�� y@@�@���@�����;test_reset_to_safe_defaults�� ~��� ~�@�@@@��@@����а� ~�� ~�@@�@@@�������$List$iter��&  �' )@�@@@��@��@@������%input��5 �*4�6 �*9@�@@@����&output��> �*;�? �*A@�@@@@��B �*3�C �*B@��@@@��@�����%reset��O �FP�P �FU@�@@@��@@���+constraints��Y �FV�Z �Fa@�@@@�������!C6reset_to_safe_defaults��f �Fd�g �F|@�@@@���+constraints������r �F~�s �F�@�@@@@�@@@�A@@@��x �FL@@�������(Alcotest%check��� ����� ���@�@@@��@�������4Alcotest_comparators,only_compare��� ����� ���@�@@@��@����S��� ����� ���@@�@@@@��� ����� ���@��@@@��@���0same constraints@��� ����� ���@@@��@������%reset��� ����� ���@�@@@��@������&create��� ����� ��@�@@@��@����%input��� ���� ��@�@@@@��� ����� ��	@��@@@@��� ����� ��
@��%@@@��@������&create��� ��� �@�@@@��@����&output��� ��� �!@�@@@@��� ��� �"@��@@@@�w@@@��@@@��� �*.�� �#(@���  �*/@@@��@������ �/5�	 ���A�������������#256@�� �/7� �/:@@@����#512@��! �/<�" �/?@@@����$1024@��) �/A�* �/E@@@����$2048@��1 �/G�2 �/K@@@����$4096@��9 �/M�: �/Q@@@@��< �/6�= �/R@��'@@@�������#256@��I �/U�J �/X@@@����$4096@��Q �/Z�R �/^@@@����$4096@��Y �/`�Z �/d@@@����$4096@��a �/f�b �/j@@@����$4096@��i �/l�j �/p@@@@��l �/T�m �/q@��'@@@@�i�q �/r@��8@@@�����y��z �syrA�������������$4096@��� �s{�� �s@@@����$2048@��� �s��� �s�@@@����$1024@��� �s��� �s�@@@����#512@��� �s��� �s�@@@����#256@��� �s��� �s�@@@@��� �sz�� �s�@��'@@@�������#256@��� �s��� �s�@@@����#256@��� �s��� �s�@@@����#256@��� �s��� �s�@@@����#256@��� �s��� �s�@@@����#256@��� �s��� �s�@@@@��� �s��� �s�@��'@@@@�h�� �s�@��8@@@�������� ����A�������������$1024@��� ����� ���@@@����$1024@�� ���� ���@@@����$1024@�� ���� ���@@@����$1024@�� ���� ���@@@����$1024@�� ���� ���@@@@�� ���� ���@��'@@@�������$1024@��+ ����, ���@@@����$1024@��3 ����4 ���@@@����$1024@��; ����< ���@@@����$1024@��C ����D ���@@@����$1024@��K ����L ���@@@@��N ����O ���@��'@@@@�h�S ���@��8@@@�������\ ���TA@�UA@@@�tVA@@�uWA@@@��XA@@��YA@@@�[ZA@@��d �)-\@@@@�@]@@@�N^A@@@��h ~��`@@�a@���@�����$test��t ��u �	@�@@@����{��| ��} � #A��������4test_are_pinned_true��� �(@�@@@��������� �)-A��������5test_are_pinned_false��� �)B@�@@@��������� �CG'A��������3test_are_valid_true��� �CZ@�@@@��������� �[_:A��������4test_are_valid_false��� �[s@�@@@�����Ȱ�� �txMA��������	,test_are_valid_and_pinned_at_static_max_true��� �t�@�@@@�����۰�� ���`A��������	-test_are_valid_and_pinned_at_static_max_false��� ���@�@@@�������� ���sA����������;test_reset_to_safe_defaults@��� ����� ���@@@���%Quick@�� ���� ��@@@�����;test_reset_to_safe_defaults�� ��� ��@�@@@@�!� ��@��@@@�������� � "�A@��A@@@�-�A@@�.�A@@@�B�A@@�C�A@@@�W�A@@�X�A@@@�l�A@@�m�A@@@���A@@���A@@@���A@@���A@@@���A@@��) ��@@@@��+ ��@@��@@