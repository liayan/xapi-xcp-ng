Caml1999M025����            ;ocaml/xapi/monitor_types.ml����    {    ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	Y Some records for easy passing around of monitor types.
 * @group Performance Monitoring
@��;ocaml/xapi/monitor_types.mlNGG�P��@@@@@����A�    �#pif��R���R��@@@��Р(pif_name��S���S��@@����&string��S���S��@@�@@@��T��@@�Р+pif_carrier��%T���&T��@@����$bool��-T���.T��@@�@@@��1U��@@�Р)pif_speed��7U���8U��@@����#int��?U���@U��@@�@@@��CV��@@�Р*pif_duplex��IV���JV� @@�����1Network_interface&duplex��SV��TV�@@�@@@��WW@@�Р0pif_pci_bus_path��]W�^W/@@����&string��eW1�fW7@@�@@@��iX8;@@�Р-pif_vendor_id��oX8<�pX8I@@����&string��wX8K�xX8Q@@�@@@��{YRU@@�Р-pif_device_id���YRV��YRc@@����&string���YRe��YRk@@�@@@�@@@A@@���R����Zlm@@�@���@�����4vif_device_of_string���\os��\o�@�@@@��@@���!x���\o���\o�@�@@@����@��������"ty���^����^��@�@@@����&params���^����^��@�@@@@�@@@��������'Astring&String$span���^����^��@�@@@���#max���!3@���^����^��@@@��@����!x���^����^��@�@@@@�@@@@���^��@@��@��������%domid���_����_��@�@@@����%devid�� _���_��@�@@@@�@@@�������%Scanf&sscanf��_���_��@�@@@��@����&params��_���_��@�@@@��@���%%d.%d@��#_���$_��@@@��@��@@���!x��._���/_� @�@@@��@@���!y��8_��9_�@�@@@�������!x��D_��E_�@�@@@�����!y��N_�
�O_�@�@@@@��R_��S_�@��@@@�A@@��X_���Y_�@���\_��
@@@@�P@@@@��__��@@������"ty��h`�i`@�@@@�����#vif@��r`#�s`(@@@@����$Some��z`,�{`0@��������%domid���`2��`7@�@@@�����%devid���`9��`>@�@@@@���`1��`?@��@@@�@@@���@���`B��`C@@@@����$None���`G��`K@@�@@@@���`@@@�L@@@��@@@���@���aLS��aLT@@@@����$None���aLX��aL\@@�@@@@���]��@@@�A@@@���\oo@@�@���@�����.find_rrd_files���c^b��c^p@�@@@��@@����"()���c^q��c^s@@�@@@������"|>���c^���c^�@�@@@��@�������#Sys'readdir���c^v��c^�@�@@@��@�����*Xapi_globs,metrics_root���c^���c^�@�@@@@�@@@��@�����%Array'to_list��c^��c^�@�@@@@�@@@�:A@@@��c^^@@�@���@�����9datasources_from_filename��e���e��@�@@@��@@���(filename��'e���(e��@�@@@��@�����$path��3f���4f��@�@@@�������(Filename&concat��@f���Af��@�@@@��@�����*Xapi_globs,metrics_root��Mf���Nf�	@�@@@��@����(filename��Xf�
�Yf�@�@@@@�@@@@��]f��@@��@�����&reader��gg�hg"@�@@@�������/Rrd_file_reader&create��tg%�ug;@�@@@��@����$path��g<��g@@�@@@��@�����/Rrd_protocol_v2(protocol���gA��gY@�@@@@�@@@@���g@@��@�����'payload���h]c��h]j@�@@@��������&reader���h]m��h]s@�@@@���2Rrd_reader_functor,read_payload���h]t��h]�@�@@@��@�������h]���h]�@@�@@@@�@@@@���h]_@@������'payload���i����i��@�@@@���,Rrd_protocol+datasources���i����i��@�@@@�@@@�F@@@�{@@@��A@@@���e��@@�	@@