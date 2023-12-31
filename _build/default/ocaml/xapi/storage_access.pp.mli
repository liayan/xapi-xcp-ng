Caml1999N025����         	   =ocaml/xapi/storage_access.mli����  F>  �  /�  ,������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������3
 * @group Storage
@��=ocaml/xapi/storage_access.mliNGG�P]_@@@@@����Р5start_smapiv1_servers��
Rae�Raz@��@����$unit��Ra}�Ra�@@�@@@����$unit��Ra��Ra�@@�@@@�@@@@���)ocaml.doc��������	> start listening for requests backed by SMAPIv1-style plugins @��.S���/S��@@@@@�@��1Raa@�@���Р-on_xapi_start��:U���;U��@���)__context�����'Context!t��HU���IU��@@�@@@����$unit��QU���RU��@@�@@@��UU��@@@@���5򐠠����	5 Synchronises the known SM plugins with the SM table @��bV���cV�9@@@@@�@��eU��@�@���Р%start��nX;?�oX;D@��@����$unit��xX;G�yX;K@@�@@@����$unit���X;O��X;S@@�@@@�@@@@���d!�������	f once [start ()] returns the storage service is listening for requests on
    its unix domain socket. @���YTT��Z��@@@@@,@���X;;@�@���Р(find_vdi���\����\��@���)__context�����'Context!t���]����]��@@�@@@��@�����1Storage_interface"sr���^����^�@@�@@@��@�����1Storage_interface#vdi���_��_@@�@@@��������#API'ref_VDI���`#��`.@@�@@@������#API%vDI_t���`1��`:@@�@@@@�@@@�@@@�-@@@���]��@@@@������������	W [find_vdi __context sr vdi] returns the XenAPI VDI ref associated
    	with (sr, vdi) @���a;;��b��@@@@@�@���\��@�@���Р,find_content���d��� d��@���)__context�����'Context!t��e���e��@@�@@@���"sr�����1Storage_interface"sr��f���f��@@�@@@��@�����1Storage_interface*content_id��)g���*g�@@�@@@��������#API'ref_VDI��7h
�8h@@�@@@������#API%vDI_t��Ch�Dh!@@�@@@@�@@@�@@@��If��@@@��Ke��@@@@���+萠�����	e [find_content __context ?sr content_id] returns the XenAPI VDI ref associated
    with [content_id] @��Xi""�Yjt�@@@@@�@��[d��@�@���Р3vdi_info_of_vdi_rec��dl���el��@��@�����'Context!t��pl���ql��@@�@@@��@�����#API%vDI_t��}l���~l��@@�@@@�����1Storage_interface(vdi_info���l����l��@@�@@@�@@@�@@@@���l)�������	y [vdi_info_of_vdi_rec __context vdi_rec] constructs a vdi_info record from information in the given VDI database record. @���m����m�[@@@@@4@���l��@�@���Р$bind���o]a��o]e@���)__context�����'Context!t���pht��ph}@@�@@@���#pbd�����#API'ref_PBD���ph���ph�@@�@@@�����1Storage_interface,query_result���ph���ph�@@�@@@���ph�@@@���phj@@@@����p�������	� [bind __context pbd] causes the storage_access module to choose the most
        appropriate driver implementation for the given [pbd] @���q����r @@@@@@{@���o]]@�@���Р&unbind���tBF��tBL@���)__context�����'Context!t���tBY��tBb@@�@@@���#pbd�����#API'ref_PBD��	tBj�
