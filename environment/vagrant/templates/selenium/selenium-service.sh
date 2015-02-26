#!/bin/bash
XVFB=/opt/selenium/selenium.sh
PIDFILE=/var/run/xvfb.pid
case "$1" in
    start)
        echo -n "Starting virtual X frame buffer: Xvfb"
        start-stop-daemon --start --quiet --pidfile $PIDFILE --make-pidfile --background --exec $XVFB 
        echo "."
        ;;
    stop)
        echo -n "Stopping virtual X frame buffer: Xvfb"
        # does not work with start-stop-daemon because of child processes
        read pid <$PIDFILE
        pkill -TERM -P $pid
        echo "."
        ;;
    restart)
        $0 stop
        $0 start
        ;;
    *)
        echo "Usage: /etc/init.d/selenium {start|stop|restart}"
        exit 1
esac

exit 0

