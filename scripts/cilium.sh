!#/usr/bin/env sh
helm repo add cilium https://helm.cilium.io/
helm repo update
helm install cilium cilium/cilium \
	--namespace=kube-system \
	--version=1.19.3 \
	--set kubeProxyReplacement=true \
	--set routingMode=native \
	--set operator.replicas=1
