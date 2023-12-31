Caml1999M025����            5ocaml/xapi/startup.ml����  *3  	  !�  !.�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	"
 * @group Main Loop and Start-up
@��5ocaml/xapi/startup.mlNGG�Pln@@@@@����������&Stdext)Threadext��Rpu�Rp�@�@@A��Rpp@@�@�����!D��T���T��@�������%Debug$Make��(T���)T��@�@@�����@�����$name��7T���8T��@�@@@���'startup@��?T���@T��@@@@��BT��@@�@@��ET���FT��@@� �HT��@@@��JT��@�@��������!D��VV���WV��@�@@A��ZV��@@�@���A�    �$flag��dX���eX��@@@��Р*OnlyMaster��lX���mX��@�@@�@@�Р)OnlySlave��uX���vX��@�@@��yX��@@�Р,NoExnRaising��X����X��@�@@���X��@@�Р(OnThread���X����X�@�@@���X��@@@A@@���X��@@�@���@�����2thread_exn_wrapper���Z
��Z@�@@@��@@���+thread_name���Z��Z(@�@@@��@@���!f���Z)��Z*@�@@@�  ��������!f���[-5��[-6@�@@@��@����"()���[-7��[-9@@�@@@@�@@@�����#exn���\:C��\:F@�@@@@�  ������$warn���]JP��]JT@�@@@��@���	"thread [%s] dying on exception: %s@���]JU��]Jy@@@��@����+thread_name���]Jz��]J�@�@@@��@�������(Printexc)to_string��^���^��@�@@@��@����#exn��^���^��@�@@@@��^���^��@��@@@@�7@@@������%raise�� _���!_��@�@@@��@����#exn��+_���,_��@�@@@@�@@@�O@@@@��1[-/�2`��@���5[-1
@@@�  ������$warn��@a���Aa��@�@@@��@���0thread [%s] died@��Ja���Ka��@@@��@����+thread_name��Ta���Ua��@�@@@@�@@@�������]b���^b��@@�@@@�!@@@�1@@@��A@@��A@@@��eZ@@�	@���@�����#run��qg���rg��@�@@@�Đ)__context@�����|g���}g��@�@@@��@@���%tasks���g����g��@�@@@��@�����'task_id���h����h��@�@@@�������'Context+get_task_id���h����h��@�@@@��@����)__context���h����h�@�@@@@�@@@@���h��@@��@�����*dummy_task���i��i@�@@@�������#Ref(is_dummy���i��i$@�@@@��@����'task_id���i%��i,@�@@@@�@@@@���i@@��@�����1get_flags_of_list���j06��j0G@�@@@��@@���%flags���j0H��j0M@�@@@��@�����+only_master���kPX��kPc@�@@@������#ref��kPf�kPi@�@@@��@����%false��kPj�kPo@@�@@@@�@@@@��kPT@�����*only_slave��lpx�lp�@�@@@������#ref��$lp��%lp�@�@@@��@����#��.lp��/lp�@@�@@@@�@@@@��3lpt@�����(exnraise��;m���<m��@�@@@������#ref��Fm���Gm��@�@@@��@����$true��Qm���Rm��@@�@@@@�@@@@��Vm��@�����(onthread��^n���_n��@�@@@������#ref��in���jn��@�@@@��@����h��sn���tn��@@�@@@@�@@@@��xn��@@�  �������$List$iter���o����o��@�@@@��@��@@���$flag���p����p��@�@@@������$flag���q����q��@�@@@������*OnlyMaster���r��r@@�@@@@������":=���s4��s6@�@@@��@����+only_master���s(��s3@�@@@��@����w���s7��s;@@�@@@@�@@@������)OnlySlave���t<F��t<O@@�@@@@������,���uSj��uSl@�@@@��@����*only_slave���uS_��uSi@�@@@��@��������uSm��uSq@@�@@@@�@@@������,NoExnRaising���vr|��vr�@@�@@@@������W��w���	w��@�@@@��@����(exnraise��w���w��@�@@@��@������w���w��@@�@@@@�@@@������(OnThread��)x���*x��@@�@@@@���������3y���4y��@�@@@��@����(onthread��>y���?y��@�@@@��@�������Hy���Iy��@@�@@@@�@@@@��Mq��@@@��Op���Pz��@���Sp��@@@��@����%flags��\{���]{��@�@@@@��@@@���������!!��k|���l|��@�@@@��@����+only_master�
�v|�@�@@@@�@@@����������|���|�@�@@@��@����*only_slave�
��|�@�@@@@�@@@�������-���|���|�@�@@@��@����(exnraise�
��|�@�@@@@�@@@�������C���|���|�@�@@@��@����(onthread�
��|�'@�@@@@�@@@@���|����|�(@��U@@@�<@@@��@@@��A@@@���j02@@��@�����)is_master���KQ��KZ@�@@@�������)Pool_role)is_master���K]��Kp@�@@@��@�������Kq��Ks@@�@@@@�@@@@���KM@@�������$List$iter��� A���� A��@�@@@��@��@@������(tsk_name�� B��� B��@�@@@����)tsk_flags�� B��� B��@�@@@����'tsk_fct�� B��� B��@�@@@@�� B��� B��@��@@@��@�����'tsk_fct��' D���( D� @�@@@��@@����i��1 D��2 D�@@�@@@�������%Stats)time_this��> D��? D�@�@@@��@����(tsk_name��I D��J D�@�@@@��@����'tsk_fct��T D��U D�&@�@@@@�@@@�(A@@@��Z D��@@��@��������+only_master��g E*4�h E*?@�@@@����*only_slave��p E*A�q E*K@�@@@����(exnraise��y E*M�z E*U@�@@@����(onthread��� E*W�� E*_@�@@@@�@@@������1get_flags_of_list��� Fbj�� Fb{@�@@@��@����)tsk_flags��� Fb|�� Fb�@�@@@@�@@@@��� E*0@@����������"||��� K���� K��@�@@@��@������"&&��� J���� J��@�@@@��@����+only_master��� J���� J��@�@@@��@����)is_master��� J���� J��@�@@@@��� J���� J��@��@@@��@������5��� L���� L�	 @�@@@��@������4��� K���� K��@�@@@��@����*only_slave��� K���� K��@�@@@��@������#not�� K��� K��@�@@@��@����)is_master�� K��� K��@�@@@@�@@@@�� K��� K��@��!@@@��@������i��  L�	�! L�	@�@@@��@������#not��- L�	�. L�	@�@@@��@����*only_slave��8 L�	�9 L�	@�@@@@��< L�	�= L�	@��@@@��@������#not��J L�	�K L�	@�@@@��@����+only_master��U L�	�V L�	%@�@@@@�@@@@��Z L�	�[ L�	&@��"@@@@�L@@@@��@@@�  ��������#not��l N	6	C�m N	6	F@�@@@��@����*dummy_task��w N	6	G�x N	6	Q@�@@@@�@@@�  ��������"Db$Task8remove_from_other_config��� O	Y	e�� O	Y	�@�@@@���)__context������� O	Y	��� O	Y	�@�@@@���$self����'task_id��� O	Y	��� O	Y	�@�@@@���#key���1startup_operation@��� P	�	��� P	�	�@@@@�(@@@��������"Db$Task3add_to_other_config��� Q	�	��� Q	�	�@�@@@���)__context������� Q	�	��� Q	�	�@�@@@���$self����'task_id��� Q	�
�� Q	�
@�@@@���#key���1startup_operation@��� R
	
�� R
	
/@@@���%value����(tsk_name��� R
	
7�� R
	
?@�@@@@�5@@@��� N	6	W�� S
@
K@��n@@@@��� N	6	@@@@������(onthread�� T
N
[� T
N
c@�@@@�  ������%debug�� U
k
w� U
k
|@�@@@��@���9task [starting thread %s]@�� U
k
}� U
k
�@@@��@����(tsk_name��" U
k
��# U
k
�@�@@@@�@@@������&ignore��. V
�
��/ V
�
�@�@@@��@�������&Thread&create��= W
�
��> W
�
�@�@@@��@��@@���'tsk_fct��I X
�
��J X
�
�@�@@@�������.Server_helpers2exec_with_new_task��V Y
��W Y
�)@�@@@���*subtask_of�������'Context+get_task_id��g Z*L�h Z*_@�@@@��@����)__context��r Z*`�s Z*i@�@@@@��v Z*K�w Z*j@��@@@��@����(tsk_name��� Z*k�� Z*s@�@@@��@��@@���)__context��� [t��� [t�@�@@@������2thread_exn_wrapper��� [t��� [t�@�@@@��@����(tsk_name��� [t��� [t�@�@@@��@����'tsk_fct��� [t��� [t�@�@@@@�@@@��� [t��� \��@���� [t�	@@@@�d@@@��� X
�
��� ]��@���� X
�
�@@@��@����'tsk_fct��� ^���� ^��@�@@@@��� W
�
��� _ @���@@@@��@@@��� T
N
i�� `@���	@@@��  ������%debug��� a#/�� a#4@�@@@��@���)task [%s]@��� a#5�� a#@@@@��@����(tsk_name��� a#A�� a#I@�@@@@�@@@�������.Server_helpers2exec_with_new_task�� bLX� bLy@�@@@��@����(tsk_name�� bLz� bL�@�@@@���*subtask_of�������'Context+get_task_id�� c���  c��@�@@@��@����)__context��* c���+ c��@�@@@@��. c���/ c��@��@@@��@��@@���)__context��; c���< c��@�@@@������'tsk_fct��F d���G d��@�@@@��@�������P d���Q d��@@�@@@@�@@@��U c���V e��@���Y c��	@@@@�X@@@��\ `!�] f�@��
@@@��a T
N
X@@@��c M	'	4�d g@��o
@@@@��h I��@@@�����#exn��p h�q h@�@@@@�  ������$warn��} i (�~ i ,@�@@@��@���7task [%s] exception: %s@��� i -�� i F@@@��@����(tsk_name��� i G�� i O@�@@@��@�������(Printexc)to_string��� i Q�� i c@�@@@��@����#exn��� i d�� i g@�@@@@��� i P�� i h@��@@@@�7@@@������(exnraise��� jkv�� jk~@�@@@������%raise��� k���� k��@�@@@��@����#exn��� k���� k��@�@@@@�@@@@��� jks@@@�\@@@@��� H��@@@�>	@@@��
@@@��� B���� l��@���� B��@@@��@����%tasks��� m���� m��@�@@@@��@@@�@@@�-@@@�@@@�D@@@�nA@@���g��
A@@@���g��@@�@���@�����#run�� o��� o��@�@@@�Đ)__context@����� o��� o��@�@@@��@@���%tasks�� o��� o��@�@@@�������%Stats)time_this��% p���& p��@�@@@��@���4overall xapi startup@��/ p���0 p��@@@��@��@@����r��: p���; p��@@�@@@������#run��E p���F p��@�@@@���)__context������Q p���R p�@�@@@��@����%tasks��\ p��] p�@�@@@@�@@@��a p���b p�@���e p��	@@@@�B@@@�PA@@��i o��A@@@��k o��
@@�@@