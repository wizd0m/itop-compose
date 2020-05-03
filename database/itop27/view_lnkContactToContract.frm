TYPE=VIEW
query=select distinct `lnkContactToContract`.`id` AS `id`,`lnkContactToContract`.`contract_id` AS `contract_id`,`Contract_contract_id`.`name` AS `contract_name`,`lnkContactToContract`.`contact_id` AS `contact_id`,`Contact_contact_id`.`name` AS `contact_name`,cast(concat(coalesce(`lnkContactToContract`.`contract_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkContactToContract`.`contact_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Contract_contract_id`.`name`,\'\')) as char charset utf8mb4) AS `contract_id_friendlyname`,`Contract_contract_id`.`finalclass` AS `contract_id_finalclass_recall`,if((`Contact_contact_id`.`finalclass` in (\'Team\',\'Contact\')),cast(concat(coalesce(`Contact_contact_id`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Contact_contact_id_poly_Person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Contact_contact_id`.`name`,\'\')) as char charset utf8mb4)) AS `contact_id_friendlyname`,`Contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`,coalesce((`Contact_contact_id`.`status` = \'inactive\'),0) AS `contact_id_obsolescence_flag` from ((`itop27`.`lnkcontacttocontract` `lnkContactToContract` join `itop27`.`contract` `Contract_contract_id` on((`lnkContactToContract`.`contract_id` = `Contract_contract_id`.`id`))) join (`itop27`.`contact` `Contact_contact_id` left join `itop27`.`person` `Contact_contact_id_poly_Person` on((`Contact_contact_id`.`id` = `Contact_contact_id_poly_Person`.`id`))) on((`lnkContactToContract`.`contact_id` = `Contact_contact_id`.`id`))) where 1
md5=f1eee46efdc9dae9a49e9bb259dc5f43
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `lnkContactToContract`.`id` AS `id`,\n `lnkContactToContract`.`contract_id` AS `contract_id`,\n `Contract_contract_id`.`name` AS `contract_name`,\n `lnkContactToContract`.`contact_id` AS `contact_id`,\n `Contact_contact_id`.`name` AS `contact_name`,\n CAST(CONCAT(COALESCE(`lnkContactToContract`.`contract_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`lnkContactToContract`.`contact_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Contract_contract_id`.`name`, \'\')) AS CHAR) AS `contract_id_friendlyname`,\n `Contract_contract_id`.`finalclass` AS `contract_id_finalclass_recall`,\n IF((`Contact_contact_id`.`finalclass` IN (\'Team\', \'Contact\')), CAST(CONCAT(COALESCE(`Contact_contact_id`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Contact_contact_id_poly_Person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Contact_contact_id`.`name`, \'\')) AS CHAR)) AS `contact_id_friendlyname`,\n `Contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`,\n COALESCE((`Contact_contact_id`.`status` = \'inactive\'), 0) AS `contact_id_obsolescence_flag`\n FROM \n   `lnkcontacttocontract` AS `lnkContactToContract`\n   INNER JOIN \n      `contract` AS `Contract_contract_id`\n    ON `lnkContactToContract`.`contract_id` = `Contract_contract_id`.`id`\n   INNER JOIN (\n      `contact` AS `Contact_contact_id` \n      LEFT JOIN \n         `person` AS `Contact_contact_id_poly_Person`\n       ON `Contact_contact_id`.`id` = `Contact_contact_id_poly_Person`.`id`\n   ) ON `lnkContactToContract`.`contact_id` = `Contact_contact_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkContactToContract`.`id` AS `id`,`lnkContactToContract`.`contract_id` AS `contract_id`,`Contract_contract_id`.`name` AS `contract_name`,`lnkContactToContract`.`contact_id` AS `contact_id`,`Contact_contact_id`.`name` AS `contact_name`,cast(concat(coalesce(`lnkContactToContract`.`contract_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkContactToContract`.`contact_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Contract_contract_id`.`name`,\'\')) as char charset utf8mb4) AS `contract_id_friendlyname`,`Contract_contract_id`.`finalclass` AS `contract_id_finalclass_recall`,if((`Contact_contact_id`.`finalclass` in (\'Team\',\'Contact\')),cast(concat(coalesce(`Contact_contact_id`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Contact_contact_id_poly_Person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Contact_contact_id`.`name`,\'\')) as char charset utf8mb4)) AS `contact_id_friendlyname`,`Contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`,coalesce((`Contact_contact_id`.`status` = \'inactive\'),0) AS `contact_id_obsolescence_flag` from ((`itop27`.`lnkcontacttocontract` `lnkContactToContract` join `itop27`.`contract` `Contract_contract_id` on((`lnkContactToContract`.`contract_id` = `Contract_contract_id`.`id`))) join (`itop27`.`contact` `Contact_contact_id` left join `itop27`.`person` `Contact_contact_id_poly_Person` on((`Contact_contact_id`.`id` = `Contact_contact_id_poly_Person`.`id`))) on((`lnkContactToContract`.`contact_id` = `Contact_contact_id`.`id`))) where 1