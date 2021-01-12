#!/bin/bash
TACOPLAY_HOME=/home/taco/202007_production

ENV="suy-svc"
NS=("common" "endpoints" "metv" "scs" "stb")
ROLES=("admin" "view")

$TACOPLAY_HOME/tacoplay/scripts/rbac/clusterrolebinding_maker.sh $ENV

for ns in ${NS[@]}
do
  $TACOPLAY_HOME/tacoplay/scripts/rbac/role_maker.sh $ns
  for role in ${ROLES[@]}
  do
    $TACOPLAY_HOME/tacoplay/scripts/rbac/rolebinding_maker.sh $ENV $ns $role
  done
done
