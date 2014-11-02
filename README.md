docker-phabricator-alone
==================
Dockerfile with debian:jessie / phabricator

Run
----
```
docker run -i -d -p 8081:80 yesnault/docker-phabricator-alone
```
See `run-server.sh` for volume mapping.


Set DB : 
```
docker exec -it <containerID> /opt/phabricator/bin/config set mysql.host <Host Mysql>
docker exec -it <containerID> /opt/phabricator/bin/config set mysql.port <Port Mysql>
docker exec -it <containerID> /opt/phabricator/bin/config set mysql.user <User Mysql>
docker exec -it <containerID> /opt/phabricator/bin/config set mysql.pass <Password Mysql>
```

Build and run
---------------

```
git clone https://github.com/yesnault/docker-phabricator.git
./build.sh
./run-server.sh
````

Go to http://localhost:8081

You can connect into container with this command :
```
docker exec -it <containerId> bash
```

Conf files are written on `/data/phabricator/conf` (described in run-server.sh)

Repositories files are written on `/data/phabricator/repo` (described in run-server.sh)
