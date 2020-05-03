TYPE=VIEW
query=select distinct `Tablet_PhysicalDevice`.`id` AS `id`,`Tablet_FunctionalCI`.`name` AS `name`,`Tablet_FunctionalCI`.`description` AS `description`,`Tablet_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Tablet_FunctionalCI`.`business_criticity` AS `business_criticity`,`Tablet_FunctionalCI`.`move2production` AS `move2production`,`Tablet_PhysicalDevice`.`serialnumber` AS `serialnumber`,`Tablet_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`Tablet_PhysicalDevice`.`status` AS `status`,`Tablet_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Tablet_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`Tablet_PhysicalDevice`.`asset_number` AS `asset_number`,`Tablet_PhysicalDevice`.`purchase_date` AS `purchase_date`,`Tablet_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`Tablet_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Tablet_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Tablet_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Tablet_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from ((((`itop27`.`physicaldevice` `Tablet_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`Tablet_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`Tablet_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`Tablet_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) join (`itop27`.`functionalci` `Tablet_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Tablet_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Tablet_PhysicalDevice`.`id` = `Tablet_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Tablet_PhysicalDevice`.`finalclass` = \'Tablet\'),1))
md5=d3e7395676227c16e54ff3db3b12e0c6
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Tablet_PhysicalDevice`.`id` AS `id`,\n `Tablet_FunctionalCI`.`name` AS `name`,\n `Tablet_FunctionalCI`.`description` AS `description`,\n `Tablet_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `Tablet_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `Tablet_FunctionalCI`.`move2production` AS `move2production`,\n `Tablet_PhysicalDevice`.`serialnumber` AS `serialnumber`,\n `Tablet_PhysicalDevice`.`location_id` AS `location_id`,\n `Location_location_id`.`name` AS `location_name`,\n `Tablet_PhysicalDevice`.`status` AS `status`,\n `Tablet_PhysicalDevice`.`brand_id` AS `brand_id`,\n `Brand_brand_id_Typology`.`name` AS `brand_name`,\n `Tablet_PhysicalDevice`.`model_id` AS `model_id`,\n `Model_model_id_Typology`.`name` AS `model_name`,\n `Tablet_PhysicalDevice`.`asset_number` AS `asset_number`,\n `Tablet_PhysicalDevice`.`purchase_date` AS `purchase_date`,\n `Tablet_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,\n `Tablet_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Tablet_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`Tablet_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `Tablet_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Location_location_id`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`,\n COALESCE((`Location_location_id`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`,\n CAST(CONCAT(COALESCE(`Model_model_id_Typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname`\n FROM \n   `physicaldevice` AS `Tablet_PhysicalDevice`\n   LEFT JOIN \n      `location` AS `Location_location_id`\n    ON `Tablet_PhysicalDevice`.`location_id` = `Location_location_id`.`id`\n   LEFT JOIN \n      `typology` AS `Brand_brand_id_Typology`\n    ON `Tablet_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`\n   LEFT JOIN \n      `typology` AS `Model_model_id_Typology`\n    ON `Tablet_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`\n   INNER JOIN (\n      `functionalci` AS `Tablet_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `Tablet_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `Tablet_PhysicalDevice`.`id` = `Tablet_FunctionalCI`.`id`\n WHERE ((COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1) AND COALESCE((`Model_model_id_Typology`.`finalclass` IN (\'Model\')), 1)) AND COALESCE((`Tablet_PhysicalDevice`.`finalclass` IN (\'Tablet\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Tablet_PhysicalDevice`.`id` AS `id`,`Tablet_FunctionalCI`.`name` AS `name`,`Tablet_FunctionalCI`.`description` AS `description`,`Tablet_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Tablet_FunctionalCI`.`business_criticity` AS `business_criticity`,`Tablet_FunctionalCI`.`move2production` AS `move2production`,`Tablet_PhysicalDevice`.`serialnumber` AS `serialnumber`,`Tablet_PhysicalDevice`.`location_id` AS `location_id`,`Location_location_id`.`name` AS `location_name`,`Tablet_PhysicalDevice`.`status` AS `status`,`Tablet_PhysicalDevice`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Tablet_PhysicalDevice`.`model_id` AS `model_id`,`Model_model_id_Typology`.`name` AS `model_name`,`Tablet_PhysicalDevice`.`asset_number` AS `asset_number`,`Tablet_PhysicalDevice`.`purchase_date` AS `purchase_date`,`Tablet_PhysicalDevice`.`end_of_warranty` AS `end_of_warranty`,`Tablet_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Tablet_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Tablet_PhysicalDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Tablet_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from ((((`itop27`.`physicaldevice` `Tablet_PhysicalDevice` left join `itop27`.`location` `Location_location_id` on((`Tablet_PhysicalDevice`.`location_id` = `Location_location_id`.`id`))) left join `itop27`.`typology` `Brand_brand_id_Typology` on((`Tablet_PhysicalDevice`.`brand_id` = `Brand_brand_id_Typology`.`id`))) left join `itop27`.`typology` `Model_model_id_Typology` on((`Tablet_PhysicalDevice`.`model_id` = `Model_model_id_Typology`.`id`))) join (`itop27`.`functionalci` `Tablet_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Tablet_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Tablet_PhysicalDevice`.`id` = `Tablet_FunctionalCI`.`id`))) where (coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_Typology`.`finalclass` = \'Model\'),1) and coalesce((`Tablet_PhysicalDevice`.`finalclass` = \'Tablet\'),1))