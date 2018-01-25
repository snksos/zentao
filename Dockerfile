FROM ubuntu:trusty

COPY ./ZenTaoPMS.9.8.stable.zbox_64 /opt/zbox/

CMD ['/opt/zbox/zbox', 'start']

CMD ['cd', '/opt/zbox/auth/']
CMD ['/opt/zbox/auth/adduser.sh']
CMD ['set', 'Account', 'root']
CMD ['set', 'Password', '123456']

#ENTRYPOINT  ["/usr/local/boot.sh"]
