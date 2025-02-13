# Utiliser une image Node.js comme base
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port 3000 (ou celui utilisé par React)
EXPOSE 9002

# Démarrer l'application React
CMD ["npm", "start"]
