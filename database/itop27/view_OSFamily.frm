TYPE=VIEW
query=select distinct `OSFamily_Typology`.`id` AS `id`,`OSFamily_Typology`.`name` AS `name`,`OSFamily_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSFamily_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `OSFamily_Typology` where coalesce((`OSFamily_Typology`.`finalclass` = \'OSFamily\'),1)
md5=879be8e97169d71d181520612b8943a4
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `OSFamily_Typology`.`id` AS `id`,\n `OSFamily_Typology`.`name` AS `name`,\n `OSFamily_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`OSFamily_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `OSFamily_Typology`\n WHERE COALESCE((`OSFamily_Typology`.`finalclass` IN (\'OSFamily\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `OSFamily_Typology`.`id` AS `id`,`OSFamily_Typology`.`name` AS `name`,`OSFamily_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`OSFamily_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `OSFamily_Typology` where coalesce((`OSFamily_Typology`.`finalclass` = \'OSFamily\'),1)
