#!/bin/sh

set -ex

DEFAULTLISTENHOST="0.0.0.0"

exec ssh -N -L ${LISTENHOST:-DEFAULTLISTENHOST}:${LISTENPORT:-TARGETPORT}:$TUNNELHOST:$TARGETPORT -i /root/private.key -p $TUNNELHOSTPORT $TUNNELUSER@$TUNNELHOST