lbwl-infra
==========

Bootstraps infrastructure on Hetzner-Cloud to run the small Minecraft server network. Kubernetes will be installed using Rancher Kubernetes Engine (RKE). Servers will be created using Terraform and provisioned with Ansible. There is a RKE plugin for Terraform, but we won't use it, because using Ansible seems like the more stable variant.
 
Created servers are the following:

| name         | role           | hcloud instance |
|--------------|----------------|-----------------|
| controlplane | `controlplane` | `CX11`          |
| worker       | `worker`       | `CX11`          |
| etcd         | `etcd`         | `CX11`          |


**Install requirements**
```
$ ./install.sh
```

**Run**

```
$ ./run.sh
```

Note that Terraform and Ansible have to be installed on your system.
