FROM jieshao/sshserver
MAINTAINER jieshao <1806620741@qq.com>

#安装环境
RUN yum install -y nodejs
RUN npm config set registry https://registry.npm.taobao.org
#更新nodejs
RUN npm install -g n && n latest
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
#设置root密码 用于ssh登录
RUN echo "123" | passwd --stdin root||: