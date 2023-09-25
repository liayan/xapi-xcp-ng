(* This file contains relations between static roles and permissions *)
(* Auto-generated from the role flags in the datamodel *)

open Db_actions

let permission_description = "A basic permission"

let permission_session_get_record = 
  { (* 1/1968 *)
  role_uuid = "cb68795a-8d1c-f2bb-6869-4946fd2df840";
  role_name_label = "session.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_by_uuid = 
  { (* 2/1968 *)
  role_uuid = "1839c84a-cc70-8ca7-c500-f2d85b30aac4";
  role_name_label = "session.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_uuid = 
  { (* 3/1968 *)
  role_uuid = "eb5f0341-f8a6-e605-9433-d85031bb2770";
  role_name_label = "session.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_this_host = 
  { (* 4/1968 *)
  role_uuid = "da8ebe60-05d9-260e-84f8-b13dafaf518d";
  role_name_label = "session.get_this_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_this_user = 
  { (* 5/1968 *)
  role_uuid = "ffc2ab72-3051-2c0c-6fc2-5ccd32b6f251";
  role_name_label = "session.get_this_user";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_last_active = 
  { (* 6/1968 *)
  role_uuid = "6523834f-9b0e-f8b9-2417-43e0fc980cd1";
  role_name_label = "session.get_last_active";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_pool = 
  { (* 7/1968 *)
  role_uuid = "df2b9f34-2b7b-56b3-da9c-9bc9c0ea0597";
  role_name_label = "session.get_pool";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_other_config = 
  { (* 8/1968 *)
  role_uuid = "632bc7c1-60f2-a9ec-2db6-77992be390a1";
  role_name_label = "session.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_is_local_superuser = 
  { (* 9/1968 *)
  role_uuid = "73ef731b-d2b8-a643-f02a-276577b88b3f";
  role_name_label = "session.get_is_local_superuser";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_subject = 
  { (* 10/1968 *)
  role_uuid = "e9008880-3714-e128-fcd5-d95cb8ee790b";
  role_name_label = "session.get_subject";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_validation_time = 
  { (* 11/1968 *)
  role_uuid = "efef35a8-cf3d-5f27-e7ad-a2f6f5202dac";
  role_name_label = "session.get_validation_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_auth_user_sid = 
  { (* 12/1968 *)
  role_uuid = "52684caf-e375-6caf-3396-62bcd5134d0c";
  role_name_label = "session.get_auth_user_sid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_auth_user_name = 
  { (* 13/1968 *)
  role_uuid = "f39da662-3800-921b-a6d2-237aa094b51f";
  role_name_label = "session.get_auth_user_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_rbac_permissions = 
  { (* 14/1968 *)
  role_uuid = "9fea0775-bfb0-bfd3-ea51-8d64335d23c5";
  role_name_label = "session.get_rbac_permissions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_tasks = 
  { (* 15/1968 *)
  role_uuid = "9dd59816-dea5-9ea6-d863-53ddeae637c8";
  role_name_label = "session.get_tasks";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_parent = 
  { (* 16/1968 *)
  role_uuid = "d64eb5d6-2027-3d46-65f0-e9f0c0ea8c64";
  role_name_label = "session.get_parent";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_originator = 
  { (* 17/1968 *)
  role_uuid = "52a02358-d4aa-c111-a463-587b82de7411";
  role_name_label = "session.get_originator";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_set_other_config = 
  { (* 18/1968 *)
  role_uuid = "dec3af43-be23-aa4f-25e2-0e523ee2ddcd";
  role_name_label = "session.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_add_to_other_config = 
  { (* 19/1968 *)
  role_uuid = "bd0a7604-abf5-2651-611b-2e213fa8680a";
  role_name_label = "session.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_remove_from_other_config = 
  { (* 20/1968 *)
  role_uuid = "3fc99c9a-e53d-443c-1c33-914f3058ae34";
  role_name_label = "session.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_login_with_password = 
  { (* 21/1968 *)
  role_uuid = "9eaf06ef-8f42-4832-7099-e5a63d32a87d";
  role_name_label = "session.login_with_password";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_logout = 
  { (* 22/1968 *)
  role_uuid = "fd7dc035-3957-b7a1-f7e9-905f9f523ff4";
  role_name_label = "session.logout";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_change_password = 
  { (* 23/1968 *)
  role_uuid = "6179b0a1-0ab3-db93-1436-5544dfe8cde4";
  role_name_label = "session.change_password";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_slave_login = 
  { (* 24/1968 *)
  role_uuid = "e42fb7ad-a6e9-6bf7-03e9-5c74c1abe0ab";
  role_name_label = "session.slave_login";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_slave_local_login = 
  { (* 25/1968 *)
  role_uuid = "07fdab34-4358-9aab-d2d9-d837fdae2297";
  role_name_label = "session.slave_local_login";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_slave_local_login_with_password = 
  { (* 26/1968 *)
  role_uuid = "814f6857-4634-66f4-c2fb-9bd469e96cf1";
  role_name_label = "session.slave_local_login_with_password";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_create_from_db_file = 
  { (* 27/1968 *)
  role_uuid = "93195b71-9ee3-678d-a885-360fb5f0b92b";
  role_name_label = "session.create_from_db_file";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_local_logout = 
  { (* 28/1968 *)
  role_uuid = "690bd4e3-01f9-39df-4563-ee110eafa74c";
  role_name_label = "session.local_logout";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_get_all_subject_identifiers = 
  { (* 29/1968 *)
  role_uuid = "cb82f07a-4829-4df9-1817-2e6979df85a1";
  role_name_label = "session.get_all_subject_identifiers";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_session_logout_subject_identifier = 
  { (* 30/1968 *)
  role_uuid = "a6d1d05d-8769-4937-bbbf-13105b2fd6d7";
  role_name_label = "session.logout_subject_identifier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_auth_get_subject_identifier = 
  { (* 31/1968 *)
  role_uuid = "daa86366-a0f6-b130-2d3d-77fe1355d6a3";
  role_name_label = "auth.get_subject_identifier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_auth_get_subject_information_from_identifier = 
  { (* 32/1968 *)
  role_uuid = "91a8843e-12a6-4b4a-2d43-12db6b326490";
  role_name_label = "auth.get_subject_information_from_identifier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_auth_get_group_membership = 
  { (* 33/1968 *)
  role_uuid = "bb22da75-1be1-172d-d8fc-1a1d7c45e425";
  role_name_label = "auth.get_group_membership";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_record = 
  { (* 34/1968 *)
  role_uuid = "ff06fa4e-8ca8-799a-f189-9cce85f6de90";
  role_name_label = "subject.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_by_uuid = 
  { (* 35/1968 *)
  role_uuid = "95a849f8-0df0-feb8-7f87-4db6bf42da08";
  role_name_label = "subject.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_create = 
  { (* 36/1968 *)
  role_uuid = "59298bd9-fe55-677a-3fe1-fb38b57b4f1a";
  role_name_label = "subject.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_destroy = 
  { (* 37/1968 *)
  role_uuid = "4a59f765-d074-33f9-eb78-c3049da1f13f";
  role_name_label = "subject.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_uuid = 
  { (* 38/1968 *)
  role_uuid = "15dbefed-137f-5c07-a484-8f1ba24fb156";
  role_name_label = "subject.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_subject_identifier = 
  { (* 39/1968 *)
  role_uuid = "a3181fc3-eb26-baa4-ddf9-a6c9f2af5812";
  role_name_label = "subject.get_subject_identifier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_other_config = 
  { (* 40/1968 *)
  role_uuid = "966296b4-fccd-e24b-96e7-d849e9aeb629";
  role_name_label = "subject.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_roles = 
  { (* 41/1968 *)
  role_uuid = "e8564257-d2d5-cfdb-03cc-93d65e6fbaa3";
  role_name_label = "subject.get_roles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_add_to_roles = 
  { (* 42/1968 *)
  role_uuid = "93195d34-c76a-648b-4746-638e6b0a1bef";
  role_name_label = "subject.add_to_roles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_remove_from_roles = 
  { (* 43/1968 *)
  role_uuid = "1664fcf9-fe5c-59ba-8d04-a9e8207b32d5";
  role_name_label = "subject.remove_from_roles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_permissions_name_label = 
  { (* 44/1968 *)
  role_uuid = "cdd503ab-a2e0-2ca4-63cc-e3df44ec5b51";
  role_name_label = "subject.get_permissions_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_all = 
  { (* 45/1968 *)
  role_uuid = "bb963f3d-f70e-f9ac-7fe3-c7aac49cf13c";
  role_name_label = "subject.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_all_records_where = 
  { (* 46/1968 *)
  role_uuid = "868dae0b-7f24-6fde-fc5d-0efebefe3c16";
  role_name_label = "subject.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_subject_get_all_records = 
  { (* 47/1968 *)
  role_uuid = "7193632f-b165-b0df-6eec-2e71f08aa430";
  role_name_label = "subject.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_record = 
  { (* 48/1968 *)
  role_uuid = "38d061c2-1df2-dbbb-c049-44bc0b68eb1b";
  role_name_label = "role.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_by_uuid = 
  { (* 49/1968 *)
  role_uuid = "606450c8-c382-ccf0-2505-0ac239ad4adf";
  role_name_label = "role.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_by_name_label = 
  { (* 50/1968 *)
  role_uuid = "945bb27d-4f1f-d1ff-0e32-baa566437bb4";
  role_name_label = "role.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_uuid = 
  { (* 51/1968 *)
  role_uuid = "2c8931b8-0efd-9380-aa53-ab086ba4a2cd";
  role_name_label = "role.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_name_label = 
  { (* 52/1968 *)
  role_uuid = "0f9390a9-fd1b-1f93-d557-738545a56943";
  role_name_label = "role.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_name_description = 
  { (* 53/1968 *)
  role_uuid = "defae495-80af-75ac-d7de-a87a7dfcde9d";
  role_name_label = "role.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_subroles = 
  { (* 54/1968 *)
  role_uuid = "2e0163e9-7ec0-4088-aea5-688b3188b974";
  role_name_label = "role.get_subroles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_permissions = 
  { (* 55/1968 *)
  role_uuid = "b0104ee0-e56e-e24a-01c9-be7b31ebac3f";
  role_name_label = "role.get_permissions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_permissions_name_label = 
  { (* 56/1968 *)
  role_uuid = "daf3a43f-afdf-efaa-cb25-6ffd8ddf61e4";
  role_name_label = "role.get_permissions_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_by_permission = 
  { (* 57/1968 *)
  role_uuid = "ee19a249-eb0f-2076-81a7-8fe7cbff99b8";
  role_name_label = "role.get_by_permission";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_by_permission_name_label = 
  { (* 58/1968 *)
  role_uuid = "c43079a6-7821-364b-4269-05745d93e29a";
  role_name_label = "role.get_by_permission_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_all = 
  { (* 59/1968 *)
  role_uuid = "4a544977-600a-957b-28e2-3b578998c8f5";
  role_name_label = "role.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_all_records_where = 
  { (* 60/1968 *)
  role_uuid = "24182612-bdde-08d8-8548-7a8922b40d59";
  role_name_label = "role.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_role_get_all_records = 
  { (* 61/1968 *)
  role_uuid = "0c393fa2-41f9-c981-5581-eb3000f8316d";
  role_name_label = "role.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_record = 
  { (* 62/1968 *)
  role_uuid = "5fa8a325-b230-e422-624d-78faf5473eda";
  role_name_label = "task.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_by_uuid = 
  { (* 63/1968 *)
  role_uuid = "19a7836b-75be-43f1-9f23-856f2be12fc3";
  role_name_label = "task.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_by_name_label = 
  { (* 64/1968 *)
  role_uuid = "c4dfc733-e053-1074-1a54-5cbc33ddf686";
  role_name_label = "task.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_uuid = 
  { (* 65/1968 *)
  role_uuid = "7d443d66-a509-ddd4-daf9-8f5c4ba55b4c";
  role_name_label = "task.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_name_label = 
  { (* 66/1968 *)
  role_uuid = "6ad192de-f028-0771-7f5b-bd20a8fe4caf";
  role_name_label = "task.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_name_description = 
  { (* 67/1968 *)
  role_uuid = "1421d041-f186-04a8-be92-a1b91244eba4";
  role_name_label = "task.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_allowed_operations = 
  { (* 68/1968 *)
  role_uuid = "a66cba35-0b84-5261-664f-39c0d9ed54c4";
  role_name_label = "task.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_current_operations = 
  { (* 69/1968 *)
  role_uuid = "e2cf5c12-4316-3fde-fdee-1f962e52a24f";
  role_name_label = "task.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_created = 
  { (* 70/1968 *)
  role_uuid = "f181149a-5c39-d532-a32d-b4c0cbf30f76";
  role_name_label = "task.get_created";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_finished = 
  { (* 71/1968 *)
  role_uuid = "31b3ea7e-18fc-43fe-e8fd-2c48fc5fd38f";
  role_name_label = "task.get_finished";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_status = 
  { (* 72/1968 *)
  role_uuid = "532e25ef-d282-4334-8145-2e7b0573c7b6";
  role_name_label = "task.get_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_resident_on = 
  { (* 73/1968 *)
  role_uuid = "87e03946-2afb-f82b-7c4c-648c5f68bcb0";
  role_name_label = "task.get_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_progress = 
  { (* 74/1968 *)
  role_uuid = "a62dfce5-4367-62b4-2b47-f178439fa685";
  role_name_label = "task.get_progress";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_type = 
  { (* 75/1968 *)
  role_uuid = "5ff08560-8064-5ddb-b549-9c57ceae4cd8";
  role_name_label = "task.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_result = 
  { (* 76/1968 *)
  role_uuid = "d0c0c85c-c3e0-5012-0a48-59d9c2d517c0";
  role_name_label = "task.get_result";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_error_info = 
  { (* 77/1968 *)
  role_uuid = "b17ad6bb-dcb6-20d8-0b93-ef84167ebbc3";
  role_name_label = "task.get_error_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_other_config = 
  { (* 78/1968 *)
  role_uuid = "66fa6648-3999-7a19-20c9-a25827d96b8d";
  role_name_label = "task.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_subtask_of = 
  { (* 79/1968 *)
  role_uuid = "0b7902b4-8ad6-b117-efbb-c2c2f056e009";
  role_name_label = "task.get_subtask_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_subtasks = 
  { (* 80/1968 *)
  role_uuid = "2bf43b36-87e9-a224-4f48-9378843e4650";
  role_name_label = "task.get_subtasks";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_backtrace = 
  { (* 81/1968 *)
  role_uuid = "de422bed-c1d4-2d6c-4cb2-74bd385134ac";
  role_name_label = "task.get_backtrace";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_set_other_config = 
  { (* 82/1968 *)
  role_uuid = "060f7f2d-13cc-7c62-5475-aa3b7498d677";
  role_name_label = "task.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_add_to_other_config = 
  { (* 83/1968 *)
  role_uuid = "2269bda5-7534-f62c-3369-46c3b4e6f527";
  role_name_label = "task.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_add_to_other_config_key_applies_to = 
  { (* 84/1968 *)
  role_uuid = "761f5f58-389c-d42b-185b-27d3649589e6";
  role_name_label = "task.add_to_other_config/key:applies_to";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_add_to_other_config_key_XenCenterUUID = 
  { (* 85/1968 *)
  role_uuid = "7a7b22ac-e5d5-cea0-a320-857896f593e4";
  role_name_label = "task.add_to_other_config/key:xencenteruuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle = 
  { (* 86/1968 *)
  role_uuid = "f64ba22a-a70a-57da-34a6-adde7f50b686";
  role_name_label = "task.add_to_other_config/key:xencentermeddlingactiontitle";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_remove_from_other_config = 
  { (* 87/1968 *)
  role_uuid = "b26b0c85-5d82-e7a0-fe8e-ee26ff9670b0";
  role_name_label = "task.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_remove_from_other_config_key_applies_to = 
  { (* 88/1968 *)
  role_uuid = "182167f3-6dc0-b2c6-0ddb-2264903634cc";
  role_name_label = "task.remove_from_other_config/key:applies_to";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_remove_from_other_config_key_XenCenterUUID = 
  { (* 89/1968 *)
  role_uuid = "96052543-180c-6280-5b15-f2cc3cc4b089";
  role_name_label = "task.remove_from_other_config/key:xencenteruuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle = 
  { (* 90/1968 *)
  role_uuid = "eaf5e80c-79cc-aed7-f41c-23ea41568a39";
  role_name_label = "task.remove_from_other_config/key:xencentermeddlingactiontitle";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_create = 
  { (* 91/1968 *)
  role_uuid = "acbd6ba4-b816-8e9c-9298-cae8b10234eb";
  role_name_label = "task.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_destroy = 
  { (* 92/1968 *)
  role_uuid = "0a581d00-0a14-6c1a-eb08-aee55c2a02fc";
  role_name_label = "task.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_cancel = 
  { (* 93/1968 *)
  role_uuid = "e61fbfbb-27a5-9b4d-c763-e9222b04d2fa";
  role_name_label = "task.cancel";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_set_status = 
  { (* 94/1968 *)
  role_uuid = "68c75753-c894-ea17-4f94-eb5ebf722434";
  role_name_label = "task.set_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_set_progress = 
  { (* 95/1968 *)
  role_uuid = "45fb5b2e-baba-00e5-7c46-3fa4e9241a68";
  role_name_label = "task.set_progress";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_all = 
  { (* 96/1968 *)
  role_uuid = "7f2c447a-558b-085b-53f4-15e9bde0bbec";
  role_name_label = "task.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_all_records_where = 
  { (* 97/1968 *)
  role_uuid = "acb54550-5aba-4e19-612e-12fa420b5687";
  role_name_label = "task.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_get_all_records = 
  { (* 98/1968 *)
  role_uuid = "f2eb9161-758d-0fb1-d254-0d20c628c865";
  role_name_label = "task.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_register = 
  { (* 99/1968 *)
  role_uuid = "35b648f4-a14e-5d25-fb59-57c74efda911";
  role_name_label = "event.register";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_unregister = 
  { (* 100/1968 *)
  role_uuid = "d40676d9-ddd6-21bc-cde1-e61e9e340cbf";
  role_name_label = "event.unregister";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_next = 
  { (* 101/1968 *)
  role_uuid = "433e5373-291c-2ea1-5b7e-81157e537309";
  role_name_label = "event.next";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_from = 
  { (* 102/1968 *)
  role_uuid = "074922ac-6eb0-c3b9-795b-62ef8efa69b7";
  role_name_label = "event.from";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_get_current_id = 
  { (* 103/1968 *)
  role_uuid = "cf2ec962-5270-cf53-d7ee-c29b07d2eb67";
  role_name_label = "event.get_current_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_event_inject = 
  { (* 104/1968 *)
  role_uuid = "694efbc2-ae2c-5110-66c3-6a790f9f4179";
  role_name_label = "event.inject";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_record = 
  { (* 105/1968 *)
  role_uuid = "5b0b6fc6-b286-89fe-4915-9f8fd82ebe41";
  role_name_label = "pool.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_by_uuid = 
  { (* 106/1968 *)
  role_uuid = "e9de48a1-e723-e998-5aa2-856511ddd799";
  role_name_label = "pool.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_uuid = 
  { (* 107/1968 *)
  role_uuid = "51f79664-2471-8018-6975-c75f214995f8";
  role_name_label = "pool.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_name_label = 
  { (* 108/1968 *)
  role_uuid = "da9e6d7f-1d0a-50ef-1a87-8ace46f5be45";
  role_name_label = "pool.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_name_description = 
  { (* 109/1968 *)
  role_uuid = "39ffaa22-27dd-5241-7880-ea677905cf86";
  role_name_label = "pool.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_master = 
  { (* 110/1968 *)
  role_uuid = "552e253c-3b23-b27a-08b9-8342ba2c7aa9";
  role_name_label = "pool.get_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_default_SR = 
  { (* 111/1968 *)
  role_uuid = "6c815ba2-1dc8-c9da-9e17-61367f52328e";
  role_name_label = "pool.get_default_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_suspend_image_SR = 
  { (* 112/1968 *)
  role_uuid = "d2446ff6-79b3-58d0-1428-0dbe75485624";
  role_name_label = "pool.get_suspend_image_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_crash_dump_SR = 
  { (* 113/1968 *)
  role_uuid = "c35132f9-9d6b-4d83-8814-386c304c5b02";
  role_name_label = "pool.get_crash_dump_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_other_config = 
  { (* 114/1968 *)
  role_uuid = "8eb4a4e6-e48a-310f-6850-cdf1fe544858";
  role_name_label = "pool.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_enabled = 
  { (* 115/1968 *)
  role_uuid = "6692b21c-f620-f0e5-dbf2-dee1294645f2";
  role_name_label = "pool.get_ha_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_configuration = 
  { (* 116/1968 *)
  role_uuid = "090b0fa9-c127-16e5-4c17-4d08b4126ac3";
  role_name_label = "pool.get_ha_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_statefiles = 
  { (* 117/1968 *)
  role_uuid = "03e94bb0-c911-2f70-33f8-b41aae2c6c18";
  role_name_label = "pool.get_ha_statefiles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_host_failures_to_tolerate = 
  { (* 118/1968 *)
  role_uuid = "b63d6fef-2e86-46e2-432e-3810c30a3fa0";
  role_name_label = "pool.get_ha_host_failures_to_tolerate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_plan_exists_for = 
  { (* 119/1968 *)
  role_uuid = "fd737c61-91a8-e31f-49c9-ac46ef649b95";
  role_name_label = "pool.get_ha_plan_exists_for";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_allow_overcommit = 
  { (* 120/1968 *)
  role_uuid = "120c9250-46ec-3a62-fa14-99923beac495";
  role_name_label = "pool.get_ha_allow_overcommit";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_overcommitted = 
  { (* 121/1968 *)
  role_uuid = "398b78fb-3fe4-77aa-0c1a-9813c4f82308";
  role_name_label = "pool.get_ha_overcommitted";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_blobs = 
  { (* 122/1968 *)
  role_uuid = "76f60054-8565-3e4e-8f56-8a0d10e7b319";
  role_name_label = "pool.get_blobs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_tags = 
  { (* 123/1968 *)
  role_uuid = "2f5abed2-d4ad-5afc-9c7b-3e6a1d78ebba";
  role_name_label = "pool.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_gui_config = 
  { (* 124/1968 *)
  role_uuid = "d1068e76-7374-9cf8-7189-03e003acf7c8";
  role_name_label = "pool.get_gui_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_health_check_config = 
  { (* 125/1968 *)
  role_uuid = "1da36f64-949d-d1ef-1c22-021a1ceeff44";
  role_name_label = "pool.get_health_check_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_wlb_url = 
  { (* 126/1968 *)
  role_uuid = "c9d198f0-f2bc-2be1-3d96-298db54fc798";
  role_name_label = "pool.get_wlb_url";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_wlb_username = 
  { (* 127/1968 *)
  role_uuid = "2abfa053-fde1-2b41-3f57-42d9bf4fa586";
  role_name_label = "pool.get_wlb_username";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_wlb_enabled = 
  { (* 128/1968 *)
  role_uuid = "d7ea15b2-0664-1cd5-dc30-7c49a546ae80";
  role_name_label = "pool.get_wlb_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_wlb_verify_cert = 
  { (* 129/1968 *)
  role_uuid = "e2203194-7c7f-1b58-83b8-965b7c88898c";
  role_name_label = "pool.get_wlb_verify_cert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_redo_log_enabled = 
  { (* 130/1968 *)
  role_uuid = "fe22cf0c-dbf4-50c2-8eab-9f9ab233142f";
  role_name_label = "pool.get_redo_log_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_redo_log_vdi = 
  { (* 131/1968 *)
  role_uuid = "7c1bf39d-8af8-01b1-b4b5-bdb54d287f1a";
  role_name_label = "pool.get_redo_log_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_vswitch_controller = 
  { (* 132/1968 *)
  role_uuid = "07de6fc1-c0cd-9b21-36c3-5baccf8d66ce";
  role_name_label = "pool.get_vswitch_controller";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_restrictions = 
  { (* 133/1968 *)
  role_uuid = "91d91080-a0b6-52e1-6c47-f19344682005";
  role_name_label = "pool.get_restrictions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_metadata_VDIs = 
  { (* 134/1968 *)
  role_uuid = "e35d6b89-5c97-f156-31c9-e518d3388659";
  role_name_label = "pool.get_metadata_vdis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_ha_cluster_stack = 
  { (* 135/1968 *)
  role_uuid = "4d1fc890-364b-a5d7-90df-170e380d1c43";
  role_name_label = "pool.get_ha_cluster_stack";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_allowed_operations = 
  { (* 136/1968 *)
  role_uuid = "6c75f3fb-2386-a06f-3d1e-7ec65a067f60";
  role_name_label = "pool.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_current_operations = 
  { (* 137/1968 *)
  role_uuid = "22dc90ba-38d6-82d1-ffcb-8875f5a7e09e";
  role_name_label = "pool.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_guest_agent_config = 
  { (* 138/1968 *)
  role_uuid = "421331fa-05f5-f4d8-fd29-020b33773437";
  role_name_label = "pool.get_guest_agent_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_cpu_info = 
  { (* 139/1968 *)
  role_uuid = "141d06b6-43ae-c133-129a-5a9e35e18b67";
  role_name_label = "pool.get_cpu_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_policy_no_vendor_device = 
  { (* 140/1968 *)
  role_uuid = "ee7b9b63-be91-bb19-8ab3-303b5c340578";
  role_name_label = "pool.get_policy_no_vendor_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_live_patching_disabled = 
  { (* 141/1968 *)
  role_uuid = "740d4b3c-b2f3-25f9-9cd5-b72d84429d92";
  role_name_label = "pool.get_live_patching_disabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_igmp_snooping_enabled = 
  { (* 142/1968 *)
  role_uuid = "2ed69f7a-940b-701b-7749-2173d2863847";
  role_name_label = "pool.get_igmp_snooping_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_uefi_certificates = 
  { (* 143/1968 *)
  role_uuid = "c870d164-0490-4daf-ebcd-33b1f4ff8bc6";
  role_name_label = "pool.get_uefi_certificates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_is_psr_pending = 
  { (* 144/1968 *)
  role_uuid = "0d7b342a-db1f-c487-39be-a262e524c6e2";
  role_name_label = "pool.get_is_psr_pending";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_name_label = 
  { (* 145/1968 *)
  role_uuid = "f24972c9-f349-ef08-fa5a-54fb2b6eaa11";
  role_name_label = "pool.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_name_description = 
  { (* 146/1968 *)
  role_uuid = "21eba7f5-f073-2d8e-2a41-183d3974d2a3";
  role_name_label = "pool.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_default_SR = 
  { (* 147/1968 *)
  role_uuid = "762062a0-4d4e-0481-4f91-9974b0f63974";
  role_name_label = "pool.set_default_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_suspend_image_SR = 
  { (* 148/1968 *)
  role_uuid = "6cc44d23-5081-fdf7-ee05-374043579763";
  role_name_label = "pool.set_suspend_image_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_crash_dump_SR = 
  { (* 149/1968 *)
  role_uuid = "a274ea64-2a4d-acec-b96f-32e36893fa83";
  role_name_label = "pool.set_crash_dump_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_other_config = 
  { (* 150/1968 *)
  role_uuid = "f5e9d166-f43e-55e6-a50a-b9d788d13a0e";
  role_name_label = "pool.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_other_config = 
  { (* 151/1968 *)
  role_uuid = "df1020a5-3e1d-672f-eb02-f85ff1604765";
  role_name_label = "pool.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_other_config_key_folder = 
  { (* 152/1968 *)
  role_uuid = "530fe816-39e5-b429-2034-eed4c4463bea";
  role_name_label = "pool.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 153/1968 *)
  role_uuid = "6560fc11-49fa-5009-b9d6-0ec78e323867";
  role_name_label = "pool.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_other_config_key_EMPTY_FOLDERS = 
  { (* 154/1968 *)
  role_uuid = "ce8c8758-07cd-04b4-8086-945682e2b949";
  role_name_label = "pool.add_to_other_config/key:empty_folders";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_other_config = 
  { (* 155/1968 *)
  role_uuid = "24ad1c99-0b78-84fd-fb2c-d0ed821b8c55";
  role_name_label = "pool.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_other_config_key_folder = 
  { (* 156/1968 *)
  role_uuid = "bb97a595-e5af-1b54-9397-9252a92e5d35";
  role_name_label = "pool.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 157/1968 *)
  role_uuid = "1bf80bec-4d61-7551-907b-63dfdb72c416";
  role_name_label = "pool.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_other_config_key_EMPTY_FOLDERS = 
  { (* 158/1968 *)
  role_uuid = "bc0653a4-e028-efba-fae8-e5b17731c375";
  role_name_label = "pool.remove_from_other_config/key:empty_folders";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_ha_allow_overcommit = 
  { (* 159/1968 *)
  role_uuid = "f2a2ba01-3dbe-1e3f-6786-b552b51e0b24";
  role_name_label = "pool.set_ha_allow_overcommit";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_tags = 
  { (* 160/1968 *)
  role_uuid = "539f0c4e-7084-9181-9fe7-4ed8e2c32095";
  role_name_label = "pool.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_tags = 
  { (* 161/1968 *)
  role_uuid = "6ee3304b-df34-a1cd-3e11-530d22b55642";
  role_name_label = "pool.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_tags = 
  { (* 162/1968 *)
  role_uuid = "c374b534-db7c-2c7e-f405-b061d3adc23d";
  role_name_label = "pool.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_gui_config = 
  { (* 163/1968 *)
  role_uuid = "006a72c8-531f-e719-3fdc-69f8b5c5f8df";
  role_name_label = "pool.set_gui_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_gui_config = 
  { (* 164/1968 *)
  role_uuid = "4d842444-22ca-0ae0-365f-96b9de2639a1";
  role_name_label = "pool.add_to_gui_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_gui_config = 
  { (* 165/1968 *)
  role_uuid = "4b46d426-0071-da23-974a-d20ba16379eb";
  role_name_label = "pool.remove_from_gui_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_health_check_config = 
  { (* 166/1968 *)
  role_uuid = "39079350-3f2e-e0e5-c6e0-4b681555684f";
  role_name_label = "pool.set_health_check_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_health_check_config = 
  { (* 167/1968 *)
  role_uuid = "b194b1c6-a6b3-fd11-f75a-e1129e1229e1";
  role_name_label = "pool.add_to_health_check_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_health_check_config = 
  { (* 168/1968 *)
  role_uuid = "8d2dc042-fc30-2442-91c9-e4af1cf6c4dd";
  role_name_label = "pool.remove_from_health_check_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_wlb_enabled = 
  { (* 169/1968 *)
  role_uuid = "52e4bbbe-6428-b508-903a-c5c9ca432c0c";
  role_name_label = "pool.set_wlb_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_wlb_verify_cert = 
  { (* 170/1968 *)
  role_uuid = "5e647d58-979a-4dbb-75d8-aac3ecfc2767";
  role_name_label = "pool.set_wlb_verify_cert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_policy_no_vendor_device = 
  { (* 171/1968 *)
  role_uuid = "6fbf6bae-d021-f3f5-27aa-cd3a78139b7e";
  role_name_label = "pool.set_policy_no_vendor_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_live_patching_disabled = 
  { (* 172/1968 *)
  role_uuid = "f4c01605-cf25-1bc2-1cdc-00e29a96646e";
  role_name_label = "pool.set_live_patching_disabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_uefi_certificates = 
  { (* 173/1968 *)
  role_uuid = "5950f80b-e816-e851-350c-8840d3ec8ec8";
  role_name_label = "pool.set_uefi_certificates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_is_psr_pending = 
  { (* 174/1968 *)
  role_uuid = "fa03d5cb-ad6c-8470-6723-acaa232039a4";
  role_name_label = "pool.set_is_psr_pending";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_join = 
  { (* 175/1968 *)
  role_uuid = "6db0dea8-3637-8c86-512b-21c722658b20";
  role_name_label = "pool.join";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_join_force = 
  { (* 176/1968 *)
  role_uuid = "e6500c28-5f5e-df5f-3e8b-3220b86236d4";
  role_name_label = "pool.join_force";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_eject = 
  { (* 177/1968 *)
  role_uuid = "d39058bd-c379-93cb-56a0-eeac301a98ef";
  role_name_label = "pool.eject";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_initial_auth = 
  { (* 178/1968 *)
  role_uuid = "5c5ec919-8ff0-3e43-9530-f6af022b6df3";
  role_name_label = "pool.initial_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_emergency_transition_to_master = 
  { (* 179/1968 *)
  role_uuid = "e7ca4ff3-0af1-cae7-bd98-fe42a5187a9e";
  role_name_label = "pool.emergency_transition_to_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_emergency_reset_master = 
  { (* 180/1968 *)
  role_uuid = "c9c07dda-6524-1318-219c-f859f01363d9";
  role_name_label = "pool.emergency_reset_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_recover_slaves = 
  { (* 181/1968 *)
  role_uuid = "161d6a70-b3d4-3d26-06ee-89b75808cf1f";
  role_name_label = "pool.recover_slaves";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_hello = 
  { (* 182/1968 *)
  role_uuid = "05fdbf08-04dd-1ee7-85e9-023d2367ae08";
  role_name_label = "pool.hello";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_is_slave = 
  { (* 183/1968 *)
  role_uuid = "4f978bf0-3f53-b458-6dba-892cb9640634";
  role_name_label = "pool.is_slave";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_create_VLAN = 
  { (* 184/1968 *)
  role_uuid = "ba064948-133c-a781-a76e-bdcb7ba95ad2";
  role_name_label = "pool.create_vlan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_management_reconfigure = 
  { (* 185/1968 *)
  role_uuid = "f6375c60-f716-84cd-89ad-6dd4bcdced59";
  role_name_label = "pool.management_reconfigure";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_create_VLAN_from_PIF = 
  { (* 186/1968 *)
  role_uuid = "677e08b1-a821-6148-1e38-2f6a3b8a2098";
  role_name_label = "pool.create_vlan_from_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_slave_network_report = 
  { (* 187/1968 *)
  role_uuid = "6d347916-6b16-6ede-7fa7-2105b9bea116";
  role_name_label = "pool.slave_network_report";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_ha = 
  { (* 188/1968 *)
  role_uuid = "d99ab5bc-8b15-20b8-b6c1-cd1e87328217";
  role_name_label = "pool.enable_ha";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_ha = 
  { (* 189/1968 *)
  role_uuid = "bd902185-7c85-4773-07db-e26912ed083e";
  role_name_label = "pool.disable_ha";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_sync_database = 
  { (* 190/1968 *)
  role_uuid = "ee6c04af-8673-7e25-f5ef-54d21b838e6b";
  role_name_label = "pool.sync_database";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_designate_new_master = 
  { (* 191/1968 *)
  role_uuid = "a170dda3-234e-3dc0-814c-99fb7d094eab";
  role_name_label = "pool.designate_new_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_prevent_restarts_for = 
  { (* 192/1968 *)
  role_uuid = "ece28d18-1857-ab11-3fcb-5df868262d10";
  role_name_label = "pool.ha_prevent_restarts_for";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_failover_plan_exists = 
  { (* 193/1968 *)
  role_uuid = "aa78afeb-3181-fb7a-52b0-e174b682b0d0";
  role_name_label = "pool.ha_failover_plan_exists";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_compute_max_host_failures_to_tolerate = 
  { (* 194/1968 *)
  role_uuid = "16914305-3953-30e5-f0c0-4a45b161b668";
  role_name_label = "pool.ha_compute_max_host_failures_to_tolerate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate = 
  { (* 195/1968 *)
  role_uuid = "2b5a7aab-29a5-b3cf-2d91-944fb2d22e66";
  role_name_label = "pool.ha_compute_hypothetical_max_host_failures_to_tolerate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_compute_vm_failover_plan = 
  { (* 196/1968 *)
  role_uuid = "aaa35cdd-a8ab-ffa2-e7c3-327df4d313f2";
  role_name_label = "pool.ha_compute_vm_failover_plan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_ha_host_failures_to_tolerate = 
  { (* 197/1968 *)
  role_uuid = "f03fbd01-ef08-2ac6-7db7-85c32289f29f";
  role_name_label = "pool.set_ha_host_failures_to_tolerate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_create_new_blob = 
  { (* 198/1968 *)
  role_uuid = "d4664f0e-dd3a-381d-a0c0-0af168d6f811";
  role_name_label = "pool.create_new_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_ha_schedule_plan_recomputation = 
  { (* 199/1968 *)
  role_uuid = "453c7329-b3cd-a762-89ca-ce345d942d4d";
  role_name_label = "pool.ha_schedule_plan_recomputation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_binary_storage = 
  { (* 200/1968 *)
  role_uuid = "d7ddd962-28c6-9807-c03d-43694243cd3f";
  role_name_label = "pool.enable_binary_storage";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_binary_storage = 
  { (* 201/1968 *)
  role_uuid = "c000005f-5f22-5600-2e12-85495d6e02d7";
  role_name_label = "pool.disable_binary_storage";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_external_auth = 
  { (* 202/1968 *)
  role_uuid = "270cfff5-ac24-5f45-7018-67ba1079bb8e";
  role_name_label = "pool.enable_external_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_external_auth = 
  { (* 203/1968 *)
  role_uuid = "bfe28d20-c21e-16b4-15eb-2a1a44fb7615";
  role_name_label = "pool.disable_external_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_detect_nonhomogeneous_external_auth = 
  { (* 204/1968 *)
  role_uuid = "cf7a77ea-5bd9-ad1d-19f4-b58701eb3be6";
  role_name_label = "pool.detect_nonhomogeneous_external_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_initialize_wlb = 
  { (* 205/1968 *)
  role_uuid = "29d1f9bf-6aa6-119b-d42c-66bbfc290f05";
  role_name_label = "pool.initialize_wlb";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_deconfigure_wlb = 
  { (* 206/1968 *)
  role_uuid = "19b96aba-3c88-8763-2dd1-c3f90daccc9b";
  role_name_label = "pool.deconfigure_wlb";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_send_wlb_configuration = 
  { (* 207/1968 *)
  role_uuid = "aa46e99e-47a3-f937-5d49-789cffc42ced";
  role_name_label = "pool.send_wlb_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_retrieve_wlb_configuration = 
  { (* 208/1968 *)
  role_uuid = "9801533b-f160-629a-a994-e742e7971455";
  role_name_label = "pool.retrieve_wlb_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_retrieve_wlb_recommendations = 
  { (* 209/1968 *)
  role_uuid = "7033b792-890a-4ca5-0314-d6e8866d98ff";
  role_name_label = "pool.retrieve_wlb_recommendations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_send_test_post = 
  { (* 210/1968 *)
  role_uuid = "828b9849-82f7-fc81-82eb-0b94c7490117";
  role_name_label = "pool.send_test_post";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_certificate_install = 
  { (* 211/1968 *)
  role_uuid = "8303392e-0602-1627-f095-7d213fecc091";
  role_name_label = "pool.certificate_install";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_certificate_uninstall = 
  { (* 212/1968 *)
  role_uuid = "1ca264d3-a51a-6f66-6c80-ab7c9045c43e";
  role_name_label = "pool.certificate_uninstall";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_certificate_list = 
  { (* 213/1968 *)
  role_uuid = "14e2b30b-3914-3eec-97a7-449af2a01521";
  role_name_label = "pool.certificate_list";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_crl_install = 
  { (* 214/1968 *)
  role_uuid = "159067df-8a25-53b0-d4a7-8a2041e88257";
  role_name_label = "pool.crl_install";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_crl_uninstall = 
  { (* 215/1968 *)
  role_uuid = "e78ab05f-eed2-a737-ae9e-45cf74eaf3e6";
  role_name_label = "pool.crl_uninstall";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_crl_list = 
  { (* 216/1968 *)
  role_uuid = "8ebb3800-5b1c-0ca3-c9e8-36eb1f655069";
  role_name_label = "pool.crl_list";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_certificate_sync = 
  { (* 217/1968 *)
  role_uuid = "b44f8c55-f4a4-cec7-5c37-abc8baec46e9";
  role_name_label = "pool.certificate_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_redo_log = 
  { (* 218/1968 *)
  role_uuid = "5ed4c75a-a705-cbe3-c93f-6f5b652c1293";
  role_name_label = "pool.enable_redo_log";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_redo_log = 
  { (* 219/1968 *)
  role_uuid = "df654d18-e941-25db-18d8-b735dba1a499";
  role_name_label = "pool.disable_redo_log";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_audit_log_append = 
  { (* 220/1968 *)
  role_uuid = "5106e4a1-60d7-d4ab-7fd0-acfc2f0060c7";
  role_name_label = "pool.audit_log_append";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_vswitch_controller = 
  { (* 221/1968 *)
  role_uuid = "421adf0b-10bc-728e-e777-10fb174d6a53";
  role_name_label = "pool.set_vswitch_controller";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_test_archive_target = 
  { (* 222/1968 *)
  role_uuid = "525b5132-be91-74e5-c9e1-d42ea0ede4b2";
  role_name_label = "pool.test_archive_target";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_local_storage_caching = 
  { (* 223/1968 *)
  role_uuid = "cbd24236-a99e-a9eb-ea57-76544dd559b9";
  role_name_label = "pool.enable_local_storage_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_local_storage_caching = 
  { (* 224/1968 *)
  role_uuid = "57a4035c-2176-1a2e-cca7-605ddbef54d6";
  role_name_label = "pool.disable_local_storage_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_license_state = 
  { (* 225/1968 *)
  role_uuid = "bf00c330-4ef3-1109-c17e-cf69d8996cf8";
  role_name_label = "pool.get_license_state";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_apply_edition = 
  { (* 226/1968 *)
  role_uuid = "ed7c36c7-be82-afed-7751-644215155619";
  role_name_label = "pool.apply_edition";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_enable_ssl_legacy = 
  { (* 227/1968 *)
  role_uuid = "02ded89a-b88a-7f0f-d51b-761a64261846";
  role_name_label = "pool.enable_ssl_legacy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_disable_ssl_legacy = 
  { (* 228/1968 *)
  role_uuid = "0f7c1f2d-45bd-b81d-a498-a4d5eb631add";
  role_name_label = "pool.disable_ssl_legacy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_igmp_snooping_enabled = 
  { (* 229/1968 *)
  role_uuid = "102c8498-6dbc-d7f0-a96f-2d9c949b0777";
  role_name_label = "pool.set_igmp_snooping_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_has_extension = 
  { (* 230/1968 *)
  role_uuid = "91032e2f-6839-29d0-ebbb-920b98d00774";
  role_name_label = "pool.has_extension";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_add_to_guest_agent_config = 
  { (* 231/1968 *)
  role_uuid = "4b68955b-d261-933d-3ffa-c305ff35765b";
  role_name_label = "pool.add_to_guest_agent_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_remove_from_guest_agent_config = 
  { (* 232/1968 *)
  role_uuid = "9df3a1f3-4551-45bf-1dc6-d42182418e3a";
  role_name_label = "pool.remove_from_guest_agent_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_rotate_secret = 
  { (* 233/1968 *)
  role_uuid = "7f18fae2-59dd-6f03-f498-a1dc34a06006";
  role_name_label = "pool.rotate_secret";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_set_https_only = 
  { (* 234/1968 *)
  role_uuid = "d0982edf-7c0e-78cb-9448-bfa727175ea8";
  role_name_label = "pool.set_https_only";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_all = 
  { (* 235/1968 *)
  role_uuid = "e58e85dd-0873-8df8-bf0e-a78ad73a0d83";
  role_name_label = "pool.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_all_records_where = 
  { (* 236/1968 *)
  role_uuid = "7c284010-cae5-10b6-b321-ec149287a8c6";
  role_name_label = "pool.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_get_all_records = 
  { (* 237/1968 *)
  role_uuid = "cd2c87ac-2763-dd45-0e22-b563622e5c9b";
  role_name_label = "pool.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_record = 
  { (* 238/1968 *)
  role_uuid = "7b8b54ba-d4ec-bdc1-89d1-4c48e9046ba7";
  role_name_label = "pool_patch.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_by_uuid = 
  { (* 239/1968 *)
  role_uuid = "f78d82f7-c143-7172-096e-ad50798f475c";
  role_name_label = "pool_patch.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_by_name_label = 
  { (* 240/1968 *)
  role_uuid = "e4aac618-ccf9-4592-c23d-f829bbcf563b";
  role_name_label = "pool_patch.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_uuid = 
  { (* 241/1968 *)
  role_uuid = "08cfa7e7-f341-4a78-6035-87d5741d02e8";
  role_name_label = "pool_patch.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_name_label = 
  { (* 242/1968 *)
  role_uuid = "5103be90-76c6-cffd-3512-d622d93a74a2";
  role_name_label = "pool_patch.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_name_description = 
  { (* 243/1968 *)
  role_uuid = "6b28edf5-7612-be94-cccb-b7f2993b9104";
  role_name_label = "pool_patch.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_version = 
  { (* 244/1968 *)
  role_uuid = "d6645112-98c5-829e-d842-8d0241d909d8";
  role_name_label = "pool_patch.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_size = 
  { (* 245/1968 *)
  role_uuid = "a31fb120-d59f-d003-f445-557c6d40f0b5";
  role_name_label = "pool_patch.get_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_pool_applied = 
  { (* 246/1968 *)
  role_uuid = "54014da8-4ef9-638c-1089-074874d47231";
  role_name_label = "pool_patch.get_pool_applied";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_host_patches = 
  { (* 247/1968 *)
  role_uuid = "f094e5cd-c351-cdcd-01a2-a9c9ee14941e";
  role_name_label = "pool_patch.get_host_patches";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_after_apply_guidance = 
  { (* 248/1968 *)
  role_uuid = "0e32a766-a0a5-00a3-0058-0bce4987d801";
  role_name_label = "pool_patch.get_after_apply_guidance";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_pool_update = 
  { (* 249/1968 *)
  role_uuid = "75591603-383f-863a-f297-11cc8bce1769";
  role_name_label = "pool_patch.get_pool_update";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_other_config = 
  { (* 250/1968 *)
  role_uuid = "d632d605-4171-f42a-7898-62245cc28f04";
  role_name_label = "pool_patch.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_set_other_config = 
  { (* 251/1968 *)
  role_uuid = "bf994089-76bf-cf4b-1400-34152d3fc603";
  role_name_label = "pool_patch.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_add_to_other_config = 
  { (* 252/1968 *)
  role_uuid = "0c6c285b-58e3-348b-67e9-2cf1aee0f8fa";
  role_name_label = "pool_patch.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_remove_from_other_config = 
  { (* 253/1968 *)
  role_uuid = "7b8834dc-6594-da5a-9bdb-22c2e2d146a0";
  role_name_label = "pool_patch.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_apply = 
  { (* 254/1968 *)
  role_uuid = "d4385002-b920-5412-4c57-b010f451fa81";
  role_name_label = "pool_patch.apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_pool_apply = 
  { (* 255/1968 *)
  role_uuid = "0176088f-47bb-ab62-5325-5d22acc71268";
  role_name_label = "pool_patch.pool_apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_precheck = 
  { (* 256/1968 *)
  role_uuid = "4b0e8acb-dfc4-78b8-4fe2-b670d7d97890";
  role_name_label = "pool_patch.precheck";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_clean = 
  { (* 257/1968 *)
  role_uuid = "77f0dc45-f46e-2242-14a9-22aa38353039";
  role_name_label = "pool_patch.clean";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_pool_clean = 
  { (* 258/1968 *)
  role_uuid = "3c2b3e8d-ec65-9479-3074-7fb06b75928a";
  role_name_label = "pool_patch.pool_clean";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_destroy = 
  { (* 259/1968 *)
  role_uuid = "864a2586-45a3-a18e-fc4b-970429066482";
  role_name_label = "pool_patch.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_clean_on_host = 
  { (* 260/1968 *)
  role_uuid = "4bac4c85-f235-32a1-b4e6-c4237652134a";
  role_name_label = "pool_patch.clean_on_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_all = 
  { (* 261/1968 *)
  role_uuid = "4b7ea29b-eec1-c56a-304a-b68c88799fed";
  role_name_label = "pool_patch.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_all_records_where = 
  { (* 262/1968 *)
  role_uuid = "1165f711-b47e-76ec-dbac-4c225b4b9ddf";
  role_name_label = "pool_patch.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_patch_get_all_records = 
  { (* 263/1968 *)
  role_uuid = "1b53cad1-0fb1-6b52-0875-c7f999a1a02f";
  role_name_label = "pool_patch.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_record = 
  { (* 264/1968 *)
  role_uuid = "0d691b2c-086c-f08b-0026-ffb4b2a7d84e";
  role_name_label = "pool_update.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_by_uuid = 
  { (* 265/1968 *)
  role_uuid = "2cc19074-136d-5310-ae37-8576e4bd1905";
  role_name_label = "pool_update.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_by_name_label = 
  { (* 266/1968 *)
  role_uuid = "8c34f3e0-3d5c-afc0-d9e8-820165d6a3c1";
  role_name_label = "pool_update.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_uuid = 
  { (* 267/1968 *)
  role_uuid = "4e40a1e3-2b78-e2df-131e-8ffe1347c992";
  role_name_label = "pool_update.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_name_label = 
  { (* 268/1968 *)
  role_uuid = "6a427e40-546f-aa76-8ccd-3c5ff9a194ec";
  role_name_label = "pool_update.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_name_description = 
  { (* 269/1968 *)
  role_uuid = "add58a20-157b-cb72-7705-120b028959ec";
  role_name_label = "pool_update.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_version = 
  { (* 270/1968 *)
  role_uuid = "cdaf1d1e-bba8-88ba-2e1d-c63da63ad9d9";
  role_name_label = "pool_update.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_installation_size = 
  { (* 271/1968 *)
  role_uuid = "968d2eff-5baf-52c1-55ef-6a055162eaf5";
  role_name_label = "pool_update.get_installation_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_key = 
  { (* 272/1968 *)
  role_uuid = "3009aa88-bb34-b0b0-b6c0-887fc00f876e";
  role_name_label = "pool_update.get_key";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_after_apply_guidance = 
  { (* 273/1968 *)
  role_uuid = "cc4bfd51-44d1-6a34-65aa-3f9071b99f62";
  role_name_label = "pool_update.get_after_apply_guidance";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_vdi = 
  { (* 274/1968 *)
  role_uuid = "c3f19a9c-5baa-04cc-9045-88f850ab8e8f";
  role_name_label = "pool_update.get_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_hosts = 
  { (* 275/1968 *)
  role_uuid = "be5abbb5-60e6-58bc-d0cc-044672a02e2b";
  role_name_label = "pool_update.get_hosts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_other_config = 
  { (* 276/1968 *)
  role_uuid = "4aab2aef-cf24-3dab-11a1-7ca712407d7c";
  role_name_label = "pool_update.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_enforce_homogeneity = 
  { (* 277/1968 *)
  role_uuid = "69ccd3f8-dc17-aecc-cd66-5efeada581a4";
  role_name_label = "pool_update.get_enforce_homogeneity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_set_other_config = 
  { (* 278/1968 *)
  role_uuid = "134247ca-0ce5-53f5-4e5a-56ce39c48a17";
  role_name_label = "pool_update.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_add_to_other_config = 
  { (* 279/1968 *)
  role_uuid = "ef802e9c-bcbc-946b-dff4-4e8df1046c2d";
  role_name_label = "pool_update.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_remove_from_other_config = 
  { (* 280/1968 *)
  role_uuid = "c3953f54-3eca-dce3-93f2-c7ed8b140be3";
  role_name_label = "pool_update.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_introduce = 
  { (* 281/1968 *)
  role_uuid = "ac0ac3f5-c7ed-f3d7-8dde-223e061bfce9";
  role_name_label = "pool_update.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_precheck = 
  { (* 282/1968 *)
  role_uuid = "2b8c0ffe-8ef3-497e-eeec-f98bd541ff51";
  role_name_label = "pool_update.precheck";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_apply = 
  { (* 283/1968 *)
  role_uuid = "690ce311-b9aa-fd4d-1645-1102802b4d10";
  role_name_label = "pool_update.apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_pool_apply = 
  { (* 284/1968 *)
  role_uuid = "011bcef0-bb0c-b92a-0d55-ba2b692689d1";
  role_name_label = "pool_update.pool_apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_pool_clean = 
  { (* 285/1968 *)
  role_uuid = "eeae53a8-c5fb-6cef-2656-cc886781f358";
  role_name_label = "pool_update.pool_clean";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_destroy = 
  { (* 286/1968 *)
  role_uuid = "b48b1c57-c50c-9d5e-1821-16cb46e9963b";
  role_name_label = "pool_update.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_attach = 
  { (* 287/1968 *)
  role_uuid = "4575c953-cdc5-5e25-341b-2f0ec4f3e12c";
  role_name_label = "pool_update.attach";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_detach = 
  { (* 288/1968 *)
  role_uuid = "3b7d87da-fa2f-35b5-ba92-3a4df620cd40";
  role_name_label = "pool_update.detach";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_resync_host = 
  { (* 289/1968 *)
  role_uuid = "692bc69e-1d63-ee28-df80-e8307b8dd51f";
  role_name_label = "pool_update.resync_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_all = 
  { (* 290/1968 *)
  role_uuid = "bc383a14-703d-5f04-fdd6-483e55aca7b3";
  role_name_label = "pool_update.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_all_records_where = 
  { (* 291/1968 *)
  role_uuid = "0c6c4db7-74f1-d51b-6ebb-378c8c088bed";
  role_name_label = "pool_update.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_pool_update_get_all_records = 
  { (* 292/1968 *)
  role_uuid = "18d391d8-a2d3-775d-2169-b15854bbd43d";
  role_name_label = "pool_update.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_record = 
  { (* 293/1968 *)
  role_uuid = "009895d6-2a35-f2b9-5dbb-fca46c208424";
  role_name_label = "vm.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_by_uuid = 
  { (* 294/1968 *)
  role_uuid = "d533db5f-b3c7-5053-942c-1ec28b1f25b0";
  role_name_label = "vm.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_create = 
  { (* 295/1968 *)
  role_uuid = "3f3ec99f-91cf-3ae6-8a10-78901c4b25ec";
  role_name_label = "vm.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_destroy = 
  { (* 296/1968 *)
  role_uuid = "1a1d982c-8dfb-5dc2-c535-265eaf8adb3e";
  role_name_label = "vm.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_by_name_label = 
  { (* 297/1968 *)
  role_uuid = "86098675-bebe-e1d7-c063-988b04499e45";
  role_name_label = "vm.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_uuid = 
  { (* 298/1968 *)
  role_uuid = "b798b24d-1067-d2ea-7fc9-f147d916ba47";
  role_name_label = "vm.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_allowed_operations = 
  { (* 299/1968 *)
  role_uuid = "b4992000-119b-662e-22d3-ff2ba2a55c0b";
  role_name_label = "vm.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_current_operations = 
  { (* 300/1968 *)
  role_uuid = "2694b9ba-caae-160a-1fee-c4401f7eb871";
  role_name_label = "vm.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_name_label = 
  { (* 301/1968 *)
  role_uuid = "76df53df-4e08-fd20-80be-8382f055f47a";
  role_name_label = "vm.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_name_description = 
  { (* 302/1968 *)
  role_uuid = "c58e0892-cfab-2364-6b9a-fccf603a29e6";
  role_name_label = "vm.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_power_state = 
  { (* 303/1968 *)
  role_uuid = "20192ebc-be70-d33d-c163-1770a526a958";
  role_name_label = "vm.get_power_state";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_user_version = 
  { (* 304/1968 *)
  role_uuid = "09f1a83f-01ae-ed9c-c781-98517d1dd3d2";
  role_name_label = "vm.get_user_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_a_template = 
  { (* 305/1968 *)
  role_uuid = "d1e16e8d-92e0-ccc1-c85c-c2244e99ae74";
  role_name_label = "vm.get_is_a_template";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_default_template = 
  { (* 306/1968 *)
  role_uuid = "c647ad95-8846-df5e-0725-d43bf0360419";
  role_name_label = "vm.get_is_default_template";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_suspend_VDI = 
  { (* 307/1968 *)
  role_uuid = "27e9e225-a5b7-ca6e-75d3-5b4cb52d3627";
  role_name_label = "vm.get_suspend_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_resident_on = 
  { (* 308/1968 *)
  role_uuid = "9a38b22c-0f0e-1bb3-323f-04b4445a3700";
  role_name_label = "vm.get_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_scheduled_to_be_resident_on = 
  { (* 309/1968 *)
  role_uuid = "90586e74-9b7e-ee48-5954-fafcb8dad556";
  role_name_label = "vm.get_scheduled_to_be_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_affinity = 
  { (* 310/1968 *)
  role_uuid = "b6a98068-1e06-e7fe-1010-269343afa0b2";
  role_name_label = "vm.get_affinity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_overhead = 
  { (* 311/1968 *)
  role_uuid = "f0155615-65ba-9161-c3bb-cac286bae2b1";
  role_name_label = "vm.get_memory_overhead";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_target = 
  { (* 312/1968 *)
  role_uuid = "d3c5c812-c278-9827-8e2a-24bbdab201a7";
  role_name_label = "vm.get_memory_target";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_static_max = 
  { (* 313/1968 *)
  role_uuid = "531f332b-49aa-b429-6f50-4d803205f792";
  role_name_label = "vm.get_memory_static_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_dynamic_max = 
  { (* 314/1968 *)
  role_uuid = "fcf7dbbf-286d-73ec-e9e6-6c329a627d01";
  role_name_label = "vm.get_memory_dynamic_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_dynamic_min = 
  { (* 315/1968 *)
  role_uuid = "b95dd845-4bcf-0a4f-a5f9-dfb6b45f5b7e";
  role_name_label = "vm.get_memory_dynamic_min";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_memory_static_min = 
  { (* 316/1968 *)
  role_uuid = "04e56171-2991-e1d5-f908-d6aa4ea70bfd";
  role_name_label = "vm.get_memory_static_min";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VCPUs_params = 
  { (* 317/1968 *)
  role_uuid = "e57f5462-775a-c7cb-0098-6f5d512abece";
  role_name_label = "vm.get_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VCPUs_max = 
  { (* 318/1968 *)
  role_uuid = "f35f5fa2-d886-5a8f-a5e4-1e41237e20d9";
  role_name_label = "vm.get_vcpus_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VCPUs_at_startup = 
  { (* 319/1968 *)
  role_uuid = "d2071cda-fa54-9231-7db2-fddb3112eae7";
  role_name_label = "vm.get_vcpus_at_startup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_actions_after_shutdown = 
  { (* 320/1968 *)
  role_uuid = "0423894e-139f-10e1-855f-4a550175b615";
  role_name_label = "vm.get_actions_after_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_actions_after_reboot = 
  { (* 321/1968 *)
  role_uuid = "f089614b-16db-9e28-06f9-0e0ca7be5320";
  role_name_label = "vm.get_actions_after_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_actions_after_crash = 
  { (* 322/1968 *)
  role_uuid = "941a6983-a5e2-3772-ed58-1e2aa29b1436";
  role_name_label = "vm.get_actions_after_crash";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_consoles = 
  { (* 323/1968 *)
  role_uuid = "47999374-b082-b73d-09d1-37bb2836d522";
  role_name_label = "vm.get_consoles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VIFs = 
  { (* 324/1968 *)
  role_uuid = "5937be6e-540c-da35-a08f-45b6bee6950c";
  role_name_label = "vm.get_vifs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VBDs = 
  { (* 325/1968 *)
  role_uuid = "dbeaa6f0-69c4-9e7b-b72b-7f7e6ea15ded";
  role_name_label = "vm.get_vbds";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VUSBs = 
  { (* 326/1968 *)
  role_uuid = "d1c49f87-abb9-b8f0-2a18-63875f74d4ff";
  role_name_label = "vm.get_vusbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_crash_dumps = 
  { (* 327/1968 *)
  role_uuid = "84aed1e7-ce75-1c04-9221-b41765e7ec25";
  role_name_label = "vm.get_crash_dumps";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VTPMs = 
  { (* 328/1968 *)
  role_uuid = "e478de94-cde3-2ea2-8b29-3ae4b3ff6cc8";
  role_name_label = "vm.get_vtpms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_bootloader = 
  { (* 329/1968 *)
  role_uuid = "e66a5a0f-8c8e-d629-ba92-1b1f0374498e";
  role_name_label = "vm.get_pv_bootloader";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_kernel = 
  { (* 330/1968 *)
  role_uuid = "12c18c1a-3ecf-e8bb-646a-eaaf975c5813";
  role_name_label = "vm.get_pv_kernel";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_ramdisk = 
  { (* 331/1968 *)
  role_uuid = "fad90582-c075-9587-bf3e-d24d76692ba8";
  role_name_label = "vm.get_pv_ramdisk";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_args = 
  { (* 332/1968 *)
  role_uuid = "13a11943-2578-a1c5-b1f4-c5e25c5d070f";
  role_name_label = "vm.get_pv_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_bootloader_args = 
  { (* 333/1968 *)
  role_uuid = "7a156321-0c6b-a61c-3cda-d9e580d35fbd";
  role_name_label = "vm.get_pv_bootloader_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PV_legacy_args = 
  { (* 334/1968 *)
  role_uuid = "b005f138-d13c-ebd2-bdd5-1e4550f3ba91";
  role_name_label = "vm.get_pv_legacy_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_HVM_boot_policy = 
  { (* 335/1968 *)
  role_uuid = "c00d0e92-ac51-2914-ce0f-01292607e440";
  role_name_label = "vm.get_hvm_boot_policy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_HVM_boot_params = 
  { (* 336/1968 *)
  role_uuid = "12dca690-28d3-8620-e4b6-a16beff24246";
  role_name_label = "vm.get_hvm_boot_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_HVM_shadow_multiplier = 
  { (* 337/1968 *)
  role_uuid = "2d90779e-cf44-eaf2-b452-f843b56b58fe";
  role_name_label = "vm.get_hvm_shadow_multiplier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_platform = 
  { (* 338/1968 *)
  role_uuid = "79f576b0-2f82-8786-3ef1-7e90ef0fbd56";
  role_name_label = "vm.get_platform";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_PCI_bus = 
  { (* 339/1968 *)
  role_uuid = "9a8e1a97-9547-897b-dddb-5753fc491146";
  role_name_label = "vm.get_pci_bus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_other_config = 
  { (* 340/1968 *)
  role_uuid = "ea2e80cd-54dd-4feb-e266-4c4a8acf47da";
  role_name_label = "vm.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_domid = 
  { (* 341/1968 *)
  role_uuid = "1f843368-7d86-3388-f5e1-37e7451690e3";
  role_name_label = "vm.get_domid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_domarch = 
  { (* 342/1968 *)
  role_uuid = "612d96c0-c6d3-073f-c3af-a9a471d6372e";
  role_name_label = "vm.get_domarch";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_last_boot_CPU_flags = 
  { (* 343/1968 *)
  role_uuid = "6a10a27b-0a5b-721a-3a2a-931542eb779f";
  role_name_label = "vm.get_last_boot_cpu_flags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_control_domain = 
  { (* 344/1968 *)
  role_uuid = "c86ce51a-f6ca-5685-503a-e8f988d8f3a1";
  role_name_label = "vm.get_is_control_domain";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_metrics = 
  { (* 345/1968 *)
  role_uuid = "ee92c33f-0176-2f81-7850-d8274d543cbd";
  role_name_label = "vm.get_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_guest_metrics = 
  { (* 346/1968 *)
  role_uuid = "05e477c2-6a5d-f53a-ccf3-28f472a19553";
  role_name_label = "vm.get_guest_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_last_booted_record = 
  { (* 347/1968 *)
  role_uuid = "f45b5cb0-ae54-c2ec-d5fd-3f3d9d6ea490";
  role_name_label = "vm.get_last_booted_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_recommendations = 
  { (* 348/1968 *)
  role_uuid = "40c1f55a-58b1-4624-6e2c-dfd04e8e0f0f";
  role_name_label = "vm.get_recommendations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_xenstore_data = 
  { (* 349/1968 *)
  role_uuid = "654a657c-4f57-0385-b0b5-f11bc085f916";
  role_name_label = "vm.get_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_ha_always_run = 
  { (* 350/1968 *)
  role_uuid = "b0d95391-a938-cc75-303e-543e6a5c07a5";
  role_name_label = "vm.get_ha_always_run";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_ha_restart_priority = 
  { (* 351/1968 *)
  role_uuid = "a46d2d35-0fdf-7a75-6025-ee689f25773c";
  role_name_label = "vm.get_ha_restart_priority";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_a_snapshot = 
  { (* 352/1968 *)
  role_uuid = "b1dcf01e-9390-4ad1-0f2f-8263dd9476c5";
  role_name_label = "vm.get_is_a_snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshot_of = 
  { (* 353/1968 *)
  role_uuid = "bc55b6ed-c4df-4cf5-2118-8421fca4dfba";
  role_name_label = "vm.get_snapshot_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshots = 
  { (* 354/1968 *)
  role_uuid = "caf63646-b530-624d-9fa6-d6b1ecfb1c82";
  role_name_label = "vm.get_snapshots";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshot_time = 
  { (* 355/1968 *)
  role_uuid = "ab0341ec-b69f-cafb-c519-d7f18a922839";
  role_name_label = "vm.get_snapshot_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_transportable_snapshot_id = 
  { (* 356/1968 *)
  role_uuid = "398b1e83-6b06-7664-4efb-ee31275c86f7";
  role_name_label = "vm.get_transportable_snapshot_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_blobs = 
  { (* 357/1968 *)
  role_uuid = "e1b7c2dd-7c41-3fdc-2cfc-4f867d00c333";
  role_name_label = "vm.get_blobs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_tags = 
  { (* 358/1968 *)
  role_uuid = "15b8f6a0-991c-7089-1ef9-13e4f77e2556";
  role_name_label = "vm.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_blocked_operations = 
  { (* 359/1968 *)
  role_uuid = "4a622ed6-a1ca-4eba-7b12-59480d645194";
  role_name_label = "vm.get_blocked_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshot_info = 
  { (* 360/1968 *)
  role_uuid = "61c08156-de47-7f68-035a-7cb5e42de46c";
  role_name_label = "vm.get_snapshot_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshot_metadata = 
  { (* 361/1968 *)
  role_uuid = "7823a440-ae2e-1c9a-d613-1aca2913b5cb";
  role_name_label = "vm.get_snapshot_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_parent = 
  { (* 362/1968 *)
  role_uuid = "e80dcb82-245c-feaf-ac10-679cabce6713";
  role_name_label = "vm.get_parent";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_children = 
  { (* 363/1968 *)
  role_uuid = "c7c664cb-1efc-9388-91d0-28100c085aaa";
  role_name_label = "vm.get_children";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_bios_strings = 
  { (* 364/1968 *)
  role_uuid = "3f3480e8-c6fc-b6bf-05f0-a6377ab50db1";
  role_name_label = "vm.get_bios_strings";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_protection_policy = 
  { (* 365/1968 *)
  role_uuid = "b5189a1d-4fd2-8953-ab9d-8b970655f47c";
  role_name_label = "vm.get_protection_policy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_snapshot_from_vmpp = 
  { (* 366/1968 *)
  role_uuid = "02e0b886-32f4-1f25-d83e-6e88ab11e20f";
  role_name_label = "vm.get_is_snapshot_from_vmpp";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_snapshot_schedule = 
  { (* 367/1968 *)
  role_uuid = "30ee39de-557d-0c32-72f2-e7e828fad270";
  role_name_label = "vm.get_snapshot_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_is_vmss_snapshot = 
  { (* 368/1968 *)
  role_uuid = "913ac710-28f8-428a-03cd-5714e8a4851d";
  role_name_label = "vm.get_is_vmss_snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_appliance = 
  { (* 369/1968 *)
  role_uuid = "9cd6b930-8313-fbc2-7214-083a6d9ab81c";
  role_name_label = "vm.get_appliance";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_start_delay = 
  { (* 370/1968 *)
  role_uuid = "92e5a45a-edd9-635c-8929-b4956320c847";
  role_name_label = "vm.get_start_delay";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_shutdown_delay = 
  { (* 371/1968 *)
  role_uuid = "dbc87b09-5539-c8fd-9c4e-0659a7217325";
  role_name_label = "vm.get_shutdown_delay";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_order = 
  { (* 372/1968 *)
  role_uuid = "cd5aa26d-42b9-0c3a-a136-b4b3fbf2e17f";
  role_name_label = "vm.get_order";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_VGPUs = 
  { (* 373/1968 *)
  role_uuid = "866c4d54-adbc-cd19-1540-183e7ad9bdd4";
  role_name_label = "vm.get_vgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_attached_PCIs = 
  { (* 374/1968 *)
  role_uuid = "43bed9f5-4bb8-551b-8540-922b40e0dd42";
  role_name_label = "vm.get_attached_pcis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_suspend_SR = 
  { (* 375/1968 *)
  role_uuid = "d1ff49a6-6866-db73-c3ed-6faeb5460a6f";
  role_name_label = "vm.get_suspend_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_version = 
  { (* 376/1968 *)
  role_uuid = "4c98e491-6bb2-7ce7-460a-3a9471bbd598";
  role_name_label = "vm.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_generation_id = 
  { (* 377/1968 *)
  role_uuid = "9ee4625a-e02c-100a-c621-43852bfa3d29";
  role_name_label = "vm.get_generation_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_hardware_platform_version = 
  { (* 378/1968 *)
  role_uuid = "25294cf1-a675-7798-f359-4eb08edd824f";
  role_name_label = "vm.get_hardware_platform_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_has_vendor_device = 
  { (* 379/1968 *)
  role_uuid = "5f2b580d-f555-5a46-64cf-862bd82ad0ab";
  role_name_label = "vm.get_has_vendor_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_requires_reboot = 
  { (* 380/1968 *)
  role_uuid = "8701f35e-4e0a-cfa5-b1cf-6088ad3d7fd0";
  role_name_label = "vm.get_requires_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_reference_label = 
  { (* 381/1968 *)
  role_uuid = "a63c1b27-b8fc-08b1-3700-11c83dd6cb5d";
  role_name_label = "vm.get_reference_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_domain_type = 
  { (* 382/1968 *)
  role_uuid = "281b3840-9c0b-c64a-04dc-e32e2f3f02dd";
  role_name_label = "vm.get_domain_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_NVRAM = 
  { (* 383/1968 *)
  role_uuid = "21b382dc-fbed-dfb7-6afa-017cea9bde7e";
  role_name_label = "vm.get_nvram";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_name_label = 
  { (* 384/1968 *)
  role_uuid = "a0be8b9a-d205-110e-3d25-525f697490b8";
  role_name_label = "vm.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_name_description = 
  { (* 385/1968 *)
  role_uuid = "c236c0c3-35a5-f7a4-59d1-1f7c0b9f3e6a";
  role_name_label = "vm.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_user_version = 
  { (* 386/1968 *)
  role_uuid = "0f24aebf-4e7a-325e-2741-6a1d2058ec31";
  role_name_label = "vm.set_user_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_is_a_template = 
  { (* 387/1968 *)
  role_uuid = "16903632-2be2-df6a-f611-5e3c49cbe0dd";
  role_name_label = "vm.set_is_a_template";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_affinity = 
  { (* 388/1968 *)
  role_uuid = "68842386-54d4-21d0-b374-3868c4195c7d";
  role_name_label = "vm.set_affinity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_VCPUs_params = 
  { (* 389/1968 *)
  role_uuid = "8ab9b8e5-1b7e-b05f-7889-da1b89be11f8";
  role_name_label = "vm.set_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_VCPUs_params = 
  { (* 390/1968 *)
  role_uuid = "f455a71e-e0ba-5da9-3b16-89ad594976cc";
  role_name_label = "vm.add_to_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_VCPUs_params = 
  { (* 391/1968 *)
  role_uuid = "f54e4617-9438-c1ba-d8d6-572fac712fb5";
  role_name_label = "vm.remove_from_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_actions_after_shutdown = 
  { (* 392/1968 *)
  role_uuid = "f2495b2a-1230-9278-bebd-93fa6d8b3fbd";
  role_name_label = "vm.set_actions_after_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_actions_after_reboot = 
  { (* 393/1968 *)
  role_uuid = "29ad72a1-9024-a9b4-9224-65f66ba950f5";
  role_name_label = "vm.set_actions_after_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_bootloader = 
  { (* 394/1968 *)
  role_uuid = "845ce175-49cd-1ce3-0ffb-0267ce3afeab";
  role_name_label = "vm.set_pv_bootloader";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_kernel = 
  { (* 395/1968 *)
  role_uuid = "fb9b9a1e-8d10-f254-c1c5-6848f19e82a8";
  role_name_label = "vm.set_pv_kernel";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_ramdisk = 
  { (* 396/1968 *)
  role_uuid = "a7af6687-e67d-2820-4eb8-d3f45c68f237";
  role_name_label = "vm.set_pv_ramdisk";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_args = 
  { (* 397/1968 *)
  role_uuid = "26bf73e8-f349-dba2-a7e9-9eb1e0b182cb";
  role_name_label = "vm.set_pv_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_bootloader_args = 
  { (* 398/1968 *)
  role_uuid = "88f04cd7-9daf-fb60-ec90-720bc2a252c2";
  role_name_label = "vm.set_pv_bootloader_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PV_legacy_args = 
  { (* 399/1968 *)
  role_uuid = "dffecfb1-e0db-1f2b-87e2-109d72562608";
  role_name_label = "vm.set_pv_legacy_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_HVM_boot_params = 
  { (* 400/1968 *)
  role_uuid = "076441c4-1fe6-1681-52eb-5593cd018537";
  role_name_label = "vm.set_hvm_boot_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_HVM_boot_params = 
  { (* 401/1968 *)
  role_uuid = "b55d8910-9487-9485-5408-06d3a0232abc";
  role_name_label = "vm.add_to_hvm_boot_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_HVM_boot_params = 
  { (* 402/1968 *)
  role_uuid = "13aef116-19fe-3a1f-2041-41f5a1a41e3d";
  role_name_label = "vm.remove_from_hvm_boot_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_platform = 
  { (* 403/1968 *)
  role_uuid = "c4739e90-efac-29be-27ee-b40047d88653";
  role_name_label = "vm.set_platform";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_platform = 
  { (* 404/1968 *)
  role_uuid = "e5ab4d36-a5f8-3a95-ee23-281c9e16974f";
  role_name_label = "vm.add_to_platform";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_platform = 
  { (* 405/1968 *)
  role_uuid = "81fd4de4-5bbc-7ba4-c2b9-8d2cf7e80974";
  role_name_label = "vm.remove_from_platform";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_PCI_bus = 
  { (* 406/1968 *)
  role_uuid = "4fd7812c-7d30-e97e-73fd-f428da986071";
  role_name_label = "vm.set_pci_bus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_other_config = 
  { (* 407/1968 *)
  role_uuid = "45182b24-24c6-6a9c-01c3-49ac4a6bfb04";
  role_name_label = "vm.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_other_config = 
  { (* 408/1968 *)
  role_uuid = "b4c7644e-ca1d-c511-fba7-3f7474dae079";
  role_name_label = "vm.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_other_config_key_pci = 
  { (* 409/1968 *)
  role_uuid = "f6d2378d-a45b-bb77-a6d6-488805be984a";
  role_name_label = "vm.add_to_other_config/key:pci";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_other_config_key_folder = 
  { (* 410/1968 *)
  role_uuid = "bf77e796-59d3-18c0-116e-a30e514e47ef";
  role_name_label = "vm.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 411/1968 *)
  role_uuid = "c70f5e19-5cc8-09b0-900e-752d10caae49";
  role_name_label = "vm.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_other_config = 
  { (* 412/1968 *)
  role_uuid = "ab44acd6-dc9d-6533-3e96-eeb6690c03ab";
  role_name_label = "vm.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_other_config_key_pci = 
  { (* 413/1968 *)
  role_uuid = "95099189-9466-a620-d7d1-455aa85aa89f";
  role_name_label = "vm.remove_from_other_config/key:pci";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_other_config_key_folder = 
  { (* 414/1968 *)
  role_uuid = "67bfa576-0e16-1fbc-3916-7c7258702d23";
  role_name_label = "vm.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 415/1968 *)
  role_uuid = "181f66ab-cc92-1fc8-b3a9-8b4bb1f74acf";
  role_name_label = "vm.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_recommendations = 
  { (* 416/1968 *)
  role_uuid = "cae4947e-dfd0-ceef-f8e6-7de4e4596a0e";
  role_name_label = "vm.set_recommendations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_xenstore_data = 
  { (* 417/1968 *)
  role_uuid = "f48b609b-4cbe-b22b-5240-10d3b4df505a";
  role_name_label = "vm.set_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_xenstore_data = 
  { (* 418/1968 *)
  role_uuid = "19a7222c-dbb7-e646-6160-c30e82608772";
  role_name_label = "vm.add_to_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_xenstore_data = 
  { (* 419/1968 *)
  role_uuid = "b1203245-34c3-7026-c290-d998c5e94b69";
  role_name_label = "vm.remove_from_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_tags = 
  { (* 420/1968 *)
  role_uuid = "7a3744a6-02a0-fe82-1201-31301aea1f2f";
  role_name_label = "vm.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_tags = 
  { (* 421/1968 *)
  role_uuid = "d24ca751-b516-edff-736c-3e6b0719115b";
  role_name_label = "vm.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_tags = 
  { (* 422/1968 *)
  role_uuid = "f458e427-5928-9057-c219-df99153fc075";
  role_name_label = "vm.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_blocked_operations = 
  { (* 423/1968 *)
  role_uuid = "895c0c2e-8b08-ed68-e7c9-c2ca8ebea573";
  role_name_label = "vm.set_blocked_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_blocked_operations = 
  { (* 424/1968 *)
  role_uuid = "0653de2c-ffd3-554f-d7be-1ecd0e140093";
  role_name_label = "vm.add_to_blocked_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_blocked_operations = 
  { (* 425/1968 *)
  role_uuid = "d1d95133-7aad-02fb-0ef4-0e3553fbfe1a";
  role_name_label = "vm.remove_from_blocked_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_suspend_SR = 
  { (* 426/1968 *)
  role_uuid = "e215abe9-6d54-dc46-ed03-61829c477270";
  role_name_label = "vm.set_suspend_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_hardware_platform_version = 
  { (* 427/1968 *)
  role_uuid = "4a845fd5-913b-361f-f5cd-5479dc1bc48b";
  role_name_label = "vm.set_hardware_platform_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_snapshot = 
  { (* 428/1968 *)
  role_uuid = "06044457-78bd-e927-7926-06cd6cda2dc8";
  role_name_label = "vm.snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_snapshot_with_quiesce = 
  { (* 429/1968 *)
  role_uuid = "f6424fe6-db32-cf8e-e2d1-b5e570812e12";
  role_name_label = "vm.snapshot_with_quiesce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_clone = 
  { (* 430/1968 *)
  role_uuid = "7fa1e0d6-4301-86d3-f678-989f56a7f9e5";
  role_name_label = "vm.clone";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_copy = 
  { (* 431/1968 *)
  role_uuid = "4e458b99-04ca-4759-4f2b-25943a270d11";
  role_name_label = "vm.copy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_revert = 
  { (* 432/1968 *)
  role_uuid = "3a33c68f-e787-39c5-568b-9ed6c00f64ba";
  role_name_label = "vm.revert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_checkpoint = 
  { (* 433/1968 *)
  role_uuid = "ad25d5f7-52e3-29a6-3e54-9e8b0cdfe8b2";
  role_name_label = "vm.checkpoint";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_provision = 
  { (* 434/1968 *)
  role_uuid = "0f9a4bd3-1ac7-0694-d293-5b5cdd3a96d1";
  role_name_label = "vm.provision";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_start = 
  { (* 435/1968 *)
  role_uuid = "24b924aa-926c-879e-d2c1-fe778e82ccee";
  role_name_label = "vm.start";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_start_on = 
  { (* 436/1968 *)
  role_uuid = "b91518fe-0a95-4001-8b10-34e30581fdef";
  role_name_label = "vm.start_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_pause = 
  { (* 437/1968 *)
  role_uuid = "b6096493-b47b-3bc4-a9b9-6d670a304017";
  role_name_label = "vm.pause";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_unpause = 
  { (* 438/1968 *)
  role_uuid = "4788c0d8-8cc1-11b0-c43c-0ea2b02689b8";
  role_name_label = "vm.unpause";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_clean_shutdown = 
  { (* 439/1968 *)
  role_uuid = "60d79042-e0b2-74fb-5fc3-25ff0e9f200b";
  role_name_label = "vm.clean_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_shutdown = 
  { (* 440/1968 *)
  role_uuid = "0391a375-885e-a621-2ed0-c5a05e6ba6d1";
  role_name_label = "vm.shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_clean_reboot = 
  { (* 441/1968 *)
  role_uuid = "e0953596-a798-5359-5ae9-dc7d3cc23411";
  role_name_label = "vm.clean_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_hard_shutdown = 
  { (* 442/1968 *)
  role_uuid = "0c318a73-1355-8297-1aa7-7b59652d83eb";
  role_name_label = "vm.hard_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_power_state_reset = 
  { (* 443/1968 *)
  role_uuid = "606aa02e-97ba-211c-ec38-d06b1ef5ed89";
  role_name_label = "vm.power_state_reset";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_hard_reboot = 
  { (* 444/1968 *)
  role_uuid = "499c5989-c80a-2567-6f8b-50b0cf1f569a";
  role_name_label = "vm.hard_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_suspend = 
  { (* 445/1968 *)
  role_uuid = "0054aad9-6816-61a5-593d-ffcf68fe7c51";
  role_name_label = "vm.suspend";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_csvm = 
  { (* 446/1968 *)
  role_uuid = "4f62cf52-b15f-d722-3b4d-51a9c67ecf9a";
  role_name_label = "vm.csvm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_resume = 
  { (* 447/1968 *)
  role_uuid = "80305d17-0b56-9f66-6d8c-40abe30a928a";
  role_name_label = "vm.resume";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_is_default_template = 
  { (* 448/1968 *)
  role_uuid = "12bf18e1-da00-5a8d-093d-e79acfaf5ac0";
  role_name_label = "vm.set_is_default_template";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_hard_reboot_internal = 
  { (* 449/1968 *)
  role_uuid = "55bb7e66-73d2-3509-f4e8-77c8ec2e7771";
  role_name_label = "vm.hard_reboot_internal";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_resume_on = 
  { (* 450/1968 *)
  role_uuid = "0d61beaa-950d-ce01-5971-cd55d77d0270";
  role_name_label = "vm.resume_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_pool_migrate = 
  { (* 451/1968 *)
  role_uuid = "db89f0c4-5678-d02c-dbc9-ade235685c16";
  role_name_label = "vm.pool_migrate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_pool_migrate_complete = 
  { (* 452/1968 *)
  role_uuid = "9a38b098-e1d0-7721-6817-e74d3cc63321";
  role_name_label = "vm.pool_migrate_complete";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_VCPUs_number_live = 
  { (* 453/1968 *)
  role_uuid = "7ff61b17-b047-7486-b476-3a46d8a3f5dc";
  role_name_label = "vm.set_vcpus_number_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_VCPUs_params_live = 
  { (* 454/1968 *)
  role_uuid = "7e213280-e967-f94d-2663-7c0cd886aa71";
  role_name_label = "vm.add_to_vcpus_params_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_NVRAM = 
  { (* 455/1968 *)
  role_uuid = "b71d065b-53eb-ba0a-4eb7-d238f8cfca75";
  role_name_label = "vm.set_nvram";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_add_to_NVRAM = 
  { (* 456/1968 *)
  role_uuid = "324e3a9d-b645-8dad-de1d-3b74bb3e683b";
  role_name_label = "vm.add_to_nvram";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_remove_from_NVRAM = 
  { (* 457/1968 *)
  role_uuid = "2b70566c-aa22-a7d7-ba0a-5597a0fb3652";
  role_name_label = "vm.remove_from_nvram";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_ha_restart_priority = 
  { (* 458/1968 *)
  role_uuid = "196a22a7-3dab-e13d-19da-0e143da24513";
  role_name_label = "vm.set_ha_restart_priority";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_ha_always_run = 
  { (* 459/1968 *)
  role_uuid = "434c57c4-d929-3bbc-e5e1-7549250f96a4";
  role_name_label = "vm.set_ha_always_run";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_compute_memory_overhead = 
  { (* 460/1968 *)
  role_uuid = "d443b5d9-94b5-50ce-a635-1ca03b81bcb7";
  role_name_label = "vm.compute_memory_overhead";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_dynamic_max = 
  { (* 461/1968 *)
  role_uuid = "3904db64-cf40-5c0d-9dfd-f97f8a5c4746";
  role_name_label = "vm.set_memory_dynamic_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_dynamic_min = 
  { (* 462/1968 *)
  role_uuid = "73494c5b-8e2d-5a6e-ffe3-1b7b7bc64370";
  role_name_label = "vm.set_memory_dynamic_min";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_dynamic_range = 
  { (* 463/1968 *)
  role_uuid = "bfac8769-a392-43a1-ee61-7efe606bddbd";
  role_name_label = "vm.set_memory_dynamic_range";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_static_max = 
  { (* 464/1968 *)
  role_uuid = "1330c0d2-46d4-907c-dc55-725b8eea1b3e";
  role_name_label = "vm.set_memory_static_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_static_min = 
  { (* 465/1968 *)
  role_uuid = "49fbebcc-02ad-db79-cfb4-b3785cd53591";
  role_name_label = "vm.set_memory_static_min";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_static_range = 
  { (* 466/1968 *)
  role_uuid = "2c2b24ff-c9f5-e38c-ca9e-f3301fb492d5";
  role_name_label = "vm.set_memory_static_range";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_limits = 
  { (* 467/1968 *)
  role_uuid = "ae7f81c8-3176-2c9b-98b2-0860a8df1037";
  role_name_label = "vm.set_memory_limits";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory = 
  { (* 468/1968 *)
  role_uuid = "8d1a880e-2044-ee29-9915-592eacace234";
  role_name_label = "vm.set_memory";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_memory_target_live = 
  { (* 469/1968 *)
  role_uuid = "9be81833-9377-e63c-a52b-84bf2885644d";
  role_name_label = "vm.set_memory_target_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_wait_memory_target_live = 
  { (* 470/1968 *)
  role_uuid = "ac16b434-b718-b77f-e797-4c8032c9a21b";
  role_name_label = "vm.wait_memory_target_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_cooperative = 
  { (* 471/1968 *)
  role_uuid = "de8bf714-f486-251e-f6f5-e566b8de1a9e";
  role_name_label = "vm.get_cooperative";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_HVM_shadow_multiplier = 
  { (* 472/1968 *)
  role_uuid = "4f02c846-8a2c-b20c-9641-9f8019ccfe23";
  role_name_label = "vm.set_hvm_shadow_multiplier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_shadow_multiplier_live = 
  { (* 473/1968 *)
  role_uuid = "5eda22ca-411c-59df-3c2d-e8c40ee2a641";
  role_name_label = "vm.set_shadow_multiplier_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_VCPUs_max = 
  { (* 474/1968 *)
  role_uuid = "a23b22f9-bca1-caab-136d-9d1c6ee976b1";
  role_name_label = "vm.set_vcpus_max";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_VCPUs_at_startup = 
  { (* 475/1968 *)
  role_uuid = "5b776f2e-a041-f093-8497-48c16883f061";
  role_name_label = "vm.set_vcpus_at_startup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_send_sysrq = 
  { (* 476/1968 *)
  role_uuid = "1ede96f4-2e64-10e5-2e6d-17910d2cc719";
  role_name_label = "vm.send_sysrq";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_send_trigger = 
  { (* 477/1968 *)
  role_uuid = "8441d718-7ef2-b325-bf57-e30dc4db816f";
  role_name_label = "vm.send_trigger";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_maximise_memory = 
  { (* 478/1968 *)
  role_uuid = "b58c1211-94fb-cc3f-668f-9c64343d5ef6";
  role_name_label = "vm.maximise_memory";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_migrate_send = 
  { (* 479/1968 *)
  role_uuid = "f91b4e6e-e238-9fad-e78a-a61f6c222122";
  role_name_label = "vm.migrate_send";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_can_migrate = 
  { (* 480/1968 *)
  role_uuid = "2c3326c9-127f-aee9-2e6b-520465156ca9";
  role_name_label = "vm.assert_can_migrate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_can_migrate_sender = 
  { (* 481/1968 *)
  role_uuid = "29d37636-6ed3-172a-4f77-8caf83f52cbe";
  role_name_label = "vm.assert_can_migrate_sender";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_boot_record = 
  { (* 482/1968 *)
  role_uuid = "d8160e8f-a9e8-ad41-98ca-ddd4b20f5ca0";
  role_name_label = "vm.get_boot_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_data_sources = 
  { (* 483/1968 *)
  role_uuid = "da44ea34-34ce-eee1-0fe5-e2fbd374087c";
  role_name_label = "vm.get_data_sources";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_record_data_source = 
  { (* 484/1968 *)
  role_uuid = "291376bb-00a4-4520-d42b-6fc685798827";
  role_name_label = "vm.record_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_query_data_source = 
  { (* 485/1968 *)
  role_uuid = "c0eeaefd-fce4-4122-bf5f-6548c7627ecd";
  role_name_label = "vm.query_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_forget_data_source_archives = 
  { (* 486/1968 *)
  role_uuid = "c76febe4-ccb8-b0f6-d9f3-eddfb8068cbe";
  role_name_label = "vm.forget_data_source_archives";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_operation_valid = 
  { (* 487/1968 *)
  role_uuid = "0a6ea798-3a27-ebde-9356-6cdd5aa0af1c";
  role_name_label = "vm.assert_operation_valid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_update_allowed_operations = 
  { (* 488/1968 *)
  role_uuid = "ff848eeb-fe92-c7b0-9a93-177287cc1871";
  role_name_label = "vm.update_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_allowed_VBD_devices = 
  { (* 489/1968 *)
  role_uuid = "4eb6785b-2126-b2f8-2c55-f5a0b59694e9";
  role_name_label = "vm.get_allowed_vbd_devices";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_allowed_VIF_devices = 
  { (* 490/1968 *)
  role_uuid = "f4a6ec3c-6939-f4d0-9a0c-de0c4af7e473";
  role_name_label = "vm.get_allowed_vif_devices";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_possible_hosts = 
  { (* 491/1968 *)
  role_uuid = "7862cac7-5a00-3e1c-fa98-1ccad464efde";
  role_name_label = "vm.get_possible_hosts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_can_boot_here = 
  { (* 492/1968 *)
  role_uuid = "7afd9229-b870-bc5f-9dd0-c8e3aae1edd8";
  role_name_label = "vm.assert_can_boot_here";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_atomic_set_resident_on = 
  { (* 493/1968 *)
  role_uuid = "79bd2758-d1aa-8671-7419-cebad40a0eac";
  role_name_label = "vm.atomic_set_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_create_new_blob = 
  { (* 494/1968 *)
  role_uuid = "222b2a69-0e63-09d7-7547-63753f22a07e";
  role_name_label = "vm.create_new_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_s3_suspend = 
  { (* 495/1968 *)
  role_uuid = "ab13cd53-fee2-e913-c1d5-d8a73d183c04";
  role_name_label = "vm.s3_suspend";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_s3_resume = 
  { (* 496/1968 *)
  role_uuid = "50c826b9-553f-0f9d-6ec5-e56c4bfc700e";
  role_name_label = "vm.s3_resume";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_agile = 
  { (* 497/1968 *)
  role_uuid = "dac05e76-f5e0-98e1-0fd7-f1fee9f6ebf9";
  role_name_label = "vm.assert_agile";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_update_snapshot_metadata = 
  { (* 498/1968 *)
  role_uuid = "f24bf12d-005b-9aa6-7a45-1007eb1d8d47";
  role_name_label = "vm.update_snapshot_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_retrieve_wlb_recommendations = 
  { (* 499/1968 *)
  role_uuid = "e558eee8-cc61-ab94-2838-d11ecb19b9de";
  role_name_label = "vm.retrieve_wlb_recommendations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_bios_strings = 
  { (* 500/1968 *)
  role_uuid = "d7d35a63-f2ac-eac5-27cf-fe9bcd7948fe";
  role_name_label = "vm.set_bios_strings";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_copy_bios_strings = 
  { (* 501/1968 *)
  role_uuid = "f0b68388-4ffe-ae16-785c-73bf1daf76de";
  role_name_label = "vm.copy_bios_strings";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_protection_policy = 
  { (* 502/1968 *)
  role_uuid = "171d112c-db97-c8ca-5322-c06f3b95f987";
  role_name_label = "vm.set_protection_policy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_snapshot_schedule = 
  { (* 503/1968 *)
  role_uuid = "1d59cc74-7ba3-4fe0-89f9-10204b3717a6";
  role_name_label = "vm.set_snapshot_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_start_delay = 
  { (* 504/1968 *)
  role_uuid = "943b87d0-c97d-9dc3-4861-4cd3405d2166";
  role_name_label = "vm.set_start_delay";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_shutdown_delay = 
  { (* 505/1968 *)
  role_uuid = "562072f2-255d-6b53-1f30-4665c151ba36";
  role_name_label = "vm.set_shutdown_delay";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_order = 
  { (* 506/1968 *)
  role_uuid = "ce7d44fe-5019-f0e1-c44b-284d048b53ab";
  role_name_label = "vm.set_order";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_suspend_VDI = 
  { (* 507/1968 *)
  role_uuid = "889dd3b9-5554-3819-b5fa-1853a3527d33";
  role_name_label = "vm.set_suspend_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_assert_can_be_recovered = 
  { (* 508/1968 *)
  role_uuid = "cca9c4ef-8dc4-3928-6973-1001fefddcc1";
  role_name_label = "vm.assert_can_be_recovered";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_SRs_required_for_recovery = 
  { (* 509/1968 *)
  role_uuid = "26be94cd-2b88-3f58-64bb-299b603fd6ad";
  role_name_label = "vm.get_srs_required_for_recovery";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_recover = 
  { (* 510/1968 *)
  role_uuid = "1f582a02-628e-1dc8-3f8e-fbcf9e9cc8eb";
  role_name_label = "vm.recover";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_import_convert = 
  { (* 511/1968 *)
  role_uuid = "bb0a41c6-9f17-3373-fceb-43ef16b241b5";
  role_name_label = "vm.import_convert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_appliance = 
  { (* 512/1968 *)
  role_uuid = "40c692b1-cd75-58f2-1bbf-47972787d296";
  role_name_label = "vm.set_appliance";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_query_services = 
  { (* 513/1968 *)
  role_uuid = "829881ed-22e8-99eb-6180-689a1d01d1ac";
  role_name_label = "vm.query_services";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_call_plugin = 
  { (* 514/1968 *)
  role_uuid = "7c274d21-8ca8-415f-bcda-cbc477d75658";
  role_name_label = "vm.call_plugin";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_has_vendor_device = 
  { (* 515/1968 *)
  role_uuid = "b7e3d9ad-91e4-ade9-f88e-cdedfe73e272";
  role_name_label = "vm.set_has_vendor_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_import = 
  { (* 516/1968 *)
  role_uuid = "be662158-71b5-b137-08ef-169d066e4c1f";
  role_name_label = "vm.import";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_actions_after_crash = 
  { (* 517/1968 *)
  role_uuid = "1794530b-615b-581c-6a04-f5582a545c32";
  role_name_label = "vm.set_actions_after_crash";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_domain_type = 
  { (* 518/1968 *)
  role_uuid = "b6e53300-eb3d-9777-6e44-5a75b9c41932";
  role_name_label = "vm.set_domain_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_HVM_boot_policy = 
  { (* 519/1968 *)
  role_uuid = "aa8f3abf-5f51-8ef1-038c-5f5391c1762e";
  role_name_label = "vm.set_hvm_boot_policy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_set_NVRAM_EFI_variables = 
  { (* 520/1968 *)
  role_uuid = "ff6cab92-3ca2-eff7-0751-1613a8565898";
  role_name_label = "vm.set_nvram_efi_variables";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_all = 
  { (* 521/1968 *)
  role_uuid = "78595ea9-9a7b-2bb2-b7ac-888947bb5f71";
  role_name_label = "vm.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_all_records_where = 
  { (* 522/1968 *)
  role_uuid = "05540a9b-fd89-62d4-15c2-569bb74a45c9";
  role_name_label = "vm.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_get_all_records = 
  { (* 523/1968 *)
  role_uuid = "8624fdc6-5a79-3477-2f2b-a692d687856f";
  role_name_label = "vm.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_record = 
  { (* 524/1968 *)
  role_uuid = "6c868e70-45f5-7510-e697-31565da1b645";
  role_name_label = "vm_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_by_uuid = 
  { (* 525/1968 *)
  role_uuid = "50baf2ac-cd2d-8c58-6b49-7d922a38d506";
  role_name_label = "vm_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_uuid = 
  { (* 526/1968 *)
  role_uuid = "b8d7db71-88c3-3973-0f76-afb5ea8758b2";
  role_name_label = "vm_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_memory_actual = 
  { (* 527/1968 *)
  role_uuid = "b62edf58-9add-6c3a-ca6d-9f6bbeb2c8fa";
  role_name_label = "vm_metrics.get_memory_actual";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_VCPUs_number = 
  { (* 528/1968 *)
  role_uuid = "c7b3adec-b936-8480-8162-4d0176e80494";
  role_name_label = "vm_metrics.get_vcpus_number";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_VCPUs_utilisation = 
  { (* 529/1968 *)
  role_uuid = "1611b4a5-6d76-0608-be83-bb85cc0f4401";
  role_name_label = "vm_metrics.get_vcpus_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_VCPUs_CPU = 
  { (* 530/1968 *)
  role_uuid = "76add74c-9a76-ec09-e9ba-062f5fad673a";
  role_name_label = "vm_metrics.get_vcpus_cpu";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_VCPUs_params = 
  { (* 531/1968 *)
  role_uuid = "1eb1cfda-f398-99f9-2b7b-5a186bfb5769";
  role_name_label = "vm_metrics.get_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_VCPUs_flags = 
  { (* 532/1968 *)
  role_uuid = "48e48870-e314-22ff-23e7-9c81e0a09de8";
  role_name_label = "vm_metrics.get_vcpus_flags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_state = 
  { (* 533/1968 *)
  role_uuid = "6b99cb7e-9854-bbfe-13c4-23c85b58cd27";
  role_name_label = "vm_metrics.get_state";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_start_time = 
  { (* 534/1968 *)
  role_uuid = "3b17375c-d99f-b75d-771a-d6bd526bc732";
  role_name_label = "vm_metrics.get_start_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_install_time = 
  { (* 535/1968 *)
  role_uuid = "330de495-5f10-90ae-9985-a622287978cd";
  role_name_label = "vm_metrics.get_install_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_last_updated = 
  { (* 536/1968 *)
  role_uuid = "6950f134-0be9-1cf8-a418-b84f72b5c550";
  role_name_label = "vm_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_other_config = 
  { (* 537/1968 *)
  role_uuid = "2da47eda-326e-bc79-2991-4178a7f91aa2";
  role_name_label = "vm_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_hvm = 
  { (* 538/1968 *)
  role_uuid = "b745a7f1-7a8d-7078-cfc8-a52340c31749";
  role_name_label = "vm_metrics.get_hvm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_nested_virt = 
  { (* 539/1968 *)
  role_uuid = "23638dcf-f351-c061-3de6-48cf2f36480b";
  role_name_label = "vm_metrics.get_nested_virt";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_nomigrate = 
  { (* 540/1968 *)
  role_uuid = "b7c8282a-0150-dbae-ffd5-61099b466262";
  role_name_label = "vm_metrics.get_nomigrate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_current_domain_type = 
  { (* 541/1968 *)
  role_uuid = "69ecfdbb-9d6c-9062-fed7-f5e08a95417f";
  role_name_label = "vm_metrics.get_current_domain_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_set_other_config = 
  { (* 542/1968 *)
  role_uuid = "d3e10235-4c09-4b21-ac38-f5e7118ace9a";
  role_name_label = "vm_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_add_to_other_config = 
  { (* 543/1968 *)
  role_uuid = "1cb862c1-6e27-7e9a-1757-d3340ce05a6a";
  role_name_label = "vm_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_remove_from_other_config = 
  { (* 544/1968 *)
  role_uuid = "4bf0efdd-5a06-f1f2-9e42-235746e68e72";
  role_name_label = "vm_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_all = 
  { (* 545/1968 *)
  role_uuid = "07e67067-0db3-473e-f720-1b13cb7165cb";
  role_name_label = "vm_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_all_records_where = 
  { (* 546/1968 *)
  role_uuid = "59d3a529-afca-f562-204f-bc882519cfc6";
  role_name_label = "vm_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_metrics_get_all_records = 
  { (* 547/1968 *)
  role_uuid = "6745eaf1-b724-7ba1-6adc-6714d87ed055";
  role_name_label = "vm_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_record = 
  { (* 548/1968 *)
  role_uuid = "fb5f1cd9-639c-fe4e-736e-59f602bd6769";
  role_name_label = "vm_guest_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_by_uuid = 
  { (* 549/1968 *)
  role_uuid = "63f5ab90-88e3-b9c7-869a-ad1e4725f6c8";
  role_name_label = "vm_guest_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_uuid = 
  { (* 550/1968 *)
  role_uuid = "8b2811fe-bf52-d656-379d-c4dc786d2863";
  role_name_label = "vm_guest_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_os_version = 
  { (* 551/1968 *)
  role_uuid = "f075184a-6d67-aeee-23f9-4af9fb3fdc70";
  role_name_label = "vm_guest_metrics.get_os_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_PV_drivers_version = 
  { (* 552/1968 *)
  role_uuid = "72acb54c-837e-f60b-5b73-54258ba6f8ce";
  role_name_label = "vm_guest_metrics.get_pv_drivers_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_PV_drivers_up_to_date = 
  { (* 553/1968 *)
  role_uuid = "fc02d213-9915-5d79-f9f9-77981d5e7e61";
  role_name_label = "vm_guest_metrics.get_pv_drivers_up_to_date";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_memory = 
  { (* 554/1968 *)
  role_uuid = "fe33f11b-7386-0023-20a5-5d66b81d1550";
  role_name_label = "vm_guest_metrics.get_memory";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_disks = 
  { (* 555/1968 *)
  role_uuid = "ea08f6e0-a317-ec4e-b863-b58cd69e6f55";
  role_name_label = "vm_guest_metrics.get_disks";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_networks = 
  { (* 556/1968 *)
  role_uuid = "07ba3c3a-6d81-f137-050b-460a090cd95e";
  role_name_label = "vm_guest_metrics.get_networks";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_other = 
  { (* 557/1968 *)
  role_uuid = "c3bf79b8-fc2a-16cc-2579-8fb3f1aee68e";
  role_name_label = "vm_guest_metrics.get_other";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_last_updated = 
  { (* 558/1968 *)
  role_uuid = "b8e13938-03be-2a5d-fc3b-425b8f7966f9";
  role_name_label = "vm_guest_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_other_config = 
  { (* 559/1968 *)
  role_uuid = "d6a91ec9-3979-b47a-3b3b-5bcdfa7176d8";
  role_name_label = "vm_guest_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_live = 
  { (* 560/1968 *)
  role_uuid = "6419de42-529d-e793-ac14-e1afc0f4d3d7";
  role_name_label = "vm_guest_metrics.get_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_can_use_hotplug_vbd = 
  { (* 561/1968 *)
  role_uuid = "8ff24bb9-52a4-52b3-7114-a4ce3dc6fb5c";
  role_name_label = "vm_guest_metrics.get_can_use_hotplug_vbd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_can_use_hotplug_vif = 
  { (* 562/1968 *)
  role_uuid = "dc22e50a-eade-3279-f465-635bcb926b72";
  role_name_label = "vm_guest_metrics.get_can_use_hotplug_vif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_PV_drivers_detected = 
  { (* 563/1968 *)
  role_uuid = "96f7bccc-e11f-dc28-22e7-1c697c992e9e";
  role_name_label = "vm_guest_metrics.get_pv_drivers_detected";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_set_other_config = 
  { (* 564/1968 *)
  role_uuid = "e17a593c-8a4f-f38a-ebca-9bfefa5ca0d7";
  role_name_label = "vm_guest_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_add_to_other_config = 
  { (* 565/1968 *)
  role_uuid = "52e71fd0-4e0c-c56d-ecbe-1258494bd886";
  role_name_label = "vm_guest_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_remove_from_other_config = 
  { (* 566/1968 *)
  role_uuid = "7980080f-48b6-928b-4b88-114da9c5fd80";
  role_name_label = "vm_guest_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_all = 
  { (* 567/1968 *)
  role_uuid = "36ef005e-7879-0edf-e7d9-54b5b5f6e467";
  role_name_label = "vm_guest_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_all_records_where = 
  { (* 568/1968 *)
  role_uuid = "ff2c84a9-3ea0-6792-fe4d-3215c397f3b0";
  role_name_label = "vm_guest_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_guest_metrics_get_all_records = 
  { (* 569/1968 *)
  role_uuid = "18d16a24-b68d-43cf-69d2-7a5868998306";
  role_name_label = "vm_guest_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_record = 
  { (* 570/1968 *)
  role_uuid = "6d180e8a-3fc3-4459-2526-189b389da794";
  role_name_label = "vmpp.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_by_uuid = 
  { (* 571/1968 *)
  role_uuid = "2ab8c359-c1ec-8a3e-283d-8ae963f6f8f4";
  role_name_label = "vmpp.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_create = 
  { (* 572/1968 *)
  role_uuid = "9f533cce-7cfe-9091-47ad-d061296f0ab7";
  role_name_label = "vmpp.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_destroy = 
  { (* 573/1968 *)
  role_uuid = "66a5a073-316a-fe3d-aa44-7d9f19e49417";
  role_name_label = "vmpp.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_by_name_label = 
  { (* 574/1968 *)
  role_uuid = "4a2b195f-f477-f143-e4db-f96913abdf9a";
  role_name_label = "vmpp.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_uuid = 
  { (* 575/1968 *)
  role_uuid = "4af3e675-5dd0-08c7-b67a-414e85223d40";
  role_name_label = "vmpp.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_name_label = 
  { (* 576/1968 *)
  role_uuid = "cd17195a-9274-0b74-bc8e-3f0c916bfbce";
  role_name_label = "vmpp.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_name_description = 
  { (* 577/1968 *)
  role_uuid = "864a54cb-981c-8bba-19eb-2c76ce406359";
  role_name_label = "vmpp.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_is_policy_enabled = 
  { (* 578/1968 *)
  role_uuid = "37fed550-72a4-a8c8-5468-8bc3bfd1554e";
  role_name_label = "vmpp.get_is_policy_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_backup_type = 
  { (* 579/1968 *)
  role_uuid = "800592e3-30ac-bc00-4274-f9c23e335d57";
  role_name_label = "vmpp.get_backup_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_backup_retention_value = 
  { (* 580/1968 *)
  role_uuid = "699638de-d890-04ef-ea8e-5473742ceb88";
  role_name_label = "vmpp.get_backup_retention_value";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_backup_frequency = 
  { (* 581/1968 *)
  role_uuid = "5dc61f97-020c-3958-1531-9d950ebad058";
  role_name_label = "vmpp.get_backup_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_backup_schedule = 
  { (* 582/1968 *)
  role_uuid = "0f104484-8054-bb43-0685-27030f6bebca";
  role_name_label = "vmpp.get_backup_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_is_backup_running = 
  { (* 583/1968 *)
  role_uuid = "7122efb6-3045-2da0-b503-1524b692a5d8";
  role_name_label = "vmpp.get_is_backup_running";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_backup_last_run_time = 
  { (* 584/1968 *)
  role_uuid = "79a22291-0fca-eeef-d23a-1b796b2123aa";
  role_name_label = "vmpp.get_backup_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_archive_target_type = 
  { (* 585/1968 *)
  role_uuid = "fc844b8c-44f7-0a47-136b-9fdae98759df";
  role_name_label = "vmpp.get_archive_target_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_archive_target_config = 
  { (* 586/1968 *)
  role_uuid = "539ace0a-c714-562d-f153-ce5df5f92265";
  role_name_label = "vmpp.get_archive_target_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_archive_frequency = 
  { (* 587/1968 *)
  role_uuid = "a714bc2b-93c4-7785-d84c-53e40aaabc73";
  role_name_label = "vmpp.get_archive_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_archive_schedule = 
  { (* 588/1968 *)
  role_uuid = "caed3120-c6e2-8d1f-4498-6aa7d966a575";
  role_name_label = "vmpp.get_archive_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_is_archive_running = 
  { (* 589/1968 *)
  role_uuid = "aae2577c-a1a7-9646-9bc5-a9c082108eab";
  role_name_label = "vmpp.get_is_archive_running";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_archive_last_run_time = 
  { (* 590/1968 *)
  role_uuid = "4bfb1275-7c46-d751-4ab4-f19c5e83bd41";
  role_name_label = "vmpp.get_archive_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_VMs = 
  { (* 591/1968 *)
  role_uuid = "1f8ca91b-4ba1-64f0-f0f8-94d0e3198d8f";
  role_name_label = "vmpp.get_vms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_is_alarm_enabled = 
  { (* 592/1968 *)
  role_uuid = "96fbe84c-1cce-dab3-c396-bb28962a8aab";
  role_name_label = "vmpp.get_is_alarm_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_alarm_config = 
  { (* 593/1968 *)
  role_uuid = "0b3c3543-7504-c5eb-4673-31e51971670a";
  role_name_label = "vmpp.get_alarm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_recent_alerts = 
  { (* 594/1968 *)
  role_uuid = "94c23e3b-a7d7-d389-20ea-f5d3ef5c9d0e";
  role_name_label = "vmpp.get_recent_alerts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_name_label = 
  { (* 595/1968 *)
  role_uuid = "edd1d574-8e08-4b9f-b11f-0e7d4b8cd21c";
  role_name_label = "vmpp.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_name_description = 
  { (* 596/1968 *)
  role_uuid = "d6eb160a-fa45-e966-907c-777b372ea662";
  role_name_label = "vmpp.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_is_policy_enabled = 
  { (* 597/1968 *)
  role_uuid = "42534039-8f37-bce6-9039-93d2102f99cc";
  role_name_label = "vmpp.set_is_policy_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_backup_type = 
  { (* 598/1968 *)
  role_uuid = "43e4cda9-b000-a516-5bca-fd645320cd94";
  role_name_label = "vmpp.set_backup_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_protect_now = 
  { (* 599/1968 *)
  role_uuid = "f21699c6-5b6b-cdb6-1975-bc9a4db2bf4b";
  role_name_label = "vmpp.protect_now";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_archive_now = 
  { (* 600/1968 *)
  role_uuid = "99fb86a7-2a9c-1f78-7c1d-5dd8507e9be4";
  role_name_label = "vmpp.archive_now";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_create_alert = 
  { (* 601/1968 *)
  role_uuid = "88978fbb-a2fc-1242-39a7-7dc41f662b6f";
  role_name_label = "vmpp.create_alert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_alerts = 
  { (* 602/1968 *)
  role_uuid = "b6cf7d25-180e-be25-9159-e0e307f4aeea";
  role_name_label = "vmpp.get_alerts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_backup_retention_value = 
  { (* 603/1968 *)
  role_uuid = "312e70a7-5688-3a9d-a2cf-4205e3f90291";
  role_name_label = "vmpp.set_backup_retention_value";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_is_backup_running = 
  { (* 604/1968 *)
  role_uuid = "15b22101-f7aa-10f5-aa22-afc6c934bb0c";
  role_name_label = "vmpp.set_is_backup_running";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_is_archive_running = 
  { (* 605/1968 *)
  role_uuid = "8c0d169c-e03f-a63a-d99a-58d8cea97f4e";
  role_name_label = "vmpp.set_is_archive_running";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_backup_frequency = 
  { (* 606/1968 *)
  role_uuid = "85dc0856-788d-cf0e-f03a-f48410eb8f09";
  role_name_label = "vmpp.set_backup_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_backup_schedule = 
  { (* 607/1968 *)
  role_uuid = "1b3e1eec-b9f2-7116-639d-20bdbd0e1391";
  role_name_label = "vmpp.set_backup_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_archive_frequency = 
  { (* 608/1968 *)
  role_uuid = "af7b137a-4073-820d-6d70-d8a2af8fadcd";
  role_name_label = "vmpp.set_archive_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_archive_schedule = 
  { (* 609/1968 *)
  role_uuid = "db06e822-3b47-bdb9-f423-547920353742";
  role_name_label = "vmpp.set_archive_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_archive_target_type = 
  { (* 610/1968 *)
  role_uuid = "8f9cbce3-0281-58b3-3b14-aa2771ab5f7e";
  role_name_label = "vmpp.set_archive_target_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_archive_target_config = 
  { (* 611/1968 *)
  role_uuid = "659f50a3-c9d9-42dc-2fe2-4466b1f79ce2";
  role_name_label = "vmpp.set_archive_target_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_is_alarm_enabled = 
  { (* 612/1968 *)
  role_uuid = "6da94f95-a02e-f573-12bf-dcfde7e43499";
  role_name_label = "vmpp.set_is_alarm_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_alarm_config = 
  { (* 613/1968 *)
  role_uuid = "41c3ad8a-a3ed-1b47-c9bd-8a94704ddc19";
  role_name_label = "vmpp.set_alarm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_add_to_backup_schedule = 
  { (* 614/1968 *)
  role_uuid = "5ed9712b-4b5f-6ec7-8403-cc4d9df52722";
  role_name_label = "vmpp.add_to_backup_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_add_to_archive_target_config = 
  { (* 615/1968 *)
  role_uuid = "8f4e82a4-f8be-c01e-10a6-d0a74f28733c";
  role_name_label = "vmpp.add_to_archive_target_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_add_to_archive_schedule = 
  { (* 616/1968 *)
  role_uuid = "d5d12c34-1ff7-0549-e6b1-b333ad750dc6";
  role_name_label = "vmpp.add_to_archive_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_add_to_alarm_config = 
  { (* 617/1968 *)
  role_uuid = "956adae3-0a93-7d20-5461-a3ad098af157";
  role_name_label = "vmpp.add_to_alarm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_remove_from_backup_schedule = 
  { (* 618/1968 *)
  role_uuid = "ba585c04-ee5f-5a5e-794b-ef25c06fa1fd";
  role_name_label = "vmpp.remove_from_backup_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_remove_from_archive_target_config = 
  { (* 619/1968 *)
  role_uuid = "b09c0eac-e6f7-a1e5-0fe4-3adf9d6d38bc";
  role_name_label = "vmpp.remove_from_archive_target_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_remove_from_archive_schedule = 
  { (* 620/1968 *)
  role_uuid = "1482f01e-2355-577f-f230-2e51fddf34d4";
  role_name_label = "vmpp.remove_from_archive_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_remove_from_alarm_config = 
  { (* 621/1968 *)
  role_uuid = "cce6834a-f698-3755-c4b2-17d866f608d4";
  role_name_label = "vmpp.remove_from_alarm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_backup_last_run_time = 
  { (* 622/1968 *)
  role_uuid = "f55a402f-6cf5-db33-f139-095c01f50a88";
  role_name_label = "vmpp.set_backup_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_set_archive_last_run_time = 
  { (* 623/1968 *)
  role_uuid = "c9417287-1df6-ec28-9930-493c2cda9c6a";
  role_name_label = "vmpp.set_archive_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_all = 
  { (* 624/1968 *)
  role_uuid = "8dfb37f5-203f-2ea4-597f-7c350f6233f1";
  role_name_label = "vmpp.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_all_records_where = 
  { (* 625/1968 *)
  role_uuid = "3f9bb6d6-db4e-b115-a2c3-adf553886983";
  role_name_label = "vmpp.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMPP_get_all_records = 
  { (* 626/1968 *)
  role_uuid = "2770c2e9-7d35-17f7-5f34-9814d604a3c7";
  role_name_label = "vmpp.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_record = 
  { (* 627/1968 *)
  role_uuid = "7185764a-3925-6e3c-5969-717c03fc3369";
  role_name_label = "vmss.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_by_uuid = 
  { (* 628/1968 *)
  role_uuid = "246cbb21-4760-5a6f-b0ae-833701a48c8c";
  role_name_label = "vmss.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_create = 
  { (* 629/1968 *)
  role_uuid = "c28f49eb-4d58-f1fa-93e2-5a6ce3ff7b8a";
  role_name_label = "vmss.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_destroy = 
  { (* 630/1968 *)
  role_uuid = "61de214b-fb46-846a-d393-ab64f7c0a8c8";
  role_name_label = "vmss.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_by_name_label = 
  { (* 631/1968 *)
  role_uuid = "8831da36-1edb-6b95-53cc-cb7b3d435135";
  role_name_label = "vmss.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_uuid = 
  { (* 632/1968 *)
  role_uuid = "da70143d-1326-38e1-8a8a-91b55a0193c0";
  role_name_label = "vmss.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_name_label = 
  { (* 633/1968 *)
  role_uuid = "68cd085a-2a5d-dc31-f821-85107a7f4d9b";
  role_name_label = "vmss.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_name_description = 
  { (* 634/1968 *)
  role_uuid = "e8b536c8-13f5-9501-069f-3921a892dd6b";
  role_name_label = "vmss.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_enabled = 
  { (* 635/1968 *)
  role_uuid = "1f3f234e-2398-4bbb-cfbd-8262830e4cf9";
  role_name_label = "vmss.get_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_type = 
  { (* 636/1968 *)
  role_uuid = "c051d73b-c14c-55dd-7ef0-94fdad2de675";
  role_name_label = "vmss.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_retained_snapshots = 
  { (* 637/1968 *)
  role_uuid = "1975058b-15cc-1fa6-ac83-a54b28bf37dd";
  role_name_label = "vmss.get_retained_snapshots";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_frequency = 
  { (* 638/1968 *)
  role_uuid = "bcdf7cdb-760e-72d6-56c7-8cba9175b1a1";
  role_name_label = "vmss.get_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_schedule = 
  { (* 639/1968 *)
  role_uuid = "3fada75b-d556-519c-687c-1190aa56554f";
  role_name_label = "vmss.get_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_last_run_time = 
  { (* 640/1968 *)
  role_uuid = "ab67a5d5-3dcb-bda6-7c2b-b80e7e9507aa";
  role_name_label = "vmss.get_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_VMs = 
  { (* 641/1968 *)
  role_uuid = "c5c50bea-a3c5-2fa6-3423-29c1ae20b703";
  role_name_label = "vmss.get_vms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_name_label = 
  { (* 642/1968 *)
  role_uuid = "968e2230-d84d-8d89-b808-302d00f9f33f";
  role_name_label = "vmss.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_name_description = 
  { (* 643/1968 *)
  role_uuid = "33d09b77-9409-25d2-884a-c6a123abadc5";
  role_name_label = "vmss.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_enabled = 
  { (* 644/1968 *)
  role_uuid = "d53c2824-8fdb-9c18-6301-22c8363f2b45";
  role_name_label = "vmss.set_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_snapshot_now = 
  { (* 645/1968 *)
  role_uuid = "66dcd69b-42f4-b736-42a5-8aac2987bde8";
  role_name_label = "vmss.snapshot_now";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_retained_snapshots = 
  { (* 646/1968 *)
  role_uuid = "9320bec0-e619-ad52-9c62-2374a5fef7fa";
  role_name_label = "vmss.set_retained_snapshots";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_frequency = 
  { (* 647/1968 *)
  role_uuid = "1f93630a-72dd-0315-27b5-e61f8c62ef78";
  role_name_label = "vmss.set_frequency";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_schedule = 
  { (* 648/1968 *)
  role_uuid = "c8e9c3b4-c317-7868-a022-5712167398fa";
  role_name_label = "vmss.set_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_add_to_schedule = 
  { (* 649/1968 *)
  role_uuid = "541bd02a-b0fd-4b60-134f-0ce9700a6ae3";
  role_name_label = "vmss.add_to_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_remove_from_schedule = 
  { (* 650/1968 *)
  role_uuid = "4919ccaf-cf01-a758-1fd7-994675f33f14";
  role_name_label = "vmss.remove_from_schedule";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_last_run_time = 
  { (* 651/1968 *)
  role_uuid = "4ff240a3-c18c-800d-7820-5f532b2f30a3";
  role_name_label = "vmss.set_last_run_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_set_type = 
  { (* 652/1968 *)
  role_uuid = "21d8c680-5aac-9610-4e6c-d7c2c32f718f";
  role_name_label = "vmss.set_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_all = 
  { (* 653/1968 *)
  role_uuid = "f4af13fd-2e3f-5fab-5cd7-7b9a74aa0f0c";
  role_name_label = "vmss.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_all_records_where = 
  { (* 654/1968 *)
  role_uuid = "97e3f614-fad2-7035-e675-e0b3ecffed45";
  role_name_label = "vmss.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VMSS_get_all_records = 
  { (* 655/1968 *)
  role_uuid = "572d74e9-61e1-4ad1-2f96-1f55576ef8f1";
  role_name_label = "vmss.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_record = 
  { (* 656/1968 *)
  role_uuid = "9760f691-5295-ecc8-bf2c-3865249c1f6b";
  role_name_label = "vm_appliance.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_by_uuid = 
  { (* 657/1968 *)
  role_uuid = "a2a09fcd-1313-554c-9051-f4dd1c4474fe";
  role_name_label = "vm_appliance.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_create = 
  { (* 658/1968 *)
  role_uuid = "82b892b0-b416-c7a1-298d-6030038b4d1a";
  role_name_label = "vm_appliance.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_destroy = 
  { (* 659/1968 *)
  role_uuid = "955fa7ad-d7c2-4ade-aa2b-0bc95fb4364b";
  role_name_label = "vm_appliance.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_by_name_label = 
  { (* 660/1968 *)
  role_uuid = "4a16dd04-0fbb-e5bc-af88-01046c72c54b";
  role_name_label = "vm_appliance.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_uuid = 
  { (* 661/1968 *)
  role_uuid = "9350ea5c-ca28-1ece-9c6f-1c4ab918d119";
  role_name_label = "vm_appliance.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_name_label = 
  { (* 662/1968 *)
  role_uuid = "d529b00f-b546-b67d-c50e-f0d216b2ef56";
  role_name_label = "vm_appliance.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_name_description = 
  { (* 663/1968 *)
  role_uuid = "1ea042ad-d922-f7cb-90ab-9ac09e011670";
  role_name_label = "vm_appliance.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_allowed_operations = 
  { (* 664/1968 *)
  role_uuid = "0d87eda4-f5b4-1c19-ff98-f1bc171afb8f";
  role_name_label = "vm_appliance.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_current_operations = 
  { (* 665/1968 *)
  role_uuid = "6d3feec4-ad36-040d-b555-8c49b8015bf2";
  role_name_label = "vm_appliance.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_VMs = 
  { (* 666/1968 *)
  role_uuid = "4c964b58-b18d-599c-140c-3d7e6fee0949";
  role_name_label = "vm_appliance.get_vms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_set_name_label = 
  { (* 667/1968 *)
  role_uuid = "f9abf01e-9fd9-657d-9ad8-9d63a39e7c1f";
  role_name_label = "vm_appliance.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_set_name_description = 
  { (* 668/1968 *)
  role_uuid = "86b1fd97-2498-0209-d341-78b596de9885";
  role_name_label = "vm_appliance.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_start = 
  { (* 669/1968 *)
  role_uuid = "3f6f6ef7-c08c-f1a3-a05f-33956e2f3e2e";
  role_name_label = "vm_appliance.start";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_clean_shutdown = 
  { (* 670/1968 *)
  role_uuid = "1f776a73-446d-1f0d-eeed-44ad6464f02c";
  role_name_label = "vm_appliance.clean_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_hard_shutdown = 
  { (* 671/1968 *)
  role_uuid = "52df136f-591e-cd8c-8588-3a34b9be4117";
  role_name_label = "vm_appliance.hard_shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_shutdown = 
  { (* 672/1968 *)
  role_uuid = "ab69daa2-fbe0-d709-901a-80bb8fa49f15";
  role_name_label = "vm_appliance.shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_assert_can_be_recovered = 
  { (* 673/1968 *)
  role_uuid = "fa09b51e-0da5-a900-4da2-33752ad8a112";
  role_name_label = "vm_appliance.assert_can_be_recovered";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_SRs_required_for_recovery = 
  { (* 674/1968 *)
  role_uuid = "aac9af5a-ebb8-f97c-480d-9812eb18f15b";
  role_name_label = "vm_appliance.get_srs_required_for_recovery";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_recover = 
  { (* 675/1968 *)
  role_uuid = "bebace76-69a8-cb40-82aa-5ecd4b882075";
  role_name_label = "vm_appliance.recover";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_all = 
  { (* 676/1968 *)
  role_uuid = "f05760c3-46d9-9cf5-8831-330943a33ce2";
  role_name_label = "vm_appliance.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_all_records_where = 
  { (* 677/1968 *)
  role_uuid = "9a9b62f1-2fae-cc0c-03ff-147b35e7917e";
  role_name_label = "vm_appliance.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VM_appliance_get_all_records = 
  { (* 678/1968 *)
  role_uuid = "e39b5c55-fcf4-41de-74c9-a38e278e85db";
  role_name_label = "vm_appliance.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_record = 
  { (* 679/1968 *)
  role_uuid = "ca111bd4-768b-a624-f752-4d4a51ab2471";
  role_name_label = "dr_task.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_by_uuid = 
  { (* 680/1968 *)
  role_uuid = "66ce4f5c-82d0-457d-dced-433bb8b5229e";
  role_name_label = "dr_task.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_uuid = 
  { (* 681/1968 *)
  role_uuid = "16474184-4484-6193-a7f4-2baa521a56e7";
  role_name_label = "dr_task.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_introduced_SRs = 
  { (* 682/1968 *)
  role_uuid = "cf7a0ae8-7440-c6ac-ef72-5454aadc19a7";
  role_name_label = "dr_task.get_introduced_srs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_create = 
  { (* 683/1968 *)
  role_uuid = "6226ec36-c110-cf46-6923-b8917c576b09";
  role_name_label = "dr_task.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_destroy = 
  { (* 684/1968 *)
  role_uuid = "209713e3-3188-5f83-125a-4d313e4aac7b";
  role_name_label = "dr_task.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_all = 
  { (* 685/1968 *)
  role_uuid = "dcdaf30f-8e37-97dc-8d7f-2e8bb05101e4";
  role_name_label = "dr_task.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_all_records_where = 
  { (* 686/1968 *)
  role_uuid = "1c6ae07b-8cc7-3334-d143-40fba15e5d1b";
  role_name_label = "dr_task.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_DR_task_get_all_records = 
  { (* 687/1968 *)
  role_uuid = "26c0013e-35b5-dcee-9b1c-e3e58b6ea1d1";
  role_name_label = "dr_task.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_record = 
  { (* 688/1968 *)
  role_uuid = "38d676a9-1eca-992f-8768-65856d28ec39";
  role_name_label = "host.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_by_uuid = 
  { (* 689/1968 *)
  role_uuid = "76efe753-ae98-21ef-4ee0-c06be1ed6bf8";
  role_name_label = "host.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_by_name_label = 
  { (* 690/1968 *)
  role_uuid = "7ace0159-c007-b95d-d43e-90af54f7b4f3";
  role_name_label = "host.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_uuid = 
  { (* 691/1968 *)
  role_uuid = "0511b768-32ca-e60a-83d1-6089ee037abd";
  role_name_label = "host.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_name_label = 
  { (* 692/1968 *)
  role_uuid = "8b731fe2-d6fa-2b5a-738b-aa1501e2a00c";
  role_name_label = "host.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_name_description = 
  { (* 693/1968 *)
  role_uuid = "c2e03e88-ade6-a5ff-db5b-b92e0bc2e580";
  role_name_label = "host.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_memory_overhead = 
  { (* 694/1968 *)
  role_uuid = "627b53af-258b-eaec-feec-9a1cfb5e915d";
  role_name_label = "host.get_memory_overhead";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_allowed_operations = 
  { (* 695/1968 *)
  role_uuid = "d6b2a0b1-1991-b740-0d48-242d5b3463b2";
  role_name_label = "host.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_current_operations = 
  { (* 696/1968 *)
  role_uuid = "5502ee79-ceec-099c-740a-42e395dac81b";
  role_name_label = "host.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_API_version_major = 
  { (* 697/1968 *)
  role_uuid = "b498514f-0f98-ec60-df87-f1feed07141b";
  role_name_label = "host.get_api_version_major";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_API_version_minor = 
  { (* 698/1968 *)
  role_uuid = "6ed4d7af-c4eb-85cd-cd11-abdfbf30fe2e";
  role_name_label = "host.get_api_version_minor";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_API_version_vendor = 
  { (* 699/1968 *)
  role_uuid = "0cd88229-8eb6-dd98-09cc-8635498afcd2";
  role_name_label = "host.get_api_version_vendor";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_API_version_vendor_implementation = 
  { (* 700/1968 *)
  role_uuid = "58ac1559-04a8-f7ad-2224-53591cacfcb7";
  role_name_label = "host.get_api_version_vendor_implementation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_enabled = 
  { (* 701/1968 *)
  role_uuid = "d7450039-1e27-7ac8-acc5-a698cb19a525";
  role_name_label = "host.get_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_software_version = 
  { (* 702/1968 *)
  role_uuid = "ae095db7-583e-cfc0-2cd3-db791d3b1671";
  role_name_label = "host.get_software_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_other_config = 
  { (* 703/1968 *)
  role_uuid = "8ddf8bd4-4146-aab7-5e60-37b3c59f060d";
  role_name_label = "host.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_capabilities = 
  { (* 704/1968 *)
  role_uuid = "00f9116e-139e-c5c6-e647-308230cc9f5a";
  role_name_label = "host.get_capabilities";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_cpu_configuration = 
  { (* 705/1968 *)
  role_uuid = "70787b4c-26d0-f9c5-9b31-1c9e291035c4";
  role_name_label = "host.get_cpu_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_sched_policy = 
  { (* 706/1968 *)
  role_uuid = "14ea86d7-eccf-8790-fe68-2cee27f915c0";
  role_name_label = "host.get_sched_policy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_supported_bootloaders = 
  { (* 707/1968 *)
  role_uuid = "7f355dde-ac8c-9a02-ce96-16a1a08c0836";
  role_name_label = "host.get_supported_bootloaders";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_resident_VMs = 
  { (* 708/1968 *)
  role_uuid = "1c6bfef7-d9c9-4b53-4184-c72d5896e910";
  role_name_label = "host.get_resident_vms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_logging = 
  { (* 709/1968 *)
  role_uuid = "8ae37793-9d90-d55d-bd48-328657eac262";
  role_name_label = "host.get_logging";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_PIFs = 
  { (* 710/1968 *)
  role_uuid = "4748a78b-fbc6-06d6-9a9b-0fee76a37e42";
  role_name_label = "host.get_pifs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_suspend_image_sr = 
  { (* 711/1968 *)
  role_uuid = "922f39f2-c948-d0cb-813a-8fb675fe1209";
  role_name_label = "host.get_suspend_image_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_crash_dump_sr = 
  { (* 712/1968 *)
  role_uuid = "5e5aa3af-ee5b-3973-2b26-cf1882900d7c";
  role_name_label = "host.get_crash_dump_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_crashdumps = 
  { (* 713/1968 *)
  role_uuid = "ac681b2a-93d8-00e3-e29c-5fa8f9b6e94b";
  role_name_label = "host.get_crashdumps";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_patches = 
  { (* 714/1968 *)
  role_uuid = "ef0d9a2a-4ab9-5368-fe21-28c9e7556aa3";
  role_name_label = "host.get_patches";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_updates = 
  { (* 715/1968 *)
  role_uuid = "e1302c3a-c817-e454-266a-229ac2dc5603";
  role_name_label = "host.get_updates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_PBDs = 
  { (* 716/1968 *)
  role_uuid = "d13394ed-05a5-8a53-ba59-20525ec873be";
  role_name_label = "host.get_pbds";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_host_CPUs = 
  { (* 717/1968 *)
  role_uuid = "c71d068d-24c4-6d68-8439-3078c968141e";
  role_name_label = "host.get_host_cpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_cpu_info = 
  { (* 718/1968 *)
  role_uuid = "bceff7d6-7267-91cf-fef1-eaa65de886e2";
  role_name_label = "host.get_cpu_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_hostname = 
  { (* 719/1968 *)
  role_uuid = "b9a4873c-7e19-ebec-d524-f1d69da5324b";
  role_name_label = "host.get_hostname";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_address = 
  { (* 720/1968 *)
  role_uuid = "a433bf84-7725-f4e2-6f89-31054403dd87";
  role_name_label = "host.get_address";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_metrics = 
  { (* 721/1968 *)
  role_uuid = "e254be14-8fe4-916c-b287-25b8be1a6502";
  role_name_label = "host.get_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_license_params = 
  { (* 722/1968 *)
  role_uuid = "fae19164-aa28-38ee-e1e5-a3a3082729bf";
  role_name_label = "host.get_license_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_ha_statefiles = 
  { (* 723/1968 *)
  role_uuid = "86907190-69ac-4a19-df3b-6678644e64e8";
  role_name_label = "host.get_ha_statefiles";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_ha_network_peers = 
  { (* 724/1968 *)
  role_uuid = "1b21c1f0-e4a4-0028-90ca-1f9bf3b7342f";
  role_name_label = "host.get_ha_network_peers";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_blobs = 
  { (* 725/1968 *)
  role_uuid = "b132a88b-b242-3cf8-0459-4bd858b7dc93";
  role_name_label = "host.get_blobs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_tags = 
  { (* 726/1968 *)
  role_uuid = "505fcb18-5888-5bf2-75be-6235aba2e6ee";
  role_name_label = "host.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_external_auth_type = 
  { (* 727/1968 *)
  role_uuid = "d5b5a870-45ee-4124-ec9d-3f16ed2c7db7";
  role_name_label = "host.get_external_auth_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_external_auth_service_name = 
  { (* 728/1968 *)
  role_uuid = "ac809817-a5db-b4a2-0b14-3ba7c0ff2165";
  role_name_label = "host.get_external_auth_service_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_external_auth_configuration = 
  { (* 729/1968 *)
  role_uuid = "7958cefd-9fdc-f836-fedc-22f89fd06ce2";
  role_name_label = "host.get_external_auth_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_edition = 
  { (* 730/1968 *)
  role_uuid = "176db48f-09fe-625d-8d3f-0588f796751a";
  role_name_label = "host.get_edition";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_license_server = 
  { (* 731/1968 *)
  role_uuid = "dff728c2-2d9f-e6ff-57ef-a0e31f0927b6";
  role_name_label = "host.get_license_server";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_bios_strings = 
  { (* 732/1968 *)
  role_uuid = "7c4df9d1-26c8-8986-35f7-a1ec7f4804d2";
  role_name_label = "host.get_bios_strings";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_power_on_mode = 
  { (* 733/1968 *)
  role_uuid = "0a561bf4-9228-cb18-0ce3-7d2a0d302800";
  role_name_label = "host.get_power_on_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_power_on_config = 
  { (* 734/1968 *)
  role_uuid = "21d14229-6be0-a401-6580-4ff98d459f7c";
  role_name_label = "host.get_power_on_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_local_cache_sr = 
  { (* 735/1968 *)
  role_uuid = "f850300a-1604-59c2-5cab-0a1380798fbd";
  role_name_label = "host.get_local_cache_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_chipset_info = 
  { (* 736/1968 *)
  role_uuid = "3c6c94b2-f160-ff62-be39-e917e080f3d2";
  role_name_label = "host.get_chipset_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_PCIs = 
  { (* 737/1968 *)
  role_uuid = "26e20184-1c7f-5596-b456-22ff28f2562a";
  role_name_label = "host.get_pcis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_PGPUs = 
  { (* 738/1968 *)
  role_uuid = "5f5d40d5-5171-dacc-b6ff-497744f2d6cf";
  role_name_label = "host.get_pgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_PUSBs = 
  { (* 739/1968 *)
  role_uuid = "19396d42-8d57-dbd3-e48a-212d4ffd2497";
  role_name_label = "host.get_pusbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_ssl_legacy = 
  { (* 740/1968 *)
  role_uuid = "b18c7540-5542-259c-4c23-8eda8251a0c6";
  role_name_label = "host.get_ssl_legacy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_guest_VCPUs_params = 
  { (* 741/1968 *)
  role_uuid = "92d0e454-d08f-fe30-f288-33ac5e9a7193";
  role_name_label = "host.get_guest_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_display = 
  { (* 742/1968 *)
  role_uuid = "e9a9808f-0313-c4e5-a55f-72ae5e002d8b";
  role_name_label = "host.get_display";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_virtual_hardware_platform_versions = 
  { (* 743/1968 *)
  role_uuid = "2ebdd5b6-de73-c66f-7448-8667d5e75627";
  role_name_label = "host.get_virtual_hardware_platform_versions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_control_domain = 
  { (* 744/1968 *)
  role_uuid = "7eae3aec-f445-8771-0848-9b5c3cfd3a92";
  role_name_label = "host.get_control_domain";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_updates_requiring_reboot = 
  { (* 745/1968 *)
  role_uuid = "dddbf5a8-aebc-1254-3b52-9f44e8223c3c";
  role_name_label = "host.get_updates_requiring_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_features = 
  { (* 746/1968 *)
  role_uuid = "1cc5e9c0-85e5-940a-99ae-07edae88175d";
  role_name_label = "host.get_features";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_iscsi_iqn = 
  { (* 747/1968 *)
  role_uuid = "f9f1ccad-4afd-0b71-f3a9-c6814e5379a3";
  role_name_label = "host.get_iscsi_iqn";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_multipathing = 
  { (* 748/1968 *)
  role_uuid = "04433825-ba99-b0e1-a397-4231edf7d41a";
  role_name_label = "host.get_multipathing";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_uefi_certificates = 
  { (* 749/1968 *)
  role_uuid = "e724ed7c-eebb-190d-12fd-c7850f872ca2";
  role_name_label = "host.get_uefi_certificates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_certificates = 
  { (* 750/1968 *)
  role_uuid = "890df514-bc20-5c54-322b-f1df772e77b4";
  role_name_label = "host.get_certificates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_editions = 
  { (* 751/1968 *)
  role_uuid = "fe08ae1d-6d3a-74fb-58a7-b28aefb2069c";
  role_name_label = "host.get_editions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_https_only = 
  { (* 752/1968 *)
  role_uuid = "25084ce7-2587-98eb-9d4c-f156f0c03ee6";
  role_name_label = "host.get_https_only";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_name_label = 
  { (* 753/1968 *)
  role_uuid = "98bb0b7e-5f22-9296-3405-4212a5746d83";
  role_name_label = "host.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_name_description = 
  { (* 754/1968 *)
  role_uuid = "2d33e554-7bd7-bbdb-8047-76d3195e9258";
  role_name_label = "host.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_other_config = 
  { (* 755/1968 *)
  role_uuid = "99f98089-5ec7-3e6b-c6cf-fe6ee4ca8bdb";
  role_name_label = "host.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_other_config = 
  { (* 756/1968 *)
  role_uuid = "131b3d34-1ecc-b92a-d1ff-7a45083bd6bf";
  role_name_label = "host.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_other_config_key_folder = 
  { (* 757/1968 *)
  role_uuid = "724d860d-c6b0-aecd-97e5-a28c944cf21c";
  role_name_label = "host.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 758/1968 *)
  role_uuid = "5dc23f7d-7008-5d99-0cd6-780fff26f7ad";
  role_name_label = "host.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_other_config = 
  { (* 759/1968 *)
  role_uuid = "332b3889-7848-14d0-1482-baff5d0636c8";
  role_name_label = "host.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_other_config_key_folder = 
  { (* 760/1968 *)
  role_uuid = "69cd7eb3-9c03-a6ec-1942-77ccfef89687";
  role_name_label = "host.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 761/1968 *)
  role_uuid = "49f55d27-bdb9-ea99-50c4-bab151c7ed0a";
  role_name_label = "host.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_logging = 
  { (* 762/1968 *)
  role_uuid = "97f064fb-c947-b723-0102-5721b04079df";
  role_name_label = "host.set_logging";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_logging = 
  { (* 763/1968 *)
  role_uuid = "9eb90ac8-0202-8169-1668-8dc063319fe8";
  role_name_label = "host.add_to_logging";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_logging = 
  { (* 764/1968 *)
  role_uuid = "f781ba26-396f-e041-ad4a-88d04bace1d5";
  role_name_label = "host.remove_from_logging";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_suspend_image_sr = 
  { (* 765/1968 *)
  role_uuid = "c4d88e0f-5705-b814-ebcc-483efb7cab9f";
  role_name_label = "host.set_suspend_image_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_crash_dump_sr = 
  { (* 766/1968 *)
  role_uuid = "bcc0fef8-e248-bdf2-78f9-8611572bfa25";
  role_name_label = "host.set_crash_dump_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_hostname = 
  { (* 767/1968 *)
  role_uuid = "be4226e5-cc5d-56b2-44c3-f4d1f016b63c";
  role_name_label = "host.set_hostname";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_address = 
  { (* 768/1968 *)
  role_uuid = "52f4e45a-6737-6ba2-78f9-f76dd1b39419";
  role_name_label = "host.set_address";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_tags = 
  { (* 769/1968 *)
  role_uuid = "d687b364-5ce1-9ab4-0594-1568e7962192";
  role_name_label = "host.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_tags = 
  { (* 770/1968 *)
  role_uuid = "b433a6d4-aac5-d6f5-429c-fb6e4c3fb586";
  role_name_label = "host.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_tags = 
  { (* 771/1968 *)
  role_uuid = "4fe83cfe-641d-099a-ca6d-921f4f3744ae";
  role_name_label = "host.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_license_server = 
  { (* 772/1968 *)
  role_uuid = "e45ebe26-d512-e459-4654-599e54505052";
  role_name_label = "host.set_license_server";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_license_server = 
  { (* 773/1968 *)
  role_uuid = "fb50a443-8fe4-c0f0-a40a-35866e647531";
  role_name_label = "host.add_to_license_server";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_license_server = 
  { (* 774/1968 *)
  role_uuid = "06528aa5-c284-54b2-d6a4-27e9eb6e7116";
  role_name_label = "host.remove_from_license_server";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_guest_VCPUs_params = 
  { (* 775/1968 *)
  role_uuid = "70f39d80-4c28-3d5c-35dc-54b207783366";
  role_name_label = "host.set_guest_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_add_to_guest_VCPUs_params = 
  { (* 776/1968 *)
  role_uuid = "894dfae1-9671-e03c-f718-537230205889";
  role_name_label = "host.add_to_guest_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_remove_from_guest_VCPUs_params = 
  { (* 777/1968 *)
  role_uuid = "caafd881-5d9d-b540-4676-3589c250a6c9";
  role_name_label = "host.remove_from_guest_vcpus_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_display = 
  { (* 778/1968 *)
  role_uuid = "0dcdd9c7-df70-664e-4b94-e92f50a3240c";
  role_name_label = "host.set_display";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_disable = 
  { (* 779/1968 *)
  role_uuid = "157bc748-69c5-d7ce-1655-7ad8c5078239";
  role_name_label = "host.disable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_enable = 
  { (* 780/1968 *)
  role_uuid = "4d5bc2f8-aae8-a968-6d42-5bbedb41cbe4";
  role_name_label = "host.enable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_shutdown = 
  { (* 781/1968 *)
  role_uuid = "2b7dadfd-042c-c435-c96f-e91c489b64e3";
  role_name_label = "host.shutdown";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_reboot = 
  { (* 782/1968 *)
  role_uuid = "4449c091-e436-df61-1829-db3afd4b7939";
  role_name_label = "host.reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_prepare_for_poweroff = 
  { (* 783/1968 *)
  role_uuid = "30ddf3b2-ab92-97cd-2de4-1ce380e9bda1";
  role_name_label = "host.prepare_for_poweroff";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_dmesg = 
  { (* 784/1968 *)
  role_uuid = "25dad5ce-deb4-8208-fcb6-b393ab735a7f";
  role_name_label = "host.dmesg";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_dmesg_clear = 
  { (* 785/1968 *)
  role_uuid = "1062625b-dc3e-7604-3863-eac2fc25cfcc";
  role_name_label = "host.dmesg_clear";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_log = 
  { (* 786/1968 *)
  role_uuid = "0b33ba31-b80b-e074-7262-65ad91ff9313";
  role_name_label = "host.get_log";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_send_debug_keys = 
  { (* 787/1968 *)
  role_uuid = "965c6e0f-00eb-0f44-44fb-44155f833daa";
  role_name_label = "host.send_debug_keys";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_bugreport_upload = 
  { (* 788/1968 *)
  role_uuid = "759f62d0-2fbe-ef5d-cd7d-579117dca28f";
  role_name_label = "host.bugreport_upload";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_list_methods = 
  { (* 789/1968 *)
  role_uuid = "10d871c1-c065-b472-0fef-42311c39c9b9";
  role_name_label = "host.list_methods";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_license_apply = 
  { (* 790/1968 *)
  role_uuid = "7a4d8574-73c5-a75f-8e25-62e9d8d87113";
  role_name_label = "host.license_apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_license_add = 
  { (* 791/1968 *)
  role_uuid = "a4cccd29-3a3b-4706-28d5-c38388eb631b";
  role_name_label = "host.license_add";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_license_remove = 
  { (* 792/1968 *)
  role_uuid = "3bd472c5-07b2-711f-d800-5c5a414f6119";
  role_name_label = "host.license_remove";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_create = 
  { (* 793/1968 *)
  role_uuid = "434bfc07-d354-2256-9a7a-d48b4df941bd";
  role_name_label = "host.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_destroy = 
  { (* 794/1968 *)
  role_uuid = "298b2e59-3b4b-dfa7-650a-7a70d07520fe";
  role_name_label = "host.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_power_on = 
  { (* 795/1968 *)
  role_uuid = "6c4904c4-41aa-cc49-c626-481866b4a6cb";
  role_name_label = "host.power_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_license_params = 
  { (* 796/1968 *)
  role_uuid = "62156bc3-4813-adc1-bdd2-0c7ebeeace00";
  role_name_label = "host.set_license_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_emergency_ha_disable = 
  { (* 797/1968 *)
  role_uuid = "0c4ba76b-b445-caca-047c-d0dbd9c92973";
  role_name_label = "host.emergency_ha_disable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_disarm_fencing = 
  { (* 798/1968 *)
  role_uuid = "136cce9b-0365-f786-f60c-a183d60187e6";
  role_name_label = "host.ha_disarm_fencing";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_preconfigure_ha = 
  { (* 799/1968 *)
  role_uuid = "3fbee56b-0c09-fa3e-cd05-417210869aba";
  role_name_label = "host.preconfigure_ha";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_join_liveset = 
  { (* 800/1968 *)
  role_uuid = "28c8c6c2-c4c4-f173-16d2-12766ab11189";
  role_name_label = "host.ha_join_liveset";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_disable_failover_decisions = 
  { (* 801/1968 *)
  role_uuid = "dc09439b-490e-8d0e-30ac-2d7c7afffcad";
  role_name_label = "host.ha_disable_failover_decisions";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_wait_for_shutdown_via_statefile = 
  { (* 802/1968 *)
  role_uuid = "834160cd-0001-b58a-f7b2-bbc5e996e3ef";
  role_name_label = "host.ha_wait_for_shutdown_via_statefile";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_stop_daemon = 
  { (* 803/1968 *)
  role_uuid = "10fcf0ee-613f-ec07-85d6-75657822e31e";
  role_name_label = "host.ha_stop_daemon";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_release_resources = 
  { (* 804/1968 *)
  role_uuid = "777a0c39-4e60-6202-71dd-8509406041ea";
  role_name_label = "host.ha_release_resources";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_ha_xapi_healthcheck = 
  { (* 805/1968 *)
  role_uuid = "7a6c63b2-3d09-4f35-e6a6-0d24d0cc8116";
  role_name_label = "host.ha_xapi_healthcheck";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_local_assert_healthy = 
  { (* 806/1968 *)
  role_uuid = "2c2c6eb4-ada7-f944-8c90-c22e8a514ea6";
  role_name_label = "host.local_assert_healthy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_request_backup = 
  { (* 807/1968 *)
  role_uuid = "d9ec39da-b72e-8ab3-57c6-bdad237eb72e";
  role_name_label = "host.request_backup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_request_config_file_sync = 
  { (* 808/1968 *)
  role_uuid = "d5b3a6c5-c1c7-cd12-1426-e72647835da3";
  role_name_label = "host.request_config_file_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_propose_new_master = 
  { (* 809/1968 *)
  role_uuid = "705bc69e-3ad4-da65-9542-2b59339d9e4f";
  role_name_label = "host.propose_new_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_commit_new_master = 
  { (* 810/1968 *)
  role_uuid = "d284d575-a8ea-1c47-aade-871fec6d9ae7";
  role_name_label = "host.commit_new_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_abort_new_master = 
  { (* 811/1968 *)
  role_uuid = "df934ca4-a2ac-791e-084e-c12711463ac6";
  role_name_label = "host.abort_new_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_data_sources = 
  { (* 812/1968 *)
  role_uuid = "a8bfecf9-7e65-f0b7-f087-a59845369df3";
  role_name_label = "host.get_data_sources";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_record_data_source = 
  { (* 813/1968 *)
  role_uuid = "2b1dd077-3590-b7cb-e141-0c960de7d0ee";
  role_name_label = "host.record_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_query_data_source = 
  { (* 814/1968 *)
  role_uuid = "4bf590bd-2137-55dd-90cc-1735a84da788";
  role_name_label = "host.query_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_forget_data_source_archives = 
  { (* 815/1968 *)
  role_uuid = "bb5242ed-06d6-e8df-b475-df888d527d33";
  role_name_label = "host.forget_data_source_archives";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_assert_can_evacuate = 
  { (* 816/1968 *)
  role_uuid = "882aa08b-b154-b2fb-8d7a-ff5e1121f986";
  role_name_label = "host.assert_can_evacuate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_vms_which_prevent_evacuation = 
  { (* 817/1968 *)
  role_uuid = "1e34f646-0d83-991e-6d57-53abf105526b";
  role_name_label = "host.get_vms_which_prevent_evacuation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_uncooperative_resident_VMs = 
  { (* 818/1968 *)
  role_uuid = "ef1ab15e-5c19-1c76-1dbb-8ac3e0580f33";
  role_name_label = "host.get_uncooperative_resident_vms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_uncooperative_domains = 
  { (* 819/1968 *)
  role_uuid = "b0d3d6a3-55a6-3266-2197-b8b319208749";
  role_name_label = "host.get_uncooperative_domains";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_evacuate = 
  { (* 820/1968 *)
  role_uuid = "31a52751-6ebe-5592-af6d-ea64a7272c60";
  role_name_label = "host.evacuate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_signal_networking_change = 
  { (* 821/1968 *)
  role_uuid = "0c92e58d-0e1b-dadc-204a-47fd71832165";
  role_name_label = "host.signal_networking_change";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_notify = 
  { (* 822/1968 *)
  role_uuid = "e4ff77e2-70aa-d671-7368-775ab9752a37";
  role_name_label = "host.notify";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_syslog_reconfigure = 
  { (* 823/1968 *)
  role_uuid = "814c2dd9-a7c3-b7b7-ecf1-f7f30b2f3125";
  role_name_label = "host.syslog_reconfigure";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_management_reconfigure = 
  { (* 824/1968 *)
  role_uuid = "308040cf-181e-3abb-9378-8dac73752bcb";
  role_name_label = "host.management_reconfigure";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_local_management_reconfigure = 
  { (* 825/1968 *)
  role_uuid = "b9c90c76-a349-aa8c-e732-21516da712a6";
  role_name_label = "host.local_management_reconfigure";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_management_disable = 
  { (* 826/1968 *)
  role_uuid = "64196488-4486-d1d2-88ab-ca36908f966a";
  role_name_label = "host.management_disable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_management_interface = 
  { (* 827/1968 *)
  role_uuid = "a2a5b2a7-b9e0-a89b-65a7-dab5b977e250";
  role_name_label = "host.get_management_interface";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_system_status_capabilities = 
  { (* 828/1968 *)
  role_uuid = "57eb64a6-04db-6995-2a99-3eaf96be5263";
  role_name_label = "host.get_system_status_capabilities";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_diagnostic_timing_stats = 
  { (* 829/1968 *)
  role_uuid = "915e4dab-9537-bfa4-fac9-85addfb3eeac";
  role_name_label = "host.get_diagnostic_timing_stats";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_restart_agent = 
  { (* 830/1968 *)
  role_uuid = "33d71acb-3055-9b64-19e6-11eca4f43e8f";
  role_name_label = "host.restart_agent";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_shutdown_agent = 
  { (* 831/1968 *)
  role_uuid = "46279397-3447-5388-b6c1-2322f68ffd3c";
  role_name_label = "host.shutdown_agent";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_hostname_live = 
  { (* 832/1968 *)
  role_uuid = "6f21d652-38a6-3969-838c-c667c97a37eb";
  role_name_label = "host.set_hostname_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_is_in_emergency_mode = 
  { (* 833/1968 *)
  role_uuid = "4f7a7bae-a4ae-9024-ffd2-3bfe706c266b";
  role_name_label = "host.is_in_emergency_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_compute_free_memory = 
  { (* 834/1968 *)
  role_uuid = "2ef836d2-b9dd-5a23-c794-2e7589f36be0";
  role_name_label = "host.compute_free_memory";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_compute_memory_overhead = 
  { (* 835/1968 *)
  role_uuid = "e0ca9324-e1ad-9179-5282-f7f36641bb1d";
  role_name_label = "host.compute_memory_overhead";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_tickle_heartbeat = 
  { (* 836/1968 *)
  role_uuid = "3806d501-7a2d-acc8-bd26-b13d93f8dd9e";
  role_name_label = "host.tickle_heartbeat";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_sync_data = 
  { (* 837/1968 *)
  role_uuid = "cde0e8b8-03cf-537c-26a1-2f5a42d19add";
  role_name_label = "host.sync_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_backup_rrds = 
  { (* 838/1968 *)
  role_uuid = "b0b429bc-37ca-a61f-375a-8d7fce2156ea";
  role_name_label = "host.backup_rrds";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_create_new_blob = 
  { (* 839/1968 *)
  role_uuid = "f5df9029-1e65-e5e2-3c5e-b87aba3a034f";
  role_name_label = "host.create_new_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_call_plugin = 
  { (* 840/1968 *)
  role_uuid = "4aab3d2f-e037-ae17-f252-a9c3a710f703";
  role_name_label = "host.call_plugin";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_has_extension = 
  { (* 841/1968 *)
  role_uuid = "677abfe0-d445-5a01-b160-67abd31277a1";
  role_name_label = "host.has_extension";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_call_extension = 
  { (* 842/1968 *)
  role_uuid = "52b22521-46fe-dbc0-6065-61a24063834c";
  role_name_label = "host.call_extension";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_servertime = 
  { (* 843/1968 *)
  role_uuid = "067511f8-54b7-de65-b4d9-dfb2089ac41a";
  role_name_label = "host.get_servertime";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_server_localtime = 
  { (* 844/1968 *)
  role_uuid = "1bb99abf-a34e-2a07-c87a-871871b84931";
  role_name_label = "host.get_server_localtime";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_enable_binary_storage = 
  { (* 845/1968 *)
  role_uuid = "ce75ee61-93bd-9778-0b33-afc4bb6e4f02";
  role_name_label = "host.enable_binary_storage";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_disable_binary_storage = 
  { (* 846/1968 *)
  role_uuid = "572f55a6-e83e-0beb-c1aa-25f7ad64e9e3";
  role_name_label = "host.disable_binary_storage";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_enable_external_auth = 
  { (* 847/1968 *)
  role_uuid = "a1870f39-4780-874e-a27e-b6d0d6b00c62";
  role_name_label = "host.enable_external_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_disable_external_auth = 
  { (* 848/1968 *)
  role_uuid = "b50cf74e-f790-b097-7804-89f26f0bdf5e";
  role_name_label = "host.disable_external_auth";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_retrieve_wlb_evacuate_recommendations = 
  { (* 849/1968 *)
  role_uuid = "051d2068-cedb-9155-c92d-1233e9fbc3e5";
  role_name_label = "host.retrieve_wlb_evacuate_recommendations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_certificate_install = 
  { (* 850/1968 *)
  role_uuid = "91b67fd7-3ad4-1b46-4256-dc5556ff7f9f";
  role_name_label = "host.certificate_install";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_certificate_uninstall = 
  { (* 851/1968 *)
  role_uuid = "a8840c3a-d212-97c0-2668-92f7b300f46c";
  role_name_label = "host.certificate_uninstall";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_certificate_list = 
  { (* 852/1968 *)
  role_uuid = "242601d4-154d-4ed3-f2f4-058257539189";
  role_name_label = "host.certificate_list";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crl_install = 
  { (* 853/1968 *)
  role_uuid = "36f4c945-d026-5e97-87e4-fbb46e6645ca";
  role_name_label = "host.crl_install";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crl_uninstall = 
  { (* 854/1968 *)
  role_uuid = "c4fbe2ac-532d-5e5f-da39-e93869432f1f";
  role_name_label = "host.crl_uninstall";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crl_list = 
  { (* 855/1968 *)
  role_uuid = "2adfd881-ffa3-ffdf-b3c6-2a492d145cff";
  role_name_label = "host.crl_list";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_certificate_sync = 
  { (* 856/1968 *)
  role_uuid = "a8d03519-3c16-05d7-9f23-0ee9949d05b1";
  role_name_label = "host.certificate_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_server_certificate = 
  { (* 857/1968 *)
  role_uuid = "98742ea3-1cde-9b10-60fb-8aac5e8ea5fd";
  role_name_label = "host.get_server_certificate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_install_server_certificate = 
  { (* 858/1968 *)
  role_uuid = "0d13a090-2fa0-4cb1-9e10-685e966dd132";
  role_name_label = "host.install_server_certificate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_emergency_reset_server_certificate = 
  { (* 859/1968 *)
  role_uuid = "1098fb7b-015f-d179-054c-b8517021e9ec";
  role_name_label = "host.emergency_reset_server_certificate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_update_pool_secret = 
  { (* 860/1968 *)
  role_uuid = "9df726c5-7bbf-36b3-a327-32fc046f2076";
  role_name_label = "host.update_pool_secret";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_update_master = 
  { (* 861/1968 *)
  role_uuid = "0b6c28b4-c84b-2552-ac76-ec420f79b97c";
  role_name_label = "host.update_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_attach_static_vdis = 
  { (* 862/1968 *)
  role_uuid = "b76f0f56-120d-4b3c-2e0e-a3f6f7a11ea6";
  role_name_label = "host.attach_static_vdis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_detach_static_vdis = 
  { (* 863/1968 *)
  role_uuid = "a0c0c0f4-97c7-8e26-477a-1ac57561d436";
  role_name_label = "host.detach_static_vdis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_localdb_key = 
  { (* 864/1968 *)
  role_uuid = "65522f8c-abcc-12f6-a932-a23958b9576c";
  role_name_label = "host.set_localdb_key";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_apply_edition = 
  { (* 865/1968 *)
  role_uuid = "b68cf926-2d18-a589-fc01-3899fb72e7f9";
  role_name_label = "host.apply_edition";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_refresh_pack_info = 
  { (* 866/1968 *)
  role_uuid = "2fa7f35e-eb7b-3e92-1773-53254df5bac4";
  role_name_label = "host.refresh_pack_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_power_on_mode = 
  { (* 867/1968 *)
  role_uuid = "5dc6aca6-9629-271e-f8fe-e8697e96e830";
  role_name_label = "host.set_power_on_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_cpu_features = 
  { (* 868/1968 *)
  role_uuid = "3e520f03-18e0-1db7-a1bf-0688e967b901";
  role_name_label = "host.set_cpu_features";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_reset_cpu_features = 
  { (* 869/1968 *)
  role_uuid = "32978aed-c32d-e3c2-f0ac-634b8bb7e0dc";
  role_name_label = "host.reset_cpu_features";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_reset_networking = 
  { (* 870/1968 *)
  role_uuid = "5215045b-f90b-83a3-02ea-d2440c9e0d56";
  role_name_label = "host.reset_networking";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_enable_local_storage_caching = 
  { (* 871/1968 *)
  role_uuid = "84f916d1-f4d8-74a4-cccb-86a085eceb13";
  role_name_label = "host.enable_local_storage_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_disable_local_storage_caching = 
  { (* 872/1968 *)
  role_uuid = "1a107baf-c2e3-52ca-0b73-148f1514a238";
  role_name_label = "host.disable_local_storage_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_sm_diagnostics = 
  { (* 873/1968 *)
  role_uuid = "929599e4-98c0-722d-54ac-5f2ffc3a73ca";
  role_name_label = "host.get_sm_diagnostics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_thread_diagnostics = 
  { (* 874/1968 *)
  role_uuid = "1ba238a8-b474-3dff-5974-fab4099a3a7a";
  role_name_label = "host.get_thread_diagnostics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_sm_dp_destroy = 
  { (* 875/1968 *)
  role_uuid = "ca0e5dcb-c5f3-bba0-db79-f9f3b5f3ad4b";
  role_name_label = "host.sm_dp_destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_sync_vlans = 
  { (* 876/1968 *)
  role_uuid = "49e40dbe-751f-51e0-6d70-53c7a7d80b18";
  role_name_label = "host.sync_vlans";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_sync_tunnels = 
  { (* 877/1968 *)
  role_uuid = "af6cd91b-d39a-af43-aabf-3f0d477c5e32";
  role_name_label = "host.sync_tunnels";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_sync_pif_currently_attached = 
  { (* 878/1968 *)
  role_uuid = "72183d9d-6b17-543f-d35a-461d3d2bcd28";
  role_name_label = "host.sync_pif_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_migrate_receive = 
  { (* 879/1968 *)
  role_uuid = "0720d352-4b7b-fff3-45cf-860aee04908f";
  role_name_label = "host.migrate_receive";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_declare_dead = 
  { (* 880/1968 *)
  role_uuid = "f8375961-adf9-f6f8-f8b2-333ac51d3fe3";
  role_name_label = "host.declare_dead";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_enable_display = 
  { (* 881/1968 *)
  role_uuid = "d94055e0-3a62-4c42-87f7-b5be20470c71";
  role_name_label = "host.enable_display";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_disable_display = 
  { (* 882/1968 *)
  role_uuid = "e10632d9-7f74-2429-d504-670bb5b75682";
  role_name_label = "host.disable_display";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_ssl_legacy = 
  { (* 883/1968 *)
  role_uuid = "ebeb567d-565d-7a9f-eee8-e893a72deb46";
  role_name_label = "host.set_ssl_legacy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_apply_guest_agent_config = 
  { (* 884/1968 *)
  role_uuid = "b7128245-228f-1dd7-4e3f-f943e431275d";
  role_name_label = "host.apply_guest_agent_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_mxgpu_vf_setup = 
  { (* 885/1968 *)
  role_uuid = "bfb735f0-42f3-4ceb-ffee-3831155c2268";
  role_name_label = "host.mxgpu_vf_setup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_nvidia_vf_setup = 
  { (* 886/1968 *)
  role_uuid = "10864dee-0bbf-0078-5f41-94882848a499";
  role_name_label = "host.nvidia_vf_setup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_allocate_resources_for_vm = 
  { (* 887/1968 *)
  role_uuid = "f45b3340-3c21-7d58-7586-f352e6cc392e";
  role_name_label = "host.allocate_resources_for_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_iscsi_iqn = 
  { (* 888/1968 *)
  role_uuid = "98115c96-ad7a-6967-0fcd-c6885a46496f";
  role_name_label = "host.set_iscsi_iqn";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_multipathing = 
  { (* 889/1968 *)
  role_uuid = "7913ca23-8785-111c-0019-dfbd6b63922b";
  role_name_label = "host.set_multipathing";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_uefi_certificates = 
  { (* 890/1968 *)
  role_uuid = "dcacd490-2069-0c0e-cbbf-736c9ad5e5b6";
  role_name_label = "host.set_uefi_certificates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_notify_accept_new_pool_secret = 
  { (* 891/1968 *)
  role_uuid = "e879f46c-7d78-a3bd-39a6-ac60e33d887e";
  role_name_label = "host.notify_accept_new_pool_secret";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_notify_send_new_pool_secret = 
  { (* 892/1968 *)
  role_uuid = "459bac78-3983-2c30-a3a3-01691ba707da";
  role_name_label = "host.notify_send_new_pool_secret";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cleanup_pool_secret = 
  { (* 893/1968 *)
  role_uuid = "b32f63a5-6ca6-d8ca-42bb-eb15803354ff";
  role_name_label = "host.cleanup_pool_secret";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_https_only = 
  { (* 894/1968 *)
  role_uuid = "bcecbddd-e0ad-2103-4b06-0da192f272a4";
  role_name_label = "host.set_https_only";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_set_sched_gran = 
  { (* 895/1968 *)
  role_uuid = "d2fe0d75-6018-9411-9b47-89fd693efdb0";
  role_name_label = "host.set_sched_gran";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_sched_gran = 
  { (* 896/1968 *)
  role_uuid = "50aaadb5-f72a-574b-5702-54d381452ebd";
  role_name_label = "host.get_sched_gran";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_all = 
  { (* 897/1968 *)
  role_uuid = "1fcbc379-fbbb-f702-d1ba-7158bead56df";
  role_name_label = "host.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_all_records_where = 
  { (* 898/1968 *)
  role_uuid = "520813ad-5f48-b68b-da3a-36a944d0a2d5";
  role_name_label = "host.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_get_all_records = 
  { (* 899/1968 *)
  role_uuid = "1b6d9d1c-8a59-d87f-2920-9fd9fe0dbe1d";
  role_name_label = "host.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_record = 
  { (* 900/1968 *)
  role_uuid = "383340ed-7b65-ec60-3687-cd5b9a22dd4d";
  role_name_label = "host_crashdump.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_by_uuid = 
  { (* 901/1968 *)
  role_uuid = "c6cd9483-96d1-5a4e-8272-58d62903ba13";
  role_name_label = "host_crashdump.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_uuid = 
  { (* 902/1968 *)
  role_uuid = "c935c5c6-6224-1650-60e8-8fe70daaa5c4";
  role_name_label = "host_crashdump.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_host = 
  { (* 903/1968 *)
  role_uuid = "d9b34a9f-bd57-74ef-44ca-d5dc42e857bc";
  role_name_label = "host_crashdump.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_timestamp = 
  { (* 904/1968 *)
  role_uuid = "603d3545-44ef-8bee-7e48-7a9ec1fe0f4c";
  role_name_label = "host_crashdump.get_timestamp";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_size = 
  { (* 905/1968 *)
  role_uuid = "2ab258fa-f9f0-53ca-1a97-e319259e63d8";
  role_name_label = "host_crashdump.get_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_other_config = 
  { (* 906/1968 *)
  role_uuid = "92828369-5a7f-e0cc-ff8a-20ce4e6a182d";
  role_name_label = "host_crashdump.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_set_other_config = 
  { (* 907/1968 *)
  role_uuid = "d98c92f1-3335-9aca-ecb5-60524be8cedd";
  role_name_label = "host_crashdump.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_add_to_other_config = 
  { (* 908/1968 *)
  role_uuid = "8a2c5a80-6a75-4b6e-9a15-507e5e2feaef";
  role_name_label = "host_crashdump.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_remove_from_other_config = 
  { (* 909/1968 *)
  role_uuid = "0350282e-6237-8da2-ed67-a8503e1e5213";
  role_name_label = "host_crashdump.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_destroy = 
  { (* 910/1968 *)
  role_uuid = "f5ce748e-a2df-70d9-39d3-07c6181cabd1";
  role_name_label = "host_crashdump.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_upload = 
  { (* 911/1968 *)
  role_uuid = "dbf21a59-f453-5f2b-f9ef-2e5ba8c84e51";
  role_name_label = "host_crashdump.upload";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_all = 
  { (* 912/1968 *)
  role_uuid = "cf2e8f13-038a-7d7b-5021-c881eadac803";
  role_name_label = "host_crashdump.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_all_records_where = 
  { (* 913/1968 *)
  role_uuid = "ff8c2c53-80b5-03a6-88c0-ced5d925bc2f";
  role_name_label = "host_crashdump.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_crashdump_get_all_records = 
  { (* 914/1968 *)
  role_uuid = "027a3a06-ffc7-fc53-f107-b8ca78294326";
  role_name_label = "host_crashdump.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_record = 
  { (* 915/1968 *)
  role_uuid = "76bae6c0-4e4b-2dd1-b3ba-66e0b949c13d";
  role_name_label = "host_patch.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_by_uuid = 
  { (* 916/1968 *)
  role_uuid = "bf7f941b-03a6-dfab-5f08-5f1d5e046a8d";
  role_name_label = "host_patch.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_by_name_label = 
  { (* 917/1968 *)
  role_uuid = "91b38c06-f1f7-acd5-a6f4-5e10e9decb8e";
  role_name_label = "host_patch.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_uuid = 
  { (* 918/1968 *)
  role_uuid = "a8accf3c-5e68-c1ad-347e-4b14086a0a3c";
  role_name_label = "host_patch.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_name_label = 
  { (* 919/1968 *)
  role_uuid = "0298a263-16aa-fa51-84d9-bf231b03257c";
  role_name_label = "host_patch.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_name_description = 
  { (* 920/1968 *)
  role_uuid = "b671a7b9-5c80-c3b2-1f66-7c5b8668c0b8";
  role_name_label = "host_patch.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_version = 
  { (* 921/1968 *)
  role_uuid = "92424d6e-6c8b-e6cf-52f8-c1ecb18ac162";
  role_name_label = "host_patch.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_host = 
  { (* 922/1968 *)
  role_uuid = "b9b352a0-6f8e-854e-71b3-04d31b6483fd";
  role_name_label = "host_patch.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_applied = 
  { (* 923/1968 *)
  role_uuid = "e9d70821-4d5b-c6e8-0769-305ea28819df";
  role_name_label = "host_patch.get_applied";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_timestamp_applied = 
  { (* 924/1968 *)
  role_uuid = "70a45f35-52c8-981e-b5b4-756e9dd422bf";
  role_name_label = "host_patch.get_timestamp_applied";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_size = 
  { (* 925/1968 *)
  role_uuid = "29f5163f-f0c4-062e-38a7-e652c0ed5987";
  role_name_label = "host_patch.get_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_pool_patch = 
  { (* 926/1968 *)
  role_uuid = "fa0065df-12b1-d909-9f18-0ee0e5905322";
  role_name_label = "host_patch.get_pool_patch";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_other_config = 
  { (* 927/1968 *)
  role_uuid = "0075f8e8-9cd8-3a4f-89e8-f53ff0121590";
  role_name_label = "host_patch.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_set_other_config = 
  { (* 928/1968 *)
  role_uuid = "75e54d6a-4fb2-f9dd-f2d4-de95edf0b0e0";
  role_name_label = "host_patch.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_add_to_other_config = 
  { (* 929/1968 *)
  role_uuid = "f1c54063-e84c-fe26-cdf1-4c3aad46c0b0";
  role_name_label = "host_patch.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_remove_from_other_config = 
  { (* 930/1968 *)
  role_uuid = "1c8fc301-adcf-4eec-d563-ff7e05e926f3";
  role_name_label = "host_patch.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_destroy = 
  { (* 931/1968 *)
  role_uuid = "311d974c-0afa-b82c-5a37-5a82f64989c9";
  role_name_label = "host_patch.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_apply = 
  { (* 932/1968 *)
  role_uuid = "89e4201d-e7b7-dd2a-702b-9f12ed923649";
  role_name_label = "host_patch.apply";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_all = 
  { (* 933/1968 *)
  role_uuid = "1cd93736-a017-b50b-a7ff-f84557f73b64";
  role_name_label = "host_patch.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_all_records_where = 
  { (* 934/1968 *)
  role_uuid = "52e94cd3-f9ef-225b-9d23-133e521e39ec";
  role_name_label = "host_patch.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_patch_get_all_records = 
  { (* 935/1968 *)
  role_uuid = "43bd2f40-5b02-5f5f-f2de-3355ce64f08d";
  role_name_label = "host_patch.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_record = 
  { (* 936/1968 *)
  role_uuid = "fa8c8b9e-82c2-1edd-0621-58b876ecb786";
  role_name_label = "host_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_by_uuid = 
  { (* 937/1968 *)
  role_uuid = "25efdd5a-5572-0245-6f76-edd4d8ba87f2";
  role_name_label = "host_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_uuid = 
  { (* 938/1968 *)
  role_uuid = "43f83df9-8b01-dd53-da07-19c763c45316";
  role_name_label = "host_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_memory_total = 
  { (* 939/1968 *)
  role_uuid = "b73723e7-74ed-dae5-a160-a31e2f96f64c";
  role_name_label = "host_metrics.get_memory_total";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_memory_free = 
  { (* 940/1968 *)
  role_uuid = "3763d099-4a3b-3905-7603-8e5a98dadcc6";
  role_name_label = "host_metrics.get_memory_free";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_live = 
  { (* 941/1968 *)
  role_uuid = "7a01d196-5bf3-d888-ca53-f7c308d79daa";
  role_name_label = "host_metrics.get_live";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_last_updated = 
  { (* 942/1968 *)
  role_uuid = "5b8ed78a-2c12-c8e0-c706-c960dcac0e02";
  role_name_label = "host_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_other_config = 
  { (* 943/1968 *)
  role_uuid = "f5e84d5c-9173-a902-ca07-aaa980e78e7a";
  role_name_label = "host_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_set_other_config = 
  { (* 944/1968 *)
  role_uuid = "5c047b76-1c9a-d8be-5b95-3df509f9c875";
  role_name_label = "host_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_add_to_other_config = 
  { (* 945/1968 *)
  role_uuid = "d778a608-bae2-4a80-3c10-c2ee0c3ececc";
  role_name_label = "host_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_remove_from_other_config = 
  { (* 946/1968 *)
  role_uuid = "e573799e-51de-10dc-7dd3-a55252fb8971";
  role_name_label = "host_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_all = 
  { (* 947/1968 *)
  role_uuid = "f1eeaf68-e2a9-0e64-3dbe-9ca6e6d76088";
  role_name_label = "host_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_all_records_where = 
  { (* 948/1968 *)
  role_uuid = "da79116d-658d-77fa-9595-51e744744bd9";
  role_name_label = "host_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_metrics_get_all_records = 
  { (* 949/1968 *)
  role_uuid = "7b46c171-b1db-a323-3b76-457ea95372d2";
  role_name_label = "host_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_record = 
  { (* 950/1968 *)
  role_uuid = "363f935d-b9b0-96d5-6286-c7c611a0a65a";
  role_name_label = "host_cpu.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_by_uuid = 
  { (* 951/1968 *)
  role_uuid = "58a2fe1f-77b3-d2d6-cf26-40af9a1d4f5f";
  role_name_label = "host_cpu.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_uuid = 
  { (* 952/1968 *)
  role_uuid = "2072d2a6-0563-826f-693b-1d3d46c4d4ed";
  role_name_label = "host_cpu.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_host = 
  { (* 953/1968 *)
  role_uuid = "ad8c841c-d7b0-29d0-bbfc-e102b0cf29db";
  role_name_label = "host_cpu.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_number = 
  { (* 954/1968 *)
  role_uuid = "ef4f9dec-a5cd-1326-745d-6ae2b2cb9b7c";
  role_name_label = "host_cpu.get_number";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_vendor = 
  { (* 955/1968 *)
  role_uuid = "fd67acf4-c454-2308-703d-b1c548829599";
  role_name_label = "host_cpu.get_vendor";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_speed = 
  { (* 956/1968 *)
  role_uuid = "531b14e0-799d-158b-2741-b0722c44ef81";
  role_name_label = "host_cpu.get_speed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_modelname = 
  { (* 957/1968 *)
  role_uuid = "8deb8400-477c-d1ed-5e43-3a57cf19fc18";
  role_name_label = "host_cpu.get_modelname";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_family = 
  { (* 958/1968 *)
  role_uuid = "bb254b62-2ce5-d18a-ea89-b9951d43540e";
  role_name_label = "host_cpu.get_family";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_model = 
  { (* 959/1968 *)
  role_uuid = "dac42fca-3f2b-9f12-984c-094ee89b8a3b";
  role_name_label = "host_cpu.get_model";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_stepping = 
  { (* 960/1968 *)
  role_uuid = "bee385fd-db51-c95f-5dc9-e0cb27058fe4";
  role_name_label = "host_cpu.get_stepping";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_flags = 
  { (* 961/1968 *)
  role_uuid = "898a10e9-4929-667d-1f69-6084d82f95f2";
  role_name_label = "host_cpu.get_flags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_features = 
  { (* 962/1968 *)
  role_uuid = "0093bc43-35e1-4d14-5ae8-0d48a7c7696d";
  role_name_label = "host_cpu.get_features";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_utilisation = 
  { (* 963/1968 *)
  role_uuid = "8e640d08-58a8-3220-9ad7-2f6ce7ffcb54";
  role_name_label = "host_cpu.get_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_other_config = 
  { (* 964/1968 *)
  role_uuid = "f5e4f76a-5a4a-71c0-66d2-6b9ebf098fc3";
  role_name_label = "host_cpu.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_set_other_config = 
  { (* 965/1968 *)
  role_uuid = "a6d058f4-e42b-6f54-7e98-25d842a26157";
  role_name_label = "host_cpu.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_add_to_other_config = 
  { (* 966/1968 *)
  role_uuid = "73a0ada7-ab59-3fc1-aca5-d649c7fe52b8";
  role_name_label = "host_cpu.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_remove_from_other_config = 
  { (* 967/1968 *)
  role_uuid = "4351b221-3862-c22c-d2b0-f4e63dac5151";
  role_name_label = "host_cpu.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_all = 
  { (* 968/1968 *)
  role_uuid = "4cf2b236-677b-9ed4-7466-d0e1337a0549";
  role_name_label = "host_cpu.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_all_records_where = 
  { (* 969/1968 *)
  role_uuid = "b3db5cf5-cf31-a92b-edbf-05fe326e9844";
  role_name_label = "host_cpu.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_host_cpu_get_all_records = 
  { (* 970/1968 *)
  role_uuid = "e3370dac-0910-8f7f-a68c-aa87ce861519";
  role_name_label = "host_cpu.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_record = 
  { (* 971/1968 *)
  role_uuid = "68d3594f-230f-4fb6-5177-fd760bca1be6";
  role_name_label = "network.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_by_uuid = 
  { (* 972/1968 *)
  role_uuid = "6ad64869-f5c6-00aa-b2b8-8281cfd24e88";
  role_name_label = "network.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_create = 
  { (* 973/1968 *)
  role_uuid = "bfd6aaa0-e3c7-2b73-47c5-06903a2d09bd";
  role_name_label = "network.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_destroy = 
  { (* 974/1968 *)
  role_uuid = "dc3df6cd-f17c-73a7-b27d-eb95a8be35ae";
  role_name_label = "network.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_by_name_label = 
  { (* 975/1968 *)
  role_uuid = "ab7a8ddb-0a66-957e-b67c-2623919816b3";
  role_name_label = "network.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_uuid = 
  { (* 976/1968 *)
  role_uuid = "70178e57-b50b-900e-a105-0b50d5961ad2";
  role_name_label = "network.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_name_label = 
  { (* 977/1968 *)
  role_uuid = "84facb10-a76d-d587-f1b4-fd1bfffbbd13";
  role_name_label = "network.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_name_description = 
  { (* 978/1968 *)
  role_uuid = "f9a0e6ec-1bac-19b0-8aaf-61c4f8f3e87f";
  role_name_label = "network.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_allowed_operations = 
  { (* 979/1968 *)
  role_uuid = "5e271507-05bb-a4b4-2aa1-45a1d678a3c3";
  role_name_label = "network.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_current_operations = 
  { (* 980/1968 *)
  role_uuid = "9b129852-5a6b-938a-6657-d7fb8c0fd1d8";
  role_name_label = "network.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_VIFs = 
  { (* 981/1968 *)
  role_uuid = "1e749289-18cf-7c15-dfef-7c563ac409d8";
  role_name_label = "network.get_vifs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_PIFs = 
  { (* 982/1968 *)
  role_uuid = "182ecb35-daed-9ee8-efc7-cacab112b589";
  role_name_label = "network.get_pifs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_MTU = 
  { (* 983/1968 *)
  role_uuid = "13cd1c58-7c1e-1ab4-65ed-9ff82b888688";
  role_name_label = "network.get_mtu";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_other_config = 
  { (* 984/1968 *)
  role_uuid = "8fc955b6-e97d-5ed5-fbde-3b3216b7f8a0";
  role_name_label = "network.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_bridge = 
  { (* 985/1968 *)
  role_uuid = "a06fc2d3-81c9-76bd-b9b3-d00973854b22";
  role_name_label = "network.get_bridge";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_managed = 
  { (* 986/1968 *)
  role_uuid = "b0ec60ed-d695-5126-3a90-20da7ecd359a";
  role_name_label = "network.get_managed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_blobs = 
  { (* 987/1968 *)
  role_uuid = "29c7b3bd-cee8-dbf1-bee5-b684dfe0cba2";
  role_name_label = "network.get_blobs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_tags = 
  { (* 988/1968 *)
  role_uuid = "941b5182-310c-b1c2-fbf4-1409241add9a";
  role_name_label = "network.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_default_locking_mode = 
  { (* 989/1968 *)
  role_uuid = "975df00f-053b-2fe4-70ce-41b80b2814f9";
  role_name_label = "network.get_default_locking_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_assigned_ips = 
  { (* 990/1968 *)
  role_uuid = "c8a5f573-fc16-ccd5-ac36-b689575e608c";
  role_name_label = "network.get_assigned_ips";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_purpose = 
  { (* 991/1968 *)
  role_uuid = "3aaffcd4-08e6-9992-1d2e-99432185d971";
  role_name_label = "network.get_purpose";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_name_label = 
  { (* 992/1968 *)
  role_uuid = "9bcb81ec-e4b1-1dbd-9ac6-d1ce045e431f";
  role_name_label = "network.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_name_description = 
  { (* 993/1968 *)
  role_uuid = "6595c05b-14d4-782f-08c1-76d06528b230";
  role_name_label = "network.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_MTU = 
  { (* 994/1968 *)
  role_uuid = "ca855242-855a-9952-32db-65969a8ce3fb";
  role_name_label = "network.set_mtu";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_other_config = 
  { (* 995/1968 *)
  role_uuid = "6dfd9693-4e48-6ad0-839e-1c5788befe1b";
  role_name_label = "network.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_to_other_config = 
  { (* 996/1968 *)
  role_uuid = "ca8cf9dc-ddab-1305-639a-51d0047802ba";
  role_name_label = "network.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_to_other_config_key_folder = 
  { (* 997/1968 *)
  role_uuid = "bfdf5c96-6ada-a5ef-cc47-ea345940662e";
  role_name_label = "network.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 998/1968 *)
  role_uuid = "f825b844-c7b4-2900-cf4a-5cd059d26dc1";
  role_name_label = "network.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_to_other_config_key_XenCenterCreateInProgress = 
  { (* 999/1968 *)
  role_uuid = "1681d655-5c34-3b05-1c48-771660b0f3a6";
  role_name_label = "network.add_to_other_config/key:xencentercreateinprogress";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_from_other_config = 
  { (* 1000/1968 *)
  role_uuid = "3503fe61-6e9f-f993-a243-f0810918323e";
  role_name_label = "network.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_from_other_config_key_folder = 
  { (* 1001/1968 *)
  role_uuid = "53ca7741-71e1-66c1-c42d-6d9351b41551";
  role_name_label = "network.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 1002/1968 *)
  role_uuid = "39bad4e7-597f-2ecf-93c6-39b8d945de5d";
  role_name_label = "network.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_from_other_config_key_XenCenterCreateInProgress = 
  { (* 1003/1968 *)
  role_uuid = "a1421191-fe98-3281-a792-d201a2de2bf6";
  role_name_label = "network.remove_from_other_config/key:xencentercreateinprogress";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_tags = 
  { (* 1004/1968 *)
  role_uuid = "1f9dfeb1-7d99-1409-e6eb-d9522e1ca3d6";
  role_name_label = "network.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_tags = 
  { (* 1005/1968 *)
  role_uuid = "d535938f-a852-c579-75fd-f7064065ecbb";
  role_name_label = "network.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_tags = 
  { (* 1006/1968 *)
  role_uuid = "d91aa452-182d-736b-a240-4414fe355a93";
  role_name_label = "network.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_attach = 
  { (* 1007/1968 *)
  role_uuid = "7397cc86-02af-1ace-9d80-ecdcd9c4de15";
  role_name_label = "network.attach";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_pool_introduce = 
  { (* 1008/1968 *)
  role_uuid = "02d648b1-48f8-6a7a-3051-f984dd7c1c85";
  role_name_label = "network.pool_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_create_new_blob = 
  { (* 1009/1968 *)
  role_uuid = "0b0c7ac7-145f-625d-4c63-97793c187f0a";
  role_name_label = "network.create_new_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_set_default_locking_mode = 
  { (* 1010/1968 *)
  role_uuid = "a1a30854-8645-fe8b-81c4-f296f125254a";
  role_name_label = "network.set_default_locking_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_attach_for_vm = 
  { (* 1011/1968 *)
  role_uuid = "631cd70a-a589-ba49-f1c1-918a54e47ba5";
  role_name_label = "network.attach_for_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_detach_for_vm = 
  { (* 1012/1968 *)
  role_uuid = "ec32a884-e824-e654-e472-1ba82e2db748";
  role_name_label = "network.detach_for_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_add_purpose = 
  { (* 1013/1968 *)
  role_uuid = "11f86c2e-b6ba-dc37-9977-ebd51e5fbe16";
  role_name_label = "network.add_purpose";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_remove_purpose = 
  { (* 1014/1968 *)
  role_uuid = "d4ffb68b-fe75-fb91-7fd9-45a81e36c9d5";
  role_name_label = "network.remove_purpose";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_all = 
  { (* 1015/1968 *)
  role_uuid = "7d45ebaa-c032-5209-010f-bda83e9995c0";
  role_name_label = "network.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_all_records_where = 
  { (* 1016/1968 *)
  role_uuid = "13657521-3100-32e7-3d38-a1c0df842c77";
  role_name_label = "network.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_get_all_records = 
  { (* 1017/1968 *)
  role_uuid = "4a4a9d2b-a7ab-d01a-bb1c-39cbfdce1259";
  role_name_label = "network.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_record = 
  { (* 1018/1968 *)
  role_uuid = "55377552-76fe-e589-d4cf-02f64f49f350";
  role_name_label = "vif.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_by_uuid = 
  { (* 1019/1968 *)
  role_uuid = "d36bf25c-cffc-3785-e9a4-1d6dd826cd03";
  role_name_label = "vif.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_create = 
  { (* 1020/1968 *)
  role_uuid = "97b2ea1f-c272-bbfa-4e1b-ed567d0cc9b3";
  role_name_label = "vif.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_destroy = 
  { (* 1021/1968 *)
  role_uuid = "cf9b90c9-439b-c33c-c4eb-86e8b1bf4157";
  role_name_label = "vif.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_uuid = 
  { (* 1022/1968 *)
  role_uuid = "53e3bde4-ef9a-5933-62c6-89a992f399b0";
  role_name_label = "vif.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_allowed_operations = 
  { (* 1023/1968 *)
  role_uuid = "216b0366-cd42-24db-57b1-3c8fce70e4ba";
  role_name_label = "vif.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_current_operations = 
  { (* 1024/1968 *)
  role_uuid = "5beceb5c-5880-09dd-3eba-d5133d463f9b";
  role_name_label = "vif.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_device = 
  { (* 1025/1968 *)
  role_uuid = "7bd495ef-abbe-3363-4f68-64a70eed83eb";
  role_name_label = "vif.get_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_network = 
  { (* 1026/1968 *)
  role_uuid = "61fbb0bd-b453-3369-98a3-53f4f8a7fe6c";
  role_name_label = "vif.get_network";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_VM = 
  { (* 1027/1968 *)
  role_uuid = "00056679-3372-9b8e-6488-10d423edb0ad";
  role_name_label = "vif.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_MAC = 
  { (* 1028/1968 *)
  role_uuid = "64067282-0137-c32d-3ae4-7b20b6a93ad1";
  role_name_label = "vif.get_mac";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_MTU = 
  { (* 1029/1968 *)
  role_uuid = "97015ed2-cf9c-9ff4-9d34-b1ae9a377788";
  role_name_label = "vif.get_mtu";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_other_config = 
  { (* 1030/1968 *)
  role_uuid = "c492097b-20fb-0584-6559-893d4d35c82d";
  role_name_label = "vif.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_currently_attached = 
  { (* 1031/1968 *)
  role_uuid = "de3c3005-8901-9213-2c61-45e6d489c801";
  role_name_label = "vif.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_status_code = 
  { (* 1032/1968 *)
  role_uuid = "0fd4e192-6082-738e-c2c5-27cf2cb5f467";
  role_name_label = "vif.get_status_code";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_status_detail = 
  { (* 1033/1968 *)
  role_uuid = "3f4867e1-9401-bc2a-a260-5561bfe8d08c";
  role_name_label = "vif.get_status_detail";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_runtime_properties = 
  { (* 1034/1968 *)
  role_uuid = "3ad57875-8d33-5adf-7184-24f4df2b6981";
  role_name_label = "vif.get_runtime_properties";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_qos_algorithm_type = 
  { (* 1035/1968 *)
  role_uuid = "5c07d45f-d9f5-207e-1e3e-70c0b5abc69b";
  role_name_label = "vif.get_qos_algorithm_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_qos_algorithm_params = 
  { (* 1036/1968 *)
  role_uuid = "73ba289d-8cab-51d5-a8f6-ae42be46b61c";
  role_name_label = "vif.get_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_qos_supported_algorithms = 
  { (* 1037/1968 *)
  role_uuid = "88447749-f966-bae0-a649-ad12c1391cc2";
  role_name_label = "vif.get_qos_supported_algorithms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_metrics = 
  { (* 1038/1968 *)
  role_uuid = "9799e20d-f5ed-6371-1fd7-6ad3fb1df729";
  role_name_label = "vif.get_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_MAC_autogenerated = 
  { (* 1039/1968 *)
  role_uuid = "b06ba59a-e556-7f5c-902a-871a8004c149";
  role_name_label = "vif.get_mac_autogenerated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_locking_mode = 
  { (* 1040/1968 *)
  role_uuid = "6eb23ab4-da27-9d9b-3c1d-1bf27c1ca6b2";
  role_name_label = "vif.get_locking_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv4_allowed = 
  { (* 1041/1968 *)
  role_uuid = "522142a2-c5ce-4095-85b3-13bf2ca36175";
  role_name_label = "vif.get_ipv4_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv6_allowed = 
  { (* 1042/1968 *)
  role_uuid = "2fa043de-5e00-c856-7ceb-0b0a266f0a4c";
  role_name_label = "vif.get_ipv6_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv4_configuration_mode = 
  { (* 1043/1968 *)
  role_uuid = "a668628d-269e-f64e-345c-0da874b2f726";
  role_name_label = "vif.get_ipv4_configuration_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv4_addresses = 
  { (* 1044/1968 *)
  role_uuid = "3c8a852f-8a9d-1d7a-843a-c81e36671c13";
  role_name_label = "vif.get_ipv4_addresses";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv4_gateway = 
  { (* 1045/1968 *)
  role_uuid = "68a055d3-ad0c-6960-5e59-d0126ecfe13f";
  role_name_label = "vif.get_ipv4_gateway";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv6_configuration_mode = 
  { (* 1046/1968 *)
  role_uuid = "540279de-6ce7-b6d3-d837-0a3c61be1f93";
  role_name_label = "vif.get_ipv6_configuration_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv6_addresses = 
  { (* 1047/1968 *)
  role_uuid = "19aa4295-b99a-5c23-8d01-44561ac85903";
  role_name_label = "vif.get_ipv6_addresses";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_ipv6_gateway = 
  { (* 1048/1968 *)
  role_uuid = "7460e998-d1a1-6dbd-b71e-91f2db887c76";
  role_name_label = "vif.get_ipv6_gateway";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_other_config = 
  { (* 1049/1968 *)
  role_uuid = "7356e67b-7806-3749-5459-4409094561d0";
  role_name_label = "vif.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_add_to_other_config = 
  { (* 1050/1968 *)
  role_uuid = "e18acdf2-b7ed-9d85-2aad-10e4a767b62e";
  role_name_label = "vif.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_remove_from_other_config = 
  { (* 1051/1968 *)
  role_uuid = "81ee6b76-da69-18b4-18b1-f4e09aa1b119";
  role_name_label = "vif.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_qos_algorithm_type = 
  { (* 1052/1968 *)
  role_uuid = "61080452-d30d-cfed-7985-400322d30d53";
  role_name_label = "vif.set_qos_algorithm_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_qos_algorithm_params = 
  { (* 1053/1968 *)
  role_uuid = "bb7587c3-a0d4-46e4-af05-6ed1cc33d23b";
  role_name_label = "vif.set_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_add_to_qos_algorithm_params = 
  { (* 1054/1968 *)
  role_uuid = "1cf6f512-a2d7-1189-1e32-3a1e58c1e66f";
  role_name_label = "vif.add_to_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_remove_from_qos_algorithm_params = 
  { (* 1055/1968 *)
  role_uuid = "a04e6272-743e-809b-dc4b-a2edd6fdeb0b";
  role_name_label = "vif.remove_from_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_plug = 
  { (* 1056/1968 *)
  role_uuid = "5f3a7f4d-29e6-df00-2bd0-6a16b0fef414";
  role_name_label = "vif.plug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_unplug = 
  { (* 1057/1968 *)
  role_uuid = "6ed0eebe-e588-e5da-a6c5-c24353ce5d42";
  role_name_label = "vif.unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_unplug_force = 
  { (* 1058/1968 *)
  role_uuid = "e46476eb-f04e-f11e-ea3c-88dbe418ccb9";
  role_name_label = "vif.unplug_force";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_move = 
  { (* 1059/1968 *)
  role_uuid = "8c4a7172-d971-6f54-e4cb-89df7e00f2ab";
  role_name_label = "vif.move";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_locking_mode = 
  { (* 1060/1968 *)
  role_uuid = "d6b34164-85a4-cd30-0470-208c285eadb9";
  role_name_label = "vif.set_locking_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_ipv4_allowed = 
  { (* 1061/1968 *)
  role_uuid = "cb1caf20-8fea-fc40-c45f-7ed34f3a17bf";
  role_name_label = "vif.set_ipv4_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_add_ipv4_allowed = 
  { (* 1062/1968 *)
  role_uuid = "9c3da382-c08c-24e4-6f06-66fdac2ecbd5";
  role_name_label = "vif.add_ipv4_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_remove_ipv4_allowed = 
  { (* 1063/1968 *)
  role_uuid = "e9b01f04-bfbc-8d01-dd70-6e9298c449f0";
  role_name_label = "vif.remove_ipv4_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_set_ipv6_allowed = 
  { (* 1064/1968 *)
  role_uuid = "57d49215-72b9-ca21-6247-989c7593e029";
  role_name_label = "vif.set_ipv6_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_add_ipv6_allowed = 
  { (* 1065/1968 *)
  role_uuid = "4f538c4c-a6f2-5ac5-f80c-7290a5ad4c55";
  role_name_label = "vif.add_ipv6_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_remove_ipv6_allowed = 
  { (* 1066/1968 *)
  role_uuid = "e11f4509-d43f-a0ac-ef89-596c271c91e1";
  role_name_label = "vif.remove_ipv6_allowed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_configure_ipv4 = 
  { (* 1067/1968 *)
  role_uuid = "fb930153-d17a-478a-bd7e-56a4e5cce5cf";
  role_name_label = "vif.configure_ipv4";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_configure_ipv6 = 
  { (* 1068/1968 *)
  role_uuid = "451a26ec-d781-1597-19b3-4df438ad01d8";
  role_name_label = "vif.configure_ipv6";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_all = 
  { (* 1069/1968 *)
  role_uuid = "dc84c131-adf9-d460-4988-294d88b46924";
  role_name_label = "vif.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_all_records_where = 
  { (* 1070/1968 *)
  role_uuid = "f559123e-c887-6ab7-49cb-675b315d69d7";
  role_name_label = "vif.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_get_all_records = 
  { (* 1071/1968 *)
  role_uuid = "9de70f7b-12d1-6625-5970-894335e62431";
  role_name_label = "vif.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_record = 
  { (* 1072/1968 *)
  role_uuid = "7c2f2761-86e0-d176-8791-cccfe25d8700";
  role_name_label = "vif_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_by_uuid = 
  { (* 1073/1968 *)
  role_uuid = "e4fd9189-1c6e-8b2d-690b-8f7923b2477e";
  role_name_label = "vif_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_uuid = 
  { (* 1074/1968 *)
  role_uuid = "1069a4f0-17e8-cde0-bf04-ffa08d2878ea";
  role_name_label = "vif_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_io_read_kbs = 
  { (* 1075/1968 *)
  role_uuid = "3d8acc2e-3bf1-9245-35dd-493184d88770";
  role_name_label = "vif_metrics.get_io_read_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_io_write_kbs = 
  { (* 1076/1968 *)
  role_uuid = "c41cce49-6fcf-44c2-1c59-99d127686bff";
  role_name_label = "vif_metrics.get_io_write_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_last_updated = 
  { (* 1077/1968 *)
  role_uuid = "03c65989-d970-28e1-2d72-8cf1ffb06a95";
  role_name_label = "vif_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_other_config = 
  { (* 1078/1968 *)
  role_uuid = "2a8ae027-e709-28ac-8de5-56adc284daa6";
  role_name_label = "vif_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_set_other_config = 
  { (* 1079/1968 *)
  role_uuid = "3eded99d-19e8-b6ca-435c-7b6f2b220b3c";
  role_name_label = "vif_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_add_to_other_config = 
  { (* 1080/1968 *)
  role_uuid = "c58d6c90-98ef-d44f-f4d4-47bbfebf6a28";
  role_name_label = "vif_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_remove_from_other_config = 
  { (* 1081/1968 *)
  role_uuid = "3a08550d-abba-d9d6-bcf3-df495332dc7f";
  role_name_label = "vif_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_all = 
  { (* 1082/1968 *)
  role_uuid = "396ee7a7-5e5c-9399-d89a-427109e6ab21";
  role_name_label = "vif_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_all_records_where = 
  { (* 1083/1968 *)
  role_uuid = "cfbc0c25-0514-0a40-1c57-9e063667d33e";
  role_name_label = "vif_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VIF_metrics_get_all_records = 
  { (* 1084/1968 *)
  role_uuid = "a6d34497-1418-7a05-f792-60f8cbd8f7c5";
  role_name_label = "vif_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_record = 
  { (* 1085/1968 *)
  role_uuid = "6fcc710b-6217-2c38-f2bf-2455728b2b0d";
  role_name_label = "pif.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_by_uuid = 
  { (* 1086/1968 *)
  role_uuid = "805b2422-565d-0957-0898-5d5a078ee501";
  role_name_label = "pif.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_uuid = 
  { (* 1087/1968 *)
  role_uuid = "3d022c5c-d53d-333c-706d-c175777da30c";
  role_name_label = "pif.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_device = 
  { (* 1088/1968 *)
  role_uuid = "09593fa1-1b87-1d23-8e61-bf79b93236fc";
  role_name_label = "pif.get_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_network = 
  { (* 1089/1968 *)
  role_uuid = "3cc87704-357e-0ea7-e918-dcae6f73fa8d";
  role_name_label = "pif.get_network";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_host = 
  { (* 1090/1968 *)
  role_uuid = "49bc2875-5acd-548c-8823-bd2c6c2322d2";
  role_name_label = "pif.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_MAC = 
  { (* 1091/1968 *)
  role_uuid = "ac3fcf2e-8995-8f1b-3849-e897d1eaa4ae";
  role_name_label = "pif.get_mac";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_MTU = 
  { (* 1092/1968 *)
  role_uuid = "57fb16f4-51fc-7798-1845-070ca26ba746";
  role_name_label = "pif.get_mtu";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_VLAN = 
  { (* 1093/1968 *)
  role_uuid = "544ea348-b989-8d3e-6042-13999626c5e0";
  role_name_label = "pif.get_vlan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_metrics = 
  { (* 1094/1968 *)
  role_uuid = "34c8cdd1-6c69-506d-2e10-1a051d5f7d60";
  role_name_label = "pif.get_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_physical = 
  { (* 1095/1968 *)
  role_uuid = "db6de8b4-bfd5-c3a5-905f-94106bb5a2ab";
  role_name_label = "pif.get_physical";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_currently_attached = 
  { (* 1096/1968 *)
  role_uuid = "c1207e93-3ffe-9166-4ff7-80b763788417";
  role_name_label = "pif.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_ip_configuration_mode = 
  { (* 1097/1968 *)
  role_uuid = "2804a382-939d-876d-c50a-dc18d199bfe8";
  role_name_label = "pif.get_ip_configuration_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_IP = 
  { (* 1098/1968 *)
  role_uuid = "4b182675-bbcd-8a69-3671-5803cb22b481";
  role_name_label = "pif.get_ip";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_netmask = 
  { (* 1099/1968 *)
  role_uuid = "e01a098d-e8fc-81fa-764e-c07a342d219a";
  role_name_label = "pif.get_netmask";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_gateway = 
  { (* 1100/1968 *)
  role_uuid = "2036d54b-2179-ce69-a922-9b2d5cce6916";
  role_name_label = "pif.get_gateway";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_DNS = 
  { (* 1101/1968 *)
  role_uuid = "58e3edff-51a7-7143-020c-11e3821c18cf";
  role_name_label = "pif.get_dns";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_bond_slave_of = 
  { (* 1102/1968 *)
  role_uuid = "283982da-ebce-2cc4-faeb-4bee137761bc";
  role_name_label = "pif.get_bond_slave_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_bond_master_of = 
  { (* 1103/1968 *)
  role_uuid = "f17f15a8-882f-380a-1e75-7074e4e51e1e";
  role_name_label = "pif.get_bond_master_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_VLAN_master_of = 
  { (* 1104/1968 *)
  role_uuid = "d6271e34-14a8-85dd-28dd-f090b63ff588";
  role_name_label = "pif.get_vlan_master_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_VLAN_slave_of = 
  { (* 1105/1968 *)
  role_uuid = "499f5734-a8d4-4c55-83af-f0b1e2a9d67e";
  role_name_label = "pif.get_vlan_slave_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_management = 
  { (* 1106/1968 *)
  role_uuid = "89e757f3-4619-1fe9-1b1b-3afdc986af84";
  role_name_label = "pif.get_management";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_other_config = 
  { (* 1107/1968 *)
  role_uuid = "62801603-a12a-b8ae-eb7a-0890725c7310";
  role_name_label = "pif.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_disallow_unplug = 
  { (* 1108/1968 *)
  role_uuid = "8673c2e3-429c-7599-35e6-e9a804892d2a";
  role_name_label = "pif.get_disallow_unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_tunnel_access_PIF_of = 
  { (* 1109/1968 *)
  role_uuid = "3ee06801-74e6-08cd-b237-7636668ced4f";
  role_name_label = "pif.get_tunnel_access_pif_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_tunnel_transport_PIF_of = 
  { (* 1110/1968 *)
  role_uuid = "af9bf6e8-720f-8eba-b583-5ee68d14de90";
  role_name_label = "pif.get_tunnel_transport_pif_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_ipv6_configuration_mode = 
  { (* 1111/1968 *)
  role_uuid = "a212b9b8-aa8a-6243-180e-4270a46cec2f";
  role_name_label = "pif.get_ipv6_configuration_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_IPv6 = 
  { (* 1112/1968 *)
  role_uuid = "a1492f6d-0469-f57f-074a-88453672a2de";
  role_name_label = "pif.get_ipv6";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_ipv6_gateway = 
  { (* 1113/1968 *)
  role_uuid = "e756d67d-3c2b-a489-3c3e-763748f886e4";
  role_name_label = "pif.get_ipv6_gateway";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_primary_address_type = 
  { (* 1114/1968 *)
  role_uuid = "39b6f8c8-bfbf-b629-5d92-6594e516730a";
  role_name_label = "pif.get_primary_address_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_managed = 
  { (* 1115/1968 *)
  role_uuid = "5f252605-323b-3f51-ae92-2c0d88e1763e";
  role_name_label = "pif.get_managed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_properties = 
  { (* 1116/1968 *)
  role_uuid = "a09e6bf3-5c70-e431-8e24-f378714e88fe";
  role_name_label = "pif.get_properties";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_capabilities = 
  { (* 1117/1968 *)
  role_uuid = "32793df2-6e19-0969-78e5-9c100c49fc05";
  role_name_label = "pif.get_capabilities";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_igmp_snooping_status = 
  { (* 1118/1968 *)
  role_uuid = "d4ed6080-2379-5f95-97e7-69afd98b9dce";
  role_name_label = "pif.get_igmp_snooping_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_sriov_physical_PIF_of = 
  { (* 1119/1968 *)
  role_uuid = "6e5f35f9-5020-63c7-a9d9-f46e47bc15ff";
  role_name_label = "pif.get_sriov_physical_pif_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_sriov_logical_PIF_of = 
  { (* 1120/1968 *)
  role_uuid = "da1062a0-2198-2612-b944-91c0145fccc2";
  role_name_label = "pif.get_sriov_logical_pif_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_PCI = 
  { (* 1121/1968 *)
  role_uuid = "3a089526-cdad-5d35-f24c-c291b74b6a17";
  role_name_label = "pif.get_pci";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_set_other_config = 
  { (* 1122/1968 *)
  role_uuid = "5c1423bc-7a5b-2534-ba37-295c7186dcd7";
  role_name_label = "pif.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_add_to_other_config = 
  { (* 1123/1968 *)
  role_uuid = "19b78c71-2cdb-8e28-6211-047d04e287dd";
  role_name_label = "pif.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_remove_from_other_config = 
  { (* 1124/1968 *)
  role_uuid = "52a2adf9-049b-7a18-c484-87ac5d72ad97";
  role_name_label = "pif.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_create_VLAN = 
  { (* 1125/1968 *)
  role_uuid = "e14060f6-a3a3-d143-5b31-560944959d13";
  role_name_label = "pif.create_vlan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_destroy = 
  { (* 1126/1968 *)
  role_uuid = "47f88d02-ac99-2cdb-418c-c9e2e9ce7bf8";
  role_name_label = "pif.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_reconfigure_ip = 
  { (* 1127/1968 *)
  role_uuid = "91dea557-fa82-8092-0fda-fe2a011642a3";
  role_name_label = "pif.reconfigure_ip";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_reconfigure_ipv6 = 
  { (* 1128/1968 *)
  role_uuid = "aded9fab-67cb-95b8-83f7-4348145f15d8";
  role_name_label = "pif.reconfigure_ipv6";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_set_primary_address_type = 
  { (* 1129/1968 *)
  role_uuid = "13e4fa9b-f6b2-1004-c292-596ef96c91a2";
  role_name_label = "pif.set_primary_address_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_scan = 
  { (* 1130/1968 *)
  role_uuid = "097acb71-bfbc-544c-6510-425fbc5bf0c5";
  role_name_label = "pif.scan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_introduce = 
  { (* 1131/1968 *)
  role_uuid = "ba181e9c-bb3f-a159-54b8-0c408b51b702";
  role_name_label = "pif.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_forget = 
  { (* 1132/1968 *)
  role_uuid = "8f7d7db9-4e24-7316-f50f-56e7e62efddc";
  role_name_label = "pif.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_unplug = 
  { (* 1133/1968 *)
  role_uuid = "991d65d4-eb8c-9dd0-f0cf-9cae1c91d90c";
  role_name_label = "pif.unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_set_disallow_unplug = 
  { (* 1134/1968 *)
  role_uuid = "8f70e9d9-bd3c-93e3-173a-49afe26cf566";
  role_name_label = "pif.set_disallow_unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_plug = 
  { (* 1135/1968 *)
  role_uuid = "7f956af8-0126-4429-cc23-033090d5a028";
  role_name_label = "pif.plug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_pool_introduce = 
  { (* 1136/1968 *)
  role_uuid = "edaec0ce-7f5d-2886-0101-5adf8a69a6e7";
  role_name_label = "pif.pool_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_db_introduce = 
  { (* 1137/1968 *)
  role_uuid = "9362d5c2-3f86-50f3-d68a-2949915fab05";
  role_name_label = "pif.db_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_db_forget = 
  { (* 1138/1968 *)
  role_uuid = "e638b68d-cf4a-f81d-64c9-df34168b2137";
  role_name_label = "pif.db_forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_set_property = 
  { (* 1139/1968 *)
  role_uuid = "af5c40e5-9817-a986-70d0-683c86eb1f7f";
  role_name_label = "pif.set_property";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_all = 
  { (* 1140/1968 *)
  role_uuid = "c18535f5-924a-5a11-7522-c8ba88f23eac";
  role_name_label = "pif.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_all_records_where = 
  { (* 1141/1968 *)
  role_uuid = "acf9e287-4110-4a5a-c753-7925bb43678f";
  role_name_label = "pif.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_get_all_records = 
  { (* 1142/1968 *)
  role_uuid = "d7435e71-c22c-3fdd-bbcf-33849cc039c3";
  role_name_label = "pif.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_record = 
  { (* 1143/1968 *)
  role_uuid = "3057ba41-6ab0-21bb-c4b9-2a53ded43c5a";
  role_name_label = "pif_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_by_uuid = 
  { (* 1144/1968 *)
  role_uuid = "e69c0e91-d962-f102-9200-5b00d7ff495a";
  role_name_label = "pif_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_uuid = 
  { (* 1145/1968 *)
  role_uuid = "784956f0-eb8f-e687-118f-5ee8fabc47dd";
  role_name_label = "pif_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_io_read_kbs = 
  { (* 1146/1968 *)
  role_uuid = "d0e2be89-4c37-3974-149e-c06d8358e0be";
  role_name_label = "pif_metrics.get_io_read_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_io_write_kbs = 
  { (* 1147/1968 *)
  role_uuid = "c317c9dd-000f-61e2-91f4-cafc36cc3f65";
  role_name_label = "pif_metrics.get_io_write_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_carrier = 
  { (* 1148/1968 *)
  role_uuid = "dc719910-a701-5800-fe16-18e3cb4fc00e";
  role_name_label = "pif_metrics.get_carrier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_vendor_id = 
  { (* 1149/1968 *)
  role_uuid = "0dfef1da-7988-b6a2-0752-20b8dfcad6b5";
  role_name_label = "pif_metrics.get_vendor_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_vendor_name = 
  { (* 1150/1968 *)
  role_uuid = "a7f5635e-754b-2c47-0182-b2cd6eaa6a4c";
  role_name_label = "pif_metrics.get_vendor_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_device_id = 
  { (* 1151/1968 *)
  role_uuid = "21c41bf0-8c5e-b6de-5dc7-f71cb751a430";
  role_name_label = "pif_metrics.get_device_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_device_name = 
  { (* 1152/1968 *)
  role_uuid = "37548ef6-abc2-9f49-7fd5-efe65a5b5448";
  role_name_label = "pif_metrics.get_device_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_speed = 
  { (* 1153/1968 *)
  role_uuid = "5cc2dbe3-4c16-8f9f-ce59-2bd3a60fc044";
  role_name_label = "pif_metrics.get_speed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_duplex = 
  { (* 1154/1968 *)
  role_uuid = "6682964a-92f7-ece2-30b1-583be0f69b15";
  role_name_label = "pif_metrics.get_duplex";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_pci_bus_path = 
  { (* 1155/1968 *)
  role_uuid = "eb0f1687-b443-2873-e3c5-3464197a2a50";
  role_name_label = "pif_metrics.get_pci_bus_path";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_last_updated = 
  { (* 1156/1968 *)
  role_uuid = "ca439f57-3fa8-ee93-f2a5-5d4f72cbb907";
  role_name_label = "pif_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_other_config = 
  { (* 1157/1968 *)
  role_uuid = "28069750-7807-2fa6-9bc2-bae7456f5de9";
  role_name_label = "pif_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_set_other_config = 
  { (* 1158/1968 *)
  role_uuid = "a988b203-87ad-2774-daff-abb02c8b8242";
  role_name_label = "pif_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_add_to_other_config = 
  { (* 1159/1968 *)
  role_uuid = "3a933cb7-62fd-7929-3052-b8f7caffc9c1";
  role_name_label = "pif_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_remove_from_other_config = 
  { (* 1160/1968 *)
  role_uuid = "d68b60f7-6618-0e76-a3b7-226f3c30b789";
  role_name_label = "pif_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_all = 
  { (* 1161/1968 *)
  role_uuid = "450af311-5669-e4c7-6ca3-b3350172eafb";
  role_name_label = "pif_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_all_records_where = 
  { (* 1162/1968 *)
  role_uuid = "9fb5a1d6-e53b-24af-bb7c-49a942f0bc65";
  role_name_label = "pif_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PIF_metrics_get_all_records = 
  { (* 1163/1968 *)
  role_uuid = "ad6b4de5-bb53-c27c-f34a-033542cbcf61";
  role_name_label = "pif_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_record = 
  { (* 1164/1968 *)
  role_uuid = "cf8f0a82-e845-5f00-68b3-d0905d31e8be";
  role_name_label = "bond.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_by_uuid = 
  { (* 1165/1968 *)
  role_uuid = "fc7cd54b-2fde-4fe7-4caa-e152930fed06";
  role_name_label = "bond.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_uuid = 
  { (* 1166/1968 *)
  role_uuid = "d619c5a5-074a-a015-1c1d-a0a0e62bfaa5";
  role_name_label = "bond.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_master = 
  { (* 1167/1968 *)
  role_uuid = "84d71586-5ce8-2364-c74b-0017c93b82b2";
  role_name_label = "bond.get_master";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_slaves = 
  { (* 1168/1968 *)
  role_uuid = "0e28a706-8960-58a7-4f9d-c3b0eea64a0a";
  role_name_label = "bond.get_slaves";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_other_config = 
  { (* 1169/1968 *)
  role_uuid = "e3637139-7f57-56b3-b8e8-4fd736f11588";
  role_name_label = "bond.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_primary_slave = 
  { (* 1170/1968 *)
  role_uuid = "164a66c7-e0b0-7fd7-ccd3-d13042353c78";
  role_name_label = "bond.get_primary_slave";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_mode = 
  { (* 1171/1968 *)
  role_uuid = "88fc5a8b-e5f3-612f-7a32-e5a651abd04b";
  role_name_label = "bond.get_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_properties = 
  { (* 1172/1968 *)
  role_uuid = "0ed8495c-b53e-7951-d041-14df9605e6f8";
  role_name_label = "bond.get_properties";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_links_up = 
  { (* 1173/1968 *)
  role_uuid = "88f8cb5b-b92e-0ab4-307d-2ed4ea447475";
  role_name_label = "bond.get_links_up";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_auto_update_mac = 
  { (* 1174/1968 *)
  role_uuid = "7fff0c45-11cb-3bf2-9ce2-01f7a767b863";
  role_name_label = "bond.get_auto_update_mac";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_set_other_config = 
  { (* 1175/1968 *)
  role_uuid = "8d328936-9d02-d5de-239c-a5ac7683fe55";
  role_name_label = "bond.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_add_to_other_config = 
  { (* 1176/1968 *)
  role_uuid = "832c3695-97bc-0149-a67b-72168f3399ad";
  role_name_label = "bond.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_remove_from_other_config = 
  { (* 1177/1968 *)
  role_uuid = "4ac0e45c-dfd2-201f-80ea-ebfd8d71427b";
  role_name_label = "bond.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_create = 
  { (* 1178/1968 *)
  role_uuid = "efb7cbd4-61f4-0486-ddf7-7b2d7b75eaf0";
  role_name_label = "bond.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_destroy = 
  { (* 1179/1968 *)
  role_uuid = "0e80dc41-4ea3-d605-ee1c-80287a3bac23";
  role_name_label = "bond.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_set_mode = 
  { (* 1180/1968 *)
  role_uuid = "7a68af31-9342-776f-91f6-ed3e1fe3b25e";
  role_name_label = "bond.set_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_set_property = 
  { (* 1181/1968 *)
  role_uuid = "4c00e8eb-9e93-8e7c-ae07-284d760310fa";
  role_name_label = "bond.set_property";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_all = 
  { (* 1182/1968 *)
  role_uuid = "e7d108ee-2082-98c2-acb6-5884f39f3056";
  role_name_label = "bond.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_all_records_where = 
  { (* 1183/1968 *)
  role_uuid = "62084664-4e15-5ca5-99eb-00007ed70717";
  role_name_label = "bond.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Bond_get_all_records = 
  { (* 1184/1968 *)
  role_uuid = "f2df7036-f418-a415-ddca-d31ba6ff611e";
  role_name_label = "bond.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_record = 
  { (* 1185/1968 *)
  role_uuid = "4b368ad8-3eec-31b3-5fb0-d1070507cfd0";
  role_name_label = "vlan.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_by_uuid = 
  { (* 1186/1968 *)
  role_uuid = "b7db64ab-97ce-4dfb-45d7-f505756fe4a8";
  role_name_label = "vlan.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_uuid = 
  { (* 1187/1968 *)
  role_uuid = "25d4aaa3-582d-7e6e-eb43-8fba9c42568c";
  role_name_label = "vlan.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_tagged_PIF = 
  { (* 1188/1968 *)
  role_uuid = "ff776240-dbd0-9ef8-f34f-42c85cf01b3a";
  role_name_label = "vlan.get_tagged_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_untagged_PIF = 
  { (* 1189/1968 *)
  role_uuid = "559b520f-dcef-e6b3-6a21-3a74d84d3fa8";
  role_name_label = "vlan.get_untagged_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_tag = 
  { (* 1190/1968 *)
  role_uuid = "1a37ccfd-f500-bd50-bb25-f20411bfbb35";
  role_name_label = "vlan.get_tag";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_other_config = 
  { (* 1191/1968 *)
  role_uuid = "086121bb-2bba-06e9-bab2-6b7414b0e4eb";
  role_name_label = "vlan.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_set_other_config = 
  { (* 1192/1968 *)
  role_uuid = "bb1cdcf0-b311-780a-0ef3-f513d856d37c";
  role_name_label = "vlan.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_add_to_other_config = 
  { (* 1193/1968 *)
  role_uuid = "46e0c783-d1a0-5ef3-18ff-b10089c66fce";
  role_name_label = "vlan.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_remove_from_other_config = 
  { (* 1194/1968 *)
  role_uuid = "6d7ab29d-bf4b-8fb0-5b6f-d988b1e17a60";
  role_name_label = "vlan.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_pool_introduce = 
  { (* 1195/1968 *)
  role_uuid = "a8aea9d0-232f-dea0-bc0b-f2f6af61b89f";
  role_name_label = "vlan.pool_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_create = 
  { (* 1196/1968 *)
  role_uuid = "051ea96b-6608-7758-cc1a-70c7e474ad7f";
  role_name_label = "vlan.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_destroy = 
  { (* 1197/1968 *)
  role_uuid = "8e7d8b4d-8ffb-c803-5d00-49a3d08d43fc";
  role_name_label = "vlan.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_all = 
  { (* 1198/1968 *)
  role_uuid = "2fd85a90-74c9-15e6-d4f7-e59c7f584ac4";
  role_name_label = "vlan.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_all_records_where = 
  { (* 1199/1968 *)
  role_uuid = "54cb0e64-7459-04bb-621b-4f16f42ba21f";
  role_name_label = "vlan.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VLAN_get_all_records = 
  { (* 1200/1968 *)
  role_uuid = "9e2e9082-8361-adb3-1e6b-51178368e9a5";
  role_name_label = "vlan.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_record = 
  { (* 1201/1968 *)
  role_uuid = "f1ab04b2-6571-fff1-66c0-720ca6c50bfe";
  role_name_label = "sm.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_by_uuid = 
  { (* 1202/1968 *)
  role_uuid = "616109ba-d73f-ad1f-a4ac-4a1454b7b742";
  role_name_label = "sm.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_by_name_label = 
  { (* 1203/1968 *)
  role_uuid = "8295c108-ca0f-bc2e-1d77-d580d9dcbdff";
  role_name_label = "sm.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_uuid = 
  { (* 1204/1968 *)
  role_uuid = "65e61767-fa64-53ff-0056-6491eaec7d1c";
  role_name_label = "sm.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_name_label = 
  { (* 1205/1968 *)
  role_uuid = "b2dc1fd3-b84c-d045-efe6-174954f53ad0";
  role_name_label = "sm.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_name_description = 
  { (* 1206/1968 *)
  role_uuid = "a534c226-3cce-06b6-3a28-cbf339c0e385";
  role_name_label = "sm.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_type = 
  { (* 1207/1968 *)
  role_uuid = "a576f048-226e-b605-b15d-f388fd903210";
  role_name_label = "sm.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_vendor = 
  { (* 1208/1968 *)
  role_uuid = "676b455a-f9eb-78e3-a1ef-a1ea437f6110";
  role_name_label = "sm.get_vendor";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_copyright = 
  { (* 1209/1968 *)
  role_uuid = "3d4411cf-b855-6140-b1cd-1c6b7a0ebedd";
  role_name_label = "sm.get_copyright";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_version = 
  { (* 1210/1968 *)
  role_uuid = "a0184446-8631-4833-3651-61ca4293ca60";
  role_name_label = "sm.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_required_api_version = 
  { (* 1211/1968 *)
  role_uuid = "b277f808-66e4-fd82-2300-bfae51e59679";
  role_name_label = "sm.get_required_api_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_configuration = 
  { (* 1212/1968 *)
  role_uuid = "babc2b36-7a11-3b3d-03da-fc3130f49a35";
  role_name_label = "sm.get_configuration";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_capabilities = 
  { (* 1213/1968 *)
  role_uuid = "2a3d6942-c2df-0472-5241-52530708b8c7";
  role_name_label = "sm.get_capabilities";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_features = 
  { (* 1214/1968 *)
  role_uuid = "7e23cac0-90ad-45ba-9a62-c7b6a6e4002c";
  role_name_label = "sm.get_features";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_other_config = 
  { (* 1215/1968 *)
  role_uuid = "b8f9b23f-65b1-75c0-289b-e6e2872ee81d";
  role_name_label = "sm.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_driver_filename = 
  { (* 1216/1968 *)
  role_uuid = "2adc8291-5288-6526-87a0-0b15ec4ca4fa";
  role_name_label = "sm.get_driver_filename";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_required_cluster_stack = 
  { (* 1217/1968 *)
  role_uuid = "3acaeddb-f6dc-eab7-758a-e97497e3641f";
  role_name_label = "sm.get_required_cluster_stack";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_set_other_config = 
  { (* 1218/1968 *)
  role_uuid = "6fc9e87d-86a3-2cf4-dd26-017c20571a05";
  role_name_label = "sm.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_add_to_other_config = 
  { (* 1219/1968 *)
  role_uuid = "b0d0708d-79a0-7f33-2b39-4e2a59000bbf";
  role_name_label = "sm.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_remove_from_other_config = 
  { (* 1220/1968 *)
  role_uuid = "4b284b33-faf7-ba98-7e68-6a53191fdb97";
  role_name_label = "sm.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_all = 
  { (* 1221/1968 *)
  role_uuid = "01844316-a78d-e6f9-a7b7-53a939235f5d";
  role_name_label = "sm.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_all_records_where = 
  { (* 1222/1968 *)
  role_uuid = "b1d61197-b0bf-cb30-2120-627c956a97f7";
  role_name_label = "sm.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SM_get_all_records = 
  { (* 1223/1968 *)
  role_uuid = "74ef5702-8a42-a7a6-8951-a28ae3b64197";
  role_name_label = "sm.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_record = 
  { (* 1224/1968 *)
  role_uuid = "ab2230c7-8d4b-357d-6a26-62f7c9b0bb27";
  role_name_label = "sr.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_by_uuid = 
  { (* 1225/1968 *)
  role_uuid = "ce3646e1-704b-6b7e-f468-45a009bec12d";
  role_name_label = "sr.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_by_name_label = 
  { (* 1226/1968 *)
  role_uuid = "c911cfca-5100-8446-b631-2d6f3861350c";
  role_name_label = "sr.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_uuid = 
  { (* 1227/1968 *)
  role_uuid = "f3ba88dc-9ccd-d9d9-71ee-c874040f0fc4";
  role_name_label = "sr.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_name_label = 
  { (* 1228/1968 *)
  role_uuid = "883d4710-6475-244f-cce7-d17282265fdc";
  role_name_label = "sr.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_name_description = 
  { (* 1229/1968 *)
  role_uuid = "56a2f957-6b1b-7d8d-00f6-931d4574f63b";
  role_name_label = "sr.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_allowed_operations = 
  { (* 1230/1968 *)
  role_uuid = "bd6f9aa9-3f9c-8e22-7c2f-69f38bd6472f";
  role_name_label = "sr.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_current_operations = 
  { (* 1231/1968 *)
  role_uuid = "ba6f9682-ea22-caf0-ea6a-cfad6774390d";
  role_name_label = "sr.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_VDIs = 
  { (* 1232/1968 *)
  role_uuid = "04ac5338-b19b-6833-ed3c-b992d6ef8328";
  role_name_label = "sr.get_vdis";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_PBDs = 
  { (* 1233/1968 *)
  role_uuid = "917258fe-6427-e960-98e8-9f3bbd88bd22";
  role_name_label = "sr.get_pbds";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_virtual_allocation = 
  { (* 1234/1968 *)
  role_uuid = "2de23583-b3f1-6e39-4bd9-4c7bc7afc977";
  role_name_label = "sr.get_virtual_allocation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_physical_utilisation = 
  { (* 1235/1968 *)
  role_uuid = "46c7e8d5-56f3-060f-2995-2d969d216c2b";
  role_name_label = "sr.get_physical_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_physical_size = 
  { (* 1236/1968 *)
  role_uuid = "06f0d6d5-0fd9-f30d-9b62-0cd0c59191b5";
  role_name_label = "sr.get_physical_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_type = 
  { (* 1237/1968 *)
  role_uuid = "c2bc934e-8ece-de2e-3288-7ccbab1e257d";
  role_name_label = "sr.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_content_type = 
  { (* 1238/1968 *)
  role_uuid = "e0ec22dc-e8f1-5f2f-23d2-5ab50665f83a";
  role_name_label = "sr.get_content_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_shared = 
  { (* 1239/1968 *)
  role_uuid = "3b5deb71-ec32-2485-4913-089fa04f1ace";
  role_name_label = "sr.get_shared";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_other_config = 
  { (* 1240/1968 *)
  role_uuid = "c7b868fb-53dd-4ff6-9b83-fe096e910d82";
  role_name_label = "sr.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_tags = 
  { (* 1241/1968 *)
  role_uuid = "3516a06e-5a67-7f1f-4c83-40b3d7e914f0";
  role_name_label = "sr.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_sm_config = 
  { (* 1242/1968 *)
  role_uuid = "439dce99-b067-9c88-7a0a-06e581f8f502";
  role_name_label = "sr.get_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_blobs = 
  { (* 1243/1968 *)
  role_uuid = "8e7a8bd9-9ac6-a612-477a-12c33c6af2d3";
  role_name_label = "sr.get_blobs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_local_cache_enabled = 
  { (* 1244/1968 *)
  role_uuid = "2cc96f79-52aa-dafc-494e-5d04eb63b66e";
  role_name_label = "sr.get_local_cache_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_introduced_by = 
  { (* 1245/1968 *)
  role_uuid = "2966c4db-3b8e-7257-734f-0969cf20819d";
  role_name_label = "sr.get_introduced_by";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_clustered = 
  { (* 1246/1968 *)
  role_uuid = "871e2698-a5e5-f6e4-090e-2a18ecda6b73";
  role_name_label = "sr.get_clustered";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_is_tools_sr = 
  { (* 1247/1968 *)
  role_uuid = "06270687-adb7-4b53-7c9f-292b5265fc8f";
  role_name_label = "sr.get_is_tools_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_other_config = 
  { (* 1248/1968 *)
  role_uuid = "f2ec9f37-10d9-7d1b-510a-4415578358ec";
  role_name_label = "sr.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_add_to_other_config = 
  { (* 1249/1968 *)
  role_uuid = "56fb3052-8b86-22ad-c7fc-b2526f97e6b7";
  role_name_label = "sr.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_add_to_other_config_key_folder = 
  { (* 1250/1968 *)
  role_uuid = "312ca834-68b2-6c0c-7608-9fa37ab92a80";
  role_name_label = "sr.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 1251/1968 *)
  role_uuid = "de6644f5-642f-de4c-0a6c-643305b2d412";
  role_name_label = "sr.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_remove_from_other_config = 
  { (* 1252/1968 *)
  role_uuid = "1e09548b-2543-cf4f-f3c4-5ccf24e7f34a";
  role_name_label = "sr.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_remove_from_other_config_key_folder = 
  { (* 1253/1968 *)
  role_uuid = "532b0c67-7dc7-8ea3-2e90-ed2db7b2a1db";
  role_name_label = "sr.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 1254/1968 *)
  role_uuid = "b36dd591-9707-22a9-dd2f-f4ace0f16c2f";
  role_name_label = "sr.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_tags = 
  { (* 1255/1968 *)
  role_uuid = "73dcfb11-02cd-8963-408b-dad8c5e273f9";
  role_name_label = "sr.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_add_tags = 
  { (* 1256/1968 *)
  role_uuid = "4422e4c7-9256-2554-f5cd-20e747e332de";
  role_name_label = "sr.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_remove_tags = 
  { (* 1257/1968 *)
  role_uuid = "18dad7b9-c57e-c98d-7d17-f0bf1d7e06ab";
  role_name_label = "sr.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_sm_config = 
  { (* 1258/1968 *)
  role_uuid = "b843bef9-a511-6d24-6f3c-35213ab63e72";
  role_name_label = "sr.set_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_add_to_sm_config = 
  { (* 1259/1968 *)
  role_uuid = "99348363-3c41-3555-2ea6-69f9286ab01f";
  role_name_label = "sr.add_to_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_remove_from_sm_config = 
  { (* 1260/1968 *)
  role_uuid = "2a640dcd-ecb7-7c13-f614-5ece445d6af6";
  role_name_label = "sr.remove_from_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_create = 
  { (* 1261/1968 *)
  role_uuid = "67ee9e01-bacd-05d3-a6f6-d7e36b2e3615";
  role_name_label = "sr.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_introduce = 
  { (* 1262/1968 *)
  role_uuid = "0b3def91-9eba-d648-87f7-fd46891784ee";
  role_name_label = "sr.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_make = 
  { (* 1263/1968 *)
  role_uuid = "3a5fc160-ae59-bc77-0753-e356a3ad9b90";
  role_name_label = "sr.make";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_destroy = 
  { (* 1264/1968 *)
  role_uuid = "e5c75e3c-d11e-b898-e9e7-330a9199bf1f";
  role_name_label = "sr.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_forget = 
  { (* 1265/1968 *)
  role_uuid = "38ef0f15-9dd4-29bd-cee4-b90a4f40b781";
  role_name_label = "sr.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_update = 
  { (* 1266/1968 *)
  role_uuid = "6d1d191d-e4b5-6ea6-9fa1-77be26dac4b6";
  role_name_label = "sr.update";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_supported_types = 
  { (* 1267/1968 *)
  role_uuid = "412f975b-5a60-92d0-a171-2bedf499c0f5";
  role_name_label = "sr.get_supported_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_scan = 
  { (* 1268/1968 *)
  role_uuid = "4e5603db-37bc-eb71-1024-e2f12969924c";
  role_name_label = "sr.scan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_probe = 
  { (* 1269/1968 *)
  role_uuid = "2a010f2e-db5a-5674-cd2c-86c314edff3a";
  role_name_label = "sr.probe";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_probe_ext = 
  { (* 1270/1968 *)
  role_uuid = "79a2eb16-6b7b-8e12-51ad-357c5336c2a4";
  role_name_label = "sr.probe_ext";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_shared = 
  { (* 1271/1968 *)
  role_uuid = "c55b00c9-0dd4-cfa7-8c15-9f45566790eb";
  role_name_label = "sr.set_shared";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_name_label = 
  { (* 1272/1968 *)
  role_uuid = "1d31bdb6-108a-c58f-726e-698a3ae8a4c2";
  role_name_label = "sr.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_name_description = 
  { (* 1273/1968 *)
  role_uuid = "229e72e3-bb39-e68e-870a-66da28febf25";
  role_name_label = "sr.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_create_new_blob = 
  { (* 1274/1968 *)
  role_uuid = "a9e18770-38e2-e1a7-8ae0-f084cb86b223";
  role_name_label = "sr.create_new_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_physical_size = 
  { (* 1275/1968 *)
  role_uuid = "7488f812-0cd8-7253-6fee-f339b217611a";
  role_name_label = "sr.set_physical_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_virtual_allocation = 
  { (* 1276/1968 *)
  role_uuid = "7105e48b-21af-8085-53ef-cbba8e982ffa";
  role_name_label = "sr.set_virtual_allocation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_set_physical_utilisation = 
  { (* 1277/1968 *)
  role_uuid = "bc9320f4-99a1-bb52-5f0a-53b712382e92";
  role_name_label = "sr.set_physical_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_assert_can_host_ha_statefile = 
  { (* 1278/1968 *)
  role_uuid = "ca85f1e0-c38c-287e-8327-c07136a32bbd";
  role_name_label = "sr.assert_can_host_ha_statefile";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_assert_supports_database_replication = 
  { (* 1279/1968 *)
  role_uuid = "d4103e70-a294-550e-2c8f-8cc136aaad6e";
  role_name_label = "sr.assert_supports_database_replication";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_enable_database_replication = 
  { (* 1280/1968 *)
  role_uuid = "dc80d07c-da36-8b15-91a4-92ca16f288bb";
  role_name_label = "sr.enable_database_replication";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_disable_database_replication = 
  { (* 1281/1968 *)
  role_uuid = "51051d7b-371a-7f10-d045-a050f70f2474";
  role_name_label = "sr.disable_database_replication";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_data_sources = 
  { (* 1282/1968 *)
  role_uuid = "8bb5602f-1817-42d6-4616-d573f8d6dfb2";
  role_name_label = "sr.get_data_sources";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_record_data_source = 
  { (* 1283/1968 *)
  role_uuid = "ec7955b4-c058-cea8-9124-7952b4bad32f";
  role_name_label = "sr.record_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_query_data_source = 
  { (* 1284/1968 *)
  role_uuid = "43fa7914-200e-f0c2-aeed-4a14de858d94";
  role_name_label = "sr.query_data_source";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_forget_data_source_archives = 
  { (* 1285/1968 *)
  role_uuid = "7eabce8c-6d73-7264-bb39-9deb60f4728a";
  role_name_label = "sr.forget_data_source_archives";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_live_hosts = 
  { (* 1286/1968 *)
  role_uuid = "9a586e98-eac2-b141-f791-f26b45612d51";
  role_name_label = "sr.get_live_hosts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_all = 
  { (* 1287/1968 *)
  role_uuid = "4e914b35-ddeb-12b2-31fd-e2fbcbec010d";
  role_name_label = "sr.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_all_records_where = 
  { (* 1288/1968 *)
  role_uuid = "588d746c-9967-8e54-df7e-a825bc64f73a";
  role_name_label = "sr.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SR_get_all_records = 
  { (* 1289/1968 *)
  role_uuid = "e9a7fba1-deec-3478-2098-26b97828c750";
  role_name_label = "sr.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_LVHD_get_record = 
  { (* 1290/1968 *)
  role_uuid = "20a06afb-e410-0d7f-18ff-d9569fdaf338";
  role_name_label = "lvhd.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_LVHD_get_by_uuid = 
  { (* 1291/1968 *)
  role_uuid = "d64b9c62-60cd-1295-98d9-1d05b494eb98";
  role_name_label = "lvhd.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_LVHD_get_uuid = 
  { (* 1292/1968 *)
  role_uuid = "5c67752a-691c-f381-213f-ff2298e32019";
  role_name_label = "lvhd.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_LVHD_enable_thin_provisioning = 
  { (* 1293/1968 *)
  role_uuid = "b43227d9-3d4f-0301-8305-67bdac0fa7ea";
  role_name_label = "lvhd.enable_thin_provisioning";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_record = 
  { (* 1294/1968 *)
  role_uuid = "93dea749-bb50-7546-5ecb-90cfbf26165f";
  role_name_label = "vdi.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_by_uuid = 
  { (* 1295/1968 *)
  role_uuid = "b37bf5ec-05a4-e2bb-1586-d973d208a2f8";
  role_name_label = "vdi.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_create = 
  { (* 1296/1968 *)
  role_uuid = "9d51a9e7-b720-b88e-5240-256b52701685";
  role_name_label = "vdi.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_destroy = 
  { (* 1297/1968 *)
  role_uuid = "a00ac9c0-8960-1e84-c638-c9858dfa4101";
  role_name_label = "vdi.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_by_name_label = 
  { (* 1298/1968 *)
  role_uuid = "0c82bef6-ba72-0bee-b924-84feb84b2e77";
  role_name_label = "vdi.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_uuid = 
  { (* 1299/1968 *)
  role_uuid = "6753d0e3-8e17-9f9d-cb5f-9642c2b7685d";
  role_name_label = "vdi.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_name_label = 
  { (* 1300/1968 *)
  role_uuid = "d70b794c-05dc-77a5-b720-51a905de3f2b";
  role_name_label = "vdi.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_name_description = 
  { (* 1301/1968 *)
  role_uuid = "0462f07f-cd50-abd0-7965-0ec55f5a126b";
  role_name_label = "vdi.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_allowed_operations = 
  { (* 1302/1968 *)
  role_uuid = "a28dd0cb-fcd5-33bd-7657-278e5f653471";
  role_name_label = "vdi.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_current_operations = 
  { (* 1303/1968 *)
  role_uuid = "35767a4f-af9a-af62-5f51-ed250f684d25";
  role_name_label = "vdi.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_SR = 
  { (* 1304/1968 *)
  role_uuid = "2605b766-9cb9-cdb1-53e6-2431e711af44";
  role_name_label = "vdi.get_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_VBDs = 
  { (* 1305/1968 *)
  role_uuid = "f5b86d13-b503-2c7a-83cc-b54896afb752";
  role_name_label = "vdi.get_vbds";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_crash_dumps = 
  { (* 1306/1968 *)
  role_uuid = "266d1cf3-ea34-44ba-fc97-cf4cd876d7c8";
  role_name_label = "vdi.get_crash_dumps";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_virtual_size = 
  { (* 1307/1968 *)
  role_uuid = "2cdb0f4e-685a-814d-03e5-19c4fbe5aa64";
  role_name_label = "vdi.get_virtual_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_physical_utilisation = 
  { (* 1308/1968 *)
  role_uuid = "a2f2b2b8-188f-f022-69bf-fa443d89bb58";
  role_name_label = "vdi.get_physical_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_type = 
  { (* 1309/1968 *)
  role_uuid = "a4c9dc80-0070-0067-a1d3-339b5081adc0";
  role_name_label = "vdi.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_sharable = 
  { (* 1310/1968 *)
  role_uuid = "f6184e4a-0be4-97e7-6db6-bced99fcceff";
  role_name_label = "vdi.get_sharable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_read_only = 
  { (* 1311/1968 *)
  role_uuid = "771f7157-33cd-a8e1-f5a7-ae23af63c750";
  role_name_label = "vdi.get_read_only";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_other_config = 
  { (* 1312/1968 *)
  role_uuid = "7f545d78-e772-030f-2e95-7d3b998d3000";
  role_name_label = "vdi.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_storage_lock = 
  { (* 1313/1968 *)
  role_uuid = "b99da77a-522d-4bff-9013-ae981fceda83";
  role_name_label = "vdi.get_storage_lock";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_location = 
  { (* 1314/1968 *)
  role_uuid = "0a01091f-7913-54d3-94b5-3ef26f90b0f9";
  role_name_label = "vdi.get_location";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_managed = 
  { (* 1315/1968 *)
  role_uuid = "dfc8a1f1-60c9-373b-c6a3-56c0712754a7";
  role_name_label = "vdi.get_managed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_missing = 
  { (* 1316/1968 *)
  role_uuid = "e3e174f6-5c33-6385-bd9b-09213a73e701";
  role_name_label = "vdi.get_missing";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_parent = 
  { (* 1317/1968 *)
  role_uuid = "f1fc3e4c-3f63-876c-f667-2c06a3321e7c";
  role_name_label = "vdi.get_parent";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_xenstore_data = 
  { (* 1318/1968 *)
  role_uuid = "3230d646-65ff-59d1-0400-5f58231c0664";
  role_name_label = "vdi.get_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_sm_config = 
  { (* 1319/1968 *)
  role_uuid = "68130225-5eb6-b36c-43f5-c81acaba8b68";
  role_name_label = "vdi.get_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_is_a_snapshot = 
  { (* 1320/1968 *)
  role_uuid = "9ad29a74-1eec-8937-697a-ba3679e4f48d";
  role_name_label = "vdi.get_is_a_snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_snapshot_of = 
  { (* 1321/1968 *)
  role_uuid = "3fa0a161-a6ab-4adc-3749-2aab29e2b445";
  role_name_label = "vdi.get_snapshot_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_snapshots = 
  { (* 1322/1968 *)
  role_uuid = "1cc4a88b-84b5-9e1d-4b63-193c7cb2e93e";
  role_name_label = "vdi.get_snapshots";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_snapshot_time = 
  { (* 1323/1968 *)
  role_uuid = "924d34e6-51df-0ef3-fdd7-065a11af80c4";
  role_name_label = "vdi.get_snapshot_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_tags = 
  { (* 1324/1968 *)
  role_uuid = "ccc6e989-a50d-3530-743f-d13e7f05e5dd";
  role_name_label = "vdi.get_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_allow_caching = 
  { (* 1325/1968 *)
  role_uuid = "bbdc09c5-8729-4aae-9945-66b292cf2aa1";
  role_name_label = "vdi.get_allow_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_on_boot = 
  { (* 1326/1968 *)
  role_uuid = "62c6badc-ea63-3832-3641-cd0eccca0304";
  role_name_label = "vdi.get_on_boot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_metadata_of_pool = 
  { (* 1327/1968 *)
  role_uuid = "18c1913b-2356-df02-11ce-ffd2da0e4170";
  role_name_label = "vdi.get_metadata_of_pool";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_metadata_latest = 
  { (* 1328/1968 *)
  role_uuid = "e522fa0c-7c50-cc59-c88d-0dedc9aac2aa";
  role_name_label = "vdi.get_metadata_latest";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_is_tools_iso = 
  { (* 1329/1968 *)
  role_uuid = "6e3104a2-5f54-c3f6-6738-74e4ddd30df1";
  role_name_label = "vdi.get_is_tools_iso";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_cbt_enabled = 
  { (* 1330/1968 *)
  role_uuid = "c2829552-ac1b-920c-bc65-81f36d2e593e";
  role_name_label = "vdi.get_cbt_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_other_config = 
  { (* 1331/1968 *)
  role_uuid = "a5bca0b7-88eb-7892-b1ec-e328146be11a";
  role_name_label = "vdi.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_to_other_config = 
  { (* 1332/1968 *)
  role_uuid = "57003b7e-6b62-44ed-9efa-d02a2c73946b";
  role_name_label = "vdi.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_to_other_config_key_folder = 
  { (* 1333/1968 *)
  role_uuid = "58fd2438-7368-a4de-3b67-e5ad53708171";
  role_name_label = "vdi.add_to_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 1334/1968 *)
  role_uuid = "baf1360e-2dc9-be3d-08bf-252994e78ccd";
  role_name_label = "vdi.add_to_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_from_other_config = 
  { (* 1335/1968 *)
  role_uuid = "8618ece2-3298-2490-19dc-2e951f388f1d";
  role_name_label = "vdi.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_from_other_config_key_folder = 
  { (* 1336/1968 *)
  role_uuid = "acfb9201-52d6-3881-04f4-83ae8376300e";
  role_name_label = "vdi.remove_from_other_config/key:folder";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR = 
  { (* 1337/1968 *)
  role_uuid = "fa7a9290-f86a-2185-3c2e-9a4c5ad746ae";
  role_name_label = "vdi.remove_from_other_config/key:xencenter.customfields.*";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_xenstore_data = 
  { (* 1338/1968 *)
  role_uuid = "092b2548-6da4-7838-9b3d-af0860032580";
  role_name_label = "vdi.set_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_to_xenstore_data = 
  { (* 1339/1968 *)
  role_uuid = "4cfbb76c-adc2-c543-66fc-b1239cc2674d";
  role_name_label = "vdi.add_to_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_from_xenstore_data = 
  { (* 1340/1968 *)
  role_uuid = "a8137b60-e684-3a89-3c7d-70365d9f8465";
  role_name_label = "vdi.remove_from_xenstore_data";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_sm_config = 
  { (* 1341/1968 *)
  role_uuid = "edd8481c-3712-064c-e444-2a1f20a31aeb";
  role_name_label = "vdi.set_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_to_sm_config = 
  { (* 1342/1968 *)
  role_uuid = "566ee717-dd27-c672-e4ea-2f0796acd117";
  role_name_label = "vdi.add_to_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_from_sm_config = 
  { (* 1343/1968 *)
  role_uuid = "4df8d39a-3fda-a201-f792-c727dd2ffa60";
  role_name_label = "vdi.remove_from_sm_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_tags = 
  { (* 1344/1968 *)
  role_uuid = "0f5f27b8-5098-237f-e2b5-14c9512fb0d6";
  role_name_label = "vdi.set_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_add_tags = 
  { (* 1345/1968 *)
  role_uuid = "360c10c1-5edb-2dba-9e8e-f1440e9a948c";
  role_name_label = "vdi.add_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_remove_tags = 
  { (* 1346/1968 *)
  role_uuid = "4950f5c0-e772-3c03-61a0-6b00f291448d";
  role_name_label = "vdi.remove_tags";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_snapshot = 
  { (* 1347/1968 *)
  role_uuid = "ad699ad2-4125-fa0c-2869-8b6640360731";
  role_name_label = "vdi.snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_clone = 
  { (* 1348/1968 *)
  role_uuid = "fa8993fb-524f-eb9a-641d-06b2099ecb82";
  role_name_label = "vdi.clone";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_resize = 
  { (* 1349/1968 *)
  role_uuid = "a973885d-511e-de2a-00ef-18ed6acf3021";
  role_name_label = "vdi.resize";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_resize_online = 
  { (* 1350/1968 *)
  role_uuid = "73e1bedc-0afc-64a1-ac4c-a58f118bbdc6";
  role_name_label = "vdi.resize_online";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_introduce = 
  { (* 1351/1968 *)
  role_uuid = "efb93f2e-bf72-db7b-d36a-1be03c962cec";
  role_name_label = "vdi.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_pool_introduce = 
  { (* 1352/1968 *)
  role_uuid = "0ec88acf-cbb0-d4d3-7c8b-f5f320e6f0ec";
  role_name_label = "vdi.pool_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_db_introduce = 
  { (* 1353/1968 *)
  role_uuid = "e8872a7a-d9f2-2a9c-1e4e-ed2e94612f6b";
  role_name_label = "vdi.db_introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_db_forget = 
  { (* 1354/1968 *)
  role_uuid = "19dd9241-f613-057e-d933-dfc254e20a6b";
  role_name_label = "vdi.db_forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_update = 
  { (* 1355/1968 *)
  role_uuid = "5312dde5-afa4-fafe-a3a4-a9729b47b80b";
  role_name_label = "vdi.update";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_copy = 
  { (* 1356/1968 *)
  role_uuid = "ad2b02d4-5928-4232-df0e-a7fdebd8fb62";
  role_name_label = "vdi.copy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_force_unlock = 
  { (* 1357/1968 *)
  role_uuid = "f2370df8-242f-0ca6-ec92-868200d68c34";
  role_name_label = "vdi.force_unlock";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_managed = 
  { (* 1358/1968 *)
  role_uuid = "eaadf2fc-0fa1-892f-b20c-e3b8ac502e6b";
  role_name_label = "vdi.set_managed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_forget = 
  { (* 1359/1968 *)
  role_uuid = "ed243ad4-497a-52e3-d46b-945f2e4156f3";
  role_name_label = "vdi.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_sharable = 
  { (* 1360/1968 *)
  role_uuid = "4bb206e0-df39-3bb0-2402-e4d584e6861d";
  role_name_label = "vdi.set_sharable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_read_only = 
  { (* 1361/1968 *)
  role_uuid = "ef6fd636-89c1-1e1f-157f-284e8a450324";
  role_name_label = "vdi.set_read_only";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_missing = 
  { (* 1362/1968 *)
  role_uuid = "5ff8b980-e213-e1f0-dbda-b5abf2bbe72f";
  role_name_label = "vdi.set_missing";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_virtual_size = 
  { (* 1363/1968 *)
  role_uuid = "c7734155-0a75-ac54-6f7c-74a8da933455";
  role_name_label = "vdi.set_virtual_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_physical_utilisation = 
  { (* 1364/1968 *)
  role_uuid = "eadc7ba0-7efe-5e4c-7b78-482519be7522";
  role_name_label = "vdi.set_physical_utilisation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_is_a_snapshot = 
  { (* 1365/1968 *)
  role_uuid = "25927722-f11f-2805-9006-8fa441b22745";
  role_name_label = "vdi.set_is_a_snapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_snapshot_of = 
  { (* 1366/1968 *)
  role_uuid = "804810ef-bdde-04af-addf-31ac6e8eb8ff";
  role_name_label = "vdi.set_snapshot_of";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_snapshot_time = 
  { (* 1367/1968 *)
  role_uuid = "f8d1620b-4d3b-ed60-af3d-6a13a59d65e4";
  role_name_label = "vdi.set_snapshot_time";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_metadata_of_pool = 
  { (* 1368/1968 *)
  role_uuid = "325bbd68-d003-fcb2-bfa5-3745d5c7d4ef";
  role_name_label = "vdi.set_metadata_of_pool";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_name_label = 
  { (* 1369/1968 *)
  role_uuid = "f5b632a4-7a1a-576c-e9cc-0ba84cf1071b";
  role_name_label = "vdi.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_name_description = 
  { (* 1370/1968 *)
  role_uuid = "8b3775f3-de8a-7191-05be-d652c36aa494";
  role_name_label = "vdi.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_generate_config = 
  { (* 1371/1968 *)
  role_uuid = "fae90cea-ef53-bc8b-93d3-c0c48384feff";
  role_name_label = "vdi.generate_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_on_boot = 
  { (* 1372/1968 *)
  role_uuid = "6e3cc91d-fe57-6857-c385-343d09c1a113";
  role_name_label = "vdi.set_on_boot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_allow_caching = 
  { (* 1373/1968 *)
  role_uuid = "710cfeb3-2a8d-27ed-c208-78f2db5f79a8";
  role_name_label = "vdi.set_allow_caching";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_open_database = 
  { (* 1374/1968 *)
  role_uuid = "0552455f-5aa0-3217-1818-9c0729fe8d6f";
  role_name_label = "vdi.open_database";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_checksum = 
  { (* 1375/1968 *)
  role_uuid = "06c9a83e-f5d7-801c-cef9-f564eada350a";
  role_name_label = "vdi.checksum";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_read_database_pool_uuid = 
  { (* 1376/1968 *)
  role_uuid = "3acba506-ce1a-b39b-b637-3731b50880e9";
  role_name_label = "vdi.read_database_pool_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_pool_migrate = 
  { (* 1377/1968 *)
  role_uuid = "8570df6d-9f81-8bc6-00ff-4c6c1f84def6";
  role_name_label = "vdi.pool_migrate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_enable_cbt = 
  { (* 1378/1968 *)
  role_uuid = "4d64316c-a790-57ff-1ca0-d36ec0b1225f";
  role_name_label = "vdi.enable_cbt";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_disable_cbt = 
  { (* 1379/1968 *)
  role_uuid = "f8e833dc-7e02-4d2e-f5df-ac38c346cb45";
  role_name_label = "vdi.disable_cbt";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_set_cbt_enabled = 
  { (* 1380/1968 *)
  role_uuid = "3dfddd9d-96d1-04c8-509d-3e6818eeebae";
  role_name_label = "vdi.set_cbt_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_data_destroy = 
  { (* 1381/1968 *)
  role_uuid = "15aee1d0-3e10-3bca-6286-6146f0802c8a";
  role_name_label = "vdi.data_destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_list_changed_blocks = 
  { (* 1382/1968 *)
  role_uuid = "c704b6d5-908a-9241-6ae1-5adc4cd64ceb";
  role_name_label = "vdi.list_changed_blocks";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_nbd_info = 
  { (* 1383/1968 *)
  role_uuid = "9a3c98ad-3bde-4ef6-913b-3f3aad1d0102";
  role_name_label = "vdi.get_nbd_info";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_all = 
  { (* 1384/1968 *)
  role_uuid = "4894cd8b-7d71-407e-2852-1b7f4aa166cf";
  role_name_label = "vdi.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_all_records_where = 
  { (* 1385/1968 *)
  role_uuid = "311d925a-6070-271d-a724-0948552a654f";
  role_name_label = "vdi.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VDI_get_all_records = 
  { (* 1386/1968 *)
  role_uuid = "44d764dd-95db-e4d9-4cf7-1250f3ca601d";
  role_name_label = "vdi.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_record = 
  { (* 1387/1968 *)
  role_uuid = "937b2b79-813a-a286-cbeb-da09e3cf4c90";
  role_name_label = "vbd.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_by_uuid = 
  { (* 1388/1968 *)
  role_uuid = "44d3a92c-7e3c-14ba-8b7e-faf5ff27b02a";
  role_name_label = "vbd.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_create = 
  { (* 1389/1968 *)
  role_uuid = "ab3a2fc2-a70b-9122-8c6c-a51f7c11f438";
  role_name_label = "vbd.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_destroy = 
  { (* 1390/1968 *)
  role_uuid = "18c32fa8-b18f-6a28-5b40-12f9077d7661";
  role_name_label = "vbd.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_uuid = 
  { (* 1391/1968 *)
  role_uuid = "92967fef-88ab-15e4-f16c-9f042b3191f4";
  role_name_label = "vbd.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_allowed_operations = 
  { (* 1392/1968 *)
  role_uuid = "a3f5b9a0-e36f-41d8-65dc-8f7bd095293b";
  role_name_label = "vbd.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_current_operations = 
  { (* 1393/1968 *)
  role_uuid = "9986f58f-773c-c701-6b97-7e99b0135124";
  role_name_label = "vbd.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_VM = 
  { (* 1394/1968 *)
  role_uuid = "d450902b-de9f-7867-c98c-f912e6a80cce";
  role_name_label = "vbd.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_VDI = 
  { (* 1395/1968 *)
  role_uuid = "7936813a-24d4-e749-f89a-dec7286a0b99";
  role_name_label = "vbd.get_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_device = 
  { (* 1396/1968 *)
  role_uuid = "81239256-3acb-c6e7-b689-9eb4e54c9956";
  role_name_label = "vbd.get_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_userdevice = 
  { (* 1397/1968 *)
  role_uuid = "745095db-fdd8-7025-f9b3-839b0fa846f9";
  role_name_label = "vbd.get_userdevice";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_bootable = 
  { (* 1398/1968 *)
  role_uuid = "7187f8da-4c69-cc67-9718-1f98b825c1ea";
  role_name_label = "vbd.get_bootable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_mode = 
  { (* 1399/1968 *)
  role_uuid = "601664bc-64ea-312f-6bc1-543ca1a0177c";
  role_name_label = "vbd.get_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_type = 
  { (* 1400/1968 *)
  role_uuid = "729d8740-7096-6a5c-49dc-6c4cec96500f";
  role_name_label = "vbd.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_unpluggable = 
  { (* 1401/1968 *)
  role_uuid = "d4ab22c9-f134-2607-284a-56381333719b";
  role_name_label = "vbd.get_unpluggable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_storage_lock = 
  { (* 1402/1968 *)
  role_uuid = "2a06d13d-ff22-2dc7-98a6-a97c7c723481";
  role_name_label = "vbd.get_storage_lock";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_empty = 
  { (* 1403/1968 *)
  role_uuid = "a8f2a88e-21e0-2c4a-2b47-205e8d3d3b44";
  role_name_label = "vbd.get_empty";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_other_config = 
  { (* 1404/1968 *)
  role_uuid = "a14d9994-ac84-07cd-e0c3-621d7c92f0aa";
  role_name_label = "vbd.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_currently_attached = 
  { (* 1405/1968 *)
  role_uuid = "56bc2594-ff11-2fa7-8f46-18178bd1010e";
  role_name_label = "vbd.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_status_code = 
  { (* 1406/1968 *)
  role_uuid = "396bfd0b-b63b-449b-75e0-f4998ed9ea1f";
  role_name_label = "vbd.get_status_code";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_status_detail = 
  { (* 1407/1968 *)
  role_uuid = "7a90825c-43d6-122c-0805-408ff98a5064";
  role_name_label = "vbd.get_status_detail";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_runtime_properties = 
  { (* 1408/1968 *)
  role_uuid = "af48eae9-9c88-9a3d-e57a-46250c33abf8";
  role_name_label = "vbd.get_runtime_properties";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_qos_algorithm_type = 
  { (* 1409/1968 *)
  role_uuid = "174af546-476b-1579-44ef-07346dbbe4b1";
  role_name_label = "vbd.get_qos_algorithm_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_qos_algorithm_params = 
  { (* 1410/1968 *)
  role_uuid = "2aa40daa-f640-4198-a8b2-20fdfd44947f";
  role_name_label = "vbd.get_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_qos_supported_algorithms = 
  { (* 1411/1968 *)
  role_uuid = "7555a731-bf5e-2494-cf68-90a0d7594b06";
  role_name_label = "vbd.get_qos_supported_algorithms";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_metrics = 
  { (* 1412/1968 *)
  role_uuid = "c3ae01b1-a370-4ec3-d91e-4d8533a89f86";
  role_name_label = "vbd.get_metrics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_userdevice = 
  { (* 1413/1968 *)
  role_uuid = "edac34a6-33d6-77bb-28f4-420479c713a2";
  role_name_label = "vbd.set_userdevice";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_bootable = 
  { (* 1414/1968 *)
  role_uuid = "4210bb3f-296a-873d-f592-9a9cf531b0b2";
  role_name_label = "vbd.set_bootable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_type = 
  { (* 1415/1968 *)
  role_uuid = "7762becd-462e-6753-2b38-d70dc62e2c29";
  role_name_label = "vbd.set_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_unpluggable = 
  { (* 1416/1968 *)
  role_uuid = "3f2d95ef-f35a-fb7f-ac83-1e31d28eb587";
  role_name_label = "vbd.set_unpluggable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_other_config = 
  { (* 1417/1968 *)
  role_uuid = "79e264ba-b809-161d-44cf-f628b44dea1a";
  role_name_label = "vbd.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_add_to_other_config = 
  { (* 1418/1968 *)
  role_uuid = "2d6b6f99-d4ff-f561-6f39-1a2361b296b5";
  role_name_label = "vbd.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_remove_from_other_config = 
  { (* 1419/1968 *)
  role_uuid = "57b4a7f4-2b31-e7dc-3698-cfc7ab53d6ec";
  role_name_label = "vbd.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_qos_algorithm_type = 
  { (* 1420/1968 *)
  role_uuid = "b6e74e20-a86a-c58b-67e6-8d481d0309cc";
  role_name_label = "vbd.set_qos_algorithm_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_qos_algorithm_params = 
  { (* 1421/1968 *)
  role_uuid = "0d2542ab-7612-5824-4c0b-a77676fe1df9";
  role_name_label = "vbd.set_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_add_to_qos_algorithm_params = 
  { (* 1422/1968 *)
  role_uuid = "eb56bf07-27a0-6d21-b864-90d65355a7c6";
  role_name_label = "vbd.add_to_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_remove_from_qos_algorithm_params = 
  { (* 1423/1968 *)
  role_uuid = "a9077c51-15e4-6c48-46d6-b37841c7edf4";
  role_name_label = "vbd.remove_from_qos_algorithm_params";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_eject = 
  { (* 1424/1968 *)
  role_uuid = "7b14057e-435b-da4a-f335-5710072124bb";
  role_name_label = "vbd.eject";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_insert = 
  { (* 1425/1968 *)
  role_uuid = "a35e33f5-26cf-7f6f-7bee-2e69c34448f0";
  role_name_label = "vbd.insert";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_plug = 
  { (* 1426/1968 *)
  role_uuid = "d5c12717-98ae-ea62-287b-ae5de38e2c4b";
  role_name_label = "vbd.plug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_unplug = 
  { (* 1427/1968 *)
  role_uuid = "b7b71954-9351-702b-765d-1e3757e2da15";
  role_name_label = "vbd.unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_unplug_force = 
  { (* 1428/1968 *)
  role_uuid = "9b1c0f58-1625-a13d-413a-5260b57607ca";
  role_name_label = "vbd.unplug_force";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_unplug_force_no_safety_check = 
  { (* 1429/1968 *)
  role_uuid = "ad0c4088-5db2-3676-22ca-b679662173da";
  role_name_label = "vbd.unplug_force_no_safety_check";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_assert_attachable = 
  { (* 1430/1968 *)
  role_uuid = "d83d3500-e310-848d-ba03-1601caced032";
  role_name_label = "vbd.assert_attachable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_pause = 
  { (* 1431/1968 *)
  role_uuid = "fe5d5a1a-b9ae-a0f4-2d61-50416f161d60";
  role_name_label = "vbd.pause";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_unpause = 
  { (* 1432/1968 *)
  role_uuid = "a95d21fa-7e04-1468-b0dc-27d81e39c09c";
  role_name_label = "vbd.unpause";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_set_mode = 
  { (* 1433/1968 *)
  role_uuid = "bcd53d79-34a2-71df-29e1-c7e72dfca15e";
  role_name_label = "vbd.set_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_all = 
  { (* 1434/1968 *)
  role_uuid = "37f9a250-fd67-56db-e2c1-7f7c7abfd9fb";
  role_name_label = "vbd.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_all_records_where = 
  { (* 1435/1968 *)
  role_uuid = "a5ac4a15-20df-40aa-1d01-c668e8746d7b";
  role_name_label = "vbd.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_get_all_records = 
  { (* 1436/1968 *)
  role_uuid = "93340db9-eacc-0e12-9151-854745d49cf7";
  role_name_label = "vbd.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_record = 
  { (* 1437/1968 *)
  role_uuid = "9dd43118-a078-1317-8a87-83ebed088133";
  role_name_label = "vbd_metrics.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_by_uuid = 
  { (* 1438/1968 *)
  role_uuid = "63b9ae45-0e59-c1e6-d3dd-f596860071a2";
  role_name_label = "vbd_metrics.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_uuid = 
  { (* 1439/1968 *)
  role_uuid = "67af93c7-dfb9-98ce-ccbf-80fb7e828e27";
  role_name_label = "vbd_metrics.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_io_read_kbs = 
  { (* 1440/1968 *)
  role_uuid = "23af0178-71be-1c09-5f09-4eeb59279dec";
  role_name_label = "vbd_metrics.get_io_read_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_io_write_kbs = 
  { (* 1441/1968 *)
  role_uuid = "738acc9f-a221-a9c7-c008-4f324a609677";
  role_name_label = "vbd_metrics.get_io_write_kbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_last_updated = 
  { (* 1442/1968 *)
  role_uuid = "6467bf45-4441-2fb7-299d-da6dc598310b";
  role_name_label = "vbd_metrics.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_other_config = 
  { (* 1443/1968 *)
  role_uuid = "5cd9ce80-b26e-54b1-0dfb-07431f9fde11";
  role_name_label = "vbd_metrics.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_set_other_config = 
  { (* 1444/1968 *)
  role_uuid = "ef373d6d-ccef-defc-69de-d76a06ec27ff";
  role_name_label = "vbd_metrics.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_add_to_other_config = 
  { (* 1445/1968 *)
  role_uuid = "dd9035db-7349-697a-84aa-6aeef6601c43";
  role_name_label = "vbd_metrics.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_remove_from_other_config = 
  { (* 1446/1968 *)
  role_uuid = "a1f5ef8e-8116-2ead-ce75-4ff9cdeb6fbe";
  role_name_label = "vbd_metrics.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_all = 
  { (* 1447/1968 *)
  role_uuid = "c614ec0d-cd31-33ba-21b3-43a6c498d0fc";
  role_name_label = "vbd_metrics.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_all_records_where = 
  { (* 1448/1968 *)
  role_uuid = "34e576e5-27b1-46b3-bf30-25a663835fec";
  role_name_label = "vbd_metrics.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VBD_metrics_get_all_records = 
  { (* 1449/1968 *)
  role_uuid = "0620c7fe-5acd-626f-cd9d-79997b854a2d";
  role_name_label = "vbd_metrics.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_record = 
  { (* 1450/1968 *)
  role_uuid = "f6607652-9394-52ba-ced3-f360b1257e6f";
  role_name_label = "pbd.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_by_uuid = 
  { (* 1451/1968 *)
  role_uuid = "5d76223e-2db4-b433-f8c2-cb2a5d864efa";
  role_name_label = "pbd.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_create = 
  { (* 1452/1968 *)
  role_uuid = "9b8f4aa3-bfc2-83c8-3667-cd99d8a752ef";
  role_name_label = "pbd.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_destroy = 
  { (* 1453/1968 *)
  role_uuid = "071234dc-bb28-960b-bb7c-ee4ece319f5a";
  role_name_label = "pbd.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_uuid = 
  { (* 1454/1968 *)
  role_uuid = "27378730-81dd-d327-639d-17495c264bc0";
  role_name_label = "pbd.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_host = 
  { (* 1455/1968 *)
  role_uuid = "f4c9785a-e9b7-c6dc-ef82-4b7d23ffc103";
  role_name_label = "pbd.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_SR = 
  { (* 1456/1968 *)
  role_uuid = "4d21470f-106f-4e87-5109-1054f40a15e1";
  role_name_label = "pbd.get_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_device_config = 
  { (* 1457/1968 *)
  role_uuid = "8cbe8380-7d8b-e296-35f5-7941ad540728";
  role_name_label = "pbd.get_device_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_currently_attached = 
  { (* 1458/1968 *)
  role_uuid = "26a2c50f-a17d-dea1-7046-e09d4e4beb2d";
  role_name_label = "pbd.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_other_config = 
  { (* 1459/1968 *)
  role_uuid = "95d99f45-12d3-b0d4-5b95-3cf4e910c7c1";
  role_name_label = "pbd.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_set_other_config = 
  { (* 1460/1968 *)
  role_uuid = "42d39347-68df-86c9-065c-6f95e1a28c1c";
  role_name_label = "pbd.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_add_to_other_config = 
  { (* 1461/1968 *)
  role_uuid = "a92bae06-cfdf-6655-38c6-2c24b0da778d";
  role_name_label = "pbd.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_remove_from_other_config = 
  { (* 1462/1968 *)
  role_uuid = "874f163d-dd0a-fa0f-0df5-166597eff5bc";
  role_name_label = "pbd.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_plug = 
  { (* 1463/1968 *)
  role_uuid = "ee185dea-ea4d-e49e-ad96-4072c0a84f58";
  role_name_label = "pbd.plug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_unplug = 
  { (* 1464/1968 *)
  role_uuid = "123a5e0e-5e9c-ba9d-0b27-c2c84732402e";
  role_name_label = "pbd.unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_set_device_config = 
  { (* 1465/1968 *)
  role_uuid = "52fd6dc6-5ca6-9fa3-a47e-5650412665ab";
  role_name_label = "pbd.set_device_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_all = 
  { (* 1466/1968 *)
  role_uuid = "a954a18e-5251-f3c7-1bcc-0a7e3e532d13";
  role_name_label = "pbd.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_all_records_where = 
  { (* 1467/1968 *)
  role_uuid = "b2bf107a-c001-a3f5-0f11-d9b414b636e9";
  role_name_label = "pbd.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PBD_get_all_records = 
  { (* 1468/1968 *)
  role_uuid = "d5838e96-6bc7-b825-9b44-1d0fbbd4cd6d";
  role_name_label = "pbd.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_record = 
  { (* 1469/1968 *)
  role_uuid = "cfaaa17f-391d-2412-ccd2-afab25ccab6d";
  role_name_label = "crashdump.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_by_uuid = 
  { (* 1470/1968 *)
  role_uuid = "bd37900a-e6b0-90df-dabf-871311560070";
  role_name_label = "crashdump.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_uuid = 
  { (* 1471/1968 *)
  role_uuid = "d237f558-5bcd-610e-0028-4fe71d0ac595";
  role_name_label = "crashdump.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_VM = 
  { (* 1472/1968 *)
  role_uuid = "703ca7dc-8dcc-6df0-2473-7337caa1c17b";
  role_name_label = "crashdump.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_VDI = 
  { (* 1473/1968 *)
  role_uuid = "bac565df-939b-c536-dfc4-35ea64950ad1";
  role_name_label = "crashdump.get_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_other_config = 
  { (* 1474/1968 *)
  role_uuid = "d19eb620-7260-c930-6729-682529ab1d12";
  role_name_label = "crashdump.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_set_other_config = 
  { (* 1475/1968 *)
  role_uuid = "e03eac42-56e7-135f-0afb-e5987f110687";
  role_name_label = "crashdump.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_add_to_other_config = 
  { (* 1476/1968 *)
  role_uuid = "342236c6-8d38-20f7-1e06-1a44e75513b0";
  role_name_label = "crashdump.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_remove_from_other_config = 
  { (* 1477/1968 *)
  role_uuid = "368457f6-8b86-9492-2566-cfbf72c8598d";
  role_name_label = "crashdump.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_destroy = 
  { (* 1478/1968 *)
  role_uuid = "009b40cc-5ac3-4e74-251b-439ae33a1237";
  role_name_label = "crashdump.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_all = 
  { (* 1479/1968 *)
  role_uuid = "1ee62327-b580-693a-9635-78d27050c1b6";
  role_name_label = "crashdump.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_all_records_where = 
  { (* 1480/1968 *)
  role_uuid = "657ed104-a6cf-c0f5-1813-48f0bb17da4e";
  role_name_label = "crashdump.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_crashdump_get_all_records = 
  { (* 1481/1968 *)
  role_uuid = "01a743e5-a3b5-f318-7228-4ce8fbcc6662";
  role_name_label = "crashdump.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_get_record = 
  { (* 1482/1968 *)
  role_uuid = "019dc5fb-c3ad-90db-7e97-160d3fcf1970";
  role_name_label = "vtpm.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_get_by_uuid = 
  { (* 1483/1968 *)
  role_uuid = "70276941-c1fc-66ff-97b9-6a2f0e4417c2";
  role_name_label = "vtpm.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_create = 
  { (* 1484/1968 *)
  role_uuid = "fe6b159e-02e4-9220-217f-f7530ac32810";
  role_name_label = "vtpm.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_destroy = 
  { (* 1485/1968 *)
  role_uuid = "765c29b0-1ca4-48cd-1222-4eeb6655a7d7";
  role_name_label = "vtpm.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_get_uuid = 
  { (* 1486/1968 *)
  role_uuid = "36d74e5e-a510-68e7-45b1-ad0a7c5f47c1";
  role_name_label = "vtpm.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_get_VM = 
  { (* 1487/1968 *)
  role_uuid = "6d0a3227-0550-f146-7aac-34259c56d99e";
  role_name_label = "vtpm.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VTPM_get_backend = 
  { (* 1488/1968 *)
  role_uuid = "86989975-8b09-5f82-f068-64f59f226978";
  role_name_label = "vtpm.get_backend";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_record = 
  { (* 1489/1968 *)
  role_uuid = "dfa26a90-9ce7-1147-7ddb-d79dd9d9c105";
  role_name_label = "console.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_by_uuid = 
  { (* 1490/1968 *)
  role_uuid = "e6d1f5c8-bc75-ee1d-7dbe-894d4a9ca4fd";
  role_name_label = "console.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_create = 
  { (* 1491/1968 *)
  role_uuid = "9c4cc775-613a-fa97-0912-aa44311671b9";
  role_name_label = "console.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_destroy = 
  { (* 1492/1968 *)
  role_uuid = "ebb0b010-c619-1fcf-2519-a386d57161bf";
  role_name_label = "console.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_uuid = 
  { (* 1493/1968 *)
  role_uuid = "96a4dd40-ee88-1987-3286-55c08bf66316";
  role_name_label = "console.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_protocol = 
  { (* 1494/1968 *)
  role_uuid = "de4a5cb5-c8d9-3319-92bb-a0a0f560067e";
  role_name_label = "console.get_protocol";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_location = 
  { (* 1495/1968 *)
  role_uuid = "9c0443d4-538d-c2ef-af03-55f9e033f6b1";
  role_name_label = "console.get_location";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_VM = 
  { (* 1496/1968 *)
  role_uuid = "0e630687-91e7-fb14-32b8-d7813d4dd5ac";
  role_name_label = "console.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_other_config = 
  { (* 1497/1968 *)
  role_uuid = "024ec9db-e7f1-de4f-23be-6c3e46f8a797";
  role_name_label = "console.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_set_other_config = 
  { (* 1498/1968 *)
  role_uuid = "106a8006-8e4d-000a-e85e-5077503d891d";
  role_name_label = "console.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_add_to_other_config = 
  { (* 1499/1968 *)
  role_uuid = "4eb027f0-0349-99d5-83ee-4d00063e9a62";
  role_name_label = "console.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_remove_from_other_config = 
  { (* 1500/1968 *)
  role_uuid = "51a0170c-4df8-88fb-62ad-a85085484604";
  role_name_label = "console.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_all = 
  { (* 1501/1968 *)
  role_uuid = "dd56ce4e-8a5f-0776-a0ba-682b1dda3b84";
  role_name_label = "console.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_all_records_where = 
  { (* 1502/1968 *)
  role_uuid = "795faa64-e21d-c19b-a175-7c28d7af1935";
  role_name_label = "console.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_console_get_all_records = 
  { (* 1503/1968 *)
  role_uuid = "eba43944-c9fd-a3ca-d20c-d39c09923eeb";
  role_name_label = "console.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_record = 
  { (* 1504/1968 *)
  role_uuid = "ea191445-996a-32e0-33dc-2819c43657a2";
  role_name_label = "user.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_by_uuid = 
  { (* 1505/1968 *)
  role_uuid = "5cc07fdc-0c2b-0c42-8b20-b1bb3079ae8a";
  role_name_label = "user.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_create = 
  { (* 1506/1968 *)
  role_uuid = "0b1b29bc-15ee-ad07-a49e-05b26da793fd";
  role_name_label = "user.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_destroy = 
  { (* 1507/1968 *)
  role_uuid = "df390945-b067-324c-a4e7-93d944ae540a";
  role_name_label = "user.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_uuid = 
  { (* 1508/1968 *)
  role_uuid = "eb7f2515-ab28-d9d3-17eb-285a28545189";
  role_name_label = "user.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_short_name = 
  { (* 1509/1968 *)
  role_uuid = "621bc530-1dd3-dea9-a82e-498f86b5664a";
  role_name_label = "user.get_short_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_fullname = 
  { (* 1510/1968 *)
  role_uuid = "2b9a00f2-c5c8-a4cf-eca9-2792bb39f38b";
  role_name_label = "user.get_fullname";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_get_other_config = 
  { (* 1511/1968 *)
  role_uuid = "206c900b-40cd-e97c-ef4d-1f20a3d67e1e";
  role_name_label = "user.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_set_fullname = 
  { (* 1512/1968 *)
  role_uuid = "97f7185a-3f7e-35b3-6beb-23f6864d0ee9";
  role_name_label = "user.set_fullname";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_set_other_config = 
  { (* 1513/1968 *)
  role_uuid = "30371c5e-cea9-fcfc-8f29-290889088518";
  role_name_label = "user.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_add_to_other_config = 
  { (* 1514/1968 *)
  role_uuid = "02848936-8270-e502-2b53-971110e9f649";
  role_name_label = "user.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_user_remove_from_other_config = 
  { (* 1515/1968 *)
  role_uuid = "b86716ce-dbef-07b5-ebbe-34563541ef98";
  role_name_label = "user.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_record = 
  { (* 1516/1968 *)
  role_uuid = "9366d110-4c7a-e528-014c-8cfd1bc735bc";
  role_name_label = "blob.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_by_uuid = 
  { (* 1517/1968 *)
  role_uuid = "2d30096c-51e6-487a-b95f-5d3b49e0922d";
  role_name_label = "blob.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_by_name_label = 
  { (* 1518/1968 *)
  role_uuid = "29ccccc0-78ea-f639-1829-f5579b6cc3fb";
  role_name_label = "blob.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_uuid = 
  { (* 1519/1968 *)
  role_uuid = "6979048a-de08-4e61-feb6-b5ad950b3b88";
  role_name_label = "blob.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_name_label = 
  { (* 1520/1968 *)
  role_uuid = "17c2c3d4-6525-49ca-28c3-efc752410e1c";
  role_name_label = "blob.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_name_description = 
  { (* 1521/1968 *)
  role_uuid = "8a499ea6-d0bc-3218-e271-c5507d8f8a96";
  role_name_label = "blob.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_size = 
  { (* 1522/1968 *)
  role_uuid = "1ec637f9-4157-5b26-dabb-31f3331c2959";
  role_name_label = "blob.get_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_public = 
  { (* 1523/1968 *)
  role_uuid = "b57b8c50-f2af-943e-a514-8340681aaaeb";
  role_name_label = "blob.get_public";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_last_updated = 
  { (* 1524/1968 *)
  role_uuid = "c99755dd-030f-7f04-48b2-eadf25ecd92d";
  role_name_label = "blob.get_last_updated";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_mime_type = 
  { (* 1525/1968 *)
  role_uuid = "dd7abfd7-582c-ba1e-a5c3-3aca341b6a3f";
  role_name_label = "blob.get_mime_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_set_name_label = 
  { (* 1526/1968 *)
  role_uuid = "0e8a9f8c-2c46-818a-9854-04bb6b36a68e";
  role_name_label = "blob.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_set_name_description = 
  { (* 1527/1968 *)
  role_uuid = "6915b3af-9d93-fe55-1e79-9859a603c794";
  role_name_label = "blob.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_set_public = 
  { (* 1528/1968 *)
  role_uuid = "25f8fc67-b562-e946-71e8-30b169bf70b7";
  role_name_label = "blob.set_public";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_create = 
  { (* 1529/1968 *)
  role_uuid = "d69e42f6-4afe-4a38-1794-1a7c062123a3";
  role_name_label = "blob.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_destroy = 
  { (* 1530/1968 *)
  role_uuid = "78840af4-8196-e8dc-af0d-08b1a2218dad";
  role_name_label = "blob.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_all = 
  { (* 1531/1968 *)
  role_uuid = "8fb7479c-f838-e29b-4693-651f31819f9f";
  role_name_label = "blob.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_all_records_where = 
  { (* 1532/1968 *)
  role_uuid = "5a960d88-c30e-3aaf-f79c-e58803f4e544";
  role_name_label = "blob.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_blob_get_all_records = 
  { (* 1533/1968 *)
  role_uuid = "3561ecde-dba0-fb56-62b0-1a6101833aca";
  role_name_label = "blob.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_create = 
  { (* 1534/1968 *)
  role_uuid = "c59f2b3d-5a13-6c04-0021-0cdbec0121f8";
  role_name_label = "message.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_destroy = 
  { (* 1535/1968 *)
  role_uuid = "114b6761-fa8c-3aaf-3bc3-757d86de8918";
  role_name_label = "message.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get = 
  { (* 1536/1968 *)
  role_uuid = "dc25c20a-f553-ff0d-b49c-ddb96d8e2e61";
  role_name_label = "message.get";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_all = 
  { (* 1537/1968 *)
  role_uuid = "795b843c-c4cd-3690-a224-e36e687ef07c";
  role_name_label = "message.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_since = 
  { (* 1538/1968 *)
  role_uuid = "43572bd0-288c-6290-e52d-9f12253f662e";
  role_name_label = "message.get_since";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_record = 
  { (* 1539/1968 *)
  role_uuid = "e73ccdb9-0003-bcaa-8576-fd587f6abd36";
  role_name_label = "message.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_by_uuid = 
  { (* 1540/1968 *)
  role_uuid = "4a4afbc3-0b2c-f5f2-6967-6afb51cf903e";
  role_name_label = "message.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_all_records = 
  { (* 1541/1968 *)
  role_uuid = "f52942a8-5ac5-2c56-c42a-79d9c3ec2c82";
  role_name_label = "message.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_message_get_all_records_where = 
  { (* 1542/1968 *)
  role_uuid = "6113a2d6-4c9c-48a9-dc31-1c7b590e3cde";
  role_name_label = "message.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_record = 
  { (* 1543/1968 *)
  role_uuid = "adec2482-2774-2665-2682-d9ce334ff4a1";
  role_name_label = "secret.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_by_uuid = 
  { (* 1544/1968 *)
  role_uuid = "9412d249-3172-24d8-cf7e-9622564daaf9";
  role_name_label = "secret.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_create = 
  { (* 1545/1968 *)
  role_uuid = "87005ee6-c593-016c-5cb6-63ced4df556c";
  role_name_label = "secret.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_destroy = 
  { (* 1546/1968 *)
  role_uuid = "5c423f17-499e-76f6-a0a4-a8e96a9a5841";
  role_name_label = "secret.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_uuid = 
  { (* 1547/1968 *)
  role_uuid = "e701b23d-c37b-d583-890b-48657c03f5ad";
  role_name_label = "secret.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_value = 
  { (* 1548/1968 *)
  role_uuid = "90c6fb36-5d02-460e-f78c-c02828defb95";
  role_name_label = "secret.get_value";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_other_config = 
  { (* 1549/1968 *)
  role_uuid = "3fdd414e-97c6-a7a2-c297-871f5f05ee3d";
  role_name_label = "secret.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_set_value = 
  { (* 1550/1968 *)
  role_uuid = "8a92fce7-31af-97f1-33ba-74802d8522c3";
  role_name_label = "secret.set_value";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_set_other_config = 
  { (* 1551/1968 *)
  role_uuid = "3c291172-5a99-70dc-e6d1-d3637fe01b96";
  role_name_label = "secret.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_add_to_other_config = 
  { (* 1552/1968 *)
  role_uuid = "69ee95df-aa85-fa8f-a8fe-f906098d50fa";
  role_name_label = "secret.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_remove_from_other_config = 
  { (* 1553/1968 *)
  role_uuid = "72145853-81ce-a12c-1606-14ff7432a7b6";
  role_name_label = "secret.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_introduce = 
  { (* 1554/1968 *)
  role_uuid = "4b96faeb-b163-23ce-bfb1-65338654423f";
  role_name_label = "secret.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_all = 
  { (* 1555/1968 *)
  role_uuid = "46eb0ae8-1c31-3d27-55a0-3e001e6a8cb0";
  role_name_label = "secret.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_all_records_where = 
  { (* 1556/1968 *)
  role_uuid = "c34920a2-588f-0628-3f8b-b3c5bab3ac4f";
  role_name_label = "secret.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_secret_get_all_records = 
  { (* 1557/1968 *)
  role_uuid = "1d1d659f-b7df-54db-8b2f-a3fd62a67933";
  role_name_label = "secret.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_record = 
  { (* 1558/1968 *)
  role_uuid = "a00e1125-aa6c-2a9d-2cef-3000e5357ced";
  role_name_label = "tunnel.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_by_uuid = 
  { (* 1559/1968 *)
  role_uuid = "973b22d8-c0b0-834c-ff70-30cdd424d1d8";
  role_name_label = "tunnel.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_uuid = 
  { (* 1560/1968 *)
  role_uuid = "207a7572-567a-8900-16f4-41f9c102bdeb";
  role_name_label = "tunnel.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_access_PIF = 
  { (* 1561/1968 *)
  role_uuid = "50dc8d5b-e46e-8903-e94d-bffbbf1bccc1";
  role_name_label = "tunnel.get_access_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_transport_PIF = 
  { (* 1562/1968 *)
  role_uuid = "3a016f8f-2d2f-9b6a-dfc7-9ad035c7e17d";
  role_name_label = "tunnel.get_transport_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_status = 
  { (* 1563/1968 *)
  role_uuid = "1388c828-c07f-9391-a1fb-9cd0653117fa";
  role_name_label = "tunnel.get_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_other_config = 
  { (* 1564/1968 *)
  role_uuid = "49010e45-7adc-7912-16a1-45bbcd359177";
  role_name_label = "tunnel.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_protocol = 
  { (* 1565/1968 *)
  role_uuid = "98da779a-86ad-4da0-491c-52c6c348239d";
  role_name_label = "tunnel.get_protocol";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_set_status = 
  { (* 1566/1968 *)
  role_uuid = "d64e8bad-1a24-1fd3-93a5-b0252099f97f";
  role_name_label = "tunnel.set_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_add_to_status = 
  { (* 1567/1968 *)
  role_uuid = "3b10ba6c-e973-5bf2-5bcc-d429490f88cc";
  role_name_label = "tunnel.add_to_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_remove_from_status = 
  { (* 1568/1968 *)
  role_uuid = "c03fd8c1-e01f-2726-7c57-d9e8066f042f";
  role_name_label = "tunnel.remove_from_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_set_other_config = 
  { (* 1569/1968 *)
  role_uuid = "8aa70081-ff29-9795-004d-e48584816546";
  role_name_label = "tunnel.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_add_to_other_config = 
  { (* 1570/1968 *)
  role_uuid = "0dec93de-3a81-1b68-64b1-5a9fdfa5848c";
  role_name_label = "tunnel.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_remove_from_other_config = 
  { (* 1571/1968 *)
  role_uuid = "bc40708d-314f-472f-4f71-da37b0f5440e";
  role_name_label = "tunnel.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_set_protocol = 
  { (* 1572/1968 *)
  role_uuid = "bd4b9dcf-c39e-8740-c96d-85ef9cfa5d11";
  role_name_label = "tunnel.set_protocol";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_create = 
  { (* 1573/1968 *)
  role_uuid = "6c7256c1-dd50-fa5b-8dc2-4fe5858d1c08";
  role_name_label = "tunnel.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_destroy = 
  { (* 1574/1968 *)
  role_uuid = "98773f37-621e-5c05-3c3a-f7f7f034a76e";
  role_name_label = "tunnel.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_all = 
  { (* 1575/1968 *)
  role_uuid = "7a2ff2c2-5db7-9225-edfd-e27d4fc4ef5c";
  role_name_label = "tunnel.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_all_records_where = 
  { (* 1576/1968 *)
  role_uuid = "43c79c0a-2a5c-0e0a-b10b-5c0847fd888c";
  role_name_label = "tunnel.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_tunnel_get_all_records = 
  { (* 1577/1968 *)
  role_uuid = "bf225b3b-1e37-86dd-5922-a04df826dba6";
  role_name_label = "tunnel.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_record = 
  { (* 1578/1968 *)
  role_uuid = "f2ffa713-f05e-34b5-82a5-81ca5023da9e";
  role_name_label = "network_sriov.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_by_uuid = 
  { (* 1579/1968 *)
  role_uuid = "3897a39f-2ce7-ede9-8caa-7c86d5c0a549";
  role_name_label = "network_sriov.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_uuid = 
  { (* 1580/1968 *)
  role_uuid = "fc8e4085-6610-39ab-95f5-e7194507f042";
  role_name_label = "network_sriov.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_physical_PIF = 
  { (* 1581/1968 *)
  role_uuid = "f39437a7-e053-d827-47b5-3cd94c21d605";
  role_name_label = "network_sriov.get_physical_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_logical_PIF = 
  { (* 1582/1968 *)
  role_uuid = "9bd8dd55-41dd-01a4-70c4-a61a8a0d16ac";
  role_name_label = "network_sriov.get_logical_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_requires_reboot = 
  { (* 1583/1968 *)
  role_uuid = "1e7f9c24-24d9-ab32-0b84-2713bf9069cf";
  role_name_label = "network_sriov.get_requires_reboot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_configuration_mode = 
  { (* 1584/1968 *)
  role_uuid = "c8339008-71e7-e68c-93f6-6a10e56f5e46";
  role_name_label = "network_sriov.get_configuration_mode";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_create = 
  { (* 1585/1968 *)
  role_uuid = "6dbf3b5f-d4f0-21da-15ff-90b8ff64eb09";
  role_name_label = "network_sriov.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_destroy = 
  { (* 1586/1968 *)
  role_uuid = "17122015-e3d8-505e-2de3-5eddf9adf775";
  role_name_label = "network_sriov.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_remaining_capacity = 
  { (* 1587/1968 *)
  role_uuid = "a839ba0d-446c-edb0-d717-f7e408259f80";
  role_name_label = "network_sriov.get_remaining_capacity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_all = 
  { (* 1588/1968 *)
  role_uuid = "16bfe457-cbdb-0e70-d08e-88e1db9d899c";
  role_name_label = "network_sriov.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_all_records_where = 
  { (* 1589/1968 *)
  role_uuid = "ce18f380-bd97-08a9-51e6-7552854cdd44";
  role_name_label = "network_sriov.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_network_sriov_get_all_records = 
  { (* 1590/1968 *)
  role_uuid = "d97d79cb-d89c-9b29-3061-f16126abf7b0";
  role_name_label = "network_sriov.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_record = 
  { (* 1591/1968 *)
  role_uuid = "8274ff2e-c513-43d6-2a55-ce0057861430";
  role_name_label = "pci.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_by_uuid = 
  { (* 1592/1968 *)
  role_uuid = "0bdee192-3fa7-09af-d3ee-12cd06ebb91b";
  role_name_label = "pci.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_uuid = 
  { (* 1593/1968 *)
  role_uuid = "4b3fbad1-a1b2-ccc9-813c-9d6151a9d974";
  role_name_label = "pci.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_class_name = 
  { (* 1594/1968 *)
  role_uuid = "d6219686-f85d-245e-c292-f2dab9cf156f";
  role_name_label = "pci.get_class_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_vendor_name = 
  { (* 1595/1968 *)
  role_uuid = "cbb0830e-78d6-6db4-b10e-cd1acbffcfd8";
  role_name_label = "pci.get_vendor_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_device_name = 
  { (* 1596/1968 *)
  role_uuid = "137475bc-66cc-23b5-4a93-1101da98b268";
  role_name_label = "pci.get_device_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_host = 
  { (* 1597/1968 *)
  role_uuid = "435947cd-5662-5e05-3da1-cb3cb6937448";
  role_name_label = "pci.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_pci_id = 
  { (* 1598/1968 *)
  role_uuid = "1411712a-41d3-d353-5e92-b977076e1b05";
  role_name_label = "pci.get_pci_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_dependencies = 
  { (* 1599/1968 *)
  role_uuid = "2c6424c8-06c4-34fa-1ef3-6f04e5805e1c";
  role_name_label = "pci.get_dependencies";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_other_config = 
  { (* 1600/1968 *)
  role_uuid = "7588002d-2ebc-c944-8f10-c5c452efb97a";
  role_name_label = "pci.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_subsystem_vendor_name = 
  { (* 1601/1968 *)
  role_uuid = "a7988408-b920-0147-acbb-54f11c71f038";
  role_name_label = "pci.get_subsystem_vendor_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_subsystem_device_name = 
  { (* 1602/1968 *)
  role_uuid = "68ce31f4-03ce-0ac0-cbf9-e3680aec76cb";
  role_name_label = "pci.get_subsystem_device_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_driver_name = 
  { (* 1603/1968 *)
  role_uuid = "ae5cc99c-9222-36e6-47d0-509552979091";
  role_name_label = "pci.get_driver_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_set_other_config = 
  { (* 1604/1968 *)
  role_uuid = "6e525c86-0bff-99e3-93b1-9130c8b68496";
  role_name_label = "pci.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_add_to_other_config = 
  { (* 1605/1968 *)
  role_uuid = "3d046d7f-a1de-59c3-e371-d58126e521d5";
  role_name_label = "pci.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_remove_from_other_config = 
  { (* 1606/1968 *)
  role_uuid = "e0be1112-51fd-9ebb-5b03-cf2140a2ebe7";
  role_name_label = "pci.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_all = 
  { (* 1607/1968 *)
  role_uuid = "36bca930-2c10-ece7-d692-5fd29aca70a6";
  role_name_label = "pci.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_all_records_where = 
  { (* 1608/1968 *)
  role_uuid = "899a5718-836e-bb6f-7f8d-2ada2bbc96dc";
  role_name_label = "pci.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PCI_get_all_records = 
  { (* 1609/1968 *)
  role_uuid = "dd24c4b3-62ab-3d64-f1c9-3c36df94d604";
  role_name_label = "pci.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_record = 
  { (* 1610/1968 *)
  role_uuid = "26051e27-35b3-e931-521f-cb8806ecf4b6";
  role_name_label = "pgpu.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_by_uuid = 
  { (* 1611/1968 *)
  role_uuid = "30f950cd-ded7-0c2c-e58c-d782eda3d752";
  role_name_label = "pgpu.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_uuid = 
  { (* 1612/1968 *)
  role_uuid = "ed901fb0-1968-23c6-ec49-bdbda2035014";
  role_name_label = "pgpu.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_PCI = 
  { (* 1613/1968 *)
  role_uuid = "b15fecc5-3baa-5969-d2f3-b883ec5f1bde";
  role_name_label = "pgpu.get_pci";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_GPU_group = 
  { (* 1614/1968 *)
  role_uuid = "e83a8360-7f59-c3b8-6799-39fa6509772a";
  role_name_label = "pgpu.get_gpu_group";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_host = 
  { (* 1615/1968 *)
  role_uuid = "47707758-d7e2-88d8-20bd-6f063c40bd18";
  role_name_label = "pgpu.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_other_config = 
  { (* 1616/1968 *)
  role_uuid = "b18bd364-663f-1421-4321-d11d27c5b2c5";
  role_name_label = "pgpu.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_supported_VGPU_types = 
  { (* 1617/1968 *)
  role_uuid = "3d1ae8a9-4b9b-a2ea-5d92-6838d6a90bd1";
  role_name_label = "pgpu.get_supported_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_enabled_VGPU_types = 
  { (* 1618/1968 *)
  role_uuid = "13f8bfc3-0303-9f30-c126-e66b47445b5b";
  role_name_label = "pgpu.get_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_resident_VGPUs = 
  { (* 1619/1968 *)
  role_uuid = "a0375037-9adf-9a06-7473-2e4555b4228c";
  role_name_label = "pgpu.get_resident_vgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_supported_VGPU_max_capacities = 
  { (* 1620/1968 *)
  role_uuid = "ca722bb5-6248-2156-00da-d35b4edfe844";
  role_name_label = "pgpu.get_supported_vgpu_max_capacities";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_dom0_access = 
  { (* 1621/1968 *)
  role_uuid = "94e9fcb0-7b3a-da02-cbbf-293532471b9c";
  role_name_label = "pgpu.get_dom0_access";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_is_system_display_device = 
  { (* 1622/1968 *)
  role_uuid = "29b6661e-59a7-1a95-7018-a50c64a6bacd";
  role_name_label = "pgpu.get_is_system_display_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_compatibility_metadata = 
  { (* 1623/1968 *)
  role_uuid = "20ebf277-4a3b-9743-589c-fa6f7c696912";
  role_name_label = "pgpu.get_compatibility_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_set_other_config = 
  { (* 1624/1968 *)
  role_uuid = "2c9fc908-4e38-a942-5bb7-8fc7e3202324";
  role_name_label = "pgpu.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_add_to_other_config = 
  { (* 1625/1968 *)
  role_uuid = "e362b679-36e0-70bc-be0c-1ca74c94dcba";
  role_name_label = "pgpu.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_remove_from_other_config = 
  { (* 1626/1968 *)
  role_uuid = "34c9c779-9cca-96ea-40b5-252be5f41bc2";
  role_name_label = "pgpu.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_add_enabled_VGPU_types = 
  { (* 1627/1968 *)
  role_uuid = "9c6dcc08-8f28-0176-1fd7-addd6b93b8c3";
  role_name_label = "pgpu.add_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_remove_enabled_VGPU_types = 
  { (* 1628/1968 *)
  role_uuid = "611a0d61-b9c9-55f8-9423-c80231f011f7";
  role_name_label = "pgpu.remove_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_set_enabled_VGPU_types = 
  { (* 1629/1968 *)
  role_uuid = "5d1403c0-c373-2001-65ab-1cfdc2c21009";
  role_name_label = "pgpu.set_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_set_GPU_group = 
  { (* 1630/1968 *)
  role_uuid = "451de099-63e8-82b8-44f8-8b52b4aa0b12";
  role_name_label = "pgpu.set_gpu_group";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_remaining_capacity = 
  { (* 1631/1968 *)
  role_uuid = "0061aab7-e0e9-f2ec-1323-ccaac31e1a6e";
  role_name_label = "pgpu.get_remaining_capacity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_enable_dom0_access = 
  { (* 1632/1968 *)
  role_uuid = "14a2fe73-b57b-4fa4-84a1-d95ab62b7ed6";
  role_name_label = "pgpu.enable_dom0_access";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_disable_dom0_access = 
  { (* 1633/1968 *)
  role_uuid = "f472c1f3-a138-a453-caef-86b45ed4a6bc";
  role_name_label = "pgpu.disable_dom0_access";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_all = 
  { (* 1634/1968 *)
  role_uuid = "48ac5191-399a-1660-42c9-754b302eeb84";
  role_name_label = "pgpu.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_all_records_where = 
  { (* 1635/1968 *)
  role_uuid = "421958db-0318-8810-3244-01f0f855895a";
  role_name_label = "pgpu.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PGPU_get_all_records = 
  { (* 1636/1968 *)
  role_uuid = "154e0584-ee8b-74ae-4e57-b02afd66ba13";
  role_name_label = "pgpu.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_record = 
  { (* 1637/1968 *)
  role_uuid = "1a4cfda0-0d18-b966-86c4-b80e7a832211";
  role_name_label = "gpu_group.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_by_uuid = 
  { (* 1638/1968 *)
  role_uuid = "faf17e53-86af-aa3b-93e7-46a7f130d178";
  role_name_label = "gpu_group.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_by_name_label = 
  { (* 1639/1968 *)
  role_uuid = "53a516b7-ac7f-519f-b9e4-b9f79a6a1f58";
  role_name_label = "gpu_group.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_uuid = 
  { (* 1640/1968 *)
  role_uuid = "c6e718ea-7554-1841-ffe9-48304dc85276";
  role_name_label = "gpu_group.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_name_label = 
  { (* 1641/1968 *)
  role_uuid = "e6e276f5-85c3-01a4-43f6-c7699f4cf723";
  role_name_label = "gpu_group.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_name_description = 
  { (* 1642/1968 *)
  role_uuid = "5607864d-8f51-59c6-74a3-cbe8fdf91e19";
  role_name_label = "gpu_group.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_PGPUs = 
  { (* 1643/1968 *)
  role_uuid = "67a5efa1-04cf-098a-f236-30b058cd2f59";
  role_name_label = "gpu_group.get_pgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_VGPUs = 
  { (* 1644/1968 *)
  role_uuid = "a1fb1090-0bca-17c8-bbc5-ed82e230cdf0";
  role_name_label = "gpu_group.get_vgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_GPU_types = 
  { (* 1645/1968 *)
  role_uuid = "54b50900-4c44-f1b6-edc4-4b9d80e2dc48";
  role_name_label = "gpu_group.get_gpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_other_config = 
  { (* 1646/1968 *)
  role_uuid = "0002e248-e4da-6542-fb0f-85214c20b145";
  role_name_label = "gpu_group.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_allocation_algorithm = 
  { (* 1647/1968 *)
  role_uuid = "e40f6d07-859d-1296-3724-9c2fb0857f76";
  role_name_label = "gpu_group.get_allocation_algorithm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_supported_VGPU_types = 
  { (* 1648/1968 *)
  role_uuid = "bc7bb88b-090e-6939-4847-8d758a29ebc2";
  role_name_label = "gpu_group.get_supported_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_enabled_VGPU_types = 
  { (* 1649/1968 *)
  role_uuid = "137dc79e-a818-a1ba-4bc5-8e2d7a3c90c0";
  role_name_label = "gpu_group.get_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_set_name_label = 
  { (* 1650/1968 *)
  role_uuid = "8c6ddd51-dfd3-4063-a98f-240264641fa2";
  role_name_label = "gpu_group.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_set_name_description = 
  { (* 1651/1968 *)
  role_uuid = "ffd180ac-0266-b6fd-a6f4-720dd314aa73";
  role_name_label = "gpu_group.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_set_other_config = 
  { (* 1652/1968 *)
  role_uuid = "a682ee3c-c131-0965-a720-4b4733ac7960";
  role_name_label = "gpu_group.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_add_to_other_config = 
  { (* 1653/1968 *)
  role_uuid = "ba0eb8b7-b7db-c614-7d4a-8e1c4308ed2c";
  role_name_label = "gpu_group.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_remove_from_other_config = 
  { (* 1654/1968 *)
  role_uuid = "c964a69f-d541-cd37-596d-97ded3a917f4";
  role_name_label = "gpu_group.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_set_allocation_algorithm = 
  { (* 1655/1968 *)
  role_uuid = "b271502b-e9d3-1f30-16d3-13d03195966a";
  role_name_label = "gpu_group.set_allocation_algorithm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_create = 
  { (* 1656/1968 *)
  role_uuid = "b79d6b7a-58d7-384a-1556-9c7f86c4469a";
  role_name_label = "gpu_group.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_destroy = 
  { (* 1657/1968 *)
  role_uuid = "d918de41-726c-7c74-75bc-66122a9c9d78";
  role_name_label = "gpu_group.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_update_enabled_VGPU_types = 
  { (* 1658/1968 *)
  role_uuid = "510cdf7f-771b-5c4d-6f1b-5d5306df9e97";
  role_name_label = "gpu_group.update_enabled_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_update_supported_VGPU_types = 
  { (* 1659/1968 *)
  role_uuid = "ebc9611b-639e-32cc-b2fc-b1a15d374f0d";
  role_name_label = "gpu_group.update_supported_vgpu_types";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_remaining_capacity = 
  { (* 1660/1968 *)
  role_uuid = "0757a4de-5e36-e8c2-8d64-e1e6308970e2";
  role_name_label = "gpu_group.get_remaining_capacity";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_all = 
  { (* 1661/1968 *)
  role_uuid = "9fd2bba6-b9a8-29a0-faa6-dfb3f7e47835";
  role_name_label = "gpu_group.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_all_records_where = 
  { (* 1662/1968 *)
  role_uuid = "42c1215c-fcd0-e848-88a7-8e9ac7cb001d";
  role_name_label = "gpu_group.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_GPU_group_get_all_records = 
  { (* 1663/1968 *)
  role_uuid = "28f7a03f-0ee3-383d-dcd2-ed2a466f62c0";
  role_name_label = "gpu_group.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_record = 
  { (* 1664/1968 *)
  role_uuid = "a2c22e5a-4523-2a90-65ed-7501f6d08657";
  role_name_label = "vgpu.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_by_uuid = 
  { (* 1665/1968 *)
  role_uuid = "93de8b7d-a2e0-a1e7-3100-87b9a0c14aa9";
  role_name_label = "vgpu.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_uuid = 
  { (* 1666/1968 *)
  role_uuid = "ec6018b6-36d9-6815-1de8-7d6fc7e9e136";
  role_name_label = "vgpu.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_VM = 
  { (* 1667/1968 *)
  role_uuid = "37215355-cf4c-bacb-1e33-1f027fb8c81e";
  role_name_label = "vgpu.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_GPU_group = 
  { (* 1668/1968 *)
  role_uuid = "8a1a13f2-8137-b095-84f5-ae67e3c3ffff";
  role_name_label = "vgpu.get_gpu_group";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_device = 
  { (* 1669/1968 *)
  role_uuid = "ae118c9d-8c3f-46ad-733e-39af8a3fe63f";
  role_name_label = "vgpu.get_device";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_currently_attached = 
  { (* 1670/1968 *)
  role_uuid = "21882b95-87bc-8ee8-cc2e-653037903827";
  role_name_label = "vgpu.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_other_config = 
  { (* 1671/1968 *)
  role_uuid = "9e6aaac3-334a-9504-3583-2a2f1ecba5b3";
  role_name_label = "vgpu.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_type = 
  { (* 1672/1968 *)
  role_uuid = "9edaf99b-cac8-9dca-4834-f517770f506e";
  role_name_label = "vgpu.get_type";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_resident_on = 
  { (* 1673/1968 *)
  role_uuid = "19dee90e-0f9e-4e42-f4fc-46b499224408";
  role_name_label = "vgpu.get_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_scheduled_to_be_resident_on = 
  { (* 1674/1968 *)
  role_uuid = "b5d5b619-e6d2-8d8e-33a9-c14a6451da71";
  role_name_label = "vgpu.get_scheduled_to_be_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_compatibility_metadata = 
  { (* 1675/1968 *)
  role_uuid = "22fa7f8d-721b-e446-cae9-bc05f3662354";
  role_name_label = "vgpu.get_compatibility_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_extra_args = 
  { (* 1676/1968 *)
  role_uuid = "2f3f7ec4-5178-5f93-7c83-68f6956a624f";
  role_name_label = "vgpu.get_extra_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_PCI = 
  { (* 1677/1968 *)
  role_uuid = "fdc17b0e-48aa-1abe-889a-f828e0569d51";
  role_name_label = "vgpu.get_pci";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_set_other_config = 
  { (* 1678/1968 *)
  role_uuid = "02aea1ba-d9b9-c004-768e-9b298561737c";
  role_name_label = "vgpu.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_add_to_other_config = 
  { (* 1679/1968 *)
  role_uuid = "0e96087f-e831-7f48-65e2-8b335a9aade1";
  role_name_label = "vgpu.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_remove_from_other_config = 
  { (* 1680/1968 *)
  role_uuid = "001314d7-35e3-9c21-f0b9-083a1775b4d9";
  role_name_label = "vgpu.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_set_extra_args = 
  { (* 1681/1968 *)
  role_uuid = "19e09288-7244-e0e4-ef62-52dc253890a0";
  role_name_label = "vgpu.set_extra_args";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_create = 
  { (* 1682/1968 *)
  role_uuid = "66dd3e88-4680-311b-0df8-ce833d998744";
  role_name_label = "vgpu.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_destroy = 
  { (* 1683/1968 *)
  role_uuid = "96fc2d1c-647c-8b14-e1f8-7b393b923f13";
  role_name_label = "vgpu.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_atomic_set_resident_on = 
  { (* 1684/1968 *)
  role_uuid = "1a9cbc81-d83b-bfda-1e6d-736291e9ba64";
  role_name_label = "vgpu.atomic_set_resident_on";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_all = 
  { (* 1685/1968 *)
  role_uuid = "b9415fe6-a3a1-5cb8-ca85-df89c1304e8d";
  role_name_label = "vgpu.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_all_records_where = 
  { (* 1686/1968 *)
  role_uuid = "9bcaf150-0b82-265c-2206-1b5f2d672608";
  role_name_label = "vgpu.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_get_all_records = 
  { (* 1687/1968 *)
  role_uuid = "bb55d298-b018-8a07-a849-bdea9692a88c";
  role_name_label = "vgpu.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_record = 
  { (* 1688/1968 *)
  role_uuid = "a34d1e52-f8c2-d9d4-8f08-57a41ede54c9";
  role_name_label = "vgpu_type.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_by_uuid = 
  { (* 1689/1968 *)
  role_uuid = "8f80b407-c3d7-0c9e-3f2c-06a07084a539";
  role_name_label = "vgpu_type.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_uuid = 
  { (* 1690/1968 *)
  role_uuid = "4df2d4da-b1a3-c715-f4f9-1b0b9ca86cae";
  role_name_label = "vgpu_type.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_vendor_name = 
  { (* 1691/1968 *)
  role_uuid = "23785d1e-0a48-a872-0c31-99f9a0d099dc";
  role_name_label = "vgpu_type.get_vendor_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_model_name = 
  { (* 1692/1968 *)
  role_uuid = "ab7cdeed-53bb-e581-c2c4-3a32327063d7";
  role_name_label = "vgpu_type.get_model_name";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_framebuffer_size = 
  { (* 1693/1968 *)
  role_uuid = "c0638e99-3737-2399-154b-f14077763830";
  role_name_label = "vgpu_type.get_framebuffer_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_max_heads = 
  { (* 1694/1968 *)
  role_uuid = "c0fdfc28-93f1-cf52-7880-64ffd4feb3cd";
  role_name_label = "vgpu_type.get_max_heads";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_max_resolution_x = 
  { (* 1695/1968 *)
  role_uuid = "c946c997-d75b-1f64-f460-6bcc4eed0bc3";
  role_name_label = "vgpu_type.get_max_resolution_x";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_max_resolution_y = 
  { (* 1696/1968 *)
  role_uuid = "12911318-80f8-7dfa-0af2-c7bbc25d1e58";
  role_name_label = "vgpu_type.get_max_resolution_y";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_supported_on_PGPUs = 
  { (* 1697/1968 *)
  role_uuid = "20d81d85-b455-915c-733b-65a13329a3cc";
  role_name_label = "vgpu_type.get_supported_on_pgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_enabled_on_PGPUs = 
  { (* 1698/1968 *)
  role_uuid = "22f14348-bc01-5a18-0d2e-c1eb1d89643e";
  role_name_label = "vgpu_type.get_enabled_on_pgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_VGPUs = 
  { (* 1699/1968 *)
  role_uuid = "b3ed1826-f039-e83d-d83a-6332644b5824";
  role_name_label = "vgpu_type.get_vgpus";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_supported_on_GPU_groups = 
  { (* 1700/1968 *)
  role_uuid = "aa86260d-8472-43e3-d08d-cd196bbcf479";
  role_name_label = "vgpu_type.get_supported_on_gpu_groups";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_enabled_on_GPU_groups = 
  { (* 1701/1968 *)
  role_uuid = "9433e8cd-33f6-7597-a1a4-c50076e81bc5";
  role_name_label = "vgpu_type.get_enabled_on_gpu_groups";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_implementation = 
  { (* 1702/1968 *)
  role_uuid = "9ef85b26-df86-3e84-0023-fcc155c78fae";
  role_name_label = "vgpu_type.get_implementation";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_identifier = 
  { (* 1703/1968 *)
  role_uuid = "466f3106-fc61-b1c1-8a21-b68fa3adcf2d";
  role_name_label = "vgpu_type.get_identifier";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_experimental = 
  { (* 1704/1968 *)
  role_uuid = "b9565377-f9ab-aaf5-27da-14b96cd8acaf";
  role_name_label = "vgpu_type.get_experimental";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_compatible_types_in_vm = 
  { (* 1705/1968 *)
  role_uuid = "78d60c67-8fdb-b4fa-3646-6517514b6e24";
  role_name_label = "vgpu_type.get_compatible_types_in_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_all = 
  { (* 1706/1968 *)
  role_uuid = "db927c37-3702-0cd0-240f-f5c9ae5d848c";
  role_name_label = "vgpu_type.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_all_records_where = 
  { (* 1707/1968 *)
  role_uuid = "95dceab8-b315-e2c1-e834-3993d0f7093a";
  role_name_label = "vgpu_type.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VGPU_type_get_all_records = 
  { (* 1708/1968 *)
  role_uuid = "3b065104-1a4b-32ef-c5b0-0b3e8001d1ab";
  role_name_label = "vgpu_type.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_record = 
  { (* 1709/1968 *)
  role_uuid = "da50ae4a-d502-649f-3cb6-d671f88c0cbd";
  role_name_label = "pvs_site.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_by_uuid = 
  { (* 1710/1968 *)
  role_uuid = "9b93d35e-9ced-8c77-ab9d-28f6bcdbfc70";
  role_name_label = "pvs_site.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_by_name_label = 
  { (* 1711/1968 *)
  role_uuid = "a6ef1398-ec99-b210-a8e6-6b4ad5e150fb";
  role_name_label = "pvs_site.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_uuid = 
  { (* 1712/1968 *)
  role_uuid = "364bff33-8f18-cafb-67cd-69cea349278e";
  role_name_label = "pvs_site.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_name_label = 
  { (* 1713/1968 *)
  role_uuid = "966ec7a2-000a-ba6e-72ab-819ea2e38d23";
  role_name_label = "pvs_site.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_name_description = 
  { (* 1714/1968 *)
  role_uuid = "e9d8ca0c-2146-33bb-9ea3-01c9def1d16f";
  role_name_label = "pvs_site.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_PVS_uuid = 
  { (* 1715/1968 *)
  role_uuid = "8a5caa5f-9808-aee0-5cd2-30a947d60350";
  role_name_label = "pvs_site.get_pvs_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_cache_storage = 
  { (* 1716/1968 *)
  role_uuid = "8e383ec0-ce83-a6d8-10ea-ddb6bd22d17b";
  role_name_label = "pvs_site.get_cache_storage";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_servers = 
  { (* 1717/1968 *)
  role_uuid = "a249981e-22f9-3713-fde6-538779ea3e3f";
  role_name_label = "pvs_site.get_servers";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_proxies = 
  { (* 1718/1968 *)
  role_uuid = "ff13dabe-b2b0-2da8-54af-880e3b95b3cf";
  role_name_label = "pvs_site.get_proxies";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_set_name_label = 
  { (* 1719/1968 *)
  role_uuid = "0acd337e-4356-8f33-a8fb-23840bbc014b";
  role_name_label = "pvs_site.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_set_name_description = 
  { (* 1720/1968 *)
  role_uuid = "1b94a681-478e-eb3f-6486-f543c805fd1a";
  role_name_label = "pvs_site.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_introduce = 
  { (* 1721/1968 *)
  role_uuid = "95b61925-ab80-2c01-dc55-bffa087421b2";
  role_name_label = "pvs_site.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_forget = 
  { (* 1722/1968 *)
  role_uuid = "e35477f6-04d0-6179-75ab-1223e53e1a3e";
  role_name_label = "pvs_site.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_set_PVS_uuid = 
  { (* 1723/1968 *)
  role_uuid = "854241c1-3a20-f8fd-7b90-e7db13ef9c26";
  role_name_label = "pvs_site.set_pvs_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_all = 
  { (* 1724/1968 *)
  role_uuid = "c7d8edf3-f8e3-654b-64e0-cadb5eeef369";
  role_name_label = "pvs_site.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_all_records_where = 
  { (* 1725/1968 *)
  role_uuid = "7e5b775c-12bc-5e15-df73-0100224b06ab";
  role_name_label = "pvs_site.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_site_get_all_records = 
  { (* 1726/1968 *)
  role_uuid = "2150bedf-8042-d7fe-1c4c-c246cc33cbe4";
  role_name_label = "pvs_site.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_record = 
  { (* 1727/1968 *)
  role_uuid = "bea752cb-bb95-d867-f429-9e54e74e23d2";
  role_name_label = "pvs_server.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_by_uuid = 
  { (* 1728/1968 *)
  role_uuid = "968afd7c-ed26-910e-9f0f-799800f86dd9";
  role_name_label = "pvs_server.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_uuid = 
  { (* 1729/1968 *)
  role_uuid = "c809b54b-bd0b-ce04-584d-e2059c149d84";
  role_name_label = "pvs_server.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_addresses = 
  { (* 1730/1968 *)
  role_uuid = "2ee70e1b-0a29-a1c3-d321-455984ef6c58";
  role_name_label = "pvs_server.get_addresses";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_first_port = 
  { (* 1731/1968 *)
  role_uuid = "3090d50a-6c03-6ca7-2075-06f0fb9f1405";
  role_name_label = "pvs_server.get_first_port";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_last_port = 
  { (* 1732/1968 *)
  role_uuid = "1f090782-532c-9eb5-680f-42cd39ad785a";
  role_name_label = "pvs_server.get_last_port";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_site = 
  { (* 1733/1968 *)
  role_uuid = "7e9672df-0756-b2c3-6446-9ad917e3ab2b";
  role_name_label = "pvs_server.get_site";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_introduce = 
  { (* 1734/1968 *)
  role_uuid = "75b7968f-3a9f-7d8c-97f8-82c5072ed06e";
  role_name_label = "pvs_server.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_forget = 
  { (* 1735/1968 *)
  role_uuid = "02a033dc-7f73-e770-d903-a35063875f27";
  role_name_label = "pvs_server.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_all = 
  { (* 1736/1968 *)
  role_uuid = "3d4da83a-20a8-431d-dab7-35df0c0ab05f";
  role_name_label = "pvs_server.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_all_records_where = 
  { (* 1737/1968 *)
  role_uuid = "99e093fa-1717-7272-67e2-7062cc6d6e20";
  role_name_label = "pvs_server.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_server_get_all_records = 
  { (* 1738/1968 *)
  role_uuid = "7e1212a1-a997-85bd-d585-ada1f66bbd56";
  role_name_label = "pvs_server.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_record = 
  { (* 1739/1968 *)
  role_uuid = "56ec2306-b037-0f76-715b-3e165ad1c857";
  role_name_label = "pvs_proxy.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_by_uuid = 
  { (* 1740/1968 *)
  role_uuid = "bcca9649-4979-2185-1b92-c908e328bc53";
  role_name_label = "pvs_proxy.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_uuid = 
  { (* 1741/1968 *)
  role_uuid = "7bb2ef7a-240f-4b8f-3004-c698605ff9b6";
  role_name_label = "pvs_proxy.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_site = 
  { (* 1742/1968 *)
  role_uuid = "508c2fde-d30a-0de8-edcd-0ea67ed995da";
  role_name_label = "pvs_proxy.get_site";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_VIF = 
  { (* 1743/1968 *)
  role_uuid = "d5d04ecd-3277-4207-a9dd-7ae1c81c56f4";
  role_name_label = "pvs_proxy.get_vif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_currently_attached = 
  { (* 1744/1968 *)
  role_uuid = "13073c2b-6721-9e92-2e8f-26cc5b8287f7";
  role_name_label = "pvs_proxy.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_status = 
  { (* 1745/1968 *)
  role_uuid = "d5166d02-7799-34a6-e3b0-0bb191391cd1";
  role_name_label = "pvs_proxy.get_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_create = 
  { (* 1746/1968 *)
  role_uuid = "e01835f9-f9da-88c5-c594-ead2f28a2595";
  role_name_label = "pvs_proxy.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_destroy = 
  { (* 1747/1968 *)
  role_uuid = "b71dc9f1-2b5a-fd31-f528-38a125112813";
  role_name_label = "pvs_proxy.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_all = 
  { (* 1748/1968 *)
  role_uuid = "2ff5407f-7e67-25b8-8fb3-0d044ed1e3b0";
  role_name_label = "pvs_proxy.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_all_records_where = 
  { (* 1749/1968 *)
  role_uuid = "34b95ebe-5219-7752-a1fc-4750e25462c2";
  role_name_label = "pvs_proxy.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_proxy_get_all_records = 
  { (* 1750/1968 *)
  role_uuid = "af92c6e0-6734-3e1b-af56-9bcef54bfcc0";
  role_name_label = "pvs_proxy.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_record = 
  { (* 1751/1968 *)
  role_uuid = "ac3e13a7-a49d-45aa-e27e-03bfba259dc8";
  role_name_label = "pvs_cache_storage.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_by_uuid = 
  { (* 1752/1968 *)
  role_uuid = "b366fddc-db8e-d638-173e-647f77b4d306";
  role_name_label = "pvs_cache_storage.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_create = 
  { (* 1753/1968 *)
  role_uuid = "cb964c89-19f2-aa2d-1c0f-65cfb496bf47";
  role_name_label = "pvs_cache_storage.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_destroy = 
  { (* 1754/1968 *)
  role_uuid = "3d9f7d13-97c6-674c-5d33-86bd6f9116e5";
  role_name_label = "pvs_cache_storage.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_uuid = 
  { (* 1755/1968 *)
  role_uuid = "78ee1979-fca7-0eb3-a7cd-1ab401a65f5d";
  role_name_label = "pvs_cache_storage.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_host = 
  { (* 1756/1968 *)
  role_uuid = "ad923321-f2cf-a8cc-8675-83043e0bc34c";
  role_name_label = "pvs_cache_storage.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_SR = 
  { (* 1757/1968 *)
  role_uuid = "ca937ad6-ea42-3614-779f-6571c9d17fbb";
  role_name_label = "pvs_cache_storage.get_sr";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_site = 
  { (* 1758/1968 *)
  role_uuid = "2df07b5d-1cb3-bccd-c04e-796571773a53";
  role_name_label = "pvs_cache_storage.get_site";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_size = 
  { (* 1759/1968 *)
  role_uuid = "839fdb83-0abd-0830-390b-0c8249c3a359";
  role_name_label = "pvs_cache_storage.get_size";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_VDI = 
  { (* 1760/1968 *)
  role_uuid = "e520face-ec7b-5506-020c-4982a7d56d75";
  role_name_label = "pvs_cache_storage.get_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_all = 
  { (* 1761/1968 *)
  role_uuid = "ae970871-aaec-641b-206a-8b4512179113";
  role_name_label = "pvs_cache_storage.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_all_records_where = 
  { (* 1762/1968 *)
  role_uuid = "b0d0142e-61be-61de-e221-ab2917db05b9";
  role_name_label = "pvs_cache_storage.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PVS_cache_storage_get_all_records = 
  { (* 1763/1968 *)
  role_uuid = "c8edae56-eeae-e6f2-74f8-4053c7685445";
  role_name_label = "pvs_cache_storage.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_record = 
  { (* 1764/1968 *)
  role_uuid = "f3ebbf59-33d6-cb06-cca7-f6aecce33c1e";
  role_name_label = "feature.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_by_uuid = 
  { (* 1765/1968 *)
  role_uuid = "95bf6ba9-b31a-5509-2c32-07c90481bca2";
  role_name_label = "feature.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_by_name_label = 
  { (* 1766/1968 *)
  role_uuid = "0a16625e-397c-2a43-c620-8df7cb64cc8d";
  role_name_label = "feature.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_uuid = 
  { (* 1767/1968 *)
  role_uuid = "d0ac2496-a3a3-cd95-e43e-c149e0a14b05";
  role_name_label = "feature.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_name_label = 
  { (* 1768/1968 *)
  role_uuid = "334decb6-599d-0d36-1aaa-8594fc3b4d09";
  role_name_label = "feature.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_name_description = 
  { (* 1769/1968 *)
  role_uuid = "e3523b25-b938-9ac6-033e-bfe9076760ad";
  role_name_label = "feature.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_enabled = 
  { (* 1770/1968 *)
  role_uuid = "5b2c36f7-203f-e651-fb1f-5d977bccd440";
  role_name_label = "feature.get_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_experimental = 
  { (* 1771/1968 *)
  role_uuid = "2ad4ffc2-b0aa-7672-e961-5d87f9f3b51c";
  role_name_label = "feature.get_experimental";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_version = 
  { (* 1772/1968 *)
  role_uuid = "144ba433-1da4-bfc0-9f75-294003a2fa33";
  role_name_label = "feature.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_host = 
  { (* 1773/1968 *)
  role_uuid = "9881ffa6-cbfb-12d8-d267-e24948763ee2";
  role_name_label = "feature.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_all = 
  { (* 1774/1968 *)
  role_uuid = "2156b84b-85a4-7612-b672-5b245b82659e";
  role_name_label = "feature.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_all_records_where = 
  { (* 1775/1968 *)
  role_uuid = "61c028cd-2f43-8422-b8b0-91c3078b83d5";
  role_name_label = "feature.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Feature_get_all_records = 
  { (* 1776/1968 *)
  role_uuid = "be05deb2-f8fb-ea06-350d-f8b5baa20392";
  role_name_label = "feature.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_record = 
  { (* 1777/1968 *)
  role_uuid = "0ed1b83b-9d49-ffa3-f911-c2fbd9d67807";
  role_name_label = "sdn_controller.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_by_uuid = 
  { (* 1778/1968 *)
  role_uuid = "2f9f4db6-3129-4be7-0313-5c6f583bc3ef";
  role_name_label = "sdn_controller.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_uuid = 
  { (* 1779/1968 *)
  role_uuid = "c0988e2b-9122-ea39-631e-fa53a99fd826";
  role_name_label = "sdn_controller.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_protocol = 
  { (* 1780/1968 *)
  role_uuid = "5616d074-0b4c-949e-ecd1-4869d2dc2c31";
  role_name_label = "sdn_controller.get_protocol";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_address = 
  { (* 1781/1968 *)
  role_uuid = "abaf8751-42e0-9d9e-5909-b84f28b21e92";
  role_name_label = "sdn_controller.get_address";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_port = 
  { (* 1782/1968 *)
  role_uuid = "120c42a1-9c53-bc03-42d2-ea79ed8ff96c";
  role_name_label = "sdn_controller.get_port";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_introduce = 
  { (* 1783/1968 *)
  role_uuid = "35d78f03-902c-8d33-5c84-052f207983e6";
  role_name_label = "sdn_controller.introduce";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_forget = 
  { (* 1784/1968 *)
  role_uuid = "543670a8-8def-6923-fbab-85dc3680b099";
  role_name_label = "sdn_controller.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_all = 
  { (* 1785/1968 *)
  role_uuid = "caa94835-9ebc-5c50-7408-8271262afeeb";
  role_name_label = "sdn_controller.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_all_records_where = 
  { (* 1786/1968 *)
  role_uuid = "8ad742f8-90bb-8c75-33a0-14dd366eaa4d";
  role_name_label = "sdn_controller.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_SDN_controller_get_all_records = 
  { (* 1787/1968 *)
  role_uuid = "6df3a736-46e1-d53d-c397-b1e0e1f2063e";
  role_name_label = "sdn_controller.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_record = 
  { (* 1788/1968 *)
  role_uuid = "56dc8f45-9da7-518e-e259-2fd47039e45e";
  role_name_label = "pusb.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_by_uuid = 
  { (* 1789/1968 *)
  role_uuid = "0011b7a4-47d0-dab0-db0f-dc4f01d33b22";
  role_name_label = "pusb.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_uuid = 
  { (* 1790/1968 *)
  role_uuid = "831d9ebf-c158-ce55-96e2-07bef574abd5";
  role_name_label = "pusb.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_USB_group = 
  { (* 1791/1968 *)
  role_uuid = "f8717b54-797f-aba8-a66c-d77d345f6c73";
  role_name_label = "pusb.get_usb_group";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_host = 
  { (* 1792/1968 *)
  role_uuid = "a3cbc894-605a-1829-46a0-1a9207dbda66";
  role_name_label = "pusb.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_path = 
  { (* 1793/1968 *)
  role_uuid = "4c131690-6d27-45cd-1526-22ceb49fef08";
  role_name_label = "pusb.get_path";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_vendor_id = 
  { (* 1794/1968 *)
  role_uuid = "94f46a19-13d8-03e5-89bc-f7f440121fc7";
  role_name_label = "pusb.get_vendor_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_vendor_desc = 
  { (* 1795/1968 *)
  role_uuid = "cd07ed9d-bae2-6ae1-6d16-0837b7a03290";
  role_name_label = "pusb.get_vendor_desc";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_product_id = 
  { (* 1796/1968 *)
  role_uuid = "83862a10-fdb9-78fd-179a-88209c5f2afb";
  role_name_label = "pusb.get_product_id";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_product_desc = 
  { (* 1797/1968 *)
  role_uuid = "4279890f-8c92-8ac4-9329-263003482386";
  role_name_label = "pusb.get_product_desc";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_serial = 
  { (* 1798/1968 *)
  role_uuid = "996cb292-b4b0-2943-154b-ff76924944ca";
  role_name_label = "pusb.get_serial";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_version = 
  { (* 1799/1968 *)
  role_uuid = "221e4cd5-f593-aa05-d491-7f4955a7fd7a";
  role_name_label = "pusb.get_version";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_description = 
  { (* 1800/1968 *)
  role_uuid = "9e0b865f-a06d-3b4f-4808-c9f16c70a7e5";
  role_name_label = "pusb.get_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_passthrough_enabled = 
  { (* 1801/1968 *)
  role_uuid = "aa44d799-cd73-4ad1-ed1d-9a7ff4e05a8a";
  role_name_label = "pusb.get_passthrough_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_other_config = 
  { (* 1802/1968 *)
  role_uuid = "3380d486-8131-2e82-f4d3-5b9b73be8c10";
  role_name_label = "pusb.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_speed = 
  { (* 1803/1968 *)
  role_uuid = "09db7310-1dd9-156a-fe0d-52275caeba69";
  role_name_label = "pusb.get_speed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_set_other_config = 
  { (* 1804/1968 *)
  role_uuid = "96eb5ad0-6d90-bcb4-f138-bb8a35b508c1";
  role_name_label = "pusb.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_add_to_other_config = 
  { (* 1805/1968 *)
  role_uuid = "28ed6e9d-f6b2-94e7-ab73-7f9a09012f3a";
  role_name_label = "pusb.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_remove_from_other_config = 
  { (* 1806/1968 *)
  role_uuid = "e4981902-7853-1427-5d45-713e6dc56fa7";
  role_name_label = "pusb.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_scan = 
  { (* 1807/1968 *)
  role_uuid = "d630c59f-ef5d-7ce9-9abe-9c10a077784c";
  role_name_label = "pusb.scan";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_set_passthrough_enabled = 
  { (* 1808/1968 *)
  role_uuid = "8e3856ca-275f-7123-dc66-c91bf5522243";
  role_name_label = "pusb.set_passthrough_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_all = 
  { (* 1809/1968 *)
  role_uuid = "56bbaf10-8876-d329-aac2-a1139db52915";
  role_name_label = "pusb.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_all_records_where = 
  { (* 1810/1968 *)
  role_uuid = "e6d42319-2c28-0e2d-6faa-2ce26e238915";
  role_name_label = "pusb.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_PUSB_get_all_records = 
  { (* 1811/1968 *)
  role_uuid = "5a11f984-b774-3379-6a11-a56c0e61b995";
  role_name_label = "pusb.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_record = 
  { (* 1812/1968 *)
  role_uuid = "4f4e98eb-f6f0-95d8-eb8f-a61ffcb1085e";
  role_name_label = "usb_group.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_by_uuid = 
  { (* 1813/1968 *)
  role_uuid = "31b8a154-808c-f18c-966b-1273aa9a60ed";
  role_name_label = "usb_group.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_by_name_label = 
  { (* 1814/1968 *)
  role_uuid = "fbb0d67e-bd52-1cb7-15c4-3535653c3b31";
  role_name_label = "usb_group.get_by_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_uuid = 
  { (* 1815/1968 *)
  role_uuid = "940f4b04-27fd-05c4-7323-80f42aaaceb3";
  role_name_label = "usb_group.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_name_label = 
  { (* 1816/1968 *)
  role_uuid = "ddf126cd-4c96-9ace-2406-899fd234e11d";
  role_name_label = "usb_group.get_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_name_description = 
  { (* 1817/1968 *)
  role_uuid = "2e70f747-f253-d28a-9d81-671c138b9893";
  role_name_label = "usb_group.get_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_PUSBs = 
  { (* 1818/1968 *)
  role_uuid = "bcf7ee3e-c11f-6f54-ece7-e5d94b8a654e";
  role_name_label = "usb_group.get_pusbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_VUSBs = 
  { (* 1819/1968 *)
  role_uuid = "52c8b31e-894a-f56f-1281-1722fe99d6d1";
  role_name_label = "usb_group.get_vusbs";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_other_config = 
  { (* 1820/1968 *)
  role_uuid = "b80a9e23-aaf7-c60a-0d6c-7e405f4096ce";
  role_name_label = "usb_group.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_set_name_label = 
  { (* 1821/1968 *)
  role_uuid = "5ff234c0-d465-778d-033e-4b12afba8b5f";
  role_name_label = "usb_group.set_name_label";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_set_name_description = 
  { (* 1822/1968 *)
  role_uuid = "bc3131e3-9b0b-cadf-6374-48643914761d";
  role_name_label = "usb_group.set_name_description";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_set_other_config = 
  { (* 1823/1968 *)
  role_uuid = "c0dcf458-c27d-0614-871d-ce21abd171b1";
  role_name_label = "usb_group.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_add_to_other_config = 
  { (* 1824/1968 *)
  role_uuid = "61720654-178a-3313-e1e1-3924080daa1e";
  role_name_label = "usb_group.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_remove_from_other_config = 
  { (* 1825/1968 *)
  role_uuid = "dcecfa5e-bca0-507a-1c52-91480de98419";
  role_name_label = "usb_group.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_create = 
  { (* 1826/1968 *)
  role_uuid = "3ec1d82f-51a7-b9d8-0c2e-1620ad542b55";
  role_name_label = "usb_group.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_destroy = 
  { (* 1827/1968 *)
  role_uuid = "9c5cd46f-0f04-47dd-769c-c311f984d1a1";
  role_name_label = "usb_group.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_all = 
  { (* 1828/1968 *)
  role_uuid = "e04c2b4f-5e66-42df-9d58-f27fa6d8177f";
  role_name_label = "usb_group.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_all_records_where = 
  { (* 1829/1968 *)
  role_uuid = "7d3120da-e95f-14a3-5293-e5d5652fd178";
  role_name_label = "usb_group.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_USB_group_get_all_records = 
  { (* 1830/1968 *)
  role_uuid = "cadae41d-b820-4ef9-0075-49dc8abd4146";
  role_name_label = "usb_group.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_record = 
  { (* 1831/1968 *)
  role_uuid = "6cb77be5-82d2-624f-5e12-68b2d901d3bf";
  role_name_label = "vusb.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_by_uuid = 
  { (* 1832/1968 *)
  role_uuid = "a3bf2c57-900d-66f8-9f3a-198d7df69021";
  role_name_label = "vusb.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_uuid = 
  { (* 1833/1968 *)
  role_uuid = "89092b1c-ff8a-4307-0bf7-7e62a69b0e04";
  role_name_label = "vusb.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_allowed_operations = 
  { (* 1834/1968 *)
  role_uuid = "f611bb28-c7f4-637b-d85a-677e2e17a5ae";
  role_name_label = "vusb.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_current_operations = 
  { (* 1835/1968 *)
  role_uuid = "0eee209c-77fc-4f0c-8f48-0fd26af1bc56";
  role_name_label = "vusb.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_VM = 
  { (* 1836/1968 *)
  role_uuid = "0cf78f02-e672-b775-18e2-a617df086611";
  role_name_label = "vusb.get_vm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_USB_group = 
  { (* 1837/1968 *)
  role_uuid = "9d86f2f4-3a85-dfd1-6d36-af372391a238";
  role_name_label = "vusb.get_usb_group";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_other_config = 
  { (* 1838/1968 *)
  role_uuid = "e7ba7928-7891-7a97-aff5-4fbbb2dd503b";
  role_name_label = "vusb.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_currently_attached = 
  { (* 1839/1968 *)
  role_uuid = "ccddb1a4-b2dd-3911-f71f-37649ab91834";
  role_name_label = "vusb.get_currently_attached";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_set_other_config = 
  { (* 1840/1968 *)
  role_uuid = "15cf6d6b-914f-b55c-5098-0ebcf482425d";
  role_name_label = "vusb.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_add_to_other_config = 
  { (* 1841/1968 *)
  role_uuid = "86c1cb4f-a082-5641-4015-8c81e8c5637e";
  role_name_label = "vusb.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_remove_from_other_config = 
  { (* 1842/1968 *)
  role_uuid = "f2397749-4d46-1aa0-d5b0-3452c3319f5c";
  role_name_label = "vusb.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_create = 
  { (* 1843/1968 *)
  role_uuid = "44c02fc5-cc4d-451a-cdb0-c3987024601b";
  role_name_label = "vusb.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_unplug = 
  { (* 1844/1968 *)
  role_uuid = "17d4c65c-5608-33e7-5df3-d74b07024f42";
  role_name_label = "vusb.unplug";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_destroy = 
  { (* 1845/1968 *)
  role_uuid = "9aafed52-ade7-cdc1-6eb8-01192272fad1";
  role_name_label = "vusb.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_all = 
  { (* 1846/1968 *)
  role_uuid = "a2d28339-aeea-ec6f-27e2-27e2d7bfbef0";
  role_name_label = "vusb.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_all_records_where = 
  { (* 1847/1968 *)
  role_uuid = "02f919d1-1539-74d9-01e7-f49bfc915d0b";
  role_name_label = "vusb.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_VUSB_get_all_records = 
  { (* 1848/1968 *)
  role_uuid = "c07afa55-72fe-08b5-b024-4d058c794f9b";
  role_name_label = "vusb.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_record = 
  { (* 1849/1968 *)
  role_uuid = "226179f7-5983-4953-d25c-517ac723544c";
  role_name_label = "cluster.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_by_uuid = 
  { (* 1850/1968 *)
  role_uuid = "494c4494-ef31-3b53-c21f-322e02754203";
  role_name_label = "cluster.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_uuid = 
  { (* 1851/1968 *)
  role_uuid = "1b2fed54-abdc-bfce-2a82-c15baf94bc41";
  role_name_label = "cluster.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_cluster_hosts = 
  { (* 1852/1968 *)
  role_uuid = "452561df-6ad4-c9f7-399b-edd7c1583eca";
  role_name_label = "cluster.get_cluster_hosts";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_pending_forget = 
  { (* 1853/1968 *)
  role_uuid = "23197e6e-b690-7197-72c2-4b2941596b61";
  role_name_label = "cluster.get_pending_forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_cluster_token = 
  { (* 1854/1968 *)
  role_uuid = "2b99df8f-837a-9bf7-018c-8d7a52bb80ef";
  role_name_label = "cluster.get_cluster_token";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_cluster_stack = 
  { (* 1855/1968 *)
  role_uuid = "d0bca84d-870f-79bc-7fcc-b27ab385e63b";
  role_name_label = "cluster.get_cluster_stack";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_allowed_operations = 
  { (* 1856/1968 *)
  role_uuid = "6f19b20b-64ab-9a63-7bb6-41937a4c1086";
  role_name_label = "cluster.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_current_operations = 
  { (* 1857/1968 *)
  role_uuid = "44d23079-0b2e-f8b5-6490-ef1d30f3653d";
  role_name_label = "cluster.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_pool_auto_join = 
  { (* 1858/1968 *)
  role_uuid = "a373e280-c135-6a29-e2a8-8db417e00a99";
  role_name_label = "cluster.get_pool_auto_join";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_token_timeout = 
  { (* 1859/1968 *)
  role_uuid = "fbdeb638-f3a0-9813-2e48-e5b92a84405b";
  role_name_label = "cluster.get_token_timeout";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_token_timeout_coefficient = 
  { (* 1860/1968 *)
  role_uuid = "27a69c5c-1cad-cd23-2e31-eaa8ec2df059";
  role_name_label = "cluster.get_token_timeout_coefficient";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_cluster_config = 
  { (* 1861/1968 *)
  role_uuid = "c4e0851d-5a1b-00a9-c15c-569863b39fbb";
  role_name_label = "cluster.get_cluster_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_other_config = 
  { (* 1862/1968 *)
  role_uuid = "12535de8-07d8-460c-8076-a2462cb14bdc";
  role_name_label = "cluster.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_set_other_config = 
  { (* 1863/1968 *)
  role_uuid = "2e8c85d1-8bd6-737a-bd8f-acb7acef19d7";
  role_name_label = "cluster.set_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_add_to_other_config = 
  { (* 1864/1968 *)
  role_uuid = "6866842e-f1bb-7363-139d-f6838e3c72d7";
  role_name_label = "cluster.add_to_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_remove_from_other_config = 
  { (* 1865/1968 *)
  role_uuid = "6f37599c-95ae-9a3d-5123-44e0818d54d7";
  role_name_label = "cluster.remove_from_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_create = 
  { (* 1866/1968 *)
  role_uuid = "ad1c83d2-a46d-6f78-31cf-3c47e4bb3108";
  role_name_label = "cluster.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_destroy = 
  { (* 1867/1968 *)
  role_uuid = "5b5ce26c-b704-4c27-fa09-fcb94fde6b2b";
  role_name_label = "cluster.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_network = 
  { (* 1868/1968 *)
  role_uuid = "d60118bf-e1ab-82df-a997-079ff79d9d67";
  role_name_label = "cluster.get_network";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_pool_create = 
  { (* 1869/1968 *)
  role_uuid = "2b4db904-5683-6914-e076-20ec57a2a5ca";
  role_name_label = "cluster.pool_create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_pool_force_destroy = 
  { (* 1870/1968 *)
  role_uuid = "9a655fd0-5204-ab7f-fc19-886c546fe645";
  role_name_label = "cluster.pool_force_destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_pool_destroy = 
  { (* 1871/1968 *)
  role_uuid = "db9c2340-6fd0-7b77-1f5b-e3af390d0070";
  role_name_label = "cluster.pool_destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_pool_resync = 
  { (* 1872/1968 *)
  role_uuid = "ab213453-5593-0bc0-4ac3-0e2dca11070c";
  role_name_label = "cluster.pool_resync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_all = 
  { (* 1873/1968 *)
  role_uuid = "7abc3940-ecb9-5757-b570-b4fa7b4ae442";
  role_name_label = "cluster.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_all_records_where = 
  { (* 1874/1968 *)
  role_uuid = "02e2b0f1-2cff-edcf-d93a-364025371e26";
  role_name_label = "cluster.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_get_all_records = 
  { (* 1875/1968 *)
  role_uuid = "9c76f48d-fd4f-ac6a-9fa1-4b5880f8b2b3";
  role_name_label = "cluster.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_record = 
  { (* 1876/1968 *)
  role_uuid = "61c71009-4364-25c1-2543-595865662092";
  role_name_label = "cluster_host.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_by_uuid = 
  { (* 1877/1968 *)
  role_uuid = "8db76b13-94da-50f5-4993-2920803e50c6";
  role_name_label = "cluster_host.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_uuid = 
  { (* 1878/1968 *)
  role_uuid = "8f3f6d7e-0107-96d6-24d4-9d41457db5a5";
  role_name_label = "cluster_host.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_cluster = 
  { (* 1879/1968 *)
  role_uuid = "276ed51a-13b3-eab3-d983-e68bbc98ffcd";
  role_name_label = "cluster_host.get_cluster";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_host = 
  { (* 1880/1968 *)
  role_uuid = "6bf56e5a-6903-df13-5493-24f8e8bf95cb";
  role_name_label = "cluster_host.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_enabled = 
  { (* 1881/1968 *)
  role_uuid = "8e6cd26f-4700-da60-fc2c-9d9f0bfc9cee";
  role_name_label = "cluster_host.get_enabled";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_PIF = 
  { (* 1882/1968 *)
  role_uuid = "4c77e43a-2f8f-e417-8a66-c478c299aa82";
  role_name_label = "cluster_host.get_pif";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_joined = 
  { (* 1883/1968 *)
  role_uuid = "fe23db0c-3896-8be7-225a-4f3175a692c4";
  role_name_label = "cluster_host.get_joined";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_allowed_operations = 
  { (* 1884/1968 *)
  role_uuid = "b47799de-01ce-f49b-1817-2483be5e9375";
  role_name_label = "cluster_host.get_allowed_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_current_operations = 
  { (* 1885/1968 *)
  role_uuid = "69b8da66-f0e9-0747-6acf-06f62356a026";
  role_name_label = "cluster_host.get_current_operations";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_other_config = 
  { (* 1886/1968 *)
  role_uuid = "616a2c35-4739-990d-d08a-52d20e920b0f";
  role_name_label = "cluster_host.get_other_config";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_create = 
  { (* 1887/1968 *)
  role_uuid = "728cabed-a35d-a9ee-8cca-18174f238ae9";
  role_name_label = "cluster_host.create";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_destroy = 
  { (* 1888/1968 *)
  role_uuid = "79c9aefe-54d6-7fb9-522d-3e498aeb1fa8";
  role_name_label = "cluster_host.destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_enable = 
  { (* 1889/1968 *)
  role_uuid = "acef1cee-3e88-3473-4520-9e56b525f3ea";
  role_name_label = "cluster_host.enable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_force_destroy = 
  { (* 1890/1968 *)
  role_uuid = "3bf14c7a-aa5b-8c4e-6eab-f556c26ccec4";
  role_name_label = "cluster_host.force_destroy";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_forget = 
  { (* 1891/1968 *)
  role_uuid = "b78b1f8d-efab-7bc7-da11-2ee37c3b45e5";
  role_name_label = "cluster_host.forget";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_disable = 
  { (* 1892/1968 *)
  role_uuid = "a94ffe83-de79-9377-8671-f16ecd64d2b7";
  role_name_label = "cluster_host.disable";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_all = 
  { (* 1893/1968 *)
  role_uuid = "53cd779b-8044-2a00-7176-093375a12f3d";
  role_name_label = "cluster_host.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_all_records_where = 
  { (* 1894/1968 *)
  role_uuid = "d9f3fb08-5165-9fe8-b5e6-0c679cd4b202";
  role_name_label = "cluster_host.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Cluster_host_get_all_records = 
  { (* 1895/1968 *)
  role_uuid = "93fd6309-a59e-2c11-9630-a0caebd10268";
  role_name_label = "cluster_host.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_record = 
  { (* 1896/1968 *)
  role_uuid = "308406b4-f6ba-499f-a8ce-7b0529e174d3";
  role_name_label = "certificate.get_record";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_by_uuid = 
  { (* 1897/1968 *)
  role_uuid = "3cdd72bc-5f45-a226-d01e-42c390607a42";
  role_name_label = "certificate.get_by_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_uuid = 
  { (* 1898/1968 *)
  role_uuid = "b483168e-89d3-6d7a-fc15-d001d42e39bf";
  role_name_label = "certificate.get_uuid";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_host = 
  { (* 1899/1968 *)
  role_uuid = "1dbb2661-5af1-e284-849b-026e75050bae";
  role_name_label = "certificate.get_host";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_not_before = 
  { (* 1900/1968 *)
  role_uuid = "0134d3cb-831e-0b85-c51f-f0d03828f175";
  role_name_label = "certificate.get_not_before";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_not_after = 
  { (* 1901/1968 *)
  role_uuid = "65f553fe-357a-5313-b67f-134a10b280b1";
  role_name_label = "certificate.get_not_after";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_fingerprint = 
  { (* 1902/1968 *)
  role_uuid = "b57bd08d-d853-9efe-f2c3-304823c9b775";
  role_name_label = "certificate.get_fingerprint";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_all = 
  { (* 1903/1968 *)
  role_uuid = "ffb4bbb8-63c8-ff1c-ad35-5cdb389d97ae";
  role_name_label = "certificate.get_all";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_all_records_where = 
  { (* 1904/1968 *)
  role_uuid = "bbc81d0a-ad5c-b457-c847-92351b005453";
  role_name_label = "certificate.get_all_records_where";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Certificate_get_all_records = 
  { (* 1905/1968 *)
  role_uuid = "f254779e-5ad5-a6f2-6ef9-cf9826899347";
  role_name_label = "certificate.get_all_records";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Diagnostics_gc_compact = 
  { (* 1906/1968 *)
  role_uuid = "cc11c395-2e0e-656c-c57e-d41af49999fd";
  role_name_label = "diagnostics.gc_compact";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Diagnostics_gc_stats = 
  { (* 1907/1968 *)
  role_uuid = "0b05ad0c-55db-f9fc-19c2-c35670958bf1";
  role_name_label = "diagnostics.gc_stats";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Diagnostics_db_stats = 
  { (* 1908/1968 *)
  role_uuid = "585e7107-4424-3529-5d94-a8206b750d87";
  role_name_label = "diagnostics.db_stats";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_Diagnostics_network_stats = 
  { (* 1909/1968 *)
  role_uuid = "7bd54fda-380a-5790-8012-a76ce9331e69";
  role_name_label = "diagnostics.network_stats";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_services = 
  { (* 1910/1968 *)
  role_uuid = "5e022752-8add-d1bf-4ac1-9c859fd9103e";
  role_name_label = "http/get_services";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_services = 
  { (* 1911/1968 *)
  role_uuid = "1a7f9365-cd5c-541d-183a-84c0776fe5cc";
  role_name_label = "http/post_services";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_services = 
  { (* 1912/1968 *)
  role_uuid = "6211b6be-10d3-7179-3ce9-c9939bcfef7e";
  role_name_label = "http/put_services";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_remote_db_access = 
  { (* 1913/1968 *)
  role_uuid = "0f89fff1-7a05-fcb3-2fec-f01f527d9f33";
  role_name_label = "http/post_remote_db_access";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_remote_db_access_v2 = 
  { (* 1914/1968 *)
  role_uuid = "92720e47-6810-ac5c-2c7c-ecee66919943";
  role_name_label = "http/post_remote_db_access_v2";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_migrate = 
  { (* 1915/1968 *)
  role_uuid = "a9c6394a-92dc-b5f3-e377-438eda6cc36f";
  role_name_label = "http/connect_migrate";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_services_xenops = 
  { (* 1916/1968 *)
  role_uuid = "ca3fd393-55a0-9270-af2f-9a597674113d";
  role_name_label = "http/get_services_xenops";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_services_xenops = 
  { (* 1917/1968 *)
  role_uuid = "9e19021f-426d-0492-91a2-d2bcee7eb6ee";
  role_name_label = "http/post_services_xenops";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_services_xenops = 
  { (* 1918/1968 *)
  role_uuid = "1c2b0fce-97b0-af45-8117-3f8a18bf11c1";
  role_name_label = "http/put_services_xenops";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_services_sm = 
  { (* 1919/1968 *)
  role_uuid = "69669133-f49c-5eed-22c0-654a80cc085c";
  role_name_label = "http/get_services_sm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_services_sm = 
  { (* 1920/1968 *)
  role_uuid = "e800a707-f7c2-c185-80f1-3c298a352591";
  role_name_label = "http/post_services_sm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_services_sm = 
  { (* 1921/1968 *)
  role_uuid = "ac2c2a4c-d87a-c905-b8d4-52dfac47e848";
  role_name_label = "http/put_services_sm";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_import = 
  { (* 1922/1968 *)
  role_uuid = "cc20c134-daa5-044c-3982-93ad5b30ae16";
  role_name_label = "http/put_import";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_import_metadata = 
  { (* 1923/1968 *)
  role_uuid = "56e4df7c-d3b3-7f0c-5c06-67b936e5c967";
  role_name_label = "http/put_import_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_import_raw_vdi = 
  { (* 1924/1968 *)
  role_uuid = "bfa4946b-f2ad-9e5f-d17d-0d129a9e9afe";
  role_name_label = "http/put_import_raw_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_export = 
  { (* 1925/1968 *)
  role_uuid = "9dcf063e-c70f-4076-bc7a-6436a11bf93e";
  role_name_label = "http/get_export";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_export_metadata = 
  { (* 1926/1968 *)
  role_uuid = "f103f866-344b-fc35-82a2-1d8bd72efa19";
  role_name_label = "http/get_export_metadata";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_export_raw_vdi = 
  { (* 1927/1968 *)
  role_uuid = "8dbed2d4-f59e-4eda-25f5-49475952e89c";
  role_name_label = "http/get_export_raw_vdi";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_console = 
  { (* 1928/1968 *)
  role_uuid = "37eccaa8-7371-5762-181b-9221a1f3cdbe";
  role_name_label = "http/connect_console";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_console_host_console = 
  { (* 1929/1968 *)
  role_uuid = "ab350a94-3042-f6fe-fcdc-d75b304753a4";
  role_name_label = "http/connect_console/host_console";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_console_ws = 
  { (* 1930/1968 *)
  role_uuid = "b5337a5f-8bd6-7c38-19fa-78b2dfe69869";
  role_name_label = "http/connect_console_ws";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_console_ws_host_console_ws = 
  { (* 1931/1968 *)
  role_uuid = "ebfb160d-b269-e2cd-e530-e1422739fdd4";
  role_name_label = "http/connect_console_ws/host_console_ws";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_root = 
  { (* 1932/1968 *)
  role_uuid = "c75bb9b3-7413-aa27-4188-ba2a88e56822";
  role_name_label = "http/get_root";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_cli = 
  { (* 1933/1968 *)
  role_uuid = "42163f5b-56b3-9e8e-ee1c-568efc8f5585";
  role_name_label = "http/post_cli";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_host_backup = 
  { (* 1934/1968 *)
  role_uuid = "7c8150f2-a9a6-88c0-ea1e-7093481218b6";
  role_name_label = "http/get_host_backup";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_host_restore = 
  { (* 1935/1968 *)
  role_uuid = "9c8ae951-d516-eec8-d7ea-fd503c5fb112";
  role_name_label = "http/put_host_restore";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_host_logs_download = 
  { (* 1936/1968 *)
  role_uuid = "a7e7ccf5-d7a3-c58b-15ac-dd6ac8da3241";
  role_name_label = "http/get_host_logs_download";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_pool_patch_upload = 
  { (* 1937/1968 *)
  role_uuid = "6d88370b-3862-5c0d-2be0-558320f32846";
  role_name_label = "http/put_pool_patch_upload";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_pool_patch_download = 
  { (* 1938/1968 *)
  role_uuid = "69031664-571b-6054-c87d-77f5766e28cd";
  role_name_label = "http/get_pool_patch_download";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_oem_patch_stream = 
  { (* 1939/1968 *)
  role_uuid = "6957a0cf-3546-c299-ad05-c7c67b94f095";
  role_name_label = "http/put_oem_patch_stream";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_vncsnapshot = 
  { (* 1940/1968 *)
  role_uuid = "78482840-d3ca-b1b0-0c45-53a75b7824f9";
  role_name_label = "http/get_vncsnapshot";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_vncsnapshot_host_console = 
  { (* 1941/1968 *)
  role_uuid = "136dc56c-fb71-d27a-6436-6c7a37831d3b";
  role_name_label = "http/get_vncsnapshot/host_console";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_pool_xml_db_sync = 
  { (* 1942/1968 *)
  role_uuid = "b7dcdbcf-3a6d-6b68-17b0-0a52a558f759";
  role_name_label = "http/get_pool_xml_db_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_pool_xml_db_sync = 
  { (* 1943/1968 *)
  role_uuid = "a77f9ed8-e7f7-95ba-6c12-c799c76ade5d";
  role_name_label = "http/put_pool_xml_db_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_config_sync = 
  { (* 1944/1968 *)
  role_uuid = "c99ef94c-ad6c-4d0a-b60f-eadd036ad879";
  role_name_label = "http/get_config_sync";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_vm_connect = 
  { (* 1945/1968 *)
  role_uuid = "7f6c525f-a121-4708-5f9b-b6ef7ee97ecb";
  role_name_label = "http/get_vm_connect";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_vm_connect = 
  { (* 1946/1968 *)
  role_uuid = "4f5440f8-84e3-e8a0-de81-efd0ef34d53b";
  role_name_label = "http/put_vm_connect";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_system_status = 
  { (* 1947/1968 *)
  role_uuid = "9e2f661c-9cf2-0983-3c14-7c2e4de9eb5c";
  role_name_label = "http/get_system_status";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_vm_rrd = 
  { (* 1948/1968 *)
  role_uuid = "05cf5f8c-0219-db92-26a1-29047a37c972";
  role_name_label = "http/vm_rrd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_host_rrd = 
  { (* 1949/1968 *)
  role_uuid = "4fc1bf13-e0be-d634-8559-8b19c590afba";
  role_name_label = "http/host_rrd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_sr_rrd = 
  { (* 1950/1968 *)
  role_uuid = "d55bd664-3d68-5a59-d13c-9c0b6a0a2cfe";
  role_name_label = "http/sr_rrd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_rrd_updates = 
  { (* 1951/1968 *)
  role_uuid = "618815a8-ec46-44b9-06f4-0d53ecfb1fbd";
  role_name_label = "http/rrd_updates";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_rrd = 
  { (* 1952/1968 *)
  role_uuid = "6ab3a927-cd0b-5cea-885f-1191a21ccebf";
  role_name_label = "http/rrd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_blob = 
  { (* 1953/1968 *)
  role_uuid = "32b9bc96-01b8-dd88-a59d-3294434bcf10";
  role_name_label = "http/get_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_blob = 
  { (* 1954/1968 *)
  role_uuid = "a8ffab48-a8e1-853b-f61a-0d9324076916";
  role_name_label = "http/put_blob";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_message_rss_feed = 
  { (* 1955/1968 *)
  role_uuid = "63cea2bb-cb2a-19ba-fed2-35e55e2088ea";
  role_name_label = "http/get_message_rss_feed";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_put_messages = 
  { (* 1956/1968 *)
  role_uuid = "1c05c0f1-dfa7-f44a-7c7e-40bf1149e207";
  role_name_label = "http/put_messages";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_connect_remotecmd = 
  { (* 1957/1968 *)
  role_uuid = "b4ccebf0-cc8c-75f1-04b5-6df76d8fa138";
  role_name_label = "http/connect_remotecmd";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_wlb_report = 
  { (* 1958/1968 *)
  role_uuid = "a7d2f695-623b-686f-25e5-e470bd6373e1";
  role_name_label = "http/get_wlb_report";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_wlb_diagnostics = 
  { (* 1959/1968 *)
  role_uuid = "4322c6ea-1807-3e88-4104-269a8510c62d";
  role_name_label = "http/get_wlb_diagnostics";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_audit_log = 
  { (* 1960/1968 *)
  role_uuid = "1bc6bbf9-cce0-9ad0-b1f0-51a2a1d0c004";
  role_name_label = "http/get_audit_log";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_root = 
  { (* 1961/1968 *)
  role_uuid = "a5fa3bd5-7e70-c0e7-73c7-a774b52ff12c";
  role_name_label = "http/post_root";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_json = 
  { (* 1962/1968 *)
  role_uuid = "78f71ff6-7c64-3281-44b9-025cf751e185";
  role_name_label = "http/post_json";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_root_options = 
  { (* 1963/1968 *)
  role_uuid = "44847e22-2d67-3744-0698-506f6a8243e9";
  role_name_label = "http/post_root_options";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_json_options = 
  { (* 1964/1968 *)
  role_uuid = "7e5e9fde-3ee4-7cf1-4756-915f745b4914";
  role_name_label = "http/post_json_options";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_jsonrpc = 
  { (* 1965/1968 *)
  role_uuid = "8658083c-40e7-4922-9a7b-9aeacb042bc1";
  role_name_label = "http/post_jsonrpc";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_post_jsonrpc_options = 
  { (* 1966/1968 *)
  role_uuid = "5c043c60-c3a0-97c5-a005-824fb82c50f3";
  role_name_label = "http/post_jsonrpc_options";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_http_get_pool_update_download = 
  { (* 1967/1968 *)
  role_uuid = "11a79fac-d8d1-2dae-4639-3d556ce5558b";
  role_name_label = "http/get_pool_update_download";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
let permission_task_destroy_any = 
  { (* 1968/1968 *)
  role_uuid = "f7367c8b-fa04-520e-e0cd-3c3e1aef8bc3";
  role_name_label = "task.destroy/any";
  role_name_description = permission_description;
  role_subroles = []; (* permission cannot have any subroles *)
  }
(* 1398 elements in permissions_of_role_vm_power_admin *)
let permissions_of_role_vm_power_admin = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_login_with_password; permission_session_logout; permission_session_get_all_subject_identifiers; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_add_to_other_config_key_applies_to; permission_task_add_to_other_config_key_XenCenterUUID; permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle; permission_task_remove_from_other_config_key_applies_to; permission_task_remove_from_other_config_key_XenCenterUUID; permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_add_to_other_config_key_folder; permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_add_to_other_config_key_EMPTY_FOLDERS; permission_pool_remove_from_other_config_key_folder; permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_remove_from_other_config_key_EMPTY_FOLDERS; permission_pool_set_tags; permission_pool_add_tags; permission_pool_remove_tags; permission_pool_set_gui_config; permission_pool_add_to_gui_config; permission_pool_remove_from_gui_config; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_get_license_state; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_create; permission_VM_destroy; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_set_name_label; permission_VM_set_name_description; permission_VM_set_user_version; permission_VM_set_is_a_template; permission_VM_set_affinity; permission_VM_set_VCPUs_params; permission_VM_add_to_VCPUs_params; permission_VM_remove_from_VCPUs_params; permission_VM_set_actions_after_shutdown; permission_VM_set_actions_after_reboot; permission_VM_set_PV_bootloader; permission_VM_set_PV_kernel; permission_VM_set_PV_ramdisk; permission_VM_set_PV_args; permission_VM_set_PV_bootloader_args; permission_VM_set_PV_legacy_args; permission_VM_set_HVM_boot_params; permission_VM_add_to_HVM_boot_params; permission_VM_remove_from_HVM_boot_params; permission_VM_set_platform; permission_VM_add_to_platform; permission_VM_remove_from_platform; permission_VM_set_PCI_bus; permission_VM_set_other_config; permission_VM_add_to_other_config; permission_VM_add_to_other_config_key_folder; permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_remove_from_other_config; permission_VM_remove_from_other_config_key_folder; permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_set_recommendations; permission_VM_set_xenstore_data; permission_VM_add_to_xenstore_data; permission_VM_remove_from_xenstore_data; permission_VM_set_tags; permission_VM_add_tags; permission_VM_remove_tags; permission_VM_set_blocked_operations; permission_VM_add_to_blocked_operations; permission_VM_remove_from_blocked_operations; permission_VM_set_suspend_SR; permission_VM_set_hardware_platform_version; permission_VM_snapshot; permission_VM_snapshot_with_quiesce; permission_VM_clone; permission_VM_copy; permission_VM_revert; permission_VM_checkpoint; permission_VM_provision; permission_VM_start; permission_VM_start_on; permission_VM_pause; permission_VM_unpause; permission_VM_clean_shutdown; permission_VM_shutdown; permission_VM_clean_reboot; permission_VM_hard_shutdown; permission_VM_hard_reboot; permission_VM_suspend; permission_VM_csvm; permission_VM_resume; permission_VM_resume_on; permission_VM_pool_migrate; permission_VM_pool_migrate_complete; permission_VM_set_VCPUs_number_live; permission_VM_add_to_VCPUs_params_live; permission_VM_set_NVRAM; permission_VM_add_to_NVRAM; permission_VM_remove_from_NVRAM; permission_VM_compute_memory_overhead; permission_VM_set_memory_dynamic_max; permission_VM_set_memory_dynamic_min; permission_VM_set_memory_dynamic_range; permission_VM_set_memory_static_max; permission_VM_set_memory_static_min; permission_VM_set_memory_static_range; permission_VM_set_memory_limits; permission_VM_set_memory; permission_VM_set_memory_target_live; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_set_HVM_shadow_multiplier; permission_VM_set_shadow_multiplier_live; permission_VM_set_VCPUs_max; permission_VM_set_VCPUs_at_startup; permission_VM_maximise_memory; permission_VM_migrate_send; permission_VM_assert_can_migrate; permission_VM_assert_can_migrate_sender; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_record_data_source; permission_VM_query_data_source; permission_VM_forget_data_source_archives; permission_VM_assert_operation_valid; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_create_new_blob; permission_VM_s3_suspend; permission_VM_s3_resume; permission_VM_assert_agile; permission_VM_retrieve_wlb_recommendations; permission_VM_set_bios_strings; permission_VM_copy_bios_strings; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_import_convert; permission_VM_call_plugin; permission_VM_set_has_vendor_device; permission_VM_set_actions_after_crash; permission_VM_set_domain_type; permission_VM_set_HVM_boot_policy; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_set_other_config; permission_VM_metrics_add_to_other_config; permission_VM_metrics_remove_from_other_config; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_set_other_config; permission_VM_guest_metrics_add_to_other_config; permission_VM_guest_metrics_remove_from_other_config; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_archive_now; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_add_to_other_config_key_folder; permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_remove_from_other_config_key_folder; permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_set_tags; permission_host_add_tags; permission_host_remove_tags; permission_host_get_log; permission_host_list_methods; permission_host_get_data_sources; permission_host_query_data_source; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_migrate_receive; permission_host_mxgpu_vf_setup; permission_host_nvidia_vf_setup; permission_host_allocate_resources_for_vm; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_create; permission_network_destroy; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_set_MTU; permission_network_add_to_other_config_key_folder; permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_add_to_other_config_key_XenCenterCreateInProgress; permission_network_remove_from_other_config_key_folder; permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_remove_from_other_config_key_XenCenterCreateInProgress; permission_network_set_tags; permission_network_add_tags; permission_network_remove_tags; permission_network_attach_for_vm; permission_network_detach_for_vm; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_create; permission_VIF_destroy; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_set_other_config; permission_VIF_add_to_other_config; permission_VIF_remove_from_other_config; permission_VIF_set_qos_algorithm_type; permission_VIF_set_qos_algorithm_params; permission_VIF_add_to_qos_algorithm_params; permission_VIF_remove_from_qos_algorithm_params; permission_VIF_plug; permission_VIF_unplug; permission_VIF_unplug_force; permission_VIF_move; permission_VIF_configure_ipv4; permission_VIF_configure_ipv6; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_set_other_config; permission_VIF_metrics_add_to_other_config; permission_VIF_metrics_remove_from_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_add_to_other_config_key_folder; permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_remove_from_other_config_key_folder; permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_set_tags; permission_SR_add_tags; permission_SR_remove_tags; permission_SR_get_supported_types; permission_SR_scan; permission_SR_get_data_sources; permission_SR_query_data_source; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_create; permission_VDI_destroy; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_set_other_config; permission_VDI_add_to_other_config; permission_VDI_add_to_other_config_key_folder; permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_remove_from_other_config; permission_VDI_remove_from_other_config_key_folder; permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_set_xenstore_data; permission_VDI_add_to_xenstore_data; permission_VDI_remove_from_xenstore_data; permission_VDI_set_sm_config; permission_VDI_add_to_sm_config; permission_VDI_remove_from_sm_config; permission_VDI_set_tags; permission_VDI_add_tags; permission_VDI_remove_tags; permission_VDI_snapshot; permission_VDI_clone; permission_VDI_resize; permission_VDI_resize_online; permission_VDI_introduce; permission_VDI_pool_introduce; permission_VDI_update; permission_VDI_copy; permission_VDI_force_unlock; permission_VDI_forget; permission_VDI_set_sharable; permission_VDI_set_read_only; permission_VDI_set_name_label; permission_VDI_set_name_description; permission_VDI_generate_config; permission_VDI_set_on_boot; permission_VDI_set_allow_caching; permission_VDI_checksum; permission_VDI_read_database_pool_uuid; permission_VDI_pool_migrate; permission_VDI_enable_cbt; permission_VDI_disable_cbt; permission_VDI_data_destroy; permission_VDI_list_changed_blocks; permission_VDI_get_nbd_info; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_create; permission_VBD_destroy; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_set_userdevice; permission_VBD_set_bootable; permission_VBD_set_type; permission_VBD_set_unpluggable; permission_VBD_set_other_config; permission_VBD_add_to_other_config; permission_VBD_remove_from_other_config; permission_VBD_set_qos_algorithm_type; permission_VBD_set_qos_algorithm_params; permission_VBD_add_to_qos_algorithm_params; permission_VBD_remove_from_qos_algorithm_params; permission_VBD_eject; permission_VBD_insert; permission_VBD_plug; permission_VBD_unplug; permission_VBD_unplug_force; permission_VBD_unplug_force_no_safety_check; permission_VBD_assert_attachable; permission_VBD_pause; permission_VBD_unpause; permission_VBD_set_mode; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_set_other_config; permission_VBD_metrics_add_to_other_config; permission_VBD_metrics_remove_from_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_create; permission_VTPM_destroy; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_create; permission_console_destroy; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_set_other_config; permission_console_add_to_other_config; permission_console_remove_from_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_other_config; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_get_remaining_capacity; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_get_network; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_http_get_services; permission_http_connect_migrate; permission_http_get_services_xenops; permission_http_post_services_xenops; permission_http_put_services_xenops; permission_http_get_services_sm; permission_http_post_services_sm; permission_http_put_services_sm; permission_http_put_import; permission_http_put_import_metadata; permission_http_put_import_raw_vdi; permission_http_get_export; permission_http_get_export_metadata; permission_http_get_export_raw_vdi; permission_http_connect_console; permission_http_connect_console_ws; permission_http_get_root; permission_http_post_cli; permission_http_get_vncsnapshot; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_get_blob; permission_http_put_blob; permission_http_put_messages; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; ]

(* 1359 elements in permissions_of_role_vm_admin *)
let permissions_of_role_vm_admin = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_login_with_password; permission_session_logout; permission_session_get_all_subject_identifiers; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_add_to_other_config_key_applies_to; permission_task_add_to_other_config_key_XenCenterUUID; permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle; permission_task_remove_from_other_config_key_applies_to; permission_task_remove_from_other_config_key_XenCenterUUID; permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_add_to_other_config_key_folder; permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_add_to_other_config_key_EMPTY_FOLDERS; permission_pool_remove_from_other_config_key_folder; permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_remove_from_other_config_key_EMPTY_FOLDERS; permission_pool_set_tags; permission_pool_add_tags; permission_pool_remove_tags; permission_pool_set_gui_config; permission_pool_add_to_gui_config; permission_pool_remove_from_gui_config; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_get_license_state; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_create; permission_VM_destroy; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_set_name_label; permission_VM_set_name_description; permission_VM_set_user_version; permission_VM_set_is_a_template; permission_VM_set_VCPUs_params; permission_VM_add_to_VCPUs_params; permission_VM_remove_from_VCPUs_params; permission_VM_set_actions_after_shutdown; permission_VM_set_actions_after_reboot; permission_VM_set_PV_bootloader; permission_VM_set_PV_kernel; permission_VM_set_PV_ramdisk; permission_VM_set_PV_args; permission_VM_set_PV_bootloader_args; permission_VM_set_PV_legacy_args; permission_VM_set_HVM_boot_params; permission_VM_add_to_HVM_boot_params; permission_VM_remove_from_HVM_boot_params; permission_VM_set_platform; permission_VM_add_to_platform; permission_VM_remove_from_platform; permission_VM_set_PCI_bus; permission_VM_set_other_config; permission_VM_add_to_other_config; permission_VM_add_to_other_config_key_folder; permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_remove_from_other_config; permission_VM_remove_from_other_config_key_folder; permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_set_recommendations; permission_VM_set_xenstore_data; permission_VM_add_to_xenstore_data; permission_VM_remove_from_xenstore_data; permission_VM_set_tags; permission_VM_add_tags; permission_VM_remove_tags; permission_VM_set_blocked_operations; permission_VM_add_to_blocked_operations; permission_VM_remove_from_blocked_operations; permission_VM_set_suspend_SR; permission_VM_set_hardware_platform_version; permission_VM_clone; permission_VM_copy; permission_VM_provision; permission_VM_start; permission_VM_pause; permission_VM_unpause; permission_VM_clean_shutdown; permission_VM_shutdown; permission_VM_clean_reboot; permission_VM_hard_shutdown; permission_VM_hard_reboot; permission_VM_suspend; permission_VM_csvm; permission_VM_resume; permission_VM_set_VCPUs_number_live; permission_VM_add_to_VCPUs_params_live; permission_VM_set_NVRAM; permission_VM_add_to_NVRAM; permission_VM_remove_from_NVRAM; permission_VM_compute_memory_overhead; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_set_VCPUs_max; permission_VM_set_VCPUs_at_startup; permission_VM_maximise_memory; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_record_data_source; permission_VM_query_data_source; permission_VM_forget_data_source_archives; permission_VM_assert_operation_valid; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_s3_suspend; permission_VM_s3_resume; permission_VM_assert_agile; permission_VM_retrieve_wlb_recommendations; permission_VM_set_bios_strings; permission_VM_copy_bios_strings; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_import_convert; permission_VM_call_plugin; permission_VM_set_has_vendor_device; permission_VM_set_actions_after_crash; permission_VM_set_domain_type; permission_VM_set_HVM_boot_policy; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_set_other_config; permission_VM_metrics_add_to_other_config; permission_VM_metrics_remove_from_other_config; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_set_other_config; permission_VM_guest_metrics_add_to_other_config; permission_VM_guest_metrics_remove_from_other_config; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_add_to_other_config_key_folder; permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_remove_from_other_config_key_folder; permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_set_tags; permission_host_add_tags; permission_host_remove_tags; permission_host_get_log; permission_host_list_methods; permission_host_get_data_sources; permission_host_query_data_source; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_mxgpu_vf_setup; permission_host_nvidia_vf_setup; permission_host_allocate_resources_for_vm; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_create; permission_network_destroy; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_set_MTU; permission_network_add_to_other_config_key_folder; permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_add_to_other_config_key_XenCenterCreateInProgress; permission_network_remove_from_other_config_key_folder; permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_remove_from_other_config_key_XenCenterCreateInProgress; permission_network_set_tags; permission_network_add_tags; permission_network_remove_tags; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_create; permission_VIF_destroy; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_set_other_config; permission_VIF_add_to_other_config; permission_VIF_remove_from_other_config; permission_VIF_set_qos_algorithm_type; permission_VIF_set_qos_algorithm_params; permission_VIF_add_to_qos_algorithm_params; permission_VIF_remove_from_qos_algorithm_params; permission_VIF_plug; permission_VIF_unplug; permission_VIF_unplug_force; permission_VIF_move; permission_VIF_configure_ipv4; permission_VIF_configure_ipv6; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_set_other_config; permission_VIF_metrics_add_to_other_config; permission_VIF_metrics_remove_from_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_add_to_other_config_key_folder; permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_remove_from_other_config_key_folder; permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_set_tags; permission_SR_add_tags; permission_SR_remove_tags; permission_SR_get_supported_types; permission_SR_get_data_sources; permission_SR_query_data_source; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_create; permission_VDI_destroy; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_set_other_config; permission_VDI_add_to_other_config; permission_VDI_add_to_other_config_key_folder; permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_remove_from_other_config; permission_VDI_remove_from_other_config_key_folder; permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_set_xenstore_data; permission_VDI_add_to_xenstore_data; permission_VDI_remove_from_xenstore_data; permission_VDI_set_sm_config; permission_VDI_add_to_sm_config; permission_VDI_remove_from_sm_config; permission_VDI_set_tags; permission_VDI_add_tags; permission_VDI_remove_tags; permission_VDI_snapshot; permission_VDI_clone; permission_VDI_resize; permission_VDI_resize_online; permission_VDI_introduce; permission_VDI_pool_introduce; permission_VDI_update; permission_VDI_copy; permission_VDI_force_unlock; permission_VDI_forget; permission_VDI_set_sharable; permission_VDI_set_read_only; permission_VDI_set_name_label; permission_VDI_set_name_description; permission_VDI_generate_config; permission_VDI_set_on_boot; permission_VDI_set_allow_caching; permission_VDI_checksum; permission_VDI_read_database_pool_uuid; permission_VDI_enable_cbt; permission_VDI_disable_cbt; permission_VDI_data_destroy; permission_VDI_list_changed_blocks; permission_VDI_get_nbd_info; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_create; permission_VBD_destroy; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_set_userdevice; permission_VBD_set_bootable; permission_VBD_set_type; permission_VBD_set_unpluggable; permission_VBD_set_other_config; permission_VBD_add_to_other_config; permission_VBD_remove_from_other_config; permission_VBD_set_qos_algorithm_type; permission_VBD_set_qos_algorithm_params; permission_VBD_add_to_qos_algorithm_params; permission_VBD_remove_from_qos_algorithm_params; permission_VBD_eject; permission_VBD_insert; permission_VBD_plug; permission_VBD_unplug; permission_VBD_unplug_force; permission_VBD_unplug_force_no_safety_check; permission_VBD_assert_attachable; permission_VBD_pause; permission_VBD_unpause; permission_VBD_set_mode; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_set_other_config; permission_VBD_metrics_add_to_other_config; permission_VBD_metrics_remove_from_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_create; permission_VTPM_destroy; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_create; permission_console_destroy; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_set_other_config; permission_console_add_to_other_config; permission_console_remove_from_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_other_config; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_get_remaining_capacity; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_get_network; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_http_get_services; permission_http_put_import; permission_http_put_import_metadata; permission_http_put_import_raw_vdi; permission_http_get_export; permission_http_get_export_metadata; permission_http_get_export_raw_vdi; permission_http_connect_console; permission_http_connect_console_ws; permission_http_get_root; permission_http_post_cli; permission_http_get_vncsnapshot; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_get_blob; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; ]

(* 1208 elements in permissions_of_role_vm_operator *)
let permissions_of_role_vm_operator = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_login_with_password; permission_session_logout; permission_session_get_all_subject_identifiers; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_add_to_other_config_key_applies_to; permission_task_add_to_other_config_key_XenCenterUUID; permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle; permission_task_remove_from_other_config_key_applies_to; permission_task_remove_from_other_config_key_XenCenterUUID; permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_add_to_other_config_key_folder; permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_add_to_other_config_key_EMPTY_FOLDERS; permission_pool_remove_from_other_config_key_folder; permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_remove_from_other_config_key_EMPTY_FOLDERS; permission_pool_set_tags; permission_pool_add_tags; permission_pool_remove_tags; permission_pool_set_gui_config; permission_pool_add_to_gui_config; permission_pool_remove_from_gui_config; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_get_license_state; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_add_to_other_config_key_folder; permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_remove_from_other_config_key_folder; permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_set_tags; permission_VM_add_tags; permission_VM_remove_tags; permission_VM_start; permission_VM_pause; permission_VM_unpause; permission_VM_clean_shutdown; permission_VM_shutdown; permission_VM_clean_reboot; permission_VM_hard_shutdown; permission_VM_hard_reboot; permission_VM_suspend; permission_VM_resume; permission_VM_compute_memory_overhead; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_maximise_memory; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_query_data_source; permission_VM_assert_operation_valid; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_s3_suspend; permission_VM_s3_resume; permission_VM_assert_agile; permission_VM_retrieve_wlb_recommendations; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_call_plugin; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_add_to_other_config_key_folder; permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_remove_from_other_config_key_folder; permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_set_tags; permission_host_add_tags; permission_host_remove_tags; permission_host_get_log; permission_host_list_methods; permission_host_get_data_sources; permission_host_query_data_source; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_mxgpu_vf_setup; permission_host_nvidia_vf_setup; permission_host_allocate_resources_for_vm; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_add_to_other_config_key_folder; permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_add_to_other_config_key_XenCenterCreateInProgress; permission_network_remove_from_other_config_key_folder; permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_remove_from_other_config_key_XenCenterCreateInProgress; permission_network_set_tags; permission_network_add_tags; permission_network_remove_tags; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_configure_ipv4; permission_VIF_configure_ipv6; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_add_to_other_config_key_folder; permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_remove_from_other_config_key_folder; permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_set_tags; permission_SR_add_tags; permission_SR_remove_tags; permission_SR_get_supported_types; permission_SR_get_data_sources; permission_SR_query_data_source; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_add_to_other_config_key_folder; permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_remove_from_other_config_key_folder; permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_set_tags; permission_VDI_add_tags; permission_VDI_remove_tags; permission_VDI_read_database_pool_uuid; permission_VDI_list_changed_blocks; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_eject; permission_VBD_insert; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_other_config; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_get_remaining_capacity; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_get_network; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_http_get_services; permission_http_connect_console; permission_http_connect_console_ws; permission_http_get_root; permission_http_post_cli; permission_http_get_vncsnapshot; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_get_blob; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; ]

(* 1129 elements in permissions_of_role_read_only *)
let permissions_of_role_read_only = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_login_with_password; permission_session_logout; permission_session_get_all_subject_identifiers; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_get_license_state; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_compute_memory_overhead; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_maximise_memory; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_query_data_source; permission_VM_assert_operation_valid; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_assert_agile; permission_VM_retrieve_wlb_recommendations; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_get_log; permission_host_list_methods; permission_host_get_data_sources; permission_host_query_data_source; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_get_supported_types; permission_SR_get_data_sources; permission_SR_query_data_source; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_read_database_pool_uuid; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_other_config; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_get_remaining_capacity; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_get_network; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_http_get_services; permission_http_get_root; permission_http_post_cli; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_get_blob; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; ]

(* 1901 elements in permissions_of_role_pool_admin *)
let permissions_of_role_pool_admin = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_set_other_config; permission_session_add_to_other_config; permission_session_remove_from_other_config; permission_session_login_with_password; permission_session_logout; permission_session_slave_login; permission_session_slave_local_login; permission_session_slave_local_login_with_password; permission_session_local_logout; permission_session_get_all_subject_identifiers; permission_session_logout_subject_identifier; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_create; permission_subject_destroy; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_add_to_roles; permission_subject_remove_from_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_set_other_config; permission_task_add_to_other_config; permission_task_add_to_other_config_key_applies_to; permission_task_add_to_other_config_key_XenCenterUUID; permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle; permission_task_remove_from_other_config; permission_task_remove_from_other_config_key_applies_to; permission_task_remove_from_other_config_key_XenCenterUUID; permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_set_name_label; permission_pool_set_name_description; permission_pool_set_default_SR; permission_pool_set_suspend_image_SR; permission_pool_set_crash_dump_SR; permission_pool_set_other_config; permission_pool_add_to_other_config; permission_pool_add_to_other_config_key_folder; permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_add_to_other_config_key_EMPTY_FOLDERS; permission_pool_remove_from_other_config; permission_pool_remove_from_other_config_key_folder; permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_remove_from_other_config_key_EMPTY_FOLDERS; permission_pool_set_ha_allow_overcommit; permission_pool_set_tags; permission_pool_add_tags; permission_pool_remove_tags; permission_pool_set_gui_config; permission_pool_add_to_gui_config; permission_pool_remove_from_gui_config; permission_pool_set_health_check_config; permission_pool_add_to_health_check_config; permission_pool_remove_from_health_check_config; permission_pool_set_wlb_enabled; permission_pool_set_wlb_verify_cert; permission_pool_set_policy_no_vendor_device; permission_pool_set_live_patching_disabled; permission_pool_set_uefi_certificates; permission_pool_set_is_psr_pending; permission_pool_join; permission_pool_join_force; permission_pool_eject; permission_pool_initial_auth; permission_pool_emergency_transition_to_master; permission_pool_emergency_reset_master; permission_pool_recover_slaves; permission_pool_hello; permission_pool_is_slave; permission_pool_create_VLAN; permission_pool_management_reconfigure; permission_pool_create_VLAN_from_PIF; permission_pool_slave_network_report; permission_pool_enable_ha; permission_pool_disable_ha; permission_pool_sync_database; permission_pool_designate_new_master; permission_pool_ha_prevent_restarts_for; permission_pool_ha_failover_plan_exists; permission_pool_ha_compute_max_host_failures_to_tolerate; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_ha_compute_vm_failover_plan; permission_pool_set_ha_host_failures_to_tolerate; permission_pool_create_new_blob; permission_pool_enable_binary_storage; permission_pool_disable_binary_storage; permission_pool_enable_external_auth; permission_pool_disable_external_auth; permission_pool_detect_nonhomogeneous_external_auth; permission_pool_initialize_wlb; permission_pool_deconfigure_wlb; permission_pool_send_wlb_configuration; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_send_test_post; permission_pool_certificate_install; permission_pool_certificate_uninstall; permission_pool_certificate_list; permission_pool_crl_install; permission_pool_crl_uninstall; permission_pool_crl_list; permission_pool_certificate_sync; permission_pool_enable_redo_log; permission_pool_disable_redo_log; permission_pool_audit_log_append; permission_pool_set_vswitch_controller; permission_pool_test_archive_target; permission_pool_enable_local_storage_caching; permission_pool_disable_local_storage_caching; permission_pool_get_license_state; permission_pool_apply_edition; permission_pool_enable_ssl_legacy; permission_pool_disable_ssl_legacy; permission_pool_set_igmp_snooping_enabled; permission_pool_has_extension; permission_pool_add_to_guest_agent_config; permission_pool_remove_from_guest_agent_config; permission_pool_rotate_secret; permission_pool_set_https_only; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_set_other_config; permission_pool_patch_add_to_other_config; permission_pool_patch_remove_from_other_config; permission_pool_patch_apply; permission_pool_patch_pool_apply; permission_pool_patch_precheck; permission_pool_patch_clean; permission_pool_patch_pool_clean; permission_pool_patch_destroy; permission_pool_patch_clean_on_host; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_set_other_config; permission_pool_update_add_to_other_config; permission_pool_update_remove_from_other_config; permission_pool_update_introduce; permission_pool_update_precheck; permission_pool_update_apply; permission_pool_update_pool_apply; permission_pool_update_pool_clean; permission_pool_update_destroy; permission_pool_update_attach; permission_pool_update_detach; permission_pool_update_resync_host; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_create; permission_VM_destroy; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_set_name_label; permission_VM_set_name_description; permission_VM_set_user_version; permission_VM_set_is_a_template; permission_VM_set_affinity; permission_VM_set_VCPUs_params; permission_VM_add_to_VCPUs_params; permission_VM_remove_from_VCPUs_params; permission_VM_set_actions_after_shutdown; permission_VM_set_actions_after_reboot; permission_VM_set_PV_bootloader; permission_VM_set_PV_kernel; permission_VM_set_PV_ramdisk; permission_VM_set_PV_args; permission_VM_set_PV_bootloader_args; permission_VM_set_PV_legacy_args; permission_VM_set_HVM_boot_params; permission_VM_add_to_HVM_boot_params; permission_VM_remove_from_HVM_boot_params; permission_VM_set_platform; permission_VM_add_to_platform; permission_VM_remove_from_platform; permission_VM_set_PCI_bus; permission_VM_set_other_config; permission_VM_add_to_other_config; permission_VM_add_to_other_config_key_pci; permission_VM_add_to_other_config_key_folder; permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_remove_from_other_config; permission_VM_remove_from_other_config_key_pci; permission_VM_remove_from_other_config_key_folder; permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_set_recommendations; permission_VM_set_xenstore_data; permission_VM_add_to_xenstore_data; permission_VM_remove_from_xenstore_data; permission_VM_set_tags; permission_VM_add_tags; permission_VM_remove_tags; permission_VM_set_blocked_operations; permission_VM_add_to_blocked_operations; permission_VM_remove_from_blocked_operations; permission_VM_set_suspend_SR; permission_VM_set_hardware_platform_version; permission_VM_snapshot; permission_VM_snapshot_with_quiesce; permission_VM_clone; permission_VM_copy; permission_VM_revert; permission_VM_checkpoint; permission_VM_provision; permission_VM_start; permission_VM_start_on; permission_VM_pause; permission_VM_unpause; permission_VM_clean_shutdown; permission_VM_shutdown; permission_VM_clean_reboot; permission_VM_hard_shutdown; permission_VM_power_state_reset; permission_VM_hard_reboot; permission_VM_suspend; permission_VM_csvm; permission_VM_resume; permission_VM_set_is_default_template; permission_VM_resume_on; permission_VM_pool_migrate; permission_VM_pool_migrate_complete; permission_VM_set_VCPUs_number_live; permission_VM_add_to_VCPUs_params_live; permission_VM_set_NVRAM; permission_VM_add_to_NVRAM; permission_VM_remove_from_NVRAM; permission_VM_set_ha_restart_priority; permission_VM_set_ha_always_run; permission_VM_compute_memory_overhead; permission_VM_set_memory_dynamic_max; permission_VM_set_memory_dynamic_min; permission_VM_set_memory_dynamic_range; permission_VM_set_memory_static_max; permission_VM_set_memory_static_min; permission_VM_set_memory_static_range; permission_VM_set_memory_limits; permission_VM_set_memory; permission_VM_set_memory_target_live; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_set_HVM_shadow_multiplier; permission_VM_set_shadow_multiplier_live; permission_VM_set_VCPUs_max; permission_VM_set_VCPUs_at_startup; permission_VM_send_sysrq; permission_VM_send_trigger; permission_VM_maximise_memory; permission_VM_migrate_send; permission_VM_assert_can_migrate; permission_VM_assert_can_migrate_sender; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_record_data_source; permission_VM_query_data_source; permission_VM_forget_data_source_archives; permission_VM_assert_operation_valid; permission_VM_update_allowed_operations; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_create_new_blob; permission_VM_s3_suspend; permission_VM_s3_resume; permission_VM_assert_agile; permission_VM_update_snapshot_metadata; permission_VM_retrieve_wlb_recommendations; permission_VM_set_bios_strings; permission_VM_copy_bios_strings; permission_VM_set_protection_policy; permission_VM_set_snapshot_schedule; permission_VM_set_start_delay; permission_VM_set_shutdown_delay; permission_VM_set_order; permission_VM_set_suspend_VDI; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_import_convert; permission_VM_set_appliance; permission_VM_query_services; permission_VM_call_plugin; permission_VM_set_has_vendor_device; permission_VM_import; permission_VM_set_actions_after_crash; permission_VM_set_domain_type; permission_VM_set_HVM_boot_policy; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_set_other_config; permission_VM_metrics_add_to_other_config; permission_VM_metrics_remove_from_other_config; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_set_other_config; permission_VM_guest_metrics_add_to_other_config; permission_VM_guest_metrics_remove_from_other_config; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_create; permission_VMPP_destroy; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_set_name_label; permission_VMPP_set_name_description; permission_VMPP_set_is_policy_enabled; permission_VMPP_set_backup_type; permission_VMPP_protect_now; permission_VMPP_archive_now; permission_VMPP_get_alerts; permission_VMPP_set_backup_retention_value; permission_VMPP_set_backup_frequency; permission_VMPP_set_backup_schedule; permission_VMPP_set_archive_frequency; permission_VMPP_set_archive_schedule; permission_VMPP_set_archive_target_type; permission_VMPP_set_archive_target_config; permission_VMPP_set_is_alarm_enabled; permission_VMPP_set_alarm_config; permission_VMPP_add_to_backup_schedule; permission_VMPP_add_to_archive_target_config; permission_VMPP_add_to_archive_schedule; permission_VMPP_add_to_alarm_config; permission_VMPP_remove_from_backup_schedule; permission_VMPP_remove_from_archive_target_config; permission_VMPP_remove_from_archive_schedule; permission_VMPP_remove_from_alarm_config; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_create; permission_VMSS_destroy; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_set_name_label; permission_VMSS_set_name_description; permission_VMSS_set_enabled; permission_VMSS_snapshot_now; permission_VMSS_set_retained_snapshots; permission_VMSS_set_frequency; permission_VMSS_set_schedule; permission_VMSS_add_to_schedule; permission_VMSS_remove_from_schedule; permission_VMSS_set_type; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_create; permission_VM_appliance_destroy; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_set_name_label; permission_VM_appliance_set_name_description; permission_VM_appliance_start; permission_VM_appliance_clean_shutdown; permission_VM_appliance_hard_shutdown; permission_VM_appliance_shutdown; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_create; permission_DR_task_destroy; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_set_name_label; permission_host_set_name_description; permission_host_set_other_config; permission_host_add_to_other_config; permission_host_add_to_other_config_key_folder; permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_remove_from_other_config; permission_host_remove_from_other_config_key_folder; permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_set_logging; permission_host_add_to_logging; permission_host_remove_from_logging; permission_host_set_suspend_image_sr; permission_host_set_crash_dump_sr; permission_host_set_hostname; permission_host_set_address; permission_host_set_tags; permission_host_add_tags; permission_host_remove_tags; permission_host_set_license_server; permission_host_add_to_license_server; permission_host_remove_from_license_server; permission_host_set_guest_VCPUs_params; permission_host_add_to_guest_VCPUs_params; permission_host_remove_from_guest_VCPUs_params; permission_host_set_display; permission_host_disable; permission_host_enable; permission_host_shutdown; permission_host_reboot; permission_host_dmesg; permission_host_dmesg_clear; permission_host_get_log; permission_host_send_debug_keys; permission_host_bugreport_upload; permission_host_list_methods; permission_host_license_apply; permission_host_license_add; permission_host_license_remove; permission_host_create; permission_host_destroy; permission_host_power_on; permission_host_emergency_ha_disable; permission_host_ha_xapi_healthcheck; permission_host_get_data_sources; permission_host_record_data_source; permission_host_query_data_source; permission_host_forget_data_source_archives; permission_host_assert_can_evacuate; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_evacuate; permission_host_syslog_reconfigure; permission_host_management_reconfigure; permission_host_local_management_reconfigure; permission_host_management_disable; permission_host_get_management_interface; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_restart_agent; permission_host_shutdown_agent; permission_host_set_hostname_live; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_sync_data; permission_host_backup_rrds; permission_host_create_new_blob; permission_host_call_plugin; permission_host_has_extension; permission_host_call_extension; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_enable_external_auth; permission_host_disable_external_auth; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_install_server_certificate; permission_host_apply_edition; permission_host_refresh_pack_info; permission_host_set_power_on_mode; permission_host_set_cpu_features; permission_host_reset_cpu_features; permission_host_reset_networking; permission_host_enable_local_storage_caching; permission_host_disable_local_storage_caching; permission_host_get_sm_diagnostics; permission_host_get_thread_diagnostics; permission_host_sm_dp_destroy; permission_host_sync_vlans; permission_host_sync_tunnels; permission_host_sync_pif_currently_attached; permission_host_migrate_receive; permission_host_declare_dead; permission_host_enable_display; permission_host_disable_display; permission_host_set_ssl_legacy; permission_host_apply_guest_agent_config; permission_host_mxgpu_vf_setup; permission_host_nvidia_vf_setup; permission_host_allocate_resources_for_vm; permission_host_set_iscsi_iqn; permission_host_set_multipathing; permission_host_set_https_only; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_set_other_config; permission_host_crashdump_add_to_other_config; permission_host_crashdump_remove_from_other_config; permission_host_crashdump_destroy; permission_host_crashdump_upload; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_set_other_config; permission_host_patch_add_to_other_config; permission_host_patch_remove_from_other_config; permission_host_patch_destroy; permission_host_patch_apply; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_set_other_config; permission_host_metrics_add_to_other_config; permission_host_metrics_remove_from_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_set_other_config; permission_host_cpu_add_to_other_config; permission_host_cpu_remove_from_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_create; permission_network_destroy; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_set_name_label; permission_network_set_name_description; permission_network_set_MTU; permission_network_set_other_config; permission_network_add_to_other_config; permission_network_add_to_other_config_key_folder; permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_add_to_other_config_key_XenCenterCreateInProgress; permission_network_remove_from_other_config; permission_network_remove_from_other_config_key_folder; permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_remove_from_other_config_key_XenCenterCreateInProgress; permission_network_set_tags; permission_network_add_tags; permission_network_remove_tags; permission_network_attach; permission_network_pool_introduce; permission_network_create_new_blob; permission_network_set_default_locking_mode; permission_network_attach_for_vm; permission_network_detach_for_vm; permission_network_add_purpose; permission_network_remove_purpose; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_create; permission_VIF_destroy; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_set_other_config; permission_VIF_add_to_other_config; permission_VIF_remove_from_other_config; permission_VIF_set_qos_algorithm_type; permission_VIF_set_qos_algorithm_params; permission_VIF_add_to_qos_algorithm_params; permission_VIF_remove_from_qos_algorithm_params; permission_VIF_plug; permission_VIF_unplug; permission_VIF_unplug_force; permission_VIF_move; permission_VIF_set_locking_mode; permission_VIF_set_ipv4_allowed; permission_VIF_add_ipv4_allowed; permission_VIF_remove_ipv4_allowed; permission_VIF_set_ipv6_allowed; permission_VIF_add_ipv6_allowed; permission_VIF_remove_ipv6_allowed; permission_VIF_configure_ipv4; permission_VIF_configure_ipv6; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_set_other_config; permission_VIF_metrics_add_to_other_config; permission_VIF_metrics_remove_from_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_set_other_config; permission_PIF_add_to_other_config; permission_PIF_remove_from_other_config; permission_PIF_create_VLAN; permission_PIF_destroy; permission_PIF_reconfigure_ip; permission_PIF_reconfigure_ipv6; permission_PIF_set_primary_address_type; permission_PIF_scan; permission_PIF_introduce; permission_PIF_forget; permission_PIF_unplug; permission_PIF_set_disallow_unplug; permission_PIF_plug; permission_PIF_pool_introduce; permission_PIF_db_introduce; permission_PIF_db_forget; permission_PIF_set_property; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_set_other_config; permission_PIF_metrics_add_to_other_config; permission_PIF_metrics_remove_from_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_set_other_config; permission_Bond_add_to_other_config; permission_Bond_remove_from_other_config; permission_Bond_create; permission_Bond_destroy; permission_Bond_set_mode; permission_Bond_set_property; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_set_other_config; permission_VLAN_add_to_other_config; permission_VLAN_remove_from_other_config; permission_VLAN_pool_introduce; permission_VLAN_create; permission_VLAN_destroy; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_set_other_config; permission_SM_add_to_other_config; permission_SM_remove_from_other_config; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_set_other_config; permission_SR_add_to_other_config; permission_SR_add_to_other_config_key_folder; permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_remove_from_other_config; permission_SR_remove_from_other_config_key_folder; permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_set_tags; permission_SR_add_tags; permission_SR_remove_tags; permission_SR_set_sm_config; permission_SR_add_to_sm_config; permission_SR_remove_from_sm_config; permission_SR_create; permission_SR_introduce; permission_SR_make; permission_SR_destroy; permission_SR_forget; permission_SR_update; permission_SR_get_supported_types; permission_SR_scan; permission_SR_probe; permission_SR_probe_ext; permission_SR_set_shared; permission_SR_set_name_label; permission_SR_set_name_description; permission_SR_create_new_blob; permission_SR_set_physical_size; permission_SR_assert_can_host_ha_statefile; permission_SR_assert_supports_database_replication; permission_SR_enable_database_replication; permission_SR_disable_database_replication; permission_SR_get_data_sources; permission_SR_record_data_source; permission_SR_query_data_source; permission_SR_forget_data_source_archives; permission_SR_get_live_hosts; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_LVHD_enable_thin_provisioning; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_create; permission_VDI_destroy; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_set_other_config; permission_VDI_add_to_other_config; permission_VDI_add_to_other_config_key_folder; permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_remove_from_other_config; permission_VDI_remove_from_other_config_key_folder; permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_set_xenstore_data; permission_VDI_add_to_xenstore_data; permission_VDI_remove_from_xenstore_data; permission_VDI_set_sm_config; permission_VDI_add_to_sm_config; permission_VDI_remove_from_sm_config; permission_VDI_set_tags; permission_VDI_add_tags; permission_VDI_remove_tags; permission_VDI_snapshot; permission_VDI_clone; permission_VDI_resize; permission_VDI_resize_online; permission_VDI_introduce; permission_VDI_pool_introduce; permission_VDI_update; permission_VDI_copy; permission_VDI_force_unlock; permission_VDI_forget; permission_VDI_set_sharable; permission_VDI_set_read_only; permission_VDI_set_name_label; permission_VDI_set_name_description; permission_VDI_generate_config; permission_VDI_set_on_boot; permission_VDI_set_allow_caching; permission_VDI_open_database; permission_VDI_checksum; permission_VDI_read_database_pool_uuid; permission_VDI_pool_migrate; permission_VDI_enable_cbt; permission_VDI_disable_cbt; permission_VDI_data_destroy; permission_VDI_list_changed_blocks; permission_VDI_get_nbd_info; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_create; permission_VBD_destroy; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_set_userdevice; permission_VBD_set_bootable; permission_VBD_set_type; permission_VBD_set_unpluggable; permission_VBD_set_other_config; permission_VBD_add_to_other_config; permission_VBD_remove_from_other_config; permission_VBD_set_qos_algorithm_type; permission_VBD_set_qos_algorithm_params; permission_VBD_add_to_qos_algorithm_params; permission_VBD_remove_from_qos_algorithm_params; permission_VBD_eject; permission_VBD_insert; permission_VBD_plug; permission_VBD_unplug; permission_VBD_unplug_force; permission_VBD_unplug_force_no_safety_check; permission_VBD_assert_attachable; permission_VBD_pause; permission_VBD_unpause; permission_VBD_set_mode; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_set_other_config; permission_VBD_metrics_add_to_other_config; permission_VBD_metrics_remove_from_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_create; permission_PBD_destroy; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_set_other_config; permission_PBD_add_to_other_config; permission_PBD_remove_from_other_config; permission_PBD_plug; permission_PBD_unplug; permission_PBD_set_device_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_set_other_config; permission_crashdump_add_to_other_config; permission_crashdump_remove_from_other_config; permission_crashdump_destroy; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_create; permission_VTPM_destroy; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_create; permission_console_destroy; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_set_other_config; permission_console_add_to_other_config; permission_console_remove_from_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_create; permission_user_destroy; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_user_set_fullname; permission_user_set_other_config; permission_user_add_to_other_config; permission_user_remove_from_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_set_name_label; permission_blob_set_name_description; permission_blob_set_public; permission_blob_create; permission_blob_destroy; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_create; permission_message_destroy; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_record; permission_secret_get_by_uuid; permission_secret_create; permission_secret_destroy; permission_secret_get_uuid; permission_secret_get_value; permission_secret_get_other_config; permission_secret_set_value; permission_secret_set_other_config; permission_secret_add_to_other_config; permission_secret_remove_from_other_config; permission_secret_introduce; permission_secret_get_all; permission_secret_get_all_records_where; permission_secret_get_all_records; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_set_status; permission_tunnel_add_to_status; permission_tunnel_remove_from_status; permission_tunnel_set_other_config; permission_tunnel_add_to_other_config; permission_tunnel_remove_from_other_config; permission_tunnel_set_protocol; permission_tunnel_create; permission_tunnel_destroy; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_create; permission_network_sriov_destroy; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_set_other_config; permission_PCI_add_to_other_config; permission_PCI_remove_from_other_config; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_set_other_config; permission_PGPU_add_to_other_config; permission_PGPU_remove_from_other_config; permission_PGPU_add_enabled_VGPU_types; permission_PGPU_remove_enabled_VGPU_types; permission_PGPU_set_enabled_VGPU_types; permission_PGPU_set_GPU_group; permission_PGPU_get_remaining_capacity; permission_PGPU_enable_dom0_access; permission_PGPU_disable_dom0_access; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_set_name_label; permission_GPU_group_set_name_description; permission_GPU_group_set_other_config; permission_GPU_group_add_to_other_config; permission_GPU_group_remove_from_other_config; permission_GPU_group_set_allocation_algorithm; permission_GPU_group_create; permission_GPU_group_destroy; permission_GPU_group_update_enabled_VGPU_types; permission_GPU_group_update_supported_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_set_other_config; permission_VGPU_add_to_other_config; permission_VGPU_remove_from_other_config; permission_VGPU_set_extra_args; permission_VGPU_create; permission_VGPU_destroy; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_set_name_label; permission_PVS_site_set_name_description; permission_PVS_site_introduce; permission_PVS_site_forget; permission_PVS_site_set_PVS_uuid; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_introduce; permission_PVS_server_forget; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_create; permission_PVS_proxy_destroy; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_create; permission_PVS_cache_storage_destroy; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_introduce; permission_SDN_controller_forget; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_set_other_config; permission_PUSB_add_to_other_config; permission_PUSB_remove_from_other_config; permission_PUSB_scan; permission_PUSB_set_passthrough_enabled; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_set_name_label; permission_USB_group_set_name_description; permission_USB_group_set_other_config; permission_USB_group_add_to_other_config; permission_USB_group_remove_from_other_config; permission_USB_group_create; permission_USB_group_destroy; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_set_other_config; permission_VUSB_add_to_other_config; permission_VUSB_remove_from_other_config; permission_VUSB_create; permission_VUSB_unplug; permission_VUSB_destroy; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_set_other_config; permission_Cluster_add_to_other_config; permission_Cluster_remove_from_other_config; permission_Cluster_create; permission_Cluster_destroy; permission_Cluster_get_network; permission_Cluster_pool_create; permission_Cluster_pool_force_destroy; permission_Cluster_pool_destroy; permission_Cluster_pool_resync; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_create; permission_Cluster_host_destroy; permission_Cluster_host_enable; permission_Cluster_host_force_destroy; permission_Cluster_host_disable; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_Diagnostics_gc_compact; permission_Diagnostics_gc_stats; permission_Diagnostics_db_stats; permission_Diagnostics_network_stats; permission_http_get_services; permission_http_post_services; permission_http_put_services; permission_http_post_remote_db_access; permission_http_post_remote_db_access_v2; permission_http_connect_migrate; permission_http_get_services_xenops; permission_http_post_services_xenops; permission_http_put_services_xenops; permission_http_get_services_sm; permission_http_post_services_sm; permission_http_put_services_sm; permission_http_put_import; permission_http_put_import_metadata; permission_http_put_import_raw_vdi; permission_http_get_export; permission_http_get_export_metadata; permission_http_get_export_raw_vdi; permission_http_connect_console; permission_http_connect_console_host_console; permission_http_connect_console_ws; permission_http_connect_console_ws_host_console_ws; permission_http_get_root; permission_http_post_cli; permission_http_get_host_backup; permission_http_put_host_restore; permission_http_get_host_logs_download; permission_http_put_pool_patch_upload; permission_http_get_pool_patch_download; permission_http_put_oem_patch_stream; permission_http_get_vncsnapshot; permission_http_get_vncsnapshot_host_console; permission_http_get_pool_xml_db_sync; permission_http_put_pool_xml_db_sync; permission_http_get_config_sync; permission_http_get_vm_connect; permission_http_put_vm_connect; permission_http_get_system_status; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_rrd; permission_http_get_blob; permission_http_put_blob; permission_http_get_message_rss_feed; permission_http_put_messages; permission_http_connect_remotecmd; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; permission_task_destroy_any; ]

(* 1818 elements in permissions_of_role_pool_operator *)
let permissions_of_role_pool_operator = [permission_session_get_record; permission_session_get_by_uuid; permission_session_get_uuid; permission_session_get_this_host; permission_session_get_this_user; permission_session_get_last_active; permission_session_get_pool; permission_session_get_other_config; permission_session_get_is_local_superuser; permission_session_get_subject; permission_session_get_validation_time; permission_session_get_auth_user_sid; permission_session_get_auth_user_name; permission_session_get_rbac_permissions; permission_session_get_tasks; permission_session_get_parent; permission_session_get_originator; permission_session_login_with_password; permission_session_logout; permission_session_get_all_subject_identifiers; permission_session_logout_subject_identifier; permission_auth_get_subject_identifier; permission_auth_get_subject_information_from_identifier; permission_auth_get_group_membership; permission_subject_get_record; permission_subject_get_by_uuid; permission_subject_get_uuid; permission_subject_get_subject_identifier; permission_subject_get_other_config; permission_subject_get_roles; permission_subject_get_permissions_name_label; permission_subject_get_all; permission_subject_get_all_records_where; permission_subject_get_all_records; permission_role_get_record; permission_role_get_by_uuid; permission_role_get_by_name_label; permission_role_get_uuid; permission_role_get_name_label; permission_role_get_name_description; permission_role_get_subroles; permission_role_get_permissions; permission_role_get_permissions_name_label; permission_role_get_by_permission; permission_role_get_by_permission_name_label; permission_role_get_all; permission_role_get_all_records_where; permission_role_get_all_records; permission_task_get_record; permission_task_get_by_uuid; permission_task_get_by_name_label; permission_task_get_uuid; permission_task_get_name_label; permission_task_get_name_description; permission_task_get_allowed_operations; permission_task_get_current_operations; permission_task_get_created; permission_task_get_finished; permission_task_get_status; permission_task_get_resident_on; permission_task_get_progress; permission_task_get_type; permission_task_get_result; permission_task_get_error_info; permission_task_get_other_config; permission_task_get_subtask_of; permission_task_get_subtasks; permission_task_get_backtrace; permission_task_set_other_config; permission_task_add_to_other_config; permission_task_add_to_other_config_key_applies_to; permission_task_add_to_other_config_key_XenCenterUUID; permission_task_add_to_other_config_key_XenCenterMeddlingActionTitle; permission_task_remove_from_other_config; permission_task_remove_from_other_config_key_applies_to; permission_task_remove_from_other_config_key_XenCenterUUID; permission_task_remove_from_other_config_key_XenCenterMeddlingActionTitle; permission_task_create; permission_task_destroy; permission_task_cancel; permission_task_set_status; permission_task_set_progress; permission_task_get_all; permission_task_get_all_records_where; permission_task_get_all_records; permission_event_register; permission_event_unregister; permission_event_next; permission_event_from; permission_event_get_current_id; permission_event_inject; permission_pool_get_record; permission_pool_get_by_uuid; permission_pool_get_uuid; permission_pool_get_name_label; permission_pool_get_name_description; permission_pool_get_master; permission_pool_get_default_SR; permission_pool_get_suspend_image_SR; permission_pool_get_crash_dump_SR; permission_pool_get_other_config; permission_pool_get_ha_enabled; permission_pool_get_ha_configuration; permission_pool_get_ha_statefiles; permission_pool_get_ha_host_failures_to_tolerate; permission_pool_get_ha_plan_exists_for; permission_pool_get_ha_allow_overcommit; permission_pool_get_ha_overcommitted; permission_pool_get_blobs; permission_pool_get_tags; permission_pool_get_gui_config; permission_pool_get_health_check_config; permission_pool_get_wlb_url; permission_pool_get_wlb_username; permission_pool_get_wlb_enabled; permission_pool_get_wlb_verify_cert; permission_pool_get_redo_log_enabled; permission_pool_get_redo_log_vdi; permission_pool_get_vswitch_controller; permission_pool_get_restrictions; permission_pool_get_metadata_VDIs; permission_pool_get_ha_cluster_stack; permission_pool_get_allowed_operations; permission_pool_get_current_operations; permission_pool_get_guest_agent_config; permission_pool_get_cpu_info; permission_pool_get_policy_no_vendor_device; permission_pool_get_live_patching_disabled; permission_pool_get_igmp_snooping_enabled; permission_pool_get_uefi_certificates; permission_pool_get_is_psr_pending; permission_pool_set_name_label; permission_pool_set_name_description; permission_pool_set_default_SR; permission_pool_set_suspend_image_SR; permission_pool_set_crash_dump_SR; permission_pool_set_other_config; permission_pool_add_to_other_config; permission_pool_add_to_other_config_key_folder; permission_pool_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_add_to_other_config_key_EMPTY_FOLDERS; permission_pool_remove_from_other_config; permission_pool_remove_from_other_config_key_folder; permission_pool_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_pool_remove_from_other_config_key_EMPTY_FOLDERS; permission_pool_set_ha_allow_overcommit; permission_pool_set_tags; permission_pool_add_tags; permission_pool_remove_tags; permission_pool_set_gui_config; permission_pool_add_to_gui_config; permission_pool_remove_from_gui_config; permission_pool_set_health_check_config; permission_pool_add_to_health_check_config; permission_pool_remove_from_health_check_config; permission_pool_set_wlb_enabled; permission_pool_set_wlb_verify_cert; permission_pool_set_policy_no_vendor_device; permission_pool_set_live_patching_disabled; permission_pool_set_uefi_certificates; permission_pool_set_is_psr_pending; permission_pool_join; permission_pool_join_force; permission_pool_eject; permission_pool_initial_auth; permission_pool_emergency_transition_to_master; permission_pool_emergency_reset_master; permission_pool_recover_slaves; permission_pool_hello; permission_pool_create_VLAN; permission_pool_management_reconfigure; permission_pool_create_VLAN_from_PIF; permission_pool_enable_ha; permission_pool_disable_ha; permission_pool_sync_database; permission_pool_designate_new_master; permission_pool_ha_prevent_restarts_for; permission_pool_ha_failover_plan_exists; permission_pool_ha_compute_max_host_failures_to_tolerate; permission_pool_ha_compute_hypothetical_max_host_failures_to_tolerate; permission_pool_ha_compute_vm_failover_plan; permission_pool_set_ha_host_failures_to_tolerate; permission_pool_create_new_blob; permission_pool_enable_binary_storage; permission_pool_disable_binary_storage; permission_pool_detect_nonhomogeneous_external_auth; permission_pool_initialize_wlb; permission_pool_deconfigure_wlb; permission_pool_send_wlb_configuration; permission_pool_retrieve_wlb_configuration; permission_pool_retrieve_wlb_recommendations; permission_pool_certificate_install; permission_pool_certificate_uninstall; permission_pool_certificate_list; permission_pool_crl_install; permission_pool_crl_uninstall; permission_pool_crl_list; permission_pool_certificate_sync; permission_pool_enable_redo_log; permission_pool_disable_redo_log; permission_pool_set_vswitch_controller; permission_pool_test_archive_target; permission_pool_enable_local_storage_caching; permission_pool_disable_local_storage_caching; permission_pool_get_license_state; permission_pool_apply_edition; permission_pool_enable_ssl_legacy; permission_pool_disable_ssl_legacy; permission_pool_set_igmp_snooping_enabled; permission_pool_set_https_only; permission_pool_get_all; permission_pool_get_all_records_where; permission_pool_get_all_records; permission_pool_patch_get_record; permission_pool_patch_get_by_uuid; permission_pool_patch_get_by_name_label; permission_pool_patch_get_uuid; permission_pool_patch_get_name_label; permission_pool_patch_get_name_description; permission_pool_patch_get_version; permission_pool_patch_get_size; permission_pool_patch_get_pool_applied; permission_pool_patch_get_host_patches; permission_pool_patch_get_after_apply_guidance; permission_pool_patch_get_pool_update; permission_pool_patch_get_other_config; permission_pool_patch_set_other_config; permission_pool_patch_add_to_other_config; permission_pool_patch_remove_from_other_config; permission_pool_patch_apply; permission_pool_patch_pool_apply; permission_pool_patch_precheck; permission_pool_patch_clean; permission_pool_patch_pool_clean; permission_pool_patch_destroy; permission_pool_patch_clean_on_host; permission_pool_patch_get_all; permission_pool_patch_get_all_records_where; permission_pool_patch_get_all_records; permission_pool_update_get_record; permission_pool_update_get_by_uuid; permission_pool_update_get_by_name_label; permission_pool_update_get_uuid; permission_pool_update_get_name_label; permission_pool_update_get_name_description; permission_pool_update_get_version; permission_pool_update_get_installation_size; permission_pool_update_get_key; permission_pool_update_get_after_apply_guidance; permission_pool_update_get_vdi; permission_pool_update_get_hosts; permission_pool_update_get_other_config; permission_pool_update_get_enforce_homogeneity; permission_pool_update_set_other_config; permission_pool_update_add_to_other_config; permission_pool_update_remove_from_other_config; permission_pool_update_introduce; permission_pool_update_precheck; permission_pool_update_apply; permission_pool_update_pool_apply; permission_pool_update_pool_clean; permission_pool_update_destroy; permission_pool_update_attach; permission_pool_update_detach; permission_pool_update_resync_host; permission_pool_update_get_all; permission_pool_update_get_all_records_where; permission_pool_update_get_all_records; permission_VM_get_record; permission_VM_get_by_uuid; permission_VM_create; permission_VM_destroy; permission_VM_get_by_name_label; permission_VM_get_uuid; permission_VM_get_allowed_operations; permission_VM_get_current_operations; permission_VM_get_name_label; permission_VM_get_name_description; permission_VM_get_power_state; permission_VM_get_user_version; permission_VM_get_is_a_template; permission_VM_get_is_default_template; permission_VM_get_suspend_VDI; permission_VM_get_resident_on; permission_VM_get_scheduled_to_be_resident_on; permission_VM_get_affinity; permission_VM_get_memory_overhead; permission_VM_get_memory_target; permission_VM_get_memory_static_max; permission_VM_get_memory_dynamic_max; permission_VM_get_memory_dynamic_min; permission_VM_get_memory_static_min; permission_VM_get_VCPUs_params; permission_VM_get_VCPUs_max; permission_VM_get_VCPUs_at_startup; permission_VM_get_actions_after_shutdown; permission_VM_get_actions_after_reboot; permission_VM_get_actions_after_crash; permission_VM_get_consoles; permission_VM_get_VIFs; permission_VM_get_VBDs; permission_VM_get_VUSBs; permission_VM_get_crash_dumps; permission_VM_get_VTPMs; permission_VM_get_PV_bootloader; permission_VM_get_PV_kernel; permission_VM_get_PV_ramdisk; permission_VM_get_PV_args; permission_VM_get_PV_bootloader_args; permission_VM_get_PV_legacy_args; permission_VM_get_HVM_boot_policy; permission_VM_get_HVM_boot_params; permission_VM_get_HVM_shadow_multiplier; permission_VM_get_platform; permission_VM_get_PCI_bus; permission_VM_get_other_config; permission_VM_get_domid; permission_VM_get_domarch; permission_VM_get_last_boot_CPU_flags; permission_VM_get_is_control_domain; permission_VM_get_metrics; permission_VM_get_guest_metrics; permission_VM_get_last_booted_record; permission_VM_get_recommendations; permission_VM_get_xenstore_data; permission_VM_get_ha_always_run; permission_VM_get_ha_restart_priority; permission_VM_get_is_a_snapshot; permission_VM_get_snapshot_of; permission_VM_get_snapshots; permission_VM_get_snapshot_time; permission_VM_get_transportable_snapshot_id; permission_VM_get_blobs; permission_VM_get_tags; permission_VM_get_blocked_operations; permission_VM_get_snapshot_info; permission_VM_get_snapshot_metadata; permission_VM_get_parent; permission_VM_get_children; permission_VM_get_bios_strings; permission_VM_get_protection_policy; permission_VM_get_is_snapshot_from_vmpp; permission_VM_get_snapshot_schedule; permission_VM_get_is_vmss_snapshot; permission_VM_get_appliance; permission_VM_get_start_delay; permission_VM_get_shutdown_delay; permission_VM_get_order; permission_VM_get_VGPUs; permission_VM_get_attached_PCIs; permission_VM_get_suspend_SR; permission_VM_get_version; permission_VM_get_generation_id; permission_VM_get_hardware_platform_version; permission_VM_get_has_vendor_device; permission_VM_get_requires_reboot; permission_VM_get_reference_label; permission_VM_get_domain_type; permission_VM_get_NVRAM; permission_VM_set_name_label; permission_VM_set_name_description; permission_VM_set_user_version; permission_VM_set_is_a_template; permission_VM_set_affinity; permission_VM_set_VCPUs_params; permission_VM_add_to_VCPUs_params; permission_VM_remove_from_VCPUs_params; permission_VM_set_actions_after_shutdown; permission_VM_set_actions_after_reboot; permission_VM_set_PV_bootloader; permission_VM_set_PV_kernel; permission_VM_set_PV_ramdisk; permission_VM_set_PV_args; permission_VM_set_PV_bootloader_args; permission_VM_set_PV_legacy_args; permission_VM_set_HVM_boot_params; permission_VM_add_to_HVM_boot_params; permission_VM_remove_from_HVM_boot_params; permission_VM_set_platform; permission_VM_add_to_platform; permission_VM_remove_from_platform; permission_VM_set_PCI_bus; permission_VM_set_other_config; permission_VM_add_to_other_config; permission_VM_add_to_other_config_key_folder; permission_VM_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_remove_from_other_config; permission_VM_remove_from_other_config_key_folder; permission_VM_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VM_set_recommendations; permission_VM_set_xenstore_data; permission_VM_add_to_xenstore_data; permission_VM_remove_from_xenstore_data; permission_VM_set_tags; permission_VM_add_tags; permission_VM_remove_tags; permission_VM_set_blocked_operations; permission_VM_add_to_blocked_operations; permission_VM_remove_from_blocked_operations; permission_VM_set_suspend_SR; permission_VM_set_hardware_platform_version; permission_VM_snapshot; permission_VM_snapshot_with_quiesce; permission_VM_clone; permission_VM_copy; permission_VM_revert; permission_VM_checkpoint; permission_VM_provision; permission_VM_start; permission_VM_start_on; permission_VM_pause; permission_VM_unpause; permission_VM_clean_shutdown; permission_VM_shutdown; permission_VM_clean_reboot; permission_VM_hard_shutdown; permission_VM_power_state_reset; permission_VM_hard_reboot; permission_VM_suspend; permission_VM_csvm; permission_VM_resume; permission_VM_resume_on; permission_VM_pool_migrate; permission_VM_pool_migrate_complete; permission_VM_set_VCPUs_number_live; permission_VM_add_to_VCPUs_params_live; permission_VM_set_NVRAM; permission_VM_add_to_NVRAM; permission_VM_remove_from_NVRAM; permission_VM_set_ha_restart_priority; permission_VM_set_ha_always_run; permission_VM_compute_memory_overhead; permission_VM_set_memory_dynamic_max; permission_VM_set_memory_dynamic_min; permission_VM_set_memory_dynamic_range; permission_VM_set_memory_static_max; permission_VM_set_memory_static_min; permission_VM_set_memory_static_range; permission_VM_set_memory_limits; permission_VM_set_memory; permission_VM_set_memory_target_live; permission_VM_wait_memory_target_live; permission_VM_get_cooperative; permission_VM_set_HVM_shadow_multiplier; permission_VM_set_shadow_multiplier_live; permission_VM_set_VCPUs_max; permission_VM_set_VCPUs_at_startup; permission_VM_maximise_memory; permission_VM_migrate_send; permission_VM_assert_can_migrate; permission_VM_assert_can_migrate_sender; permission_VM_get_boot_record; permission_VM_get_data_sources; permission_VM_record_data_source; permission_VM_query_data_source; permission_VM_forget_data_source_archives; permission_VM_assert_operation_valid; permission_VM_get_allowed_VBD_devices; permission_VM_get_allowed_VIF_devices; permission_VM_get_possible_hosts; permission_VM_assert_can_boot_here; permission_VM_create_new_blob; permission_VM_s3_suspend; permission_VM_s3_resume; permission_VM_assert_agile; permission_VM_update_snapshot_metadata; permission_VM_retrieve_wlb_recommendations; permission_VM_set_bios_strings; permission_VM_copy_bios_strings; permission_VM_set_protection_policy; permission_VM_set_snapshot_schedule; permission_VM_set_start_delay; permission_VM_set_shutdown_delay; permission_VM_set_order; permission_VM_set_suspend_VDI; permission_VM_assert_can_be_recovered; permission_VM_get_SRs_required_for_recovery; permission_VM_recover; permission_VM_import_convert; permission_VM_set_appliance; permission_VM_call_plugin; permission_VM_set_has_vendor_device; permission_VM_import; permission_VM_set_actions_after_crash; permission_VM_set_domain_type; permission_VM_set_HVM_boot_policy; permission_VM_get_all; permission_VM_get_all_records_where; permission_VM_get_all_records; permission_VM_metrics_get_record; permission_VM_metrics_get_by_uuid; permission_VM_metrics_get_uuid; permission_VM_metrics_get_memory_actual; permission_VM_metrics_get_VCPUs_number; permission_VM_metrics_get_VCPUs_utilisation; permission_VM_metrics_get_VCPUs_CPU; permission_VM_metrics_get_VCPUs_params; permission_VM_metrics_get_VCPUs_flags; permission_VM_metrics_get_state; permission_VM_metrics_get_start_time; permission_VM_metrics_get_install_time; permission_VM_metrics_get_last_updated; permission_VM_metrics_get_other_config; permission_VM_metrics_get_hvm; permission_VM_metrics_get_nested_virt; permission_VM_metrics_get_nomigrate; permission_VM_metrics_get_current_domain_type; permission_VM_metrics_set_other_config; permission_VM_metrics_add_to_other_config; permission_VM_metrics_remove_from_other_config; permission_VM_metrics_get_all; permission_VM_metrics_get_all_records_where; permission_VM_metrics_get_all_records; permission_VM_guest_metrics_get_record; permission_VM_guest_metrics_get_by_uuid; permission_VM_guest_metrics_get_uuid; permission_VM_guest_metrics_get_os_version; permission_VM_guest_metrics_get_PV_drivers_version; permission_VM_guest_metrics_get_PV_drivers_up_to_date; permission_VM_guest_metrics_get_memory; permission_VM_guest_metrics_get_disks; permission_VM_guest_metrics_get_networks; permission_VM_guest_metrics_get_other; permission_VM_guest_metrics_get_last_updated; permission_VM_guest_metrics_get_other_config; permission_VM_guest_metrics_get_live; permission_VM_guest_metrics_get_can_use_hotplug_vbd; permission_VM_guest_metrics_get_can_use_hotplug_vif; permission_VM_guest_metrics_get_PV_drivers_detected; permission_VM_guest_metrics_set_other_config; permission_VM_guest_metrics_add_to_other_config; permission_VM_guest_metrics_remove_from_other_config; permission_VM_guest_metrics_get_all; permission_VM_guest_metrics_get_all_records_where; permission_VM_guest_metrics_get_all_records; permission_VMPP_get_record; permission_VMPP_get_by_uuid; permission_VMPP_create; permission_VMPP_destroy; permission_VMPP_get_by_name_label; permission_VMPP_get_uuid; permission_VMPP_get_name_label; permission_VMPP_get_name_description; permission_VMPP_get_is_policy_enabled; permission_VMPP_get_backup_type; permission_VMPP_get_backup_retention_value; permission_VMPP_get_backup_frequency; permission_VMPP_get_backup_schedule; permission_VMPP_get_is_backup_running; permission_VMPP_get_backup_last_run_time; permission_VMPP_get_archive_target_type; permission_VMPP_get_archive_target_config; permission_VMPP_get_archive_frequency; permission_VMPP_get_archive_schedule; permission_VMPP_get_is_archive_running; permission_VMPP_get_archive_last_run_time; permission_VMPP_get_VMs; permission_VMPP_get_is_alarm_enabled; permission_VMPP_get_alarm_config; permission_VMPP_get_recent_alerts; permission_VMPP_set_name_label; permission_VMPP_set_name_description; permission_VMPP_set_is_policy_enabled; permission_VMPP_set_backup_type; permission_VMPP_protect_now; permission_VMPP_archive_now; permission_VMPP_get_alerts; permission_VMPP_set_backup_retention_value; permission_VMPP_set_backup_frequency; permission_VMPP_set_backup_schedule; permission_VMPP_set_archive_frequency; permission_VMPP_set_archive_schedule; permission_VMPP_set_archive_target_type; permission_VMPP_set_archive_target_config; permission_VMPP_set_is_alarm_enabled; permission_VMPP_set_alarm_config; permission_VMPP_add_to_backup_schedule; permission_VMPP_add_to_archive_target_config; permission_VMPP_add_to_archive_schedule; permission_VMPP_add_to_alarm_config; permission_VMPP_remove_from_backup_schedule; permission_VMPP_remove_from_archive_target_config; permission_VMPP_remove_from_archive_schedule; permission_VMPP_remove_from_alarm_config; permission_VMPP_get_all; permission_VMPP_get_all_records_where; permission_VMPP_get_all_records; permission_VMSS_get_record; permission_VMSS_get_by_uuid; permission_VMSS_create; permission_VMSS_destroy; permission_VMSS_get_by_name_label; permission_VMSS_get_uuid; permission_VMSS_get_name_label; permission_VMSS_get_name_description; permission_VMSS_get_enabled; permission_VMSS_get_type; permission_VMSS_get_retained_snapshots; permission_VMSS_get_frequency; permission_VMSS_get_schedule; permission_VMSS_get_last_run_time; permission_VMSS_get_VMs; permission_VMSS_set_name_label; permission_VMSS_set_name_description; permission_VMSS_set_enabled; permission_VMSS_snapshot_now; permission_VMSS_set_retained_snapshots; permission_VMSS_set_frequency; permission_VMSS_set_schedule; permission_VMSS_add_to_schedule; permission_VMSS_remove_from_schedule; permission_VMSS_set_type; permission_VMSS_get_all; permission_VMSS_get_all_records_where; permission_VMSS_get_all_records; permission_VM_appliance_get_record; permission_VM_appliance_get_by_uuid; permission_VM_appliance_create; permission_VM_appliance_destroy; permission_VM_appliance_get_by_name_label; permission_VM_appliance_get_uuid; permission_VM_appliance_get_name_label; permission_VM_appliance_get_name_description; permission_VM_appliance_get_allowed_operations; permission_VM_appliance_get_current_operations; permission_VM_appliance_get_VMs; permission_VM_appliance_set_name_label; permission_VM_appliance_set_name_description; permission_VM_appliance_start; permission_VM_appliance_clean_shutdown; permission_VM_appliance_hard_shutdown; permission_VM_appliance_shutdown; permission_VM_appliance_assert_can_be_recovered; permission_VM_appliance_get_SRs_required_for_recovery; permission_VM_appliance_recover; permission_VM_appliance_get_all; permission_VM_appliance_get_all_records_where; permission_VM_appliance_get_all_records; permission_DR_task_get_record; permission_DR_task_get_by_uuid; permission_DR_task_get_uuid; permission_DR_task_get_introduced_SRs; permission_DR_task_create; permission_DR_task_destroy; permission_DR_task_get_all; permission_DR_task_get_all_records_where; permission_DR_task_get_all_records; permission_host_get_record; permission_host_get_by_uuid; permission_host_get_by_name_label; permission_host_get_uuid; permission_host_get_name_label; permission_host_get_name_description; permission_host_get_memory_overhead; permission_host_get_allowed_operations; permission_host_get_current_operations; permission_host_get_API_version_major; permission_host_get_API_version_minor; permission_host_get_API_version_vendor; permission_host_get_API_version_vendor_implementation; permission_host_get_enabled; permission_host_get_software_version; permission_host_get_other_config; permission_host_get_capabilities; permission_host_get_cpu_configuration; permission_host_get_sched_policy; permission_host_get_supported_bootloaders; permission_host_get_resident_VMs; permission_host_get_logging; permission_host_get_PIFs; permission_host_get_suspend_image_sr; permission_host_get_crash_dump_sr; permission_host_get_crashdumps; permission_host_get_patches; permission_host_get_updates; permission_host_get_PBDs; permission_host_get_host_CPUs; permission_host_get_cpu_info; permission_host_get_hostname; permission_host_get_address; permission_host_get_metrics; permission_host_get_license_params; permission_host_get_ha_statefiles; permission_host_get_ha_network_peers; permission_host_get_blobs; permission_host_get_tags; permission_host_get_external_auth_type; permission_host_get_external_auth_service_name; permission_host_get_external_auth_configuration; permission_host_get_edition; permission_host_get_license_server; permission_host_get_bios_strings; permission_host_get_power_on_mode; permission_host_get_power_on_config; permission_host_get_local_cache_sr; permission_host_get_chipset_info; permission_host_get_PCIs; permission_host_get_PGPUs; permission_host_get_PUSBs; permission_host_get_ssl_legacy; permission_host_get_guest_VCPUs_params; permission_host_get_display; permission_host_get_virtual_hardware_platform_versions; permission_host_get_control_domain; permission_host_get_updates_requiring_reboot; permission_host_get_features; permission_host_get_iscsi_iqn; permission_host_get_multipathing; permission_host_get_uefi_certificates; permission_host_get_certificates; permission_host_get_editions; permission_host_get_https_only; permission_host_set_name_label; permission_host_set_name_description; permission_host_set_other_config; permission_host_add_to_other_config; permission_host_add_to_other_config_key_folder; permission_host_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_remove_from_other_config; permission_host_remove_from_other_config_key_folder; permission_host_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_host_set_logging; permission_host_add_to_logging; permission_host_remove_from_logging; permission_host_set_suspend_image_sr; permission_host_set_crash_dump_sr; permission_host_set_hostname; permission_host_set_address; permission_host_set_tags; permission_host_add_tags; permission_host_remove_tags; permission_host_set_license_server; permission_host_add_to_license_server; permission_host_remove_from_license_server; permission_host_set_guest_VCPUs_params; permission_host_add_to_guest_VCPUs_params; permission_host_remove_from_guest_VCPUs_params; permission_host_set_display; permission_host_disable; permission_host_enable; permission_host_shutdown; permission_host_reboot; permission_host_dmesg; permission_host_dmesg_clear; permission_host_get_log; permission_host_bugreport_upload; permission_host_list_methods; permission_host_license_apply; permission_host_license_add; permission_host_license_remove; permission_host_create; permission_host_destroy; permission_host_power_on; permission_host_emergency_ha_disable; permission_host_get_data_sources; permission_host_record_data_source; permission_host_query_data_source; permission_host_forget_data_source_archives; permission_host_assert_can_evacuate; permission_host_get_vms_which_prevent_evacuation; permission_host_get_uncooperative_resident_VMs; permission_host_evacuate; permission_host_syslog_reconfigure; permission_host_management_reconfigure; permission_host_local_management_reconfigure; permission_host_management_disable; permission_host_get_management_interface; permission_host_get_system_status_capabilities; permission_host_get_diagnostic_timing_stats; permission_host_restart_agent; permission_host_shutdown_agent; permission_host_set_hostname_live; permission_host_is_in_emergency_mode; permission_host_compute_free_memory; permission_host_compute_memory_overhead; permission_host_create_new_blob; permission_host_get_servertime; permission_host_get_server_localtime; permission_host_retrieve_wlb_evacuate_recommendations; permission_host_get_server_certificate; permission_host_apply_edition; permission_host_refresh_pack_info; permission_host_set_power_on_mode; permission_host_set_cpu_features; permission_host_reset_cpu_features; permission_host_reset_networking; permission_host_enable_local_storage_caching; permission_host_disable_local_storage_caching; permission_host_get_sm_diagnostics; permission_host_get_thread_diagnostics; permission_host_sm_dp_destroy; permission_host_sync_vlans; permission_host_sync_tunnels; permission_host_sync_pif_currently_attached; permission_host_migrate_receive; permission_host_declare_dead; permission_host_enable_display; permission_host_disable_display; permission_host_set_ssl_legacy; permission_host_mxgpu_vf_setup; permission_host_nvidia_vf_setup; permission_host_allocate_resources_for_vm; permission_host_set_iscsi_iqn; permission_host_set_multipathing; permission_host_set_https_only; permission_host_get_all; permission_host_get_all_records_where; permission_host_get_all_records; permission_host_crashdump_get_record; permission_host_crashdump_get_by_uuid; permission_host_crashdump_get_uuid; permission_host_crashdump_get_host; permission_host_crashdump_get_timestamp; permission_host_crashdump_get_size; permission_host_crashdump_get_other_config; permission_host_crashdump_set_other_config; permission_host_crashdump_add_to_other_config; permission_host_crashdump_remove_from_other_config; permission_host_crashdump_destroy; permission_host_crashdump_upload; permission_host_crashdump_get_all; permission_host_crashdump_get_all_records_where; permission_host_crashdump_get_all_records; permission_host_patch_get_record; permission_host_patch_get_by_uuid; permission_host_patch_get_by_name_label; permission_host_patch_get_uuid; permission_host_patch_get_name_label; permission_host_patch_get_name_description; permission_host_patch_get_version; permission_host_patch_get_host; permission_host_patch_get_applied; permission_host_patch_get_timestamp_applied; permission_host_patch_get_size; permission_host_patch_get_pool_patch; permission_host_patch_get_other_config; permission_host_patch_set_other_config; permission_host_patch_add_to_other_config; permission_host_patch_remove_from_other_config; permission_host_patch_destroy; permission_host_patch_apply; permission_host_patch_get_all; permission_host_patch_get_all_records_where; permission_host_patch_get_all_records; permission_host_metrics_get_record; permission_host_metrics_get_by_uuid; permission_host_metrics_get_uuid; permission_host_metrics_get_memory_total; permission_host_metrics_get_memory_free; permission_host_metrics_get_live; permission_host_metrics_get_last_updated; permission_host_metrics_get_other_config; permission_host_metrics_set_other_config; permission_host_metrics_add_to_other_config; permission_host_metrics_remove_from_other_config; permission_host_metrics_get_all; permission_host_metrics_get_all_records_where; permission_host_metrics_get_all_records; permission_host_cpu_get_record; permission_host_cpu_get_by_uuid; permission_host_cpu_get_uuid; permission_host_cpu_get_host; permission_host_cpu_get_number; permission_host_cpu_get_vendor; permission_host_cpu_get_speed; permission_host_cpu_get_modelname; permission_host_cpu_get_family; permission_host_cpu_get_model; permission_host_cpu_get_stepping; permission_host_cpu_get_flags; permission_host_cpu_get_features; permission_host_cpu_get_utilisation; permission_host_cpu_get_other_config; permission_host_cpu_set_other_config; permission_host_cpu_add_to_other_config; permission_host_cpu_remove_from_other_config; permission_host_cpu_get_all; permission_host_cpu_get_all_records_where; permission_host_cpu_get_all_records; permission_network_get_record; permission_network_get_by_uuid; permission_network_create; permission_network_destroy; permission_network_get_by_name_label; permission_network_get_uuid; permission_network_get_name_label; permission_network_get_name_description; permission_network_get_allowed_operations; permission_network_get_current_operations; permission_network_get_VIFs; permission_network_get_PIFs; permission_network_get_MTU; permission_network_get_other_config; permission_network_get_bridge; permission_network_get_managed; permission_network_get_blobs; permission_network_get_tags; permission_network_get_default_locking_mode; permission_network_get_assigned_ips; permission_network_get_purpose; permission_network_set_name_label; permission_network_set_name_description; permission_network_set_MTU; permission_network_set_other_config; permission_network_add_to_other_config; permission_network_add_to_other_config_key_folder; permission_network_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_add_to_other_config_key_XenCenterCreateInProgress; permission_network_remove_from_other_config; permission_network_remove_from_other_config_key_folder; permission_network_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_network_remove_from_other_config_key_XenCenterCreateInProgress; permission_network_set_tags; permission_network_add_tags; permission_network_remove_tags; permission_network_attach; permission_network_pool_introduce; permission_network_create_new_blob; permission_network_set_default_locking_mode; permission_network_attach_for_vm; permission_network_detach_for_vm; permission_network_get_all; permission_network_get_all_records_where; permission_network_get_all_records; permission_VIF_get_record; permission_VIF_get_by_uuid; permission_VIF_create; permission_VIF_destroy; permission_VIF_get_uuid; permission_VIF_get_allowed_operations; permission_VIF_get_current_operations; permission_VIF_get_device; permission_VIF_get_network; permission_VIF_get_VM; permission_VIF_get_MAC; permission_VIF_get_MTU; permission_VIF_get_other_config; permission_VIF_get_currently_attached; permission_VIF_get_status_code; permission_VIF_get_status_detail; permission_VIF_get_runtime_properties; permission_VIF_get_qos_algorithm_type; permission_VIF_get_qos_algorithm_params; permission_VIF_get_qos_supported_algorithms; permission_VIF_get_metrics; permission_VIF_get_MAC_autogenerated; permission_VIF_get_locking_mode; permission_VIF_get_ipv4_allowed; permission_VIF_get_ipv6_allowed; permission_VIF_get_ipv4_configuration_mode; permission_VIF_get_ipv4_addresses; permission_VIF_get_ipv4_gateway; permission_VIF_get_ipv6_configuration_mode; permission_VIF_get_ipv6_addresses; permission_VIF_get_ipv6_gateway; permission_VIF_set_other_config; permission_VIF_add_to_other_config; permission_VIF_remove_from_other_config; permission_VIF_set_qos_algorithm_type; permission_VIF_set_qos_algorithm_params; permission_VIF_add_to_qos_algorithm_params; permission_VIF_remove_from_qos_algorithm_params; permission_VIF_plug; permission_VIF_unplug; permission_VIF_unplug_force; permission_VIF_move; permission_VIF_set_locking_mode; permission_VIF_set_ipv4_allowed; permission_VIF_add_ipv4_allowed; permission_VIF_remove_ipv4_allowed; permission_VIF_set_ipv6_allowed; permission_VIF_add_ipv6_allowed; permission_VIF_remove_ipv6_allowed; permission_VIF_configure_ipv4; permission_VIF_configure_ipv6; permission_VIF_get_all; permission_VIF_get_all_records_where; permission_VIF_get_all_records; permission_VIF_metrics_get_record; permission_VIF_metrics_get_by_uuid; permission_VIF_metrics_get_uuid; permission_VIF_metrics_get_io_read_kbs; permission_VIF_metrics_get_io_write_kbs; permission_VIF_metrics_get_last_updated; permission_VIF_metrics_get_other_config; permission_VIF_metrics_set_other_config; permission_VIF_metrics_add_to_other_config; permission_VIF_metrics_remove_from_other_config; permission_VIF_metrics_get_all; permission_VIF_metrics_get_all_records_where; permission_VIF_metrics_get_all_records; permission_PIF_get_record; permission_PIF_get_by_uuid; permission_PIF_get_uuid; permission_PIF_get_device; permission_PIF_get_network; permission_PIF_get_host; permission_PIF_get_MAC; permission_PIF_get_MTU; permission_PIF_get_VLAN; permission_PIF_get_metrics; permission_PIF_get_physical; permission_PIF_get_currently_attached; permission_PIF_get_ip_configuration_mode; permission_PIF_get_IP; permission_PIF_get_netmask; permission_PIF_get_gateway; permission_PIF_get_DNS; permission_PIF_get_bond_slave_of; permission_PIF_get_bond_master_of; permission_PIF_get_VLAN_master_of; permission_PIF_get_VLAN_slave_of; permission_PIF_get_management; permission_PIF_get_other_config; permission_PIF_get_disallow_unplug; permission_PIF_get_tunnel_access_PIF_of; permission_PIF_get_tunnel_transport_PIF_of; permission_PIF_get_ipv6_configuration_mode; permission_PIF_get_IPv6; permission_PIF_get_ipv6_gateway; permission_PIF_get_primary_address_type; permission_PIF_get_managed; permission_PIF_get_properties; permission_PIF_get_capabilities; permission_PIF_get_igmp_snooping_status; permission_PIF_get_sriov_physical_PIF_of; permission_PIF_get_sriov_logical_PIF_of; permission_PIF_get_PCI; permission_PIF_set_other_config; permission_PIF_add_to_other_config; permission_PIF_remove_from_other_config; permission_PIF_create_VLAN; permission_PIF_destroy; permission_PIF_reconfigure_ip; permission_PIF_reconfigure_ipv6; permission_PIF_set_primary_address_type; permission_PIF_scan; permission_PIF_introduce; permission_PIF_forget; permission_PIF_unplug; permission_PIF_set_disallow_unplug; permission_PIF_plug; permission_PIF_pool_introduce; permission_PIF_db_introduce; permission_PIF_db_forget; permission_PIF_set_property; permission_PIF_get_all; permission_PIF_get_all_records_where; permission_PIF_get_all_records; permission_PIF_metrics_get_record; permission_PIF_metrics_get_by_uuid; permission_PIF_metrics_get_uuid; permission_PIF_metrics_get_io_read_kbs; permission_PIF_metrics_get_io_write_kbs; permission_PIF_metrics_get_carrier; permission_PIF_metrics_get_vendor_id; permission_PIF_metrics_get_vendor_name; permission_PIF_metrics_get_device_id; permission_PIF_metrics_get_device_name; permission_PIF_metrics_get_speed; permission_PIF_metrics_get_duplex; permission_PIF_metrics_get_pci_bus_path; permission_PIF_metrics_get_last_updated; permission_PIF_metrics_get_other_config; permission_PIF_metrics_set_other_config; permission_PIF_metrics_add_to_other_config; permission_PIF_metrics_remove_from_other_config; permission_PIF_metrics_get_all; permission_PIF_metrics_get_all_records_where; permission_PIF_metrics_get_all_records; permission_Bond_get_record; permission_Bond_get_by_uuid; permission_Bond_get_uuid; permission_Bond_get_master; permission_Bond_get_slaves; permission_Bond_get_other_config; permission_Bond_get_primary_slave; permission_Bond_get_mode; permission_Bond_get_properties; permission_Bond_get_links_up; permission_Bond_get_auto_update_mac; permission_Bond_set_other_config; permission_Bond_add_to_other_config; permission_Bond_remove_from_other_config; permission_Bond_create; permission_Bond_destroy; permission_Bond_set_mode; permission_Bond_set_property; permission_Bond_get_all; permission_Bond_get_all_records_where; permission_Bond_get_all_records; permission_VLAN_get_record; permission_VLAN_get_by_uuid; permission_VLAN_get_uuid; permission_VLAN_get_tagged_PIF; permission_VLAN_get_untagged_PIF; permission_VLAN_get_tag; permission_VLAN_get_other_config; permission_VLAN_set_other_config; permission_VLAN_add_to_other_config; permission_VLAN_remove_from_other_config; permission_VLAN_pool_introduce; permission_VLAN_create; permission_VLAN_destroy; permission_VLAN_get_all; permission_VLAN_get_all_records_where; permission_VLAN_get_all_records; permission_SM_get_record; permission_SM_get_by_uuid; permission_SM_get_by_name_label; permission_SM_get_uuid; permission_SM_get_name_label; permission_SM_get_name_description; permission_SM_get_type; permission_SM_get_vendor; permission_SM_get_copyright; permission_SM_get_version; permission_SM_get_required_api_version; permission_SM_get_configuration; permission_SM_get_capabilities; permission_SM_get_features; permission_SM_get_other_config; permission_SM_get_driver_filename; permission_SM_get_required_cluster_stack; permission_SM_set_other_config; permission_SM_add_to_other_config; permission_SM_remove_from_other_config; permission_SM_get_all; permission_SM_get_all_records_where; permission_SM_get_all_records; permission_SR_get_record; permission_SR_get_by_uuid; permission_SR_get_by_name_label; permission_SR_get_uuid; permission_SR_get_name_label; permission_SR_get_name_description; permission_SR_get_allowed_operations; permission_SR_get_current_operations; permission_SR_get_VDIs; permission_SR_get_PBDs; permission_SR_get_virtual_allocation; permission_SR_get_physical_utilisation; permission_SR_get_physical_size; permission_SR_get_type; permission_SR_get_content_type; permission_SR_get_shared; permission_SR_get_other_config; permission_SR_get_tags; permission_SR_get_sm_config; permission_SR_get_blobs; permission_SR_get_local_cache_enabled; permission_SR_get_introduced_by; permission_SR_get_clustered; permission_SR_get_is_tools_sr; permission_SR_set_other_config; permission_SR_add_to_other_config; permission_SR_add_to_other_config_key_folder; permission_SR_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_remove_from_other_config; permission_SR_remove_from_other_config_key_folder; permission_SR_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_SR_set_tags; permission_SR_add_tags; permission_SR_remove_tags; permission_SR_set_sm_config; permission_SR_add_to_sm_config; permission_SR_remove_from_sm_config; permission_SR_create; permission_SR_introduce; permission_SR_make; permission_SR_destroy; permission_SR_forget; permission_SR_update; permission_SR_get_supported_types; permission_SR_scan; permission_SR_probe; permission_SR_probe_ext; permission_SR_set_shared; permission_SR_set_name_label; permission_SR_set_name_description; permission_SR_create_new_blob; permission_SR_set_physical_size; permission_SR_assert_can_host_ha_statefile; permission_SR_assert_supports_database_replication; permission_SR_enable_database_replication; permission_SR_disable_database_replication; permission_SR_get_data_sources; permission_SR_record_data_source; permission_SR_query_data_source; permission_SR_forget_data_source_archives; permission_SR_get_live_hosts; permission_SR_get_all; permission_SR_get_all_records_where; permission_SR_get_all_records; permission_LVHD_get_record; permission_LVHD_get_by_uuid; permission_LVHD_get_uuid; permission_VDI_get_record; permission_VDI_get_by_uuid; permission_VDI_create; permission_VDI_destroy; permission_VDI_get_by_name_label; permission_VDI_get_uuid; permission_VDI_get_name_label; permission_VDI_get_name_description; permission_VDI_get_allowed_operations; permission_VDI_get_current_operations; permission_VDI_get_SR; permission_VDI_get_VBDs; permission_VDI_get_crash_dumps; permission_VDI_get_virtual_size; permission_VDI_get_physical_utilisation; permission_VDI_get_type; permission_VDI_get_sharable; permission_VDI_get_read_only; permission_VDI_get_other_config; permission_VDI_get_storage_lock; permission_VDI_get_location; permission_VDI_get_managed; permission_VDI_get_missing; permission_VDI_get_parent; permission_VDI_get_xenstore_data; permission_VDI_get_sm_config; permission_VDI_get_is_a_snapshot; permission_VDI_get_snapshot_of; permission_VDI_get_snapshots; permission_VDI_get_snapshot_time; permission_VDI_get_tags; permission_VDI_get_allow_caching; permission_VDI_get_on_boot; permission_VDI_get_metadata_of_pool; permission_VDI_get_metadata_latest; permission_VDI_get_is_tools_iso; permission_VDI_get_cbt_enabled; permission_VDI_set_other_config; permission_VDI_add_to_other_config; permission_VDI_add_to_other_config_key_folder; permission_VDI_add_to_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_remove_from_other_config; permission_VDI_remove_from_other_config_key_folder; permission_VDI_remove_from_other_config_key_XenCenter_CustomFields_WILDCHAR; permission_VDI_set_xenstore_data; permission_VDI_add_to_xenstore_data; permission_VDI_remove_from_xenstore_data; permission_VDI_set_sm_config; permission_VDI_add_to_sm_config; permission_VDI_remove_from_sm_config; permission_VDI_set_tags; permission_VDI_add_tags; permission_VDI_remove_tags; permission_VDI_snapshot; permission_VDI_clone; permission_VDI_resize; permission_VDI_resize_online; permission_VDI_introduce; permission_VDI_pool_introduce; permission_VDI_update; permission_VDI_copy; permission_VDI_force_unlock; permission_VDI_forget; permission_VDI_set_sharable; permission_VDI_set_read_only; permission_VDI_set_name_label; permission_VDI_set_name_description; permission_VDI_generate_config; permission_VDI_set_on_boot; permission_VDI_set_allow_caching; permission_VDI_open_database; permission_VDI_checksum; permission_VDI_read_database_pool_uuid; permission_VDI_pool_migrate; permission_VDI_enable_cbt; permission_VDI_disable_cbt; permission_VDI_data_destroy; permission_VDI_list_changed_blocks; permission_VDI_get_nbd_info; permission_VDI_get_all; permission_VDI_get_all_records_where; permission_VDI_get_all_records; permission_VBD_get_record; permission_VBD_get_by_uuid; permission_VBD_create; permission_VBD_destroy; permission_VBD_get_uuid; permission_VBD_get_allowed_operations; permission_VBD_get_current_operations; permission_VBD_get_VM; permission_VBD_get_VDI; permission_VBD_get_device; permission_VBD_get_userdevice; permission_VBD_get_bootable; permission_VBD_get_mode; permission_VBD_get_type; permission_VBD_get_unpluggable; permission_VBD_get_storage_lock; permission_VBD_get_empty; permission_VBD_get_other_config; permission_VBD_get_currently_attached; permission_VBD_get_status_code; permission_VBD_get_status_detail; permission_VBD_get_runtime_properties; permission_VBD_get_qos_algorithm_type; permission_VBD_get_qos_algorithm_params; permission_VBD_get_qos_supported_algorithms; permission_VBD_get_metrics; permission_VBD_set_userdevice; permission_VBD_set_bootable; permission_VBD_set_type; permission_VBD_set_unpluggable; permission_VBD_set_other_config; permission_VBD_add_to_other_config; permission_VBD_remove_from_other_config; permission_VBD_set_qos_algorithm_type; permission_VBD_set_qos_algorithm_params; permission_VBD_add_to_qos_algorithm_params; permission_VBD_remove_from_qos_algorithm_params; permission_VBD_eject; permission_VBD_insert; permission_VBD_plug; permission_VBD_unplug; permission_VBD_unplug_force; permission_VBD_unplug_force_no_safety_check; permission_VBD_assert_attachable; permission_VBD_pause; permission_VBD_unpause; permission_VBD_set_mode; permission_VBD_get_all; permission_VBD_get_all_records_where; permission_VBD_get_all_records; permission_VBD_metrics_get_record; permission_VBD_metrics_get_by_uuid; permission_VBD_metrics_get_uuid; permission_VBD_metrics_get_io_read_kbs; permission_VBD_metrics_get_io_write_kbs; permission_VBD_metrics_get_last_updated; permission_VBD_metrics_get_other_config; permission_VBD_metrics_set_other_config; permission_VBD_metrics_add_to_other_config; permission_VBD_metrics_remove_from_other_config; permission_VBD_metrics_get_all; permission_VBD_metrics_get_all_records_where; permission_VBD_metrics_get_all_records; permission_PBD_get_record; permission_PBD_get_by_uuid; permission_PBD_create; permission_PBD_destroy; permission_PBD_get_uuid; permission_PBD_get_host; permission_PBD_get_SR; permission_PBD_get_device_config; permission_PBD_get_currently_attached; permission_PBD_get_other_config; permission_PBD_set_other_config; permission_PBD_add_to_other_config; permission_PBD_remove_from_other_config; permission_PBD_plug; permission_PBD_unplug; permission_PBD_set_device_config; permission_PBD_get_all; permission_PBD_get_all_records_where; permission_PBD_get_all_records; permission_crashdump_get_record; permission_crashdump_get_by_uuid; permission_crashdump_get_uuid; permission_crashdump_get_VM; permission_crashdump_get_VDI; permission_crashdump_get_other_config; permission_crashdump_set_other_config; permission_crashdump_add_to_other_config; permission_crashdump_remove_from_other_config; permission_crashdump_destroy; permission_crashdump_get_all; permission_crashdump_get_all_records_where; permission_crashdump_get_all_records; permission_VTPM_get_record; permission_VTPM_get_by_uuid; permission_VTPM_create; permission_VTPM_destroy; permission_VTPM_get_uuid; permission_VTPM_get_VM; permission_VTPM_get_backend; permission_console_get_record; permission_console_get_by_uuid; permission_console_create; permission_console_destroy; permission_console_get_uuid; permission_console_get_protocol; permission_console_get_location; permission_console_get_VM; permission_console_get_other_config; permission_console_set_other_config; permission_console_add_to_other_config; permission_console_remove_from_other_config; permission_console_get_all; permission_console_get_all_records_where; permission_console_get_all_records; permission_user_get_record; permission_user_get_by_uuid; permission_user_get_uuid; permission_user_get_short_name; permission_user_get_fullname; permission_user_get_other_config; permission_blob_get_record; permission_blob_get_by_uuid; permission_blob_get_by_name_label; permission_blob_get_uuid; permission_blob_get_name_label; permission_blob_get_name_description; permission_blob_get_size; permission_blob_get_public; permission_blob_get_last_updated; permission_blob_get_mime_type; permission_blob_set_name_label; permission_blob_set_name_description; permission_blob_set_public; permission_blob_create; permission_blob_destroy; permission_blob_get_all; permission_blob_get_all_records_where; permission_blob_get_all_records; permission_message_create; permission_message_destroy; permission_message_get; permission_message_get_all; permission_message_get_since; permission_message_get_record; permission_message_get_by_uuid; permission_message_get_all_records; permission_message_get_all_records_where; permission_secret_get_record; permission_secret_get_by_uuid; permission_secret_create; permission_secret_destroy; permission_secret_get_uuid; permission_secret_get_value; permission_secret_get_other_config; permission_secret_set_value; permission_secret_set_other_config; permission_secret_add_to_other_config; permission_secret_remove_from_other_config; permission_secret_introduce; permission_secret_get_all; permission_secret_get_all_records_where; permission_secret_get_all_records; permission_tunnel_get_record; permission_tunnel_get_by_uuid; permission_tunnel_get_uuid; permission_tunnel_get_access_PIF; permission_tunnel_get_transport_PIF; permission_tunnel_get_status; permission_tunnel_get_other_config; permission_tunnel_get_protocol; permission_tunnel_set_status; permission_tunnel_add_to_status; permission_tunnel_remove_from_status; permission_tunnel_set_other_config; permission_tunnel_add_to_other_config; permission_tunnel_remove_from_other_config; permission_tunnel_set_protocol; permission_tunnel_create; permission_tunnel_destroy; permission_tunnel_get_all; permission_tunnel_get_all_records_where; permission_tunnel_get_all_records; permission_network_sriov_get_record; permission_network_sriov_get_by_uuid; permission_network_sriov_get_uuid; permission_network_sriov_get_physical_PIF; permission_network_sriov_get_logical_PIF; permission_network_sriov_get_requires_reboot; permission_network_sriov_get_configuration_mode; permission_network_sriov_create; permission_network_sriov_destroy; permission_network_sriov_get_remaining_capacity; permission_network_sriov_get_all; permission_network_sriov_get_all_records_where; permission_network_sriov_get_all_records; permission_PCI_get_record; permission_PCI_get_by_uuid; permission_PCI_get_uuid; permission_PCI_get_class_name; permission_PCI_get_vendor_name; permission_PCI_get_device_name; permission_PCI_get_host; permission_PCI_get_pci_id; permission_PCI_get_dependencies; permission_PCI_get_other_config; permission_PCI_get_subsystem_vendor_name; permission_PCI_get_subsystem_device_name; permission_PCI_get_driver_name; permission_PCI_set_other_config; permission_PCI_add_to_other_config; permission_PCI_remove_from_other_config; permission_PCI_get_all; permission_PCI_get_all_records_where; permission_PCI_get_all_records; permission_PGPU_get_record; permission_PGPU_get_by_uuid; permission_PGPU_get_uuid; permission_PGPU_get_PCI; permission_PGPU_get_GPU_group; permission_PGPU_get_host; permission_PGPU_get_other_config; permission_PGPU_get_supported_VGPU_types; permission_PGPU_get_enabled_VGPU_types; permission_PGPU_get_resident_VGPUs; permission_PGPU_get_supported_VGPU_max_capacities; permission_PGPU_get_dom0_access; permission_PGPU_get_is_system_display_device; permission_PGPU_get_compatibility_metadata; permission_PGPU_set_other_config; permission_PGPU_add_to_other_config; permission_PGPU_remove_from_other_config; permission_PGPU_add_enabled_VGPU_types; permission_PGPU_remove_enabled_VGPU_types; permission_PGPU_set_enabled_VGPU_types; permission_PGPU_set_GPU_group; permission_PGPU_get_remaining_capacity; permission_PGPU_enable_dom0_access; permission_PGPU_disable_dom0_access; permission_PGPU_get_all; permission_PGPU_get_all_records_where; permission_PGPU_get_all_records; permission_GPU_group_get_record; permission_GPU_group_get_by_uuid; permission_GPU_group_get_by_name_label; permission_GPU_group_get_uuid; permission_GPU_group_get_name_label; permission_GPU_group_get_name_description; permission_GPU_group_get_PGPUs; permission_GPU_group_get_VGPUs; permission_GPU_group_get_GPU_types; permission_GPU_group_get_other_config; permission_GPU_group_get_allocation_algorithm; permission_GPU_group_get_supported_VGPU_types; permission_GPU_group_get_enabled_VGPU_types; permission_GPU_group_set_name_label; permission_GPU_group_set_name_description; permission_GPU_group_set_other_config; permission_GPU_group_add_to_other_config; permission_GPU_group_remove_from_other_config; permission_GPU_group_set_allocation_algorithm; permission_GPU_group_create; permission_GPU_group_destroy; permission_GPU_group_update_enabled_VGPU_types; permission_GPU_group_update_supported_VGPU_types; permission_GPU_group_get_remaining_capacity; permission_GPU_group_get_all; permission_GPU_group_get_all_records_where; permission_GPU_group_get_all_records; permission_VGPU_get_record; permission_VGPU_get_by_uuid; permission_VGPU_get_uuid; permission_VGPU_get_VM; permission_VGPU_get_GPU_group; permission_VGPU_get_device; permission_VGPU_get_currently_attached; permission_VGPU_get_other_config; permission_VGPU_get_type; permission_VGPU_get_resident_on; permission_VGPU_get_scheduled_to_be_resident_on; permission_VGPU_get_compatibility_metadata; permission_VGPU_get_extra_args; permission_VGPU_get_PCI; permission_VGPU_set_other_config; permission_VGPU_add_to_other_config; permission_VGPU_remove_from_other_config; permission_VGPU_set_extra_args; permission_VGPU_create; permission_VGPU_destroy; permission_VGPU_get_all; permission_VGPU_get_all_records_where; permission_VGPU_get_all_records; permission_VGPU_type_get_record; permission_VGPU_type_get_by_uuid; permission_VGPU_type_get_uuid; permission_VGPU_type_get_vendor_name; permission_VGPU_type_get_model_name; permission_VGPU_type_get_framebuffer_size; permission_VGPU_type_get_max_heads; permission_VGPU_type_get_max_resolution_x; permission_VGPU_type_get_max_resolution_y; permission_VGPU_type_get_supported_on_PGPUs; permission_VGPU_type_get_enabled_on_PGPUs; permission_VGPU_type_get_VGPUs; permission_VGPU_type_get_supported_on_GPU_groups; permission_VGPU_type_get_enabled_on_GPU_groups; permission_VGPU_type_get_implementation; permission_VGPU_type_get_identifier; permission_VGPU_type_get_experimental; permission_VGPU_type_get_compatible_types_in_vm; permission_VGPU_type_get_all; permission_VGPU_type_get_all_records_where; permission_VGPU_type_get_all_records; permission_PVS_site_get_record; permission_PVS_site_get_by_uuid; permission_PVS_site_get_by_name_label; permission_PVS_site_get_uuid; permission_PVS_site_get_name_label; permission_PVS_site_get_name_description; permission_PVS_site_get_PVS_uuid; permission_PVS_site_get_cache_storage; permission_PVS_site_get_servers; permission_PVS_site_get_proxies; permission_PVS_site_set_name_label; permission_PVS_site_set_name_description; permission_PVS_site_introduce; permission_PVS_site_forget; permission_PVS_site_set_PVS_uuid; permission_PVS_site_get_all; permission_PVS_site_get_all_records_where; permission_PVS_site_get_all_records; permission_PVS_server_get_record; permission_PVS_server_get_by_uuid; permission_PVS_server_get_uuid; permission_PVS_server_get_addresses; permission_PVS_server_get_first_port; permission_PVS_server_get_last_port; permission_PVS_server_get_site; permission_PVS_server_introduce; permission_PVS_server_forget; permission_PVS_server_get_all; permission_PVS_server_get_all_records_where; permission_PVS_server_get_all_records; permission_PVS_proxy_get_record; permission_PVS_proxy_get_by_uuid; permission_PVS_proxy_get_uuid; permission_PVS_proxy_get_site; permission_PVS_proxy_get_VIF; permission_PVS_proxy_get_currently_attached; permission_PVS_proxy_get_status; permission_PVS_proxy_create; permission_PVS_proxy_destroy; permission_PVS_proxy_get_all; permission_PVS_proxy_get_all_records_where; permission_PVS_proxy_get_all_records; permission_PVS_cache_storage_get_record; permission_PVS_cache_storage_get_by_uuid; permission_PVS_cache_storage_create; permission_PVS_cache_storage_destroy; permission_PVS_cache_storage_get_uuid; permission_PVS_cache_storage_get_host; permission_PVS_cache_storage_get_SR; permission_PVS_cache_storage_get_site; permission_PVS_cache_storage_get_size; permission_PVS_cache_storage_get_VDI; permission_PVS_cache_storage_get_all; permission_PVS_cache_storage_get_all_records_where; permission_PVS_cache_storage_get_all_records; permission_Feature_get_record; permission_Feature_get_by_uuid; permission_Feature_get_by_name_label; permission_Feature_get_uuid; permission_Feature_get_name_label; permission_Feature_get_name_description; permission_Feature_get_enabled; permission_Feature_get_experimental; permission_Feature_get_version; permission_Feature_get_host; permission_Feature_get_all; permission_Feature_get_all_records_where; permission_Feature_get_all_records; permission_SDN_controller_get_record; permission_SDN_controller_get_by_uuid; permission_SDN_controller_get_uuid; permission_SDN_controller_get_protocol; permission_SDN_controller_get_address; permission_SDN_controller_get_port; permission_SDN_controller_introduce; permission_SDN_controller_forget; permission_SDN_controller_get_all; permission_SDN_controller_get_all_records_where; permission_SDN_controller_get_all_records; permission_PUSB_get_record; permission_PUSB_get_by_uuid; permission_PUSB_get_uuid; permission_PUSB_get_USB_group; permission_PUSB_get_host; permission_PUSB_get_path; permission_PUSB_get_vendor_id; permission_PUSB_get_vendor_desc; permission_PUSB_get_product_id; permission_PUSB_get_product_desc; permission_PUSB_get_serial; permission_PUSB_get_version; permission_PUSB_get_description; permission_PUSB_get_passthrough_enabled; permission_PUSB_get_other_config; permission_PUSB_get_speed; permission_PUSB_get_all; permission_PUSB_get_all_records_where; permission_PUSB_get_all_records; permission_USB_group_get_record; permission_USB_group_get_by_uuid; permission_USB_group_get_by_name_label; permission_USB_group_get_uuid; permission_USB_group_get_name_label; permission_USB_group_get_name_description; permission_USB_group_get_PUSBs; permission_USB_group_get_VUSBs; permission_USB_group_get_other_config; permission_USB_group_get_all; permission_USB_group_get_all_records_where; permission_USB_group_get_all_records; permission_VUSB_get_record; permission_VUSB_get_by_uuid; permission_VUSB_get_uuid; permission_VUSB_get_allowed_operations; permission_VUSB_get_current_operations; permission_VUSB_get_VM; permission_VUSB_get_USB_group; permission_VUSB_get_other_config; permission_VUSB_get_currently_attached; permission_VUSB_get_all; permission_VUSB_get_all_records_where; permission_VUSB_get_all_records; permission_Cluster_get_record; permission_Cluster_get_by_uuid; permission_Cluster_get_uuid; permission_Cluster_get_cluster_hosts; permission_Cluster_get_pending_forget; permission_Cluster_get_cluster_token; permission_Cluster_get_cluster_stack; permission_Cluster_get_allowed_operations; permission_Cluster_get_current_operations; permission_Cluster_get_pool_auto_join; permission_Cluster_get_token_timeout; permission_Cluster_get_token_timeout_coefficient; permission_Cluster_get_cluster_config; permission_Cluster_get_other_config; permission_Cluster_set_other_config; permission_Cluster_add_to_other_config; permission_Cluster_remove_from_other_config; permission_Cluster_create; permission_Cluster_destroy; permission_Cluster_get_network; permission_Cluster_pool_create; permission_Cluster_pool_force_destroy; permission_Cluster_pool_destroy; permission_Cluster_pool_resync; permission_Cluster_get_all; permission_Cluster_get_all_records_where; permission_Cluster_get_all_records; permission_Cluster_host_get_record; permission_Cluster_host_get_by_uuid; permission_Cluster_host_get_uuid; permission_Cluster_host_get_cluster; permission_Cluster_host_get_host; permission_Cluster_host_get_enabled; permission_Cluster_host_get_PIF; permission_Cluster_host_get_joined; permission_Cluster_host_get_allowed_operations; permission_Cluster_host_get_current_operations; permission_Cluster_host_get_other_config; permission_Cluster_host_create; permission_Cluster_host_destroy; permission_Cluster_host_enable; permission_Cluster_host_force_destroy; permission_Cluster_host_disable; permission_Cluster_host_get_all; permission_Cluster_host_get_all_records_where; permission_Cluster_host_get_all_records; permission_Certificate_get_record; permission_Certificate_get_by_uuid; permission_Certificate_get_uuid; permission_Certificate_get_host; permission_Certificate_get_not_before; permission_Certificate_get_not_after; permission_Certificate_get_fingerprint; permission_Certificate_get_all; permission_Certificate_get_all_records_where; permission_Certificate_get_all_records; permission_Diagnostics_gc_compact; permission_Diagnostics_gc_stats; permission_Diagnostics_db_stats; permission_Diagnostics_network_stats; permission_http_get_services; permission_http_connect_migrate; permission_http_get_services_xenops; permission_http_post_services_xenops; permission_http_put_services_xenops; permission_http_get_services_sm; permission_http_post_services_sm; permission_http_put_services_sm; permission_http_put_import; permission_http_put_import_metadata; permission_http_put_import_raw_vdi; permission_http_get_export; permission_http_get_export_metadata; permission_http_get_export_raw_vdi; permission_http_connect_console; permission_http_connect_console_ws; permission_http_get_root; permission_http_post_cli; permission_http_get_host_logs_download; permission_http_put_pool_patch_upload; permission_http_get_pool_patch_download; permission_http_put_oem_patch_stream; permission_http_get_vncsnapshot; permission_http_get_system_status; permission_http_vm_rrd; permission_http_host_rrd; permission_http_sr_rrd; permission_http_rrd_updates; permission_http_get_blob; permission_http_put_blob; permission_http_put_messages; permission_http_get_wlb_report; permission_http_get_wlb_diagnostics; permission_http_get_audit_log; permission_http_post_root; permission_http_post_json; permission_http_post_root_options; permission_http_post_json_options; permission_http_post_jsonrpc; permission_http_post_jsonrpc_options; permission_http_get_pool_update_download; permission_task_destroy_any; ]

let all_static_permissions = permissions_of_role_pool_admin
let get_refs permissions = List.map (fun p->Ref.of_string (Ref.ref_prefix ^ p.role_uuid)) permissions

let role_vm_power_admin = 
  { (* 1/6 *)
  role_uuid = "7955168d-7bec-10ed-105f-c6a7e6e63249";
  role_name_label = "vm-power-admin";
  role_name_description = "The VM Power Administrator role has full access to VM and template management and can choose where to start VMs and use the dynamic memory control and VM snapshot features";
  role_subroles = get_refs permissions_of_role_vm_power_admin;
  }
let role_vm_admin = 
  { (* 2/6 *)
  role_uuid = "aaa00ab5-7340-bfbc-0d1b-7cf342639a6e";
  role_name_label = "vm-admin";
  role_name_description = "The VM Administrator role can manage VMs and templates";
  role_subroles = get_refs permissions_of_role_vm_admin;
  }
let role_vm_operator = 
  { (* 3/6 *)
  role_uuid = "fb8d4ff9-310c-a959-0613-54101535d3d5";
  role_name_label = "vm-operator";
  role_name_description = "The VM Operator role can use VMs and interact with VM consoles";
  role_subroles = get_refs permissions_of_role_vm_operator;
  }
let role_read_only = 
  { (* 4/6 *)
  role_uuid = "7233b8e3-eacb-d7da-2c95-f2e581cdbf4e";
  role_name_label = "read-only";
  role_name_description = "The Read-Only role can log in with basic read-only access";
  role_subroles = get_refs permissions_of_role_read_only;
  }
let role_pool_admin = 
  { (* 5/6 *)
  role_uuid = "0165f154-ba3e-034e-6b27-5d271af109ba";
  role_name_label = "pool-admin";
  role_name_description = "The Pool Administrator role has full access to all features and settings, including accessing Dom0 and managing subjects, roles and external authentication";
  role_subroles = get_refs permissions_of_role_pool_admin;
  }
let role_pool_operator = 
  { (* 6/6 *)
  role_uuid = "b9ce9791-0604-50cd-0649-09b3284c7dfd";
  role_name_label = "pool-operator";
  role_name_description = "The Pool Operator role manages host- and pool-wide resources, including setting up storage, creating resource pools and managing patches, high availability (HA) and workload balancing (WLB)";
  role_subroles = get_refs permissions_of_role_pool_operator;
  }
let all_static_roles = 
[
  role_vm_power_admin;
  role_vm_admin;
  role_vm_operator;
  role_read_only;
  role_pool_admin;
  role_pool_operator;
]

