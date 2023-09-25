Caml1999N025����            5ocaml/xapi/pciops.mli����  E  F  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	X Module that handles assigning PCI devices to VMs.
 * @group Virtual-Machine Management
@��5ocaml/xapi/pciops.mliNGG�P��@@@@@����Р-pcidev_of_pci��
R���R��@���)__context�����'Context!t��R���R��@@�@@@��@�����#API'ref_PCI��%R���&R��@@�@@@�������#int��1R���2R��@@�@@@�����#int��;R���<R��@@�@@@�����#int��ER���FR��@@�@@@�����#int��OR���PR��@@�@@@@�"@@@�/@@@��UR��@@@@���)ocaml.doc󐠠����	- Return the PCI DBDF string for a PCI object @��cS���dS�(@@@@@�@��fR��@�@���Р,sort_pcidevs��oU*.�pU*:@��@����$list��yU*G�zU*K@������!a���U*>��U*@@@@���!b���U*C��U*E@@@@�
@@@@���U*=@@@����$list���U*^��U*b@������!a���U*P��U*R@@@�����$list���U*X��U*\@���!b���U*U��U*W@@@@�	@@@@�
@@@@���U*O@@@�( @@@@���`R�������	( Return a list of PCIdevs in plug order @���Vcc��Vc�@@@@@]@���U**0@�1@���Р3other_pcidevs_of_vm���X����X��@���)__context�����'Context!t���Y����Y��@@�@@@��@����$list���Z����Z��@��������&string���Z����Z��@@�@@@�����&string���Z����Z��@@�@@@@�@@@@��Z��@@@����$list��	[��
[�
@��������#int��[���[��@@�@@@��������#int��"[���#[��@@�@@@�����#int��,[���-[��@@�@@@�����#int��6[���7[��@@�@@@�����#int��@[� �A[�@@�@@@@�"@@@@�0�E[�@@@@��G[��>@@@�G?@@@��JY��A@@@@����琠�����	M Return the PCI devices that are specified in the VM.other_config:pci field. @��W\�X\]@@@@@�@��ZX��Q@�R@���Р)to_string��c^_c�d^_l@��@�������#int��p^_o�q^_r@@�@@@��������#int��}^_v�~^_y@@�@@@�����#int���^_|��^_@@�@@@�����#int���^_���^_�@@�@@@�����#int���^_���^_�@@�@@@@�"@@@@�0��^_�@@@����&string���^_���^_�@@�@@@�;@@@@���UG�������	> Return the PCI device as a string, suitable for other_config @���_����_��@@@@@R@���^__@�@���Р)of_string���a����a��@��@����&string���a����a��@@�@@@�������#int���a����a��@@�@@@��������#int���a����a� @@�@@@�����#int���a���a�@@�@@@�����#int���a�	��a�@@�@@@�����#int��a��a�@@�@@@@�"@@@@�0�	a�@@@�>@@@@������������	" Return the PCI device as a tuple @��b�b;@@@@@�@��a��@�@���Р-is_bdf_format��#d=A�$d=N@��@����&string��-d=Q�.d=W@@�@@@����$bool��6d=[�7d=_@@�@@@�@@@@����֐������	K True if the string matches BDF format, e.g. c002:8c:b3.a (all digits hex) @��Fe``�Ge`�@@@@@�@��Id==@�@���Р-is_pci_hidden��Rg���Sg��@���)__context�����'Context!t��`g���ag��@@�@@@��@�����#Ref!t��mg���ng��@�������#PCI��xg���yg��@A@�@@@@@��|g���}g��@@@@�@@@����$bool���g����g��@@�@@@�@@@���g��@@@@���5'�������	I Check whether a PCI device will be hidden from the dom0 kernel on boot. @���h����h�@@@@@@2@���g��@�@���Р(hide_pci���jBF��jBN@���)__context�����'Context!t���jB[��jBd@@�@@@��@�����#Ref!t���jBo��jBt@�������#PCI���jBi��jBm@A@�@@@@@���jBh��jBn@@@@�@@@����$unit���jBx��jB|@@�@@@�@@@���jBQ@@@@����x�������	I Hide a PCI device from the dom0 kernel. (Takes affect after next boot.) @���k}}��k}�@@@@@�@���jBB@�@���Р*unhide_pci���m����m��@���)__context�����'Context!t��m���m��@@�@@@��@�����#Ref!t��m���m�@�������#PCI��m���m��@A@�@@@@@��m���m��@@@@�@@@����$unit��'m��(m�	@@�@@@�@@@��,m��@@@@����ɐ������	K Unhide a PCI device from the dom0 kernel. (Takes affect after next boot.) @��9n

