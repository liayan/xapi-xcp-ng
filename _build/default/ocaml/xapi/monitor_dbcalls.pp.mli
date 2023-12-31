Caml1999N025����         	   >ocaml/xapi/monitor_dbcalls.mli����  �   �  �  :�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	^ Gathering of fresh properties, and detecting property changes.
 * @group Property Monitoring
@��>ocaml/xapi/monitor_dbcalls.mliO==�Q��@@@@@��������������
  ; This module triggers updates of xapi's database according to the PIF, bond,
 * and memory information gathered on a regular interval about the VMs and the
 * host. The module uses an in-memory cache for all information gathered, only
 * triggering pushes for changes detected. If it detects a change for an
 * object, and that object is not present in the database, then the push will
 * have no effect; furthermore, the push will not be retried. One can
 * explicitly clear a part or the whole cache in order to force pushing of
 * fresh information into the database.
@��S���[��@@@@@����Р5monitor_dbcall_thread��]���]��@��@����$unit��$]� �%]�@@�@@@����$unit��-]��.]�@@�@@@�@@@@���)ocaml.docΐ������	� The function to be executed as a stand-alone thread as xapi starts. This
 * thread is responsible for continually gathering fresh properties and
 * pushing changes to xapi's database. @��>^�?`��@@@@@�@��A]��@�@@