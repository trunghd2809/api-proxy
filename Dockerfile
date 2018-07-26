FROM node:8-alpine

WORKDIR /srv

ENV NODE_ENV=production
ENV PORT=3000

COPY package.json yarn.lock ./
COPY index.js src ./
COPY src ./src

RUN yarn --production --frozen-lockfile && yarn cache clean

EXPOSE 3000

CMD ["yarn", "start"]
