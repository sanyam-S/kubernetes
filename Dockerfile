FROM centos
RUN yum install httpd -y
COPY /var/lib/jenkins/index.html /var/www/html/index.html
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
