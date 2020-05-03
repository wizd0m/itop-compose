TYPE=VIEW
query=select distinct `EmergencyChange_ApprovedChange`.`id` AS `id`,`EmergencyChange_Ticket`.`operational_status` AS `operational_status`,`EmergencyChange_Ticket`.`ref` AS `ref`,`EmergencyChange_Ticket`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`EmergencyChange_Ticket`.`caller_id` AS `caller_id`,`Person_caller_id_Contact`.`name` AS `caller_name`,`EmergencyChange_Ticket`.`team_id` AS `team_id`,`Team_team_id_Contact`.`email` AS `team_name`,`EmergencyChange_Ticket`.`agent_id` AS `agent_id`,`Person_agent_id_Contact`.`name` AS `agent_name`,`EmergencyChange_Ticket`.`title` AS `title`,`EmergencyChange_Ticket`.`description` AS `description`,`EmergencyChange_Ticket`.`start_date` AS `start_date`,`EmergencyChange_Ticket`.`end_date` AS `end_date`,`EmergencyChange_Ticket`.`last_update` AS `last_update`,`EmergencyChange_Ticket`.`close_date` AS `close_date`,`EmergencyChange_Ticket`.`private_log` AS `private_log`,`EmergencyChange_Change`.`status` AS `status`,`EmergencyChange_Change`.`reason` AS `reason`,`EmergencyChange_Change`.`requestor_id` AS `requestor_id`,`Person_requestor_id_Contact`.`email` AS `requestor_email`,`EmergencyChange_Change`.`creation_date` AS `creation_date`,`EmergencyChange_Change`.`impact` AS `impact`,`EmergencyChange_Change`.`supervisor_group_id` AS `supervisor_group_id`,`Team_supervisor_group_id_Contact`.`name` AS `supervisor_group_name`,`EmergencyChange_Change`.`supervisor_id` AS `supervisor_id`,`Person_supervisor_id_Contact`.`email` AS `supervisor_email`,`EmergencyChange_Change`.`manager_group_id` AS `manager_group_id`,`Team_manager_group_id_Contact`.`name` AS `manager_group_name`,`EmergencyChange_Change`.`manager_id` AS `manager_id`,`Person_manager_id_Contact`.`email` AS `manager_email`,`EmergencyChange_Change`.`outage` AS `outage`,`EmergencyChange_Change`.`fallback` AS `fallback`,`EmergencyChange_Change`.`parent_id` AS `parent_id`,`Change_parent_id_Ticket`.`ref` AS `parent_name`,`EmergencyChange_ApprovedChange`.`approval_date` AS `approval_date`,`EmergencyChange_ApprovedChange`.`approval_comment` AS `approval_comment`,`EmergencyChange_Ticket`.`finalclass` AS `finalclass`,cast(concat(coalesce(`EmergencyChange_Ticket`.`ref`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Person_caller_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_caller_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `caller_id_friendlyname`,coalesce((`Person_caller_id_Contact`.`status` = \'inactive\'),0) AS `caller_id_obsolescence_flag`,cast(concat(coalesce(`Team_team_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_Contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_agent_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_agent_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `agent_id_friendlyname`,coalesce((`Person_agent_id_Contact`.`status` = \'inactive\'),0) AS `agent_id_obsolescence_flag`,cast(concat(coalesce(`Person_requestor_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_requestor_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `requestor_id_friendlyname`,coalesce((`Person_requestor_id_Contact`.`status` = \'inactive\'),0) AS `requestor_id_obsolescence_flag`,cast(concat(coalesce(`Team_supervisor_group_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`,coalesce((`Team_supervisor_group_id_Contact`.`status` = \'inactive\'),0) AS `supervisor_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_supervisor_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_supervisor_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_id_friendlyname`,coalesce((`Person_supervisor_id_Contact`.`status` = \'inactive\'),0) AS `supervisor_id_obsolescence_flag`,cast(concat(coalesce(`Team_manager_group_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_group_id_friendlyname`,coalesce((`Team_manager_group_id_Contact`.`status` = \'inactive\'),0) AS `manager_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_manager_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_manager_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_id_friendlyname`,coalesce((`Person_manager_id_Contact`.`status` = \'inactive\'),0) AS `manager_id_obsolescence_flag`,cast(concat(coalesce(`Change_parent_id_Ticket`.`ref`,\'\')) as char charset utf8mb4) AS `parent_id_friendlyname`,`Change_parent_id_Ticket`.`finalclass` AS `parent_id_finalclass_recall`,`EmergencyChange_Ticket`.`description_format` AS `EmergencyChangedescription_format`,`EmergencyChange_Ticket`.`private_log_index` AS `EmergencyChangeprivate_log_index` from ((`itop27`.`change_approved` `EmergencyChange_ApprovedChange` join ((((((`itop27`.`change` `EmergencyChange_Change` left join (`itop27`.`person` `Person_requestor_id` join `itop27`.`contact` `Person_requestor_id_Contact` on((`Person_requestor_id`.`id` = `Person_requestor_id_Contact`.`id`))) on((`EmergencyChange_Change`.`requestor_id` = `Person_requestor_id`.`id`))) left join `itop27`.`contact` `Team_supervisor_group_id_Contact` on((`EmergencyChange_Change`.`supervisor_group_id` = `Team_supervisor_group_id_Contact`.`id`))) left join (`itop27`.`person` `Person_supervisor_id` join `itop27`.`contact` `Person_supervisor_id_Contact` on((`Person_supervisor_id`.`id` = `Person_supervisor_id_Contact`.`id`))) on((`EmergencyChange_Change`.`supervisor_id` = `Person_supervisor_id`.`id`))) left join `itop27`.`contact` `Team_manager_group_id_Contact` on((`EmergencyChange_Change`.`manager_group_id` = `Team_manager_group_id_Contact`.`id`))) left join (`itop27`.`person` `Person_manager_id` join `itop27`.`contact` `Person_manager_id_Contact` on((`Person_manager_id`.`id` = `Person_manager_id_Contact`.`id`))) on((`EmergencyChange_Change`.`manager_id` = `Person_manager_id`.`id`))) left join `itop27`.`ticket` `Change_parent_id_Ticket` on((`EmergencyChange_Change`.`parent_id` = `Change_parent_id_Ticket`.`id`))) on((`EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Change`.`id`))) join ((((`itop27`.`ticket` `EmergencyChange_Ticket` join `itop27`.`organization` `Organization_org_id` on((`EmergencyChange_Ticket`.`org_id` = `Organization_org_id`.`id`))) left join (`itop27`.`person` `Person_caller_id` join `itop27`.`contact` `Person_caller_id_Contact` on((`Person_caller_id`.`id` = `Person_caller_id_Contact`.`id`))) on((`EmergencyChange_Ticket`.`caller_id` = `Person_caller_id`.`id`))) left join `itop27`.`contact` `Team_team_id_Contact` on((`EmergencyChange_Ticket`.`team_id` = `Team_team_id_Contact`.`id`))) left join (`itop27`.`person` `Person_agent_id` join `itop27`.`contact` `Person_agent_id_Contact` on((`Person_agent_id`.`id` = `Person_agent_id_Contact`.`id`))) on((`EmergencyChange_Ticket`.`agent_id` = `Person_agent_id`.`id`))) on((`EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Ticket`.`id`))) where (coalesce((`Team_team_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Team_supervisor_group_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Team_manager_group_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Change_parent_id_Ticket`.`finalclass` in (\'RoutineChange\',\'ApprovedChange\',\'NormalChange\',\'EmergencyChange\',\'Change\')),1) and coalesce((`EmergencyChange_ApprovedChange`.`finalclass` = \'EmergencyChange\'),1))
md5=90161608809f55ed7d9079edcd795835
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `EmergencyChange_ApprovedChange`.`id` AS `id`,\n `EmergencyChange_Ticket`.`operational_status` AS `operational_status`,\n `EmergencyChange_Ticket`.`ref` AS `ref`,\n `EmergencyChange_Ticket`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `org_name`,\n `EmergencyChange_Ticket`.`caller_id` AS `caller_id`,\n `Person_caller_id_Contact`.`name` AS `caller_name`,\n `EmergencyChange_Ticket`.`team_id` AS `team_id`,\n `Team_team_id_Contact`.`email` AS `team_name`,\n `EmergencyChange_Ticket`.`agent_id` AS `agent_id`,\n `Person_agent_id_Contact`.`name` AS `agent_name`,\n `EmergencyChange_Ticket`.`title` AS `title`,\n `EmergencyChange_Ticket`.`description` AS `description`,\n `EmergencyChange_Ticket`.`start_date` AS `start_date`,\n `EmergencyChange_Ticket`.`end_date` AS `end_date`,\n `EmergencyChange_Ticket`.`last_update` AS `last_update`,\n `EmergencyChange_Ticket`.`close_date` AS `close_date`,\n `EmergencyChange_Ticket`.`private_log` AS `private_log`,\n `EmergencyChange_Change`.`status` AS `status`,\n `EmergencyChange_Change`.`reason` AS `reason`,\n `EmergencyChange_Change`.`requestor_id` AS `requestor_id`,\n `Person_requestor_id_Contact`.`email` AS `requestor_email`,\n `EmergencyChange_Change`.`creation_date` AS `creation_date`,\n `EmergencyChange_Change`.`impact` AS `impact`,\n `EmergencyChange_Change`.`supervisor_group_id` AS `supervisor_group_id`,\n `Team_supervisor_group_id_Contact`.`name` AS `supervisor_group_name`,\n `EmergencyChange_Change`.`supervisor_id` AS `supervisor_id`,\n `Person_supervisor_id_Contact`.`email` AS `supervisor_email`,\n `EmergencyChange_Change`.`manager_group_id` AS `manager_group_id`,\n `Team_manager_group_id_Contact`.`name` AS `manager_group_name`,\n `EmergencyChange_Change`.`manager_id` AS `manager_id`,\n `Person_manager_id_Contact`.`email` AS `manager_email`,\n `EmergencyChange_Change`.`outage` AS `outage`,\n `EmergencyChange_Change`.`fallback` AS `fallback`,\n `EmergencyChange_Change`.`parent_id` AS `parent_id`,\n `Change_parent_id_Ticket`.`ref` AS `parent_name`,\n `EmergencyChange_ApprovedChange`.`approval_date` AS `approval_date`,\n `EmergencyChange_ApprovedChange`.`approval_comment` AS `approval_comment`,\n `EmergencyChange_Ticket`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`EmergencyChange_Ticket`.`ref`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_caller_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_caller_id_Contact`.`name`, \'\')) AS CHAR) AS `caller_id_friendlyname`,\n COALESCE((`Person_caller_id_Contact`.`status` = \'inactive\'), 0) AS `caller_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Team_team_id_Contact`.`name`, \'\')) AS CHAR) AS `team_id_friendlyname`,\n COALESCE((`Team_team_id_Contact`.`status` = \'inactive\'), 0) AS `team_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_agent_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_agent_id_Contact`.`name`, \'\')) AS CHAR) AS `agent_id_friendlyname`,\n COALESCE((`Person_agent_id_Contact`.`status` = \'inactive\'), 0) AS `agent_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_requestor_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_requestor_id_Contact`.`name`, \'\')) AS CHAR) AS `requestor_id_friendlyname`,\n COALESCE((`Person_requestor_id_Contact`.`status` = \'inactive\'), 0) AS `requestor_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Team_supervisor_group_id_Contact`.`name`, \'\')) AS CHAR) AS `supervisor_group_id_friendlyname`,\n COALESCE((`Team_supervisor_group_id_Contact`.`status` = \'inactive\'), 0) AS `supervisor_group_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_supervisor_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_supervisor_id_Contact`.`name`, \'\')) AS CHAR) AS `supervisor_id_friendlyname`,\n COALESCE((`Person_supervisor_id_Contact`.`status` = \'inactive\'), 0) AS `supervisor_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Team_manager_group_id_Contact`.`name`, \'\')) AS CHAR) AS `manager_group_id_friendlyname`,\n COALESCE((`Team_manager_group_id_Contact`.`status` = \'inactive\'), 0) AS `manager_group_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_manager_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_manager_id_Contact`.`name`, \'\')) AS CHAR) AS `manager_id_friendlyname`,\n COALESCE((`Person_manager_id_Contact`.`status` = \'inactive\'), 0) AS `manager_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Change_parent_id_Ticket`.`ref`, \'\')) AS CHAR) AS `parent_id_friendlyname`,\n `Change_parent_id_Ticket`.`finalclass` AS `parent_id_finalclass_recall`,\n `EmergencyChange_Ticket`.`description_format` AS `EmergencyChangedescription_format`,\n `EmergencyChange_Ticket`.`private_log_index` AS `EmergencyChangeprivate_log_index`\n FROM \n   `change_approved` AS `EmergencyChange_ApprovedChange`\n   INNER JOIN (\n      `change` AS `EmergencyChange_Change` \n      LEFT JOIN (\n         `person` AS `Person_requestor_id` \n         INNER JOIN \n            `contact` AS `Person_requestor_id_Contact`\n          ON `Person_requestor_id`.`id` = `Person_requestor_id_Contact`.`id`\n      ) ON `EmergencyChange_Change`.`requestor_id` = `Person_requestor_id`.`id`\n      LEFT JOIN \n         `contact` AS `Team_supervisor_group_id_Contact`\n       ON `EmergencyChange_Change`.`supervisor_group_id` = `Team_supervisor_group_id_Contact`.`id`\n      LEFT JOIN (\n         `person` AS `Person_supervisor_id` \n         INNER JOIN \n            `contact` AS `Person_supervisor_id_Contact`\n          ON `Person_supervisor_id`.`id` = `Person_supervisor_id_Contact`.`id`\n      ) ON `EmergencyChange_Change`.`supervisor_id` = `Person_supervisor_id`.`id`\n      LEFT JOIN \n         `contact` AS `Team_manager_group_id_Contact`\n       ON `EmergencyChange_Change`.`manager_group_id` = `Team_manager_group_id_Contact`.`id`\n      LEFT JOIN (\n         `person` AS `Person_manager_id` \n         INNER JOIN \n            `contact` AS `Person_manager_id_Contact`\n          ON `Person_manager_id`.`id` = `Person_manager_id_Contact`.`id`\n      ) ON `EmergencyChange_Change`.`manager_id` = `Person_manager_id`.`id`\n      LEFT JOIN \n         `ticket` AS `Change_parent_id_Ticket`\n       ON `EmergencyChange_Change`.`parent_id` = `Change_parent_id_Ticket`.`id`\n   ) ON `EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Change`.`id`\n   INNER JOIN (\n      `ticket` AS `EmergencyChange_Ticket` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `EmergencyChange_Ticket`.`org_id` = `Organization_org_id`.`id`\n      LEFT JOIN (\n         `person` AS `Person_caller_id` \n         INNER JOIN \n            `contact` AS `Person_caller_id_Contact`\n          ON `Person_caller_id`.`id` = `Person_caller_id_Contact`.`id`\n      ) ON `EmergencyChange_Ticket`.`caller_id` = `Person_caller_id`.`id`\n      LEFT JOIN \n         `contact` AS `Team_team_id_Contact`\n       ON `EmergencyChange_Ticket`.`team_id` = `Team_team_id_Contact`.`id`\n      LEFT JOIN (\n         `person` AS `Person_agent_id` \n         INNER JOIN \n            `contact` AS `Person_agent_id_Contact`\n          ON `Person_agent_id`.`id` = `Person_agent_id_Contact`.`id`\n      ) ON `EmergencyChange_Ticket`.`agent_id` = `Person_agent_id`.`id`\n   ) ON `EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Ticket`.`id`\n WHERE ((((COALESCE((`Team_team_id_Contact`.`finalclass` IN (\'Team\')), 1) AND COALESCE((`Team_supervisor_group_id_Contact`.`finalclass` IN (\'Team\')), 1)) AND COALESCE((`Team_manager_group_id_Contact`.`finalclass` IN (\'Team\')), 1)) AND COALESCE((`Change_parent_id_Ticket`.`finalclass` IN (\'RoutineChange\', \'ApprovedChange\', \'NormalChange\', \'EmergencyChange\', \'Change\')), 1)) AND COALESCE((`EmergencyChange_ApprovedChange`.`finalclass` IN (\'EmergencyChange\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `EmergencyChange_ApprovedChange`.`id` AS `id`,`EmergencyChange_Ticket`.`operational_status` AS `operational_status`,`EmergencyChange_Ticket`.`ref` AS `ref`,`EmergencyChange_Ticket`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`EmergencyChange_Ticket`.`caller_id` AS `caller_id`,`Person_caller_id_Contact`.`name` AS `caller_name`,`EmergencyChange_Ticket`.`team_id` AS `team_id`,`Team_team_id_Contact`.`email` AS `team_name`,`EmergencyChange_Ticket`.`agent_id` AS `agent_id`,`Person_agent_id_Contact`.`name` AS `agent_name`,`EmergencyChange_Ticket`.`title` AS `title`,`EmergencyChange_Ticket`.`description` AS `description`,`EmergencyChange_Ticket`.`start_date` AS `start_date`,`EmergencyChange_Ticket`.`end_date` AS `end_date`,`EmergencyChange_Ticket`.`last_update` AS `last_update`,`EmergencyChange_Ticket`.`close_date` AS `close_date`,`EmergencyChange_Ticket`.`private_log` AS `private_log`,`EmergencyChange_Change`.`status` AS `status`,`EmergencyChange_Change`.`reason` AS `reason`,`EmergencyChange_Change`.`requestor_id` AS `requestor_id`,`Person_requestor_id_Contact`.`email` AS `requestor_email`,`EmergencyChange_Change`.`creation_date` AS `creation_date`,`EmergencyChange_Change`.`impact` AS `impact`,`EmergencyChange_Change`.`supervisor_group_id` AS `supervisor_group_id`,`Team_supervisor_group_id_Contact`.`name` AS `supervisor_group_name`,`EmergencyChange_Change`.`supervisor_id` AS `supervisor_id`,`Person_supervisor_id_Contact`.`email` AS `supervisor_email`,`EmergencyChange_Change`.`manager_group_id` AS `manager_group_id`,`Team_manager_group_id_Contact`.`name` AS `manager_group_name`,`EmergencyChange_Change`.`manager_id` AS `manager_id`,`Person_manager_id_Contact`.`email` AS `manager_email`,`EmergencyChange_Change`.`outage` AS `outage`,`EmergencyChange_Change`.`fallback` AS `fallback`,`EmergencyChange_Change`.`parent_id` AS `parent_id`,`Change_parent_id_Ticket`.`ref` AS `parent_name`,`EmergencyChange_ApprovedChange`.`approval_date` AS `approval_date`,`EmergencyChange_ApprovedChange`.`approval_comment` AS `approval_comment`,`EmergencyChange_Ticket`.`finalclass` AS `finalclass`,cast(concat(coalesce(`EmergencyChange_Ticket`.`ref`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Person_caller_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_caller_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `caller_id_friendlyname`,coalesce((`Person_caller_id_Contact`.`status` = \'inactive\'),0) AS `caller_id_obsolescence_flag`,cast(concat(coalesce(`Team_team_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_Contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_agent_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_agent_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `agent_id_friendlyname`,coalesce((`Person_agent_id_Contact`.`status` = \'inactive\'),0) AS `agent_id_obsolescence_flag`,cast(concat(coalesce(`Person_requestor_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_requestor_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `requestor_id_friendlyname`,coalesce((`Person_requestor_id_Contact`.`status` = \'inactive\'),0) AS `requestor_id_obsolescence_flag`,cast(concat(coalesce(`Team_supervisor_group_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`,coalesce((`Team_supervisor_group_id_Contact`.`status` = \'inactive\'),0) AS `supervisor_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_supervisor_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_supervisor_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_id_friendlyname`,coalesce((`Person_supervisor_id_Contact`.`status` = \'inactive\'),0) AS `supervisor_id_obsolescence_flag`,cast(concat(coalesce(`Team_manager_group_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_group_id_friendlyname`,coalesce((`Team_manager_group_id_Contact`.`status` = \'inactive\'),0) AS `manager_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_manager_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_manager_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_id_friendlyname`,coalesce((`Person_manager_id_Contact`.`status` = \'inactive\'),0) AS `manager_id_obsolescence_flag`,cast(concat(coalesce(`Change_parent_id_Ticket`.`ref`,\'\')) as char charset utf8mb4) AS `parent_id_friendlyname`,`Change_parent_id_Ticket`.`finalclass` AS `parent_id_finalclass_recall`,`EmergencyChange_Ticket`.`description_format` AS `EmergencyChangedescription_format`,`EmergencyChange_Ticket`.`private_log_index` AS `EmergencyChangeprivate_log_index` from ((`itop27`.`change_approved` `EmergencyChange_ApprovedChange` join ((((((`itop27`.`change` `EmergencyChange_Change` left join (`itop27`.`person` `Person_requestor_id` join `itop27`.`contact` `Person_requestor_id_Contact` on((`Person_requestor_id`.`id` = `Person_requestor_id_Contact`.`id`))) on((`EmergencyChange_Change`.`requestor_id` = `Person_requestor_id`.`id`))) left join `itop27`.`contact` `Team_supervisor_group_id_Contact` on((`EmergencyChange_Change`.`supervisor_group_id` = `Team_supervisor_group_id_Contact`.`id`))) left join (`itop27`.`person` `Person_supervisor_id` join `itop27`.`contact` `Person_supervisor_id_Contact` on((`Person_supervisor_id`.`id` = `Person_supervisor_id_Contact`.`id`))) on((`EmergencyChange_Change`.`supervisor_id` = `Person_supervisor_id`.`id`))) left join `itop27`.`contact` `Team_manager_group_id_Contact` on((`EmergencyChange_Change`.`manager_group_id` = `Team_manager_group_id_Contact`.`id`))) left join (`itop27`.`person` `Person_manager_id` join `itop27`.`contact` `Person_manager_id_Contact` on((`Person_manager_id`.`id` = `Person_manager_id_Contact`.`id`))) on((`EmergencyChange_Change`.`manager_id` = `Person_manager_id`.`id`))) left join `itop27`.`ticket` `Change_parent_id_Ticket` on((`EmergencyChange_Change`.`parent_id` = `Change_parent_id_Ticket`.`id`))) on((`EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Change`.`id`))) join ((((`itop27`.`ticket` `EmergencyChange_Ticket` join `itop27`.`organization` `Organization_org_id` on((`EmergencyChange_Ticket`.`org_id` = `Organization_org_id`.`id`))) left join (`itop27`.`person` `Person_caller_id` join `itop27`.`contact` `Person_caller_id_Contact` on((`Person_caller_id`.`id` = `Person_caller_id_Contact`.`id`))) on((`EmergencyChange_Ticket`.`caller_id` = `Person_caller_id`.`id`))) left join `itop27`.`contact` `Team_team_id_Contact` on((`EmergencyChange_Ticket`.`team_id` = `Team_team_id_Contact`.`id`))) left join (`itop27`.`person` `Person_agent_id` join `itop27`.`contact` `Person_agent_id_Contact` on((`Person_agent_id`.`id` = `Person_agent_id_Contact`.`id`))) on((`EmergencyChange_Ticket`.`agent_id` = `Person_agent_id`.`id`))) on((`EmergencyChange_ApprovedChange`.`id` = `EmergencyChange_Ticket`.`id`))) where (coalesce((`Team_team_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Team_supervisor_group_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Team_manager_group_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`Change_parent_id_Ticket`.`finalclass` in (\'RoutineChange\',\'ApprovedChange\',\'NormalChange\',\'EmergencyChange\',\'Change\')),1) and coalesce((`EmergencyChange_ApprovedChange`.`finalclass` = \'EmergencyChange\'),1))