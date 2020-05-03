TYPE=VIEW
query=select distinct `SoftwarePatch`.`id` AS `id`,`SoftwarePatch_Patch`.`name` AS `name`,`SoftwarePatch_Patch`.`description` AS `description`,`SoftwarePatch`.`software_id` AS `software_id`,`Software_software_id`.`name` AS `software_name`,`SoftwarePatch_Patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`SoftwarePatch_Patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Software_software_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname` from ((`itop27`.`softwarepatch` `SoftwarePatch` join `itop27`.`software` `Software_software_id` on((`SoftwarePatch`.`software_id` = `Software_software_id`.`id`))) join `itop27`.`patch` `SoftwarePatch_Patch` on((`SoftwarePatch`.`id` = `SoftwarePatch_Patch`.`id`))) where 1
md5=8d52577ac55618981b2c5b6c1e1ac87c
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `SoftwarePatch`.`id` AS `id`,\n `SoftwarePatch_Patch`.`name` AS `name`,\n `SoftwarePatch_Patch`.`description` AS `description`,\n `SoftwarePatch`.`software_id` AS `software_id`,\n `Software_software_id`.`name` AS `software_name`,\n `SoftwarePatch_Patch`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`SoftwarePatch_Patch`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Software_software_id`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Software_software_id`.`version`, \'\')) AS CHAR) AS `software_id_friendlyname`\n FROM \n   `softwarepatch` AS `SoftwarePatch`\n   INNER JOIN \n      `software` AS `Software_software_id`\n    ON `SoftwarePatch`.`software_id` = `Software_software_id`.`id`\n   INNER JOIN \n      `patch` AS `SoftwarePatch_Patch`\n    ON `SoftwarePatch`.`id` = `SoftwarePatch_Patch`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `SoftwarePatch`.`id` AS `id`,`SoftwarePatch_Patch`.`name` AS `name`,`SoftwarePatch_Patch`.`description` AS `description`,`SoftwarePatch`.`software_id` AS `software_id`,`Software_software_id`.`name` AS `software_name`,`SoftwarePatch_Patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`SoftwarePatch_Patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Software_software_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname` from ((`itop27`.`softwarepatch` `SoftwarePatch` join `itop27`.`software` `Software_software_id` on((`SoftwarePatch`.`software_id` = `Software_software_id`.`id`))) join `itop27`.`patch` `SoftwarePatch_Patch` on((`SoftwarePatch`.`id` = `SoftwarePatch_Patch`.`id`))) where 1
