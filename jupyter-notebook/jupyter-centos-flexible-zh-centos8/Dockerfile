FROM centos:8
MAINTAINER jieshao <1806620741@qq.com>

#快速mirror使用阿里源
RUN cd /etc/yum.repos.d && \
sed -i 's/mirrorlist=/#mirrorlist=/g' CentOS-Base.repo CentOS-AppStream.repo CentOS-Extras.repo && \
sed -i 's/#baseurl=/baseurl=/g' CentOS-Base.repo CentOS-AppStream.repo CentOS-Extras.repo && \
sed -i 's/http:\/\/mirror.centos.org/https:\/\/mirrors.aliyun.com/g' CentOS-Base.repo CentOS-AppStream.repo CentOS-Extras.repo

#安装py36和最新pip并切换为清华pipy源，清理yum
RUN yum install -y python36 python36-devel sudo langpacks-zh_CN\
    &&yum clean all \
    &&pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -U pip \
    &&pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

#安装jupyter
RUN pip install jupyter

#配置普通用户权限
ARG NB_USER="jupyter"
ARG NB_UID="1000"
ARG NB_GID="100"
RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER \
    && echo $NB_USER" ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

#设置中文字符集
ENV LC_ALL "zh_CN.UTF-8"

#暴露端口
EXPOSE 8888

#运行使用用户根目录作为工作盘
USER $NB_USER
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
CMD jupyter-notebook --ip=0.0.0.0 --notebook-dir="/home/`whoami`"
