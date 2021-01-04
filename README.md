# k3s-k3d-k8s-clusterops-kickstarter
K8s Rancher k3d (k3s) Cluster Ops kick starter repo to start up new k3d k8s clusters and lifecycle administration

#### Create k3d cluster (1 server k8s node, 3 worker nodes)

This creates a one server node/three worker node k8s cluster.

```
Sytax:
k3d cluster create <cluster-name> --agents (or -a) <int for # of agents> --servers (or -s) <int for # of server nodes> --verbose (full verbose output)

Actual use:
k3d cluster create k3dkickstart-cluster --agents 3 --servers 1 --verbose
```

#### Create k3d cluster (1 server k8s node, NO worker nodes) followed with additional instructions to add worker nodes

This creates a one server node/zero worker node k8s cluster. Additional instructions have to follow to add worker nodes (see the following).

```
k3d cluster create <cluster-name> --verbose
```

**or the explicit equivalent**

```
Syntax:
k3d cluster create <cluster-name> --servers <int for # of server nodes> --verbose

Actual use:
k3d cluster create k3dkickstart-cluster --servers 1 --verbose
```


#### Check K8s Context Config

```
cat $HOME/.kube/config

```

This will show the following (for single server node k8s cluster):

```
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURLakNDQWhLZ0F3SUJBZ0lRQldUQi91YjNWdXFyWlp5NXVCRGhqekFOQmdrcWhraUc5dzBCQVFzRkFEQXYKTVMwd0t3WURWUVFERXlRek5UQmpObVJqTXkxbVpUZG1MVFF5WXpNdFlqRXdaQzFsTlRkaU56bGpNR1l6WVRNdwpIaGNOTWpBeE1qQTVNVFl5TlRJeVdoY05NalV4TWpBNE1UY3lOVEl5V2pBdk1TMHdLd1lEVlFRREV5UXpOVEJqCk5tUmpNeTFtWlRkbUxUUXlZek10WWpFd1pDMWxOVGRpTnpsak1HWXpZVE13Z2dFaU1BMEdDU3FHU0liM0RRRUIKQVFVQUE0SUJEd0F3Z2dFS0FvSUJBUURWenY1cmx3SG4wcFJHOHl1SVlNZzlreFVudlN1L0E5cGNFLzFvSEUvTwoveCtrMFkyMVY1aUtWeVl3dFB2R1Yzb2djTGFtditKSEZUNElDR25DdStRMmdCZjMzeVBpeEpuNjIyOWpjT2pZCmhIM293S2FWVWNSMFl4VllvL3VOR3hDNXlySzBOOU1tNnBrMVpzb0I0ZnpYMVdqaEFaekhzc0g5ZCtiRWhRWXIKV0ZHQ2dQeU8xMnJDYlpBR01aay9yWkMxMkNPQjhRcnJvUU8remxuOTY1bHM1VkxvR3IrKzhuRm9xeVk4VnpVNwp6N0pRbitWRy9ZMW1DaFZkcGkyNGFjZFN2K0FoaUNtRE1ZVzQ1US9BbG5aRDA5ZkNaQTc4ejdvQ3FTVlUxVXVwCmJYdVg0cllibm56ZWFvNmM0aFIyYVdnMEU3TS9wRnZNWURNa1J5SzgwcllyQWdNQkFBR2pRakJBTUE0R0ExVWQKRHdFQi93UUVBd0lDQkRBUEJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRdlhSM0F4NDBQeWpDSgpyVFJST3dGL2szZUxnREFOQmdrcWhraUc5dzBCQVFzRkFBT0NBUUVBdko0SVA1R3duMXBvT001NzlXektxbEVLCnpUNVUrT05vWCt2YUMxbmZLcmVaK1JjR2dKMDg3b1Y0VklJdnI2VmFhdHhhVnVDOTRsTStPcnlBL1dpMnRKVEkKT0QvMUlhd25KdFgreVZmUFRxY2QrVTByRW1kamtiT1FjQmZvbkpvQ3diTDdvemJ3cXlvNEJMU2JFMno3bjVnMwpYT05aVmoxMCtYeVhlV2Jzb2RpOTZYUnNTSUlGZlFjcFFtNUxVRWdkbGNMT3A5Mno5MFNPSUlRUUhNYWY5VnpMClFjRDRMZUxRMFhnT2QvS2FKN1lna2cwNU1IaFlWS1RvYktFb3c0c0JKaHprTHZGeC9OVTg0ZFZ1VHNOQTErUE8KbVA0Qm1HNUNYdXpIWkZ3TWRzMlFCdGpSRjNWbW9NWVBEWjZyeEhSbzYvZ0R3UFZxRWZrR2didnhZejBJZ2c9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
    server: https://35.237.130.161
  name: gke_avalanche-dev_us-east1_av-gc-develop
- cluster:
    certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTURrM056RTRNRGd3SGhjTk1qRXdNVEEwTVRRMU1EQTRXaGNOTXpFd01UQXlNVFExTURBNApXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTURrM056RTRNRGd3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFSb0VWR21KN2UvbFZIakVBWHZuWWFwcjYyM3AvSUhTU0RDVUJ2N015R0MKT0FRWVQxQXVnb2s3Q2VxV2w0YzJlTEVRUTVOOU1hZlBRYlNkQWl1V0o4RTdvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVWhmampaNGdaN0RsSmx0SXFIWktHCm1say8wdGt3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnRXR2dUo2QUJzR212aG9IVGx5ZnlONFQ1TUdlNlY1WncKelJQVGVGak9HSndDSUE0UnYvVXE1THYvV29IcUxzaUdteVE3ekdwRFNQK09oVGpNcnYwQVNoaVgKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
    server: https://0.0.0.0:57588
  name: k3d-k3d-kickstart-cluster
contexts:
- context:
    cluster: gke_avalanche-dev_us-east1_av-gc-develop
    user: gke_avalanche-dev_us-east1_av-gc-develop
  name: gke_avalanche-dev_us-east1_av-gc-develop
- context:
    cluster: k3d-k3d-kickstart-cluster
    user: admin@k3d-k3d-kickstart-cluster
  name: k3d-k3d-kickstart-cluster
current-context: k3d-k3d-kickstart-cluster
kind: Config
preferences: {}
users:
- name: admin@k3d-k3d-kickstart-cluster
  user:
    client-certificate-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJrRENDQVRlZ0F3SUJBZ0lJUG8wMTc3RWpjSGt3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxXTnNhV1Z1ZEMxallVQXhOakE1TnpjeE9EQTRNQjRYRFRJeE1ERXdOREUwTlRBd09Gb1hEVEl5TURFdwpOREUwTlRBd09Gb3dNREVYTUJVR0ExVUVDaE1PYzNsemRHVnRPbTFoYzNSbGNuTXhGVEFUQmdOVkJBTVRESE41CmMzUmxiVHBoWkcxcGJqQlpNQk1HQnlxR1NNNDlBZ0VHQ0NxR1NNNDlBd0VIQTBJQUJETkx3bytYMGR5MnN5V0EKdkwxU1I5Q0NnU2g2YWtqc0h5eEMxUDJvZGtqZWFkSlA1bExHOTlTUmJNdDB2REUzdmttM2w2UlNxTTJtQkhHTgpka21JOTlHalNEQkdNQTRHQTFVZER3RUIvd1FFQXdJRm9EQVRCZ05WSFNVRUREQUtCZ2dyQmdFRkJRY0RBakFmCkJnTlZIU01FR0RBV2dCUmtRVUcwNzZXa3luaDcrWExkZ2VLeWtUWjkwREFLQmdncWhrak9QUVFEQWdOSEFEQkUKQWlCRVJuNTF3cTJPSHN5ZE9iRXZJTGRzSDBha2ZEY3RZS3Mvc3Q5TXEzaWIvd0lnT2JydnFHKzQwRUtGNkFhUwpvdVdDakE2T0xheTJFNUJFL0FEbS9WWXkrdDA9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0KLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdFkyeHAKWlc1MExXTmhRREUyTURrM056RTRNRGd3SGhjTk1qRXdNVEEwTVRRMU1EQTRXaGNOTXpFd01UQXlNVFExTURBNApXakFqTVNFd0h3WURWUVFEREJock0zTXRZMnhwWlc1MExXTmhRREUyTURrM056RTRNRGd3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUVndsZ2VzS3ZWVk56d09QUGFMNlhrU2hSMUdCVmpUWnQ3cE9JVGlYQnAKS1lMZEJQUW1FT2ZRYm5WWUI3clBBWEh0VGIxNzBTdlpnYkpERmNFSFFRSHZvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVVpFRkJ0TytscE1wNGUvbHkzWUhpCnNwRTJmZEF3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUloQUlCSDI5aUdJbUZqS1YrNE45dVdielY5UmVsc3p5S00KNGtBTDFNS0NrbkNFQWlBNmExVStnRXpPbW1vc2NCdjNSbmZQbDJ6U3hjQXY3ek02VFpIaUJIblZ6QT09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
    client-key-data: LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSVBJbzNDWlZ0WTlVUDk2T1ltZTdsY2p2Z29UMGVOdXdjT3VEYzFSY1J1Q3RvQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFTTB2Q2o1ZlIzTGF6SllDOHZWSkgwSUtCS0hwcVNPd2ZMRUxVL2FoMlNONXAway9tVXNiMwoxSkZzeTNTOE1UZStTYmVYcEZLb3phWUVjWTEyU1lqMzBRPT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo=
- name: gke_avalanche-dev_us-east1_av-gc-develop
  user:
    auth-provider:
      config:
        access-token: ya29.a0AfH6SMABI774zOlYri4gqTuOKewFtzxlBi58ZY7wDjeLbRDWcXtCjRv4RteLyAgGmdYP-URzku6OzPWN8NIh_a2IJ7IMev16o0rZaVgm_nOaYbCK0OLGB3SIXNJMJ8WTCVp4o1xNqPZ9cUlqM1sZmaKOpRLW0NG9VmtwcCgeYHPYyQ-JoznU
        cmd-args: config config-helper --format=json
        cmd-path: /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/gcloud
        expiry: "2021-01-04T15:49:09Z"
        expiry-key: '{.credential.token_expiry}'
        token-key: '{.credential.access_token}'
      name: gcp

```


