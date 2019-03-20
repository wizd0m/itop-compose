TYPE=VIEW
query=select distinct `_deliverymodel`.`id` AS `id`,`_deliverymodel`.`name` AS `name`,`_deliverymodel`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_deliverymodel`.`description` AS `description`,cast(concat(coalesce(`_deliverymodel`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`deliverymodel` `_deliverymodel` join `itop`.`organization` `Organization_org_id_organization` on((`_deliverymodel`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=3eecc112d24c473b1a1f3742d7f6de6f
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:08
create-version=1
source=SELECT DISTINCT `_deliverymodel`.`id` AS `id`, `_deliverymodel`.`name` AS `name`, `_deliverymodel`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_deliverymodel`.`description` AS `description`, CAST(CONCAT(COALESCE(`_deliverymodel`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `deliverymodel` AS `_deliverymodel`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_deliverymodel`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_deliverymodel`.`id` AS `id`,`_deliverymodel`.`name` AS `name`,`_deliverymodel`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_deliverymodel`.`description` AS `description`,cast(concat(coalesce(`_deliverymodel`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop`.`deliverymodel` `_deliverymodel` join `itop`.`organization` `Organization_org_id_organization` on((`_deliverymodel`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
