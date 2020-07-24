#!/bin/bash
# update chart
# Use current namespace

REPOPOD=$(kubectl get pods -o=name | grep multiclusterhub-repo | sed "s/^.\{4\}//")
echo "REPO: $REPOPOD"
NAMESPACE=$(echo $(oc project) | cut -d " " -f 3)
NAMESPACE=${NAMESPACE//\"}

for chart in $PWD/multiclusterhub/charts/*.tgz; do
    echo "chart: $(basename $chart)"
    kubectl cp $chart ${NAMESPACE}/${REPOPOD}:multiclusterhub/charts/
done
kubectl delete pod $(kubectl get pods -o=name | grep standalone-subscription | sed "s/^.\{4\}//")