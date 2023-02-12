# path: ./Dockerfile
# For app
FROM node:16-bullseye AS builder
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /app
COPY ./package.json .
COPY ./packages/backend/package.json ./packages/backend/
COPY ./packages/frontend/package.json ./packages/frontend/
RUN yarn install

# backend
WORKDIR /app/
COPY ./packages/backend/ ./packages/backend/
EXPOSE 1337

# Frontend
WORKDIR /app/
COPY ./packages/frontend/ ./packages/frontend/
EXPOSE 3000
 
CMD [ "yarn", "develop" ]
