#!/bin/bash
# Fetch Vault secret
SECRET_KEY=$(vault kv get -field=MY_SECRET secret/myapp)

# Check if the secret is fetched correctly
if [ -z "$SECRET_KEY" ]; then
  echo "Failed to fetch secret from Vault. Using default secret."
  SECRET_KEY="default_secret"
fi

# Export secrets as environment variables
export My_SECRET=$SECRET_KEY

docker-compose up --build -d
