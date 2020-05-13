#!/bin/bash

set -e

LAB=$1
URL="https://172.16.0.21/api/v0/labs"
OPT="accept: application/json"
BEAR="Authorization: Bearer xxx"

NODES=$(curl -s -k -X GET "$URL/$LAB/nodes" -H "$OPT1" -H "$BEAR" | jq -r '.[]' )

for N in ${NODES}
  do
    mate-terminal --tab -t $N -e "ssh -t thalo@172.16.0.21 open /${1}/${N}/0"

  done
