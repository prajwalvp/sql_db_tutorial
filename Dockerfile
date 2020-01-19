FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_DATABASE=psr_sql_tutorial 

ADD tutorial_schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
