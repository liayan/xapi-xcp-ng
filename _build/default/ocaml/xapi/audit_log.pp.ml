Caml1999M025����            7ocaml/xapi/audit_log.ml����  @�  �  4o  37�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������!D��7ocaml/xapi/audit_log.mlNGN�NGO@�������%Debug$Make��NGR�NG\@�@@�����@�����$name��NGi�NGm@�@@@���)audit_log@��$NGp�%NG{@@@@��'NGe@@�@@��*NG^�+NG@@� �-NG�@@@��/NGG@�@��������!D��;P���<P��@�@@A��?P��@@�@��������&Stdext��KQ���LQ��@�@@A��OQ��@@�@��������$Http��[R���\R��@�@@A��_R��@@�@��������*Xstringext��kS���lS��@�@@A��oS��@@�@��������,Pervasiveext��{T���|T��@�@@A��T��@@�@���@�����:audit_log_whitelist_prefix���V����V��@�@@@���2/var/log/audit.log@���V����V��@@@@���V��@@�@���@�����5line_timestamp_length���X����X�@�@@@���"21@���X���X�@@@@���X��@@�@���@�����/timestamp_index���[����[��@�@@@��@@���$line���[����[��@�@@@��������!+���[����[��@�@@@��@�������&String%index���[����[��@�@@@��@����$line���[����[��@�@@@��@��� [���[����[��@@@@�@@@��@���!1@���[����[��@@@@�!@@@������)Not_found��[���	[��@@�@@@@���!0@��[���[��@@@@��[��@@@�RA@@@��[��@@�@���@�����,went_through��"]���#]��@�@@@�đ&filter@�����-]���.]��@�@@@��@@���$line��7]���8]��@�@@@������&filter��B^���C^��@�@@@������$None��M_�N_@@�@@@@����$true��V`�W`@@�@@@������$Some��aa�ba"@����"fs��ia#�ja%@�@@@�@@@@�������$List)fold_left��wb)/�xb)=@�@@@��@��@@���#acc���b)C��b)F@�@@@��@@���!f���b)G��b)H@�@@@������"&&���b)P��b)R@�@@@��@����#acc���b)L��b)O@�@@@��@�������&String*has_substr���b)S��b)d@�@@@��@����$line���b)e��b)i@�@@@��@����!f���b)j��b)k@�@@@@�@@@@�*@@@�AA@@���b)>��b)l@����b)?@@@��@��������b)m��b)q@@�@@@��@����"fs���b)r��b)t@�@@@@�s@@@@���^��@@@��A@@���]��A@@@���]��
@@�@���@�����*write_line���dvz��dv�@�@@@��@@���$line��dv��dv�@�@@@��@@���"fd��dv��dv�@�@@@�đ&filter@�����dv��dv�@�@@@��@@���%since��%dv��&dv�@�@@@��������!>��2e���3e��@�@@@��@�������&String&length��Ae���Be��@�@@@��@����$line��Le���Me��@�@@@@�@@@��@���������Ye���Ze��@�@@@��@����5line_timestamp_length��de���ee��@�@@@��@������/timestamp_index��qe���re��@�@@@��@����$line��|e���}e��@�@@@@�@@@@�@@@@�A@@@��@�����.line_timestamp���f����f��@�@@@�������&String#sub���g��g@�@@@��@����$line���g��g@�@@@��@������/timestamp_index���g��g(@�@@@��@����$line���g)��g-@�@@@@���g��g.@��@@@��@����5line_timestamp_length���g/��gD@�@@@@�7@@@@���f��@@��������"||���iL^��iL`@�@@@��@������!=���iLY��iLZ@�@@@��@����%since���iLS��iLX@�@@@��@��� @���iL[��iL]@@@@�@@@��@������">=��
iL��iL�@�@@@��@�������&String'compare��iLa�iLo@�@@@��@����.line_timestamp��$iLp�%iL~@�@@@��@����%since��/iL�0iL�@�@@@@�@@@��@���!0@��:iL��;iL�@@@@�$@@@@�K@@@��������,went_through��Hj���Ij��@�@@@���&filter������Tj���Uj��@�@@@��@����$line��_j���`j��@�@@@@�@@@��@�����#len��lk���mk��@�@@@�������&String&length��yk���zk��@�@@@��@����$line���k����k��@�@@@@�@@@@���k��@@������"|>���l�
��l�@�@@@��@�������$Unix/write_substring���l����l��@�@@@��@����"fd���l����l��@�@@@��@����$line���l����l�@�@@@��@���!0@���l���l�@@@��@����#len���l���l�	@�@@@@�.@@@��@����&ignore���l���l�@�@@@@�:@@@�S@@@@���j��@@@@���iLP@@@�	@@@@���e��@@@��A@@���dv�A@@��A@@��A@@@���dvv@@�@���@�����3transfer_audit_file���n��n,@�@@@��@@���%_path���n-� n2@�@@@��@@���+compression��	n3�
n>@�@@@��@@���&fd_out��n?�nE@�@@@�đ&filter@�����nG�nM@�@@@��@@���%since��(nN�)nS@�@@@�  ��@�����$path��6o]c�7o]g@�@@@�������'Unixext6resolve_dot_and_dotdot��Co]j�Do]�@�@@@��@����%_path��No]��Oo]�@�@@@@�@@@@��So]_@@��@�����,in_whitelist��]p���^p��@�@@@�������&String*startswith��jp���kp��@�@@@��@����:audit_log_whitelist_prefix��up���vp��@�@@@��@����$path���p����p��@�@@@@�@@@@���p��@@������,in_whitelist���q����q��@�@@@��@�����+file_exists���r����r�@�@@@�������'Unixext+file_exists���r�	��r�@�@@@��@����$path���r���r�!@�@@@@�@@@@���r��@@������+file_exists���s%,��s%7@�@@@�  ������%debug���t?E��t?J@�@@@��@���	5transfer_audit_file path=%s,compression=[%s],since=%s@���t?K��t?�@@@��@����$path���t?���t?�@�@@@��@����+compression���u����u��@�@@@��@����%since���u����u��@�@@@@�.@@@������������w���w��@�@@@��@����+compression��w���w��@�@@@��@��� @��w���w��@@@@�@@@�������'Unixext-readfile_line��(x���)x�@�@@@��@��@@���$line��4y�5y@�@@@������*write_line��?y�@y%@�@@@��@������!^��Ly,�My-@�@@@��@����$line��Wy'�Xy+@�@@@��@���!
@��ay.�by2@@@@��dy&�ey3@��@@@��@����&fd_out��py4�qy:@�@@@���&filter������|y<�}yB@�@@@��@����%since���yC��yH@�@@@@�L@@@���y��yI@����y	@@@��@����$path���zJV��zJZ@�@@@@�u@@@�������������{[w��{[x@�@@@��@����+compression���{[k��{[v@�@@@��@���"gz@���{[y��{[}@@@@�@@@�������'Unixext)with_file���|����|��@�@@@��@����$path���|����|��@�@@@��@����"::���|����|��A���������$Unix(O_RDONLY���|��@@�@@@�����"[]�	A@�
A@@@�A@@���|��@@@��@���#0o0@��|���|��@@@��@��@@���(gz_fd_in��|���|��@�@@@�������$Gzip2decompress_passive��}���}��@�@@@��@����(gz_fd_in��$}���%}��@�@@@��@��@@���%fd_in��0}���1}�	@�@@@��@�����#cin��<	;	Q�=	;	T@�@@@�������$Unix3in_channel_of_descr��I	;	W�J	;	o@�@@@��@����%fd_in��T	;	p�U	;	u@�@@@@�@@@@��Y	;	M@@���  ������c A	�	��d A	�	�@@�@@@��@�����$line��o B	�	��p B	�	�@�@@@������*input_line��z B	�	��{ B	�	�@�@@@��@����#cin��� B	�	��� B	�	�@�@@@@�@@@@��� B	�	�@@������*write_line��� C	�	��� C	�
@�@@@��@������!^��� C	�
�� C	�
@�@@@��@����$line��� C	�
�� C	�

@�@@@��@���!
@��� C	�
�� C	�
@@@@��� C	�
�� C	�
@��@@@��@����&fd_out��� C	�
�� C	�
@�@@@���&filter������� C	�
�� C	�
!@�@@@��@����%since��� C	�
"�� C	�
'@�@@@@�L@@@�V@@@��� A	�	��� D
(
@@@@������+End_of_file��� E
A
X�� E
A
c@@�@@@@����"()��� E
A
g�� E
A
i@@�@@@@��� @	y	�@@@��@@@���}���� G
�
�@����}��@@@@��@@@��|��� H
�
�@���|��@@@@�?@@@�������%debug�� J
�
�� J
�
�@�@@@��@���	2unknown compression format %s in audit log file %s@�� J
�
�� J
�,@@@��@����+compression��% J
�-�& J
�8@�@@@��@����$path��0 K9E�1 K9I@�@@@@�#@@@��5{[h@@@��7w��@@@�����!e��? LJU�@ LJV@�@@@@�  ������%debug��L MZb�M MZg@�@@@��@���	#error reading audit log file %s: %s@��V MZh�W MZ�@@@��@����$path��` MZ��a MZ�@�@@@��@�������)ExnHelper-string_of_exn��o N���p N��@�@@@��@����!e��z N���{ N��@�@@@@��~ N��� N��@��@@@@�7@@@������%raise��� O���� O��@�@@@��@����!e��� O���� O��@�@@@@�@@@�O@@@@���v��@@@���s%=�� P��@���@@@@���s%)@@@��@@@@���q��@@@�#	@@@�V
@@@����$unit���nV��nZ@@�@@@���nTA@@��A@@���nFA@@��A@@��A@@��A@@@���n@@�@���@�����8transfer_all_audit_files��� R���� R��@�@@@��@@���&fd_out��� R���� R��@�@@@�đ&filter@������ R���� R��@�@@@��@@���%since��� R���� R�@�@@@��@�����)atransfer��� S�� S@�@@@��@@���&_infix��� S�� S@�@@@��@@���'_suffix�� S� S$@�@@@��@�����%infix�� T'/� T'4@�@@@��������7�� T'A� T'B@�@@@��@����&_infix��) T':�* T'@@�@@@��@��� @��3 T'C�4 T'E@@@@�@@@��� @��; T'K�< T'M@@@�������!^��F T'W�G T'X@�@@@��@���!.@��P T'S�Q T'V@@@��@����&_infix��Z T'Y�[ T'_@�@@@@�@@@��_ T'7@@@@��a T'+@@��@�����&suffix��k Uck�l Ucq@�@@@�����������w Uc�x Uc�@�@@@��@����'_suffix��� Ucw�� Uc~@�@@@��@��� @��� Uc��� Uc�@@@@�@@@��� @��� Uc��� Uc�@@@�������!^��� Uc��� Uc�@�@@@��@���!.@��� Uc��� Uc�@@@��@����'_suffix��� Uc��� Uc�@�@@@@�@@@��� Uct@@@@��� Ucg@@������3transfer_audit_file��� V���� V��@�@@@��@������!^��� W���� W��@�@@@��@����:audit_log_whitelist_prefix��� W���� W��@�@@@��@������!^��� W���� W��@�@@@��@����%infix��� W���� W��@�@@@��@����&suffix��� W���� W��@�@@@@�@@@@��	 W���	 W��@��,@@@��@����'_suffix��	 X���	 X��@�@@@��@����&fd_out��	 X���	 X�@�@@@���&filter������	& X��	' X�
@�@@@��@����%since��	1 X��	2 X�@�@@@@�r@@@�|@@@��@@@�2A@@�=A@@@��	: S	@@��@�����0atransfer_try_gz��	D Z�	E Z,@�@@@��@@���%infix��	N Z-�	O Z2@�@@@�  ������*ignore_exn��	[ [59�	\ [5C@�@@@��@��@@����t��	g [5I�	h [5K@@�@@@������)atransfer��	r [5O�	s [5X@�@@@��@����%infix��	} [5Y�	~ [5^@�@@@��@���"gz@��	� [5_�	� [5c@@@@�@@@��	� [5D�	� [5d@���	� [5E@@@@�6@@@������*ignore_exn��	� ]���	� ]��@�@@@��@��@@�������	� ]���	� ]��@@�@@@������)atransfer��	� ]���	� ]��@�@@@��@����%infix��	� ]���	� ]��@�@@@��@��� @��	� ]���	� ]��@@@@�@@@��	� ]���	� ]��@���	� ]��@@@@�6@@@�u@@@��A@@@��	� Z	@@�  �  ���!i��	� a!'�	� a!(@�@@@���#100@��	� a!+�	� a!.@@@���!0@��	� a!6�	� a!7@@@A������0atransfer_try_gz��	� b;?�	� b;O@�@@@��@������-string_of_int��
 b;Q�
 b;^@�@@@��@����!i��
 b;_�
 b;`@�@@@@��
 b;P�
 b;a@��@@@@�!@@@��
 a!#�
 cbh@@@������0atransfer_try_gz��
! e���
" e��@�@@@��@��� @��
+ e���
, e��@@@@�@@@�@@@�^@@@��@@@�LA@@��
3 R��A@@�d	A@@@��
6 R��@@�@���@�����8log_timestamp_of_iso8601��
B h�
C h#@�@@@��@@���1iso8601_timestamp��
L h$�
M h5@�@@@��@�����%step1��
X i8>�
Y i8C@�@@@����1iso8601_timestamp��
a i8F�
b i8W@�@@@@��
e i8:@@��@�����%step2��
o j[a�
p j[f@�@@@��������*Xstringext&String'replace��
~ j[i�
 j[�@�@@@��@���!-@��
� j[��
� j[�@@@��@��� @��
� j[��
� j[�@@@��@����%step1��
� j[��
� j[�@�@@@@�!@@@@��
� j[]@@��@�����%step3��
� k���
� k��@�@@@��������*Xstringext&String'replace��
� k���
� k��@�@@@��@���!Z@��
� k���
� k��@@@��@��� @��
� k���
� k��@@@��@����%step2��
� k���
� k��@�@@@@�!@@@@��
� k��@@����%step3��
� l���
� l��@�@@@�@@@�G@@@��@@@��A@@@��
� h@@�	@���@�����'handler��
� {���
� {��@�@@@��@@�����#req�� {��� {��@�@@@�����'Request!t�� {��� {��@@�@@@�� {��� {��@@@��@@�����#bio�� {��� {��@�@@@�����&Buf_io!t��' {���( {��@@�@@@��+ {���, {��@@@��@@�@��1 {���2 {��@@@��@�����!s��< |���= |��@�@@@�������&Buf_io%fd_of��I |��J |�@�@@@��@����#bio��T |��U |�@�@@@@�@@@@��Y |��@@�  �������&Buf_io3assert_buffer_empty��f }�g }1@�@@@��@����#bio��q }2�r }5@�@@@@�@@@�  ������#req�� ~8:�� ~8=@�@@@���'Request%close��� ~8>�� ~8K@����
:��� ~8O�� ~8S@@�@@@�@@@�������)Xapi_http,with_context��� VX�� Vn@�@@@��@�������&Printf'sprintf��� ����� ���@�@@@��@���5audit_log_get request@��� ����� ���@@@@��� ����� ���@��@@@��@����#req��� ����� ���@�@@@��@����!s��� ����� ���@�@@@��@��@@���)__context��� ����� ���@�@@@��@�����#all��� ����� ���@�@@@������!@��� ���� ��	@�@@@��@������#req��  ���� ���@�@@@���'Request&cookie��	 ����
 ��@�@@@��@������#req�� ��
� ��@�@@@���'Request%query�� ���  ��@�@@@@�#@@@@��$ ���@@��@�����-since_iso8601��. �)�/ �6@�@@@���������$List)mem_assoc��= �9D�> �9R@�@@@��@���%since@��G �9S�H �9Z@@@��@����#all��Q �9[�R �9^@�@@@@�@@@�������$List%assoc��_ �9d�` �9n@�@@@��@���%since@��i �9o�j �9v@@@��@����#all��s �9w�t �9z@�@@@@�@@@���� @��} �9��~ �9�@@@��� �9A@@@@��� �%@@��@�����%since��� ����� ���@�@@@������8log_timestamp_of_iso8601��� ����� ���@�@@@��@����-since_iso8601��� ����� ���@�@@@@�@@@@��� ���@@�  �������(Http_svr'headers��� �06�� �0F@�@@@��@����!s��� �0G�� �0H@�@@@��@������!@��� �Ia�� �Ib@�@@@��@������+http_200_ok��� �IR�� �I]@�@@@��@������� �I^�� �I`@@�@@@@�@@@��@������� �Id�� �I�A����������!^��� �Iz�� �I{@�@@@��@������$Http#Hdr,content_type�� �Iy@�@@@��@���,: text/plain@�� �I|� �I�@@@@�)@@@�����(�.A@�	/A@@@�10A@@��  �Ic2@@@@��" �IQ�# �I�@��M7@@@@�s@@@������8transfer_all_audit_files��/ ����0 ���@�@@@��@����!s��: ����; ���@�@@@��@����%since��E ����F ���@�@@@@�@@@��@@@��@@@��@@@�)@@@��N ����O ���@���R ���@@@@��@@@��@@@��@@@��@@@�'	A@@�.
A@@�IA@@@��[ {��@@�@@