TYPE=VIEW
query=select distinct `LogicalInterface`.`id` AS `id`,`LogicalInterface_NetworkInterface`.`name` AS `name`,`LogicalInterface_IPInterface`.`ipaddress` AS `ipaddress`,`LogicalInterface_IPInterface`.`macaddress` AS `macaddress`,`LogicalInterface_IPInterface`.`comment` AS `comment`,`LogicalInterface_IPInterface`.`ipgateway` AS `ipgateway`,`LogicalInterface_IPInterface`.`ipmask` AS `ipmask`,`LogicalInterface_IPInterface`.`speed` AS `speed`,`LogicalInterface`.`virtualmachine_id` AS `virtualmachine_id`,`VirtualMachine_virtualmachine_id_FunctionalCI`.`name` AS `virtualmachine_name`,`LogicalInterface_NetworkInterface`.`finalclass` AS `finalclass`,cast(concat(coalesce(`LogicalInterface_NetworkInterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce(coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'),0),0) AS `obsolescence_flag`,`LogicalInterface_NetworkInterface`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualmachine_id_friendlyname`,coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'),0) AS `virtualmachine_id_obsolescence_flag` from (((`itop27`.`logicalinterface` `LogicalInterface` join (`itop27`.`virtualdevice` `VirtualMachine_virtualmachine_id_VirtualDevice` join `itop27`.`functionalci` `VirtualMachine_virtualmachine_id_FunctionalCI` on((`VirtualMachine_virtualmachine_id_VirtualDevice`.`id` = `VirtualMachine_virtualmachine_id_FunctionalCI`.`id`))) on((`LogicalInterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_VirtualDevice`.`id`))) join `itop27`.`ipinterface` `LogicalInterface_IPInterface` on((`LogicalInterface`.`id` = `LogicalInterface_IPInterface`.`id`))) join `itop27`.`networkinterface` `LogicalInterface_NetworkInterface` on((`LogicalInterface`.`id` = `LogicalInterface_NetworkInterface`.`id`))) where coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`finalclass` = \'VirtualMachine\'),1)
md5=01ce08789a12d93d9ac1e197be9932c7
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `LogicalInterface`.`id` AS `id`,\n `LogicalInterface_NetworkInterface`.`name` AS `name`,\n `LogicalInterface_IPInterface`.`ipaddress` AS `ipaddress`,\n `LogicalInterface_IPInterface`.`macaddress` AS `macaddress`,\n `LogicalInterface_IPInterface`.`comment` AS `comment`,\n `LogicalInterface_IPInterface`.`ipgateway` AS `ipgateway`,\n `LogicalInterface_IPInterface`.`ipmask` AS `ipmask`,\n `LogicalInterface_IPInterface`.`speed` AS `speed`,\n `LogicalInterface`.`virtualmachine_id` AS `virtualmachine_id`,\n `VirtualMachine_virtualmachine_id_FunctionalCI`.`name` AS `virtualmachine_name`,\n `LogicalInterface_NetworkInterface`.`finalclass` AS `finalclass`,\n CAST(CONCAT(COALESCE(`LogicalInterface_NetworkInterface`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n COALESCE(COALESCE((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'), 0), 0) AS `obsolescence_flag`,\n `LogicalInterface_NetworkInterface`.`obsolescence_date` AS `obsolescence_date`,\n CAST(CONCAT(COALESCE(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`, \'\')) AS CHAR) AS `virtualmachine_id_friendlyname`,\n COALESCE((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'), 0) AS `virtualmachine_id_obsolescence_flag`\n FROM \n   `logicalinterface` AS `LogicalInterface`\n   INNER JOIN (\n      `virtualdevice` AS `VirtualMachine_virtualmachine_id_VirtualDevice` \n      INNER JOIN \n         `functionalci` AS `VirtualMachine_virtualmachine_id_FunctionalCI`\n       ON `VirtualMachine_virtualmachine_id_VirtualDevice`.`id` = `VirtualMachine_virtualmachine_id_FunctionalCI`.`id`\n   ) ON `LogicalInterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_VirtualDevice`.`id`\n   INNER JOIN \n      `ipinterface` AS `LogicalInterface_IPInterface`\n    ON `LogicalInterface`.`id` = `LogicalInterface_IPInterface`.`id`\n   INNER JOIN \n      `networkinterface` AS `LogicalInterface_NetworkInterface`\n    ON `LogicalInterface`.`id` = `LogicalInterface_NetworkInterface`.`id`\n WHERE COALESCE((`VirtualMachine_virtualmachine_id_VirtualDevice`.`finalclass` IN (\'VirtualMachine\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `LogicalInterface`.`id` AS `id`,`LogicalInterface_NetworkInterface`.`name` AS `name`,`LogicalInterface_IPInterface`.`ipaddress` AS `ipaddress`,`LogicalInterface_IPInterface`.`macaddress` AS `macaddress`,`LogicalInterface_IPInterface`.`comment` AS `comment`,`LogicalInterface_IPInterface`.`ipgateway` AS `ipgateway`,`LogicalInterface_IPInterface`.`ipmask` AS `ipmask`,`LogicalInterface_IPInterface`.`speed` AS `speed`,`LogicalInterface`.`virtualmachine_id` AS `virtualmachine_id`,`VirtualMachine_virtualmachine_id_FunctionalCI`.`name` AS `virtualmachine_name`,`LogicalInterface_NetworkInterface`.`finalclass` AS `finalclass`,cast(concat(coalesce(`LogicalInterface_NetworkInterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce(coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'),0),0) AS `obsolescence_flag`,`LogicalInterface_NetworkInterface`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`VirtualMachine_virtualmachine_id_FunctionalCI`.`name`,\'\')) as char charset utf8mb4) AS `virtualmachine_id_friendlyname`,coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`status` = \'obsolete\'),0) AS `virtualmachine_id_obsolescence_flag` from (((`itop27`.`logicalinterface` `LogicalInterface` join (`itop27`.`virtualdevice` `VirtualMachine_virtualmachine_id_VirtualDevice` join `itop27`.`functionalci` `VirtualMachine_virtualmachine_id_FunctionalCI` on((`VirtualMachine_virtualmachine_id_VirtualDevice`.`id` = `VirtualMachine_virtualmachine_id_FunctionalCI`.`id`))) on((`LogicalInterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_VirtualDevice`.`id`))) join `itop27`.`ipinterface` `LogicalInterface_IPInterface` on((`LogicalInterface`.`id` = `LogicalInterface_IPInterface`.`id`))) join `itop27`.`networkinterface` `LogicalInterface_NetworkInterface` on((`LogicalInterface`.`id` = `LogicalInterface_NetworkInterface`.`id`))) where coalesce((`VirtualMachine_virtualmachine_id_VirtualDevice`.`finalclass` = \'VirtualMachine\'),1)