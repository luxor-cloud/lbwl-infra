#!/usr/bin/env bash

# Ansible deps
sudo ansible-galaxy install geerlingguy.docker

# Terraform deps
wget https://github.com/adammck/terraform-inventory/releases/download/v0.9/terraform-inventory_0.9_linux_amd64.zip -P /tmp
unzip /tmp/terraform-inventory_0.9_linux_amd64.zip -d /tmp
rm /tmp/terraform-inventory_0.9_linux_amd64.zip
sudo mv /tmp/terraform-inventory /usr/local/bin/terraform-inventory
sudo chmod +x /usr/local/bin/terraform-inventory

# RKE
wget https://github.com/rancher/rke/releases/download/v1.0.0/rke_linux-amd64 -P /tmp
sudo mv /tmp/rke_linux-amd64 /usr/local/bin/rke
sudo chmod +x /usr/local/bin/rke