FROM debian:stretch
MAINTAINER "Matt Hart" <matt@mattface.org>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install python3-yaml python3 git supervisor python3-zmq python3-setproctitle python3-yaml python-yaml python-requests python-keyring
ADD run.sh /run.sh
ADD install_reactobus.sh /install_reactobus.sh
ADD setup_lava_ci.sh /setup_lava_ci.sh
ADD supervisord.conf /supervisord.conf
RUN chmod +x /*.sh
RUN mkdir -p /var/log/supervisor
RUN useradd buildslave --shell /bin/dash && mkdir /home/buildslave && chown buildslave:buildslave /home/buildslave
ADD reactobus-kernel-ci-config.yaml /home/buildslave/reactobus-kernel-ci-config.yaml

EXPOSE 5550
CMD ["/run.sh"]
