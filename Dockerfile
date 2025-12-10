#  une image Python officielle comme image de base
FROM python:3.11-slim

#  le répertoire de travail dans le conteneur
WORKDIR /app

#  le fichier requirements.txt et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# le reste du code de l'application dans le conteneur
COPY . .

#  le port sur lequel l'application va écouter
EXPOSE 5001

# la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
