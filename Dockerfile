# Gunakan base image resmi Node.js
FROM node:18

# Set working directory
WORKDIR /app

# Salin package.json dan install dependensi dulu (agar cache optimal)
COPY package*.json ./
RUN npm install

# Salin seluruh kode aplikasi
COPY . .

# Jalankan aplikasi
CMD ["npm", "start"]

