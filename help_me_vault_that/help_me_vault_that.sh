#!/bin/bash
while read line
do
  RANDOM_PASSWORD=`pwgen 40 -1`
  VARIABLE=`echo "$line" | grep -o -E "vault_[a-zA-Z_0-9-]*"`
  COMMENT=`echo "$line" | grep -E "^#"`
  if [[ ! -z "${VARIABLE}" ]]
  then
    echo "${VARIABLE}: $RANDOM_PASSWORD"
  fi
  if [[ ! -z ${COMMENT} ]]
  then
    echo ""
    echo ${COMMENT}
  fi
done < "${1:-/dev/stdin}"
