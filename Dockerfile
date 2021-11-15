FROM ubuntu:latest

ENV RAILS_ENV=production

WORKDIR /opt

RUN apt update && apt install -y wget libsqlite3-dev libmysqlclient-dev libpq-dev freetds-dev && rm -rf /var/lib/apt/lists/*

RUN wget -O motor-admin https://github.com/motor-admin/motor-admin/releases/download/latest/motor-admin-Linux-$(uname -m) && chmod +x ./motor-admin

CMD ["/opt/motor-admin"]
