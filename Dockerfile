# creating docker image for angular app
FROM nginx:alpine
LABEL author="safiullah"
COPY ./dist /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT ["nginx","-g","daemon off;"]
