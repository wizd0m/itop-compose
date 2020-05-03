TYPE=VIEW
query=select distinct `OSPatch`.`id` AS `id`,`OSPatch_Patch`.`name` AS `name`,`OSPatch_Patch`.`description` AS `description`,`OSPatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,`OSPatch_Patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSPatch_Patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from ((`itop27`.`ospatch` `OSPatch` join `itop27`.`typology` `OSVersion_osversion_id_Typology` on((`OSPatch`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`))) join `itop27`.`patch` `OSPatch_Patch` on((`OSPatch`.`id` = `OSPatch_Patch`.`id`))) where coalesce((`OSVersion_osversion_id_Typology`.`finalclass` = \'OSVersion\'),1)
md5=4403fcd6a7bbe3381c0684585cd24802
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `OSPatch`.`id` AS `id`,\n `OSPatch_Patch`.`name` AS `name`,\n `OSPatch_Patch`.`description` AS `description`,\n `OSPatch`.`osversion_id` AS `osversion_id`,\n `OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,\n `OSPatch_Patch`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`OSPatch_Patch`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`OSVersion_osversion_id_Typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname`\n FROM \n   `ospatch` AS `OSPatch`\n   INNER JOIN \n      `typology` AS `OSVersion_osversion_id_Typology`\n    ON `OSPatch`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`\n   INNER JOIN \n      `patch` AS `OSPatch_Patch`\n    ON `OSPatch`.`id` = `OSPatch_Patch`.`id`\n WHERE COALESCE((`OSVersion_osversion_id_Typology`.`finalclass` IN (\'OSVersion\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `OSPatch`.`id` AS `id`,`OSPatch_Patch`.`name` AS `name`,`OSPatch_Patch`.`description` AS `description`,`OSPatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,`OSPatch_Patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSPatch_Patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from ((`itop27`.`ospatch` `OSPatch` join `itop27`.`typology` `OSVersion_osversion_id_Typology` on((`OSPatch`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`))) join `itop27`.`patch` `OSPatch_Patch` on((`OSPatch`.`id` = `OSPatch_Patch`.`id`))) where coalesce((`OSVersion_osversion_id_Typology`.`finalclass` = \'OSVersion\'),1)
