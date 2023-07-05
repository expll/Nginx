#!/bin/bash
# chkconfig: 2345 80 20
# description: Nginx Start Service

### BEGIN INIT INFO
# Provides:          mongodb-start
# Required-Start:    $network $syslog
# Required-Stop:     $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Nginx Start Service
### END INIT INFO
systemctl start nginx
