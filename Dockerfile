FROM ubuntu:18.04
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get -y install --no-install-recommends g++ clang python3 cmake libboost-dev libboost-context-dev doxygen gfortran make perl

RUN mkdir /root/simgrid_inst
WORKDIR /root/simgrid_inst
COPY ./simgrid-v3.18.tar.gz ./
RUN tar xvf ./simgrid-v3.18.tar.gz

WORKDIR /root/simgrid_inst/simgrid-v3.18
RUN cmake -DCMAKE_INSTALL_PREFIX=/opt/simgrid .
RUN make -j8
RUN make install

ENV PATH /opt/simgrid/bin/:$PATH
WORKDIR /root/workspace

# RUN ls
# CMD cmake -DCMAKE_INSTALL_PREFIX=/opt/simgrid .
# CMD 