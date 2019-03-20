TYPE=VIEW
query=select distinct `_vlan`.`id` AS `id`,`_vlan`.`vlan_tag` AS `vlan_tag`,`_vlan`.`description` AS `description`,`_vlan`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,cast(concat(coalesce(`_vlan`.`vlan_tag`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`vlan` `_vlan` join `itop`.`organization` `Organization_org_id_organization` on((`_vlan`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=e6c73f28c400f9a54f32a8df61d714f2
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_vlan`.`id` AS `id`, `_vlan`.`vlan_tag` AS `vlan_tag`, `_vlan`.`description` AS `description`, `_vlan`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, CAST(CONCAT(COALESCE(`_vlan`.`vlan_tag`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `vlan` AS `_vlan`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_vlan`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_vlan`.`id` AS `id`,`_vlan`.`vlan_tag` AS `vlan_tag`,`_vlan`.`description` AS `description`,`_vlan`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,cast(concat(coalesce(`_vlan`.`vlan_tag`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`vlan` `_vlan` join `itop`.`organization` `Organization_org_id_organization` on((`_vlan`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
