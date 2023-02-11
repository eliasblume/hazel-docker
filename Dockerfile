FROM ubuntu:xenial

RUN apt-get update && apt-get install -y build-essential ca-certificates pkg-config file openssl libssl-dev libpq-dev libldap2-dev liblzma-dev wget curl
RUN update-ca-certificates --fresh --verbose

WORKDIR /app
RUN wget https://github.com/MPIB/hazel/releases/download/1.1.0rc3/hazel_1.1.0_amd64.deb
# install file hazel_1.1.0_amd64.deb
RUN apt-get install -y ./hazel_1.1.0_amd64.deb

CMD ["hazel", "--config /app/hazel.toml"]


