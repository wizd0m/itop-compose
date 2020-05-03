TYPE=VIEW
query=select distinct `lnkPersonToTeam`.`id` AS `id`,`lnkPersonToTeam`.`team_id` AS `team_id`,`Team_team_id_Contact`.`name` AS `team_name`,`lnkPersonToTeam`.`person_id` AS `person_id`,`Person_person_id_Contact`.`name` AS `person_name`,`lnkPersonToTeam`.`role_id` AS `role_id`,`ContactType_role_id_Typology`.`name` AS `role_name`,cast(concat(coalesce(`lnkPersonToTeam`.`team_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkPersonToTeam`.`person_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Team_team_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_Contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_person_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_person_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `person_id_friendlyname`,coalesce((`Person_person_id_Contact`.`status` = \'inactive\'),0) AS `person_id_obsolescence_flag`,cast(concat(coalesce(`ContactType_role_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `role_id_friendlyname` from (((`itop27`.`lnkpersontoteam` `lnkPersonToTeam` join `itop27`.`contact` `Team_team_id_Contact` on((`lnkPersonToTeam`.`team_id` = `Team_team_id_Contact`.`id`))) join (`itop27`.`person` `Person_person_id` join `itop27`.`contact` `Person_person_id_Contact` on((`Person_person_id`.`id` = `Person_person_id_Contact`.`id`))) on((`lnkPersonToTeam`.`person_id` = `Person_person_id`.`id`))) left join `itop27`.`typology` `ContactType_role_id_Typology` on((`lnkPersonToTeam`.`role_id` = `ContactType_role_id_Typology`.`id`))) where (coalesce((`Team_team_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`ContactType_role_id_Typology`.`finalclass` = \'ContactType\'),1))
md5=b3acd560b48de7590142281c4620fd66
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `lnkPersonToTeam`.`id` AS `id`,\n `lnkPersonToTeam`.`team_id` AS `team_id`,\n `Team_team_id_Contact`.`name` AS `team_name`,\n `lnkPersonToTeam`.`person_id` AS `person_id`,\n `Person_person_id_Contact`.`name` AS `person_name`,\n `lnkPersonToTeam`.`role_id` AS `role_id`,\n `ContactType_role_id_Typology`.`name` AS `role_name`,\n CAST(CONCAT(COALESCE(`lnkPersonToTeam`.`team_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`lnkPersonToTeam`.`person_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`Team_team_id_Contact`.`name`, \'\')) AS CHAR) AS `team_id_friendlyname`,\n COALESCE((`Team_team_id_Contact`.`status` = \'inactive\'), 0) AS `team_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Person_person_id`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_person_id_Contact`.`name`, \'\')) AS CHAR) AS `person_id_friendlyname`,\n COALESCE((`Person_person_id_Contact`.`status` = \'inactive\'), 0) AS `person_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`ContactType_role_id_Typology`.`name`, \'\')) AS CHAR) AS `role_id_friendlyname`\n FROM \n   `lnkpersontoteam` AS `lnkPersonToTeam`\n   INNER JOIN \n      `contact` AS `Team_team_id_Contact`\n    ON `lnkPersonToTeam`.`team_id` = `Team_team_id_Contact`.`id`\n   INNER JOIN (\n      `person` AS `Person_person_id` \n      INNER JOIN \n         `contact` AS `Person_person_id_Contact`\n       ON `Person_person_id`.`id` = `Person_person_id_Contact`.`id`\n   ) ON `lnkPersonToTeam`.`person_id` = `Person_person_id`.`id`\n   LEFT JOIN \n      `typology` AS `ContactType_role_id_Typology`\n    ON `lnkPersonToTeam`.`role_id` = `ContactType_role_id_Typology`.`id`\n WHERE (COALESCE((`Team_team_id_Contact`.`finalclass` IN (\'Team\')), 1) AND COALESCE((`ContactType_role_id_Typology`.`finalclass` IN (\'ContactType\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkPersonToTeam`.`id` AS `id`,`lnkPersonToTeam`.`team_id` AS `team_id`,`Team_team_id_Contact`.`name` AS `team_name`,`lnkPersonToTeam`.`person_id` AS `person_id`,`Person_person_id_Contact`.`name` AS `person_name`,`lnkPersonToTeam`.`role_id` AS `role_id`,`ContactType_role_id_Typology`.`name` AS `role_name`,cast(concat(coalesce(`lnkPersonToTeam`.`team_id`,\'\'),coalesce(\' \',\'\'),coalesce(`lnkPersonToTeam`.`person_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Team_team_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_Contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_person_id`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_person_id_Contact`.`name`,\'\')) as char charset utf8mb4) AS `person_id_friendlyname`,coalesce((`Person_person_id_Contact`.`status` = \'inactive\'),0) AS `person_id_obsolescence_flag`,cast(concat(coalesce(`ContactType_role_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `role_id_friendlyname` from (((`itop27`.`lnkpersontoteam` `lnkPersonToTeam` join `itop27`.`contact` `Team_team_id_Contact` on((`lnkPersonToTeam`.`team_id` = `Team_team_id_Contact`.`id`))) join (`itop27`.`person` `Person_person_id` join `itop27`.`contact` `Person_person_id_Contact` on((`Person_person_id`.`id` = `Person_person_id_Contact`.`id`))) on((`lnkPersonToTeam`.`person_id` = `Person_person_id`.`id`))) left join `itop27`.`typology` `ContactType_role_id_Typology` on((`lnkPersonToTeam`.`role_id` = `ContactType_role_id_Typology`.`id`))) where (coalesce((`Team_team_id_Contact`.`finalclass` = \'Team\'),1) and coalesce((`ContactType_role_id_Typology`.`finalclass` = \'ContactType\'),1))
