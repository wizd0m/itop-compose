TYPE=VIEW
query=select distinct `_lnkdocumenttoerror`.`link_id` AS `id`,`_lnkdocumenttoerror`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,`_lnkdocumenttoerror`.`error_id` AS `error_id`,`KnownError_error_id_knownerror`.`name` AS `error_name`,`_lnkdocumenttoerror`.`link_type` AS `link_type`,cast(concat(coalesce(`_lnkdocumenttoerror`.`link_type`,\'\')) as char charset utf8mb4) AS `friendlyname`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag`,cast(concat(coalesce(`KnownError_error_id_knownerror`.`name`,\'\')) as char charset utf8mb4) AS `error_id_friendlyname` from ((`itop`.`lnkdocumenttoerror` `_lnkdocumenttoerror` join `itop`.`document` `Document_document_id_document` on((`_lnkdocumenttoerror`.`document_id` = `Document_document_id_document`.`id`))) join `itop`.`knownerror` `KnownError_error_id_knownerror` on((`_lnkdocumenttoerror`.`error_id` = `KnownError_error_id_knownerror`.`id`))) where 1
md5=90be5d75cec4e41e31b77716444279da
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:07
create-version=1
source=SELECT DISTINCT `_lnkdocumenttoerror`.`link_id` AS `id`, `_lnkdocumenttoerror`.`document_id` AS `document_id`, `Document_document_id_document`.`name` AS `document_name`, `_lnkdocumenttoerror`.`error_id` AS `error_id`, `KnownError_error_id_knownerror`.`name` AS `error_name`, `_lnkdocumenttoerror`.`link_type` AS `link_type`, CAST(CONCAT(COALESCE(`_lnkdocumenttoerror`.`link_type`, \'\')) AS CHAR) AS `friendlyname`, IF((`Document_document_id_document`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document_document_id_document`.`name`, \'\')) AS CHAR)) AS `document_id_friendlyname`, `Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`, COALESCE((`Document_document_id_document`.`status` = \'obsolete\'), 0) AS `document_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`KnownError_error_id_knownerror`.`name`, \'\')) AS CHAR) AS `error_id_friendlyname` FROM `lnkdocumenttoerror` AS `_lnkdocumenttoerror`INNER JOIN `document` AS `Document_document_id_document` ON `_lnkdocumenttoerror`.`document_id` = `Document_document_id_document`.`id`INNER JOIN `knownerror` AS `KnownError_error_id_knownerror` ON `_lnkdocumenttoerror`.`error_id` = `KnownError_error_id_knownerror`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkdocumenttoerror`.`link_id` AS `id`,`_lnkdocumenttoerror`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,`_lnkdocumenttoerror`.`error_id` AS `error_id`,`KnownError_error_id_knownerror`.`name` AS `error_name`,`_lnkdocumenttoerror`.`link_type` AS `link_type`,cast(concat(coalesce(`_lnkdocumenttoerror`.`link_type`,\'\')) as char charset utf8mb4) AS `friendlyname`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag`,cast(concat(coalesce(`KnownError_error_id_knownerror`.`name`,\'\')) as char charset utf8mb4) AS `error_id_friendlyname` from ((`itop`.`lnkdocumenttoerror` `_lnkdocumenttoerror` join `itop`.`document` `Document_document_id_document` on((`_lnkdocumenttoerror`.`document_id` = `Document_document_id_document`.`id`))) join `itop`.`knownerror` `KnownError_error_id_knownerror` on((`_lnkdocumenttoerror`.`error_id` = `KnownError_error_id_knownerror`.`id`))) where 1
