#/bin/bash

cd /opt/libphutil && git pull
cd /opt/arcanist && git pull
cd /opt/phabricator && git pull

mkdir -p /opt/phabricator/conf/local
touch /opt/phabricator/conf/local/local.json

chmod 666 /opt/phabricator/conf/local/local.json

cd /opt/phabricator && ./bin/storage upgrade --force
cd /opt/phabricator && ./bin/phd restart
