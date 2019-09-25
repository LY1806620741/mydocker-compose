FROM centos
MAINTAINER jieshao <1806620741@qq.com>

RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo >> /etc/yum.repos.d/CentOS-Base.repo \
    && curl http://mirrors.aliyun.com/repo/epel-7.repo >> /etc/yum.repos.d/epel7.repo \
    && yum install -y kde-l10n-Chinese \
    && yum clean all

#设置中文字符集
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL "zh_CN.UTF-8"

ENTRYPOINT bash