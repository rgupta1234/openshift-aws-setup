# openshift-aws-setup

## Overview

This repo is a set of Ansible automation scripts that:
 - provisions AWS infrastructure
 - deploys Openshift (Origin or Container Platform)

AWS related configuration can be customised by modifying ```vars/aws-config.yaml```

The OpenShift inventory can be customized by modifying ```roles/openshift-install/files/openshift_inventory.cfg```

## Prerequisites

 - AWS credentials: access key & secret --> http://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html
 - Ansible installed --> http://docs.ansible.com/ansible/intro_installation.html

## OpenShift Container Platform Prerequisites

Installing OpenShift Container Platform (OCP) requires a Red Hat subscription and you must provider your Red Hat credentials
and the name of the pool in the file ```vars/secrets-config.yml```. Here is an example version:

```
rhsm_username: "me@something.com"
rhsm_password: "mypassword"
rhsm_pool: "OpenShift Pool"
```

Note the above is just an example, please update all variables including the pool name which is correct for your situation.

## Run

Command ```./openshift-playbook-run.sh <AWS_ACCESS_KEY_ID> <AWS_SECRET_ACCESS_KEY>``` will execute the Ansible playbook
with a set of roles which will provision AWS infrastructure and install Openshift on top of that.

## Network topology

![Network Diagram](./docs/network-topology-openshift.jpg)

## References

 - https://www.codeproject.com/Articles/1168687/Get-up-and-running-with-OpenShift-on-AWS
 - https://docs.openshift.org/latest/welcome/index.html
 