#### To List All k3d k8s Clusters

```
k3d cluster list

```

After executing `k3d cluster create k3dkickstart-cluster --servers 1` or `k3d cluster create k3dkickstart-cluster` the following output is shown:

```
NAME                    SERVERS   AGENTS   LOADBALANCER
k3d-kickstart-cluster   1/1       0/0      true
```


#### To Delete the k8s Cluster (Previously created k8s cluster 'k3d-kickstart-cluster')

```
Syntax:
k3d cluster delete <cluster-name>

Actual Use:
k3d cluster delete k3d-kickstart-cluster
```

This will delete all k8s cluster config (context) **IF** and **ONLY IF** this was the only k8s cluster created using `k3d cluster create`. If there were other k8s clusters created **ONLY** the context of the deleted cluster will get deleted.


#### To List All k3d k8s Nodes

At this point our k8s cluster consists of 1 server node and 0 worker nodes. To get the current showing of the cluster nodes run the following:

```
kubectl get nodes
```

This will output:

```
NAME                                 STATUS   ROLES                  AGE   VERSION
k3d-k3d-kickstart-cluster-server-0   Ready    control-plane,master   40m   v1.20.0+k3s2
```


#### To Add k8s Server Nodes or k8s Worker Nodes 

To add `N` worker nodes to the current single node cluster issue the following syntax: **(Create 3 worker nodes)**

```
Syntax:
k3d node create <node-name> --cluster <cluster-name-to-associate-new-node(s)> --replicas <int for # of replicas> --role agent (default is 'agent') --wait 

Actual use:
k3d node create worker-node --cluster k3d-k3d-kickstart-cluster --replicas 3 --role agent --wait

or

Since the default '--role' value is 'agent' the following is a shorter instruction to k3d:

k3d node create worker-node --cluster k3d-k3d-kickstart-cluster --replicas 3 --wait

```

To add `N` server nodes to the current single node cluster issue the following syntax: **(Create 2 additional server nodes)**

```
k3d node create <node-name> --cluster <cluster-name-to-associate-new-node(s)> --replicas <int for # of replicas> --role server --wait 

Actual use:
k3d node create server-node --cluster k3d-k3d-kickstart-cluster --replicas 2 --role server --wait
```



