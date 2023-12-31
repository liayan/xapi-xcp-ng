Caml1999N025����   #      
   	!ocaml/xapi/network_event_loop.mli����  
P  8  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������
  � This module implements an event loop that watches network objects, and
    updates the firewall rules for the NBD port in case of relevant
    changes by calling a dedicated script. The items in the "purpose"
    field of the network objects specify whether encrypted ("nbd" purpose)
    or unencrypted ("nbd_insecure" purpose) access to the NBD server is
    allowed on those networks.
    After each event on a network object in the database, we decide on
    which interfaces the NBD port should be enabled on this host. If this
    set of interfaces did not change, that is, last time we've updated the
    firewall with the same set of interfaces, then we do not call the script
    again. We wait for 5 seconds after each event has been processed, to
    rate-limit the event loop and its database queries.
    In case of failures other than EVENTS_LOST, we wait for an additional 5
    seconds and then reregister and continue the event loop. In case of
    EVENTS_LOST, we reregister and continue without waiting.
@��	!ocaml/xapi/network_event_loop.mliOCC�^EG@@@@@����Р>watch_networks_for_nbd_changes��
`IM�`Ik@��@����$unit��`In�`Ir@@�@@@����$unit��`Iv�`Iz@@�@@@�@@@@@��"`II@�@���Р?_watch_networks_for_nbd_changes��+b|��,b|�@��@�����'Context!t��7c���8c��@@�@@@���/update_firewall��@����$list��Fd���Gd��@�����&string��Od���Pd��@@�@@@@�@@@����$unit��Yd���Zd��@@�@@@�@@@���8wait_after_event_seconds����%float��ge���he��@@�@@@���:wait_after_failure_seconds����%float��tf  �uf %@@�@@@����$unit��}g&+�~g&/@@�@@@���f @@@���e��@@@���d��@@@�P	@@@@���)ocaml.doc$�������
    This version of {!watch_networks_for_nbd_changes} is for unit testing
    purposes - it calls the [update_firewall] function, instead of invoking a
    script, and how many seconds it waits after failures is specified by
    [wait_after_failure_seconds]. @���h00��k5@@@@@/@���b||@�@@