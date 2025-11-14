FROM node:18-alpine

WORKDIR /app

COPY package*.json .npmrc ./

RUN npm ci --legacy-peer-deps

COPY . .

EXPOSE 9000

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]