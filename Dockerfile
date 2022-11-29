FROM mysql

ENV MYSQL_DATABASE=sakilladb
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=root

WORKDIR /docker-entrypoint-initdb.d
COPY sakila01-schema.sql .
COPY sakila02-data.sql .

VOLUME /var/lib/mysql

EXPOSE 3306


# docker run -p 3306:3306 -v sqldb:/var/lib/mysql --name sqldb abending/sakilladb:latest
