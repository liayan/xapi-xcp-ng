Caml1999N025����   "      
   	 ocaml/xapi/xapi_cluster_host.mli����  �  �  c  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	L Functions for implementing the Cluster_host objects.
    @group Clustering @��	 ocaml/xapi/xapi_cluster_host.mliO>>�Pw�@@@@@��������������? {2 Internal helper functions} @��S���S�@@@@@����Р5fix_pif_prerequisites��U�U!@���)__context�����'Context!t��(U.�)U7@@�@@@��@�����#API'ref_PIF��5U;�6UF@@�@@@����$unit��>UJ�?UN@@�@@@�@@@��CU$@@@@@��EU@�@���Р-sync_required��N\fj�O\fw@���)__context�����'Context!t��\]z��]]z�@@�@@@���$host�����#API(ref_host��k]z��l]z�@@�@@@����&option��t]z��u]z�@������#API+ref_Cluster��]z���]z�@@�@@@@�@@@���]z�@@@���]z|@@@@���)ocaml.doc$�������
  r [sync_required ~__context ~host] returns an option type indicating whether
    any action is required to sync the cluster. This will only be the case if
    the cluster object has [pool_auto_join] set and no corresponding
    Cluster_host object exists for the host. If one does not exist, the call
    will return the reference to the Cluster object wrapped in 'Some' @���^����b�6@@@@@/@���\ff#@�$@���Р3create_as_necessary���d8<��d8O@���)__context�����'Context!t���d8\��d8e@@�@@@���$host�����#API(ref_host���d8n��d8z@@�@@@����$unit���d8~��d8�@@�@@@���d8i@@@���d8R@@@@���Fi�������	� [create_as_necessary ~__context ~host] calls [sync_required], and if any
    Cluster_host objects are required it will create them in the database @���e����f�@@@@@t@���d88@�@������|�������8 {2 External API calls} @���ioo��io�@@@@@����Р&create���k����k��@���)__context�����'Context!t��l���l��@@�@@@���'cluster�����#API+ref_Cluster��m���m��@@�@@@���$host�����#API(ref_host��!n���"n��@@�@@@���#pif�����#API'ref_PIF��0o���1o��@@�@@@�����#API0ref_Cluster_host��;p��<p�@@�@@@��?o��@@@��An��@@@��Cm��@@@��El��
@@@@����␠�����
  2 [create ~__context ~cluster ~host] is implementation of the XenAPI call
    'Cluster_host.create'. It is the Cluster_host object constructor, and creates
    a cluster_host in the DB before calling [resync_host ~__context ~host], which
    either joins the host to the cluster or enables the cluster host @��Rq�St		N@@@@@�@��Uk��@�@���Р-force_destroy��^v	P	T�_v	P	a@���)__context�����'Context!t��lv	P	n�mv	P	w@@�@@@���$self�����#API0ref_Cluster_host��{v	P	��|v	P	�@@�@@@����$unit���v	P	���v	P	�@@�@@@���v	P	{@@@���v	P	d@@@@���'�������	� [force_destroy ~__context ~self] is the implementation of the XenAPI call
    'Cluster_host.force_destroy'. It forcefully removes the DB object and
     destroys the cluster on specified host. @���w	�	���y
5
d@@@@@2@���v	P	P@�@���Р'destroy���{
f
j��{
f
q@���)__context�����'Context!t���{
f
~��{
f
�@@�@@@���$self�����#API0ref_Cluster_host���{
f
���{
f
�@@�@@@����$unit���{
f
���{
f
�@@�@@@���{
f
�@@@���{
f
t@@@@���Il�������
   [destroy ~__context ~self] is the implementation of the XenAPI call
    'Cluster_host.destroy'. It is the Cluster_host destructor
    Note that this is the only Cluster_host call that is still valid if the
    clustering daemon is disabled, all others require it enabled @���|
�
����@@@@@w@���{
f
f@�@���Р&enable��� A���� A��@���)__context�����'Context!t��� A���� A��@@�@@@���$self�����#API0ref_Cluster_host�� A��� A�@@�@@@����$unit�� A�� A�	@@�@@@�� A��@@@�� A��@@@@������������
  / [enable ~__context ~self] is the implementation of the XenAPI call
    'Cluster_host.enable'. It attempts to enable clustering on the host referred
    to by the Cluster_host object. This will cause xapi to ask xapi_clusterd to
    join the cluster. It requires all other cluster members to be online. @��! B

�" E�>@@@@@�@��$ A��@�@���Р'disable��- G@D�. G@K@���)__context�����'Context!t��; G@X�< G@a@@�@@@���$self�����#API0ref_Cluster_host��J G@j�K G@~@@�@@@����$unit��S G@��T G@�@@�@@@��W G@e@@@��Y G@N@@@@������������	� [disable ~__context ~self] is the implementation of the XenAPI call
    'Cluster_host.disable'. It will call xapi-clusterd and ask it to leave the
    cluster. This requires all cluster members to be online. @��f H���g J]@@@@@@��i G@@@�@���Р2disable_clustering��r L_c�s L_u@���)__context�����'Context!t��� L_��� L_�@@�@@@����$unit��� L_��� L_�@@�@@@��� L_x@@@@���*�������	� [disable_clustering ~__context] is a wrapper for Xapi_cluster_host.disable
    which finds the local cluster_host [self], calls [disable ~__context self]
    and logs its actions. @��� M���� O2N@@@@@5@��� L__@�@���Р+resync_host��� QPT�� QP_@���)__context�����'Context!t��� QPl�� QPu@@�@@@���$host�����#API(ref_host��� QP~�� QP�@@�@@@����$unit��� QP��� QP�@@�@@@��� QPy@@@��� QPb@@@@���Lo�������
  L [resync_host ~__context ~host] checks for the existence of a cluster_host.
    If one exists but hasn't joined the cluster, xapi asks xapi-clusterd to add
    the host to the cluster, otherwise it enables the cluster host.
    If no cluster_host is found, nothing happens.
    If a failure occurs, Xapi sends an alert to XenCenter @��� R���� V��@@@@@z@��� QPP@�@���Р&forget��� X���� X��@���)__context�����'Context!t��� X���� X�@@�@@@���$self�����#API0ref_Cluster_host�� X��	 X�#@@�@@@����$unit�� X�'� X�+@@�@@@�� X�
@@@�� X��@@@@������������
  B [forget ~__context ~self] marks the cluster host as permanently removed
    from the cluster. This will only succeed if the rest of the hosts are online,
    so in the case of failure the cluster's pending_forget list will be updated.
    If you declare all your dead hosts as dead one by one the last one should succeed @��$ Y,,�% \s@@@@@�@��' X��@�@@