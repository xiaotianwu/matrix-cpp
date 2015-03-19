# VERSION:	0.1
# AUTHOR:	Xiaotian Wu
# DESCRIPTION:	Image of matrix cpp

FROM centos
MAINTAINER Xiaotian Wu

RUN yum install -y git wget tar vim automake autoconf m4 libtool make gcc gcc-c++
RUN echo -e "[WandiscoSVN]\n\
name=Wandisco SVN Repo\n\
baseurl=http://opensource.wandisco.com/centos/7/svn-1.9/RPMS/x86_64/\n\
enabled=1\n\
gpgcheck=0" > /etc/yum.repos.d/wandisco-svn.repo
RUN yum groupinstall -y "Development Tools"
RUN yum install -y zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-utils-devel

RUN wget http://www.apache.org/dist/mesos/0.21.1/mesos-0.21.1.tar.gz
RUN tar -zxf mesos-0.21.1.tar.gz
RUN mkdir -p /mesos-0.21.1/build&&cd /mesos-0.21.1/build&&../configure --disable-java --disable-python&&make

RUN cd /mesos-0.21.1/build&&make install
RUN cd /mesos-0.21.1/build/3rdparty/libprocess/3rdparty/protobuf-2.5.0&&make&&make install
RUN cd /mesos-0.21.1/build/3rdparty/libprocess/3rdparty/glog-0.3.3&&make install
RUN echo /usr/local/lib >> /etc/ld.so.conf&&ldconfig
RUN cp /mesos-0.21.1/build/3rdparty/libprocess/3rdparty/picojson-*/picojson.h /usr/local/include/

ADD . /matrix
