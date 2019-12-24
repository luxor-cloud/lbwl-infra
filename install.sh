#!/bin/bash

ansible-galaxy install geerlingguy.docker
wget https://github.com/adammck/terraform-inventory/releases/download/v0.9/terraform-inventory_0.9_linux_amd64.zip
unzip terraform-inventory_0.9_linux_amd64.zip
rm terraform-inventory_0.9_linux_amd64.zip
mv terraform-inventory /usr/local/bin
