TYPE=VIEW
query=select distinct `_faq`.`id` AS `id`,`_faq`.`title` AS `title`,`_faq`.`summary` AS `summary`,`_faq`.`description` AS `description`,`_faq`.`category_id` AS `category_id`,`FAQCategory_category_id_faqcategory`.`nam` AS `category_name`,`_faq`.`error_code` AS `error_code`,`_faq`.`key_words` AS `key_words`,`_faq`.`domains` AS `domains`,cast(concat(coalesce(`_faq`.`title`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`FAQCategory_category_id_faqcategory`.`nam`,\'\')) as char charset utf8mb4) AS `category_id_friendlyname` from (`itop`.`faq` `_faq` join `itop`.`faqcategory` `FAQCategory_category_id_faqcategory` on((`_faq`.`category_id` = `FAQCategory_category_id_faqcategory`.`id`))) where 1
md5=49cc9c7d565fd10ba2adc1faa2b7b5cd
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2019-03-07 12:20:07
create-version=1
source=SELECT DISTINCT `_faq`.`id` AS `id`, `_faq`.`title` AS `title`, `_faq`.`summary` AS `summary`, `_faq`.`description` AS `description`, `_faq`.`category_id` AS `category_id`, `FAQCategory_category_id_faqcategory`.`nam` AS `category_name`, `_faq`.`error_code` AS `error_code`, `_faq`.`key_words` AS `key_words`, `_faq`.`domains` AS `domains`, CAST(CONCAT(COALESCE(`_faq`.`title`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`FAQCategory_category_id_faqcategory`.`nam`, \'\')) AS CHAR) AS `category_id_friendlyname` FROM `faq` AS `_faq`INNER JOIN `faqcategory` AS `FAQCategory_category_id_faqcategory` ON `_faq`.`category_id` = `FAQCategory_category_id_faqcategory`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_faq`.`id` AS `id`,`_faq`.`title` AS `title`,`_faq`.`summary` AS `summary`,`_faq`.`description` AS `description`,`_faq`.`category_id` AS `category_id`,`FAQCategory_category_id_faqcategory`.`nam` AS `category_name`,`_faq`.`error_code` AS `error_code`,`_faq`.`key_words` AS `key_words`,`_faq`.`domains` AS `domains`,cast(concat(coalesce(`_faq`.`title`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`FAQCategory_category_id_faqcategory`.`nam`,\'\')) as char charset utf8mb4) AS `category_id_friendlyname` from (`itop`.`faq` `_faq` join `itop`.`faqcategory` `FAQCategory_category_id_faqcategory` on((`_faq`.`category_id` = `FAQCategory_category_id_faqcategory`.`id`))) where 1
