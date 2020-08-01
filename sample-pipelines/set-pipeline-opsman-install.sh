#!/bin/bash

FOUNDATION=$1
PIPELINE_NAME=$2
PIPELINE_YAML="install-opsman.yml"
WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z ${FOUNDATION} ] || [ -z ${PIPELINE_NAME} ]  ; then
  echo "set-pipeline-opsman-install.sh FOUNDATION PIPELINE_NAME"
  exit 0;
fi

fly -t cp sp -p "${PIPELINE_NAME}" \
-c $WORK_DIR/${PIPELINE_YAML} \
-v foundation=${FOUNDATION} \
-v pipeline_name="${PIPELINE_NAME}" \
-l $WORK_DIR/foundations/${FOUNDATION}/pipeline-vars/params.yml