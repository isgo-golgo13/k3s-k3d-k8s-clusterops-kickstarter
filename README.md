# k3s-k3d-k8s-clusterops-kickstarter
K8s Rancher k3d (k3s) Cluster Ops kick starter repo to start up new k3d k8s clusters and lifecycle administration

## Create k3d cluster (1 server k8s node, 3 worker nodes)

`1`. This creates a one server node/three worker node k8s cluster

```
k3d cluster create k3dkickstart-cluster --agents 3 --servers 1 --verbose
```

