#!/bin/bash

# Fetch the secret from Vault
VAULT_ADDR='http://vaults.sociumtech.com'
VAULT_TOKEN='hvs.HijkKY1VZ7beBrehhCBCDxeP'
SECRET=$(curl -s --header "X-Vault-Token: $VAULT_TOKEN" \
    $VAULT_ADDR/v1/secret/data/myapp | jq -r '.data.data.MY_SECRET')

# Pass the secret to Docker Compose
export MY_SECRET=$SECRET
docker-compose up --build -d
