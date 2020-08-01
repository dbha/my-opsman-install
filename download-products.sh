#!/bin/bash

if [ -z $1 ]  ; then
    echo "!!! please provide parameters"
	echo "${BASH_SOURCE[0]} [foundation]"
	exit
fi
FLY_TARGET=cp
FOUNDATION=$1

fly -t ${FLY_TARGET} sp -p "${FOUNDATION}-download-products" \
-c ./download-products.yml \
-v foundation=${FOUNDATION} \
-l ./foundations/${FOUNDATION}/pipeline-vars/params.yml
