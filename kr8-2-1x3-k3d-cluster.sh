#! /bin/sh

k3d cluster create k3d-cluster-kickstart-1 --agents 3 --servers 1 # cluster 1
k3d cluster create k3d-cluster-kickstart-2 --agents 3 --servers 1 # cluster 2