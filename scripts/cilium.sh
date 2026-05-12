#!/usr/bin/env sh
helm repo add cilium https://helm.cilium.io/
helm repo update
helm install cilium cilium/cilium \
	--namespace=kube-system \
	--version=1.19.3 \
	--set k8sServiceHost=172.20.0.2 \
	--set k8sServicePort=6443 \
	--set kubeProxyReplacement=true \
	--set routingMode=native \
	--set operator.replicas=1
