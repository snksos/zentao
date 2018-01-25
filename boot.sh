#!/bin/bash
set -x

dir=`ls /opt/zbox`

if [ -z "${dir}" ];then
  cd /tmp
  tar -zxvf  ZenTaoPMS.9.8.stable.zbox_64.tar.gz -C   /opt
fi

/opt/zbox/zbox start && tail -f /dev/null