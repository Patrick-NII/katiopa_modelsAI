# docker/Dockerfile

FROM python:3.10-slim

# Installation de git + wget + pip propre
RUN apt-get update && apt-get install -y git wget && rm -rf /var/lib/apt/lists/*

# Création dossier de travail dans le conteneur
WORKDIR /app

# Copie les fichiers requis (ex: requirements plus tard)
COPY ./scripts /app/scripts
COPY ./models /app/models

# Installe HuggingFace + autres lib
RUN pip install --no-cache-dir huggingface_hub

CMD [ "bash" ]

# ENV HUGGINGFACE_HUB_TOKEN = your_token_here