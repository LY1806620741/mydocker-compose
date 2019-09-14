FROM centos
MAINTAINER jieshao <1806620741@qq.com>

#快速mirror使用阿里源
RUN rm -rf /etc/yum.repos.d/* \
    && curl http://mirrors.aliyun.com/repo/Centos-7.repo >> /etc/yum.repos.d/CentOS-Base.repo \
    && curl http://mirrors.aliyun.com/repo/epel-7.repo >> /etc/yum.repos.d/epel7.repo

#安装最新pip并切换为清华pipy源，清理yum
RUN yum install python-pip -y \
    &&yum clean all \
    &&pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U pip \
    &&pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

#安装jupyter
RUN pip install jupyter

#配置普通用户权限

#运行
ENTRYPOINT jupyter-notebook --allow-root
