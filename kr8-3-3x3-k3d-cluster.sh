#! /bin/sh

k3d cluster create k3d-cluster-kickstart-1 --agents 3 --servers 3 
k3d cluster create k3d-cluster-kickstart-2 --agents 3 --servers 3
k3d cluster create k3d-cluster-kickstart-3 --agents 3 --servers 3