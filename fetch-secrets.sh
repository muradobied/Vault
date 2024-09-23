#!/bin/bash

# Fetch Vault secret
SECRET_KEY=$(vault kv get -field=SECRET_KEY secret/myapp)

# Check if the secret is fetched correctly
if [ -z "$SECRET_KEY" ]; then
  echo "Failed to fetch secret from Vault. Using default secret."
  SECRET_KEY="default_secret"
fi

# Export secret as an environment variable
export SECRET_KEY=$SECRET_KEY

# Run the main command
exec "$@"
