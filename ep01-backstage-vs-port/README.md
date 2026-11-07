# Episode 01: Backstage vs. Port — IDP Shootout Blueprint

This blueprint contains the side-by-side architectural implementation for **Episode 1: Backstage vs Port: The Real Platform Engineering Trade-offs**.

---

## 🏗️ Architecture Comparison

```text
[Backstage Model]
YAML in Git (catalog-info.yaml) 
       └──> Polling Ingestion (100s repos) 
              └──> In-Memory / PostgreSQL Cache 
                     └──> TypeScript Custom Plugins UI

[Port Model]
Port API / Exporters (Kube, AWS, Git) 
       └──> Webhook / Event Stream Ingestion 
              └──> Dynamic Knowledge Graph (Real-time) 
                     └──> Low-code UI + RBAC Action Webhooks
```

---

## 📦 What's Inside

1. [`/backstage`](./backstage/):
   - `catalog-info.yaml`: Production-grade multi-entity definition modeling a Microservice Component, its API spec, System affiliation, and Cloud Database Resource.
2. [`/port`](./port/):
   - `blueprint.json`: Dynamic Port Blueprint schema definition mapping relations, properties, and self-service action triggers.

---

## 🚀 Quickstart: Validate Locally

### 1. Validate Backstage Manifest
```bash
# Verify catalog entity format against Backstage schema rules
cat backstage/catalog-info.yaml
```

### 2. Apply Port Blueprint
```bash
# Send blueprint definition to Port API (using demo credentials)
curl -X POST \
  -H "Authorization: Bearer $PORT_TOKEN" \
  -H "Content-Type: application/json" \
  -d @port/blueprint.json \
  https://api.getport.io/v1/blueprints
```
