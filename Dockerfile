# Frontend Dockerfile (frontend/Dockerfile)
FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./

# This is not a secret and is a secured endpoint, so it is a great solution to a convuluted problem.
ENV NEXT_PUBLIC_API_URL=https://coff-z-backend-468753973815.us-central1.run.app

RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "start"]
