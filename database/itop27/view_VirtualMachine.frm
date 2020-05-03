TYPE=VIEW
query=select distinct `VirtualMachine`.`id` AS `id`,`VirtualMachine_FunctionalCI`.`name` AS `name`,`VirtualMachine_FunctionalCI`.`description` AS `description`,`VirtualMachine_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`VirtualMachine_FunctionalCI`.`business_criticity` AS `business_criticity`,`VirtualMachine_FunctionalCI`.`move2production` AS `move2production`,`VirtualMachine_VirtualDevice`.`status` AS `status`,`VirtualMachine`.`virtualhost_id` AS `virtualhost_id`,`VirtualHost_virtualhost_id_FunctionalCI`.`name` AS `virtualhost_name`,`VirtualMachine`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,`VirtualMachine`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,`VirtualMachine`.`oslicence_id` AS `oslicence_id`,`OSLicence_oslicence_id_Licence`.`name` AS `oslicence_name`,`VirtualMachine`.`cpu` AS `cpu`,`VirtualMachine`.`ram` AS `ram`,`VirtualMachine`.`managementip` AS `managementip`,`VirtualMachine_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`VirtualMachine_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`VirtualMachine_VirtualDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`VirtualMachine_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`VirtualHost_virtualhost_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualhost_id_friendlyname`,`VirtualHost_virtualhost_id_FunctionalCI`.`finalclass` AS `virtualhost_id_finalclass_recall`,coalesce((`VirtualHost_virtualhost_id_VirtualDevice`.`status` = \'obsolete\'),0) AS `virtualhost_id_obsolescence_flag`,cast(concat(coalesce(`OSFamily_osfamily_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname`,cast(concat(coalesce(`OSLicence_oslicence_id_Licence`.`name`,\'\')) as char charset utf8mb4) AS `oslicence_id_friendlyname`,coalesce(((`OSLicence_oslicence_id_Licence`.`perpetual` = \'no\') and (isnull(`OSLicence_oslicence_id_Licence`.`end_date`) = 0) and (`OSLicence_oslicence_id_Licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `oslicence_id_obsolescence_flag` from ((((((`itop27`.`virtualmachine` `VirtualMachine` join (`itop27`.`virtualdevice` `VirtualHost_virtualhost_id_VirtualDevice` join `itop27`.`functionalci` `VirtualHost_virtualhost_id_FunctionalCI` on((`VirtualHost_virtualhost_id_VirtualDevice`.`id` = `VirtualHost_virtualhost_id_FunctionalCI`.`id`))) on((`VirtualMachine`.`virtualhost_id` = `VirtualHost_virtualhost_id_VirtualDevice`.`id`))) left join `itop27`.`typology` `OSFamily_osfamily_id_Typology` on((`VirtualMachine`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`))) left join `itop27`.`typology` `OSVersion_osversion_id_Typology` on((`VirtualMachine`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`))) left join `itop27`.`licence` `OSLicence_oslicence_id_Licence` on((`VirtualMachine`.`oslicence_id` = `OSLicence_oslicence_id_Licence`.`id`))) join `itop27`.`virtualdevice` `VirtualMachine_VirtualDevice` on((`VirtualMachine`.`id` = `VirtualMachine_VirtualDevice`.`id`))) join (`itop27`.`functionalci` `VirtualMachine_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`VirtualMachine_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`VirtualMachine`.`id` = `VirtualMachine_FunctionalCI`.`id`))) where (coalesce((`VirtualHost_virtualhost_id_VirtualDevice`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualHost\')),1) and coalesce((`OSFamily_osfamily_id_Typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_Typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSLicence_oslicence_id_Licence`.`finalclass` = \'OSLicence\'),1))
md5=9d32c0be00551bf06dc259c786bd8777
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `VirtualMachine`.`id` AS `id`,\n `VirtualMachine_FunctionalCI`.`name` AS `name`,\n `VirtualMachine_FunctionalCI`.`description` AS `description`,\n `VirtualMachine_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `VirtualMachine_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `VirtualMachine_FunctionalCI`.`move2production` AS `move2production`,\n `VirtualMachine_VirtualDevice`.`status` AS `status`,\n `VirtualMachine`.`virtualhost_id` AS `virtualhost_id`,\n `VirtualHost_virtualhost_id_FunctionalCI`.`name` AS `virtualhost_name`,\n `VirtualMachine`.`osfamily_id` AS `osfamily_id`,\n `OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,\n `VirtualMachine`.`osversion_id` AS `osversion_id`,\n `OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,\n `VirtualMachine`.`oslicence_id` AS `oslicence_id`,\n `OSLicence_oslicence_id_Licence`.`name` AS `oslicence_name`,\n `VirtualMachine`.`cpu` AS `cpu`,\n `VirtualMachine`.`ram` AS `ram`,\n `VirtualMachine`.`managementip` AS `managementip`,\n `VirtualMachine_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`VirtualMachine_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`VirtualMachine_VirtualDevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`,\n `VirtualMachine_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`VirtualHost_virtualhost_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `virtualhost_id_friendlyname`,\n `VirtualHost_virtualhost_id_FunctionalCI`.`finalclass` AS `virtualhost_id_finalclass_recall`,\n COALESCE((`VirtualHost_virtualhost_id_VirtualDevice`.`status` = \'obsolete\'), 0) AS `virtualhost_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`OSFamily_osfamily_id_Typology`.`name`, \'\')) AS CHAR) AS `osfamily_id_friendlyname`,\n CAST(CONCAT(COALESCE(`OSVersion_osversion_id_Typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname`,\n CAST(CONCAT(COALESCE(`OSLicence_oslicence_id_Licence`.`name`, \'\')) AS CHAR) AS `oslicence_id_friendlyname`,\n COALESCE((((`OSLicence_oslicence_id_Licence`.`perpetual` = \'no\') AND (ISNULL(`OSLicence_oslicence_id_Licence`.`end_date`) = 0)) AND (`OSLicence_oslicence_id_Licence`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `oslicence_id_obsolescence_flag`\n FROM \n   `virtualmachine` AS `VirtualMachine`\n   INNER JOIN (\n      `virtualdevice` AS `VirtualHost_virtualhost_id_VirtualDevice` \n      INNER JOIN \n         `functionalci` AS `VirtualHost_virtualhost_id_FunctionalCI`\n       ON `VirtualHost_virtualhost_id_VirtualDevice`.`id` = `VirtualHost_virtualhost_id_FunctionalCI`.`id`\n   ) ON `VirtualMachine`.`virtualhost_id` = `VirtualHost_virtualhost_id_VirtualDevice`.`id`\n   LEFT JOIN \n      `typology` AS `OSFamily_osfamily_id_Typology`\n    ON `VirtualMachine`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`\n   LEFT JOIN \n      `typology` AS `OSVersion_osversion_id_Typology`\n    ON `VirtualMachine`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`\n   LEFT JOIN \n      `licence` AS `OSLicence_oslicence_id_Licence`\n    ON `VirtualMachine`.`oslicence_id` = `OSLicence_oslicence_id_Licence`.`id`\n   INNER JOIN \n      `virtualdevice` AS `VirtualMachine_VirtualDevice`\n    ON `VirtualMachine`.`id` = `VirtualMachine_VirtualDevice`.`id`\n   INNER JOIN (\n      `functionalci` AS `VirtualMachine_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `VirtualMachine_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `VirtualMachine`.`id` = `VirtualMachine_FunctionalCI`.`id`\n WHERE (((COALESCE((`VirtualHost_virtualhost_id_VirtualDevice`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualHost\')), 1) AND COALESCE((`OSFamily_osfamily_id_Typology`.`finalclass` IN (\'OSFamily\')), 1)) AND COALESCE((`OSVersion_osversion_id_Typology`.`finalclass` IN (\'OSVersion\')), 1)) AND COALESCE((`OSLicence_oslicence_id_Licence`.`finalclass` IN (\'OSLicence\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `VirtualMachine`.`id` AS `id`,`VirtualMachine_FunctionalCI`.`name` AS `name`,`VirtualMachine_FunctionalCI`.`description` AS `description`,`VirtualMachine_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`VirtualMachine_FunctionalCI`.`business_criticity` AS `business_criticity`,`VirtualMachine_FunctionalCI`.`move2production` AS `move2production`,`VirtualMachine_VirtualDevice`.`status` AS `status`,`VirtualMachine`.`virtualhost_id` AS `virtualhost_id`,`VirtualHost_virtualhost_id_FunctionalCI`.`name` AS `virtualhost_name`,`VirtualMachine`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_Typology`.`name` AS `osfamily_name`,`VirtualMachine`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_Typology`.`name` AS `osversion_name`,`VirtualMachine`.`oslicence_id` AS `oslicence_id`,`OSLicence_oslicence_id_Licence`.`name` AS `oslicence_name`,`VirtualMachine`.`cpu` AS `cpu`,`VirtualMachine`.`ram` AS `ram`,`VirtualMachine`.`managementip` AS `managementip`,`VirtualMachine_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`VirtualMachine_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`VirtualMachine_VirtualDevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`VirtualMachine_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`VirtualHost_virtualhost_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualhost_id_friendlyname`,`VirtualHost_virtualhost_id_FunctionalCI`.`finalclass` AS `virtualhost_id_finalclass_recall`,coalesce((`VirtualHost_virtualhost_id_VirtualDevice`.`status` = \'obsolete\'),0) AS `virtualhost_id_obsolescence_flag`,cast(concat(coalesce(`OSFamily_osfamily_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_Typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname`,cast(concat(coalesce(`OSLicence_oslicence_id_Licence`.`name`,\'\')) as char charset utf8mb4) AS `oslicence_id_friendlyname`,coalesce(((`OSLicence_oslicence_id_Licence`.`perpetual` = \'no\') and (isnull(`OSLicence_oslicence_id_Licence`.`end_date`) = 0) and (`OSLicence_oslicence_id_Licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `oslicence_id_obsolescence_flag` from ((((((`itop27`.`virtualmachine` `VirtualMachine` join (`itop27`.`virtualdevice` `VirtualHost_virtualhost_id_VirtualDevice` join `itop27`.`functionalci` `VirtualHost_virtualhost_id_FunctionalCI` on((`VirtualHost_virtualhost_id_VirtualDevice`.`id` = `VirtualHost_virtualhost_id_FunctionalCI`.`id`))) on((`VirtualMachine`.`virtualhost_id` = `VirtualHost_virtualhost_id_VirtualDevice`.`id`))) left join `itop27`.`typology` `OSFamily_osfamily_id_Typology` on((`VirtualMachine`.`osfamily_id` = `OSFamily_osfamily_id_Typology`.`id`))) left join `itop27`.`typology` `OSVersion_osversion_id_Typology` on((`VirtualMachine`.`osversion_id` = `OSVersion_osversion_id_Typology`.`id`))) left join `itop27`.`licence` `OSLicence_oslicence_id_Licence` on((`VirtualMachine`.`oslicence_id` = `OSLicence_oslicence_id_Licence`.`id`))) join `itop27`.`virtualdevice` `VirtualMachine_VirtualDevice` on((`VirtualMachine`.`id` = `VirtualMachine_VirtualDevice`.`id`))) join (`itop27`.`functionalci` `VirtualMachine_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`VirtualMachine_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`VirtualMachine`.`id` = `VirtualMachine_FunctionalCI`.`id`))) where (coalesce((`VirtualHost_virtualhost_id_VirtualDevice`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualHost\')),1) and coalesce((`OSFamily_osfamily_id_Typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_Typology`.`finalclass` = \'OSVersion\'),1) and coalesce((`OSLicence_oslicence_id_Licence`.`finalclass` = \'OSLicence\'),1))
