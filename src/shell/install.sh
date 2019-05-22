
# create .env for laradock
cp example-env laradock/.env
echo "[Laradock]: Init."
sh workflow default-project default


if [ $1 = "--dev" ]; then
    cp src/nginx/dev.conf laradock/nginx/sites/dev.conf
    cd laradock
    docker-compose restart nginx
fi
