FROM alpine

RUN apk update
RUN apk add nginx
RUN apk add openrc
RUN apk add openssh
RUN apk add openssl
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir -p /run/nginx
RUN adduser -D user
RUN echo "user:password"|chpasswd
RUN ssh-keygen -A
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html
COPY start.sh ./start.sh
RUN chmod +x /start.sh
#RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
#RUN tar -xvf telegraf-1.13.3-static_linux_amd64.tar.gz 
#COPY ./telegraf.conf /etc/telegraf/telegraf.conf
#RUN apk add supervisor
#COPY supervisord.conf /etc/supervisord.conf
CMD sh start.sh
EXPOSE 80
EXPOSE 443
