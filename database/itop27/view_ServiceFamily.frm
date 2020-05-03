TYPE=VIEW
query=select distinct `ServiceFamily`.`id` AS `id`,`ServiceFamily`.`name` AS `name`,`ServiceFamily`.`icon_mimetype` AS `icon`,cast(concat(coalesce(`ServiceFamily`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,`ServiceFamily`.`icon_data` AS `ServiceFamilyicon_data`,`ServiceFamily`.`icon_filename` AS `ServiceFamilyicon_filename` from `itop27`.`servicefamily` `ServiceFamily` where 1
md5=b2e7d14126df50bacb6ef81df9136b02
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `ServiceFamily`.`id` AS `id`,\n `ServiceFamily`.`name` AS `name`,\n `ServiceFamily`.`icon_mimetype` AS `icon`,\n CAST(CONCAT(COALESCE(`ServiceFamily`.`name`, \'\')) AS CHAR) AS `friendlyname`,\n `ServiceFamily`.`icon_data` AS `ServiceFamilyicon_data`,\n `ServiceFamily`.`icon_filename` AS `ServiceFamilyicon_filename`\n FROM \n   `servicefamily` AS `ServiceFamily`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `ServiceFamily`.`id` AS `id`,`ServiceFamily`.`name` AS `name`,`ServiceFamily`.`icon_mimetype` AS `icon`,cast(concat(coalesce(`ServiceFamily`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,`ServiceFamily`.`icon_data` AS `ServiceFamilyicon_data`,`ServiceFamily`.`icon_filename` AS `ServiceFamilyicon_filename` from `itop27`.`servicefamily` `ServiceFamily` where 1