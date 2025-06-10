FROM node:20-alpine

RUN npm install -g pnpm@^8

RUN mkdir -p /workspace
ADD ./ /workspace

WORKDIR /workspace

# Install dependencies
RUN pnpm install

CMD pnpm start
