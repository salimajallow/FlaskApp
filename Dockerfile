# Utiliser une image Python officielle comme image de base
FROM python:3.11-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va écouter
EXPOSE 5001

# Définir la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
