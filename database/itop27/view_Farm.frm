TYPE=VIEW
query=select distinct `Farm`.`id` AS `id`,`Farm_FunctionalCI`.`name` AS `name`,`Farm_FunctionalCI`.`description` AS `description`,`Farm_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Farm_FunctionalCI`.`business_criticity` AS `business_criticity`,`Farm_FunctionalCI`.`move2production` AS `move2production`,`Farm_VirtualDevice`.`status` AS `status`,`Farm`.`redundancy` AS `redundancy`,`Farm_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Farm_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Farm_VirtualDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Farm_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from ((`itop27`.`farm` `Farm` join `itop27`.`virtualdevice` `Farm_VirtualDevice` on((`Farm`.`id` = `Farm_VirtualDevice`.`id`))) join (`itop27`.`functionalci` `Farm_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Farm_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Farm`.`id` = `Farm_FunctionalCI`.`id`))) where 1
md5=7f4420ec12de8fa5e5e10462cf06a307
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `Farm`.`id` AS `id`,\n `Farm_FunctionalCI`.`name` AS `name`,\n `Farm_FunctionalCI`.`description` AS `description`,\n `Farm_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `Farm_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `Farm_FunctionalCI`.`move2production` AS `move2production`,\n `Farm_VirtualDevice`.`status` AS `status`,\n `Farm`.`redundancy` AS `redundancy`,\n `Farm_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`Farm_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`Farm_VirtualDevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `Farm_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`\n FROM \n   `farm` AS `Farm`\n   INNER JOIN \n      `virtualdevice` AS `Farm_VirtualDevice`\n    ON `Farm`.`id` = `Farm_VirtualDevice`.`id`\n   INNER JOIN (\n      `functionalci` AS `Farm_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `Farm_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `Farm`.`id` = `Farm_FunctionalCI`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Farm`.`id` AS `id`,`Farm_FunctionalCI`.`name` AS `name`,`Farm_FunctionalCI`.`description` AS `description`,`Farm_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`Farm_FunctionalCI`.`business_criticity` AS `business_criticity`,`Farm_FunctionalCI`.`move2production` AS `move2production`,`Farm_VirtualDevice`.`status` AS `status`,`Farm`.`redundancy` AS `redundancy`,`Farm_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`Farm_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`Farm_VirtualDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`Farm_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from ((`itop27`.`farm` `Farm` join `itop27`.`virtualdevice` `Farm_VirtualDevice` on((`Farm`.`id` = `Farm_VirtualDevice`.`id`))) join (`itop27`.`functionalci` `Farm_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`Farm_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`Farm`.`id` = `Farm_FunctionalCI`.`id`))) where 1
