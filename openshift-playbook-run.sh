#!/usr/bin/env bash

if [ "$#" -ne 2 ]
then
  echo "Provide parameters: AWS access key [1] and AWS secret [2]"
  exit 1
fi

export ANSIBLE_HOST_KEY_CHECKING=False
export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2

# Strip off the access key params and pass rest to ansible
shift
shift

time ansible-playbook openshift-playbook.yml -i inventory/inventory.cfg "$@"
