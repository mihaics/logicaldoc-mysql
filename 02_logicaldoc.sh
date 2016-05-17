#!/bin/bash
set -eo pipefail
if [ ! -d /opt/logicaldoc/tomcat ]; then
 printf "Installing logical doc\n"
 mysqld_safe & sleep 10s
 /opt/logicaldoc/wait-for-it.sh 127.0.0.1:3306 -t 100
 java -jar /opt/logicaldoc/logicaldoc-installer.jar /opt/logicaldoc/auto-install.xml
 killall mysqld_safe & sleep 3s
else
 printf "Logicaldoc already installed\n"
fi


