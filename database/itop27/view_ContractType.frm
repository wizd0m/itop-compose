TYPE=VIEW
query=select distinct `ContractType_Typology`.`id` AS `id`,`ContractType_Typology`.`name` AS `name`,`ContractType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`ContractType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `ContractType_Typology` where coalesce((`ContractType_Typology`.`finalclass` = \'ContractType\'),1)
md5=6c6384285c3f98fa15b9596669567071
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `ContractType_Typology`.`id` AS `id`,\n `ContractType_Typology`.`name` AS `name`,\n `ContractType_Typology`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`ContractType_Typology`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `typology` AS `ContractType_Typology`\n WHERE COALESCE((`ContractType_Typology`.`finalclass` IN (\'ContractType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `ContractType_Typology`.`id` AS `id`,`ContractType_Typology`.`name` AS `name`,`ContractType_Typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`ContractType_Typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`typology` `ContractType_Typology` where coalesce((`ContractType_Typology`.`finalclass` = \'ContractType\'),1)
