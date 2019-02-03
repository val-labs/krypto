FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install apt-utils
RUN apt-get -y install build-essential
COPY .  /src
WORKDIR /src
RUN make install
COPY run.sh /bin
ENTRYPOINT ["run.sh"]
