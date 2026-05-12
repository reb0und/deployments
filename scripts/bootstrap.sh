#!/usr/bin/env bash

flux bootstrap git \
	--url=ssh://git@github.com:reb0und/deployments \
	--branch=main \
	--path=./clusters/prod \
