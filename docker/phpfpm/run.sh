BASE=$(cd $(dirname $0);pwd)
docker run \
	--name bitsmist.com_phpfpm \
	--network host \
	-p 9000:9000 \
    -v ${BASE}/conf/tzdata/Japan:/etc/localtime \
    -v ${BASE}/conf/php/php.ini:/usr/local/etc/php/php.ini \
    -v ${BASE}/conf/php/conf.d/docker-php-ext-xdebug.ini:/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    -v ${BASE}/conf/php-fpm/php-fpm.d/www.conf:/usr/local/etc/php-fpm.d/www.conf \
	-v ${BASE}/log:/usr/local/var/log \
	-v ${BASE}/contents/common:/usr/share/contents/common \
	-v ${BASE}/contents/public:/usr/share/contents/public \
	--rm \
	bitsmist.com/phpfpm

