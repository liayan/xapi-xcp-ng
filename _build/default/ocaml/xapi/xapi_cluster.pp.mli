Caml1999N025����            ;ocaml/xapi/xapi_cluster.mli����  �      ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text��������	G Functions for implementing the Cluster objects.
    @group Clustering @��;ocaml/xapi/xapi_cluster.mliO>>�Pr�@@@@@����Р&create��
U� �U�@���)__context�����'Context!t��V	�V	!@@�@@@���#pIF�����#API'ref_PIF��'W"+�(W"6@@�@@@���-cluster_stack����&string��4X7J�5X7P@@�@@@���.pool_auto_join����$bool��AYQe�BYQi@@�@@@���-token_timeout����%float��NZj}�OZj�@@�@@@���9token_timeout_coefficient����%float��[[���\[��@@�@@@�����#API+ref_Cluster��f\���g\��@@�@@@��j[��@@@��lZjo@@@��nYQV@@@��pX7<
@@@��rW"'@@@��tV	@@@@���)ocaml.doc�������8 {2 External API calls} @���T����T��@@@@@��� �������	� [create ~__context ~cluster_stack ~pool_auto_join ~token_timeout
 *   ~token_timeout_coefficient] is the implementation of the XenAPI method
 *   'Cluster.create'. It is the constructor of the Cluster object. @���]����_N�@@@@@+@���U��-@�.@���Р'destroy���a����a��@���)__context�����'Context!t���a����a��@@�@@@���$self�����#API+ref_Cluster���a����a��@@�@@@����$unit���a����a��@@�@@@���a��@@@���a��@@@@���Te�������	� [destroy ~__context ~self] is the implementation of the XenAPI method
    'Cluster.destroy'. It is the destructor of the Cluster object @���b����c"f@@@@@p@���a��@�@���Р+get_network���ehl��ehw@���)__context�����'Context!t���eh���eh�@@�@@@���$self�����#API+ref_Cluster���eh���eh�@@�@@@�����#API+ref_network��	eh��
eh�@@�@@@��eh�@@@��ehz@@@@������������	� [get_network ~__context ~self] returns the network of the master cluster host's PIF,
    as well as logging whether all the cluster hosts in the pool have
    PIFs on the same network @��f���hXw@@@@@�@��ehh@�@���Р+pool_create��(jy}�)jy�@���)__context�����'Context!t��6k���7k��@@�@@@���'network�����#API+ref_network��El���Fl��@@�@@@���-cluster_stack����&string��Rm���Sm��@@�@@@���-token_timeout����%float��_n���`n��@@�@@@���9token_timeout_coefficient����%float��lo��mo�@@�@@@�����#API+ref_Cluster��wp�xp-@@�@@@��{o��@@@��}n��@@@��m��@@@���l��
@@@���k��@@@@��� �������
  . [pool_create ~__context ~network ~cluster_stack ~token_timeout
    ~token_timeout_coefficient] is the implementation of the XenAPI
    method 'Cluster.pool_create'. This is a convenience function
    that creates the Cluster object and then creates Cluster_host objects for
    all hosts in the pool. @���q..��uDa@@@@@+@���jyy@�@���Р2pool_force_destroy���wcg��wcy@���)__context�����'Context!t���wc���wc�@@�@@@���$self�����#API+ref_Cluster���wc���wc�@@�@@@����$unit���wc���wc�@@�@@@���wc�@@@���wc|@@@@���Te�������
   [pool_force_destroy ~__context ~self] is the implementation of the XenAPI
    method 'Cluster.pool_force_destroy'. This is a convenience function that
    first attempts to destroy the Cluster_host objects for all hosts in the pool.
    Any surviving cluster_hosts are force destroyed, any remaining after that are
    forgotten, and any cluster_hosts for which forget fails will be deleted. After
    this, the cluster is destroyed, unless there are still cluster_hosts remaining,
    in which case the call raises an API error. @���x����~
�
�@@@@@p@���wcc@�@���Р,pool_destroy��� @
�
��� @
�
�@���)__context�����'Context!t��� @
�
��� @
�
�@@�@@@���$self�����#API+ref_Cluster��� @
�
��� @
�@@�@@@����$unit�� @
�� @
�@@�@@@�� @
�
�@@@�� @
�
�@@@@������������	� [pool_destroy ~__context ~self] is the implementation of the XenAPI
    method 'Cluster.pool_destroy'. This is a convenience function that destroys
    the Cluster_host objects for all hosts in the pool and then destroys the
    Cluster object. @�� A� D�@@@@@�@�� @
�
�@�@���Р+pool_resync��& F�' F@���)__context�����'Context!t��4 F*�5 F3@@�@@@���$self�����#API+ref_Cluster��C F<�D FK@@�@@@����$unit��L FO�M FS@@�@@@��P F7@@@��R F @@@@���������
  � [pool_resync ~__context ~self] is the implementation of the XenAPI method
    'Cluster.pool_resync'. The purpose of this function is to help after the
    failure to create Cluster_host objects. It should create all necessary
    Cluster_host objects (ie., one for each host in the pool if the Cluster
    has [pool_auto_join] set. If there is a failure, this function must return
    an error that enables the administrator to fix the problem. @��_ GTT�` L�@@@@@�@��b F@�@@