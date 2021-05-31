FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=crud
COPY ./crud.sql /docker-entrypoint-initdb.d/
