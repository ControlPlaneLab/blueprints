#!/usr/bin/env bash
set -euo pipefail

CLUSTER_NAME="cpl-lab"

echo "[Control Plane Lab] Checking prerequisites..."
command -v docker >/dev/null 2>&1 || { echo "Docker is required but not installed. Aborting." >&2; exit 1; }
command -v kind >/dev/null 2>&1 || { echo "Kind is required but not installed. Aborting." >&2; exit 1; }
command -v kubectl >/dev/null 2>&1 || { echo "kubectl is required but not installed. Aborting." >&2; exit 1; }

if kind get clusters | grep -q "^${CLUSTER_NAME}$"; then
  echo "[Control Plane Lab] Cluster '${CLUSTER_NAME}' already exists. Switching context..."
  kubectl config use-context "kind-${CLUSTER_NAME}"
  exit 0
fi

echo "[Control Plane Lab] Creating 3-node Kind cluster '${CLUSTER_NAME}' with port mappings..."

cat <<EOF | kind create cluster --name "${CLUSTER_NAME}" --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
- role: worker
- role: worker
EOF

echo "[Control Plane Lab] Cluster '${CLUSTER_NAME}' is ready!"
kubectl cluster-info --context "kind-${CLUSTER_NAME}"
