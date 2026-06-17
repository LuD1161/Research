FROM node:20-slim AS base
WORKDIR /app
COPY package.json ./
RUN npm install
COPY tsconfig.json ./
COPY app/ app/

# Build stages - each copies its config as next.config.mjs then builds
FROM base AS build-baseline
COPY configs/baseline.mjs next.config.mjs
RUN npm run build

FROM base AS build-wildcard
COPY configs/wildcard.mjs next.config.mjs
RUN npm run build

FROM base AS build-subdomain
COPY configs/subdomain.mjs next.config.mjs
RUN npm run build

FROM base AS build-rebind
COPY configs/rebind.mjs next.config.mjs
RUN npm run build

# Runtime stages
FROM node:20-slim AS run-baseline
WORKDIR /app
COPY --from=build-baseline /app/.next/standalone ./
COPY --from=build-baseline /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]

FROM node:20-slim AS run-wildcard
WORKDIR /app
COPY --from=build-wildcard /app/.next/standalone ./
COPY --from=build-wildcard /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]

FROM node:20-slim AS run-subdomain
WORKDIR /app
COPY --from=build-subdomain /app/.next/standalone ./
COPY --from=build-subdomain /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]

FROM node:20-slim AS run-rebind
WORKDIR /app
COPY --from=build-rebind /app/.next/standalone ./
COPY --from=build-rebind /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]
