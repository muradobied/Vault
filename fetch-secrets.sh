#!/bin/bash

# Fetch the secret from Vault
VAULT_ADDR='http://vaultstest.sociumtech.com'
VAULT_TOKEN='hvs.MnPvLfGD2x5pumRxf4rSF9WG'
SECRET_MESSAGE=$(curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request GET \
    $VAULT_ADDR/v1/secret/data/app | jq -r .data.data.SECRET_MESSAGE)

# Export the secret as an environment variable
export SECRET_MESSAGE=$SECRET_MESSAGE

# Run Docker Compose
docker-compose up --build
