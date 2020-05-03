TYPE=VIEW
query=select distinct `VLAN`.`id` AS `id`,`VLAN`.`vlan_tag` AS `vlan_tag`,`VLAN`.`description` AS `description`,`VLAN`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,cast(concat(coalesce(`VLAN`.`vlan_tag`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`vlan` `VLAN` join `itop27`.`organization` `Organization_org_id` on((`VLAN`.`org_id` = `Organization_org_id`.`id`))) where 1
md5=17932096babb08cf48e4fd80ec86814e
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `VLAN`.`id` AS `id`,\n `VLAN`.`vlan_tag` AS `vlan_tag`,\n `VLAN`.`description` AS `description`,\n `VLAN`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `org_name`,\n CAST(CONCAT(COALESCE(`VLAN`.`vlan_tag`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `vlan` AS `VLAN`\n   INNER JOIN \n      `organization` AS `Organization_org_id`\n    ON `VLAN`.`org_id` = `Organization_org_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `VLAN`.`id` AS `id`,`VLAN`.`vlan_tag` AS `vlan_tag`,`VLAN`.`description` AS `description`,`VLAN`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `org_name`,cast(concat(coalesce(`VLAN`.`vlan_tag`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`itop27`.`vlan` `VLAN` join `itop27`.`organization` `Organization_org_id` on((`VLAN`.`org_id` = `Organization_org_id`.`id`))) where 1
