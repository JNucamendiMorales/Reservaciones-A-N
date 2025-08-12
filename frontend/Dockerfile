FROM node:18-alpine

WORKDIR /app

# Copia solo package.json y package-lock.json primero para instalar dependencias (cacheo eficiente)
COPY package.json package-lock.json* ./

RUN npm install

# Copia el resto del código después
COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
