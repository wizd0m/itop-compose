#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM php:7.1-apache

RUN set -eux; \
	\
	apt-get update && apt-get install -y --no-install-recommends \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
		libldap2-dev \
		libxml2-dev \
		graphviz \
		wget \
		git \ 
		unzip \
        && rm -rf /var/lib/apt/lists/*  \ 
        && docker-php-ext-configure ldap \
        && docker-php-ext-install -j$(nproc) mysqli mcrypt ldap soap json xml zip pdo iconv \
        && docker-php-ext-configure gd \
        && docker-php-ext-install -j$(nproc) gd \
        && docker-php-ext-enable ldap gd zip \ 
	    && rm -rf /var/lib/apt/lists/* \
		&& rm -rf /var/www/html/* \
		&& mkdir -p /tmp/itop \
		&& wget --no-check-certificate -O /tmp/itop/itop.zip https://sourceforge.net/projects/itop/files/itop/2.6.0/iTop-2.6.0-4294.zip \
		&& unzip /tmp/itop/itop.zip -d /tmp/itop/ \
		&& mv /tmp/itop/web/* /var/www/html/ \
		&& chown -R www-data:www-data /var/www/html \
		&& apt-get clean && rm -rf /var/lib/apt/list/* /tmp/* /var/tmp/*
				
EXPOSE 80 443
COPY conf/php.ini /usr/local/etc/php/
COPY artifacts/make-itop-config-read-only.sh /make-itop-config-read-only.sh 
COPY artifacts/make-itop-config-writable.sh /make-itop-config-writable.sh 

RUN chmod +x /*.sh \
	&& ln -s /make-itop-config-read-only.sh /usr/local/bin/conf-w \
	&& ln -s /make-itop-config-writable.sh /usr/local/bin/conf-ro

CMD ["apache2-foreground"]
