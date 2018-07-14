## Description

Dockerized puppet master with one puppet agent node

## Environment

- Ubuntu 16.04
- Puppet 5.3

## Prerequisites

Docker 

https://docs.docker.com/engine/installation/

Docker-compose

https://docs.docker.com/v1.11/compose/install/

##### Note: you should be able to run docker without sudo

## Installation

Clone the project
```
$ git clone git@github.com:aleksmark/puppet-infra.git
$ cd puppet-infra
```

Build the docker environment
```
$ docker-compose up -d
```

## Usage

Run ad hoc puppet manifest file
```
$ docker exec -it puppet-master puppet apply /etc/puppetlabs/code/environments/production/manifests/sample_file.pp
```

Install puppet module
```
$ docker exec -it puppet-master bash -c 'puppet module install puppetlabs-apache'
```

Provision puppet agent node
```
$ docker exec -it puppet-remote-1 bash -c 'puppet agent --certname=$REMOTE_HOST -t'
```
##### All manifest files from puppet/manifests directory will be applied
