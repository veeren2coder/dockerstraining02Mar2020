FROM  fedora
#  this will be based image
MAINTAINER  ashutoshh
#  devinfo
ARG  web=httpd
#  this variable  web will not be present in container
ENV  server=$web
ENV  color=black
#  all env variables will be present in containers
RUN  yum   install  $server  -y
#  install  httpd  web server  as  default
WORKDIR  /opt/
#  it will be changing  current directory in the container
COPY  .  .
#  it will copy all the data to docker image
EXPOSE  80
#  exposing  port  in the container
ENTRYPOINT ["/bin/bash", "/opt/entrypoint.sh"]
