TYPE=VIEW
query=select distinct `Brand_Typology`.`id` AS `id`,`Brand_Typology`.`name` AS `name`,`Brand_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `Brand_Typology` where coalesce((`Brand_Typology`.`finalclass` = \'Brand\'),1)
md5=ca151afa436734a6cb2b3d04ea7d9957
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Brand_Typology`.`id` AS `id`,\n `Brand_Typology`.`name` AS `name`,\n `Brand_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Brand_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `Brand_Typology`\n WHERE COALESCE((`Brand_Typology`.`finalclass` IN (\'Brand\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Brand_Typology`.`id` AS `id`,`Brand_Typology`.`name` AS `name`,`Brand_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Brand_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `Brand_Typology` where coalesce((`Brand_Typology`.`finalclass` = \'Brand\'),1)
