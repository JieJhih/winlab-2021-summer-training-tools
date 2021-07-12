#!/bin/bash
kubectl create secret generic docker-basic --from-file=.dockerconfigjson=/home/vagrant/.docker/config.json --type=kubernetes.io/dockerconfigjson
