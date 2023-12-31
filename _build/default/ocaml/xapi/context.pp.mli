Caml1999N025����            6ocaml/xapi/context.mli����  .  N   �  �����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����A�    �!t��6ocaml/xapi/context.mliQ���Q��@@@@A@���)ocaml.doc��������	� A Context is used to represent every API invocation. It may be extended
    to include extra data without changing all the autogenerated signatures @��OHH�P��@@@@@�@��Q��@@�@���A�    �&origin��S���S��@@@��Р$Http��%S���&S��@��������$Http'Request!t��3S��4S�@@�@@@������$Unix*file_descr��?S��@S�!@@�@@@@@�@@�Р(Internal��HS�$�IS�,@�@@��LS�"@@@A@@��NS��@@�@�����*ocaml.text萠�����2 {6 Constructors} @��_U..�`U.E@@@@@����Р$make��hWGK�iWGO@���1http_other_config����$list��tXR|�uXR�@��������&string���XRk��XRq@@�@@@�����&string���XRt��XRz@@�@@@@�@@@@���XRj@@@���%quiet����$bool���Y����Y��@@�@@@���*subtask_of�����#API(ref_task���Z����Z��@@�@@@���*session_id�����#API+ref_session���[����[��@@�@@@���(database�����&Db_ref!t���\����\��@@�@@@���0task_in_database����$bool���]� ��]�@@�@@@���0task_description����&string���^��^"@@�@@@���&origin����&origin���_#0��_#6@@�@@@��@����&string���`7<��`7B@@�@@@����!t��aCH�aCI@@�@@@�@@@��_#(@@@��	^
