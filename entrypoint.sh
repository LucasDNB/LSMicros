#!/bin/bash
set -e

# Espera a que la base de datos esté lista (opcional, para robustez)
if [ -n "$DATABASE_URL" ]; then
  echo "Esperando a que la base de datos esté lista..."
  until pg_isready -d "$DATABASE_URL"; do
    sleep 2
  done
fi


# Crea usuario admin si no existe
if [ -n "$LABEL_STUDIO_USERNAME" ] && [ -n "$LABEL_STUDIO_PASSWORD" ]; then
  label-studio user --username "$LABEL_STUDIO_USERNAME" --password "$LABEL_STUDIO_PASSWORD" --email admin@example.com --force-password-change false || true
fi

# Inicia Label Studio
exec label-studio start --host 0.0.0.0 --port 8080
