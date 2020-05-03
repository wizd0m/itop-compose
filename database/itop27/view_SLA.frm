TYPE=VIEW
query=select distinct `SLA`.`id` AS `id`,`SLA`.`name` AS `name`,`SLA`.`description` AS `description`,`SLA`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,cast(concat(coalesce(`SLA`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`sla` `SLA` join `itop27`.`organization` `Organization_org_id` on((`SLA`.`org_id` = `Organization_org_id`.`id`))) where 1
md5=02fccadf53dd2a97806492d8d894fe21
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `SLA`.`id` AS `id`,\n `SLA`.`name` AS `name`,\n `SLA`.`description` AS `description`,\n `SLA`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n CAST(CONCAT(COALESCE(`SLA`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `sla` AS `SLA`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `SLA`.`org_id` = `Organization_org_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `SLA`.`id` AS `id`,`SLA`.`name` AS `name`,`SLA`.`description` AS `description`,`SLA`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,cast(concat(coalesce(`SLA`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`sla` `SLA` join `itop27`.`organization` `Organization_org_id` on((`SLA`.`org_id` = `Organization_org_id`.`id`))) where 1
