# Frontend Dockerfile (frontend/Dockerfile)
FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./

ENV NEXT_PUBLIC_API_URL=http://localhost:8000

RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "start"]
