FROM ubuntu-nginx

MAINTAINER Ben Bithacker ben@bithacker.org

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

WORKDIR /app

RUN ["/bin/bash", "-l", "-c", "bundle install"]

ADD config/container/start-server.sh /usr/bin/start-server
RUN chmod +x /usr/bin/start-server

ADD . /app

EXPOSE 9292

 CMD ["/usr/bin/start-server"]
