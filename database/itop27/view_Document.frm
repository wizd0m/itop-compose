TYPE=VIEW
query=select distinct `Document`.`id` AS `id`,`Document`.`name` AS `name`,`Document`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Document`.`documenttype_id` AS `documenttype_id`,`DocumentType_documenttype_id_Typology`.`name` AS `documenttype_name`,`Document`.`version` AS `version`,`Document`.`description` AS `description`,`Document`.`status` AS `status`,`Document`.`finalclass` AS `finalclass`,if((`Document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname`,coalesce((`Document`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Document`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`DocumentType_documenttype_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `documenttype_id_friendlyname` from ((`itop27`.`document` `Document` join `itop27`.`organization` `Organization_org_id` on((`Document`.`org_id` = `Organization_org_id`.`id`))) left join `itop27`.`typology` `DocumentType_documenttype_id_Typology` on((`Document`.`documenttype_id` = `DocumentType_documenttype_id_Typology`.`id`))) where coalesce((`DocumentType_documenttype_id_Typology`.`finalclass` = \'DocumentType\'),1)
md5=f1a3b8615a9adf16af37a0b7a86e15d4
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Document`.`id` AS `id`,\n `Document`.`name` AS `name`,\n `Document`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `org_name`,\n `Document`.`documenttype_id` AS `documenttype_id`,\n `DocumentType_documenttype_id_Typology`.`name` AS `documenttype_name`,\n `Document`.`version` AS `version`,\n `Document`.`description` AS `description`,\n `Document`.`status` AS `status`,\n `Document`.`finalclass` AS `finalclass`,\n IF((`Document`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document`.`name`, \'\')) AS CHAR)) AS `friendlyname`,\n COALESCE((`Document`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `Document`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`DocumentType_documenttype_id_Typology`.`name`, \'\')) AS CHAR) AS `documenttype_id_friendlyname`\n FROM \n   `document` AS `Document`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `Document`.`org_id` = `Organization_org_id`.`id`\n   LEFT JOIN \n      `typology` AS `DocumentType_documenttype_id_Typology`\n    ON `Document`.`documenttype_id` = `DocumentType_documenttype_id_Typology`.`id`\n WHERE COALESCE((`DocumentType_documenttype_id_Typology`.`finalclass` IN (\'DocumentType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Document`.`id` AS `id`,`Document`.`name` AS `name`,`Document`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Document`.`documenttype_id` AS `documenttype_id`,`DocumentType_documenttype_id_Typology`.`name` AS `documenttype_name`,`Document`.`version` AS `version`,`Document`.`description` AS `description`,`Document`.`status` AS `status`,`Document`.`finalclass` AS `finalclass`,if((`Document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname`,coalesce((`Document`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Document`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`DocumentType_documenttype_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `documenttype_id_friendlyname` from ((`itop27`.`document` `Document` join `itop27`.`organization` `Organization_org_id` on((`Document`.`org_id` = `Organization_org_id`.`id`))) left join `itop27`.`typology` `DocumentType_documenttype_id_Typology` on((`Document`.`documenttype_id` = `DocumentType_documenttype_id_Typology`.`id`))) where coalesce((`DocumentType_documenttype_id_Typology`.`finalclass` = \'DocumentType\'),1)