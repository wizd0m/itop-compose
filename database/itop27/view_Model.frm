TYPE=VIEW
query=select distinct `Model`.`id` AS `id`,`Model_Typology`.`name` AS `name`,`Model`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Model`.`type` AS `type`,`Model_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Model_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from ((`itop27`.`model` `Model` join `itop27`.`typology` `Brand_brand_id_Typology` on((`Model`.`brand_id` = `Brand_brand_id_Typology`.`id`))) join `itop27`.`typology` `Model_Typology` on((`Model`.`id` = `Model_Typology`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
md5=a2fac0691d33de28bd71e8cfe194d546
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Model`.`id` AS `id`,\n `Model_Typology`.`name` AS `name`,\n `Model`.`brand_id` AS `brand_id`,\n `Brand_brand_id_Typology`.`name` AS `brand_name`,\n `Model`.`type` AS `type`,\n `Model_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Model_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Brand_brand_id_Typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`\n FROM \n   `model` AS `Model`\n   INNER JOIN \n      `typology` AS `Brand_brand_id_Typology`\n    ON `Model`.`brand_id` = `Brand_brand_id_Typology`.`id`\n   INNER JOIN \n      `typology` AS `Model_Typology`\n    ON `Model`.`id` = `Model_Typology`.`id`\n WHERE COALESCE((`Brand_brand_id_Typology`.`finalclass` IN (\'Brand\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Model`.`id` AS `id`,`Model_Typology`.`name` AS `name`,`Model`.`brand_id` AS `brand_id`,`Brand_brand_id_Typology`.`name` AS `brand_name`,`Model`.`type` AS `type`,`Model_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Model_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Brand_brand_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname` from ((`itop27`.`model` `Model` join `itop27`.`typology` `Brand_brand_id_Typology` on((`Model`.`brand_id` = `Brand_brand_id_Typology`.`id`))) join `itop27`.`typology` `Model_Typology` on((`Model`.`id` = `Model_Typology`.`id`))) where coalesce((`Brand_brand_id_Typology`.`finalclass` = \'Brand\'),1)
