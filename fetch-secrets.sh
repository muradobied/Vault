#!/bin/bash

# Fetch Vault secret
SECRET_KEY=$(vault kv get -field=SECRET_KEY secret/myapp)

# Export secrets as environment variables
export SECRET_KEY=$SECRET_KEY

# Run the Node.js app
exec "$@"
