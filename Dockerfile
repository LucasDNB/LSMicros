# Dockerfile para Label Studio en Render.com
FROM python:3.10-slim

# Instala dependencias del sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

# Instala Label Studio
RUN pip install --no-cache-dir label-studio

# Copia el entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expone el puerto por defecto
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
