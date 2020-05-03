TYPE=VIEW
query=select distinct `IOSVersion`.`id` AS `id`,`IOSVersion_Typology`.`name` AS `name`,`IOSVersion`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`IOSVersion_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`IOSVersion_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from ((`itop27`.`iosversion` `IOSVersion` join `itop27`.`typology` `Brand_brand_id_Typology` on((`IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`))) join `itop27`.`typology` `IOSVersion_Typology` on((`IOSVersion`.`id` = `IOSVersion_Typology`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
md5=59a19e83c7a8f2e3034172c32a557d0a
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `IOSVersion`.`id` AS `id`,\n `IOSVersion_Typology`.`name` AS `name`,\n `IOSVersion`.`brand_id` AS `brand_id`,\n `Brand_brand_id_Typology`.`name` AS `brand_name`,\n `IOSVersion_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`IOSVersion_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`\n FROM \n   `iosversion` AS `IOSVersion`\n   INNER JOIN \n      `typology` AS `Brand_brand_id_Typology`\n    ON `IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`\n   INNER JOIN \n      `typology` AS `IOSVersion_Typology`\n    ON `IOSVersion`.`id` = `IOSVersion_Typology`.`id`\n WHERE COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `IOSVersion`.`id` AS `id`,`IOSVersion_Typology`.`name` AS `name`,`IOSVersion`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`IOSVersion_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`IOSVersion_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from ((`itop27`.`iosversion` `IOSVersion` join `itop27`.`typology` `Brand_brand_id_Typology` on((`IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`))) join `itop27`.`typology` `IOSVersion_Typology` on((`IOSVersion`.`id` = `IOSVersion_Typology`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
