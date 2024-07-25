# Menggunakan image Node.js resmi
FROM node:18

# Set working directory di dalam container
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json
COPY package*.json ./

# Menginstall dependencies
RUN npm install

# Menyalin sisa file aplikasi
COPY . .

# Mengekspos port yang digunakan aplikasi
EXPOSE 3000

# Menjalankan aplikasi
CMD [ "node", "src/index.js" ]
