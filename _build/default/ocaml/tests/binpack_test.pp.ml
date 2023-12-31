Caml1999M025����            ;ocaml/tests/binpack_test.ml����  ��    q  n������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������'BadPlan��;ocaml/tests/binpack_test.mlP���P��@��@@��P��@@�@�@��������'Binpack��R���R��@�@@A��R��@@�@���@�����$time��"T���#T��@�@@@��@@���!f��,T���-T��@�@@@��@�����%start��8U���9U��@�@@@�������$Unix,gettimeofday��EU���FU��@�@@@��@����"()��PU���QU��@@�@@@@�@@@@��UU��@@��@�����&result��_V���`V��@�@@@������!f��jV���kV��@�@@@��@����%��tV���uV��@@�@@@@�@@@@��yV��@@��@�����$time���W����W��@�@@@������"-.���W���W�@�@@@��@�������$Unix,gettimeofday���W���W�@�@@@��@����X���W���W�@@�@@@@�@@@��@����%start���W���W�@�@@@@�@@@@���W��@@�������&Printf&printf���X"$��X"1@�@@@��@���=result: %Ld time taken: %.2f
@���X"2��X"R@@@��@����&result���X"S��X"Y@�@@@��@����$time���X"Z��X"^@�@@@@�#@@@�/@@@�o@@@��@@@��A@@@���T��	@@�
@���@�����*make_thing���[����[��@�@@@��@@���$base��[���[��@�@@@��@@���%extra��[���[��@�@@@��@@���!n��[���[��@�@@@�������$List#map��"\���#\��@�@@@��@��@@���!x��.\���/\��@�@@@�������!x��:\���;\��@�@@@��������%Int64#add��H\���I\��@�@@@��@����$base��S\���T\��@�@@@��@�������&Random%int64��b\���c\��@�@@@��@����%extra��m\���n\��@�@@@@��q\���r\��@��@@@@�.@@@@��w\���x\��@��A	@@@��|\���}\��@����\��	@@@��@������&mkints���\����\��@�@@@��@����!n���\����\��@�@@@@���\����\��@��@@@@�}@@@��A@@��A@@��A@@@���[��	@@�
@���@�����*choose_one���^����^��@�@@@��@@���$list���^����^�@�@@@�������$List#nth���^���^�@�@@@��@����$list���^���^�@�@@@��@�������&Random#int���^���^�@�@@@��@�������$List&length���^���^�*@�@@@��@����$list���^�+��^�/@�@@@@���^���^�0@��@@@@��^��^�1@��'@@@@�B@@@�PA@@@��
^��@@�@���@�����+make_config��`37�`3B@�@@@��@@���(host_num�� `3C�!`3K@�@@@��@@���)host_base��*`3L�+`3U@�@@@��@@���*host_extra��4`3V�5`3`@�@@@��@@���&vm_num��>`3a�?`3g@�@@@��@@���'vm_base��H`3h�I`3o@�@@@��@@���(vm_extra��R`3p�S`3x@�@@@��@@���,num_failures��\ay}�]ay�@�@@@��@�����%hosts��hb���ib��@�@@@������*make_thing��sb���tb��@�@@@��@����)host_base��~b���b��@�@@@��@����*host_extra���b����b��@�@@@��@����(host_num���b����b��@�@@@@�%@@@@���b��@@��@�����#vms���c����c��@�@@@������*make_thing���c����c��@�@@@��@����'vm_base���c����c��@�@@@��@����(vm_extra���c����c��@�@@@��@����&vm_num���c����c��@�@@@@�%@@@@���c��@@��@�����)placement���d����d�@�@@@�������$List#map���d�
��d�@�@@@��@��@@������"vm���d���d�@�@@@��@�� d��d�@@@@��d��d�@��@@@�������"vm��d�$�d�&@�@@@�������#fst��d�(�d�+@�@@@��@������*choose_one��)d�-�*d�7@�@@@��@����%hosts��4d�8�5d�=@�@@@@��8d�,�9d�>@��@@@@�!@@@@��>d�#�?d�?@��2	@@@��Cd��Dd�@@���Gd�	@@@��@����#vms��Pd�A�Qd�D@�@@@@�i@@@@��Ud��@@��@�����&config��_eHN�`eHT@�@@@������%hosts��jeHX�keH]@�����@@@����#vms��weH_�xeHb@�����@@@����)placement���eHd��eHm@�����@@@����+total_hosts���eHo��eHz@����(host_num���eH|��eH�@�@@@����,num_failures���eH���eH�@�����@@@@@���eHW��eH�@@@@���eHJ@@�  ������3check_configuration���f����f��@�@@@��@����&config���f����f��@�@@@@�@@@����&config���f����f��@�@@@�@@@�%@@@�~@@@� @@@�<@@@�zA@@��	A@@��
A@@��A@@��A@@��A@@��A@@@���`33@@�@���@�����*check_plan���l����l��@�@@@��@@���&config���l����l��@�@@@��@@���*dead_hosts���l����l��@�@@@��@@���$plan��l���l��@�@@@��@�����0memory_remaining��m���m�@�@@@������'account��m��m�@�@@@��@������&config��+m��,m�@�@@@��%hosts��2m��3m�"@�
@@@��@������&config��?m�#�@m�)@�@@@��#vms��Fm�*�Gm�-@�
@@@��@����$plan��Qm�.�Rm�2@�@@@@�7@@@@��Vm��@@�  ���������$List)fold_left��eq���fq��@�@@@��@����"||��pq���qq��@�@@@��@����%false��{q���|q��@@�@@@��@�������$List#map���r����r��@�@@@��@��@@���!x���r����r��@�@@@������!<���r����r��@�@@@��@����!x���r����r��@�@@@��@���!0� L���r����r��@@@@�@@@���r����r��@����r��@@@��@�������$List#map���r����r��@�@@@��@����#snd���r����r��@�@@@��@����0memory_remaining���r����r�@�@@@@���r����r�@��@@@@���r����r�@��e@@@@��@@@������%raise���t��t@�@@@��@����'BadPlan��t�t!@@�@@@@�@@@@��p��@@@��@�����*failed_vms��vPV�vP`@�@@@������.get_failed_vms��vPc�vPq@�@@@��@����&config��(vPr�)vPx@�@@@��@����*dead_hosts��3vPy�4vP�@�@@@@�@@@@��8vPR@@��������!>��Cw���Dw��@�@@@��@�������$List&length��Rw���Sw��@�@@@��@����*failed_vms��]w���^w��@�@@@@�@@@��@�������$List&length��mw���nw��@�@@@��@����$plan��xw���yw��@�@@@@�@@@@�+@@@������%raise���w����w��@�@@@��@����'BadPlan���w����w��@@�@@@@�@@@@���w��@@@�_@@@��@@@�C@@@��	A@@��
A@@��A@@@���l��@@�@���@�����	0prove_plan_is_possible_via_counterexample_search���
#
'��
#
W@�@@@��@@�����!h��� @
X
]�� @
X
^@�@@@�����'Binpack)heuristic��� @
X
l�� @
X
}@�����#int��� @
X
b�� @
X
e@@�@@@�����#int��� @
X
g�� @
X
j@@�@@@@��� @
X
a@@@��� @
X
\�� @
X
~@@@��@@���&config��� @
X
�� @
X
�@�@@@��@�����%limit��� B
�
��� B
�
�@�@@@���%10000� L��� B
�
��� B
�
�@@@@��� B
�
�@@��@�����)num_hosts�� C
�� C
�@�@@@�������$List&length�� C
�� C
�@�@@@��@������&config�� C
�� C
�!@�@@@��%hosts��% C
�"�& C
�'@�
@@@@�@@@@��* C
�
�@@��@�����2total_combinations��4 D+1�5 D+C@�@@@������(binomial��? D+F�@ D+N@�@@@��@����)num_hosts��J D+O�K D+X@�@@@��@������&config��W D+Y�X D+_@�@@@��,num_failures��^ D+`�_ D+l@�
@@@@�#@@@@��c D+-@@��@��������3combinations_to_try��p Epv�q Ep�@�@@@����*exhaustive��y Ep��z Ep�@�@@@@�@@@����������� F���� F��@�@@@��@����2total_combinations��� F���� F��@�@@@��@����%limit��� F���� F��@�@@@@�@@@���������&choose��� G���� G��@�@@@��@�������$List#map��� G���� G��@�@@@��@����#fst��� G���� G��@�@@@��@������&config��� G���� G��@�@@@��%hosts��� G���� G��@�
@@@@��� G���� G��@��'@@@��@������&config��� G���� G��@�@@@��,num_failures��� G���� G��@�
@@@@�K@@@�����$true��� G���� G�@@�@@@@�� G��� G�@��Z@@@�����������$List#map�� I� I@�@@@��@��@@�@�� J-� J.@@@��@�����,num_failures��' K2B�( K2N@�@@@�������&Random#int��4 K2Q�5 K2[@�@@@��@������&config��A K2\�B K2b@�@@@��,num_failures��H K2c�I K2o@�
@@@@�@@@@��M K2>@@��@��������%alive��Z M���[ M��@�@@@����$dead��c M���d M��@�@@@@�@@@�������$List)fold_left��q N���r N��@�@@@��@��@@������)remaining��� O���� O�@�@@@����%sofar��� O�
�� O�@�@@@@��� O���� O�@��@@@��@@�@��� O��� O�@@@��������!=��� P=�� P>@�@@@��@�������$List&length��� P+�� P6@�@@@��@����%sofar��� P7�� P<@�@@@@�@@@��@����,num_failures��� P?�� PK@�@@@@�@@@�������)remaining��� QQf�� QQo@�@@@�����%sofar��� QQq�� QQv@�@@@@��� QQe�� QQw@��@@@���@�����$host��� S���� S��@�@@@������*choose_one��� S���� S��@�@@@��@����)remaining�� S��� S��@�@@@@�@@@@�� S��@@����������$List&filter�� T��� T��@�@@@��@��@@���!x��% T���& T��@�@@@������"<>��0 T���1 T��@�@@@��@����!x��; T���< T��@�@@@��@����$host��F T���G T��@�@@@@�@@@��K T���L T��@���O T��	@@@��@����)remaining��X T���Y T�@�@@@@�C@@@�����"::��c T��d T�@��������$host��o T��p T�@�@@@�����%sofar��y T��z T�@�@@@@�A@@�@@@@�� T���� T�@��j	@@@�y@@@��� P(@@@��A@@��� O���� U'@���� O��@@@��@����������$List#map��� V(9�� V(A@�@@@��@����#fst��� V(B�� V(E@�@@@��@������&config��� V(F�� V(L@�@@@��%hosts��� V(M�� V(R@�
@@@@�#@@@�����"[]��� V(T�� V(V@@�@@@@��� V(8�� V(W@��2@@@��@������&mkints��� WXi�� WXo@�@@@��@����,num_failures��� WXp�� WX|@�@@@@��� WXh�� WX}@��@@@@�{@@@@��� M��@@����$dead��� Y���� Y��@�@@@�@@@��@@@��� J(�� Z��@���� J)
@@@��@������&mkints��		 [���	
 [��@�@@@��@�������%Int64&to_int��	 [���	 [��@�@@@��@����%limit��	# [���	$ [��@�@@@@��	' [���	( [��@��@@@@��	, [���	- [��@��'@@@@�@@@��������	7 \���	8 \��@@�@@@@��	; I�	< ]��@��,@@@��	@ F��@@@@��	B Epr@@�  �������&Printf&printf��	O _���	P _��@�@@@��@���	'Trying %d (out of %Ld) combinations %s
@��	Y _���	Z _�'@@@��@�������$List&length��	g `(-�	h `(8@�@@@��@����3combinations_to_try��	r `(9�	s `(L@�@@@@��	v `(,�	w `(M@��@@@��@����2total_combinations��	� aNR�	� aNd@�@@@��@������*exhaustive��	� bem�	� bew@�@@@���,(EXHAUSTIVE)@��	� be}�	� be�@@@���� @��	� be��	� be�@@@��	� bei�	� be�@���	� bej@@@@�Y@@@�  �������$List$iter��	� c���	� c��@�@@@��@��@@���*dead_hosts��	� d���	� d��@�@@@��@�����*failed_vms��	� e���	� e��@�@@@������.get_failed_vms��	� e���	� e��@�@@@��@����&config��	� e���	� e��@�@@@��@����*dead_hosts��	� e���	� e��@�@@@@�@@@@��	� e��@@��@�����&config��	� f���	� f�@�@@@������%hosts��
 i(2�
 i(7@�������$List&filter��
 j9E�
 j9P@�@@@��@��@@������!x��
" j9W�
# j9X@�@@@��@��
( j9Z�
) j9[@@@@��
+ j9V�
, j9\@��@@@������#not��
7 j9`�
8 j9c@�@@@��@�������$List#mem��
F j9e�
G j9m@�@@@��@����!x��
Q j9n�
R j9o@�@@@��@����*dead_hosts��
\ j9p�
] j9z@�@@@@��
` j9d�
a j9{@��@@@@�.@@@��
f j9Q�
g j9|@���
j j9R
@@@��@������&config��
u j9}�
v j9�@�@@@��%hosts��
| j9��
} j9�@�
@@@@�m@@@@�����&config��
� h�
� h"@�@@@��
� g�
� k��@@@@��
� f��@@��@�����$plan��
� q���
� q��@�@@@��������!h��
� q���
� q��@�@@@��1get_specific_plan��
� q���
� q��@�
@@@��@����&config��
� q���
� q��@�@@@��@����*failed_vms��
� q���
� q��@�@@@@�!@@@@��
� q��@@������*check_plan��
� u���
� u��@�@@@��@����&config��
� u���
� u��@�@@@��@����*dead_hosts��
� u���
� u��@�@@@��@����$plan��
� u���
� u��@�@@@@�%@@@�/@@@�i@@@�@@@��
� d���
� v��@���
� d��@@@��@����3combinations_to_try�� w��� w��@�@@@@�V@@@����*exhaustive�� y� y"@�@@@�`@@@��@@@��@@@��@@@��@@@�@@@�8	A@@�B
A@@@��
#
#@@�@���@�����4try_impossible_cases��( |{�) |{�@�@@@��@@����
��2 |{��3 |{�@@�@@@�  �������&Printf&printf��A }���B }��@�@@@��@���8Trying impossible cases
@��K }���L }��@@@@�@@@�  �������&Printf&printf��Z �[ !@�@@@��@���	FMaking sure an obviously bad plan is detected by the 'check_plan' fn: @��d �"&�e �"n@@@@�@@@��@�����%hosts��p �qw�q �q|@�@@@����"::��y �q��z �q�A����������!0@��� �q��� �q�@@@����!1� L��� �q��� �q�@@@@��� �q�@��@@@�����$��� �q�#A����������!1@��� �q��� �q�@@@����!1� L��� �q��� �q�@@@@��� �q�@��@@@�����"[]�
EA@�FA@@@�%GA@@�&HA@@@�JIA@@��� �qK@@@@��� �qsM@�����#vms��� ����� ���@�@@@����^��� ����� ���A����������!0@��� ����� ���@@@����!1� L��� ����� ���@@@@��� ���@��@@@��������� ���#A����������!1@�� ���� ���@@@����!1� L�� ���� ���@@@@�� ���@��@@@�����]�	DA@�
EA@@@�$FA@@�%GA@@@�IHA@@��  ���J@@@@��" ���L@�����)placement��* ����+ ��@�@@@�������2 ��
�3 ��A����������!0@��@ ���A ��@@@����!1@��H ���I ��@@@@��K ��@��@@@�����ܰ�T ��"A����������!1@��a ���b ��@@@����!1@��i ���j ��@@@@��l ��@��@@@�������	BA@�
CA@@@�#DA@@�$EA@@@�GFA@@��z ��	H@@@@��| ���J@�����*dead_hosts��� �7=�� �7G@�@@@������� �7K�� �7MA�������!1@��� �7L@@@������A@�A@@@�A@@��� �7J@@@@��� �79@�����(bad_plan��� �ag�� �ao@�@@@����;��� �as�� �a�A����������!0@��� �at�� �au@@@����!0@��� �aw�� �ax@@@@��� �ay@��@@@�����]��� �a{"A����������!0@��� �a|�� �a}@@@����!0@��� �a�� �a�@@@@��� �a�@��@@@�����8�	BA@�
CA@@@�#DA@@�$EA@@@�GFA@@��� �arH@@@@��� �acJ@@�  ��@�����&config��	 ����
 ���@�@@@������%hosts�� ���� ���@�����@@@����#vms��! ����" ���@�����@@@����)placement��. ����/ ���@�����@@@����+total_hosts��; ����< ���@�������$List&length��G ����H ���@�@@@��@����%hosts��R ����S ���@�@@@@�@@@����,num_failures��\ ���] ��@���!1@��c ���d ��@@@@@��f ����g ��@@@@��i ���@@���  ������*check_plan��v �$�w �.@�@@@��@����&config��� �/�� �5@�@@@��@����*dead_hosts��� �6�� �@@�@@@��@����(bad_plan��� �A�� �I@�@@@@�%@@@������(failwith��� �LQ�� �LY@�@@@��@���9bad plan was not detected@��� �LZ�� �Lu@@@@�@@@�;@@@������'BadPlan��� �v~�� �v�@@�@@@@����r��� �v��� �v�@@�@@@@��� �@@@��� ����� ���@��b	@@@�  �������&Printf&printf��� ����� ���@�@@@��@���#OK
@��� ����� ���@@@@�@@@�  �������&Printf&printf��� ����� ��@�@@@��@���	RChecking a more complicated configuration for which no failover plan should exist
@��� �	�� �Qe@@@@�@@@��@�����%hosts�� �hn� �hs@�@@@������*make_thing�� �hv� �h�@�@@@��@���#500� L�� �h�� �h�@@@��@���!1� L��& �h��' �h�@@@��@���!8@��/ �h��0 �h�@@@@�!@@@@��3 �hj@@��@�����#vms��= ����> ���@�@@@������*make_thing��H ����I ���@�@@@��@���#400� L��S ����T ���@@@��@���!1� L��] ����^ ���@@@��@���!8@��f ����g ���@@@@�!@@@@��j ���@@��@�����)placement��t ����u ���@�@@@�������$List'combine��� ����� ���@�@@@��@�������$List#map��� ����� ���@�@@@��@����#fst��� ����� ���@�@@@��@����#vms��� ����� ���@�@@@@��� ����� ���@��@@@��@�������$List#map��� ����� ���@�@@@��@����#fst��� ����� ���@�@@@��@����%hosts��� ����� ���@�@@@@��� ����� ���@��@@@@�X@@@@��� ���@@��@�����&config��� ���� ��@�@@@������%hosts��� ��� �@�����@@@����#vms��� ��� �@�����@@@����)placement��	 ��
 �%@�����@@@����+total_hosts�� �'� �2@�������$List&length��" �4�# �?@�@@@��@����%hosts��- �@�. �E@�@@@@�@@@����,num_failures��7 �G�8 �S@���!5@��> �U�? �V@@@@@��A ��B �W@@@@��D ���@@�������$List$iter��O �]_�P �]h@�@@@��@��@@���!h��[ �ir�\ �is@�@@@�  �������&Printf&printf��j �w}�k �w�@�@@@��@���5Trying heuristic: %s
@��t �w��u �w�@@@��@������!h��� �w��� �w�@�@@@��$name��� �w��� �w�@�
@@@@�!@@@�  �������&Printf&printf��� ����� ���@�@@@��@���	(* checking plan_always_possible = false
@��� ����� ���@@@@�@@@�  ����������!h��� ����� ���@�@@@��4plan_always_possible��� ����� ��@�
@@@��@����&config��� ���� ��@�@@@@�@@@������(failwith��� �#�� �+@�@@@��@���	*plan_always_possible shouldn't return true@��� �,�� �X@@@@�@@@@��� ���@@@���  �������&Printf&printf��� �em�� �ez@�@@@��@���	/* checking 'check_plan_always_possible' agrees
@��� �e{�� �e�@@@@�@@@��������	0prove_plan_is_possible_via_counterexample_search�� ���� ���@�@@@��@����!h�� ���� ���@�@@@��@����&config�� ���� ���@�@@@@�@@@������(failwith��& ���' ��@�@@@��@���	hprove_plan_is_possible_via_counterexample_search performed exhaustive search and found no counterexample@��0 ��1 �W�@@@@�@@@��������&Printf&printf��> ����? ���@�@@@��@���	HWARNING: failed to find a counterexample; not sure if plan is ok or not
@��H ����I �@@@@�@@@��L ���@@@�a@@@������'BadPlan��V �*�W �1@@�@@@@�������&Printf&printf��c �5=�d �5J@�@@@��@���	,Found a counterexample: no plan is possible
@��m �5K�n �5z@@@@�@@@@��q �[a@@@��@@@��@@@�@@@��v �im�w �{�@���z �in@@@��@����.all_heuristics��� ����� ���@�@@@@�8@@@�D@@@��@@@� @@@�X@@@��@@@��	@@@��
@@@��@@@�6@@@�P@@@�`A@@@��� |{{@@�@���@�����2try_possible_cases��� ����� ���@�@@@��@@����Z��� ����� ���@@�@@@�  �������&Printf&printf��� ����� ��@�@@@��@���6Trying possible cases
@��� ���� ��@@@@�@@@��@�����!c��� �!'�� �!(@�@@@������+make_config��� �!+�� �!6@�@@@��@���"10@��� �!7�� �!9@@@��@���#500� L��� �!:�� �!>@@@��@���$1000� L��� �!?�� �!D@@@��@���!5@��  �!E� �!F@@@��@���#256� L��
 �!G� �!K@@@��@���!1� L�� �!L� �!N@@@��@���!3@�� �!O� �!P@@@@�G@@@@��! �!#@@��@�����!h��+ �TZ�, �T[@�@@@������0choose_heuristic��6 �T^�7 �Tn@�@@@��@����!c��A �To�B �Tp@�@@@@�@@@@��F �TV@@�  �������&Printf&printf��S �tv�T �t�@�@@@��@���5Trying heuristic: %s
@��] �t��^ �t�@@@��@������!h��i �t��j �t�@�@@@��$name��p �t��q �t�@�
@@@@�!@@@��@�����&always��} ����~ ���@�@@@��������!h��� ����� ���@�@@@��4plan_always_possible��� ����� ���@�
@@@��@����!c��� ����� ���@�@@@@�@@@@��� ���@@�  ��������#not��� ����� ���@�@@@��@����&always��� ����� ���@�@@@@�@@@������(failwith��� ����� ���@�@@@��@���	+heuristic reported plan not always possible@��� ����� ��@@@@�@@@@��� ���@@@��������	0prove_plan_is_possible_via_counterexample_search��� �$�� �T@�@@@��@����!h��� �U�� �V@�@@@��@����!c��� �W�� �X@�@@@@�@@@�������&Printf&printf�� �^b� �^o@�@@@��@���	$Proved that plan is always possible
@�� �^p� �^�@@@@�@@@��������&Printf&printf�� ���� ���@�@@@��@���	BFailed to prove that plan is always possible -- might be ok still
@��$ ����% ���@@@@�@@@��( �!@@@�W@@@��@@@��@@@��@@@�	@@@�w
@@@��A@@@��1 ���@@�@���@�����0int_of_heuristic��= ���> ��@�@@@��@@���!h��G ���H ��@�@@@��������
���S ��!�T ��"@�@@@��@������!h��` ���a ��@�@@@��$name��g ���h �� @�
@@@��@������4approximate_bin_pack��t ��#�u ��7@�@@@��$name��{ ��8�| ��<@�
@@@@�@@@���!0@��� ��B�� ��C@@@����!1@��� ��I�� ��J@@@��� ��@@@�JA@@@��� ���@@�@���@�����:check_planning_performance��� �LP�� �Lj@�@@@��@@���(filename��� �Lk�� �Ls@�@@@��@@���"n'��� �Lt�� �Lv@�@@@��@@���"r'��� �Lw�� �Ly@�@@@��@@���!i��� �Lz�� �L{@�@@@��@�����$file��� �~��� �~�@�@@@������(open_out��� �~��� �~�@�@@@��@����(filename��� �~��� �~�@�@@@@�@@@@��� �~�@@��@�����)successes��� ����� ���@�@@@�������%Array$make�� ���� ���@�@@@��@������!*�� ���� �� @�@@@��@����"n'�� ���� ���@�@@@��@����"r'��' ���( ��@�@@@@��+ ����, ��@��@@@��@���!0@��6 ���7 ��@@@@�5@@@@��: ���@@��@�����(max_time��D �
�E �
@�@@@�������%Array$make��Q �
�R �
%@�@@@��@������M��] �
*�^ �
+@�@@@��@����"n'��h �
'�i �
)@�@@@��@����"r'��s �
,�t �
.@�@@@@��w �
&�x �
/@��@@@��@���"0.@��� �
0�� �
2@@@@�4@@@@��� �
@@��@�����)heuristic��� �6<�� �6E@�@@@�������%Array$make��� �6H�� �6R@�@@@��@���������� �6W�� �6X@�@@@��@����"n'��� �6T�� �6V@�@@@��@����"r'��� �6Y�� �6[@�@@@@��� �6S�� �6\@��@@@��@���!0@��� �6]�� �6^@@@@�4@@@@��� �68@@��@�����#get��� �bh�� �bk@�@@@��@@���%array��� �bl�� �bq@�@@@��@@���!n��� �br�� �bs@�@@@��@@���!r��� �bt�� �bu@�@@@�������%Array#get�� �bx� �b�A�A@@��@����%array�� �b}@�@@@��@������!+�� �b�� �b�@�@@@��@��������* �b��+ �b�@�@@@��@����"r'��5 �b��6 �b�@�@@@��@������!-��B �b��C �b�@�@@@��@����!n��M �b��N �b�@�@@@��@���!1@��W �b��X �b�@@@@��Z �b��[ �b�@��@@@@��_ �b�` �b�@��.@@@��@������+��l �b��m �b�@�@@@��@����!r��w �b��x �b�@�@@@��@���!1@��� �b��� �b�@@@@��� �b��� �b�@��@@@@�*@@@@���@@@���A@@���A@@���A@@@��� �bd�@@��@�����#set��� ����� ���@�@@@��@@���%array��� ����� ���@�@@@��@@���!n��� ����� ���@�@@@��@@���!r��� ����� ���@�@@@��@@���%value��� ����� ���@�@@@�������%Array#set��� ����� ���A�A@@��@����%array��� ���@�@@@��@������ư�� ����� ���@�@@@��@������߰�� ����� ���@�@@@��@����"r'��� ����� ���@�@@@��@������Ű� ���� ���@�@@@��@����!n�� ���� ���@�@@@��@���!1@�� ���� ���@@@@�� ���� ���@��@@@@��# ����$ ���@��-@@@��@��������0 ����1 ���@�@@@��@����!r��; ����< ���@�@@@��@���!1@��E ����F ���@@@@��H ����I ���@��@@@@�*@@@��@����%value��U ����@��@@@@���@@@���A@@���A@@���A@@���A@@@��] ����@@�  �  ���(attempts��g ����h ���@�@@@���!1@��o ����p ���@@@����!i��w ����x ���@�@@@@�  ���!n��� �   �� �   	@�@@@���!1@��� �   �� �   @@@����"n'��� �   �� �   @�@@@@�  ���!r��� �  !�� �  "@�@@@���!1@��� �  %�� �  &@@@����"r'��� �  *�� �  ,@�@@@@����������� � 0 =�� � 0 >@�@@@��@����!r��� � 0 ;�� � 0 <@�@@@��@����!n��� � 0 ?�� � 0 @@�@@@@�@@@��@�����!c��� � H V�� � H W@�@@@������+make_config��� � H Z�� � H e@�@@@��@����!n��� � H f�� � H g@�@@@��@���$8000� L��� � H h�� � H m@@@��@���$4000� L�� � H n� � H s@@@��@������ �� � H x� � H y@�@@@��@���"16@�� � H u� � H w@@@��@����!n��$ � H z�% � H {@�@@@@��( � H t�) � H |@��@@@��@���#500� L��4 � H }�5 � H �@@@��@���#250� L��> � H ��? � H �@@@��@����!r��H � H ��I � H �@�@@@@�g@@@@��M � H R@@��@�����!h��W � � ��X � � �@�@@@������0choose_heuristic��b � � ��c � � �@�@@@��@����!c��m � � ��n � � �@�@@@@�@@@@��r � � �@@��@�����%start��| � � ��} � � �@�@@@�������$Unix,gettimeofday��� � � ��� � � �@�@@@��@����D��� � � ��� � � �@@�@@@@�@@@@��� � � �@@��@�����&always��� � � ��� � � �@�@@@��������!h��� � � ��� � � �@�@@@��4plan_always_possible��� � � ��� � �!@�
@@@��@����!c��� � �!�� � �!@�@@@@�@@@@��� � � �@@�  ������&always��� �!�!��� �!�!�@�@@@������&ignore��� �!�!��� �!�!�@�@@@��@������	0prove_plan_is_possible_via_counterexample_search��� �!�!��� �!�"+@�@@@��@����!h��� �!�",�� �!�"-@�@@@��@����!c��� �!�".�  �!�"/@�@@@@�� �!�!�� �!�"0@��@@@@�,@@@@��	 �!�!�@@@��@�����$time�� �"3"A� �"3"E@�@@@��������� �"3"]� �"3"_@�@@@��@�������$Unix,gettimeofday��, �"3"H�- �"3"Y@�@@@��@������6 �"3"Z�7 �"3"\@@�@@@@�@@@��@����%start��B �"3"`�C �"3"e@�@@@@�@@@@��G �"3"=@@�  ������&always��R �"i"v�S �"i"|@�@@@������#set��] �"i"��^ �"i"�@�@@@��@����)successes��h �"i"��i �"i"�@�@@@��@����!n��s �"i"��t �"i"�@�@@@��@����!r��~ �"i"�� �"i"�@�@@@��@������m��� �"i"��� �"i"�@�@@@��@������#get��� �"i"��� �"i"�@�@@@��@����)successes��� �"i"��� �"i"�@�@@@��@����!n��� �"i"��� �"i"�@�@@@��@����!r��� �"i"��� �"i"�@�@@@@�%@@@��@���!1@��� �"i"��� �"i"�@@@@��� �"i"��� �"i"�@��3@@@@�n@@@@��� �"i"s@@@�  ������#set��� �"�"��� �"�"�@�@@@��@����(max_time��� �"�"��� �"�"�@�@@@��@����!n��� �"�"��� �"�"�@�@@@��@����!r��� �"�"��� �"�"�@�@@@��@������#max�� �"�"�� �"�"�@�@@@��@������#get�� �"�"�� �"�"�@�@@@��@����(max_time�� �"�"�� �"�"�@�@@@��@����!n��( �"�"��) �"�"�@�@@@��@����!r��3 �"�"��4 �"�"�@�@@@@��7 �"�"��8 �"�"�@��)@@@��@����$time��C �"�"��D �"�"�@�@@@@��G �"�"��H �"�"�@��F@@@@�u@@@�  ������#set��V �#0#:�W �#0#=@�@@@��@����)heuristic��a �#0#>�b �#0#G@�@@@��@����!n��l �#0#H�m �#0#I@�@@@��@����!r��w �#0#J�x �#0#K@�@@@��@������0int_of_heuristic��� �#0#M�� �#0#]@�@@@��@����!h��� �#0#^�� �#0#_@�@@@@��� �#0#L�� �#0#`@��@@@@�B@@@�  �������&Printf'fprintf��� �#c#m�� �#c#{@�@@@��@����&stderr��� �#c#|�� �#c#�@�@@@��@���1%d %d %d %d %.2f
@��� �#c#��� �#c#�@@@��@����!n��� �#c#��� �#c#�@�@@@��@����!r��� �#c#��� �#c#�@�@@@��@������#get��� �#c#��� �#c#�@�@@@��@����)heuristic��� �#c#��� �#c#�@�@@@��@����!n��� �#c#��� �#c#�@�@@@��@����!r��� �#c#��� �#c#�@�@@@@��  �#c#�� �#c#�@��)@@@��@������#get�� �#�#�� �#�#�@�@@@��@����)successes�� �#�#�� �#�#�@�@@@��@����!n��$ �#�#��% �#�#�@�@@@��@����!r��/ �#�#��0 �#�#�@�@@@@��3 �#�#��4 �#�#�@��)@@@��@������#get��A �#�#��B �#�#�@�@@@��@����(max_time��L �#�#��M �#�#�@�@@@��@����!n��W �#�#��X �#�#�@�@@@��@����!r��b �#�#��c �#�#�@�@@@@��f �#�#��g �#�#�@��)@@@@��@@@������%flush��s �#�#��t �#�#�@�@@@��@����&stderr��~ �#�#�� �#�#�@�@@@@�@@@��@@@�.@@@��@@@��@@@�@@@@�	@@@��
@@@��@@@�@@@��� � 0 F�� �#�$@��C@@@@��� � 0 8@@@��� �  �� �$$@@@��� �   �� �$$@@@��� ����� �$$ @@@�  �  ���!n��� �$#$)�� �$#$*@�@@@���!1@��� �$#$-�� �$#$.@@@����"n'��� �$#$2�� �$#$4@�@@@@�  ���!r��� �$8$@�� �$8$A@�@@@���!1@��� �$8$D�� �$8$E@@@����"r'��� �$8$I�� �$8$K@�@@@@�������&Printf'fprintf��� �$O$U�� �$O$c@�@@@��@����$file��� �$O$d�� �$O$h@�@@@��@���1%d %d %d %d %.2f
@��� �$O$i�� �$O$}@@@��@����!n��� �$O$~�� �$O$@�@@@��@����!r�� �$O$�� �$O$�@�@@@��@������#get�� �$O$�� �$O$�@�@@@��@����)heuristic�� �$O$�� �$O$�@�@@@��@����!n��( �$O$��) �$O$�@�@@@��@����!r��3 �$O$��4 �$O$�@�@@@@��7 �$O$��8 �$O$�@��)@@@��@������#get��E �$�$��F �$�$�@�@@@��@����)successes��P �$�$��Q �$�$�@�@@@��@����!n��[ �$�$��\ �$�$�@�@@@��@����!r��f �$�$��g �$�$�@�@@@@��j �$�$��k �$�$�@��)@@@��@������#get��x �$�$��y �$�$�@�@@@��@����(max_time��� �$�$��� �$�$�@�@@@��@����!n��� �$�$��� �$�$�@�@@@��@����!r��� �$�$��� �$�$�@�@@@@��� �$�$��� �$�$�@��)@@@@��@@@��� �$8$<�� �$�$�@@@��� �$#$%�� �$�$�@@@������)close_out��� �$�$��� �$�$�@�@@@��@����$file��� �$�$��� �$�$�@�@@@@�@@@�@@@�(@@@�e@@@�5@@@��@@@�?	@@@��
@@@��@@@�A@@�A@@�A@@�#A@@@��� �LL@@�@���@���@��� �$�$��� �$�$�@@@��@�����%graph��� �$�$��� �$�$�@�@@@������#ref��� �$�$��� �$�%@�@@@��@��� @��� �$�%�� �$�%@@@@�@@@@��� �$�$�@@��@�����'graph_n�� �%	%� �%	%@�@@@������#ref�� �%	%� �%	%@�@@@��@���"64@�� �%	%� �%	%@@@@�@@@@�� �%	%@�����'graph_r��$ �%	%$�% �%	%+@�@@@������#ref��/ �%	%.�0 �%	%1@�@@@��@���"64@��9 �%	%2�: �%	%4@@@@�@@@@��= �%	% @�����'graph_i��E �%	%9�F �%	%@@�@@@������#ref��P �%	%C�Q �%	%F@�@@@��@���!1@��Z �%	%G�[ �%	%H@@@@�@@@@��^ �%	%5@@�  �������#Arg%parse��k �%L%N�l �%L%W@�@@@��@�������u �%^%d�v �'~'�A����������&-graph@��� �%^%f�� �%^%n@@@������#Arg*Set_string��� �%o%w�� �%o%�@�����%graph��� �%o%��� �%o%�@�@@@�@@@����	>Run performance tests and write graph output to file specified@��� �%�%��� �%�%�@@@@�/�� �%�%�@��$@@@�����5��� �%�%�8A����������(-graph_n@��� �%�%��� �%�%�@@@������#Arg'Set_int��� �%�%��� �%�&@�����'graph_n��� �%�&�� �%�&@�@@@�@@@����	BSet the maximum N value for the performance tests (eg total hosts)@��� �&&�� �&&X@@@@�.�� �&Y&`@��$@@@�����l��� �&a&goA����������(-graph_r@��� �&a&i�� �&a&s@@@������#Arg'Set_int��� �&t&|�� �&t&�@�����'graph_r�� �&t&�� �&t&�@�@@@�@@@����	PSet the maximum R value for the performance tests (eg host failures to simulate)@�� �&�&�� �&�&�@@@@�.� �&�&�@��$@@@�������� �&�'�A����������(-graph_i@��( �&�'�) �&�'@@@������#Arg'Set_int��3 �''�4 �''$@�����'graph_i��< �''%�= �'',@�@@@�@@@����	>Set the number of iterations to run the performance tests over@��F �'-'5�G �'-'u@@@@�.�I �'v'}@��$@@@��������R �'~'��A@��A@@@�:�A@@�;�A@@@�s�A@@�t�A@@@���A@@���A@@@���A@@��\ �%X%\�@@@��@��@@���!x��f �'�'��g �'�'�@�@@@�������&Printf'fprintf��s �'�'��t �'�'�@�@@@��@����&stderr��~ �'�'�� �'�'�@�@@@��@���=Skipping unknown argument: %s@��� �'�'��� �'�'�@@@��@����!x��� �'�'��� �'�'�@�@@@@�#@@@��� �'�'��� �'�'�@���� �'�'�	@@@��@���	8Run unit and optional performance tests on the binpacker@��� �'�'��� �'�(	@@@@�;@@@�  ������4try_impossible_cases��� ((�� (("@�@@@��@����k��� ((#�� ((%@@�@@@@�@@@�  ������2try_possible_cases���(((*��(((<@�@@@��@��������(((=��(((?@@�@@@@�@@@��������"<>���(B(N��(B(P@�@@@��@������!!���(B(G��(B(H@�@@@��@����%graph�
��(B(M@�@@@@�@@@��@��� @��(B(Q�(B(S@@@@�@@@������:check_planning_performance��(Y(]�(Y(w@�@@@��@������-��(Y(x�(Y(y@�@@@��@����%graph�
�$(Y(~@�@@@@�@@@��@������D��0(Y(�1(Y(�@�@@@��@����'graph_n�
�;(Y(�@�@@@@�@@@��@������[��G(Y(��H(Y(�@�@@@��@����'graph_r�
�R(Y(�@�@@@@�@@@��@������r��^(Y(��_(Y(�@�@@@��@����'graph_i�
�i(Y(�@�@@@@�@@@@�`@@@@��n(B(D@@@��@@@��@@@�	@@@�W
@@@�{@@@@��u �$�$�@@�@@