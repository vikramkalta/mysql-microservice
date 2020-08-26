## Pull the mysql:5.7 image
FROM mysql:5.7
## The maintainer name and email
MAINTAINER Vikram Kalta <vikramkalta91@gmail.com>
# database = test and password for root = password
ENV MYSQL_DATABASE=bring_my_booze_auth \
 MYSQL_ROOT_PASSWORD=vikram91
# when container will be started we will have test database created with this schema
COPY ./migration.sql /docker-entrypoint-initdb.d/

RUN mkdir data