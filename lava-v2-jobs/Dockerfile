FROM debian:stretch
MAINTAINER "Matt Hart" <matt@mattface.org>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server python-jinja2 python-yaml python-requests python-keyring python2.7 expect openjdk-8-jre-headless git supervisor
ADD set_buildslave_pw.sh /set_buildslave_pw.sh
ADD run.sh /run.sh
ADD expect_pw.sh /expect_pw.sh
ADD supervisord.conf /supervisord.conf
RUN chmod +x /*.sh
RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config
RUN mkdir -p /var/log/supervisor
RUN useradd buildslave --shell /bin/dash && mkdir /home/buildslave && chown buildslave:buildslave /home/buildslave

EXPOSE 22
CMD ["/run.sh"]
