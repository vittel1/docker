FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	build-essential \
	curl \
	unzip \
	git \
	python3

WORKDIR /etc
RUN git clone https://github.com/wr-hamburg/julea.git

WORKDIR julea
#TODO Parameter "full" for install all dependencies
RUN /bin/bash -c ./scripts/install-dependencies.sh