�:n
Z@@@@@�@��<m��@�@���Р%id_of��Ep\`�Fp\e@��@�������#int��Rp\h�Sp\k@@�@@@��������#int��_p\o�`p\r@@�@@@�����#int��ip\u�jp\x@@�@@@�����#int��sp\{�tp\~@@�@@@�����#int��}p\��~p\�@@�@@@@�"@@@@�0��p\�@@@����#int���p\���p\�@@�@@@�;@@@@���7)�������? Return the id of a PCI device @���q����q��@@@@@4@���p\\@�@���Р)domain_of���s����s��@��@�������#int���s����s��@@�@@@��������#int���s����s��@@�@@@�����#int���s����s��@@�@@@�����#int���s����s��@@�@@@�����#int���s����s��@@�@@@@�"@@@@�0��s��@@@����#int���s����s��@@�@@@�;@@@@������������	# Return the domain of a PCI device @���t����t�@@@@@�@���s��@�@���Р&bus_of��v�v@��@�������#int��v�v"@@�@@@��������#int��v&� v)@@�@@@�����#int��)v,�*v/@@�@@@�����#int��3v2�4v5@@�@@@�����#int��=v8�>v;@@�@@@@�"@@@@�0�Bv<@@@����#int��Iv@�JvC@@�@@@�;@@@@����鐠�����	  Return the bus of a PCI device @��YwDD�ZwDi@@@@@�@��\v@�@���Р&dev_of��eyko�fyku@��@�������#int��rykx�syk{@@�@@@��������#int��yk��yk�@@�@@@�����#int���yk���yk�@@�@@@�����#int���yk���yk�@@�@@@�����#int���yk���yk�@@�@@@@�"@@@@�0��yk�@@@����#int���yk���yk�@@�@@@�;@@@@���WI�������	# Return the device of a PCI device @���z����z��@@@@@T@���ykk@�@���Р%fn_of���|����|��@��@�������#int���|����|��@@�@@@��������#int���|����|��@@�@@@�����#int���|����|��@@�@@@�����#int���|����|��@@�@@@�����#int���|����|��@@�@@@@�"@@@@�0�|��@@@����#int��	|���
|��@@�@@@�;@@@@������������	% Return the function of a PCI device @��}���}�	"@@@@@�@��|��@�@���Р=reserve_free_virtual_function��%	$	(�&	$	E@���)__context�����'Context!t��3 @	H	T�4 @	H	]@@�@@@��@�����#Ref!t��@ @	H	g�A @	H	l@�������"VM��K @	H	b�L @	H	e@A@�@@@@@��O @	H	a�P @	H	f@@@@�@@@��@�����#Ref!t��\ @	H	w�] @	H	|@�������#PCI��g @	H	q�h @	H	u@A@�@@@@@��k @	H	p�l @	H	v@@@@�@@@����&option��t @	H	��u @	H	�@������#Ref!t�� @	H	��� @	H	�@�������#PCI��� @	H	��� @	H	�@A@�@@@@@��� @	H	��� @	H	�@@@@�@@@@�@@@�(@@@�E@@@��� @	H	J!@@@@���@2�������	A Find a free virtual function given a physical function (SR-IOV) @��� A	�	��� A	�	�@@@@@=@���	$	$1@�2@@