#!/bin/bash

ansible-galaxy install geerlingguy.docker

wget https://github.com/adammck/terraform-inventory/releases/download/v0.9/terraform-inventory_0.9_linux_arm.zip

unzip terraform-inventory_0.9_linux_arm.zip
rm terraform-inventory_0.9_linux_arm.zip
mv terraform-inventory /usr/local/bin
