TYPE=VIEW
query=select distinct `_software`.`id` AS `id`,`_software`.`name` AS `name`,`_software`.`vendor` AS `vendor`,`_software`.`version` AS `version`,`_software`.`type` AS `type`,cast(concat(coalesce(`_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_software`.`version`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop`.`software` `_software` where 1
md5=ef90de8f1dd50ce4271a8d63585d28df
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_software`.`id` AS `id`, `_software`.`name` AS `name`, `_software`.`vendor` AS `vendor`, `_software`.`version` AS `version`, `_software`.`type` AS `type`, CAST(CONCAT(COALESCE(`_software`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_software`.`version`, \'\')) AS CHAR) AS `friendlyname` FROM `software` AS `_software` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_software`.`id` AS `id`,`_software`.`name` AS `name`,`_software`.`vendor` AS `vendor`,`_software`.`version` AS `version`,`_software`.`type` AS `type`,cast(concat(coalesce(`_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_software`.`version`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop`.`software` `_software` where 1