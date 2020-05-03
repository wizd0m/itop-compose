TYPE=VIEW
query=select distinct `DocumentType_Typology`.`id` AS `id`,`DocumentType_Typology`.`name` AS `name`,`DocumentType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`DocumentType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `DocumentType_Typology` where coalesce((`DocumentType_Typology`.`finalclass` = \'DocumentType\'),1)
md5=d3f9b259525a67a8af13b75305d362a2
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `DocumentType_Typology`.`id` AS `id`,\n `DocumentType_Typology`.`name` AS `name`,\n `DocumentType_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`DocumentType_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `DocumentType_Typology`\n WHERE COALESCE((`DocumentType_Typology`.`finalclass` IN (\'DocumentType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `DocumentType_Typology`.`id` AS `id`,`DocumentType_Typology`.`name` AS `name`,`DocumentType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`DocumentType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `DocumentType_Typology` where coalesce((`DocumentType_Typology`.`finalclass` = \'DocumentType\'),1)
