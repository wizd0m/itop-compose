TYPE=VIEW
query=select distinct `_subnet`.`id` AS `id`,`_subnet`.`description` AS `description`,`_subnet`.`subnet_name` AS `subnet_name`,`_subnet`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_subnet`.`ip` AS `ip`,`_subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`_subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`_subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`subnet` `_subnet` join `itop`.`organization` `Organization_org_id_organization` on((`_subnet`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=96ce4709969628f189cca37d9eddbbcd
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_subnet`.`id` AS `id`, `_subnet`.`description` AS `description`, `_subnet`.`subnet_name` AS `subnet_name`, `_subnet`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, `_subnet`.`ip` AS `ip`, `_subnet`.`ip_mask` AS `ip_mask`, CAST(CONCAT(COALESCE(`_subnet`.`ip`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_subnet`.`ip_mask`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `subnet` AS `_subnet`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_subnet`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_subnet`.`id` AS `id`,`_subnet`.`description` AS `description`,`_subnet`.`subnet_name` AS `subnet_name`,`_subnet`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_subnet`.`ip` AS `ip`,`_subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`_subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`_subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`subnet` `_subnet` join `itop`.`organization` `Organization_org_id_organization` on((`_subnet`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
