
conf=$(cat src/nginx/default.conf)

if [ ! -d "projects/$1/public" ]; then
	echo "Folder projects/$1/public does not exist."
	exit
fi

if [ -f laradock/nginx/sites/default.conf ]
then
	rm laradock/nginx/sites/default.conf
fi
echo "${conf/\$PROJECT/$1}" >> laradock/nginx/sites/default.conf
cd laradock
docker-compose restart nginx
