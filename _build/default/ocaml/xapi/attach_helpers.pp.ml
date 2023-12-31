Caml1999M025����         	   <ocaml/xapi/attach_helpers.ml����  <?  �  /�  .<�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����������&Stdext,Pervasiveext��<ocaml/xapi/attach_helpers.mlNGL�NG_@�@@A��NGG@@�@��������&Client��O`e�O`k@�@@A��O``@@�@�����!D��Qmt�Qmu@�������%Debug$Make��*Qmx�+Qm�@�@@�����@�����$name��9Qm��:Qm�@�@@@���.attach_helpers@��AQm��BQm�@@@@��DQm�@@�@@��GQm��HQm�@@� �JQm�@@@��LQmm@�@��������!D��XS���YS��@�@@A��\S��@@�@���@�����'timeout��hU���iU��@�@@@���$300.@��pU���qU��@@@@��sU��@@�@���@�����+safe_unplug��Y����Y��@�@@@��@@���#rpc���Y����Y��@�@@@��@@���*session_id���Y����Y��@�@@@��@@���$self���Y����Y��@�@@@����������&Client#VBD&unplug���Z����Z��@�@@@��@����#rpc���Z����Z��@�@@@��@����*session_id���Z����Z��@�@@@��@����$self���Z����Z��@�@@@@�%@@@�������*Api_errors,Server_error���[����[��@�������%error���[����[��@�@@@��@���[����[��@@@@���[����[��@��@@@�@@@�������!=���\�� \�@�@@@��@����%error��
\��\�@�@@@��@�����*Api_errors7device_already_detached��\��\�2@�@@@@�@@@������%debug��#]6<�$]6A@�@@@��@���	Bsafe_unplug caught DEVICE_ALREADY_DETACHED: this is safe to ignore@��-]6B�.]6�@@@@�@@@���������*Api_errors,Server_error��<^���=^��@�������%error��G^���H^��@�@@@��@��M^���N^��@@@@��P^���Q^��@��@@@�@@@�!e��X^���Y^��@�@@@�������e��c_���d_��@�@@@��@����%error��n_���o_��@�@@@��@�����*Api_errors6device_detach_rejected��{_���|_��@�@@@@�@@@�  ������%debug���`����`��@�@@@��@���	Ysafe_unplug caught DEVICE_DETACH_REJECTED: polling the currently_attached flag of the VBD@���a����b7c@@@@�@@@��@�����%start���cfp��cfu@�@@@�������$Unix,gettimeofday���cfx��cf�@�@@@��@����"()���cf���cf�@@�@@@@�@@@@���cfl@@��@�����)unplugged���d����d��@�@@@������#ref���d����d��@�@@@��@����%false���d����d��@@�@@@@�@@@@���d��@@�  �  ������"&&���e����e��@�@@@��@������#not���e����e��@�@@@��@������!!��e���	e��@�@@@��@����)unplugged�
�e��@�@@@@�@@@@��e���e��@�� @@@��@������!<��%e���&e��@�@@@��@������"-.��2e���3e��@�@@@��@�������$Unix,gettimeofday��Ae���Be��@�@@@��@�������Ke���Le��@@�@@@@�@@@��@����%start��We���Xe��@�@@@@�@@@��@����'timeout��ce���de��@�@@@@�&@@@@�Q@@@�  �������&Thread%delay��tf��uf�@�@@@��@���"5.@��~f��f�@@@@�@@@������":=���g*��g,@�@@@��@����)unplugged���g ��g)@�@@@��@������#not���g-��g0@�@@@��@��������&Client#VBD6get_currently_attached���g2��gS@�@@@��@����#rpc���gT��gW@�@@@��@����*session_id���gX��gb@�@@@��@����$self���gc��gg@�@@@@���g1��gh@��)@@@@�;@@@@�I@@@�j@@@���e����his@@@��������#not���iv��iv�@�@@@��@���������iv���iv�@�@@@��@����)unplugged�
�iv�@�@@@@�@@@@�@@@�  ������%debug��j���j��@�@@@��@���	/Timeout waiting for dom0 device to be unplugged@��j���j��@@@@�@@@������%raise��%k���&k��@�@@@��@����!e��0k���1k��@�@@@@�@@@��5iv��6l��@��)@@@@��:iv|@@@�]@@@�\@@@��@@@��	@@@@��@Z��@@@��A@@��A@@��A@@���)ocaml.docސ������	� Attempt an unplug, and if it fails because the device is in use, wait for it to
    detach by polling the currently-attached field. @��QW���RXJ�@@@@@�@��TY��@@� @���@�����.has_vbd_leaked��`q���aq��@�@@@��@@���)__context��jq���kq��@�@@@��@@���#vbd��tq���uq��@�@@@��@�����,other_config���r����r�@�@@@��������"Db#VBD0get_other_config���r���r�@�@@@���)__context�������r�!��r�*@�@@@���$self����#vbd���r�1��r�4@�@@@@�@@@@���r��@@��@�����&device���s8>��s8D@�@@@��������"Db#VBD*get_device���s8G��s8X@�@@@���)__context�������s8Z��s8c@�@@@���$self����#vbd���s8j��s8m@�@@@@�@@@@���s8:@@��@�����(has_task���tqw��tq@�@@@�������$List)mem_assoc���tq���tq�@�@@@��@�����*Xapi_globs,vbd_task_key��tq��	tq�@�@@@��@����,other_config��tq��tq�@�@@@@�@@@@��tqs@@��@�����+has_related��"u���#u��@�@@@�������$List)mem_assoc��/u���0u��@�@@@��@�����*Xapi_globs.related_to_key��<u���=u��@�@@@��@����,other_config��Gu���Hu�	@�@@@@�@@@@��Lu��@@��������i��Vv		�Wv		@�@@@��@������#not��cv		�dv		@�@@@��@����(has_task��nv		�ov		@�@@@@��rv		�sv		@��@@@��@������#not���v		��v		 @�@@@��@����+has_related���v		!��v		,@�@@@@�@@@@�@@@�  ������$info���w	4	8��w	4	<@�@@@��@���	?Ignoring orphaned disk attached to control domain (device = %s)@���w	4	=��w	4	~@@@��@����&device���x		���x		�@�@@@@�@@@����ܰ��y	�	���y	�	�@@�@@@���v		2��z	�	�@��%@@@���@�����.has_valid_task���{	�	���{	�	�@�@@@���������}	�	���}	�	�@�@@@��@����(has_task���|	�	���|	�	�@�@@@��@��@�����'task_id���~	�	���~	�	�@�@@@�������#Ref)of_string���	�	���	�	�@�@@@��@�������$List%assoc��	�	��		�
@�@@@��@�����*Xapi_globs,vbd_task_key��	�
�	�
@�@@@��@����,other_config�� 	�
 �!	�
,@�@@@@��$	�	��%	�
-@�� @@@@�0@@@@��*~	�	�@@����@�����&status��6 C
�
��7 C
�
�@�@@@��������"Db$Task*get_status��E C
�
��F C
�
�@�@@@���)__context������Q C
�
��R C
�
�@�@@@���$self����'task_id��^ C
�
��_ C
�
�@�@@@@�@@@@��c C
�
�@@�������$List#mem��n D
�
��o D
�
�@�@@@��@����&status��y D
�
��z D
�
�@�@@@��@����"::��� D
�
��� D
�
�A������'pending@�
�� D
�
�@@@�������� D
�
�A������*cancelling@�	�� D
�
�@@@�����"[]�!A@�	"A@@@�#A@@�$A@@@�&%A@@��� D
�
�'@@@@�?(@@@�K)@@@���@��� F)4�� F)5@@@@����ް�� F)9�� F)>@@�@@@@��� B
x
~@@@��@@@@��@@@@���{	�	�@@��@�����1has_valid_related��� Ick�� Ic|@�@@@��������� K���� K��@�@@@��@����+has_related��� J��� J�@�@@@��@��@�����'related��� L���� L��@�@@@�������#Ref)of_string��� M���� M��@�@@@��@�������$List%assoc��
 M��� M��@�@@@��@�����*Xapi_globs.related_to_key�� M��� M��@�@@@��@����,other_config��" M���# M��@�@@@@��& M���' M��@�� @@@@�0@@@@��, L��@@����������"Db#VBD6get_currently_attached��; PEO�< PEl@�@@@���)__context������G PEn�H PEw@�@@@���$self����'related��T PE~�U PE�@�@@@@�@@@���@��\ Q���] Q��@@@@�������c Q���d Q��@@�@@@@��g PEK@@@�=@@@@��@@@@��k Icg@@���������s U��t U�@�@@@��@������#not��� U� �� U�@�@@@��@����.has_valid_task��� U��� U�@�@@@@��� U���� U�@��@@@��@������#not��� U��� U�@�@@@��@����1has_valid_related��� U��� U�,@�@@@@�@@@@�@@@�C@@@��@@@���v		@@@�f	@@@��
@@@��@@@�@@@�BA@@�MA@@���sP�������	� For a VBD attached to a control domain, it may correspond to a running task
    	(if so the task will be linked via an other_config key) or it may be a qemu
    	frontend (if so it will be linked to another frontend) @���n����p��@@@@@[@���q��@@�@���@�����)with_vbds��� X���� X��@�@@@��@@���#rpc��� X���� X��@�@@@��@@���*session_id��� X���� X��@�@@@��@@���)__context��� X���� X��@�@@@��@@���"vm��� X���� X��@�@@@��@@���$vdis�� X��� X��@�@@@��@@���$mode�� X��� X��@�@@@��@@���!f�� X��� X��@�@@@��@�����'task_id��$ Y���% Y��@�@@@�������'Context+get_task_id��1 Y���2 Y��@�@@@��@����)__context��< Y���= Y��@�@@@@�@@@@��A Y��@@��@�����$vbds��K Z���L Z��@�@@@������#ref��V Z���W Z��@�@@@��@����"[]��a Z���b Z�@@�@@@@�@@@@��f Z��@@������'finally��o [�p [@�@@@��@��@@����Ű�{ \�| \@@�@@@�  �������$List$iter��� ]$�� ]-@�@@@��@��@@���#vdi��� ^.;�� ^.>@�@@@��@�����#vbd��� _BP�� _BS@�@@@��������&Client#VBD&create��� `Vb�� `Vs@�@@@���#rpc������� `Vu�� `Vx@�@@@���*session_id������� `Vz�� `V�@�@@@���"vM����"vm��� `V��� `V�@�@@@���%empty������� `V��� `V�@@�@@@���#vDI����#vdi��� `V��� `V�@�@@@���*userdevice���*autodetect@��� a���� a��@@@���(bootable����+�� a��� a��@@�@@@���$mode������ a��� a��@�@@@���%_type��$Disk@�� a��� a��@@@���+unpluggable����$true��) b��* b�@@�@@@���2qos_algorithm_type��� @��5 b� �6 b�"@@@���4qos_algorithm_params������@ b�9�A b�;@@�@@@���,other_config����ɰ�L c<Y�M c<�A������������*Xapi_globs,vbd_task_key��] c<Z�^ c<q@�@@@��������#Ref)string_of��k c<s�l c<�@�@@@��@����'task_id��v c<��w c<�@�@@@@�@@@@�/�{ c<�@��!@@@�����߰	7A@�
8A@@@�:9A@@��� c<X;@@@���&device��� @��� d���� d��@@@���2currently_attached�������� d���� d��@@�@@@@��@@@@��� _BL@@�  ��������.has_vbd_leaked��� g���� g�@�@@@��@����)__context��� g��� g�@�@@@��@����#vbd��� g��� g�@�@@@@�@@@������%error��� h#�� h(@�@@@��@���	/Attach_helpers.with_vbds new VBD has leaked: %s@��� h)�� hZ@@@��@�������#Ref)string_of��� i[j�� i[w@�@@@��@����#vbd��� i[x�� i[{@�@@@@��� i[i�� i[|@��@@@@�,@@@@��� g��@@@��@�����(vbd_uuid��	 j��	 j�@�@@@��������&Client#VBD(get_uuid��	 j��	 j�@�@@@���#rpc������	" j��	# j�@�@@@���*session_id������	. j��	/ j�@�@@@���$self����#vbd��	; j��	< j�@�@@@@�)@@@@��	@ j�@@��@�����$uuid��	J k���	K k��@�@@@��������&Client"VM(get_uuid��	Y k���	Z k��@�@@@���#rpc������	e k���	f k��@�@@@���*session_id������	q k���	r k�@�@@@���$self����"vm��	~ k�	�	 k�@�@@@@�)@@@@��	� k��@@�  ������%debug��	� l�	� l@�@@@��@���	=created VBD (uuid %s); attempting to hotplug to VM (uuid: %s)@��	� l�	� l^@@@��@����(vbd_uuid��	� m_k�	� m_s@�@@@��@����$uuid��	� m_t�	� m_x@�@@@@�#@@@�  ������2��	� n{��	� n{�@�@@@��@����$vbds��	� n{��	� n{�@�@@@��@����"::��	� n{��	� n{�@��������#vbd��	� n{��	� n{�@�@@@���������	� n{��	� n{�@�@@@��@����$vbds�
�	� n{�@�@@@@�@@@@�A@@�@@@@�3@@@��������&Client#VBD$plug��
 o���
 o��@�@@@��@����#rpc��
 o���
 o��@�@@@��@����*session_id��
 o���
 o��@�@@@��@����#vbd��
% o���
& o��@�@@@@�%@@@�e@@@��@@@��@@@��@@@�1@@@��	@@@��
0 ^.6�
1 p��@���
4 ^.7@@@��@����$vdis��
= q���
> q��@�@@@@��@@@�  ������°�
J r���
K r��@�@@@��@����$vbds��
U r���
V r��@�@@@��@�������$List#rev��
d r���
e r��@�@@@��@������i��
p r���
q r��@�@@@��@����$vbds�
�
{ r��@�@@@@�@@@@�@@@@�+@@@������!f��
� s�
� s@�@@@��@���������
� s	�
� s
@�@@@��@����$vbds�
�
� s@�@@@@�@@@@�@@@�O@@@�@@@��
� \�
� t@���
� \@@@��@��@@�������
� u�
� u @@�@@@�������'Helpers2call_api_functions��
� w~��
� w~�@�@@@���)__context������
� w~��
� w~�@�@@@��@��@@���#rpc��
� w~��
� w~�@�@@@��@@���*session_id��
� w~��
� w~�@�@@@�  �������$List$iter��
� x���
� x��@�@@@��@�������'Helpers0log_exn_continue�� y��� y��@�@@@��@���7unplugging disk from VM@�� y��� y�@@@��@��@@���$self�� y�� y�@�@@@������+safe_unplug��! z"3�" z">@�@@@��@����#rpc��, z"?�- z"B@�@@@��@����*session_id��7 z"C�8 z"M@�@@@��@����$self��B z"N�C z"R@�@@@@�%@@@��G y��H {Sa@���K y�	@@@@��M y���N |bo@��P	@@@��@������	S��Z }p|�[ }p}@�@@@��@����$vbds�
�e }p�@�@@@@�@@@@�w@@@�������$List$iter��s ~���t ~��@�@@@��@�������'Helpers0log_exn_continue��� ���� ��@�@@@��@���4destroying VBD on VM@��� ���� ��@@@��@��@@���$self��� ���� ��@�@@@��������&Client#VBD'destroy��� ����� ��@�@@@��@����#rpc��� ���� ��	@�@@@��@����*session_id��� ��
�� ��@�@@@��@����$self��� ���� ��@�@@@@�%@@@��� ���� �(@���� ��	@@@@��� ���� �)6@��T	@@@��@������	ذ�� �7C�� �7D@�@@@��@����$vbds�
�� �7H@�@@@@�@@@@�{@@@��@@@�A@@��� w~��� �IP@���� w~�@@@@�6@@@��� u�� �QV@���� u@@@@��@@@��@@@��@@@��A@@��	A@@��
A@@�
A@@�A@@� A@@�+A@@������������	Q Execute a function with a list of VBDs after attaching a bunch of VDIs to an vm @�� W..� W.�@@@@@�@�� X��@@�@@