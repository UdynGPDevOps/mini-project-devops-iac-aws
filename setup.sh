#!/bin/bash

echo "🔐 Loading environment variables from .env..."
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
    echo "✅ Environment variables loaded successfully."
else
    echo "❌ .env file not found. Aborting."
    exit 1
fi

echo "🚀 Moving into terraform directory..."
cd terraform || { echo "❌ terraform/ directory not found"; exit 1; }

echo "🧱 Running terraform init..."
terraform init

echo "🛠️ Running terraform apply..."
terraform apply
