#!/bin/bash

FOUNDATION=$1
PRODUCT_NAME=$2
PIPELINE_YAML="install-opsman.yml"
WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z ${FOUNDATION} ] || [ -z ${PRODUCT_NAME} ]  ; then
  echo "set-pipeline-opsman-install.sh FOUNDATION PRODUCT_NAME"
  exit 0;
fi

fly -t cp sp -p "${PRODUCT_NAME}-install-opsman" \
-c $WORK_DIR/${PIPELINE_YAML} \
-v foundation=${FOUNDATION} \
-v product-name=${PRODUCT_NAME} \
-l $WORK_DIR/foundations/${FOUNDATION}/pipeline-vars/params.yml
