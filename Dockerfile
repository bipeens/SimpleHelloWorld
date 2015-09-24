# install docker

FROM jamesdbloom/docker-java7-maven

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

RUN apt-get install -y apparmor

RUN apt-get install -y curl

RUN curl -sSL https://get.docker.com/ | sh

ADD ./wrapdocker /usr/local/bin/wrapdocker

RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]