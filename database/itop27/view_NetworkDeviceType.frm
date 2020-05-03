TYPE=VIEW
query=select distinct `NetworkDeviceType_Typology`.`id` AS `id`,`NetworkDeviceType_Typology`.`name` AS `name`,`NetworkDeviceType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`NetworkDeviceType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `NetworkDeviceType_Typology` where coalesce((`NetworkDeviceType_Typology`.`finalclass` = \'NetworkDeviceType\'),1)
md5=1c2748fbf84d00ff2d3cf7ed7e41ced1
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `NetworkDeviceType_Typology`.`id` AS `id`,\n `NetworkDeviceType_Typology`.`name` AS `name`,\n `NetworkDeviceType_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`NetworkDeviceType_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `NetworkDeviceType_Typology`\n WHERE COALESCE((`NetworkDeviceType_Typology`.`finalclass` IN (\'NetworkDeviceType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `NetworkDeviceType_Typology`.`id` AS `id`,`NetworkDeviceType_Typology`.`name` AS `name`,`NetworkDeviceType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`NetworkDeviceType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `NetworkDeviceType_Typology` where coalesce((`NetworkDeviceType_Typology`.`finalclass` = \'NetworkDeviceType\'),1)
