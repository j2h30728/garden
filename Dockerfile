FROM node:22-slim AS builder
WORKDIR /usr/src/app
RUN corepack enable
COPY package.json .
COPY pnpm-lock.yaml .
RUN pnpm install --frozen-lockfile

FROM node:22-slim
WORKDIR /usr/src/app
RUN corepack enable
COPY --from=builder /usr/src/app/ /usr/src/app/
COPY . .
CMD ["pnpm", "dev"]
