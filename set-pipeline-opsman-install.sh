
FOUNDATION=$1

if [ -z ${FOUNDATION} ]; then
  echo "set-pipeline-opsman-install.sh FOUNDATION"
  exit 0;
fi

fly -t cp sp -p $FOUNDATION -c ./pipeline.yml
