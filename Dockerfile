# creating docker image for angular app
FROM centos
RUN yum -y install epel-release nginx
LABEL author="safiullah"
COPY ./dist/* /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT ["nginx","-g","daemon off;"]
