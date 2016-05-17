#!/bin/bash
set -eo pipefail
/etc/init.d/mysql restart
/opt/logicaldoc/wait-for-it.sh 127.0.0.1:3306 -t 100
if [ ! -d /opt/logicaldoc/tomcat ]; then
 echo "Installing logical doc"
 java -jar /opt/logicaldoc/logicaldoc-installer.jar /opt/logicaldoc/auto-install.xml
else
 printf "Logicaldoc already installed"
fi

/etc/init.d/mysql stop


