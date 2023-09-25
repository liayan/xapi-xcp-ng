Caml1999M025����            8ocaml/xapi/xapi_alert.ml����  V  S  �  �����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!D��8ocaml/xapi/xapi_alert.mlNGN�NGO@�������%Debug$Make��NGR�NG\@�@@�����@�����$name��NGi�NGm@�@@@���*xapi_alert@��$NGp�%NG|@@@@��'NGe@@�@@��*NG^�+NG�@@� �-NG�@@@��/NGG@�@��������!D��;P���<P��@�@@A��?P��@@�@��������&Client��KQ���LQ��@�@@A��OQ��@@�@�����%Alert��XS���YS��@�����A�    �!t��dT���eT��@@@��Р$name��lU���mU��@@����&string��tU���uU��@@�@@@��xV��@@�Р(priority��~V���V��@@����%int64���V����V��@@�@@@���W��@@�Р#cls���W����W��@@�����#API#cls���W����W��@@�@@@���X��@@�Р(obj_uuid���X����X�@@����&string���X���X�@@�@@@���Y@@�Р$body���Y��Y@@����&string���Y��Y@@�@@@�@@@A@@���T����Z #@@�@���@�����'process���\%+��\%2@�@@@��@@�����!x���\%4��\%5@�@@@����!t���\%8��\%9@@�@@@���\%3��\%:@@@�������.Server_helpers2exec_with_new_task���]=A��]=b@�@@@��@���3Sending an HA alert@���]=c� ]=x@@@���0task_in_database����%false��^y��^y�@@�@@@��@��@@���)__context��^y��^y�@�@@@�������'Helpers2call_api_functions��$_���%_��@�@@@���)__context������0_���1_��@�@@@��@��@@���#rpc��<_���=_��@�@@@��@@���*session_id��F_���G_��@�@@@����@�����@��Sa��Ta�@@@�����#Ref!t��]a��^a�@���!a��da��ea�@@@@�	@@@��ha��ia�@@@��������&Client'Message&create��vb!1�wb!F@�@@@��@����#rpc���b!G��b!J@�@@@��@����*session_id���b!K��b!U@�@@@��@������!x���b!V��b!W@�@@@��$name���b!X��b!\@�
@@@��@������!x���b!]��b!^@�@@@��(priority���b!_��b!g@�
@@@��@������!x���b!h��b!i@�@@@��#cls���b!j��b!m@�
@@@��@������!x���cn���cn�@�@@@��(obj_uuid���cn���cn�@�
@@@��@������!x���cn���cn�@�@@@��$body���cn���cn�@�
@@@@�~@@@@���a�@@����"()���e����e��@@�@@@�@@@�����!e��f���f��@�@@@@������$warn��g���g��@�@@@��@���>Exception creating message: %s@��g���g��@@@��@�������)ExnHelper-string_of_exn��*g���+g�@�@@@��@����!e��5g��6g�@�@@@@��9g���:g�@��@@@@�,@@@@��?`��@@@��A@@��B_���Ch#@���F_��@@@@�$@@@��I^y��Ji$)@���M^y�@@@@�Z@@@�gA@@@��Q\%'@@�	@@��TS���Uj*-@@@��WS��@�@���@�����0alert_queue_push��cm|��dm|�@�@@@���������,Thread_queue$make��rn���sn��@�@@@���$name���,API messages@��~n���n��@@@���,max_q_length���#100@���n����n��@@@��@�����%Alert'process���n����n��@�@@@@���n����n��@��+@@@���,Thread_queue'push_fn���o����o��@�@@@���)ocaml.doc;�������	G Function which pushes Alerts onto the queue for background processing @���l//��l/{@@@@@F@���m||@@�@���@�����#add���rX\��rX_@�@@@�Đ#msg@������$name���rXf��rXj@�@@@����(priority���rXl��rXt@�@@@@���rXe��rXu@��@@@�Đ#cls@������rXw��rXz@�@@@�Đ(obj_uuid@������rX|��rX�@�@@@�Đ$body@����� rX��rX�@�@@@��@�����$sent��s���s��@�@@@���������)Pool_role)is_master��t���t��@�@@@��@����*��%t���&t��@@�@@@@�@@@�������.Server_helpers2exec_with_new_task��3u���4u��@�@@@��@���0Sending an alert@��=u���>u��@@@���0task_in_database����>��Hv��Iv�@@�@@@��@��@@���)__context��Tv��Uv�&@�@@@��@�����@��_w*9�`w*:@@@�����#Ref!t��iw*@�jw*E@���!a��pw*=�qw*?@@@@�	@@@��tw*8�uw*F@@@�������,Xapi_message&create���xIU��xIh@�@@@���)__context�������xIj��xIs@�@@@���$name�������xIu��xIy@�@@@���(priority�������xI{��xI�@�@@@���#cls�������xI���xI�@�@@@���(obj_uuid�������xI���xI�@�@@@���$body�������xI���xI�@�@@@@�L@@@@���w*4@@����$true���z����z��@@�@@@�@@@���v���{��@����v�	@@@@��@@@�������0alert_queue_push���}����}��@�@@@��@����$name���}����}��@�@@@��@�������%Alert$name��}���}��@�����@@@����(priority��}���}��@�����@@@����#cls��}���}��@�����@@@����(obj_uuid��)}���*}�@�����@@@����$body��6}��7}�@�����@@@@@��>}���?}�@@@@�Y@@@��Bt��@@@@��Ds��@@��������#not��O�P@�@@@��@����$sent��Z�[ @�@@@@�@@@������$warn��f&�g*@�@@@��@���:Failed to send alert %s %s@��p+�qG@@@��@����$name��zH�{L@�@@@��@����(obj_uuid���M��U@�@@@@�#@@@@���@@@�H@@@���rX�A@@���rX{
A@@���rXvA@@���rX`A@@����(�������	Y Function which guarantees not to block and creates the message on a 'best-effort' basis @���q����q�W@@@@@3@���rXX@@�@���@�����,edge_trigger��� B���� B��@�@@@��@@���*on_edge_fn��� B���� B��@�@@@��@�����)old_value��� C���� C��@�@@@������#ref��� C���� C��@�@@@��@����$None��� C���� C��@@�@@@@�@@@@��� C��@@��@@���!x��� D���� D��@�@@@�  ��������!!��� E���� E��@�@@@��@����)old_value�
� E�	@�@@@@�@@@������$None�� F		� F		@@�@@@@������ G		#� G		%@@�@@@������$Some��  H	&	,�! H	&	0@����"ov��( H	&	1�) H	&	3@�@@@�@@@@��������"<>��6 I	7	E�7 I	7	G@�@@@��@����"ov��A I	7	B�B I	7	D@�@@@��@����!x��L I	7	H�M I	7	I@�@@@@�@@@������*on_edge_fn��X I	7	O�Y I	7	Y@�@@@��@����"ov��c I	7	Z�d I	7	\@�@@@��@����!x��n I	7	]�o I	7	^@�@@@@�@@@@��s I	7	?@@@@��u E���v J	_	d@���y E��@@@������":=��� K	g	u�� K	g	w@�@@@��@����)old_value��� K	g	k�� K	g	t@�@@@��@����$Some��� K	g	x�� K	g	|@�����!x��� K	g	}�� K	g	~@�@@@�@@@@�@@@�2@@@��� D��@@@��@@@��	A@@���?�������	M Repeated calls to this function call 'on_edge_fn' on every value transition @��� AWW�� AW�@@@@@J@��� B��@@�@@