TYPE=VIEW
query=select distinct `lnkErrorToFunctionalCI`.`link_id` AS `id`,`lnkErrorToFunctionalCI`.`functionalci_id` AS `functionalci_id`,`FunctionalCI_functionalci_id`.`name` AS `functionalci_name`,`lnkErrorToFunctionalCI`.`error_id` AS `error_id`,`KnownError_error_id`.`name` AS `error_name`,`lnkErrorToFunctionalCI`.`dummy` AS `reason`,cast(concat(coalesce(\'lnkErrorToFunctionalCI\',\'\')) as char charset utf8mb4) AS `friendlyname`,if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_functionalci_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_functionalci_id`.`name`,\'\')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`,`FunctionalCI_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`,if((`FunctionalCI_functionalci_id`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_functionalci_id_poly_VirtualDevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_functionalci_id_poly_SoftwareInstance`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_functionalci_id_poly_BusinessProcess`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_functionalci_id_poly_ApplicationSolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_functionalci_id_poly_PhysicalDevice`.`status` = \'obsolete\'),0))))))))) AS `functionalci_id_obsolescence_flag`,cast(concat(coalesce(`KnownError_error_id`.`name`,\'\')) as char charset utf8mb4) AS `error_id_friendlyname` from ((`itop27`.`lnkerrortofunctionalci` `lnkErrorToFunctionalCI` join ((((((((`itop27`.`functionalci` `FunctionalCI_functionalci_id` left join (`itop27`.`softwareinstance` `FunctionalCI_functionalci_id_poly_SoftwareInstance` join `itop27`.`functionalci` `FunctionalCI_system_id` on((`FunctionalCI_functionalci_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_SoftwareInstance`.`id`))) left join `itop27`.`virtualdevice` `FunctionalCI_functionalci_id_poly_VirtualDevice` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_VirtualDevice`.`id`))) left join (`itop27`.`webapplication` `FunctionalCI_functionalci_id_poly_WebApplication` join `itop27`.`softwareinstance` `WebServer_webserver_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_WebApplication`.`id`))) left join (`itop27`.`databaseschema` `FunctionalCI_functionalci_id_poly_DatabaseSchema` join `itop27`.`softwareinstance` `DBServer_dbserver_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_DatabaseSchema`.`id`))) left join (`itop27`.`middlewareinstance` `FunctionalCI_functionalci_id_poly_MiddlewareInstance` join `itop27`.`softwareinstance` `Middleware_middleware_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`id`))) left join `itop27`.`businessprocess` `FunctionalCI_functionalci_id_poly_BusinessProcess` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_BusinessProcess`.`id`))) left join `itop27`.`applicationsolution` `FunctionalCI_functionalci_id_poly_ApplicationSolution` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_ApplicationSolution`.`id`))) left join `itop27`.`physicaldevice` `FunctionalCI_functionalci_id_poly_PhysicalDevice` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_PhysicalDevice`.`id`))) on((`lnkErrorToFunctionalCI`.`functionalci_id` = `FunctionalCI_functionalci_id`.`id`))) join `itop27`.`knownerror` `KnownError_error_id` on((`lnkErrorToFunctionalCI`.`error_id` = `KnownError_error_id`.`id`))) where (coalesce((`WebServer_webserver_id_SoftwareInstance`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_SoftwareInstance`.`finalclass` = \'Middleware\'),1))
md5=7e80c2fe5f6da2c45abc217ea3a82e12
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `lnkErrorToFunctionalCI`.`link_id` AS `id`,\n `lnkErrorToFunctionalCI`.`functionalci_id` AS `functionalci_id`,\n `FunctionalCI_functionalci_id`.`name` AS `functionalci_name`,\n `lnkErrorToFunctionalCI`.`error_id` AS `error_id`,\n `KnownError_error_id`.`name` AS `error_name`,\n `lnkErrorToFunctionalCI`.`dummy` AS `reason`,\n CAST(CONCAT(COALESCE(\'lnkErrorToFunctionalCI\', \'\')) AS CHAR) AS `friendlyname`,\n IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), CAST(CONCAT(COALESCE(`FunctionalCI_functionalci_id`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`FunctionalCI_functionalci_id`.`name`, \'\')) AS CHAR)) AS `functionalci_id_friendlyname`,\n `FunctionalCI_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`,\n IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'FunctionalCI\')), COALESCE(0, 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualMachine\')), COALESCE((`FunctionalCI_functionalci_id_poly_VirtualDevice`.`status` = \'obsolete\'), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'WebApplication\')), COALESCE(COALESCE((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'DatabaseSchema\')), COALESCE(COALESCE((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'MiddlewareInstance\')), COALESCE(COALESCE((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), COALESCE((`FunctionalCI_functionalci_id_poly_SoftwareInstance`.`status` = \'inactive\'), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'BusinessProcess\')), COALESCE((`FunctionalCI_functionalci_id_poly_BusinessProcess`.`status` = \'inactive\'), 0), IF((`FunctionalCI_functionalci_id`.`finalclass` IN (\'ApplicationSolution\')), COALESCE((`FunctionalCI_functionalci_id_poly_ApplicationSolution`.`status` = \'inactive\'), 0), COALESCE((`FunctionalCI_functionalci_id_poly_PhysicalDevice`.`status` = \'obsolete\'), 0))))))))) AS `functionalci_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`KnownError_error_id`.`name`, \'\')) AS CHAR) AS `error_id_friendlyname`\n FROM \n   `lnkerrortofunctionalci` AS `lnkErrorToFunctionalCI`\n   INNER JOIN (\n      `functionalci` AS `FunctionalCI_functionalci_id` \n      LEFT JOIN (\n         `softwareinstance` AS `FunctionalCI_functionalci_id_poly_SoftwareInstance` \n         INNER JOIN \n            `functionalci` AS `FunctionalCI_system_id`\n          ON `FunctionalCI_functionalci_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`\n      ) ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_SoftwareInstance`.`id`\n      LEFT JOIN \n         `virtualdevice` AS `FunctionalCI_functionalci_id_poly_VirtualDevice`\n       ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_VirtualDevice`.`id`\n      LEFT JOIN (\n         `webapplication` AS `FunctionalCI_functionalci_id_poly_WebApplication` \n         INNER JOIN \n            `softwareinstance` AS `WebServer_webserver_id_SoftwareInstance`\n          ON `FunctionalCI_functionalci_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_WebApplication`.`id`\n      LEFT JOIN (\n         `databaseschema` AS `FunctionalCI_functionalci_id_poly_DatabaseSchema` \n         INNER JOIN \n            `softwareinstance` AS `DBServer_dbserver_id_SoftwareInstance`\n          ON `FunctionalCI_functionalci_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_DatabaseSchema`.`id`\n      LEFT JOIN (\n         `middlewareinstance` AS `FunctionalCI_functionalci_id_poly_MiddlewareInstance` \n         INNER JOIN \n            `softwareinstance` AS `Middleware_middleware_id_SoftwareInstance`\n          ON `FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`\n      ) ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`id`\n      LEFT JOIN \n         `businessprocess` AS `FunctionalCI_functionalci_id_poly_BusinessProcess`\n       ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_BusinessProcess`.`id`\n      LEFT JOIN \n         `applicationsolution` AS `FunctionalCI_functionalci_id_poly_ApplicationSolution`\n       ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_ApplicationSolution`.`id`\n      LEFT JOIN \n         `physicaldevice` AS `FunctionalCI_functionalci_id_poly_PhysicalDevice`\n       ON `FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_PhysicalDevice`.`id`\n   ) ON `lnkErrorToFunctionalCI`.`functionalci_id` = `FunctionalCI_functionalci_id`.`id`\n   INNER JOIN \n      `knownerror` AS `KnownError_error_id`\n    ON `lnkErrorToFunctionalCI`.`error_id` = `KnownError_error_id`.`id`\n WHERE ((COALESCE((`WebServer_webserver_id_SoftwareInstance`.`finalclass` IN (\'WebServer\')), 1) AND COALESCE((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` IN (\'DBServer\')), 1)) AND COALESCE((`Middleware_middleware_id_SoftwareInstance`.`finalclass` IN (\'Middleware\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkErrorToFunctionalCI`.`link_id` AS `id`,`lnkErrorToFunctionalCI`.`functionalci_id` AS `functionalci_id`,`FunctionalCI_functionalci_id`.`name` AS `functionalci_name`,`lnkErrorToFunctionalCI`.`error_id` AS `error_id`,`KnownError_error_id`.`name` AS `error_name`,`lnkErrorToFunctionalCI`.`dummy` AS `reason`,cast(concat(coalesce(\'lnkErrorToFunctionalCI\',\'\')) as char charset utf8mb4) AS `friendlyname`,if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_functionalci_id`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_functionalci_id`.`name`,\'\')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`,`FunctionalCI_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`,if((`FunctionalCI_functionalci_id`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_functionalci_id_poly_VirtualDevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_SoftwareInstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_functionalci_id_poly_SoftwareInstance`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_functionalci_id_poly_BusinessProcess`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_functionalci_id_poly_ApplicationSolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_functionalci_id_poly_PhysicalDevice`.`status` = \'obsolete\'),0))))))))) AS `functionalci_id_obsolescence_flag`,cast(concat(coalesce(`KnownError_error_id`.`name`,\'\')) as char charset utf8mb4) AS `error_id_friendlyname` from ((`itop27`.`lnkerrortofunctionalci` `lnkErrorToFunctionalCI` join ((((((((`itop27`.`functionalci` `FunctionalCI_functionalci_id` left join (`itop27`.`softwareinstance` `FunctionalCI_functionalci_id_poly_SoftwareInstance` join `itop27`.`functionalci` `FunctionalCI_system_id` on((`FunctionalCI_functionalci_id_poly_SoftwareInstance`.`functionalci_id` = `FunctionalCI_system_id`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_SoftwareInstance`.`id`))) left join `itop27`.`virtualdevice` `FunctionalCI_functionalci_id_poly_VirtualDevice` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_VirtualDevice`.`id`))) left join (`itop27`.`webapplication` `FunctionalCI_functionalci_id_poly_WebApplication` join `itop27`.`softwareinstance` `WebServer_webserver_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_WebApplication`.`webserver_id` = `WebServer_webserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_WebApplication`.`id`))) left join (`itop27`.`databaseschema` `FunctionalCI_functionalci_id_poly_DatabaseSchema` join `itop27`.`softwareinstance` `DBServer_dbserver_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_DatabaseSchema`.`dbserver_id` = `DBServer_dbserver_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_DatabaseSchema`.`id`))) left join (`itop27`.`middlewareinstance` `FunctionalCI_functionalci_id_poly_MiddlewareInstance` join `itop27`.`softwareinstance` `Middleware_middleware_id_SoftwareInstance` on((`FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`middleware_id` = `Middleware_middleware_id_SoftwareInstance`.`id`))) on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_MiddlewareInstance`.`id`))) left join `itop27`.`businessprocess` `FunctionalCI_functionalci_id_poly_BusinessProcess` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_BusinessProcess`.`id`))) left join `itop27`.`applicationsolution` `FunctionalCI_functionalci_id_poly_ApplicationSolution` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_ApplicationSolution`.`id`))) left join `itop27`.`physicaldevice` `FunctionalCI_functionalci_id_poly_PhysicalDevice` on((`FunctionalCI_functionalci_id`.`id` = `FunctionalCI_functionalci_id_poly_PhysicalDevice`.`id`))) on((`lnkErrorToFunctionalCI`.`functionalci_id` = `FunctionalCI_functionalci_id`.`id`))) join `itop27`.`knownerror` `KnownError_error_id` on((`lnkErrorToFunctionalCI`.`error_id` = `KnownError_error_id`.`id`))) where (coalesce((`WebServer_webserver_id_SoftwareInstance`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_SoftwareInstance`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_SoftwareInstance`.`finalclass` = \'Middleware\'),1))