lbwl-infra
==========

Bootstraps infrastructure on Hetzner-Cloud to run the small Minecraft server network. Kubernetes will be installed using Rancher Kubernetes Engine (RKE). Servers will be created using Terraform and provisioned with Ansible.
 
Created servers are the following:

| name         | role           | hcloud instance |
|--------------|----------------|-----------------|
| controlplane | `controlplane` | `CX11`          |
| worker       | `worker`       | `CX11`          |
| etcd         | `etcd`         | `CX11`          |


Usage
-----

After cloning the repository install the requirements and initialze Terraform. Note that Terraform and Ansible have to be installed on your system.

**Install requirements and initialize**
```
$ ./install.sh
$ terraform init
```

**Run**

```
$ ./run.sh
```

**Remove the whole cluster**
```
$ ./rm.sh
```
