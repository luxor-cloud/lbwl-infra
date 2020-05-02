#!/bin/bash

terraform apply \
  -var=hcloud_token=$HCLOUD_TOKEN \
  -var=public_key=$HCLOUD_PUBLIC \
  -var=private_key=$HCLOUD_PRIVATE


if [ $? -ne 0 ]; then
    exit 1
fi

export TF_STATE=.
