#!/usr/bin/env bash
export ANSIBLE_HOST_KEY_CHECKING=False
if [ $1 = "origin" ]; then
    # Origin
    ansible-playbook -i ~{{amazon_user}}/openshift_inventory.cfg ~{{amazon_user}}/openshift-ansible/playbooks/byo/config.yml
else
    # Enterprise
    ansible-playbook -i ~{{amazon_user}}/openshift_inventory.cfg /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml
fi