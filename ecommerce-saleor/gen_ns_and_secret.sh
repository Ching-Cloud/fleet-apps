#!/bin/bash

kubectl create namespace saleor
kubectl create secret generic saleor-secret -n saleor \
  --from-literal=POSTGRES_PASSWORD=$(openssl rand -hex 8) \
  --from-literal=SECRET_KEY=$(openssl rand -hex 16)