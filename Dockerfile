# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code ke dalam working directory
COPY . .

# Menentukan environment variables
ENV NODE_ENV=production \
    DB_HOST=item-db

# Menginstal dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 agar bisa diakses
EXPOSE 8080

# Menjalankan server saat container diluncurkan
CMD ["npm", "start"]