tBu@@�@@@����$unit��tBy�tB}@@�@@@��tBf@@@��tBO@@@@������������	 [unbind __context pbd] causes the storage access module to forget the association
    between [pbd] and driver implementation @��%u~~�&v�@@@@@�@��(tBB@�@���Р,make_service��1x�2x@��@����&string��;x�<x@@�@@@��@����&string��Fx!�Gx'@@�@@@�����.System_domains'service��Qx+�RxA@@�@@@�@@@�@@@@���5򐠠����	J [make_service uuid type] returns the service record for a storage driver @��byBB�cyB�@@@@@�@��ex@�@���Р#rpc��n{���o{��@��@�����#Rpc$call��z{���{{��@@�@@@�����#Rpc(response���{����{��@@�@@@�@@@@���h%�������	7 RPC function for calling the main storage multiplexor @���|����|��@@@@@0@���{��@�@���Р,external_rpc���~����~�	@��@����&string���~�	��~�	@@�@@@��@��@����$unit���~�	��~�	@@�@@@����&string���~�	��~�	 @@�@@@�@@@��@�����#Rpc$call���~�	%��~�	-@@�@@@�����#Rpc(response���~�	1��~�	=@@�@@@�@@@���~�	@@@�6@@@@����}�������	O [external_rpc queue_name uri] for calling a particular storage implementation @���	>	>��	>	�@@@@@�@���~��@�@���Р/datapath_of_vbd��� A	�	��� A	�	�@���%domid����#int�� A	�	�� A	�	�@@�@@@���&device����&string�� A	�	�� A	�	�@@�@@@�����1Storage_interface"dp�� A	�	�� A	�	�@@�@@@��! A	�	�@@@��# A	�	�@@@@�����������	� [datapath_of_vbd domid userdevice] returns the name of the datapath which corresponds
    to device [userdevice] on domain [domid] @��0 B	�	��1 C
7
f@@@@@�@��3 A	�	�@�@���Р<presentative_datapath_of_vbd��< E
h
l�= E
h
�@���)__context�����'Context!t��J F
�
��K F
�
�@@�@@@���"vm�����#API&ref_VM��Y G
�
��Z G
�
�@@�@@@���#vdi�����#API'ref_VDI��h H
�
��i H
�
�@@�@@@�����1Storage_interface"dp��s I
�
��t I
�
�@@�@@@��w H
�
�@@@��y G
�
�@@@��{ F
�
�@@@@���[�������
  : [presentative_datapath_of_vbd vm vdi] gives a presentative datapath for a potential
    vbd. If there is such datapath established (or can be established, given
    the VM is running), the result is the same as datapath_of_vbd; otherwise,
    it's a string artificially constructed based on VM uuid and VDI uuid. @��� J
�
��� M�%@@@@@#@��� E
h
h@�@���Р%reset��� O'+�� O'0@���)__context�����'Context!t��� O'=�� O'F@@�@@@���"vm�����#API&ref_VM��� O'M�� O'W@@�@@@����$unit��� O'[�� O'_@@�@@@��� O'J@@@��� O'3@@@@����]�������	t [reset __context vm] declares that [vm] has reset and if it's a driver
    domain, we expect it to lose all state. @��� P``�� Q��@@@@@h@��� O''@�@���Р5transform_storage_exn��� S���� S��@��@��@����$unit��� S���� S��@@�@@@��!a��� S� �� S�@@@�
@@@��!a��� S��� S�	@@@��� S��@@@@������������	Y [transform_storage_exn f] runs [f], rethrowing any storage error as a nice XenAPI error @�� T

� T
h@@@@@�@�� S��@�@���Р3attach_and_activate�� Vjn� Vj�@���)__context�����'Context!t�� W��� W��@@�@@@���#vbd�����#API'ref_VBD��, X���- X��@@�@@@���%domid����#int��9 Y���: Y��@@�@@@��@��@�����1Storage_interface'backend��H Z���I Z��@@�@@@��!a��O Z���P Z��@@@�
@@@��!a��V [���W [��@@@��Y Z��@@@��[ Y��@@@��] X��@@@��_ W��	@@@@���?��������
  - [attach_and_activate __context vbd domid f] calls [f attach_info] where
    [attach_info] is the result of attaching a VDI which is also activated.
    This should be used everywhere except the migrate code, where we want fine-grained
    control of the ordering of attach/activate/deactivate/detach @��l \���m _�"@@@@@@��o Vjj@�@���Р5deactivate_and_detach��x a$(�y a$=@���)__context�����'Context!t��� b@L�� b@U@@�@@@���#vbd�����#API'ref_VBD��� b@]�� b@h@@�@@@���%domid����#int��� b@r�� b@u@@�@@@����$unit��� b@y�� b@}@@�@@@��� b@l@@@��� b@Y@@@��� b@B@@@@����P�������	� [deactivate_and_detach __context vbd domid] idempotent function which ensures
    that any attached or activated VDI gets properly deactivated and detached. @��� c~~�� d�!@@@@@[@��� a$$@�@���Р+is_attached��� f#'�� f#2@���)__context�����'Context!t��� f#?�� f#H@@�@@@���#vbd�����#API'ref_VBD��� f#P�� f#[@@�@@@���%domid����#int��� f#e�� f#h@@�@@@����$bool��� f#l�  f#p@@�@@@�� f#_@@@�� f#L@@@�� f#5@@@@������������	b [is_attached __context vbd] returns true if the [vbd] has an attached
    or activated datapath. @�� gqq� h��@@@@@�@�� f##@�@���Р&on_vdi��  j���! j��@���)__context�����'Context!t��. k���/ k��@@�@@@���#vbd�����#API'ref_VBD��= l 	�> l @@�@@@���%domid����#int��J m �K m#@@�@@@��@��@��@�����#Rpc$call��[ n$.�\ n$6@@�@@@�����#Rpc(response��f n$:�g n$F@@�@@@�@@@��@�����1Storage_interface*debug_info��t oHQ�u oHm@@�@@@��@�����1Storage_interface"dp��� pnw�� pn�@@�@@@��@�����1Storage_interface"sr��� q���� q��@@�@@@��@�����1Storage_interface#vdi��� r���� r��@@�@@@��!a��� s���� s��@@@�
@@@�@@@�&@@@�4@@@��� n$-@@@��!a��� u���� u��@@@��� n$)@@@��� m@@@��� l @@@��� k��	@@@@����T�������	� [on_vdi __context vbd domid f] calls [f rpc dp sr vdi] which is
    useful for executing Storage_interface.Client.VDI functions, applying the
    standard convention mapping VBDs onto DPs @��� v���� xv�@@@@@_@��� j��@�@���Р2resynchronise_pbds��� z���� z��@���)__context�����'Context!t��� z���� z��@@�@@@���$pbds����$list��� z���� z��@������#API'ref_PBD��� z���� z��@@�@@@@�@@@����$unit��  z��� z��@@�@@@�� z��@@@�� z��@@@@������������	� [resynchronise_pbds __context pbds] sets the currently_attached state of
    each of [pbd] to match the state of the storage layer. @�� {��� |C�@@@@@�@�� z��@�@���Р=refresh_local_vdi_activations�� ~���  ~��@���)__context�����'Context!t��- ~���. ~��@@�@@@����$unit��6 ~���7 ~��@@�@@@��: ~��@@@@���א������	� [refresh_local_vdi_activations __context] updates the VDI.sm_config fields to
    match the state stored within the storage layer. @��G ���H �K@@@@@�@��J ~��@�@���Р0vbd_attach_order��S �MQ�T �Ma@���)__context�����'Context!t��a �dp�b �dy@@�@@@��@����$list��l �d��m �d�@������#API'ref_VBD��w �d}�x �d�@@�@@@@�@@@����$list��� �d��� �d�@������#API'ref_VBD��� �d��� �d�@@�@@@@�@@@�@@@��� �df@@@@���r/�������	l [vbd_attach_order __context vbds] returns vbds in the order which xapi should
    	attempt to attach them. @��� ����� ��@@@@@:@��� �MM!@�"@���Р0vbd_detach_order��� ��� �)@���)__context�����'Context!t��� �,8�� �,A@@�@@@��@����$list��� �,Q�� �,U@������#API'ref_VBD��� �,E�� �,P@@�@@@@�@@@����$list��� �,e�� �,i@������#API'ref_VBD��� �,Y�� �,d@@�@@@@�@@@�@@@��� �,.@@@@������������	l [vbd_detach_order __context vbds] returns vbds in the order which xapi should
    	attempt to detach them. @��� �jj�� ���@@@@@�@��� �!@�"@���Р+diagnostics�� ���� ���@���)__context�����'Context!t�� ���� ��@@�@@@����&string�� ��� ��@@�@@@�� ���@@@@������������	I [diagnostics __context] returns a printable snapshot of SM system state @��+ ��, �[@@@@@�@��. ���@�@���Р*dp_destroy��7 �]a�8 �]k@���)__context�����'Context!t��E �]x�F �]�@@�@@@��@����&string��P �]��Q �]�@@�@@@��@����$bool��[ �]��\ �]�@@�@@@����$unit��d �]��e �]�@@�@@@�@@@�@@@��j �]n@@@@���J�������	P [dp_destroy __context dp allow_leak] attempts to cleanup and detach a given DP @��w ����x ���@@@@@@��z �]]@�@���Р)create_sr��� ����� �� @���)__context�����'Context!t��� ��� �@@�@@@���"sr�����#API&ref_SR��� �$�� �.@@�@@@���*name_label����&string��� �/?�� �/E@@�@@@���0name_description����&string��� �F\�� �Fb@@�@@@���-physical_size����%int64��� �cv�� �c{@@�@@@����$list��� �|��� �|�@��������&string��� �|��� �|�@@�@@@�����&string��� �|��� �|�@@�@@@@�@@@@��� �|�@@@��� �ch@@@��� �FK@@@��� �/4!@@@��� �!#@@@��� �%@@@@������������	c [create_sr __context sr name_label name_description physical_size] attempts to create an empty SR @�� ���� �� @@@@@�@�� ���5@�6@���Р*destroy_sr�� �� �@���)__context�����'Context!t�� �� �(@@�@@@���"sr�����#API&ref_SR��+ �/�, �9@@�@@@���(and_vdis����$list��8 �R�9 �V@������#API'ref_VDI��C �F�D �Q@@�@@@@�@@@����$unit��M �Z�N �^@@�@@@��Q �=@@@��S �,@@@��U �@@@@���5򐠠����	F [destroy_sr __context sr] attempts to cleanup and destroy a given SR @��b �__�c �_�@@@@@�@��e �@�@���Р*event_wait��n ����o ���@��@�����1Storage_interface*debug_info��z ����{ ���@@�@@@��@��@������1Storage_interface'Dynamic"id��� ����� ���@@�@@@����$bool��� �� �� ��@@�@@@�@@@����$unit��� ��	�� ��@@�@@@��� ���@@@�*@@@@@��� ���@�@���Р*task_ended��� ��� �@��@�����1Storage_interface*debug_info��� � "�� � >@@�@@@��@������1Storage_interface$Task"id��� � B�� � [@@�@@@����$bool��� � _�� � c@@�@@@�@@@�@@@@@��� �@�@���Р,success_task��� �ei�� �eu@��@�����1Storage_interface*debug_info��� �x}�� �x�@@�@@@��@������1Storage_interface$Task"id��� ����� ���@@�@@@������1Storage_interface$Task!t��		 ����	
 ���@@�@@@�@@@�!@@@@@��	 �ee@�@���Р-wait_for_task��	 ����	 ���@��@�����1Storage_interface*debug_info��	$ ����	% ��@@�@@@��@������1Storage_interface$Task"id��	3 ��	4 �,@@�@@@������1Storage_interface$Task"id��	@ �-2�	A �-K@@�@@@�@@@�!@@@@@��	F ���@�@���Р+vdi_of_task��	O �MQ�	P �M\@��@�����1Storage_interface*debug_info��	[ �_d�	\ �_�@@�@@@��@������1Storage_interface$Task!t��	j ����	k ���@@�@@@�����1Storage_interface(vdi_info��	u ����	v ���@@�@@@�@@@�@@@@@��	{ �MM@�@���Р.mirror_of_task��	� ����	� ���@��@�����1Storage_interface*debug_info��	� ����	� ���@@�@@@��@������1Storage_interface$Task!t��	� ����	� ��@@�@@@������1Storage_interface&Mirror"id��	� ��	� �5@@�@@@�@@@�!@@@@@��	� ���@�@���Р-register_task��	� �7;�	� �7H@��@�����'Context!t��	� �KM�	� �KV@@�@@@��@������1Storage_interface$Task"id��	� �KZ�	� �Ks@@�@@@������1Storage_interface$Task"id��	� �Kw�	� �K�@@�@@@�@@@�!@@@@@��	� �77@�@���Р/unregister_task��	� ����	� ���@��@�����'Context!t��	� ����	� ���@@�@@@��@������1Storage_interface$Task"id��
 ����
 ���@@�@@@������1Storage_interface$Task"id��
 ����
 ���@@�@@@�@@@�!@@@@@��
  ���@�@���Р/register_mirror��
) ����
* ��@��@�����'Context!t��
5 ��
6 �@@�@@@��@������1Storage_interface&Mirror"id��
D ��
E �/@@�@@@������1Storage_interface&Mirror"id��
Q �3�
R �N@@�@@@�@@@�!@@@@@��
W ���@�@���Р1unregister_mirror��
` �PT�
a �Pe@��@������1Storage_interface&Mirror"id��
n �hj�
o �h�@@�@@@������1Storage_interface&Mirror"id��
{ �h��
| �h�@@�@@@�@@@@@��
� �PP@�@���Р3add_to_progress_map��
� ����
� ���@��@��@����%float��
� ����
� ���@@�@@@����%float��
� ����
� ���@@�@@@�@@@��@������1Storage_interface$Task"id��
� ����
� ���@@�@@@������1Storage_interface$Task"id��
� ����
� ��@@�@@@�@@@��
� ���@@@@@��
� ���@�@���Р8remove_from_progress_map��
� ��
� �*@��@������1Storage_interface$Task"id��
� �-/�
� �-H@@�@@@������1Storage_interface$Task"id��
� �-L�
� �-e@@�@@@�@@@@@��
� �@�@���Р.events_from_sm��
� �gk�
� �gy@��@����$unit��
� �g|�
� �g�@@�@@@����$unit�� �g�� �g�@@�@@@�@@@@@�� �gg@�@���Р+task_cancel�� ���� ���@���)__context�����'Context!t��# ����$ ���@@�@@@���$self�����#API(ref_task��2 ����3 ���@@�@@@����$bool��; ����< ���@@�@@@��? ���@@@��A ���@@@@@��C ���@�	@@