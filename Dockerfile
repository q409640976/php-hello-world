FROM index.tenxcloud.com/tenxcloud/nginx-php5
MAINTAINER baiyu "baiyu@tenxcloud.com"

ADD . /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html/Application
# Expose the container port:defalt 3000
EXPOSE 80

CMD service php5-fpm start && nginx -g "daemon off;"
