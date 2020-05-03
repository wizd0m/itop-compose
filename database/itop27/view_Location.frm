TYPE=VIEW
query=select distinct `Location`.`id` AS `id`,`Location`.`name` AS `name`,`Location`.`status` AS `status`,`Location`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Location`.`address` AS `address`,`Location`.`postal_code` AS `postal_code`,`Location`.`city` AS `city`,`Location`.`country` AS `country`,cast(concat(coalesce(`Location`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Location`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`Location`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`location` `Location` join `itop27`.`organization` `Organization_org_id` on((`Location`.`org_id` = `Organization_org_id`.`id`))) where 1
md5=4bfd5f98466df189c0c0270d053a700e
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `Location`.`id` AS `id`,\n `Location`.`name` AS `name`,\n `Location`.`status` AS `status`,\n `Location`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `org_name`,\n `Location`.`address` AS `address`,\n `Location`.`postal_code` AS `postal_code`,\n `Location`.`city` AS `city`,\n `Location`.`country` AS `country`,\n CAST(CONCAT(COALESCE(`Location`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`Location`.`status` = \'inactive\'), 0) AS `obsolescence_flag`,\n `Location`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `location` AS `Location`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `Location`.`org_id` = `Organization_org_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Location`.`id` AS `id`,`Location`.`name` AS `name`,`Location`.`status` AS `status`,`Location`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,`Location`.`address` AS `address`,`Location`.`postal_code` AS `postal_code`,`Location`.`city` AS `city`,`Location`.`country` AS `country`,cast(concat(coalesce(`Location`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Location`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`Location`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`location` `Location` join `itop27`.`organization` `Organization_org_id` on((`Location`.`org_id` = `Organization_org_id`.`id`))) where 1
