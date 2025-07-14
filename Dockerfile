# Base image
FROM python:3.10-slim

# Évite les interactions lors de l'installation
ENV DEBIAN_FRONTEND=noninteractive

# MAJ système + install dépendances système utiles
RUN apt-get update && apt-get install -y --no-install-recommends \ 
git \ 
wget \ 
pkg-config \ 
libcairo2-dev \ 
python3-dev \ 
cmake \ 
&& rm -rf /var/lib/apt/lists/*

# Créer un dossier de travail
WORKDIR /app

# Copier les scripts et modèles (séparément pour garder le cache)
COPY ./scripts /app/scripts COPY ./models /app/models COPY requirements.txt /app/requirements.txt

# Installer Hugging Face et toutes les dépendances Python
RUN pip install --upgrade pip && pip install --no-cache-dir -r /app/requirements.txt

# Ne jamais hardcoder le token ici
# On utilisera --build-arg ou --env au runtime

# CMD par défaut : shell interactif
CMD [ "bash" ]
