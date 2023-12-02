FROM bitnami/wordpress
LABEL maintainer "Bitnami <containers@bitnami.com>"

## Enable mod_ratelimit module
RUN sed -i -r 's/MaxRequestWorkers      250/MaxRequestWorkers      6000/g' /opt/bitnami/apache/conf/original/extra/httpd-mpm.conf /opt/bitnami/apache/conf/extra/httpd-mpm.conf
RUN sed -i -r 's/MaxRequestWorkers      400/MaxRequestWorkers      6000/g' /opt/bitnami/apache/conf/original/extra/httpd-mpm.conf /opt/bitnami/apache/conf/extra/httpd-mpm.conf