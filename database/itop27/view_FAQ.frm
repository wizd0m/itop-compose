TYPE=VIEW
query=select distinct `FAQ`.`id` AS `id`,`FAQ`.`title` AS `title`,`FAQ`.`summary` AS `summary`,`FAQ`.`description` AS `description`,`FAQ`.`category_id` AS `category_id`,`FAQCategory_category_id`.`nam` AS `category_name`,`FAQ`.`error_code` AS `error_code`,`FAQ`.`key_words` AS `key_words`,`FAQ`.`domains` AS `domains`,cast(concat(coalesce(`FAQ`.`title`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`FAQCategory_category_id`.`nam`,\'\')) as char charset utf8mb4) AS `category_id_friendlyname` from (`itop27`.`faq` `FAQ` join `itop27`.`faqcategory` `FAQCategory_category_id` on((`FAQ`.`category_id` = `FAQCategory_category_id`.`id`))) where 1
md5=ea34713a03a7393e744ef02454ecef12
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-05-02 08:14:55
create-version=1
source=SELECT\n DISTINCT `FAQ`.`id` AS `id`,\n `FAQ`.`title` AS `title`,\n `FAQ`.`summary` AS `summary`,\n `FAQ`.`description` AS `description`,\n `FAQ`.`category_id` AS `category_id`,\n `FAQCategory_category_id`.`nam` AS `category_name`,\n `FAQ`.`error_code` AS `error_code`,\n `FAQ`.`key_words` AS `key_words`,\n `FAQ`.`domains` AS `domains`,\n CAST(CONCAT(COALESCE(`FAQ`.`title`, \'\')) AS CHAR) AS `friendlyname`,\n CAST(CONCAT(COALESCE(`FAQCategory_category_id`.`nam`, \'\')) AS CHAR) AS `category_id_friendlyname`\n FROM \n   `faq` AS `FAQ`\n   INNER JOIN \n      `faqcategory` AS `FAQCategory_category_id`\n    ON `FAQ`.`category_id` = `FAQCategory_category_id`.`id`\n WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `FAQ`.`id` AS `id`,`FAQ`.`title` AS `title`,`FAQ`.`summary` AS `summary`,`FAQ`.`description` AS `description`,`FAQ`.`category_id` AS `category_id`,`FAQCategory_category_id`.`nam` AS `category_name`,`FAQ`.`error_code` AS `error_code`,`FAQ`.`key_words` AS `key_words`,`FAQ`.`domains` AS `domains`,cast(concat(coalesce(`FAQ`.`title`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`FAQCategory_category_id`.`nam`,\'\')) as char charset utf8mb4) AS `category_id_friendlyname` from (`itop27`.`faq` `FAQ` join `itop27`.`faqcategory` `FAQCategory_category_id` on((`FAQ`.`category_id` = `FAQCategory_category_id`.`id`))) where 1
