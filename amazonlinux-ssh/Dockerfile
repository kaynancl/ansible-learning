FROM amazonlinux
RUN yum update -y
RUN yum install net-tools -y

RUN yum install -y openssh-server \
  && sed -i s/PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && sed -i s/PasswordAuthentication.*/PasswordAuthentication\ yes/ /etc/ssh/sshd_config \
  && sed -i s/#PermitUserEnvironment.*/PermitUserEnvironment\ yes/ /etc/ssh/sshd_config

RUN install -d /root/.ssh -m 0700

COPY entrypoint.sh /entrypoint.sh
COPY environment /root/.ssh/environment

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]