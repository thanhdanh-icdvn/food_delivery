# Frontend Dockerfile
FROM node:18-bullseye AS frontend

# Check https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodebullseye to understand why libc6-compat might be needed.
RUN apk add --no-cache libc6-compat

WORKDIR /app
COPY ./frontend/package.json ./frontend/yarn.lock ./
RUN yarn install --frozen-lockfile
COPY ./frontend .
RUN yarn build

# Backend Dockerfile
FROM node:18-bullseye AS backend
WORKDIR /app
COPY ./backend/package.json ./backend/yarn.lock ./
RUN yarn install --frozen-lockfile
COPY ./backend .
EXPOSE 1337
CMD ["yarn", "start"]

# Final Dockerfile
FROM node:18-bullseye
WORKDIR /app

ENV NODE_ENV production
# Uncomment the following line in case you want to disable telemetry during runtime.
# ENV NEXT_TELEMETRY_DISABLED 1

COPY --from=frontend /app/public ./public
# Add user
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

# Copy build to serve
COPY --from=frontend --chown=nextjs:nodejs /app/.next/standalone ./frontend
COPY --from=frontend --chown=nextjs:nodejs /app/.next/static ./frontend/.next/static

COPY --from=backend --chown=nextjs:nodejs /app ./backend
# Define user
USER nextjs
# EXPORT port for frontend
EXPOSE 3000
CMD ["yarn", "start"]
