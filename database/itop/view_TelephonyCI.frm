TYPE=VIEW
query=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_telephonyci`.`phonenumber` AS `phonenumber`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from (((`itop`.`functionalci` `_functionalci` join `itop`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`itop`.`physicaldevice` `_physicaldevice` left join `itop`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `itop`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `itop`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join `itop`.`telephonyci` `_telephonyci` on((`_functionalci`.`id` = `_telephonyci`.`id`))) where (coalesce((`_functionalci`.`finalclass` in (\'Phone\',\'MobilePhone\',\'IPPhone\',\'TelephonyCI\')),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1))
md5=ffbfa27ac45ed64e2e9c67abff362d2e
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:06
create-version=1
source=SELECT DISTINCT `_functionalci`.`id` AS `id`, `_functionalci`.`name` AS `name`, `_functionalci`.`description` AS `description`, `_functionalci`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_functionalci`.`business_criticity` AS `business_criticity`, `_functionalci`.`move2production` AS `move2production`, `_physicaldevice`.`serialnumber` AS `serialnumber`, `_physicaldevice`.`location_id` AS `location_id`, `Location_location_id_location`.`name` AS `location_name`, `_physicaldevice`.`status` AS `status`, `_physicaldevice`.`brand_id` AS `brand_id`, `Brand_brand_id_typology`.`name` AS `brand_name`, `_physicaldevice`.`model_id` AS `model_id`, `Model_model_id_typology`.`name` AS `model_name`, `_physicaldevice`.`asset_number` AS `asset_number`, `_physicaldevice`.`purchase_date` AS `purchase_date`, `_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `_telephonyci`.`phonenumber` AS `phonenumber`, `_functionalci`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_functionalci`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_physicaldevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`, `_functionalci`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Location_location_id_location`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`, COALESCE((`Location_location_id_location`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`, CAST(CONCAT(COALESCE(`Model_model_id_typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname` FROM `functionalci` AS `_functionalci`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_functionalci`.`org_id` = `Organization_org_id_organization`.`id`INNER JOIN (`physicaldevice` AS `_physicaldevice` LEFT JOIN `location` AS `Location_location_id_location` ON `_physicaldevice`.`location_id` = `Location_location_id_location`.`id`LEFT JOIN `typology` AS `Brand_brand_id_typology` ON `_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`LEFT JOIN `typology` AS `Model_model_id_typology` ON `_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`) ON `_functionalci`.`id` = `_physicaldevice`.`id`INNER JOIN `telephonyci` AS `_telephonyci` ON `_functionalci`.`id` = `_telephonyci`.`id` WHERE ((COALESCE((`_functionalci`.`finalclass` IN (\'Phone\', \'MobilePhone\', \'IPPhone\', \'TelephonyCI\')), 1) AND COALESCE((`Brand_brand_id_typology`.`finalclass` IN (\'Brand\')), 1)) AND COALESCE((`Model_model_id_typology`.`finalclass` IN (\'Model\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_telephonyci`.`phonenumber` AS `phonenumber`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname` from (((`itop`.`functionalci` `_functionalci` join `itop`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`itop`.`physicaldevice` `_physicaldevice` left join `itop`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `itop`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `itop`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join `itop`.`telephonyci` `_telephonyci` on((`_functionalci`.`id` = `_telephonyci`.`id`))) where (coalesce((`_functionalci`.`finalclass` in (\'Phone\',\'MobilePhone\',\'IPPhone\',\'TelephonyCI\')),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1))
