FROM buraphacloud/centos:nophp
ENV http_proxy http://10.16.64.14:8888/
RUN yum update -y
RUN yum install tar -y
RUN yum install wget -y
RUN yum install libxml2-devel -y
RUN wget http://museum.php.net/php5/php-5.4.5.tar.bz2
RUN tar xvjf php-5.4.5.tar.bz2
RUN ./php-5.4.5/configure
RUN make
RUN make install
VOLUME /workdir
