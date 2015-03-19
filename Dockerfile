# VERSION:	0.1
# AUTHOR:	Xiaotian Wu
# DESCRIPTION:	Image of matrix cpp

FROM centos
MAINTAINER Xiaotian Wu

RUN yum install -y git wget tar vim automake autoconf m4 libtool make gcc gcc-c++
RUN echo -n "[WandiscoSVN]\n\
name=Wandisco SVN Repo\n\
baseurl=http://opensource.wandisco.com/centos/7/svn-1.9/RPMS/x86_64/\n\
enabled=1\n\
gpgcheck=0" > /etc/yum.repos.d/wandisco-svn.repo
#RUN yum groupinstall -y "Development Tools"
#RUN yum install -y python-devel java-1.7.0-openjdk-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-utils-devel
ADD . /matrix
