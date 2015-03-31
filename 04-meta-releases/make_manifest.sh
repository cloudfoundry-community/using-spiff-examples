#!/bin/bash

set -x
dir="04-meta-releases"

infra=$1; shift
if [[ "${infra}" != "aws" && "${infra}" != "bosh-lite" ]]; then
  echo "USAGE: make_manifest.sh aws|bosh-lite"
  exit 1
fi

cd $dir
spiff merge cf-deployment.yml cf-infra-$infra.yml sandbox-stub.yml

cd ..
