#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then
  echo "please provide parameters"
  echo "${BASH_SOURCE[0]} [fly-target] [product-name]"
  exit
fi

FLY_TARGET=$1
PRODUCT_NAME=$2

fly -t $FLY_TARGET sp -p "${FOUNDATION}-install-opsman" \
-c ./install-opsman.yml \
-l ../common-params.yml \
-v foundation=${FLY_TARGET} \
