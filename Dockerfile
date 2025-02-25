# Frontend Dockerfile (frontend/Dockerfile)
FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
ENTRYPOINT yarn react-env --env APP_ENV
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "start"]
