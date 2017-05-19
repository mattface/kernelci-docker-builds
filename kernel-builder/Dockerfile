FROM ubuntu:xenial
MAINTAINER "Matt Hart" <matt@mattface.org>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server git expect cron anacron supervisor ansible
RUN wget http://mirrors.kernel.org/ubuntu/pool/universe/a/ansible/ansible_2.2.1.0-1_all.deb -O /root/ansible.deb
RUN dpkg -i /root/ansible.deb
RUN apt-get -f -y install
ADD sanity_check.sh /sanity_check.sh
ADD set_buildslave_pw.sh /set_buildslave_pw.sh
ADD run.sh /run.sh
ADD expect_pw.sh /expect_pw.sh
ADD ansible-myself.sh /ansible-myself.sh
ADD supervisord.conf /supervisord.conf
RUN chmod +x /*.sh
RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config
RUN mkdir -p /var/log/supervisor

EXPOSE 22
CMD ["/run.sh"]
