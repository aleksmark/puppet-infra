FROM ubuntu:16.04

# install puppet from default ubuntu repo (3.8)
RUN apt-get update && \
	apt-get install -y wget puppet

#update puppet version to 5.3
RUN wget http://downloads.puppetlabs.com/puppet/puppet-5.3.1.tar.gz && \
	tar -xzf puppet-5.3.1.tar.gz && \
	./puppet-5.3.1/install.rb

CMD printf "autosign = true\n" >> /etc/puppetlabs/puppet/puppet.conf && \
	puppet master --no-daemonize
