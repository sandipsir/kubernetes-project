FROM ubuntu
MAINTAINER mailto:sandippanchbhai08@gmail.com
RUN apt update
RUN apt install -y apache2 \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip beauty.zip
RUN cp -rvf templatemo_519_beauty/* .
RUN rm -rf templatemo_519_beauty beauty.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
