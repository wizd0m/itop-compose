TYPE=VIEW
query=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_ospatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (`itop`.`patch` `_patch` join (`itop`.`ospatch` `_ospatch` join `itop`.`typology` `OSVersion_osversion_id_typology` on((`_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_patch`.`id` = `_ospatch`.`id`))) where (coalesce((`_patch`.`finalclass` = \'OSPatch\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
md5=0f1a962b6569490976cb729b6e95876d
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_patch`.`id` AS `id`, `_patch`.`name` AS `name`, `_patch`.`description` AS `description`, `_ospatch`.`osversion_id` AS `osversion_id`, `OSVersion_osversion_id_typology`.`name` AS `osversion_name`, `_patch`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_patch`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`OSVersion_osversion_id_typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname` FROM `patch` AS `_patch`INNER JOIN (`ospatch` AS `_ospatch` INNER JOIN `typology` AS `OSVersion_osversion_id_typology` ON `_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`) ON `_patch`.`id` = `_ospatch`.`id` WHERE (COALESCE((`_patch`.`finalclass` IN (\'OSPatch\')), 1) AND COALESCE((`OSVersion_osversion_id_typology`.`finalclass` IN (\'OSVersion\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_ospatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (`itop`.`patch` `_patch` join (`itop`.`ospatch` `_ospatch` join `itop`.`typology` `OSVersion_osversion_id_typology` on((`_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_patch`.`id` = `_ospatch`.`id`))) where (coalesce((`_patch`.`finalclass` = \'OSPatch\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
