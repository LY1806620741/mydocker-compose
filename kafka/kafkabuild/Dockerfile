FROM centos:centos8

MAINTAINER jieshao <1806620741@qq.com>

#yum use aliyun mirror and install supervisor
RUN curl http://mirrors.aliyun.com/repo/Centos-8.repo >> /etc/yum.repos.d/CentOS-Base.repo \
    && yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-8.noarch.rpm \
    && sed -i 's|^#baseurl=https://download.fedoraproject.org/pub|baseurl=https://mirrors.aliyun.com|' /etc/yum.repos.d/epel* \
    && sed -i 's|^metalink|#metalink|' /etc/yum.repos.d/epel* \
    && dnf install supervisor java-latest-openjdk -y \
    && yum clean all
#download kafka and tar
RUN curl https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.5.0/kafka_2.13-2.5.0.tgz >> /opt/kafka_2.13-2.5.0.tgz \
    && tar -xzf /opt/kafka_2.13-2.5.0.tgz -C /usr/local \
    && rm -f opt/kafka_2.13-2.5.0.tgz
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]
