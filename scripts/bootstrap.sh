#!/usr/bin/env bash

flux bootstrap git \
	--url=ssh://git@github.com/reb0und/deployments.git \
	--branch=main \
	--private-key-file=keys/flux \
	--path=./clusters/prod \
