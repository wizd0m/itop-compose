TYPE=VIEW
query=select distinct `lnkVirtualDeviceToVolume`.`id` AS `id`,`lnkVirtualDeviceToVolume`.`volume_id` AS `volume_id`,`LogicalVolume_volume_id`.`name` AS `volume_name`,`lnkVirtualDeviceToVolume`.`virtualdevice_id` AS `virtualdevice_id`,`VirtualDevice_virtualdevice_id_FunctionalCI`.`name` AS `virtualdevice_name`,`lnkVirtualDeviceToVolume`.`size_used` AS `size_used`,cast(concat(coalesce(`lnkVirtualDeviceToVolume`.`volume_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`StorageSystem_storagesystem_id_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`LogicalVolume_volume_id`.`name`,\'\')) as char charset utf8mb4) AS `volume_id_friendlyname`,coalesce(coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `volume_id_obsolescence_flag`,cast(concat(coalesce(`VirtualDevice_virtualdevice_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualdevice_id_friendlyname`,`VirtualDevice_virtualdevice_id_FunctionalCI`.`finalclass` AS `virtualdevice_id_finalclass_recall`,coalesce((`VirtualDevice_virtualdevice_id`.`status` = \'obsolete\'),0) AS `virtualdevice_id_obsolescence_flag` from ((`itop27`.`lnkvirtualdevicetovolume` `lnkVirtualDeviceToVolume` join (`itop27`.`logicalvolume` `LogicalVolume_volume_id` join (`itop27`.`physicaldevice` `StorageSystem_storagesystem_id_PhysicalDevice` join `itop27`.`functionalci` `StorageSystem_storagesystem_id_FunctionalCI` on((`StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`))) on((`LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`))) on((`lnkVirtualDeviceToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`))) join (`itop27`.`virtualdevice` `VirtualDevice_virtualdevice_id` join `itop27`.`functionalci` `VirtualDevice_virtualdevice_id_FunctionalCI` on((`VirtualDevice_virtualdevice_id`.`id` = `VirtualDevice_virtualdevice_id_FunctionalCI`.`id`))) on((`lnkVirtualDeviceToVolume`.`virtualdevice_id` = `VirtualDevice_virtualdevice_id`.`id`))) where coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` = \'StorageSystem\'),1)
md5=6b44ba55d54316986e38c4b576513433
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `lnkVirtualDeviceToVolume`.`id` AS `id`,\n `lnkVirtualDeviceToVolume`.`volume_id` AS `volume_id`,\n `LogicalVolume_volume_id`.`name` AS `volume_name`,\n `lnkVirtualDeviceToVolume`.`virtualdevice_id` AS `virtualdevice_id`,\n `VirtualDevice_virtualdevice_id_FunctionalCI`.`name` AS `virtualdevice_name`,\n `lnkVirtualDeviceToVolume`.`size_used` AS `size_used`,\n CAST(CONCAT(COALESCE(`lnkVirtualDeviceToVolume`.`volume_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`StorageSystem_storagesystem_id_FunctionalCI`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`LogicalVolume_volume_id`.`name`, \'\')) AS CHAR) AS `volume_id_friendlyname`,\n COALESCE(COALESCE((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'), 0), 0) AS `volume_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`VirtualDevice_virtualdevice_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `virtualdevice_id_friendlyname`,\n `VirtualDevice_virtualdevice_id_FunctionalCI`.`finalclass` AS `virtualdevice_id_finalclass_recall`,\n COALESCE((`VirtualDevice_virtualdevice_id`.`status` = \'obsolete\'), 0) AS `virtualdevice_id_obsolescence_flag`\n FROM \n   `lnkvirtualdevicetovolume` AS `lnkVirtualDeviceToVolume`\n   INNER JOIN (\n      `logicalvolume` AS `LogicalVolume_volume_id` \n      INNER JOIN (\n         `physicaldevice` AS `StorageSystem_storagesystem_id_PhysicalDevice` \n         INNER JOIN \n            `functionalci` AS `StorageSystem_storagesystem_id_FunctionalCI`\n          ON `StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`\n      ) ON `LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`\n   ) ON `lnkVirtualDeviceToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`\n   INNER JOIN (\n      `virtualdevice` AS `VirtualDevice_virtualdevice_id` \n      INNER JOIN \n         `functionalci` AS `VirtualDevice_virtualdevice_id_FunctionalCI`\n       ON `VirtualDevice_virtualdevice_id`.`id` = `VirtualDevice_virtualdevice_id_FunctionalCI`.`id`\n   ) ON `lnkVirtualDeviceToVolume`.`virtualdevice_id` = `VirtualDevice_virtualdevice_id`.`id`\n WHERE COALESCE((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` IN (\'StorageSystem\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkVirtualDeviceToVolume`.`id` AS `id`,`lnkVirtualDeviceToVolume`.`volume_id` AS `volume_id`,`LogicalVolume_volume_id`.`name` AS `volume_name`,`lnkVirtualDeviceToVolume`.`virtualdevice_id` AS `virtualdevice_id`,`VirtualDevice_virtualdevice_id_FunctionalCI`.`name` AS `virtualdevice_name`,`lnkVirtualDeviceToVolume`.`size_used` AS `size_used`,cast(concat(coalesce(`lnkVirtualDeviceToVolume`.`volume_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`StorageSystem_storagesystem_id_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`LogicalVolume_volume_id`.`name`,\'\')) as char charset utf8mb4) AS `volume_id_friendlyname`,coalesce(coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `volume_id_obsolescence_flag`,cast(concat(coalesce(`VirtualDevice_virtualdevice_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualdevice_id_friendlyname`,`VirtualDevice_virtualdevice_id_FunctionalCI`.`finalclass` AS `virtualdevice_id_finalclass_recall`,coalesce((`VirtualDevice_virtualdevice_id`.`status` = \'obsolete\'),0) AS `virtualdevice_id_obsolescence_flag` from ((`itop27`.`lnkvirtualdevicetovolume` `lnkVirtualDeviceToVolume` join (`itop27`.`logicalvolume` `LogicalVolume_volume_id` join (`itop27`.`physicaldevice` `StorageSystem_storagesystem_id_PhysicalDevice` join `itop27`.`functionalci` `StorageSystem_storagesystem_id_FunctionalCI` on((`StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`))) on((`LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`))) on((`lnkVirtualDeviceToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`))) join (`itop27`.`virtualdevice` `VirtualDevice_virtualdevice_id` join `itop27`.`functionalci` `VirtualDevice_virtualdevice_id_FunctionalCI` on((`VirtualDevice_virtualdevice_id`.`id` = `VirtualDevice_virtualdevice_id_FunctionalCI`.`id`))) on((`lnkVirtualDeviceToVolume`.`virtualdevice_id` = `VirtualDevice_virtualdevice_id`.`id`))) where coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` = \'StorageSystem\'),1)