TYPE=VIEW
query=select distinct `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`id` AS `id`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`code` AS `code`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label` AS `label`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`description` AS `description`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_class` AS `obj_class`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_attcode` AS `obj_attcode`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` AS `finalclass`,cast(concat(coalesce(`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`priv_tagfielddata` `TagSetFieldDataFor_FAQ__domains_TagSetFieldData` where coalesce((`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)
md5=9d02375599a34b203ba49989baeaa00e
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`id` AS `id`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`code` AS `code`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label` AS `label`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`description` AS `description`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_class` AS `obj_class`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_attcode` AS `obj_attcode`,\n `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `priv_tagfielddata` AS `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`\n WHERE COALESCE((`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` IN (\'TagSetFieldDataFor_FAQ__domains\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`id` AS `id`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`code` AS `code`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label` AS `label`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`description` AS `description`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_class` AS `obj_class`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`obj_attcode` AS `obj_attcode`,`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` AS `finalclass`,cast(concat(coalesce(`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`priv_tagfielddata` `TagSetFieldDataFor_FAQ__domains_TagSetFieldData` where coalesce((`TagSetFieldDataFor_FAQ__domains_TagSetFieldData`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)
