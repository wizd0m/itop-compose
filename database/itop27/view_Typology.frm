TYPE=VIEW
query=select distinct `Typology`.`id` AS `id`,`Typology`.`name` AS `name`,`Typology`.`finalclass` AS `finalclass`,if((`Typology`.`finalclass` = \'IOSVersion\'),cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Typology`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Typology`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname` from (`itop27`.`typology` `Typology` left join (`itop27`.`iosversion` `Typology_poly_IOSVersion` join `itop27`.`typology` `Brand_brand_id_Typology` on((`Typology_poly_IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`))) on((`Typology`.`id` = `Typology_poly_IOSVersion`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
md5=031315f4fb818559e6a83e8b70d5f27f
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Typology`.`id` AS `id`,\n `Typology`.`name` AS `name`,\n `Typology`.`finalclass` AS `finalclass`,\n IF((`Typology`.`finalclass` IN (\'IOSVersion\')), CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Typology`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Typology`.`name`, \'\')) AS CHAR)) AS `friendlyname`\n FROM \n   `typology` AS `Typology`\n   LEFT JOIN (\n      `iosversion` AS `Typology_poly_IOSVersion` \n      INNER JOIN \n         `typology` AS `Brand_brand_id_Typology`\n       ON `Typology_poly_IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`\n   ) ON `Typology`.`id` = `Typology_poly_IOSVersion`.`id`\n WHERE COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Typology`.`id` AS `id`,`Typology`.`name` AS `name`,`Typology`.`finalclass` AS `finalclass`,if((`Typology`.`finalclass` = \'IOSVersion\'),cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Typology`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Typology`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname` from (`itop27`.`typology` `Typology` left join (`itop27`.`iosversion` `Typology_poly_IOSVersion` join `itop27`.`typology` `Brand_brand_id_Typology` on((`Typology_poly_IOSVersion`.`brand_id` = `Brand_brand_id_Typology`.`id`))) on((`Typology`.`id` = `Typology_poly_IOSVersion`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
