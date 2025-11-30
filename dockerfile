FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install apache2 -y

# Fix warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Copy your webpage
COPY index.html /var/www/html/

# Correct place to start Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

