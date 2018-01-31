FROM ubuntu:trusty

COPY ./zbox.9.8 /opt/zbox/

COPY ./boot.sh /usr/local/bin/boot.sh

RUN chmod +x /usr/local/bin/boot.sh

CMD ['/opt/zbox/zbox', 'start']

ENTRYPOINT  ["boot.sh"]
