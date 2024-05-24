# Utilisation d'une image de base contenant Python
FROM python:2.7.18

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers nécessaires dans le conteneur
COPY . /app

# Installation des dépendances
RUN pip install -r requirements.txt

# Commande d'exécution de l'application
CMD ["uvicorn", "mini_grop:app", "--reload", "--port", "8003"]

