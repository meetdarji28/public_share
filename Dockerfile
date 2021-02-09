FROM ubuntu:latest
MAINTANER mit.parmar@nexuslinkservices.in
RUN apt install -y apache2 zip unzip
WORKDIR /var/www/html
RUN git init
RUN git remote add origin https://github.com/meetdarji28/jenikinsTest.git
RUN git pull origin master
CMD [“/usr/sbin/apache”,”-D”,”FOREGROUND”]
EXPOSE 80
