Caml1999N025����            :ocaml/xapi/xapi_gpumon.mli����  _  �  �  U�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����Р3with_gpumon_stopped��:ocaml/xapi/xapi_gpumon.mliOHL�OH_@���'timeout����%float��OHk�OHp@@�@@@��@��@����$unit��OHu�OHy@@�@@@��!a��!OH}�"OH@@@�
@@@��!a��(OH��)OH�@@@��+OHt@@@��-OHb@@@@���)ocaml.docÐ������	� Stop gpumon if it's running, perform f, then start gpumon if
  * no other threads which require gpumon to be stopped are running. @��;P���<Q�@@@@@�@��>OHH@�@���Р4update_vgpu_metadata��GS�HS)@���)__context�����'Context!t��US6�VS?@@�@@@���"vm�����#API&ref_VM��dSF�eSP@@�@@@����$unit��mST�nSX@@�@@@��qSC@@@��sS,@@@@���F�������	g [update_vgpu_metadata] updates the vGPU compatibility metadata of
 * all vGPUs associated with [vm].  @���TYY��U��@@@@@@���S@�@���Р3clear_vgpu_metadata���W����W��@���)__context�����'Context!t���W����W��@@�@@@���"vm�����#API&ref_VM���W����W�@@�@@@����$unit���W�	��W�@@�@@@���W��@@@���W��@@@@����M�������	_ [clear_vgpu_metadata] removes the compatibility metadata from all
 * VMs associated with [vm] @���X��YTr@@@@@X@���W��@�@�����&Nvidia���[t{��[t�@�����Р#key���\����\��@����&string���\����\��@@�@@@@����{�������	) The key used in the metadata assoc-list @���]����]��@@@@@�@���\��@�@���Р?get_pgpu_compatibility_metadata���_��� _��@���#dbg����&string��`���`�@@�@@@���0pgpu_pci_address����&string��`��`�@@�@@@����$list��!`�4�"`�8@��������&string��-`�#�.`�)@@�@@@�����&string��7`�,�8`�2@@�@@@@�@@@@��<`�"@@@��>`�@@@��@`��@@@@���Ր������
   Fetch metadata about the PGPU from the driver, and return
   *  [(key, metadata)] where key is a fixed value and metadata
   *  is the base64 encoded opaque string of data from the graphics driver.
   *  IMPORTANT: This must be called on the host that has the GPU installed in it. @��Ma9;�NdZ@@@@@�@��P_��/@�0@���Р)is_nvidia��Yf\b�Zf\k@���)__context�����'Context!t��ggn|�hgn�@@�@@@���$vgpu�����#API(ref_VGPU��vgn��wgn�@@�@@���K�������1 valid reference @���gn���gn�@@@@@@����$bool���gn���gn�@@�@@@���gn�@@@���gnr@@@@���f(�������	2 [is_nvidia] is true, if [vgpu] is an NVIDIA vGPU @���h����h��@@@@@3@���f\^@�@���Р?get_vgpu_compatibility_metadata���j����j�@���)__context�����'Context!t���k.��k7@@�@@@���"vm�����#API&ref_VM���l8B��l8L@@�@@@���$vgpu�����#API(ref_VGPU���mMY��mMe@@�@@����o�������; must refer to NVIDIA vGPU @���mMf��mM�@@@@@z@����$list���n����n��@��������&string���n����n��@@�@@@�����&string��n���n��@@�@@@@�@@@@��
n��@@@��mMT@@@��l8?@@@��k$!@@@@������������
  B Obtain opaque compatibility metadata for a vGPU and return
   *  [(key, metadata)] association list. The metadata is a base-64
   *  encoded blob that gets passed to functions checking compatibility;
   *  the key is fixed to [key]. This function must be called on the
   *  host where the vGPU is assigned to a pGPU.
   @��o���t��@@@@@�@�� j��1@�2@���Р8vgpu_pgpu_are_compatible��)v���*v�	@���)__context�����'Context!t��7w		�8w		(@@�@@@���$vgpu�����#API(ref_VGPU��Fw		1�Gw		=@@�@@@���$pgpu�����#API(ref_PGPU��Uw		F�Vw		R@@�@@@����$bool��^w		V�_w		Z@@�@@@��bw		A@@@��dw		,@@@��fw		@@@@���9��������	� Predicate [vgpu_pgpu_are_compatible] checks that vGPU and pGPU are
   * comatible according to their abstract compatibility metadata. This
   * code can run on any host. If no vGPU or pGPU metadata is
   * available, compatibility is assumed.
   @��sx	[	]�t|
T
Y@@@@@@��vv��@�@���Р	!assert_pgpu_is_compatible_with_vm��~
[
a��~
[
�@���)__context�����'Context!t���
�
���
�
�@@�@@@���"vm�����#API&ref_VM��� @
�
��� @
�
�@@�@@@���$vgpu�����#API(ref_VGPU��� A
�
��� A
�
�@@�@@@���)dest_host�����#API(ref_host��� B
�
��� B
�
�@@�@@@���5encoded_pgpu_metadata����&string��� C
�	�� C
�@@�@@@����$unit��� D�� D@@�@@@��� C
�
�@@@��� B
�
�@@@��� A
�
�@@@��� @
�
�
@@@���
�
�@@@@����q�������
  d Check compatibility between a VM's vGPU(s) and another pGPU,
   *  and fail if they are not compatible. This function is assumed
   *  to run on the host where the VM is running. 
   *  The pgpu metadata is expected to be the encoded dump obtained
   *  from the Xapi database.
   *  The destination host is needed for the metadata of some of the errors. @��� E�� J8�@@@@@|@���~
[
]@�@@���[t��� K��@@@���[tt@�@@