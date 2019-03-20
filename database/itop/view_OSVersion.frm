TYPE=VIEW
query=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_osversion`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname` from (`itop`.`typology` `_typology` join (`itop`.`osversion` `_osversion` join `itop`.`typology` `OSFamily_osfamily_id_typology` on((`_osversion`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) on((`_typology`.`id` = `_osversion`.`id`))) where (coalesce((`_typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1))
md5=d3f6422798707563a34589009dcb6d03
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_typology`.`id` AS `id`, `_typology`.`name` AS `name`, `_osversion`.`osfamily_id` AS `osfamily_id`, `OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`, `_typology`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_typology`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`OSFamily_osfamily_id_typology`.`name`, \'\')) AS CHAR) AS `osfamily_id_friendlyname` FROM `typology` AS `_typology`INNER JOIN (`osversion` AS `_osversion` INNER JOIN `typology` AS `OSFamily_osfamily_id_typology` ON `_osversion`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`) ON `_typology`.`id` = `_osversion`.`id` WHERE (COALESCE((`_typology`.`finalclass` IN (\'OSVersion\')), 1) AND COALESCE((`OSFamily_osfamily_id_typology`.`finalclass` IN (\'OSFamily\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_osversion`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname` from (`itop`.`typology` `_typology` join (`itop`.`osversion` `_osversion` join `itop`.`typology` `OSFamily_osfamily_id_typology` on((`_osversion`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) on((`_typology`.`id` = `_osversion`.`id`))) where (coalesce((`_typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1))
