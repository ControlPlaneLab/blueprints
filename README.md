<div align="center">

# Control Plane Lab — Architecture Blueprints

[![YouTube Channel](https://img.shields.io/badge/YouTube-@ControlPlaneLab-red?style=for-the-badge&logo=youtube)](https://youtube.com/@ControlPlaneLab)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=for-the-badge)](https://opensource.org/licenses/Apache-2.0)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-1.28%2B-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io)

**Reproducible architectural teardowns, Kubernetes manifests, Crossplane compositions, and IDP configurations from the [Control Plane Lab](https://youtube.com/@ControlPlaneLab) channel.**

</div>

---

## 🎯 Repository Purpose

Every video on **Control Plane Lab** is backed by 100% reproducible, production-grade code. This repository houses the manifests, diagrams, IaC templates, and configurations featured in each architectural teardown—tested and sanitized for direct adoption into your own platform engineering stack.

---

## 📂 Episode Blueprint Index

| Episode | Title & Topic | Tech Stack | Status | Directory |
| :--- | :--- | :--- | :--- | :--- |
| **EP01** | **Backstage vs. Port: IDP Shootout** | Backstage, Port, Kind, PostgreSQL | 🟢 Ready | [`/ep01-backstage-vs-port`](./ep01-backstage-vs-port/) |
| **EP02** | **DevOps vs. Platform Engineering** | Internal Developer Portals, GitOps | 🟡 Planned | [`/ep02-platform-engineering`](./ep02-platform-engineering/) |
| **EP03** | **Dynamic Ephemeral Environments** | vcluster, Argo CD, GitHub Actions | 🟡 Planned | [`/ep03-ephemeral-environments`](./ep03-ephemeral-environments/) |
| **EP04** | **Crossplane vs. Terraform Operator** | Crossplane, XRDs, Compositions | 🟡 Planned | [`/ep04-crossplane-vs-terraform`](./ep04-crossplane-vs-terraform/) |
| **EP05** | **Production Guardrails with OPA Rego** | Open Policy Agent, Gatekeeper, CI/CD | 🟡 Planned | [`/ep05-opa-rego-guardrails`](./ep05-opa-rego-guardrails/) |
| **EP06** | **Self-Service Golden Path in 20 Mins** | Backstage Software Templates, Helm | 🟡 Planned | [`/ep06-golden-path-self-service`](./ep06-golden-path-self-service/) |
| **EP07** | **The 4 Failure Modes of IDPs** | Organizational Patterns, Conway's Law | 🟡 Planned | [`/ep07-idp-failure-modes`](./ep07-idp-failure-modes/) |
| **EP08** | **FinOps as Code: Automated Cost Gates** | Infracost, OpenCost, GitHub Actions | 🟡 Planned | [`/ep08-finops-as-code`](./ep08-finops-as-code/) |

---

## 🛠️ Global Prerequisites

To run these blueprints locally, make sure you have installed:

- **Docker Desktop** or **Rancher Desktop** / **Podman**
- **Kubernetes CLI (`kubectl`)**: `v1.28+`
- **Kind (Kubernetes in Docker)**: `v0.20+` (`brew install kind` / `choco install kind`)
- **Helm 3**: `v3.12+`
- **Terraform / OpenTofu**: `v1.6+`

### Quick Cluster Spin-Up:
```bash
# Spin up the shared local development cluster
bash common/cluster-up.sh
```

---

## 📜 Standards & Contributing

- All Kubernetes manifests pass `kubeconform` strict schema validation.
- All Terraform and OpenTofu modules conform to standard `terraform fmt` and `tflint`.
- Zero proprietary secrets or production credentials exist in this repo; all sensitive data is mocked using Kubernetes Secrets / HashiCorp Vault stubs.

---

## ⚖️ License

All code in this repository is licensed under the [Apache 2.0 License](./LICENSE).  
Architectural diagrams and documentation are licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
