TYPE=VIEW
query=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_iosversion`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from (`itop`.`typology` `_typology` join (`itop`.`iosversion` `_iosversion` join `itop`.`typology` `Brand_brand_id_typology` on((`_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`))) on((`_typology`.`id` = `_iosversion`.`id`))) where (coalesce((`_typology`.`finalclass` = \'IOSVersion\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1))
md5=297d9157115f0d1b78472af40b43eb8f
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_typology`.`id` AS `id`, `_typology`.`name` AS `name`, `_iosversion`.`brand_id` AS `brand_id`, `Brand_brand_id_typology`.`name` AS `brand_name`, `_typology`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_typology`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname` FROM `typology` AS `_typology`INNER JOIN (`iosversion` AS `_iosversion` INNER JOIN `typology` AS `Brand_brand_id_typology` ON `_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`) ON `_typology`.`id` = `_iosversion`.`id` WHERE (COALESCE((`_typology`.`finalclass` IN (\'IOSVersion\')), 1) AND COALESCE((`Brand_brand_id_typology`.`finalclass` IN (\'Brand\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_iosversion`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from (`itop`.`typology` `_typology` join (`itop`.`iosversion` `_iosversion` join `itop`.`typology` `Brand_brand_id_typology` on((`_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`))) on((`_typology`.`id` = `_iosversion`.`id`))) where (coalesce((`_typology`.`finalclass` = \'IOSVersion\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1))
