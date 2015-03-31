#!/bin/bash

dir="02-missing-fields"
spiff merge $dir/cf-deployment.yml $dir/bad-stub.yml

cd $DIR/..
