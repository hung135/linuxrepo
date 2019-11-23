#follow instructions from here
#https://www.docker.com/blog/tips-for-deploying-nginx-official-image-with-docker/
FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/*.htm*
COPY default.conf /etc/nginx/conf.d/default.conf
#RUN rm /etc/nginx/conf.d/examplessl.conf
#run apt update -y
#run apt install vim -y
COPY repos /usr/share/nginx/html/

#COPY conf /etc/nginx
