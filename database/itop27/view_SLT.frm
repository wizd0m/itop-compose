TYPE=VIEW
query=select distinct `SLT`.`id` AS `id`,`SLT`.`name` AS `name`,`SLT`.`priority` AS `priority`,`SLT`.`request_type` AS `request_type`,`SLT`.`metric` AS `metric`,`SLT`.`value` AS `value`,`SLT`.`unit` AS `unit`,cast(concat(coalesce(`SLT`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`slt` `SLT` where 1
md5=0f7d46cf0e2338c48c29667bc3156948
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `SLT`.`id` AS `id`,\n `SLT`.`name` AS `name`,\n `SLT`.`priority` AS `priority`,\n `SLT`.`request_type` AS `request_type`,\n `SLT`.`metric` AS `metric`,\n `SLT`.`value` AS `value`,\n `SLT`.`unit` AS `unit`,\n CAST(CONCAT(COALESCE(`SLT`.`name`, \'\')) AS CHAR) AS `friendlyname`\n FROM \n   `slt` AS `SLT`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `SLT`.`id` AS `id`,`SLT`.`name` AS `name`,`SLT`.`priority` AS `priority`,`SLT`.`request_type` AS `request_type`,`SLT`.`metric` AS `metric`,`SLT`.`value` AS `value`,`SLT`.`unit` AS `unit`,cast(concat(coalesce(`SLT`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `itop27`.`slt` `SLT` where 1
