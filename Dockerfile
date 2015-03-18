# VERSION:	0.1
# AUTHOR:	Xiaotian Wu
# DESCRIPTION:	Image of matrix cpp

FROM centos
MAINTAINER Xiaotian Wu

RUN yum install -y git, wget, tar, vim
RUN rpm -Uvh http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm
RUN yum install -y automake, autoconf, m4, libtool, make

ADD . /matrix
