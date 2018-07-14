Dockerized puppet master with one puppet agent node

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
$ docker exec -it puppet-master puppet apply /etc/puppetlabs/code/environments/production/manifests/sample_file.pp
```

install puppet module
```
$ docker exec -it puppet-master bash -c 'puppet module install puppetlabs-apache'
```

provision puppet agent node
```
$ docker exec -it puppet-remote-1 bash -c 'puppet agent --certname=$REMOTE_HOST -t'
```
