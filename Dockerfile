# Tahap 1 : Menggunakan Node.js 18 Alpine image
FROM node:18-alpine as base

# Menetapkan working directory dengan container
WORKDIR /app

# Mencopy seluruh file dengan extensi json 
COPY package*.json ./

# Tahap 2 : Production Stage
FROM base as production

# Menetapkan Node.js sebagai environment untuk production
ENV NODE_ENV=production

# Install Node.js dependencies menggunakan npm ci 
RUN npm ci

# Mencopy seluruh file dengan extensi js 
COPY ./*.js ./

# Mencopy seluruh file dengan extensi env (environment)
COPY ./.env /app/

# Menetapkan command default untuk menjalankan aplikasi
CMD ["node", "index.js"]


 