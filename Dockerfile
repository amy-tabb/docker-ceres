FROM amytabb/docker-ubuntu18-essentials:latest
MAINTAINER Amy Tabb

#ceres
RUN apt-get -y install libgoogle-glog-dev libatlas-base-dev libsuitesparse-dev

WORKDIR /installed_libs/

RUN git clone https://ceres-solver.googlesource.com/ceres-solver

WORKDIR /installed_libs/ceres-bin/

RUN cmake ../ceres-solver

RUN make -j4

RUN make install 

WORKDIR /installed_libs/
