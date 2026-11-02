FROM node:20-slim
WORKDIR /nextjs

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

CMD ["npm", "start"]
