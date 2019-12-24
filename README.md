lbwl-infra
==========

Bootstraps infrastructure on Hetzner-Cloud to run the small Minecraft server network. For now there will only be one game server and one lobby which are defined in `config/bungee_config.yml.template` to make quick progress. Future plan is to create a dynamic server infrastructue using Kubernetes.

**Install requirements**
```
$ ./install.sh

```

**Run**

```
$ ./run.sh
```

Note that Terraform and Ansible have to be installed on your system.
