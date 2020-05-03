TYPE=VIEW
query=select distinct `lnkSanToDatacenterDevice`.`id` AS `id`,`lnkSanToDatacenterDevice`.`san_id` AS `san_id`,`SANSwitch_san_id_FunctionalCI`.`name` AS `san_name`,`lnkSanToDatacenterDevice`.`datacenterdevice_id` AS `datacenterdevice_id`,`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name` AS `datacenterdevice_name`,`lnkSanToDatacenterDevice`.`san_port` AS `san_port`,`lnkSanToDatacenterDevice`.`datacenterdevice_port` AS `datacenterdevice_port`,cast(concat(coalesce(`lnkSanToDatacenterDevice`.`san_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`SANSwitch_san_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `san_id_friendlyname`,coalesce((`SANSwitch_san_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `san_id_obsolescence_flag`,cast(concat(coalesce(`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `datacenterdevice_id_friendlyname`,`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`finalclass` AS `datacenterdevice_id_finalclass_recall`,coalesce((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `datacenterdevice_id_obsolescence_flag` from ((`itop27`.`lnkdatacenterdevicetosan` `lnkSanToDatacenterDevice` join (`itop27`.`physicaldevice` `SANSwitch_san_id_PhysicalDevice` join `itop27`.`functionalci` `SANSwitch_san_id_FunctionalCI` on((`SANSwitch_san_id_PhysicalDevice`.`id` = `SANSwitch_san_id_FunctionalCI`.`id`))) on((`lnkSanToDatacenterDevice`.`san_id` = `SANSwitch_san_id_PhysicalDevice`.`id`))) join (`itop27`.`physicaldevice` `DatacenterDevice_datacenterdevice_id_PhysicalDevice` join `itop27`.`functionalci` `DatacenterDevice_datacenterdevice_id_FunctionalCI` on((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id` = `DatacenterDevice_datacenterdevice_id_FunctionalCI`.`id`))) on((`lnkSanToDatacenterDevice`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id`))) where (coalesce((`SANSwitch_san_id_PhysicalDevice`.`finalclass` = \'SANSwitch\'),1) and coalesce((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`finalclass` in (\'NetworkDevice\',\'Server\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'DatacenterDevice\')),1))
md5=7ea679a7b805119a553bd6f3dc2d3806
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `lnkSanToDatacenterDevice`.`id` AS `id`,\n `lnkSanToDatacenterDevice`.`san_id` AS `san_id`,\n `SANSwitch_san_id_FunctionalCI`.`name` AS `san_name`,\n `lnkSanToDatacenterDevice`.`datacenterdevice_id` AS `datacenterdevice_id`,\n `DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name` AS `datacenterdevice_name`,\n `lnkSanToDatacenterDevice`.`san_port` AS `san_port`,\n `lnkSanToDatacenterDevice`.`datacenterdevice_port` AS `datacenterdevice_port`,\n CAST(CONCAT(COALESCE(`lnkSanToDatacenterDevice`.`san_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`SANSwitch_san_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `san_id_friendlyname`,\n COALESCE((`SANSwitch_san_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `san_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `datacenterdevice_id_friendlyname`,\n `DatacenterDevice_datacenterdevice_id_FunctionalCI`.`finalclass` AS `datacenterdevice_id_finalclass_recall`,\n COALESCE((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `datacenterdevice_id_obsolescence_flag`\n FROM \n   `lnkdatacenterdevicetosan` AS `lnkSanToDatacenterDevice`\n   INNER JOIN (\n      `physicaldevice` AS `SANSwitch_san_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `SANSwitch_san_id_FunctionalCI`\n       ON `SANSwitch_san_id_PhysicalDevice`.`id` = `SANSwitch_san_id_FunctionalCI`.`id`\n   ) ON `lnkSanToDatacenterDevice`.`san_id` = `SANSwitch_san_id_PhysicalDevice`.`id`\n   INNER JOIN (\n      `physicaldevice` AS `DatacenterDevice_datacenterdevice_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `DatacenterDevice_datacenterdevice_id_FunctionalCI`\n       ON `DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id` = `DatacenterDevice_datacenterdevice_id_FunctionalCI`.`id`\n   ) ON `lnkSanToDatacenterDevice`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id`\n WHERE (COALESCE((`SANSwitch_san_id_PhysicalDevice`.`finalclass` IN (\'SANSwitch\')), 1) AND COALESCE((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`finalclass` IN (\'NetworkDevice\', \'Server\', \'StorageSystem\', \'SANSwitch\', \'TapeLibrary\', \'NAS\', \'DatacenterDevice\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkSanToDatacenterDevice`.`id` AS `id`,`lnkSanToDatacenterDevice`.`san_id` AS `san_id`,`SANSwitch_san_id_FunctionalCI`.`name` AS `san_name`,`lnkSanToDatacenterDevice`.`datacenterdevice_id` AS `datacenterdevice_id`,`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name` AS `datacenterdevice_name`,`lnkSanToDatacenterDevice`.`san_port` AS `san_port`,`lnkSanToDatacenterDevice`.`datacenterdevice_port` AS `datacenterdevice_port`,cast(concat(coalesce(`lnkSanToDatacenterDevice`.`san_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`SANSwitch_san_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `san_id_friendlyname`,coalesce((`SANSwitch_san_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `san_id_obsolescence_flag`,cast(concat(coalesce(`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `datacenterdevice_id_friendlyname`,`DatacenterDevice_datacenterdevice_id_FunctionalCI`.`finalclass` AS `datacenterdevice_id_finalclass_recall`,coalesce((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `datacenterdevice_id_obsolescence_flag` from ((`itop27`.`lnkdatacenterdevicetosan` `lnkSanToDatacenterDevice` join (`itop27`.`physicaldevice` `SANSwitch_san_id_PhysicalDevice` join `itop27`.`functionalci` `SANSwitch_san_id_FunctionalCI` on((`SANSwitch_san_id_PhysicalDevice`.`id` = `SANSwitch_san_id_FunctionalCI`.`id`))) on((`lnkSanToDatacenterDevice`.`san_id` = `SANSwitch_san_id_PhysicalDevice`.`id`))) join (`itop27`.`physicaldevice` `DatacenterDevice_datacenterdevice_id_PhysicalDevice` join `itop27`.`functionalci` `DatacenterDevice_datacenterdevice_id_FunctionalCI` on((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id` = `DatacenterDevice_datacenterdevice_id_FunctionalCI`.`id`))) on((`lnkSanToDatacenterDevice`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`id`))) where (coalesce((`SANSwitch_san_id_PhysicalDevice`.`finalclass` = \'SANSwitch\'),1) and coalesce((`DatacenterDevice_datacenterdevice_id_PhysicalDevice`.`finalclass` in (\'NetworkDevice\',\'Server\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'DatacenterDevice\')),1))