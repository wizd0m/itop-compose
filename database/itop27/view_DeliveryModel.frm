TYPE=VIEW
query=select distinct `DeliveryModel`.`id` AS `id`,`DeliveryModel`.`name` AS `name`,`DeliveryModel`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`DeliveryModel`.`description` AS `description`,cast(concat(coalesce(`DeliveryModel`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`deliverymodel` `DeliveryModel` join `itop27`.`organization` `Organization_org_id` on((`DeliveryModel`.`org_id` = `Organization_org_id`.`id`))) where 1
md5=e6f851e02e13ca2cb6749eddb24117ad
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `DeliveryModel`.`id` AS `id`,\n `DeliveryModel`.`name` AS `name`,\n `DeliveryModel`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `DeliveryModel`.`description` AS `description`,\n CAST(CONCAT(COALESCE(`DeliveryModel`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `deliverymodel` AS `DeliveryModel`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `DeliveryModel`.`org_id` = `Organization_org_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `DeliveryModel`.`id` AS `id`,`DeliveryModel`.`name` AS `name`,`DeliveryModel`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`DeliveryModel`.`description` AS `description`,cast(concat(coalesce(`DeliveryModel`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`deliverymodel` `DeliveryModel` join `itop27`.`organization` `Organization_org_id` on((`DeliveryModel`.`org_id` = `Organization_org_id`.`id`))) where 1
