TYPE=VIEW
query=select distinct `Subnet`.`id` AS `id`,`Subnet`.`description` AS `description`,`Subnet`.`subnet_name` AS `subnet_name`,`Subnet`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Subnet`.`ip` AS `ip`,`Subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`Subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`Subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`subnet` `Subnet` join `itop27`.`organization` `Organization_org_id` on((`Subnet`.`org_id` = `Organization_org_id`.`id`))) where 1
md5=4489e7cc5f620ab0f0bcaf76460d5319
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Subnet`.`id` AS `id`,\n `Subnet`.`description` AS `description`,\n `Subnet`.`subnet_name` AS `subnet_name`,\n `Subnet`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `org_name`,\n `Subnet`.`ip` AS `ip`,\n `Subnet`.`ip_mask` AS `ip_mask`,\n CAST(CONCAT(COALESCE(`Subnet`.`ip`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Subnet`.`ip_mask`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `subnet` AS `Subnet`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `Subnet`.`org_id` = `Organization_org_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Subnet`.`id` AS `id`,`Subnet`.`description` AS `description`,`Subnet`.`subnet_name` AS `subnet_name`,`Subnet`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Subnet`.`ip` AS `ip`,`Subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`Subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`Subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`subnet` `Subnet` join `itop27`.`organization` `Organization_org_id` on((`Subnet`.`org_id` = `Organization_org_id`.`id`))) where 1
