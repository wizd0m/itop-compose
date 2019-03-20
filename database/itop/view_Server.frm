TYPE=VIEW
query=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_datacenterdevice`.`rack_id` AS `rack_id`,`Rack_rack_id_functionalci`.`name` AS `rack_name`,`_datacenterdevice`.`enclosure_id` AS `enclosure_id`,`Enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`,`_datacenterdevice`.`nb_u` AS `nb_u`,`_datacenterdevice`.`managementip` AS `managementip`,`_datacenterdevice`.`powera_id` AS `powerA_id`,`PowerConnection_powerA_id_functionalci`.`name` AS `powerA_name`,`_datacenterdevice`.`powerB_id` AS `powerB_id`,`PowerConnection_powerB_id_functionalci`.`name` AS `powerB_name`,`_datacenterdevice`.`redundancy` AS `redundancy`,`_server`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_server`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_server`.`oslicence_id` AS `oslicence_id`,`OSLicence_oslicence_id_licence`.`name` AS `oslicence_name`,`_server`.`cpu` AS `cpu`,`_server`.`ram` AS `ram`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`Rack_rack_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `rack_id_friendlyname`,coalesce((`Rack_rack_id_physicaldevice`.`status` = \'obsolete\'),0) AS `rack_id_obsolescence_flag`,cast(concat(coalesce(`Enclosure_enclosure_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `enclosure_id_friendlyname`,coalesce((`Enclosure_enclosure_id_physicaldevice`.`status` = \'obsolete\'),0) AS `enclosure_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerA_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `powerA_id_friendlyname`,`PowerConnection_powerA_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`,coalesce((`PowerConnection_powerA_id_physicaldevice`.`status` = \'obsolete\'),0) AS `powerA_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerB_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `powerB_id_friendlyname`,`PowerConnection_powerB_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`,coalesce((`PowerConnection_powerB_id_physicaldevice`.`status` = \'obsolete\'),0) AS `powerB_id_obsolescence_flag`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname`,cast(concat(coalesce(`OSLicence_oslicence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `oslicence_id_friendlyname`,coalesce(((`OSLicence_oslicence_id_licence`.`perpetual` = \'no\') and (isnull(`OSLicence_oslicence_id_licence`.`end_date`) = 0) and (`OSLicence_oslicence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `oslicence_id_obsolescence_flag` from ((((`itop`.`functionalci` `_functionalci` join `itop`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`itop`.`physicaldevice` `_physicaldevice` left join `itop`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `itop`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `itop`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join ((((`itop`.`datacenterdevice` `_datacenterdevice` left join (`itop`.`functionalci` `Rack_rack_id_functionalci` join `itop`.`physicaldevice` `Rack_rack_id_physicaldevice` on((`Rack_rack_id_functionalci`.`id` = `Rack_rack_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`rack_id` = `Rack_rack_id_functionalci`.`id`))) left join (`itop`.`functionalci` `Enclosure_enclosure_id_functionalci` join `itop`.`physicaldevice` `Enclosure_enclosure_id_physicaldevice` on((`Enclosure_enclosure_id_functionalci`.`id` = `Enclosure_enclosure_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`enclosure_id` = `Enclosure_enclosure_id_functionalci`.`id`))) left join (`itop`.`functionalci` `PowerConnection_powerA_id_functionalci` join `itop`.`physicaldevice` `PowerConnection_powerA_id_physicaldevice` on((`PowerConnection_powerA_id_functionalci`.`id` = `PowerConnection_powerA_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`powera_id` = `PowerConnection_powerA_id_functionalci`.`id`))) left join (`itop`.`functionalci` `PowerConnection_powerB_id_functionalci` join `itop`.`physicaldevice` `PowerConnection_powerB_id_physicaldevice` on((`PowerConnection_powerB_id_functionalci`.`id` = `PowerConnection_powerB_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`powerB_id` = `PowerConnection_powerB_id_functionalci`.`id`))) on((`_functionalci`.`id` = `_datacenterdevice`.`id`))) join (((`itop`.`server` `_server` left join `itop`.`typology` `OSFamily_osfamily_id_typology` on((`_server`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) left join `itop`.`typology` `OSVersion_osversion_id_typology` on((`_server`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) left join `itop`.`licence` `OSLicence_oslicence_id_licence` on((`_server`.`oslicence_id` = `OSLicence_oslicence_id_licence`.`id`))) on((`_functionalci`.`id` = `_server`.`id`))) where (coalesce((`_functionalci`.`finalclass` = \'Server\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1) and coalesce((`Rack_rack_id_functionalci`.`finalclass` = \'Rack\'),1) and coalesce((`Enclosure_enclosure_id_functionalci`.`finalclass` = \'Enclosure\'),1) and coalesce((`PowerConnection_powerA_id_functionalci`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`PowerConnection_powerB_id_functionalci`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSLicence_oslicence_id_licence`.`finalclass` = \'OSLicence\'),1))
md5=1c89da3ab1a0eb6603848d170cd4dc7d
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:04
create-version=1
source=SELECT DISTINCT `_functionalci`.`id` AS `id`, `_functionalci`.`name` AS `name`, `_functionalci`.`description` AS `description`, `_functionalci`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_functionalci`.`business_criticity` AS `business_criticity`, `_functionalci`.`move2production` AS `move2production`, `_physicaldevice`.`serialnumber` AS `serialnumber`, `_physicaldevice`.`location_id` AS `location_id`, `Location_location_id_location`.`name` AS `location_name`, `_physicaldevice`.`status` AS `status`, `_physicaldevice`.`brand_id` AS `brand_id`, `Brand_brand_id_typology`.`name` AS `brand_name`, `_physicaldevice`.`model_id` AS `model_id`, `Model_model_id_typology`.`name` AS `model_name`, `_physicaldevice`.`asset_number` AS `asset_number`, `_physicaldevice`.`purchase_date` AS `purchase_date`, `_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `_datacenterdevice`.`rack_id` AS `rack_id`, `Rack_rack_id_functionalci`.`name` AS `rack_name`, `_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `Enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `_datacenterdevice`.`nb_u` AS `nb_u`, `_datacenterdevice`.`managementip` AS `managementip`, `_datacenterdevice`.`powera_id` AS `powerA_id`, `PowerConnection_powerA_id_functionalci`.`name` AS `powerA_name`, `_datacenterdevice`.`powerB_id` AS `powerB_id`, `PowerConnection_powerB_id_functionalci`.`name` AS `powerB_name`, `_datacenterdevice`.`redundancy` AS `redundancy`, `_server`.`osfamily_id` AS `osfamily_id`, `OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`, `_server`.`osversion_id` AS `osversion_id`, `OSVersion_osversion_id_typology`.`name` AS `osversion_name`, `_server`.`oslicence_id` AS `oslicence_id`, `OSLicence_oslicence_id_licence`.`name` AS `oslicence_name`, `_server`.`cpu` AS `cpu`, `_server`.`ram` AS `ram`, `_functionalci`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_functionalci`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_physicaldevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`, `_functionalci`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Location_location_id_location`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`, COALESCE((`Location_location_id_location`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`, CAST(CONCAT(COALESCE(`Model_model_id_typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname`, CAST(CONCAT(COALESCE(`Rack_rack_id_functionalci`.`name`, \'\')) AS CHAR) AS `rack_id_friendlyname`, COALESCE((`Rack_rack_id_physicaldevice`.`status` = \'obsolete\'), 0) AS `rack_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Enclosure_enclosure_id_functionalci`.`name`, \'\')) AS CHAR) AS `enclosure_id_friendlyname`, COALESCE((`Enclosure_enclosure_id_physicaldevice`.`status` = \'obsolete\'), 0) AS `enclosure_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`PowerConnection_powerA_id_functionalci`.`name`, \'\')) AS CHAR) AS `powerA_id_friendlyname`, `PowerConnection_powerA_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, COALESCE((`PowerConnection_powerA_id_physicaldevice`.`status` = \'obsolete\'), 0) AS `powerA_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`PowerConnection_powerB_id_functionalci`.`name`, \'\')) AS CHAR) AS `powerB_id_friendlyname`, `PowerConnection_powerB_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, COALESCE((`PowerConnection_powerB_id_physicaldevice`.`status` = \'obsolete\'), 0) AS `powerB_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`OSFamily_osfamily_id_typology`.`name`, \'\')) AS CHAR) AS `osfamily_id_friendlyname`, CAST(CONCAT(COALESCE(`OSVersion_osversion_id_typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname`, CAST(CONCAT(COALESCE(`OSLicence_oslicence_id_licence`.`name`, \'\')) AS CHAR) AS `oslicence_id_friendlyname`, COALESCE((((`OSLicence_oslicence_id_licence`.`perpetual` = \'no\') AND (ISNULL(`OSLicence_oslicence_id_licence`.`end_date`) = 0)) AND (`OSLicence_oslicence_id_licence`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `oslicence_id_obsolescence_flag` FROM `functionalci` AS `_functionalci`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_functionalci`.`org_id` = `Organization_org_id_organization`.`id`INNER JOIN (`physicaldevice` AS `_physicaldevice` LEFT JOIN `location` AS `Location_location_id_location` ON `_physicaldevice`.`location_id` = `Location_location_id_location`.`id`LEFT JOIN `typology` AS `Brand_brand_id_typology` ON `_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`LEFT JOIN `typology` AS `Model_model_id_typology` ON `_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`) ON `_functionalci`.`id` = `_physicaldevice`.`id`INNER JOIN (`datacenterdevice` AS `_datacenterdevice` LEFT JOIN (`functionalci` AS `Rack_rack_id_functionalci` INNER JOIN `physicaldevice` AS `Rack_rack_id_physicaldevice` ON `Rack_rack_id_functionalci`.`id` = `Rack_rack_id_physicaldevice`.`id`) ON `_datacenterdevice`.`rack_id` = `Rack_rack_id_functionalci`.`id`LEFT JOIN (`functionalci` AS `Enclosure_enclosure_id_functionalci` INNER JOIN `physicaldevice` AS `Enclosure_enclosure_id_physicaldevice` ON `Enclosure_enclosure_id_functionalci`.`id` = `Enclosure_enclosure_id_physicaldevice`.`id`) ON `_datacenterdevice`.`enclosure_id` = `Enclosure_enclosure_id_functionalci`.`id`LEFT JOIN (`functionalci` AS `PowerConnection_powerA_id_functionalci` INNER JOIN `physicaldevice` AS `PowerConnection_powerA_id_physicaldevice` ON `PowerConnection_powerA_id_functionalci`.`id` = `PowerConnection_powerA_id_physicaldevice`.`id`) ON `_datacenterdevice`.`powera_id` = `PowerConnection_powerA_id_functionalci`.`id`LEFT JOIN (`functionalci` AS `PowerConnection_powerB_id_functionalci` INNER JOIN `physicaldevice` AS `PowerConnection_powerB_id_physicaldevice` ON `PowerConnection_powerB_id_functionalci`.`id` = `PowerConnection_powerB_id_physicaldevice`.`id`) ON `_datacenterdevice`.`powerB_id` = `PowerConnection_powerB_id_functionalci`.`id`) ON `_functionalci`.`id` = `_datacenterdevice`.`id`INNER JOIN (`server` AS `_server` LEFT JOIN `typology` AS `OSFamily_osfamily_id_typology` ON `_server`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`LEFT JOIN `typology` AS `OSVersion_osversion_id_typology` ON `_server`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`LEFT JOIN `licence` AS `OSLicence_oslicence_id_licence` ON `_server`.`oslicence_id` = `OSLicence_oslicence_id_licence`.`id`) ON `_functionalci`.`id` = `_server`.`id` WHERE (((((((((COALESCE((`_functionalci`.`finalclass` IN (\'Server\')), 1) AND COALESCE((`Brand_brand_id_typology`.`finalclass` IN (\'Brand\')), 1)) AND COALESCE((`Model_model_id_typology`.`finalclass` IN (\'Model\')), 1)) AND COALESCE((`Rack_rack_id_functionalci`.`finalclass` IN (\'Rack\')), 1)) AND COALESCE((`Enclosure_enclosure_id_functionalci`.`finalclass` IN (\'Enclosure\')), 1)) AND COALESCE((`PowerConnection_powerA_id_functionalci`.`finalclass` IN (\'PowerSource\', \'PDU\', \'PowerConnection\')), 1)) AND COALESCE((`PowerConnection_powerB_id_functionalci`.`finalclass` IN (\'PowerSource\', \'PDU\', \'PowerConnection\')), 1)) AND COALESCE((`OSFamily_osfamily_id_typology`.`finalclass` IN (\'OSFamily\')), 1)) AND COALESCE((`OSVersion_osversion_id_typology`.`finalclass` IN (\'OSVersion\')), 1)) AND COALESCE((`OSLicence_oslicence_id_licence`.`finalclass` IN (\'OSLicence\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_datacenterdevice`.`rack_id` AS `rack_id`,`Rack_rack_id_functionalci`.`name` AS `rack_name`,`_datacenterdevice`.`enclosure_id` AS `enclosure_id`,`Enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`,`_datacenterdevice`.`nb_u` AS `nb_u`,`_datacenterdevice`.`managementip` AS `managementip`,`_datacenterdevice`.`powera_id` AS `powerA_id`,`PowerConnection_powerA_id_functionalci`.`name` AS `powerA_name`,`_datacenterdevice`.`powerB_id` AS `powerB_id`,`PowerConnection_powerB_id_functionalci`.`name` AS `powerB_name`,`_datacenterdevice`.`redundancy` AS `redundancy`,`_server`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_server`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_server`.`oslicence_id` AS `oslicence_id`,`OSLicence_oslicence_id_licence`.`name` AS `oslicence_name`,`_server`.`cpu` AS `cpu`,`_server`.`ram` AS `ram`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`Rack_rack_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `rack_id_friendlyname`,coalesce((`Rack_rack_id_physicaldevice`.`status` = \'obsolete\'),0) AS `rack_id_obsolescence_flag`,cast(concat(coalesce(`Enclosure_enclosure_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `enclosure_id_friendlyname`,coalesce((`Enclosure_enclosure_id_physicaldevice`.`status` = \'obsolete\'),0) AS `enclosure_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerA_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `powerA_id_friendlyname`,`PowerConnection_powerA_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`,coalesce((`PowerConnection_powerA_id_physicaldevice`.`status` = \'obsolete\'),0) AS `powerA_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerB_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `powerB_id_friendlyname`,`PowerConnection_powerB_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`,coalesce((`PowerConnection_powerB_id_physicaldevice`.`status` = \'obsolete\'),0) AS `powerB_id_obsolescence_flag`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname`,cast(concat(coalesce(`OSLicence_oslicence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `oslicence_id_friendlyname`,coalesce(((`OSLicence_oslicence_id_licence`.`perpetual` = \'no\') and (isnull(`OSLicence_oslicence_id_licence`.`end_date`) = 0) and (`OSLicence_oslicence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `oslicence_id_obsolescence_flag` from ((((`itop`.`functionalci` `_functionalci` join `itop`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`itop`.`physicaldevice` `_physicaldevice` left join `itop`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `itop`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `itop`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join ((((`itop`.`datacenterdevice` `_datacenterdevice` left join (`itop`.`functionalci` `Rack_rack_id_functionalci` join `itop`.`physicaldevice` `Rack_rack_id_physicaldevice` on((`Rack_rack_id_functionalci`.`id` = `Rack_rack_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`rack_id` = `Rack_rack_id_functionalci`.`id`))) left join (`itop`.`functionalci` `Enclosure_enclosure_id_functionalci` join `itop`.`physicaldevice` `Enclosure_enclosure_id_physicaldevice` on((`Enclosure_enclosure_id_functionalci`.`id` = `Enclosure_enclosure_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`enclosure_id` = `Enclosure_enclosure_id_functionalci`.`id`))) left join (`itop`.`functionalci` `PowerConnection_powerA_id_functionalci` join `itop`.`physicaldevice` `PowerConnection_powerA_id_physicaldevice` on((`PowerConnection_powerA_id_functionalci`.`id` = `PowerConnection_powerA_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`powera_id` = `PowerConnection_powerA_id_functionalci`.`id`))) left join (`itop`.`functionalci` `PowerConnection_powerB_id_functionalci` join `itop`.`physicaldevice` `PowerConnection_powerB_id_physicaldevice` on((`PowerConnection_powerB_id_functionalci`.`id` = `PowerConnection_powerB_id_physicaldevice`.`id`))) on((`_datacenterdevice`.`powerB_id` = `PowerConnection_powerB_id_functionalci`.`id`))) on((`_functionalci`.`id` = `_datacenterdevice`.`id`))) join (((`itop`.`server` `_server` left join `itop`.`typology` `OSFamily_osfamily_id_typology` on((`_server`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) left join `itop`.`typology` `OSVersion_osversion_id_typology` on((`_server`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) left join `itop`.`licence` `OSLicence_oslicence_id_licence` on((`_server`.`oslicence_id` = `OSLicence_oslicence_id_licence`.`id`))) on((`_functionalci`.`id` = `_server`.`id`))) where (coalesce((`_functionalci`.`finalclass` = \'Server\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1) and coalesce((`Rack_rack_id_functionalci`.`finalclass` = \'Rack\'),1) and coalesce((`Enclosure_enclosure_id_functionalci`.`finalclass` = \'Enclosure\'),1) and coalesce((`PowerConnection_powerA_id_functionalci`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`PowerConnection_powerB_id_functionalci`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSLicence_oslicence_id_licence`.`finalclass` = \'OSLicence\'),1))