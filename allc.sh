#!/bin/bash

set -e

LAB=$1
USER="username"
IP="x.x.x.x"
JWT="xxxxxxxxxxxxxxxxxxxxxxxxxx"
URL="https://$IP/api/v0/labs"
OPT="accept: application/json"
BEAR="Authorization: Bearer $JWT"

NODES=$(curl -s -k -X GET "$URL/$LAB/nodes" -H "$OPT1" -H "$BEAR" | jq -r '.[]' )

for N in ${NODES}
  do
    mate-terminal --tab -t $N -e "ssh -t $USER@$IP open /${1}/${N}/0"

  done
