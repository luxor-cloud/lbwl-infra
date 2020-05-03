#!/usr/bin/env bash

ansible-playbook -i inventories/prod/hosts.yml roles/kubespray/cluster.yml -b -v
