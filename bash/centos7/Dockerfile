FROM centos
MAINTAINER jieshao <1806620741@qq.com>

RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo >> /etc/yum.repos.d/CentOS-Base.repo \
    && curl http://mirrors.aliyun.com/repo/epel-7.repo >> /etc/yum.repos.d/epel7.repo \
    && yum clean all

ENTRYPOINT bash