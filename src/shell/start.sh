


if [[ "$OSTYPE" == "linux-gnu" ]] ; then
    echo "Linux"
elif [[ "$OSTYPE" == "darwin"* ]] ; then
    echo "Darwin"
    #valet stop
    #sudo /usr/local/mysql/support-files/mysql.server stop
    cd laradock
    docker-compose up -d nginx mysql
elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo $OSTYPE
elif [[ "$OSTYPE" == "msys" ]]; then
    echo $OSTYPE
elif [[ "$OSTYPE" == "win32" ]]; then
    echo $OSTYPE
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo $OSTYPE
else
    echo $OSTYPE
fi
