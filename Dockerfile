From centos:7

WORKDIR /var/www/

RUN yum install httpd -y 
RUN yum install net-tools -y 

COPY index.html /var/www/html/
COPY style.css /var/www/html/
COPY tenor.gif /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]