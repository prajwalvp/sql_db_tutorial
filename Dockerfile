FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_DATABASE=psr_sql_tutorial # Name of database on which the schema takes shape

ADD tutorial_schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
