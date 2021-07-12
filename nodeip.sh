#!/bin/bash
PRIVATE_IP=""
hs=`hostname`
if [[ $hs = "master" ]]
then
  echo "IP: 172.16.1.2"
  PRIVATE_IP="172.16.1.2"
elif [[ $hs = "compute1" ]]
then
  echo "IP: 172.16.1.3"
  PRIVATE_IP="172.16.1.3"
else
  echo "Error: can't detect host name"
  exit 1
fi
echo "KUBELET_EXTRA_ARGS=--node-ip=$PRIVATE_IP" > /etc/default/kubelet
systemctl daemon-reload
systemctl restart kubelet
