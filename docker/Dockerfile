# Utilise une image légère Python
FROM python:3.10-slim

# Installation des outils de base
RUN apt-get update && apt-get install -y \
    git \
    wget \
    pkg-config \
    libcairo2-dev \
    python3-dev \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Dossier de travail dans le conteneur
WORKDIR /app

# Copie les scripts et modèles
COPY ./scripts /app/scripts
COPY ./models /app/models

# (Optionnel) Copier requirements.txt et installer les dépendances
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Installation de huggingface_hub
RUN pip install --no-cache-dir huggingface_hub

# Configuration sécurisée du token Hugging Face
ARG HF_TOKEN
ENV HUGGINGFACE_HUB_TOKEN=${HF_TOKEN}

# Commande par défaut
CMD ["bash"]
