FROM alpine:latest
RUN apk add --update --no-cache openssh python3 py3-pip
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN adduser -h /home/ansible-learning -s /bin/sh -D ansible-learning
RUN echo -n 'ansible-learning:ansible-learning' | chpasswd
COPY entrypoint.sh /
EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]