TYPE=VIEW
query=select distinct `Phone_TelephonyCI`.`id` AS `id`,`Phone_FunctionalCI`.`name` AS `name`,`Phone_FunctionalCI`.`description` AS `description`,`Phone_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Phone_FunctionalCI`.`business_criticity` AS `business_criticity`,`Phone_FunctionalCI`.`move2production` AS `move2production`,`Phone_PhysicalDevice`.`serialnumber` AS `serialnumber`,`Phone_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`Phone_PhysicalDevice`.`status` AS `status`,`Phone_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Phone_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`Phone_PhysicalDevice`.`asset_number` AS `asset_number`,`Phone_PhysicalDevice`.`purchase_date` AS `purchase_date`,`Phone_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`Phone_TelephonyCI`.`phonenumber` AS `phonenumber`,`Phone_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Phone_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Phone_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Phone_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from ((`itop27`.`telephonyci` `Phone_TelephonyCI` join (((`itop27`.`physicaldevice` `Phone_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`Phone_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`Phone_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`Phone_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) on((`Phone_TelephonyCI`.`id` = `Phone_PhysicalDevice`.`id`))) join (`itop27`.`functionalci` `Phone_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Phone_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Phone_TelephonyCI`.`id` = `Phone_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Phone_TelephonyCI`.`finalclass` = \'Phone\'),1))
md5=988090ae213d7b39fa6c1d2994009497
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Phone_TelephonyCI`.`id` AS `id`,\n `Phone_FunctionalCI`.`name` AS `name`,\n `Phone_FunctionalCI`.`description` AS `description`,\n `Phone_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `Phone_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `Phone_FunctionalCI`.`move2production` AS `move2production`,\n `Phone_PhysicalDevice`.`serialnumber` AS `serialnumber`,\n `Phone_PhysicalDevice`.`location_id` AS `location_id`,\n `Location_location_id`.`name` AS `location_name`,\n `Phone_PhysicalDevice`.`status` AS `status`,\n `Phone_PhysicalDevice`.`brand_id` AS `brand_id`,\n `Brand_brand_id_Typology`.`name` AS `brand_name`,\n `Phone_PhysicalDevice`.`model_id` AS `model_id`,\n `Model_model_id_Typology`.`name` AS `model_name`,\n `Phone_PhysicalDevice`.`asset_number` AS `asset_number`,\n `Phone_PhysicalDevice`.`purchase_date` AS `purchase_date`,\n `Phone_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,\n `Phone_TelephonyCI`.`phonenumber` AS `phonenumber`,\n `Phone_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Phone_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`Phone_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `Phone_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Location_location_id`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`,\n COALESCE((`Location_location_id`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`,\n CAST(CONCAT(COALESCE(`Model_model_id_Typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname`\n FROM \n   `telephonyci` AS `Phone_TelephonyCI`\n   INNER JOIN (\n      `physicaldevice` AS `Phone_PhysicalDevice` \n      LEFT JOIN \n         `location` AS `Location_location_id`\n       ON `Phone_PhysicalDevice`.`location_id` = `Location_location_id`.`id`\n      LEFT JOIN \n         `typology` AS `Brand_brand_id_Typology`\n       ON `Phone_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`\n      LEFT JOIN \n         `typology` AS `Model_model_id_Typology`\n       ON `Phone_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`\n   ) ON `Phone_TelephonyCI`.`id` = `Phone_PhysicalDevice`.`id`\n   INNER JOIN (\n      `functionalci` AS `Phone_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `Phone_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `Phone_TelephonyCI`.`id` = `Phone_FunctionalCI`.`id`\n WHERE ((COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1) AND COALESCE((`Model_model_id_Typology`.`finalclass` IN (\'Model\')), 1)) AND COALESCE((`Phone_TelephonyCI`.`finalclass` IN (\'Phone\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Phone_TelephonyCI`.`id` AS `id`,`Phone_FunctionalCI`.`name` AS `name`,`Phone_FunctionalCI`.`description` AS `description`,`Phone_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Phone_FunctionalCI`.`business_criticity` AS `business_criticity`,`Phone_FunctionalCI`.`move2production` AS `move2production`,`Phone_PhysicalDevice`.`serialnumber` AS `serialnumber`,`Phone_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`Phone_PhysicalDevice`.`status` AS `status`,`Phone_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Phone_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`Phone_PhysicalDevice`.`asset_number` AS `asset_number`,`Phone_PhysicalDevice`.`purchase_date` AS `purchase_date`,`Phone_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`Phone_TelephonyCI`.`phonenumber` AS `phonenumber`,`Phone_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Phone_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Phone_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Phone_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from ((`itop27`.`telephonyci` `Phone_TelephonyCI` join (((`itop27`.`physicaldevice` `Phone_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`Phone_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`Phone_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`Phone_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) on((`Phone_TelephonyCI`.`id` = `Phone_PhysicalDevice`.`id`))) join (`itop27`.`functionalci` `Phone_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Phone_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Phone_TelephonyCI`.`id` = `Phone_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Phone_TelephonyCI`.`finalclass` = \'Phone\'),1))