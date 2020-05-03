TYPE=VIEW
query=select distinct `StorageSystem_DatacenterDevice`.`id` AS `id`,`StorageSystem_FunctionalCI`.`name` AS `name`,`StorageSystem_FunctionalCI`.`description` AS `description`,`StorageSystem_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`StorageSystem_FunctionalCI`.`business_criticity` AS `business_criticity`,`StorageSystem_FunctionalCI`.`move2production` AS `move2production`,`StorageSystem_PhysicalDevice`.`serialnumber` AS `serialnumber`,`StorageSystem_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`StorageSystem_PhysicalDevice`.`status` AS `status`,`StorageSystem_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`StorageSystem_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`StorageSystem_PhysicalDevice`.`asset_number` AS `asset_number`,`StorageSystem_PhysicalDevice`.`purchase_date` AS `purchase_date`,`StorageSystem_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`StorageSystem_DatacenterDevice`.`rack_id` AS `rack_id`,`Rack_rack_id_FunctionalCI`.`name` AS `rack_name`,`StorageSystem_DatacenterDevice`.`enclosure_id` AS `enclosure_id`,`Enclosure_enclosure_id_FunctionalCI`.`name` AS `enclosure_name`,`StorageSystem_DatacenterDevice`.`nb_u` AS `nb_u`,`StorageSystem_DatacenterDevice`.`managementip` AS `managementip`,`StorageSystem_DatacenterDevice`.`powera_id` AS `powerA_id`,`PowerConnection_powerA_id_FunctionalCI`.`name` AS `powerA_name`,`StorageSystem_DatacenterDevice`.`powerB_id` AS `powerB_id`,`PowerConnection_powerB_id_FunctionalCI`.`name` AS `powerB_name`,`StorageSystem_DatacenterDevice`.`redundancy` AS `redundancy`,`StorageSystem_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`StorageSystem_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`StorageSystem_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`StorageSystem_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`Rack_rack_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `rack_id_friendlyname`,coalesce((`Rack_rack_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `rack_id_obsolescence_flag`,cast(concat(coalesce(`Enclosure_enclosure_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `enclosure_id_friendlyname`,coalesce((`Enclosure_enclosure_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `enclosure_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerA_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `powerA_id_friendlyname`,`PowerConnection_powerA_id_FunctionalCI`.`finalclass` AS `powerA_id_finalclass_recall`,coalesce((`PowerConnection_powerA_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `powerA_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerB_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `powerB_id_friendlyname`,`PowerConnection_powerB_id_FunctionalCI`.`finalclass` AS `powerB_id_finalclass_recall`,coalesce((`PowerConnection_powerB_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `powerB_id_obsolescence_flag` from ((((((`itop27`.`datacenterdevice` `StorageSystem_DatacenterDevice` left join (`itop27`.`physicaldevice` `Rack_rack_id_PhysicalDevice` join `itop27`.`functionalci` `Rack_rack_id_FunctionalCI` on((`Rack_rack_id_PhysicalDevice`.`id` = `Rack_rack_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`rack_id` = `Rack_rack_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `Enclosure_enclosure_id_PhysicalDevice` join `itop27`.`functionalci` `Enclosure_enclosure_id_FunctionalCI` on((`Enclosure_enclosure_id_PhysicalDevice`.`id` = `Enclosure_enclosure_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`enclosure_id` = `Enclosure_enclosure_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `PowerConnection_powerA_id_PhysicalDevice` join `itop27`.`functionalci` `PowerConnection_powerA_id_FunctionalCI` on((`PowerConnection_powerA_id_PhysicalDevice`.`id` = `PowerConnection_powerA_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`powera_id` = `PowerConnection_powerA_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `PowerConnection_powerB_id_PhysicalDevice` join `itop27`.`functionalci` `PowerConnection_powerB_id_FunctionalCI` on((`PowerConnection_powerB_id_PhysicalDevice`.`id` = `PowerConnection_powerB_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`powerB_id` = `PowerConnection_powerB_id_PhysicalDevice`.`id`))) join (((`itop27`.`physicaldevice` `StorageSystem_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`StorageSystem_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`StorageSystem_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`StorageSystem_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) on((`StorageSystem_DatacenterDevice`.`id` = `StorageSystem_PhysicalDevice`.`id`))) join (`itop27`.`functionalci` `StorageSystem_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`StorageSystem_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`StorageSystem_DatacenterDevice`.`id` = `StorageSystem_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Rack_rack_id_PhysicalDevice`.`finalclass` = \'Rack\'),1) and coalesce((`Enclosure_enclosure_id_PhysicalDevice`.`finalclass` = \'Enclosure\'),1) and coalesce((`PowerConnection_powerA_id_PhysicalDevice`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`PowerConnection_powerB_id_PhysicalDevice`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`StorageSystem_DatacenterDevice`.`finalclass` = \'StorageSystem\'),1))
md5=4ac0d21b41b159b5fa7c0202bcb96988
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `StorageSystem_DatacenterDevice`.`id` AS `id`,\n `StorageSystem_FunctionalCI`.`name` AS `name`,\n `StorageSystem_FunctionalCI`.`description` AS `description`,\n `StorageSystem_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `StorageSystem_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `StorageSystem_FunctionalCI`.`move2production` AS `move2production`,\n `StorageSystem_PhysicalDevice`.`serialnumber` AS `serialnumber`,\n `StorageSystem_PhysicalDevice`.`location_id` AS `location_id`,\n `Location_location_id`.`name` AS `location_name`,\n `StorageSystem_PhysicalDevice`.`status` AS `status`,\n `StorageSystem_PhysicalDevice`.`brand_id` AS `brand_id`,\n `Brand_brand_id_Typology`.`name` AS `brand_name`,\n `StorageSystem_PhysicalDevice`.`model_id` AS `model_id`,\n `Model_model_id_Typology`.`name` AS `model_name`,\n `StorageSystem_PhysicalDevice`.`asset_number` AS `asset_number`,\n `StorageSystem_PhysicalDevice`.`purchase_date` AS `purchase_date`,\n `StorageSystem_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,\n `StorageSystem_DatacenterDevice`.`rack_id` AS `rack_id`,\n `Rack_rack_id_FunctionalCI`.`name` AS `rack_name`,\n `StorageSystem_DatacenterDevice`.`enclosure_id` AS `enclosure_id`,\n `Enclosure_enclosure_id_FunctionalCI`.`name` AS `enclosure_name`,\n `StorageSystem_DatacenterDevice`.`nb_u` AS `nb_u`,\n `StorageSystem_DatacenterDevice`.`managementip` AS `managementip`,\n `StorageSystem_DatacenterDevice`.`powera_id` AS `powerA_id`,\n `PowerConnection_powerA_id_FunctionalCI`.`name` AS `powerA_name`,\n `StorageSystem_DatacenterDevice`.`powerB_id` AS `powerB_id`,\n `PowerConnection_powerB_id_FunctionalCI`.`name` AS `powerB_name`,\n `StorageSystem_DatacenterDevice`.`redundancy` AS `redundancy`,\n `StorageSystem_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`StorageSystem_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`StorageSystem_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `StorageSystem_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Location_location_id`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`,\n COALESCE((`Location_location_id`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`,\n CAST(CONCAT(COALESCE(`Model_model_id_Typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname`,\n CAST(CONCAT(COALESCE(`Rack_rack_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `rack_id_friendlyname`,\n COALESCE((`Rack_rack_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `rack_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Enclosure_enclosure_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `enclosure_id_friendlyname`,\n COALESCE((`Enclosure_enclosure_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `enclosure_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`PowerConnection_powerA_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `powerA_id_friendlyname`,\n `PowerConnection_powerA_id_FunctionalCI`.`finalclass` AS `powerA_id_finalclass_recall`,\n COALESCE((`PowerConnection_powerA_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `powerA_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`PowerConnection_powerB_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `powerB_id_friendlyname`,\n `PowerConnection_powerB_id_FunctionalCI`.`finalclass` AS `powerB_id_finalclass_recall`,\n COALESCE((`PowerConnection_powerB_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `powerB_id_obsolescence_flag`\n FROM \n   `datacenterdevice` AS `StorageSystem_DatacenterDevice`\n   LEFT JOIN (\n      `physicaldevice` AS `Rack_rack_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `Rack_rack_id_FunctionalCI`\n       ON `Rack_rack_id_PhysicalDevice`.`id` = `Rack_rack_id_FunctionalCI`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`rack_id` = `Rack_rack_id_PhysicalDevice`.`id`\n   LEFT JOIN (\n      `physicaldevice` AS `Enclosure_enclosure_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `Enclosure_enclosure_id_FunctionalCI`\n       ON `Enclosure_enclosure_id_PhysicalDevice`.`id` = `Enclosure_enclosure_id_FunctionalCI`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`enclosure_id` = `Enclosure_enclosure_id_PhysicalDevice`.`id`\n   LEFT JOIN (\n      `physicaldevice` AS `PowerConnection_powerA_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `PowerConnection_powerA_id_FunctionalCI`\n       ON `PowerConnection_powerA_id_PhysicalDevice`.`id` = `PowerConnection_powerA_id_FunctionalCI`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`powera_id` = `PowerConnection_powerA_id_PhysicalDevice`.`id`\n   LEFT JOIN (\n      `physicaldevice` AS `PowerConnection_powerB_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `PowerConnection_powerB_id_FunctionalCI`\n       ON `PowerConnection_powerB_id_PhysicalDevice`.`id` = `PowerConnection_powerB_id_FunctionalCI`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`powerB_id` = `PowerConnection_powerB_id_PhysicalDevice`.`id`\n   INNER JOIN (\n      `physicaldevice` AS `StorageSystem_PhysicalDevice` \n      LEFT JOIN \n         `location` AS `Location_location_id`\n       ON `StorageSystem_PhysicalDevice`.`location_id` = `Location_location_id`.`id`\n      LEFT JOIN \n         `typology` AS `Brand_brand_id_Typology`\n       ON `StorageSystem_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`\n      LEFT JOIN \n         `typology` AS `Model_model_id_Typology`\n       ON `StorageSystem_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`id` = `StorageSystem_PhysicalDevice`.`id`\n   INNER JOIN (\n      `functionalci` AS `StorageSystem_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `StorageSystem_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `StorageSystem_DatacenterDevice`.`id` = `StorageSystem_FunctionalCI`.`id`\n WHERE ((((((COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1) AND COALESCE((`Model_model_id_Typology`.`finalclass` IN (\'Model\')), 1)) AND COALESCE((`Rack_rack_id_PhysicalDevice`.`finalclass` IN (\'Rack\')), 1)) AND COALESCE((`Enclosure_enclosure_id_PhysicalDevice`.`finalclass` IN (\'Enclosure\')), 1)) AND COALESCE((`PowerConnection_powerA_id_PhysicalDevice`.`finalclass` IN (\'PowerSource\', \'PDU\', \'PowerConnection\')), 1)) AND COALESCE((`PowerConnection_powerB_id_PhysicalDevice`.`finalclass` IN (\'PowerSource\', \'PDU\', \'PowerConnection\')), 1)) AND COALESCE((`StorageSystem_DatacenterDevice`.`finalclass` IN (\'StorageSystem\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `StorageSystem_DatacenterDevice`.`id` AS `id`,`StorageSystem_FunctionalCI`.`name` AS `name`,`StorageSystem_FunctionalCI`.`description` AS `description`,`StorageSystem_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`StorageSystem_FunctionalCI`.`business_criticity` AS `business_criticity`,`StorageSystem_FunctionalCI`.`move2production` AS `move2production`,`StorageSystem_PhysicalDevice`.`serialnumber` AS `serialnumber`,`StorageSystem_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`StorageSystem_PhysicalDevice`.`status` AS `status`,`StorageSystem_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`StorageSystem_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`StorageSystem_PhysicalDevice`.`asset_number` AS `asset_number`,`StorageSystem_PhysicalDevice`.`purchase_date` AS `purchase_date`,`StorageSystem_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`StorageSystem_DatacenterDevice`.`rack_id` AS `rack_id`,`Rack_rack_id_FunctionalCI`.`name` AS `rack_name`,`StorageSystem_DatacenterDevice`.`enclosure_id` AS `enclosure_id`,`Enclosure_enclosure_id_FunctionalCI`.`name` AS `enclosure_name`,`StorageSystem_DatacenterDevice`.`nb_u` AS `nb_u`,`StorageSystem_DatacenterDevice`.`managementip` AS `managementip`,`StorageSystem_DatacenterDevice`.`powera_id` AS `powerA_id`,`PowerConnection_powerA_id_FunctionalCI`.`name` AS `powerA_name`,`StorageSystem_DatacenterDevice`.`powerB_id` AS `powerB_id`,`PowerConnection_powerB_id_FunctionalCI`.`name` AS `powerB_name`,`StorageSystem_DatacenterDevice`.`redundancy` AS `redundancy`,`StorageSystem_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`StorageSystem_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`StorageSystem_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`StorageSystem_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`Rack_rack_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `rack_id_friendlyname`,coalesce((`Rack_rack_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `rack_id_obsolescence_flag`,cast(concat(coalesce(`Enclosure_enclosure_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `enclosure_id_friendlyname`,coalesce((`Enclosure_enclosure_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `enclosure_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerA_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `powerA_id_friendlyname`,`PowerConnection_powerA_id_FunctionalCI`.`finalclass` AS `powerA_id_finalclass_recall`,coalesce((`PowerConnection_powerA_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `powerA_id_obsolescence_flag`,cast(concat(coalesce(`PowerConnection_powerB_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `powerB_id_friendlyname`,`PowerConnection_powerB_id_FunctionalCI`.`finalclass` AS `powerB_id_finalclass_recall`,coalesce((`PowerConnection_powerB_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `powerB_id_obsolescence_flag` from ((((((`itop27`.`datacenterdevice` `StorageSystem_DatacenterDevice` left join (`itop27`.`physicaldevice` `Rack_rack_id_PhysicalDevice` join `itop27`.`functionalci` `Rack_rack_id_FunctionalCI` on((`Rack_rack_id_PhysicalDevice`.`id` = `Rack_rack_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`rack_id` = `Rack_rack_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `Enclosure_enclosure_id_PhysicalDevice` join `itop27`.`functionalci` `Enclosure_enclosure_id_FunctionalCI` on((`Enclosure_enclosure_id_PhysicalDevice`.`id` = `Enclosure_enclosure_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`enclosure_id` = `Enclosure_enclosure_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `PowerConnection_powerA_id_PhysicalDevice` join `itop27`.`functionalci` `PowerConnection_powerA_id_FunctionalCI` on((`PowerConnection_powerA_id_PhysicalDevice`.`id` = `PowerConnection_powerA_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`powera_id` = `PowerConnection_powerA_id_PhysicalDevice`.`id`))) left join (`itop27`.`physicaldevice` `PowerConnection_powerB_id_PhysicalDevice` join `itop27`.`functionalci` `PowerConnection_powerB_id_FunctionalCI` on((`PowerConnection_powerB_id_PhysicalDevice`.`id` = `PowerConnection_powerB_id_FunctionalCI`.`id`))) on((`StorageSystem_DatacenterDevice`.`powerB_id` = `PowerConnection_powerB_id_PhysicalDevice`.`id`))) join (((`itop27`.`physicaldevice` `StorageSystem_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`StorageSystem_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`StorageSystem_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`StorageSystem_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) on((`StorageSystem_DatacenterDevice`.`id` = `StorageSystem_PhysicalDevice`.`id`))) join (`itop27`.`functionalci` `StorageSystem_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`StorageSystem_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`StorageSystem_DatacenterDevice`.`id` = `StorageSystem_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Rack_rack_id_PhysicalDevice`.`finalclass` = \'Rack\'),1) and coalesce((`Enclosure_enclosure_id_PhysicalDevice`.`finalclass` = \'Enclosure\'),1) and coalesce((`PowerConnection_powerA_id_PhysicalDevice`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`PowerConnection_powerB_id_PhysicalDevice`.`finalclass` in (\'PowerSource\',\'PDU\',\'PowerConnection\')),1) and coalesce((`StorageSystem_DatacenterDevice`.`finalclass` = \'StorageSystem\'),1))