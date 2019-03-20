TYPE=VIEW
query=select distinct `_lnkdocumenttofunctionalci`.`id` AS `id`,`_lnkdocumenttofunctionalci`.`functionalci_id` AS `functionalci_id`,`FunctionalCI_functionalci_id_functionalci`.`name` AS `functionalci_name`,`_lnkdocumenttofunctionalci`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttofunctionalci`.`functionalci_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttofunctionalci`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_functionalci_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_functionalci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`,`FunctionalCI_functionalci_id_functionalci`.`finalclass` AS `functionalci_id_finalclass_recall`,if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `functionalci_id_obsolescence_flag`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`itop`.`lnkdocumenttofunctionalci` `_lnkdocumenttofunctionalci` join ((((((((`itop`.`functionalci` `FunctionalCI_functionalci_id_functionalci` left join (`itop`.`softwareinstance` `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance` join `itop`.`functionalci` `FunctionalCI_system_id_functionalci` on((`FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `itop`.`virtualdevice` `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`itop`.`webapplication` `FunctionalCI_functionalci_id_fn_WebApplication_webapplication` join (`itop`.`functionalci` `WebServer_webserver_id_functionalci` join `itop`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`id`))) left join (`itop`.`databaseschema` `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema` join (`itop`.`functionalci` `DBServer_dbserver_id_functionalci` join `itop`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`itop`.`middlewareinstance` `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance` join (`itop`.`functionalci` `Middleware_middleware_id_functionalci` join `itop`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `itop`.`businessprocess` `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`id`))) left join `itop`.`applicationsolution` `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `itop`.`physicaldevice` `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_lnkdocumenttofunctionalci`.`functionalci_id` = `FunctionalCI_functionalci_id_functionalci`.`id`))) join `itop`.`document` `Document_document_id_document` on((`_lnkdocumenttofunctionalci`.`document_id` = `Document_document_id_document`.`id`))) where (coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1))
md5=4be90b5be8f2abd942d8b9dd0922e88c
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:05
create-version=1
source=SELECT DISTINCT `_lnkdocumenttofunctionalci`.`id` AS `id`, `_lnkdocumenttofunctionalci`.`functionalci_id` AS `functionalci_id`, `FunctionalCI_functionalci_id_functionalci`.`name` AS `functionalci_name`, `_lnkdocumenttofunctionalci`.`document_id` AS `document_id`, `Document_document_id_document`.`name` AS `document_name`, CAST(CONCAT(COALESCE(`_lnkdocumenttofunctionalci`.`functionalci_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_lnkdocumenttofunctionalci`.`document_id`, \'\')) AS CHAR) AS `friendlyname`, IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), CAST(CONCAT(COALESCE(`FunctionalCI_functionalci_id_functionalci`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id_functionalci`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`FunctionalCI_functionalci_id_functionalci`.`name`, \'\')) AS CHAR)) AS `functionalci_id_friendlyname`, `FunctionalCI_functionalci_id_functionalci`.`finalclass` AS `functionalci_id_finalclass_recall`, IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'FunctionalCI\')), COALESCE(0, 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualMachine\')), COALESCE((`FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'WebApplication\')), COALESCE(COALESCE((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'DatabaseSchema\')), COALESCE(COALESCE((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'MiddlewareInstance\')), COALESCE(COALESCE((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), COALESCE((`FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'BusinessProcess\')), COALESCE((`FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'), 0), IF((`FunctionalCI_functionalci_id_functionalci`.`finalclass` IN (\'ApplicationSolution\')), COALESCE((`FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'), 0), COALESCE((`FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'), 0))))))))) AS `functionalci_id_obsolescence_flag`, IF((`Document_document_id_document`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document_document_id_document`.`name`, \'\')) AS CHAR)) AS `document_id_friendlyname`, `Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`, COALESCE((`Document_document_id_document`.`status` = \'obsolete\'), 0) AS `document_id_obsolescence_flag` FROM `lnkdocumenttofunctionalci` AS `_lnkdocumenttofunctionalci`INNER JOIN (`functionalci` AS `FunctionalCI_functionalci_id_functionalci` LEFT JOIN (`softwareinstance` AS `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance` INNER JOIN `functionalci` AS `FunctionalCI_system_id_functionalci` ON `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`) ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`id`LEFT JOIN `virtualdevice` AS `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice` ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`id`LEFT JOIN (`webapplication` AS `FunctionalCI_functionalci_id_fn_WebApplication_webapplication` INNER JOIN (`functionalci` AS `WebServer_webserver_id_functionalci` INNER JOIN `softwareinstance` AS `WebServer_webserver_id_softwareinstance` ON `WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`) ON `FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`) ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`id`LEFT JOIN (`databaseschema` AS `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema` INNER JOIN (`functionalci` AS `DBServer_dbserver_id_functionalci` INNER JOIN `softwareinstance` AS `DBServer_dbserver_id_softwareinstance` ON `DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`) ON `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`) ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`id`LEFT JOIN (`middlewareinstance` AS `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance` INNER JOIN (`functionalci` AS `Middleware_middleware_id_functionalci` INNER JOIN `softwareinstance` AS `Middleware_middleware_id_softwareinstance` ON `Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`) ON `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`) ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`id`LEFT JOIN `businessprocess` AS `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess` ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`id`LEFT JOIN `applicationsolution` AS `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution` ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`id`LEFT JOIN `physicaldevice` AS `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice` ON `FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`id`) ON `_lnkdocumenttofunctionalci`.`functionalci_id` = `FunctionalCI_functionalci_id_functionalci`.`id`INNER JOIN `document` AS `Document_document_id_document` ON `_lnkdocumenttofunctionalci`.`document_id` = `Document_document_id_document`.`id` WHERE ((COALESCE((`WebServer_webserver_id_functionalci`.`finalclass` IN (\'WebServer\')), 1) AND COALESCE((`DBServer_dbserver_id_functionalci`.`finalclass` IN (\'DBServer\')), 1)) AND COALESCE((`Middleware_middleware_id_functionalci`.`finalclass` IN (\'Middleware\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkdocumenttofunctionalci`.`id` AS `id`,`_lnkdocumenttofunctionalci`.`functionalci_id` AS `functionalci_id`,`FunctionalCI_functionalci_id_functionalci`.`name` AS `functionalci_name`,`_lnkdocumenttofunctionalci`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttofunctionalci`.`functionalci_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttofunctionalci`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_functionalci_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_functionalci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`,`FunctionalCI_functionalci_id_functionalci`.`finalclass` AS `functionalci_id_finalclass_recall`,if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_functionalci_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `functionalci_id_obsolescence_flag`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`itop`.`lnkdocumenttofunctionalci` `_lnkdocumenttofunctionalci` join ((((((((`itop`.`functionalci` `FunctionalCI_functionalci_id_functionalci` left join (`itop`.`softwareinstance` `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance` join `itop`.`functionalci` `FunctionalCI_system_id_functionalci` on((`FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `itop`.`virtualdevice` `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`itop`.`webapplication` `FunctionalCI_functionalci_id_fn_WebApplication_webapplication` join (`itop`.`functionalci` `WebServer_webserver_id_functionalci` join `itop`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_WebApplication_webapplication`.`id`))) left join (`itop`.`databaseschema` `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema` join (`itop`.`functionalci` `DBServer_dbserver_id_functionalci` join `itop`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`itop`.`middlewareinstance` `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance` join (`itop`.`functionalci` `Middleware_middleware_id_functionalci` join `itop`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `itop`.`businessprocess` `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_BusinessProcess_businessprocess`.`id`))) left join `itop`.`applicationsolution` `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `itop`.`physicaldevice` `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_functionalci_id_functionalci`.`id` = `FunctionalCI_functionalci_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_lnkdocumenttofunctionalci`.`functionalci_id` = `FunctionalCI_functionalci_id_functionalci`.`id`))) join `itop`.`document` `Document_document_id_document` on((`_lnkdocumenttofunctionalci`.`document_id` = `Document_document_id_document`.`id`))) where (coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1))