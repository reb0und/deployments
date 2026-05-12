#!/usr/bin/env bash
flux create source oci cilium \
	--url=oci://quay.io/cilium/charts/cilium \
	--tag=1.19.3 \
	--interval=1m \
	--export > clusters/prod/sources/cilium.yaml
