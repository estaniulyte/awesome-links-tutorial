#!/bin/bash

tessen -k ${1:-test} kubectl config
POD=$(kubectl get pods | grep mysql | grep -v mysql-admin | head -1 | xargs | cut -d' ' -f1)
echo ${POD}
kubectl port-forward ${POD} 3306:3306