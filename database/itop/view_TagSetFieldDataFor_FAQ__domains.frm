TYPE=VIEW
query=select distinct `_priv_tagfielddata`.`id` AS `id`,`_priv_tagfielddata`.`code` AS `code`,`_priv_tagfielddata`.`label` AS `label`,`_priv_tagfielddata`.`description` AS `description`,`_priv_tagfielddata`.`obj_class` AS `obj_class`,`_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`,`_priv_tagfielddata`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_priv_tagfielddata`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop`.`priv_tagfielddata` `_priv_tagfielddata` where coalesce((`_priv_tagfielddata`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)
md5=bbadb901de3df9027c628f3efef297c7
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:07
create-version=1
source=SELECT DISTINCT `_priv_tagfielddata`.`id` AS `id`, `_priv_tagfielddata`.`code` AS `code`, `_priv_tagfielddata`.`label` AS `label`, `_priv_tagfielddata`.`description` AS `description`, `_priv_tagfielddata`.`obj_class` AS `obj_class`, `_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`, `_priv_tagfielddata`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_priv_tagfielddata`.`label`, \'\')) AS CHAR) AS `friendlyname` FROM `priv_tagfielddata` AS `_priv_tagfielddata` WHERE COALESCE((`_priv_tagfielddata`.`finalclass` IN (\'TagSetFieldDataFor_FAQ__domains\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_priv_tagfielddata`.`id` AS `id`,`_priv_tagfielddata`.`code` AS `code`,`_priv_tagfielddata`.`label` AS `label`,`_priv_tagfielddata`.`description` AS `description`,`_priv_tagfielddata`.`obj_class` AS `obj_class`,`_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`,`_priv_tagfielddata`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_priv_tagfielddata`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop`.`priv_tagfielddata` `_priv_tagfielddata` where coalesce((`_priv_tagfielddata`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)