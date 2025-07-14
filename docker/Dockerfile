# Image officielle PyTorch avec Python 3.11 et CUDA 11.8
FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime

# Installer des paquets Debian nécessaires
RUN apt-get update && apt-get install -y \
    git \
    wget \
    pkg-config \
    libcairo2-dev \
    python3-dev \
    cmake \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le code
COPY ./scripts /app/scripts
COPY ./models /app/models
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Ajouter huggingface_hub et configurer le token
RUN pip install --no-cache-dir huggingface_hub

ARG HF_TOKEN
ENV HUGGINGFACE_HUB_TOKEN=${HF_TOKEN}

# Commande par défaut
CMD ["sleep", "infinity"]