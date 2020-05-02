#!/usr/bin/env bash

ansible-playbook -i inventory/mycluster/hosts.yml cluster.yml -b -v