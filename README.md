# Katiopa AI - Workspace

Ce dépôt contient l’ensemble du projet Katiopa AI, une plateforme éducative basée sur l’IA. Elle repose sur l’intégration de modèles LLM open-source, un système RAG (Retrieval-Augmented Generation), du fine-tuning, et une interface web conversationnelle pour interagir avec des documents, des exercices et du savoir éducatif destiné à un public jeune (3 à 15 ans).

Structure du projet

katiopa_modelsAI/
├── api/             # Logique FastAPI / endpoints API
├── back/            # Traitement des données, pipelines internes
├── docker/          # Dockerfile, docker-compose.yaml, configuration
├── documents/       # Sources documentaires (cours, textes, exercices…)
├── front/           # Interface utilisateur (Streamlit, React, etc.)
├── logs/            # Logs applicatifs
├── models/          # Dossier ignoré par Git, contient les LLM téléchargés localement
│   ├── rtx3090/
│   ├── rtx4090/
│   ├── a100_40gb/
│   ├── a100_80gb/
│   └── dual_a100/
├── notebooks/       # Explorations, prototypes Jupyter
├── rag/             # Implémentation du RAG (vectordb, embeddings, retriever)
├── scripts/         # Scripts d’automatisation, dont download_models.py
└── README.md

Déploiement avec Docker

Construction de l’image

docker compose build

Lancement du conteneur

docker compose up -d

Accès à l’environnement

docker compose exec katiopa-env bash

Téléchargement des modèles LLM (hors Git)

Les modèles ne sont pas versionnés dans ce dépôt pour des raisons de taille, de performance et de licence.

Télécharger les modèles dynamiquement

python3 scripts/download_models.py

Le script utilise huggingface_hub.snapshot_download() pour récupérer :
	•	Mistral-7B-v0.1 (open)
	•	Meta-Llama-3-8B (accès restreint via Hugging Face)
	•	D’autres modèles adaptés selon la configuration GPU (3090, 4090, A100, etc.)

Remarque : Certains modèles comme Llama-3 nécessitent un accès préalable via Hugging Face :
https://huggingface.co/meta-llama/Meta-Llama-3-8B

Configuration du .gitignore

Le dossier models/ est exclu du versioning.

Extrait du .gitignore

# Exclure tous les fichiers lourds
models/
*.safetensors
*.bin
*.pt

Authentification Hugging Face

Avant de lancer le téléchargement de modèles restreints, authentifiez-vous avec votre jeton Hugging Face :

huggingface-cli login

Licences et obligations

Ce projet utilise des modèles open-source soumis à des licences tierces. Il est de votre responsabilité de respecter les conditions d’utilisation.
	•	Meta Llama 3 Community License
	•	Mistral AI License

Prochaines étapes
	•	Intégration de la mémoire conversationnelle
	•	Ajout d’un module de fine-tuning pédagogique
	•	Déploiement sur infrastructure cloud (RunPod, EC2…)
	•	Interface de test publique

Auteur principal

Patrick Nii
Machine Learning / AI Engineer
Spécialisation : éducation intelligente, systèmes LLM, infrastructure cloud