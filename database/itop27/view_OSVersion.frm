TYPE=VIEW
query=select distinct `OSVersion`.`id` AS `id`,`OSVersion_Typology`.`name` AS `name`,`OSVersion`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,`OSVersion_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSVersion_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname` from ((`itop27`.`osversion` `OSVersion` join `itop27`.`typology` `OSFamily_osfamily_id_Typology` on((`OSVersion`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`))) join `itop27`.`typology` `OSVersion_Typology` on((`OSVersion`.`id` = `OSVersion_Typology`.`id`))) where coalesce((`OSFamily_osfamily_id_Typology`.`finalclass` = \'OSFamily\'),1)
md5=b0a51e08ac5e274efb580cf647391fe9
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `OSVersion`.`id` AS `id`,\n `OSVersion_Typology`.`name` AS `name`,\n `OSVersion`.`osfamily_id` AS `osfamily_id`,\n `OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,\n `OSVersion_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`OSVersion_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`OSFamily_osfamily_id_Typology`.`name`, \'\')) AS CHAR) AS `osfamily_id_friendlyname`\n FROM \n   `osversion` AS `OSVersion`\n   INNER JOIN \n      `typology` AS `OSFamily_osfamily_id_Typology`\n    ON `OSVersion`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`\n   INNER JOIN \n      `typology` AS `OSVersion_Typology`\n    ON `OSVersion`.`id` = `OSVersion_Typology`.`id`\n WHERE COALESCE((`OSFamily_osfamily_id_Typology`.`finalclass` IN (\'OSFamily\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `OSVersion`.`id` AS `id`,`OSVersion_Typology`.`name` AS `name`,`OSVersion`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,`OSVersion_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSVersion_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname` from ((`itop27`.`osversion` `OSVersion` join `itop27`.`typology` `OSFamily_osfamily_id_Typology` on((`OSVersion`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`))) join `itop27`.`typology` `OSVersion_Typology` on((`OSVersion`.`id` = `OSVersion_Typology`.`id`))) where coalesce((`OSFamily_osfamily_id_Typology`.`finalclass` = \'OSFamily\'),1)
