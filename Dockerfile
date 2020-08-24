## Pull the mysql:5.7 image
FROM mysql:5.7
## The maintainer name and email
MAINTAINER Vikram Kalta <vikramkalta91@gmail.com>
# database = test and password for root = password
ENV MYSQL_DATABASE=test \
 MYSQL_ROOT_PASSWORD=password
# when container will be started we will have test database created with this schema
COPY ./test-dump.sql /docker-entrypoint-initdb.d/