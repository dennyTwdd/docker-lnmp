FROM httpd:2.4.50-alpine

RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/Include conf\/extra\/httpd-vhosts/s/^#//g' /usr/local/apache2/conf/httpd.conf

COPY test.apache.conf /usr/local/apache2/conf/test.apache.conf

RUN echo "Include /usr/local/apache2/conf/test.apache.conf" >> /usr/local/apache2/conf/httpd.conf