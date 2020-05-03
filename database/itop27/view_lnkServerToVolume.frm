TYPE=VIEW
query=select distinct `lnkServerToVolume`.`id` AS `id`,`lnkServerToVolume`.`volume_id` AS `volume_id`,`LogicalVolume_volume_id`.`name` AS `volume_name`,`lnkServerToVolume`.`server_id` AS `server_id`,`Server_server_id_FunctionalCI`.`name` AS `server_name`,`lnkServerToVolume`.`size_used` AS `size_used`,cast(concat(coalesce(`lnkServerToVolume`.`volume_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`StorageSystem_storagesystem_id_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`LogicalVolume_volume_id`.`name`,\'\')) as char charset utf8mb4) AS `volume_id_friendlyname`,coalesce(coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `volume_id_obsolescence_flag`,cast(concat(coalesce(`Server_server_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `server_id_friendlyname`,coalesce((`Server_server_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `server_id_obsolescence_flag` from ((`itop27`.`lnkservertovolume` `lnkServerToVolume` join (`itop27`.`logicalvolume` `LogicalVolume_volume_id` join (`itop27`.`physicaldevice` `StorageSystem_storagesystem_id_PhysicalDevice` join `itop27`.`functionalci` `StorageSystem_storagesystem_id_FunctionalCI` on((`StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`))) on((`LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`))) on((`lnkServerToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`))) join (`itop27`.`physicaldevice` `Server_server_id_PhysicalDevice` join `itop27`.`functionalci` `Server_server_id_FunctionalCI` on((`Server_server_id_PhysicalDevice`.`id` = `Server_server_id_FunctionalCI`.`id`))) on((`lnkServerToVolume`.`server_id` = `Server_server_id_PhysicalDevice`.`id`))) where (coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` = \'StorageSystem\'),1) and coalesce((`Server_server_id_PhysicalDevice`.`finalclass` = \'Server\'),1))
md5=37237bb2ef9e3db728754e7d67092ece
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `lnkServerToVolume`.`id` AS `id`,\n `lnkServerToVolume`.`volume_id` AS `volume_id`,\n `LogicalVolume_volume_id`.`name` AS `volume_name`,\n `lnkServerToVolume`.`server_id` AS `server_id`,\n `Server_server_id_FunctionalCI`.`name` AS `server_name`,\n `lnkServerToVolume`.`size_used` AS `size_used`,\n CAST(CONCAT(COALESCE(`lnkServerToVolume`.`volume_id`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`StorageSystem_storagesystem_id_FunctionalCI`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`LogicalVolume_volume_id`.`name`, \'\')) AS CHAR) AS `volume_id_friendlyname`,\n COALESCE(COALESCE((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'), 0), 0) AS `volume_id_obsolescence_flag`,\n CAST(CONCAT(COALESCE(`Server_server_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `server_id_friendlyname`,\n COALESCE((`Server_server_id_PhysicalDevice`.`status` = \'obsolete\'), 0) AS `server_id_obsolescence_flag`\n FROM \n   `lnkservertovolume` AS `lnkServerToVolume`\n   INNER JOIN (\n      `logicalvolume` AS `LogicalVolume_volume_id` \n      INNER JOIN (\n         `physicaldevice` AS `StorageSystem_storagesystem_id_PhysicalDevice` \n         INNER JOIN \n            `functionalci` AS `StorageSystem_storagesystem_id_FunctionalCI`\n          ON `StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`\n      ) ON `LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`\n   ) ON `lnkServerToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`\n   INNER JOIN (\n      `physicaldevice` AS `Server_server_id_PhysicalDevice` \n      INNER JOIN \n         `functionalci` AS `Server_server_id_FunctionalCI`\n       ON `Server_server_id_PhysicalDevice`.`id` = `Server_server_id_FunctionalCI`.`id`\n   ) ON `lnkServerToVolume`.`server_id` = `Server_server_id_PhysicalDevice`.`id`\n WHERE (COALESCE((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` IN (\'StorageSystem\')), 1) AND COALESCE((`Server_server_id_PhysicalDevice`.`finalclass` IN (\'Server\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `lnkServerToVolume`.`id` AS `id`,`lnkServerToVolume`.`volume_id` AS `volume_id`,`LogicalVolume_volume_id`.`name` AS `volume_name`,`lnkServerToVolume`.`server_id` AS `server_id`,`Server_server_id_FunctionalCI`.`name` AS `server_name`,`lnkServerToVolume`.`size_used` AS `size_used`,cast(concat(coalesce(`lnkServerToVolume`.`volume_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`StorageSystem_storagesystem_id_FunctionalCI`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`LogicalVolume_volume_id`.`name`,\'\')) as char charset utf8mb4) AS `volume_id_friendlyname`,coalesce(coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`status` = \'obsolete\'),0),0) AS `volume_id_obsolescence_flag`,cast(concat(coalesce(`Server_server_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `server_id_friendlyname`,coalesce((`Server_server_id_PhysicalDevice`.`status` = \'obsolete\'),0) AS `server_id_obsolescence_flag` from ((`itop27`.`lnkservertovolume` `lnkServerToVolume` join (`itop27`.`logicalvolume` `LogicalVolume_volume_id` join (`itop27`.`physicaldevice` `StorageSystem_storagesystem_id_PhysicalDevice` join `itop27`.`functionalci` `StorageSystem_storagesystem_id_FunctionalCI` on((`StorageSystem_storagesystem_id_PhysicalDevice`.`id` = `StorageSystem_storagesystem_id_FunctionalCI`.`id`))) on((`LogicalVolume_volume_id`.`storagesystem_id` = `StorageSystem_storagesystem_id_PhysicalDevice`.`id`))) on((`lnkServerToVolume`.`volume_id` = `LogicalVolume_volume_id`.`id`))) join (`itop27`.`physicaldevice` `Server_server_id_PhysicalDevice` join `itop27`.`functionalci` `Server_server_id_FunctionalCI` on((`Server_server_id_PhysicalDevice`.`id` = `Server_server_id_FunctionalCI`.`id`))) on((`lnkServerToVolume`.`server_id` = `Server_server_id_PhysicalDevice`.`id`))) where (coalesce((`StorageSystem_storagesystem_id_PhysicalDevice`.`finalclass` = \'StorageSystem\'),1) and coalesce((`Server_server_id_PhysicalDevice`.`finalclass` = \'Server\'),1))
