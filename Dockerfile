FROM centos:centos7

LABEL maintainer="generali"

#Copy Dist folder to web server root folder
#COPY {} /var/ww/html

#Copy httpd.conf file 
#COPY ../ /etc/httpd/conf/httpd.conf

#Start the httpd server
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
