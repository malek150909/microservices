# Utiliser une image Node.js comme base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers dans le conteneur
COPY . .

# Exposer le port 3001 (ou celui utilisé par ton backend)
EXPOSE 8081

# Commande pour démarrer le serveur
CMD ["node", "server.js"]
