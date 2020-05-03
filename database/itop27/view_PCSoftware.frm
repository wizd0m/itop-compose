TYPE=VIEW
query=select distinct `PCSoftware_SoftwareInstance`.`id` AS `id`,`PCSoftware_FunctionalCI`.`name` AS `name`,`PCSoftware_FunctionalCI`.`description` AS `description`,`PCSoftware_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`PCSoftware_FunctionalCI`.`business_criticity` AS `business_criticity`,`PCSoftware_FunctionalCI`.`move2production` AS `move2production`,`PCSoftware_SoftwareInstance`.`functionalci_id` AS `system_id`,`FunctionalCI_system_id`.`name` AS `system_name`,`PCSoftware_SoftwareInstance`.`software_id` AS `software_id`,`Software_software_id`.`name` AS `software_name`,`PCSoftware_SoftwareInstance`.`softwarelicence_id` AS `softwarelicence_id`,`SoftwareLicence_softwarelicence_id_Licence`.`name` AS `softwarelicence_name`,`PCSoftware_SoftwareInstance`.`path` AS `path`,`PCSoftware_SoftwareInstance`.`status` AS `status`,`PCSoftware_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`PCSoftware_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`PCSoftware_SoftwareInstance`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`PCSoftware_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,if((`FunctionalCI_system_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_system_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id1`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4)) AS `system_id_friendlyname`,`FunctionalCI_system_id`.`finalclass` AS `system_id_finalclass_recall`,if((`FunctionalCI_system_id`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_system_id`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_system_id_poly_VirtualDevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_system_id_poly_SoftwareInstance`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_system_id_poly_BusinessProcess`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_system_id_poly_ApplicationSolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_system_id_poly_PhysicalDevice`.`status` = \'obsolete\'),0))))))))) AS `system_id_obsolescence_flag`,cast(concat(coalesce(`Software_software_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname`,cast(concat(coalesce(`SoftwareLicence_softwarelicence_id_Licence`.`name`,\'\')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`,coalesce(((`SoftwareLicence_softwarelicence_id_Licence`.`perpetual` = \'no\') and (isnull(`SoftwareLicence_softwarelicence_id_Licence`.`end_date`) = 0) and (`SoftwareLicence_softwarelicence_id_Licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `softwarelicence_id_obsolescence_flag` from ((((`itop27`.`softwareinstance` `PCSoftware_SoftwareInstance` join ((((((((`itop27`.`functionalci` `FunctionalCI_system_id` left join (`itop27`.`softwareinstance` `FunctionalCI_system_id_poly_SoftwareInstance` join `itop27`.`functionalci` `FunctionalCI_system_id1` on((`FunctionalCI_system_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id1`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_SoftwareInstance`.`id`))) left join `itop27`.`virtualdevice` `FunctionalCI_system_id_poly_VirtualDevice` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_VirtualDevice`.`id`))) left join (`itop27`.`webapplication` `FunctionalCI_system_id_poly_WebApplication` join `itop27`.`softwareinstance` `WebServer_webserver_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_WebApplication`.`id`))) left join (`itop27`.`databaseschema` `FunctionalCI_system_id_poly_DatabaseSchema` join `itop27`.`softwareinstance` `DBServer_dbserver_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_DatabaseSchema`.`id`))) left join (`itop27`.`middlewareinstance` `FunctionalCI_system_id_poly_MiddlewareInstance` join `itop27`.`softwareinstance` `Middleware_middleware_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_MiddlewareInstance`.`id`))) left join `itop27`.`businessprocess` `FunctionalCI_system_id_poly_BusinessProcess` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_BusinessProcess`.`id`))) left join `itop27`.`applicationsolution` `FunctionalCI_system_id_poly_ApplicationSolution` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_ApplicationSolution`.`id`))) left join `itop27`.`physicaldevice` `FunctionalCI_system_id_poly_PhysicalDevice` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_PhysicalDevice`.`id`))) on((`PCSoftware_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`))) left join `itop27`.`software` `Software_software_id` on((`PCSoftware_SoftwareInstance`.`software_id` = `Software_software_id`.`id`))) left join `itop27`.`licence` `SoftwareLicence_softwarelicence_id_Licence` on((`PCSoftware_SoftwareInstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_Licence`.`id`))) join (`itop27`.`functionalci` `PCSoftware_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`PCSoftware_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`PCSoftware_SoftwareInstance`.`id` = `PCSoftware_FunctionalCI`.`id`))) where (coalesce((`WebServer_webserver_id_SoftwareInstance`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_SoftwareInstance`.`finalclass` = \'Middleware\'),1) and coalesce((`SoftwareLicence_softwarelicence_id_Licence`.`finalclass` = \'SoftwareLicence\'),1) and coalesce((`PCSoftware_SoftwareInstance`.`finalclass` = \'PCSoftware\'),1))
md5=7799418f8de8dcdbc599bfac028dc973
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:54
create-version=1
source=SELECT\n DISTINCT `PCSoftware_SoftwareInstance`.`id` AS `id`,\n `PCSoftware_FunctionalCI`.`name` AS `name`,\n `PCSoftware_FunctionalCI`.`description` AS `description`,\n `PCSoftware_FunctionalCI`.`org_id` AS `org_id`,\n `Organization_org_id`.`name` AS `organization_name`,\n `PCSoftware_FunctionalCI`.`business_criticity` AS `business_criticity`,\n `PCSoftware_FunctionalCI`.`move2production` AS `move2production`,\n `PCSoftware_SoftwareInstance`.`functionalci_id` AS `system_id`,\n `FunctionalCI_system_id`.`name` AS `system_name`,\n `PCSoftware_SoftwareInstance`.`software_id` AS `software_id`,\n `Software_software_id`.`name` AS `software_name`,\n `PCSoftware_SoftwareInstance`.`softwarelicence_id` AS `softwarelicence_id`,\n `SoftwareLicence_softwarelicence_id_Licence`.`name` AS `softwarelicence_name`,\n `PCSoftware_SoftwareInstance`.`path` AS `path`,\n `PCSoftware_SoftwareInstance`.`status` AS `status`,\n `PCSoftware_FunctionalCI`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`PCSoftware_FunctionalCI`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE((`PCSoftware_SoftwareInstance`.`status` = \'inactive\'), 0) AS `obsolescence_flag`,\n `PCSoftware_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`Organization_org_id`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`,\n COALESCE((`Organization_org_id`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`,\n IF((`FunctionalCI_system_id`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), CAST(CONCAT(COALESCE(`FunctionalCI_system_id`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id1`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`FunctionalCI_system_id`.`name`, \'\')) AS CHAR)) AS `system_id_friendlyname`,\n `FunctionalCI_system_id`.`finalclass` AS `system_id_finalclass_recall`,\n IF((`FunctionalCI_system_id`.`finalclass` IN (\'FunctionalCI\')), COALESCE(0, 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualMachine\')), COALESCE((`FunctionalCI_system_id_poly_VirtualDevice`.`status` = \'obsolete\'), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'WebApplication\')), COALESCE(COALESCE((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'DatabaseSchema\')), COALESCE(COALESCE((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'MiddlewareInstance\')), COALESCE(COALESCE((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), COALESCE((`FunctionalCI_system_id_poly_SoftwareInstance`.`status` = \'inactive\'), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'BusinessProcess\')), COALESCE((`FunctionalCI_system_id_poly_BusinessProcess`.`status` = \'inactive\'), 0), IF((`FunctionalCI_system_id`.`finalclass` IN (\'ApplicationSolution\')), COALESCE((`FunctionalCI_system_id_poly_ApplicationSolution`.`status` = \'inactive\'), 0), COALESCE((`FunctionalCI_system_id_poly_PhysicalDevice`.`status` = \'obsolete\'), 0))))))))) AS `system_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Software_software_id`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Software_software_id`.`version`, \'\')) AS CHAR) AS `software_id_friendlyname`,\n CAST(CONCAT(COALESCE(`SoftwareLicence_softwarelicence_id_Licence`.`name`, \'\')) AS CHAR) AS `softwarelicence_id_friendlyname`,\n COALESCE((((`SoftwareLicence_softwarelicence_id_Licence`.`perpetual` = \'no\') AND (ISNULL(`SoftwareLicence_softwarelicence_id_Licence`.`end_date`) = 0)) AND (`SoftwareLicence_softwarelicence_id_Licence`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `softwarelicence_id_obsolescence_flag`\n FROM \n   `softwareinstance` AS `PCSoftware_SoftwareInstance`\n   INNER JOIN (\n      `functionalci` AS `FunctionalCI_system_id` \n      LEFT JOIN (\n         `softwareinstance` AS `FunctionalCI_system_id_poly_SoftwareInstance` \n         INNER JOIN \n            `functionalci` AS `FunctionalCI_system_id1`\n          ON `FunctionalCI_system_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id1`.`id`\n      ) ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_SoftwareInstance`.`id`\n      LEFT JOIN \n         `virtualdevice` AS `FunctionalCI_system_id_poly_VirtualDevice`\n       ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_VirtualDevice`.`id`\n      LEFT JOIN (\n         `webapplication` AS `FunctionalCI_system_id_poly_WebApplication` \n         INNER JOIN \n            `softwareinstance` AS `WebServer_webserver_id_SoftwareInstance`\n          ON `FunctionalCI_system_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_WebApplication`.`id`\n      LEFT JOIN (\n         `databaseschema` AS `FunctionalCI_system_id_poly_DatabaseSchema` \n         INNER JOIN \n            `softwareinstance` AS `DBServer_dbserver_id_SoftwareInstance`\n          ON `FunctionalCI_system_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_DatabaseSchema`.`id`\n      LEFT JOIN (\n         `middlewareinstance` AS `FunctionalCI_system_id_poly_MiddlewareInstance` \n         INNER JOIN \n            `softwareinstance` AS `Middleware_middleware_id_SoftwareInstance`\n          ON `FunctionalCI_system_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_MiddlewareInstance`.`id`\n      LEFT JOIN \n         `businessprocess` AS `FunctionalCI_system_id_poly_BusinessProcess`\n       ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_BusinessProcess`.`id`\n      LEFT JOIN \n         `applicationsolution` AS `FunctionalCI_system_id_poly_ApplicationSolution`\n       ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_ApplicationSolution`.`id`\n      LEFT JOIN \n         `physicaldevice` AS `FunctionalCI_system_id_poly_PhysicalDevice`\n       ON `FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_PhysicalDevice`.`id`\n   ) ON `PCSoftware_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`\n   LEFT JOIN \n      `software` AS `Software_software_id`\n    ON `PCSoftware_SoftwareInstance`.`software_id` = `Software_software_id`.`id`\n   LEFT JOIN \n      `licence` AS `SoftwareLicence_softwarelicence_id_Licence`\n    ON `PCSoftware_SoftwareInstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_Licence`.`id`\n   INNER JOIN (\n      `functionalci` AS `PCSoftware_FunctionalCI` \n      INNER JOIN \n         `organization` AS `Organization_org_id`\n       ON `PCSoftware_FunctionalCI`.`org_id` = `Organization_org_id`.`id`\n   ) ON `PCSoftware_SoftwareInstance`.`id` = `PCSoftware_FunctionalCI`.`id`\n WHERE ((((COALESCE((`WebServer_webserver_id_SoftwareInstance`.`finalclass` IN (\'WebServer\')), 1) AND COALESCE((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` IN (\'DBServer\')), 1)) AND COALESCE((`Middleware_middleware_id_SoftwareInstance`.`finalclass` IN (\'Middleware\')), 1)) AND COALESCE((`SoftwareLicence_softwarelicence_id_Licence`.`finalclass` IN (\'SoftwareLicence\')), 1)) AND COALESCE((`PCSoftware_SoftwareInstance`.`finalclass` IN (\'PCSoftware\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `PCSoftware_SoftwareInstance`.`id` AS `id`,`PCSoftware_FunctionalCI`.`name` AS `name`,`PCSoftware_FunctionalCI`.`description` AS `description`,`PCSoftware_FunctionalCI`.`org_id` AS `org_id`,`Organization_org_id`.`name` AS `organization_name`,`PCSoftware_FunctionalCI`.`business_criticity` AS `business_criticity`,`PCSoftware_FunctionalCI`.`move2production` AS `move2production`,`PCSoftware_SoftwareInstance`.`functionalci_id` AS `system_id`,`FunctionalCI_system_id`.`name` AS `system_name`,`PCSoftware_SoftwareInstance`.`software_id` AS `software_id`,`Software_software_id`.`name` AS `software_name`,`PCSoftware_SoftwareInstance`.`softwarelicence_id` AS `softwarelicence_id`,`SoftwareLicence_softwarelicence_id_Licence`.`name` AS `softwarelicence_name`,`PCSoftware_SoftwareInstance`.`path` AS `path`,`PCSoftware_SoftwareInstance`.`status` AS `status`,`PCSoftware_FunctionalCI`.`finalclass` AS `finalclass`,cast(concat(coalesce(`PCSoftware_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`PCSoftware_SoftwareInstance`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`PCSoftware_FunctionalCI`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,if((`FunctionalCI_system_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_system_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id1`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4)) AS `system_id_friendlyname`,`FunctionalCI_system_id`.`finalclass` AS `system_id_finalclass_recall`,if((`FunctionalCI_system_id`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_system_id`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_system_id_poly_VirtualDevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_system_id_poly_SoftwareInstance`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_system_id_poly_BusinessProcess`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_system_id_poly_ApplicationSolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_system_id_poly_PhysicalDevice`.`status` = \'obsolete\'),0))))))))) AS `system_id_obsolescence_flag`,cast(concat(coalesce(`Software_software_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname`,cast(concat(coalesce(`SoftwareLicence_softwarelicence_id_Licence`.`name`,\'\')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`,coalesce(((`SoftwareLicence_softwarelicence_id_Licence`.`perpetual` = \'no\') and (isnull(`SoftwareLicence_softwarelicence_id_Licence`.`end_date`) = 0) and (`SoftwareLicence_softwarelicence_id_Licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `softwarelicence_id_obsolescence_flag` from ((((`itop27`.`softwareinstance` `PCSoftware_SoftwareInstance` join ((((((((`itop27`.`functionalci` `FunctionalCI_system_id` left join (`itop27`.`softwareinstance` `FunctionalCI_system_id_poly_SoftwareInstance` join `itop27`.`functionalci` `FunctionalCI_system_id1` on((`FunctionalCI_system_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id1`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_SoftwareInstance`.`id`))) left join `itop27`.`virtualdevice` `FunctionalCI_system_id_poly_VirtualDevice` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_VirtualDevice`.`id`))) left join (`itop27`.`webapplication` `FunctionalCI_system_id_poly_WebApplication` join `itop27`.`softwareinstance` `WebServer_webserver_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_WebApplication`.`id`))) left join (`itop27`.`databaseschema` `FunctionalCI_system_id_poly_DatabaseSchema` join `itop27`.`softwareinstance` `DBServer_dbserver_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_DatabaseSchema`.`id`))) left join (`itop27`.`middlewareinstance` `FunctionalCI_system_id_poly_MiddlewareInstance` join `itop27`.`softwareinstance` `Middleware_middleware_id_SoftwareInstance` on((`FunctionalCI_system_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`))) on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_MiddlewareInstance`.`id`))) left join `itop27`.`businessprocess` `FunctionalCI_system_id_poly_BusinessProcess` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_BusinessProcess`.`id`))) left join `itop27`.`applicationsolution` `FunctionalCI_system_id_poly_ApplicationSolution` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_ApplicationSolution`.`id`))) left join `itop27`.`physicaldevice` `FunctionalCI_system_id_poly_PhysicalDevice` on((`FunctionalCI_system_id`.`id` = `FunctionalCI_system_id_poly_PhysicalDevice`.`id`))) on((`PCSoftware_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`))) left join `itop27`.`software` `Software_software_id` on((`PCSoftware_SoftwareInstance`.`software_id` = `Software_software_id`.`id`))) left join `itop27`.`licence` `SoftwareLicence_softwarelicence_id_Licence` on((`PCSoftware_SoftwareInstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_Licence`.`id`))) join (`itop27`.`functionalci` `PCSoftware_FunctionalCI` join `itop27`.`organization` `Organization_org_id` on((`PCSoftware_FunctionalCI`.`org_id` = `Organization_org_id`.`id`))) on((`PCSoftware_SoftwareInstance`.`id` = `PCSoftware_FunctionalCI`.`id`))) where (coalesce((`WebServer_webserver_id_SoftwareInstance`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_SoftwareInstance`.`finalclass` = \'Middleware\'),1) and coalesce((`SoftwareLicence_softwarelicence_id_Licence`.`finalclass` = \'SoftwareLicence\'),1) and coalesce((`PCSoftware_SoftwareInstance`.`finalclass` = \'PCSoftware\'),1))
