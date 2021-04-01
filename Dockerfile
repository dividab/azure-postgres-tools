FROM ubuntu:20.04

RUN apt update && \
apt-get install -y lsb-release && \
apt-get install -y curl ca-certificates gnupg && \
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
apt update && \
apt-get install -y postgresql-client-11 && \
apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3-pip && \
pip3 install blobxfer