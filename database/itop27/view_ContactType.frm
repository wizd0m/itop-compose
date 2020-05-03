TYPE=VIEW
query=select distinct `ContactType_Typology`.`id` AS `id`,`ContactType_Typology`.`name` AS `name`,`ContactType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`ContactType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `ContactType_Typology` where coalesce((`ContactType_Typology`.`finalclass` = \'ContactType\'),1)
md5=19202f16aeef6eeef525a9d94dc68952
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `ContactType_Typology`.`id` AS `id`,\n `ContactType_Typology`.`name` AS `name`,\n `ContactType_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`ContactType_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `ContactType_Typology`\n WHERE COALESCE((`ContactType_Typology`.`finalclass` IN (\'ContactType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `ContactType_Typology`.`id` AS `id`,`ContactType_Typology`.`name` AS `name`,`ContactType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`ContactType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `ContactType_Typology` where coalesce((`ContactType_Typology`.`finalclass` = \'ContactType\'),1)
