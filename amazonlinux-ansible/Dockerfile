FROM amazonlinux
RUN yum update -y
RUN amazon-linux-extras install ansible2 -y
RUN yum install jq net-tools iputils openssh-server python37 python37-pip -y
WORKDIR /playbooks
ADD playbooks ./
