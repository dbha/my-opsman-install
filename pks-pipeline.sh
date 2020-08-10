#!/bin/bash

if [ -z $1 ] || [ -z $2 ] ; then
    echo "!!! please provide parameters"
	echo "${BASH_SOURCE[0]} [fly-target] [foundation]"
	exit
fi
WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FLY_TARGET=$1
FOUNDATION=$2
PIPELINE_NAME="${FOUNDATION}-pipeline"
PIPELINE_YAML="pipeline.yml"
WORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

fly -t ${FLY_TARGET} sp -p "${PIPELINE_NAME}" \
-c $WORK_DIR/${PIPELINE_YAML} \
-v foundation=${FOUNDATION} \
-v pipeline_name="${PIPELINE_NAME}"  \
-l $WORK_DIR/foundations/${FOUNDATION}/pipeline-vars/params.yml
