#! /bin/sh

k3d cluster delete k3d-cluster-kickstart-1 # cluster 1
sleep 10
k3d cluster delete k3d-cluster-kickstart-2 # cluster 2