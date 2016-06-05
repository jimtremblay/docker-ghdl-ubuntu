FROM ubuntu:14.04.4

MAINTAINER Jim Tremblay "jimtremblay@gmail.com"

RUN apt-get update
RUN apt-get dist-upgrade -y

# add software-properties-common to be able to add ppa
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:pgavin/ghdl
RUN apt-get update
# install everything need to compile vhdl sources
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ghdl

# create build directory where a volume will be mounted
RUN mkdir /work
