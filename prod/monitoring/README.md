Monitoring
=========

Contains manifests for deploying and managing monitoring infrastructure for Kubernetes.
Currently we use the following technology:

* Loki
* Grafana
* Prometheus
* Promtail

For deployment and configuration of these services [this Helm chart](https://github.com/grafana/loki/tree/master/production/helm/loki-stack) is used.
All of those services will reside in their own "monitoring" namspace inside Kubernetes.
