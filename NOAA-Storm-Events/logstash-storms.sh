#!/bin/sh

RUNDIR="~/demo/logstash"
LOGDIR="~/demo/out"
DATADIR="~/demo/data/NOAA-StormEvents"
DATE=`date +"%Y%m%d%H%M"`
CONF="logstash-storms.conf"

case "$1" in
start)
  ${RUNDIR}/bin/logstash -f ${DATADIR}/${CONF} > ${LOGDIR}/$0-$DATE.out
;;

test)
  ${RUNDIR}/bin/logstash -t -f ${DATADIR}/${CONF}
;;

verbose)
  ${RUNDIR}/bin/logstash --verbose -f ${DATADIR}/${CONF}
;;

debug)
  ${RUNDIR}/bin/logstash --debug -f ${DATADIR}/${CONF}
;;

stop)

;;

restart)
        $0 stop
        $0 start
;;

*)
        echo "Usage: $0 {start|stop|test|restart}"
        exit 1
;;
esac

exit 0
