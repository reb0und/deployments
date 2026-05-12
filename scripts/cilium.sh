#!/usr/bin/env sh
helm repo add cilium https://helm.cilium.io/
helm repo update
helm install cilium cilium/cilium \
	--namespace=kube-system \
	--version=1.19.3 \
	--set k8sServiceHost=172.20.0.2 \
	--set k8sServicePort=6443 \
	--set kubeProxyReplacement=true \
	--set operator.replicas=1 \
	--set nodePort.enabled=true \
	--set socketLB.hostNamespaceOnly=true \
	--set enableIPv4Masquerade=true \
	--set bpf.masquerade=false \
	--set ipv4NativeRoutingCIDR=10.0.0.0/24 \
