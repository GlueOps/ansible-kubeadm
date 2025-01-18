#!/bin/bash
kubectl taint nodes master-node-1 node-role.kubernetes.io/control-plane:NoSchedule-
kubectl taint nodes master-node-2 node-role.kubernetes.io/control-plane:NoSchedule-
kubectl taint nodes master-node-3 node-role.kubernetes.io/control-plane:NoSchedule-

kubectl taint nodes worker-node-1 glueops.dev/role=glueops-platform:NoSchedule
kubectl label nodes worker-node-1 glueops.dev/role=glueops-platform-argocd-app-controller

kubectl taint nodes worker-node-2 glueops.dev/role=glueops-platform:NoSchedule
kubectl label nodes worker-node-2 glueops.dev/role=glueops-platform


kubectl taint nodes worker-node-3 glueops.dev/role=glueops-platform:NoSchedule
kubectl label nodes worker-node-3 glueops.dev/role=glueops-platform

kubectl taint nodes worker-node-4 glueops.dev/role=glueops-platform:NoSchedule
kubectl label nodes worker-node-4 glueops.dev/role=glueops-platform

