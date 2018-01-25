FROM ubuntu:trusty

ADD   https://jaist.dl.sourceforge.net/project/zentao/9.8/ZenTaoPMS.9.8.stable.zbox_64.tar.gz  /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]