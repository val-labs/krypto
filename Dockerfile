FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install apt-utils
RUN apt-get -y install build-essential
RUN apt-get -y install python3-yaml
COPY . .
RUN make install
ENTRYPOINT ["/docker.sh"]
