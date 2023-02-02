# Frontend Dockerfile
FROM node:18-alpine AS frontend
WORKDIR /app
COPY ./frontend/package.json ./frontend/yarn.lock ./
RUN yarn install --frozen-lockfile
COPY ./frontend .
RUN yarn build

# Backend Dockerfile
FROM node:18-alpine AS backend
WORKDIR /app
COPY ./backend/package.json ./backend/yarn.lock ./
RUN yarn install --frozen-lockfile
COPY ./backend .
EXPOSE 1337
CMD ["yarn", "start"]

# Final Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY --from=frontend /app/out ./frontend/out
COPY --from=backend /app ./backend
EXPOSE 3000
CMD ["yarn", "start"]
