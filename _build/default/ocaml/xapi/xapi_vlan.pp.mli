Caml1999N025����            8ocaml/xapi/xapi_vlan.mli����  �  N  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	B Module that defines API functions for VLANs
 * @group Networking
@��8ocaml/xapi/xapi_vlan.mliNGG�P��@@@@@��������������
  �
   Xapi also supports 802.1Q VLANs, which are used to separate network traffic by inserting a {i tag} in each packet, thereby creating multiple virtual networks. A tag is simply a number.
   {ul
   {- A VLAN has a {i VLAN} object in the datamodel, which is associated with a {i slave} PIF and a {i master} PIF.}
   {- The VLAN slave, or tagged PIF, is used as the base of the VLAN. It can be any existing PIF (including bond masters).}
   {- The VLAN master, or untagged PIF, is a higher-level PIF (comparable to a bond master) that is configured with a VLAN tag. Any traffic sent to the VLAN master (via its network) will be tagged.}
   {- Both the VLAN slave as well as the master may be used directly. The "pluggedness" of the master and slave is independent: the master may be plugged while the slave is not and vice versa, and both may be plugged or unplugged at the same time.}
   {- Multiple VLANs in a pool may share the same tag.}
   }
   Note: Plugging a VLAN master PIF on top of a VLAN slave that is unplugged, does not set [currently_attached] to [true], while the underlying network device and bridge of the slave {i is} brought up. In this case, [currently_attached] therefore does not always reflect the actual state of the network interface. Unplugging a VLAN slave that is up, while its master is also up, actually leaves the slave's bridge up. Should this be made more aligned/consistent?
@��R���\@@@@@����Р.pool_introduce��^�^*@���)__context�����'Context!t��(_-<�)_-E@@�@@@���*tagged_PIF�����#Ref!t��7`F]�8`Fb@�������#PIF��B`FW�C`F[@A@�@@@@@��F`FV�G`F\@@@@�@@@���,untagged_PIF�����#Ref!t��Uac|�Vac�@�������#PIF��`acv�aacz@A@�@@@@@��dacu�eac{@@@@�@@@���#tag����%int64��qb���rb��@@�@@@���,other_config����$list��~c���c��@��������&string���c����c��@@�@@@�����&string���c����c��@@�@@@@�@@@@���c��@@@�����#Ref!t���d����d��@�������$VLAN���d����d��@A@�@@@@@���d����d��@@@@�@@@���c��@@@���b��@@@���ach@@@���`FK@@@���_-2@@@@���)ocaml.doc[�������	d Pool_introduce is an internal call used by pool-join to copy management vlan record to pool master @���e����e�	6@@@@@f@���^,@�-@���Р&create���g	8	<��g	8	B@���)__context�����'Context!t���h	E	T��h	E	]@@�@@@���*tagged_PIF�����#Ref!t���i	^	u��i	^	z@�������#PIF���i	^	o� i	^	s@A@�@@@@@��i	^	n�i	^	t@@@@�@@@���#tag����%int64��j	{	��j	{	�@@�@@@���'network�����#Ref!t��k	�	�� k	�	�@�������'network��*k	�	��+k	�	�@A@�@@@@@��.k	�	��/k	�	�@@@@�@@@�����#Ref!t��9l	�	��:l	�	�@�������$VLAN��Dl	�	��El	�	�@A@�@@@@@��Hl	�	��Il	�	�@@@@�@@@��Lk	�	�@@@��Nj	{	�@@@��Pi	^	c@@@��Rh	E	J@@@@���������	� Create a VLAN with the given [tag] using the [tagged_PIF] as VLAN slave.
 *  Creates a new PIF object as VLAN master (untagged PIF) and connects it to the
 *  given [network]. No other PIFs on the same host may be connected to this network. @��_m	�	��`o
Z
�@@@@@�@��bg	8	8)@�*@���Р/create_internal��kq
�
��lq
�
�@���)__context�����'Context!t��yr
�
��zr
�
�@@�@@@���$host�����#Ref!t���s
�
���s
�
�@�������$host���s
�
���s
�
�@A@�@@@@@���s
�
���s
�
�@@@@�@@@���*tagged_PIF�����#Ref!t���t
���t
�@�������#PIF���t
���t
�@A@�@@@@@���t
���t
�@@@@�@@@���#tag����%int64���u!��u&@@�@@@���'network�����#Ref!t���v'?��v'D@�������'network���v'5��v'=@A@�@@@@@���v'4��v'>@@@@�@@@���&device����&string���wEQ��wEW@@�@@@��������#Ref!t���xXe��xXj@�������$VLAN��xX^�xXc@A@�@@@@@��
xX]�xXd@@@@�@@@������#Ref!t��xXt�xXy@�������#PIF��!xXn�"xXr@A@�@@@@@��%xXm�&xXs@@@@�@@@@�@@@��*wEJ@@@��,v',@@@��.u@@@��0t
� @@@��2s
�
�@@@��4r
�
�@@@@���wѐ������	8 Internal version of [create] without checks/exceptions @��Ayzz�Byz�@@@@@�@��Dq
�
�.@�/@���Р'destroy��M{���N{��@���)__context�����'Context!t��[{���\{��@@�@@@���$self�����#Ref!t��j{���k{��@�������$VLAN��u{���v{��@A@�@@@@@��y{���z{��@@@@�@@@����$unit���{����{��@@�@@@���{��@@@���{��@@@@����%�������	I Destroy a VLAN. Removes the VLAN object as well as the VLAN master PIF. @���|����|�G@@@@@0@���{��@�@���Р(vlan_mac���~IM��~IU@����&string���~IX��~I^@@�@@@@@���~II@�@@