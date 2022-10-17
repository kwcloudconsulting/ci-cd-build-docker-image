FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install -y git && \
    yum install -y wget && \
    yum install unzip -y

# change directory
RUN cd /var/www/html

#download webfiles
RUN git clone https://github.com/kwcloudconsulting/basic.git

# copy files into html directory
RUN cp -r basic/* /var/www/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN service apache2 restart
# expose port 80 to the container
EXPOSE 80

# set the default application that will run when the container starts
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]