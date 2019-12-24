#!/bin/bash

terraform apply \
  -var=hcloud_token=$HCLOUD_TOKEN \
  -var=public_key=$HCLOUD_PUBLIC \
  -var=private_key=$HCLOUD_PRIVATE


if [ $? -ne 0 ]; then
    exit 1
fi

ansible-playbook hub_playbook.yml && ansible_playbook flash_playbook.yml

