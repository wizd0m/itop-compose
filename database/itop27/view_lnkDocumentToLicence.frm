TYPE=VIEW
query=select distinct `lnkDocumentToLicence`.`id` AS `id`,`lnkDocumentToLicence`.`licence_id` AS `licence_id`,`Licence_licence_id`.`name` AS `licence_name`,`lnkDocumentToLicence`.`document_id` AS `document_id`,`Document_document_id`.`name` AS `document_name`,cast(concat(coalesce(`lnkDocumentToLicence`.`licence_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkDocumentToLicence`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Licence_licence_id`.`name`,\'\')) as char charset utf8mb4) AS `licence_id_friendlyname`,`Licence_licence_id`.`finalclass` AS `licence_id_finalclass_recall`,coalesce(((`Licence_licence_id`.`perpetual` = \'no\') and (isnull(`Licence_licence_id`.`end_date`) = 0) and (`Licence_licence_id`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `licence_id_obsolescence_flag`,if((`Document_document_id`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`itop27`.`lnkdocumenttolicence` `lnkDocumentToLicence` join `itop27`.`licence` `Licence_licence_id` on((`lnkDocumentToLicence`.`licence_id` = `Licence_licence_id`.`id`))) join `itop27`.`document` `Document_document_id` on((`lnkDocumentToLicence`.`document_id` = `Document_document_id`.`id`))) where 1
md5=8aa338b73f66685c1bb6b0785a361243
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `lnkDocumentToLicence`.`id` AS `id`,\n `lnkDocumentToLicence`.`licence_id` AS `licence_id`,\n `Licence_licence_id`.`name` AS `licence_name`,\n `lnkDocumentToLicence`.`document_id` AS `document_id`,\n `Document_document_id`.`name` AS `document_name`,\n CAST(CONCAT(COALESCE(`lnkDocumentToLicence`.`licence_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`lnkDocumentToLicence`.`document_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Licence_licence_id`.`name`, \'\')) AS CHAR) AS `licence_id_friendlyname`,\n `Licence_licence_id`.`finalclass` AS `licence_id_finalclass_recall`,\n COALESCE((((`Licence_licence_id`.`perpetual` = \'no\') AND (ISNULL(`Licence_licence_id`.`end_date`) = 0)) AND (`Licence_licence_id`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `licence_id_obsolescence_flag`,\n IF((`Document_document_id`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document_document_id`.`name`, \'\')) AS CHAR)) AS `document_id_friendlyname`,\n `Document_document_id`.`finalclass` AS `document_id_finalclass_recall`,\n COALESCE((`Document_document_id`.`status` = \'obsolete\'), 0) AS `document_id_obsolescence_flag`\n FROM \n   `lnkdocumenttolicence` AS `lnkDocumentToLicence`\n   INNER JOIN \n      `licence` AS `Licence_licence_id`\n    ON `lnkDocumentToLicence`.`licence_id` = `Licence_licence_id`.`id`\n   INNER JOIN \n      `document` AS `Document_document_id`\n    ON `lnkDocumentToLicence`.`document_id` = `Document_document_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkDocumentToLicence`.`id` AS `id`,`lnkDocumentToLicence`.`licence_id` AS `licence_id`,`Licence_licence_id`.`name` AS `licence_name`,`lnkDocumentToLicence`.`document_id` AS `document_id`,`Document_document_id`.`name` AS `document_name`,cast(concat(coalesce(`lnkDocumentToLicence`.`licence_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkDocumentToLicence`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Licence_licence_id`.`name`,\'\')) as char charset utf8mb4) AS `licence_id_friendlyname`,`Licence_licence_id`.`finalclass` AS `licence_id_finalclass_recall`,coalesce(((`Licence_licence_id`.`perpetual` = \'no\') and (isnull(`Licence_licence_id`.`end_date`) = 0) and (`Licence_licence_id`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `licence_id_obsolescence_flag`,if((`Document_document_id`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`itop27`.`lnkdocumenttolicence` `lnkDocumentToLicence` join `itop27`.`licence` `Licence_licence_id` on((`lnkDocumentToLicence`.`licence_id` = `Licence_licence_id`.`id`))) join `itop27`.`document` `Document_document_id` on((`lnkDocumentToLicence`.`document_id` = `Document_document_id`.`id`))) where 1
