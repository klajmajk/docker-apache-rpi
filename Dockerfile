FROM        armbuild/debian
RUN echo 'deb http://mirrordirector.raspbian.org/raspbian/ testing main contrib non-free rpi' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install apache2 -y --force-yes
RUN a2enmod proxy_http
RUN a2enmod ssl
RUN a2enmod rewrite

RUN apt-get install certbot  -y --force-yes
RUN a2enmod rewrite
RUN a2enmod proxy_wstunnel
EXPOSE 80
EXPOSE 443
VOLUME  ["/var/html", "/etc/apache2/sites-available", "/etc/letsencrypt"]
CMD service apache2 start && tail -F /var/log/apache2/error.log
