TYPE=VIEW
query=select distinct `Tape`.`id` AS `id`,`Tape`.`name` AS `name`,`Tape`.`description` AS `description`,`Tape`.`size` AS `size`,`Tape`.`tapelibrary_id` AS `tapelibrary_id`,`TapeLibrary_tapelibrary_id_FunctionalCI`.`name` AS `tapelibrary_name`,cast(concat(coalesce(`Tape`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce(coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `obsolescence_flag`,`Tape`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`TapeLibrary_tapelibrary_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `tapelibrary_id_friendlyname`,coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `tapelibrary_id_obsolescence_flag` from (`itop27`.`tape` `Tape` join (`itop27`.`physicaldevice` `TapeLibrary_tapelibrary_id_PhysicalDevice` join `itop27`.`functionalci` `TapeLibrary_tapelibrary_id_FunctionalCI` on((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`id` = `TapeLibrary_tapelibrary_id_FunctionalCI`.`id`))) on((`Tape`.`tapelibrary_id` = `TapeLibrary_tapelibrary_id_PhysicalDevice`.`id`))) where coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`finalclass` = \'TapeLibrary\'),1)
md5=9f6a5e8b0c961d00b89d67c0498c1e49
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `Tape`.`id` AS `id`,\n `Tape`.`name` AS `name`,\n `Tape`.`description` AS `description`,\n `Tape`.`size` AS `size`,\n `Tape`.`tapelibrary_id` AS `tapelibrary_id`,\n `TapeLibrary_tapelibrary_id_FunctionalCI`.`name` AS `tapelibrary_name`,\n CAST(CONCAT(COALESCE(`Tape`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE(COALESCE((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'), 0), 0) AS `obsolescence_flag`,\n `Tape`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`TapeLibrary_tapelibrary_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `tapelibrary_id_friendlyname`,\n COALESCE((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `tapelibrary_id_obsolescence_flag`\n FROM \n   `tape` AS `Tape`\n   INNER JOIN (\n      `physicaldevice` AS `TapeLibrary_tapelibrary_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `TapeLibrary_tapelibrary_id_FunctionalCI`\n       ON `TapeLibrary_tapelibrary_id_PhysicalDevice`.`id` = `TapeLibrary_tapelibrary_id_FunctionalCI`.`id`\n   ) ON `Tape`.`tapelibrary_id` = `TapeLibrary_tapelibrary_id_PhysicalDevice`.`id`\n WHERE COALESCE((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`finalclass` IN (\'TapeLibrary\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `Tape`.`id` AS `id`,`Tape`.`name` AS `name`,`Tape`.`description` AS `description`,`Tape`.`size` AS `size`,`Tape`.`tapelibrary_id` AS `tapelibrary_id`,`TapeLibrary_tapelibrary_id_FunctionalCI`.`name` AS `tapelibrary_name`,cast(concat(coalesce(`Tape`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce(coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `obsolescence_flag`,`Tape`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`TapeLibrary_tapelibrary_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `tapelibrary_id_friendlyname`,coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `tapelibrary_id_obsolescence_flag` from (`itop27`.`tape` `Tape` join (`itop27`.`physicaldevice` `TapeLibrary_tapelibrary_id_PhysicalDevice` join `itop27`.`functionalci` `TapeLibrary_tapelibrary_id_FunctionalCI` on((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`id` = `TapeLibrary_tapelibrary_id_FunctionalCI`.`id`))) on((`Tape`.`tapelibrary_id` = `TapeLibrary_tapelibrary_id_PhysicalDevice`.`id`))) where coalesce((`TapeLibrary_tapelibrary_id_PhysicalDevice`.`finalclass` = \'TapeLibrary\'),1)
