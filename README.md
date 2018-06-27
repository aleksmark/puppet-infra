Dockerized puppet master with one puppet agent node
The node is certified with master on the container start
All manifest files from puppet/manifests directory will be applied

Prerequisite
```
docker
docker-compose
```

Init setup
```
$ docker-compose up -D
```

run ad hoc puppet manifest file
```
$ docker exec -it puppet-master puppet apply /etc/puppet/manifests/sample_file.pp
```

provision puppet agent node
```
$ docker exec -it puppet-remote-1 bash -c 'puppet agent --certname=$REMOTE_HOST -t'
```
