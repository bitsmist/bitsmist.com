BASE=$(cd $(dirname $0);pwd)
docker run \
	--name bitsmist.com_nginx \
	--network host \
	-p 80:80 \
	-v ${BASE}/conf/tzdata/Japan:/etc/localtime \
	-v ${BASE}/conf/nginx/conf.d:/etc/nginx/conf.d \
	-v ${BASE}/log:/var/log/nginx \
	-v ${BASE}/contents/common:/usr/share/contents/common \
	-v ${BASE}/contents/public:/usr/share/contents/public \
	--rm \
	bitsmist.com/nginx
