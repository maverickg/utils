#!/bin/sh

PROCESS="$1"

while :
do
  RESULT=`ps -p ${PROCESS} -o comm=`

  if [ "${RESULT:-null}" = null ]; then
    break
  else
    echo "-"
    sleep 5
  fi
done

# see https://github.com/travis-ci/travis-build/blob/master/lib/travis/build/templates/header.sh
# for what travis-ci does
