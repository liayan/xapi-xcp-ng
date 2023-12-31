Caml1999N025����            ;ocaml/database/redo_log.mli����  72  �  $  !Z�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	� Keep track of changes to the database by writing deltas to a block device. Communicates with another process which does the block device I/O. @��;ocaml/database/redo_log.mliNGG�NG�@@@@@��������������1 {2 VDI related} @��P���P��@@@@@����Р1get_static_device��R���R�
@��@����&string��$R��%R�@@�@@@����&option��-R��.R�$@�����&string��6R��7R�@@�@@@@�@@@�@@@@���)ocaml.docؐ������	4 Finds an attached metadata VDI with a given reason @��HS%%�IS%^@@@@@�@��KR��@�@���Р0minimum_vdi_size��TU`d�UU`t@����%int64��\U`w�]U`|@@�@@@@���$��������? Minimum size for redo log VDI @��kV}}�lV}�@@@@@@��nU``@�@���Р2redo_log_sm_config��wX���xX��@����$list��X����X��@��������&string���X����X��@@�@@@�����&string���X����X��@@�@@@@�@@@@���X��@@@@���`7�������< SM config for redo log VDI @���Y����Y��@@@@@B@���X��+@�,@���A�    �(redo_log���\��\@@@��Р$name���]$(��]$,@@����&string���]$.��]$4@@�@@@���^58@@�Р&marker���^59��^5?@@����&string���^5A��^5G@@�@@@���_HK@@�Р)read_only���_HL��_HU@@����$bool���_HW��_H[@@�@@@���`\_@@�Р'enabled���`\`��`\g@@����#ref���`\n��`\q@�����$bool��`\i�`\m@@�@@@@�@@@��aru@@�Р&device��arv�ar|@@����#ref��ar��ar�@�����&option��ar�� ar�@�����&string��(ar~�)ar�@@�@@@@�@@@@�@@@� �.b��@@�Р4currently_accessible��4b���5b��@@����#ref��<b���=b��@�����$bool��Eb���Fb��@@�@@@@�@@@��Jc��@@�Р5state_change_callback��Pc���Qc��@@����&option��Xc���Yc��@���@����$bool��cc���dc��@@�@@@����$unit��lc���mc��@@�@@@�@@@@��qc��@@@�#�sd��@@�Р4time_of_last_failure��yd���zd��@@����#ref���d���d�@�����%float���d����d�@@�@@@@�@@@���e@@�Р-backoff_delay���e��e@@����#ref���e��e"@�����#int���e��e@@�@@@@�@@@���f#&@@�Р$sock���f#'��f#+@@����#ref���f#D��f#G@�����&option���f#=��f#C@������$Unix*file_descr���f#-��f#<@@�@@@@�@@@@�@@@�"��gHK@@�Р#pid���gHL��gHO@@����#ref���gH~��gH�@�����&option���gHw��gH}@���������+Forkhelpers%pidty���gHR��gHc@@�@@@�����&string��gHf�gHl@@�@@@�����&string��gHo�gHu@@�@@@@�@@@@��gHQ'@@@@�1@@@�;�h��@@�Р5dying_processes_mutex��h���h��@@�����%Mutex!t��$h���%h��@@�@@@��(i��@@�Р3num_dying_processes��.i���/i��@@����#ref��6i���7i��@�����#int��?i���@i��@@�@@@@�@@@�@@@A@���	��������6 {redo_log data type} @��P[���Q[�@@@@@�@��S\�Tj��@@�@�����e��������	$ {2 Enabling and disabling writing} @��dl���el��@@@@@����Р*is_enabled��mn���nn�@��@����(redo_log��wn��xn�@@�@@@����$bool���n���n�@@�@@@�@@@@���I �������	C Returns [true] iff writing deltas to the block device is enabled. @���o��o^@@@@@+@���n��@�@���Р&enable���q`d��q`j@��@����(redo_log���q`m��q`u@@�@@@��@����&string���q`y��q`@@�@@@����$unit���q`���q`�@@�@@@�@@@�@@@@����[�������	� Enables writing deltas to the block device. Subsequent modifications to the database will be persisted to the block device. Takes a static-VDI reason as argument to select the device to use. @���r����r�M@@@@@f@���q``@�@���Р,enable_block���tOS��tO_@��@����(redo_log���tOb��tOj@@�@@@��@����&string���tOn��tOt@@�@@@����$unit���tOx��tO|@@�@@@�@@@�@@@@������������	� Enables writing deltas to the block device. Subsequent modifications to the database will be persisted to the block device. Takes a path as argument to select the device to use. @��u}}�u}5@@@@@�@��	tOO@�@���Р'disable��w7;�w7B@��@����(redo_log��w7E�w7M@@�@@@����$unit��%w7Q�&w7U@@�@@@�@@@@����Ő������	� Disables writing deltas to the block device. Subsequent modifications to the database will not be persisted to the block device. @��5xVV�6xV�@@@@@�@��8w77@�@�����Iؐ������	# Communication with other threads. @��Hz���Iz�	@@@@@����Р/redo_log_events��Q|			�R|			@�����%Event'channel��[|			/�\|			<@��������&string��g|			 �h|			&@@�@@@�����$bool��q|			)�r|			-@@�@@@@�@@@@��v|			@@@@@��x|				@�@�������������> {2 Lifecycle of I/O process} @���~	>	>��~	>	a@@@@@#���Р'startup��� @	c	g�� @	c	n@��@����(redo_log��� @	c	q�� @	c	y@@�@@@����$unit��� @	c	}�� @	c	�@@�@@@�@@@@���mD�������	A Start the I/O process. Will do nothing if it's already started. @��� A	�	��� A	�	�@@@@@O@��� @	c	c@�@���Р(shutdown��� C	�	��� C	�	�@��@����(redo_log��� C	�	��� C	�	�@@�@@@����$unit��� C	�	��� C	�	�@@�@@@�@@@@@��� C	�	�@�@���Р&switch��� E	�	��� E	�	�@��@����(redo_log��� E	�	��� E	�
 @@�@@@��@����&string��� E	�
