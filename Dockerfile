FROM viljaste/base:debian-jessie

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm

ADD ./src /src

RUN /src/entrypoint.sh build

EXPOSE 8000

ENTRYPOINT ["/src/entrypoint.sh", "run"]
