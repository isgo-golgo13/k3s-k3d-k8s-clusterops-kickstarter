# k3s-k3d-k8s-clusterops-kickstarter
K8s Rancher k3d (k3s) Cluster Ops kick starter repo to start up new k3d k8s clusters and lifecycle administration

## Create k3d cluster (1 server k8s node, 3 worker nodes)

This creates a one server node/three worker node k8s cluster.

```
Sytax:
k3d cluster create <cluster-name> --agents (or -a) <int for # of agents> --servers (or -s) <int for # of server nodes> --verbose (full verbose output)

Actual use:
k3d cluster create k3dkickstart-cluster --agents 3 --servers 1 --verbose
```

## Create k3d cluster (1 server k8s node, NO worker nodes) followed with additional instructions to add worker nodes

This creates a one server node/zero worker node k8s cluster. Additional instructions have to follow to add worker nodes (see the following).

```
k3d cluster create <cluster-name> --verbose
```

**or the explicit equivalent: **

```
Syntax:
k3d cluster create <cluster-name> --servers <int for # of server nodes> --verbose

Actual use:
k3d cluster create k3dkickstart-cluster --servers 1 --verbose
```
