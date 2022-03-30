NGINX_NAME="nginx"
NGINX_PROG="/usr/local/sbin/nginx"
NGINX_PID_FILE="/usr/local/nginx/logs/nginx.pid"
NGINX_CONF_FILE="/usr/local/nginx/conf/nginx.conf"
NGINX_LOCK_FILE="/var/lock/subsys/nginx.lock"

# check current user
[ "$USER" != "root" ] && exit 1

start() {
    status
        if [[ $? -eq 0 ]]; then
            echo $"Nginx (PID $(cat $NGINX_PID_FILE)) already started."
            return 1
        fi
    echo -n $"Starting $NGINX_NAME: "
        daemon $NGINX_PROG -c $NGINX_CONF_FILE
        retval=$?
        echo
    [ $retval -eq 0 ] && touch $NGINX_LOCK_FILE
    return $retval
}

stop() {
    status
        if [[ $? -eq 1 ]]; then
            echo "Nginx server already stopped."
            return 1
        fi
    echo -n $"Stoping $NGINX_NAME: "
        killproc $NGINX_PROG
        retval=$?
        echo
    [ $retval -eq 0 ] && rm -f $NGINX_LOCK_FILE
    return $retval
}

restart() {
    stop
        sleep 1
    start
    retval=$?
    return $retval
}