FROM nginx
MAINTAINER mailto:sandippanchbhai08@gmail.com
RUN apt update
RUN apt install -y wget \
  zip \
 unzip
RUN rm -rf /usr/share/nginx/html/*
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html/
RUN unzip beauty.zip
RUN cp -rvf templatemo_519_beauty/* .
RUN rm -rf templatemo_519_beauty beauty.zip
#CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
EXPOSE 80
