#!/usr/bin/env bash

flux bootstrap github \
	--owner=$GITHUB \
	--repository=deployments \
	--branch=main \
	--path=./clusters/prod \
	--personal
