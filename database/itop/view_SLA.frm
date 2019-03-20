TYPE=VIEW
query=select distinct `_sla`.`id` AS `id`,`_sla`.`name` AS `name`,`_sla`.`description` AS `description`,`_sla`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,cast(concat(coalesce(`_sla`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`sla` `_sla` join `itop`.`organization` `Organization_org_id_organization` on((`_sla`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=23f8384e9b3800f9813d226b019fc5b8
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:08
create-version=1
source=SELECT DISTINCT `_sla`.`id` AS `id`, `_sla`.`name` AS `name`, `_sla`.`description` AS `description`, `_sla`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, CAST(CONCAT(COALESCE(`_sla`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `sla` AS `_sla`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_sla`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_sla`.`id` AS `id`,`_sla`.`name` AS `name`,`_sla`.`description` AS `description`,`_sla`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,cast(concat(coalesce(`_sla`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`sla` `_sla` join `itop`.`organization` `Organization_org_id_organization` on((`_sla`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
