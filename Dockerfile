FROM debian:wheezy

MAINTAINER Xavier Gendre "gendre.reivax@gmail.com"

# Add the mainline version repository
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 && \
    echo "deb http://nginx.org/packages/mainline/debian/ wheezy nginx" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y nginx=1.7.7-1~wheezy

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
