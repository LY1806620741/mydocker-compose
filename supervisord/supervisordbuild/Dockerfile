FROM centos:centos8

MAINTAINER jieshao <1806620741@qq.com>

#yum use aliyun mirror and install supervisor
RUN curl http://mirrors.aliyun.com/repo/Centos-8.repo > /etc/yum.repos.d/CentOS-Base.repo     && yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-8.noarch.rpm     && sed -i 's|^#baseurl=https://download.fedoraproject.org/pub|baseurl=https://mirrors.aliyun.com|' /etc/yum.repos.d/epel*     && sed -i 's|^metalink|#metalink|' /etc/yum.repos.d/epel*     && dnf install supervisor -y     && yum clean all
RUN echo -e "[supervisord]\nnodaemon=true\n[inet_http_server]\nport=0.0.0.0:9001 ;web管理后台,视情况开启\nusername=admin\npassword=admin" > /etc/supervisord.conf
ENTRYPOINT ["/usr/bin/supervisord"]