�� E	�

@@�@@@����$unit��� E	�
�  E	�
@@�@@@�@@@�@@@@������������	D Stop the I/O process. Will do nothing if it's not already started. @�� F

� F

\@@@@@�@�� E	�	�@�@�����$��������	T Start using the VDI with the given reason as redo-log, discarding the current one. @��# H
^
^�$ H
^
�@@@@@����Р&create��, J
�
��- J
�
�@���$name����&string��8 K
�
��9 K
�
�@@�@@@���5state_change_callback����&option��E L
��F L
�@���@����$bool��P L
�
��Q L
�
�@@�@@@����$unit��Y L
�
��Z L
�
�@@�@@@�@@@@��^ L
�
�@@@���)read_only����$bool��i M�j M@@�@@@����(redo_log��r N!�s N)@@�@@@��v M@@@��x L
�
�@@@��z K
�
�@@@@���@�������	0 {Keeping track of existing redo_log instances} @��� O**�� O*_@@@@@"@��� J
�
�@�@���Р&delete��� S���� S��@��@����(redo_log��� S���� S��@@�@@@����$unit��� S���� S��@@�@@@�@@@@@��� S��@�@���Р5with_active_redo_logs��� W���� W�@��@��@����(redo_log��� W��� W�@@�@@@����$unit��� W�"�� W�&@@�@@@�@@@����$unit��� W�+�� W�/@@�@@@��� W�@@@@����t�������	% {Finding active redo_log instances} @��� X00�� X0Z@@@@@@��� W��@�@��������������	' {2 Interacting with the block device} @��� \���� \��@@@@@����A�    �!t�� _� _@@@��Р)CreateRow��	 `!�
 `*@������&string�� `.� `4@@�@@@�����&string�� `7� `=@@�@@@�����$list��' `R�( `V@��������&string��3 `A�4 `G@@�@@@�����&string��= `J�> `P@@�@@@@�@@@@��B `@@@@@@��D `@���
ᐠ�����	� [CreateRow (tblname, newobjref, [(k1,v1); ...])]
      represents the creation of a row in table [tblname], with key [newobjref], and columns [[k1; ...]] having values [[v1; ...]]. @��Q aW]�R b�@@@@@�@�Р)DeleteRow��X c�Y c&@������&string��b c*�c c0@@�@@@�����&string��l c3�m c9@@�@@@@@��p c@���6�������	l [DeleteRow (tblname, objref)]
      represents the deletion of a row in table [tblname] with key [objref]. @��} d:@�~ eb�@@@@@@�Р*WriteField��� f���� f��@������&string��� f���� f��@@�@@@�����&string��� f���� f��@@�@@@�����&string��� f���� f��@@�@@@�����&string��� f���� f��@@�@@@@@��� f��@���vM�������	� [WriteField (tblname, objref, fldname, newval)]
      represents the write to the field with name [fldname] of a row in table [tblname] with key [objref], overwriting its value with [newval]. @��� g���� h �@@@@@X@@A@����[�������	H The type of a delta, describing an incremental change to the database. @��� ^���� ^�@@@@@f@��� _"@@�#@���Р(write_db��� j���� j��@��@�����*Generation!t��� j���� j��@@�@@@��@��@�����$Unix*file_descr��� j���� j��@@�@@@����$unit��� j���� j��@@�@@@�@@@��@����(redo_log�� j��� j��@@�@@@����$unit�� j��� j� @@�@@@�@@@�� j��@@@�4@@@@������������
  E Write a database.
    This function is best-effort only and does not raise any exceptions in the case of error.
    [write_db gen_count f] is used to write a database with generation count [gen_count] to the block device.
    A file descriptor is passed to [f] which is expected to write the contents of the database to it. @��# k�$ n�K@@@@@�@��& j��@�@���Р+write_delta��/ pMQ�0 pM\@��@�����*Generation!t��; pM_�< pMk@@�@@@��@����!t��F pMo�G pMp@@�@@@��@��@����$unit��S pMu�T pMy@@�@@@����$unit��\ pM}�] pM�@@�@@@�@@@��@����(redo_log��h pM��i pM�@@�@@@����$unit��q pM��r pM�@@�@@@�@@@��v pMt@@@�2@@@�>@@@@���>�������
  � Write a database delta.
    This function is best-effort only and does not raise any exceptions in the case of error.
    [write_delta gen_count delta db_flush_fn] writes a delta [delta] with generation count [gen_count] to the block device.
    If the redo log wishes to flush the database before writing the delta, it will invoke [db_flush_fn]. It is expected that this function implicitly attempts to reconnect to the block device I/O process if not already connected. @��� q���� t�u@@@@@ @��� pMM@�@���Р%apply��� vw{�� vw�@��@��@�����*Generation!t��� w���� w��@@�@@@��@�����$Unix*file_descr��� w���� w��@@�@@@��@����#int��� w���� w��@@�@@@��@����%float��� w���� w��@@�@@@����$unit��� w���� w��@@�@@@�@@@�@@@�%@@@�3@@@��@��@�����*Generation!t��� x���� x��@@�@@@��@����!t��� x���� x��@@�@@@����$unit��� x���� x��@@�@@@�@@@�@@@��@����(redo_log��� y���  y��@@�@@@����$unit�� z���	 z��@@�@@@�@@@�� x��@@@�� w��@@@@������������
   Read from the block device.
    This function is best-effort only and does not raise any exceptions in the case of error.
    [apply db_fn delta_fn] will cause [db_fn] and [delta_fn] to be invoked for each database or database delta which is read.
    The block device will consist of a sequence of zero or more databases and database deltas.
    For each database, [db_fn] is invoked with the database's generation count, a file descriptor from which to read the database's contents, the length of the database in bytes and the latest response time. The [db_fn] function may raise {!Unixext.Timeout} if the transfer is not complete by the latest response time.
    For each database delta, [delta_fn] is invoked with the delta's generation count and the value of the delta. @�� {��� ��@@@@@�@�� vww@�@���Р%empty��( �
�) �
@��@����(redo_log��2 �
�3 �
@@�@@@����$unit��; �
"�< �
&@@�@@@�@@@@���ې������	� Invalidate the block device. This means that subsequent attempts to read from the block device will not find anything.
    This function is best-effort only and does not raise any exceptions in the case of error. @��K �''�L ��@@@@@�@��N �

@�@���Р4flush_db_to_redo_log��W ��X �@��@������.Db_cache_types(Database!t��e ��f �8@@�@@@��@����(redo_log��p �<�q �D@@�@@@����$bool��y �H�z �L@@�@@@�@@@�@@@@���C�������	E Immediately write the given database to the given redo_log instance @��� �MM�� �M�@@@@@%@��� �@�@���Р	 flush_db_to_all_active_redo_logs��� ����� ���@��@������.Db_cache_types(Database!t��� ����� ���@@�@@@����$unit��� ����� ���@@�@@@�@@@@���vM�������	> Immediately write the given database to all active redo logs @��� ����� ��%@@@@@X@��� ���@�@���Р1database_callback��� �'+�� �'<@��@�����.Db_cache_types&update��� �?A�� �?V@@�@@@��@������.Db_cache_types(Database!t��� �?Z�� �?s@@�@@@����$unit��� �?w�� �?{@@�@@@�@@@�@@@@������������	9 Given a database update, add it to all active redo logs @��� �||�� �|�@@@@@�@�� �''@�@@