@@@��]��	@@@��\��@@@��[��@@@��Z��@@@��Y��@@@��XRW@@@@�����������
    [make ~__context ~subtask_of ~database ~session_id ~task_in_database ~task_description ~origin task_name] creates a new context.
    [http_other_config] are extra bits of context picked up from HTTP headers,
    [quiet] silences "task created" log messages,
    [subtask_of] is a reference to the parent task,
    [session_id] is the current session id,
    [database] is the database to use in future Db.* operations
    [origin] indicates whether the operation is triggered by an HTTP request or by an internal operation
    [task_in_database] indicates if the task needs to be stored the task in the database,
    [task_description] is the description of the task (Task.name_description),
    [task_name] is the task name of the created context (Task.name_label). @��"bJJ�#kO@@@@@�@��%WGG#@�$@���Р+of_http_req��.mQU�/mQ`@���*session_id�����#API+ref_session��<nct�=nc�@@�@@@���6internal_async_subtask����$bool��Io���Jo��@@�@@@���1generate_task_for����$bool��Vp���Wp��@@�@@@���.supports_async����$bool��cq���dq��@@�@@@���%label����&string��pr���qr��@@�@@@���(http_req������$Http'Request!t���s����s�	@@�@@@���"fd�����$Unix*file_descr���t
��t
!@@�@@@����!t���u"'��u"(@@�@@@���t
@@@���s��@@@���r��@@@���q��
@@@���p��@@@���o��@@@���nch@@@@@���mQQ@�@���Р3from_forwarded_task���w*.��w*A@���1http_other_config����$list���xDn��xDr@��������&string���xD]��xDc@@�@@@�����&string���xDf��xDl@@�@@@@�@@@@���xD\@@@���*session_id�����#API+ref_session���ys���ys�@@�@@@���&origin����&origin���z����z��@@�@@@��@�����#API(ref_task��{���{��@@�@@@����!t��|���|��@@�@@@�@@@��z��@@@��ysx@@@��xDI	@@@@@��w**@�@���Р/make_subcontext��~��� ~��@���)__context����!t��+~���,~��@@�@@@���0task_in_database����$bool��8~���9~��@@�@@@��@����&string��C~�	�D~�	@@�@@@����!t��L~�	�M~�	@@�@@@�@@@��Q~��@@@��S~��@@@@@��U~��	@�
@����������/ {6 Accessors} @��e @		�f @		"@@@@@����Р.get_session_id��n B	$	(�o B	$	6@��@����!t��x B	$	9�y B	$	:@@�@@@�����#API+ref_session��� B	$	>�� B	$	M@@�@@@�@@@@�����������	� [get_session_id __context] returns the session id stored in [__context]. In case there is no session id in this
    context, it fails with [Failure "Could not find a session_id"]. @��� C	N	N�� D	�
@@@@@'@��� B	$	$@�@���Р+get_task_id��� F


�� F


@��@����!t��� F


�� F


@@�@@@�����#API(ref_task��� F


!�� F


-@@�@@@�@@@@����M�������	� [get_task_id __context] returns the task id stored in [__context]. Such a task can be either a task stored in
    database or a tempory task (also called dummy). @��� G
.
.�� H
�
�@@@@@X@��� F



@�@���Р.forwarded_task��� J
�
��� J
�
�@��@����!t��� J
�
��� J
�
�@@�@@@����$bool��� J
�
��� J
�
�@@�@@@�@@@@@��� J
�
�@�@���Р.string_of_task��� L
�
��� L
�
@��@����!t��� L
��� L
�@@�@@@����&string�� L
�� L
�@@�@@@�@@@@@��	 L
�
�@�@���Р0task_in_database�� N� N.@��@����!t�� N1� N2@@�@@@����$bool��% N6�& N:@@�@@@�@@@@���&��������	� [task_in_database __context] indicates if [get_task_id __context] corresponds to a task stored in database or
    to a dummy task. @��5 O;;�6 P��@@@@@�@��8 N@�@���Р*get_origin��A R���B R��@��@����!t��K R���L R��@@�@@@����&string��T R���U R��@@�@@@�@@@@���U퐠�����	O [get_origin __context] returns a string containing the origin of [__context]. @��d S���e S�7@@@@@�@��g R��@�@���Р+database_of��p U9=�q U9H@��@����!t��z U9K�{ U9L@@�@@@�����&Db_ref!t��� U9P�� U9X@@�@@@�@@@@�����������	N [database_of __context] returns a database handle, which can be used by Db.* @��� VYY�� VY�@@@@@)@��� U99@�@�����J1�������1 {6 Destructors} @��� X���� X��@@@@@<���Р'destroy��� Z���� Z��@��@����!t��� Z���� Z��@@�@@@����$unit��� Z���� Z��@@�@@@�@@@@@��� Z��@�@�����{b�������: {6 Auxiliary functions } @��� \���� \��@@@@@m���Р-_client_of_rq��� ^ �� ^ @��@������$Http'Request!t��� ^ �� ^ "@@�@@@����&option��� ^ /�� ^ 5@������&Ipaddr!t�� ^ &� ^ .@@�@@@@�@@@�@@@@@��
 ^  @�@���Р.is_unix_socket�� `7;� `7I@��@�����$Unix*file_descr�� `7L�  `7[@@�@@@����$bool��( `7_�) `7c@@�@@@�@@@@���)��������5 [is_unix_socket fd] @��8 add�9 ad~@@@@@�@��; `77@�@���Р'preauth��D c���E c��@���)__context����!t��P c���Q c��@@�@@@����$bool��Y c���Z c��@@�@@@��] c��@@@@���[󐠠����6 [preauth ~__context] @��j d���k d��@@@@@�@��m c��@�@���Р2trackid_of_session��v f���w f��@���-with_brackets����$bool��� g���� g��@@�@@@���&prefix����&string��� g���� g��@@�@@@��@����&option��� g��� g�@������#API+ref_session��� g��� g�@@�@@@@�@@@����&string��� g��� g�#@@�@@@�@@@��� g��@@@��� g��@@@@@��� f��	@�
@���Р'trackid��� i%)�� i%0@���-with_brackets����$bool��� i%B�� i%F@@�@@@���&prefix����&string��� i%R�� i%X@@�@@@��@����!t��� i%\�� i%]@@�@@@����&string��� i%a�� i%g@@�@@@�@@@��� i%J@@@��� i%3@@@@@��� i%%	@�
@���Р:check_for_foreign_database��  kim� ki�@���)__context����!t�� ki�� ki�@@�@@@����!t�� ki�� ki�@@�@@@�� ki�@@@@@�� kii@�@���Р5get_http_other_config��$ m���% m��@��@������$Http'Request!t��2 m���3 m��@@�@@@����$list��; m���< m��@��������&string��G m���H m��@@�@@@�����&string��Q m���R m��@@�@@@@�@@@@��V m��@@@�&@@@@@��Y m��@�@�����򐠠����	8 {6 Functions which help resolving cyclic dependencies} @��i o���j o�@@@@@����Р/__get_task_name��r q!%�s q!4@����#ref��z q!_�{ q!b@����)__context����!t��� q!B�� q!C@@�@@@��@�����#API(ref_task��� q!G�� q!S@@�@@@����&string��� q!W�� q!]@@�@@@�@@@��� q!8@@@@��� q!7*@@@@@��� q!!,@�-@���Р.__destroy_task��� sdh�� sdv@����#ref��� sd��� sd�@����)__context����!t��� sd��� sd�@@�@@@��@�����#API(ref_task��� sd��� sd�@@�@@@����$unit��� sd��� sd�@@�@@@�@@@��� sdz@@@@��� sdy*@@@@@��� sdd,@�-@���Р+__make_task��� u���� u��@����#ref��� ~���� ~��@����)__context����!t�� v��� v��@@�@@@���1http_other_config����$list�� w��� w��@��������&string�� w��� w��@@�@@@�����&string��$ w���% w��@@�@@@@�@@@@��) w��@@@���+description����&string��4 x�
�5 x�@@�@@@���*session_id�����#API+ref_session��C y#�D y2@@�@@@���*subtask_of�����#API(ref_task��R z3E�S z3Q@@�@@@��@����&string��] {RX�^ {R^@@�@@@��������#API(ref_task��k |_e�l |_q@@�@@@������$Uuid!t��w |_��x |_�@������#API(ref_task��� |_t�� |_�@@�@@@@�@@@@�@@@�+@@@��� z39@@@��� y@@@��� x��@@@��� w��@@@��� v��@@@@��� v���@@@@@��� u���@��@���Р,set_test_rpc��� ����� ���@��@����!t��� ����� ���@@�@@@��@��@�����#Rpc$call��� ����� ���@@�@@@�����#Rpc(response��� ����� ���@@�@@@�@@@����$unit��� ����� ���@@�@@@��� ���@@@�*@@@@@��� ���@�@���Р,get_test_rpc��� ����� ���@��@����!t��� ����� ���@@�@@@����&option��� ���� ��@���@�����#Rpc$call��� ����� ���@@�@@@�����#Rpc(response�� ���� �� @@�@@@�@@@@�� ���@@@�(@@@@@�� ��� @�!@���Р5set_test_clusterd_rpc�� �
� �
#@��@����!t��" �
&�# �
'@@�@@@��@��@�����#Rpc$call��1 �
,�2 �
4@@�@@@�����#Rpc(response��< �
8�= �
D@@�@@@�@@@����$unit��F �
I�G �
M@@�@@@��J �
+@@@�*@@@@@��M �

@�@���Р5get_test_clusterd_rpc��V �OS�W �Oh@��@����!t��` �Ok�a �Ol@@�@@@����&option��i �O��j �O�@���@�����#Rpc$call��v �Oq�w �Oy@@�@@@�����#Rpc(response��� �O}�� �O�@@�@@@�@@@@��� �Op@@@�(@@@@@��� �OO @�!@���Р*get_client��� ����� ���@��@����!t��� ����� ���@@�@@@����&option��� ����� ���@�����&string��� ����� ���@@�@@@@�@@@�@@@@@��� ���@�@@