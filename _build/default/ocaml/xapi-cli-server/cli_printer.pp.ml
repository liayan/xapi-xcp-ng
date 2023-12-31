Caml1999M025����   &         	$ocaml/xapi-cli-server/cli_printer.ml����  5k  )  -	  ,N�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	(
 * @group Command-Line Interface (CLI)
@��	$ocaml/xapi-cli-server/cli_printer.mlNGG�Prt@@@@@���������(Cli_util��Rv{�Rv�@�@@A��Rvv@@�@��������,Cli_protocol��S���S��@�@@A��!S��@@�@���A�    �&record��+U���,U��@@@@A�����$list��4U���5U��@��������&string��@U���AU��@@�@@@�����&string��JU���KU��@@�@@@@�@@@@��OU��@@@@��QU��@@�@���A�    �(printval��[W���\W��@@@��Р$PMsg��cX���dX��@������&string��mX���nX��@@�@@@@@��qX��@@�Р&PTable��wY���xY��@������$list���Y����Y��@�����&record���Y����Y��@@�@@@@�@@@@@���Y��@@�Р%PList���Z����Z�@������$list���Z���Z�@�����&string���Z���Z�@@�@@@@�@@@@@���Z��@@�Р'PStderr���[��[@������&string���["��[(@@�@@@@@���[@@@A@@���W��@@�@���A�    �(print_fn���]*/��]*7@@@@A���@����(printval���]*:��]*B@@�@@@����$unit���]*F��]*J@@�@@@�@@@@���]**@@�@���@�����*pad_string���_LP��_LZ@�@@@��@@���!s���_L[��_L\@�@@@��@@���#len��_L]�_L`@�@@@��@�����!n��`ci�`cj@�@@@������!-��`cq�`cr@�@@@��@����#len��(`cm�)`cp@�@@@��@�������&String&length��7`cs�8`c�@�@@@��@����!s��B`c��C`c�@�@@@@�@@@@�@@@@��H`ce@@������!^��Qa���Ra��@�@@@��@�������&String$make��`a���aa��@�@@@��@��������!>��oa���pa��@�@@@��@����!n��za���{a��@�@@@��@���!0@���a����a��@@@@�@@@����!n���a����a��@�@@@����!0@���a����a��@@@���a����a��@����a��@@@��@���`���a����a��@@@@�G@@@��@����!s���a����a��@�@@@@�S@@@�l@@@��A@@��A@@@���_LL@@�	@���@�����'pad_rhs���c����c��@�@@@��@@���!s���c����c��@�@@@��@@���#len���c����c��@�@@@��@�����!n���d����d��@�@@@������Ѱ��d����d��@�@@@��@����#len���d����d��@�@@@��@�������&String&length��d���d��@�@@@��@����!s��d���d��@�@@@@�@@@@�@@@@��d��@@������!^��!e���"e��@�@@@��@����!s��,e���-e��@�@@@��@�������&String$make��;e���<e��@�@@@��@��������۰�Ie��Je�@�@@@��@����!n��Te��Ue�@�@@@��@���!0@��^e��_e�@@@@�@@@����!n��ge��he�@�@@@����!0@��pe��qe�@@@��se���te�@���we� @@@��@���`��~e��e�@@@@�F@@@@�V@@@�k@@@��A@@��A@@@���c��@@�	@���A�����1multi_line_record���g%��g6@�@@@��@@���!r���g7��g8@�@@@��@�����&maxlen���h;A��h;G@�@@@������!+���iJP��iJQ@�@@@��@���!4@���iJN��iJO@@@��@�������$List)fold_left���iJR��iJ`@�@@@��@����#max���iJa��iJd@�@@@��@���!0@���iJe��iJf@@@��@�������$List#map���iJh��iJp@�@@@��@��@@������!a���iJw��iJx@�@@@����!b��iJz�iJ{@�@@@@��
iJv�iJ|@��@@@�������&String&length��iJ��iJ�@�@@@��@����!a��#iJ��$iJ�@�@@@@�@@@��(iJq�)iJ�@���,iJr	@@@��@����!r��5iJ��6iJ�@�@@@@��9iJg�:iJ�@��O@@@@�s@@@@��@@@@��@h;=@@��@�����&indent��Jk���Kk��@�@@@��@@���"fs��Tk���Uk��@�@@@�������$List#map��ak���bk��@�@@@��@��@@������!f��pk���qk��@�@@@����!v��yk���zk��@�@@@@��}k���~k��@��@@@���������*pad_string���k����k��@�@@@��@����!f���k����k��@�@@@��@����&maxlen���k����k��@�@@@@�@@@�����!v���k����k��@�@@@@���k����k��@��)@@@���k����k��@����k��	@@@��@����"fs���k����k��@�@@@@�f@@@�tA@@@���k��@@��@�����!r���l����l��@�@@@������!r���m����m��@�@@@������"::���m���m�@����������!k���m����m� @�@@@����!v�� m��m�@�@@@@��m���m�@��@@@����"fs��m��m�
@�@@@@�A@@�@@@@����"::��m�$�m�&@�������������'pad_rhs��*m��+m�@�@@@��@����!k��5m��6m�@�@@@��@����&maxlen��@m��Am�@�@@@@�@@@�����!v��Km�!�Lm�"@�@@@@��Om��Pm�#@��)@@@�������&indent��\m�'�]m�-@�@@@��@����"fs��gm�.�hm�0@�@@@@�@@@@�A@@�@@@���@��qm�3�rm�4@@@@����!r��ym�8�zm�9@�@@@@��}m��@@@@��l��@@������!^���o?~��o?@�@@@��@�������&String&concat���o?A��o?N@�@@@��@���!
@���o?O��o?S@@@��@�������$List#map���o?U��o?]@�@@@��@��@@������!f���o?d��o?e@�@@@����!v���o?g��o?h@�@@@@���o?c��o?i@��@@@������!^���o?o��o?p@�@@@��@����!f���o?m��o?n@�@@@��@������!^���o?v��o?w@�@@@��@���": @���o?q��o?u@@@��@����!v��o?x�o?y@�@@@@�@@@@�&@@@��	o?^�
o?z@���o?_
@@@��@����!r��o?{�o?|@�@@@@��o?T�o?}@��o@@@@��@@@��@���!
@��&o?��'o?�@@@@��@@@��@@@�b@@@��@@@��A@@@��.g@@�	@���@�����-escape_commas��:r���;r��@�@@@��@@���!x��Dr���Er��@�@@@��@�����%rules��Pt���Qt��@�@@@����"::��Yt���Zt�*A����������l��ft���gt��@@@����"\,@��nt���ot��@@@@��qt��@��@@@�����"��zt�!A���������� \���t���t�@@@����"\\@���t���t�@@@@���t�@��@@@�����"[]���t�)BA@�CA@@@�$DA@@�%EA@@@�GFA@@���t��H@@@@���t��J@@���������&Stdext*Xstringext&String'escaped���u.0��u.P@�@@@���%rules�������u.R��u.W@�@@@��@����!x���u.X��u.Y@�@@@@�@@@�+@@@��A@@@���r��@@�@���@�����,make_printer���w[_��w[k@�@@@��@@���$sock���w[l��w[p@�@@@��@@���'minimal���w[q��w[x@�@@@��@�����&buffer���x{���x{�@�@@@������#ref��x{��x{�@�@@@��@����"[]��x{��x{�@@�@@@@�@@@@��x{}@@��@�����7multi_line_xapi_minimal��!y���"y��@�@@@��@@���$pval��+y���,y��@�@@@������$pval��6z���7z��@�@@@������&PTable��A{���B{��@����"rs��I{���J{��@�@@@�@@@@��������"&&��W|���X|� @�@@@��@���������c|���d|��@�@@@��@�������$List&length��r|���s|��@�@@@��@����"rs��}|���~|��@�@@@@�@@@��@���!0@���|����|��@@@@�@@@��@������&���|���|�@�@@@��@�������$List&length���|���|�@�@@@��@�������$List"hd���|���|�@�@@@��@����"rs���|���|�@�@@@@���|���|�@��@@@@�#@@@��@���!0@���|���|�@@@@�-@@@@�_@@@��@�����%names���}#1��}#6@�@@@�������$List#map���}#9��}#A@�@@@��@��@@���!r���}#G��}#H@�@@@������#snd���}#L��}#O@�@@@��@�������$List"hd��}#Q�}#X@�@@@��@����!r��}#Y�}#Z@�@@@@��}#P�}#[@��@@@@�#@@@��"}#B�#}#\@���&}#C
@@@��@����"rs��/}#]�0}#_@�@@@@�L@@@@��4}#-@@��@�����-escaped_names��>~cq�?~c~@�@@@�������$List#map��K~c��L~c�@�@@@��@����-escape_commas��V~c��W~c�@�@@@��@����%names��a~c��b~c�@�@@@@�@@@@��f~cm@@������":=��o���p��@�@@@��@����&buffer��z���{��@�@@@��@����l���������@�����������&String&concat���������@�@@@��@���!,@���������@@@��@����-escaped_names���������@�@@@@�@@@�������!!���������@�@@@��@����&buffer�
����@�@@@@�@@@@�0A@@�1@@@@�L@@@�a@@@��@@@@���|��
@@@������%PList��� @���� @��@����"ss��� @���� @��@�@@@�@@@@��@�����*escaped_ss��� A���� A�@�@@@�������$List#map��� A��� A�@�@@@��@����-escape_commas��� A��  A�!@�@@@��@����"ss��
 A�"� A�$@�@@@@�@@@@�� A��@@��������� B(7� B(9@�@@@��@����&buffer��" B(0�# B(6@�@@@��@������, B(W�- B(Y@�����������&String&concat��< B(:�= B(G@�@@@��@���!,@��F B(H�G B(K@@@��@����*escaped_ss��P B(L�Q B(V@�@@@@�@@@����������\ B(Z�] B([@�@@@��@����&buffer�
�g B(a@�@@@@�@@@@�/A@@�0@@@@�K@@@�_@@@���@��r Cbh�s Cbi@@@@����"()��z Dmu�{ Dmw@@�@@@@��~z��@@@�UA@@@���y��@@��@�����/multi_line_xapi��� F}��� F}�@�@@@��@@���$pval��� F}��� F}�@�@@@������$pval��� G���� G��@�@@@������&PTable��� H���� H��@����"rs��� H���� H��@�@@@�@@@@�������$List$iter��� I���� I��@�@@@��@��@@���!l��� J���� J��@�@@@������'marshal��� J���� J��@�@@@��@����$sock��� J���� J��@�@@@��@����'Command��� J���� J��@�����%Print��� J���� J�	@�������!^��	 J�	�	 J�	@�@@@��@����!l��	 J�	�	 J�	@�@@@��@���!
@��	 J�		�	 J�	@@@@��	 J�	�	 J�	@��@@@��	 J���	  J�	@��,@@@��	$ J���	% J�	@��:@@@@�Q@@@��	* J���	+ J�	@���	. J��
@@@��@�������$List#map��	; K		�	< K		%@�@@@��@����1multi_line_record��	F K		&�	G K		7@�@@@��@����"rs��	Q K		8�	R K		:@�@@@@��	U K		�	V K		;@��@@@@��@@@������%PList��	b L	<	B�	c L	<	G@����"ss��	j L	<	H�	k L	<	J@�@@@�@@@@�������$List$iter��	x M	N	V�	y M	N	_@�@@@��@��@@���!l��	� M	N	e�	� M	N	f@�@@@������'marshal��	� M	N	j�	� M	N	q@�@@@��@����$sock��	� M	N	r�	� M	N	v@�@@@��@����'Command��	� M	N	x�	� M	N	@�����%Print��	� M	N	��	� M	N	�@�����!l��	� M	N	��	� M	N	�@�@@@��	� M	N	��	� M	N	�@��@@@��	� M	N	w�	� M	N	�@��@@@@�6@@@��	� M	N	`�	� M	N	�@���	� M	N	a
@@@��@����"ss��	� M	N	��	� M	N	�@�@@@@�_@@@������$PMsg��	� N	�	��	� N	�	�@����"ss��	� N	�	��	� N	�	�@�@@@�@@@@������'marshal��	� O	�	��	� O	�	�@�@@@��@����$sock��	� O	�	��	� O	�	�@�@@@��@����'Command��
	 O	�	��

 O	�	�@�����%Print��
 O	�	��
 O	�	�@�����"ss��
 O	�	��
 O	�	�@�@@@��
 O	�	��
  O	�	�@��@@@��
$ O	�	��
% O	�	�@��@@@@�6@@@������'PStderr��
1 P	�	��
2 P	�	�@����"ss��
9 P	�	��
: P	�	�@�@@@�@@@@������'marshal��
E Q	�	��
F Q	�	�@�@@@��@����$sock��
P Q	�	��
Q Q	�	�@�@@@��@����'Command��
[ Q	�	��
\ Q	�	�@�����+PrintStderr��
d Q	�	��
e Q	�
@�������!^��
o Q	�
�
p Q	�
@�@@@��@����"ss��
z Q	�

�
{ Q	�
@�@@@��@���!
@��
� Q	�
�
� Q	�
@@@@��
� Q	�
	�
� Q	�
@��@@@��
� Q	�	��
� Q	�
@��,@@@��
� Q	�	��
� Q	�
@��:@@@@�Q@@@@��
� G��@@@�A@@@��
� F}	@@��@�����-minimal_flush��
� S

"�
� S

/@�@@@��@@����5��
� S

0�
� S

2@@�@@@������'marshal��
� T
5
9�
� T
5
@@�@@@��@����$sock��
� T
5
A�
� T
5
E@�@@@��@����'Command��
� T
5
G�
� T
5
N@�����%Print��
� T
5
P�
� T
5
U@��������&String&concat��
� T
5
W�
� T
5
d@�@@@��@���!,@��
� T
5
e�
� T
5
h@@@��@������F��
� T
5
i�
� T
5
j@�@@@��@����&buffer�
� T
5
p@�@@@@�@@@@��	 T
5
V�
 T
5
q@��(@@@�� T
5
O� T
5
r@��:@@@�� T
5
F� T
5
s@��H@@@@�_@@@�kA@@@�� S

@@��@�����%flush��$ V
y
�% V
y
�@�@@@��@@�������. V
y
��/ V
y
�@@�@@@�������6 V
y
��7 V
y
�@@�@@@�A@@@��; V
y
{@@������'minimal��D W
�
��E W
�
�@�@@@�������7multi_line_xapi_minimal��P X
�
��Q X
�
�@�@@@�����-minimal_flush��Z X
�
��[ X
�
�@�@@@@��^ X
�
��_ X
�
�@��@@@��������/multi_line_xapi��l Z
�
��m Z
�
�@�@@@�����%flush��v Z
�
��w Z
�
�@�@@@@��z Z
�
��{ Z
�
�@��@@@�� W
�
�@@@�F@@@�h@@@��@@@�	@@@�n
@@@��A@@��A@@@���w[[@@�@@