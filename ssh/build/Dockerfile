FROM jieshao/centos_zh:fast
MAINTAINER jieshao <1806620741@qq.com>

#安装ssh
RUN yum install -y openssh-server \
    yum clean all
#关闭无需设置
RUN sed -i "s/UsePAM.*/#UsePAM no/g" /etc/ssh/sshd_config \
    && sed -i "s/HostKey \/etc\/ssh\/ssh_host_ecdsa_key/#HostKey \/etc\/ssh\/ssh_host_ecdsa_key/g" /etc/ssh/sshd_config \
    && sed -i "s/HostKey \/etc\/ssh\/ssh_host_ed25519_key/#HostKey \/etc\/ssh\/ssh_host_ed25519_key/g" /etc/ssh/sshd_config \
#生成私钥（不使用，部署脚本里生成更好）
#    && ssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' \
#不使用hostkey
    # && sed -i "s/HostKey \/etc\/ssh\/ssh_host_rsa_key/#HostKey \/etc\/ssh\/ssh_host_rsa_key/g" /etc/ssh/sshd_config \
    && echo -e "#!/bin/bash\nssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N ''\n/usr/sbin/sshd -D" >> entrypoint.sh \    
#设置root密码
    # && echo "123" | passwd --stdin root||: \
    # && mkdir /root/.ssh && echo -e "【你的公钥内容id_rsa.pub】\n" >> /root/.ssh/authorized_keys \
    && chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh 