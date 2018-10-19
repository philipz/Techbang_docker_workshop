FROM node:6 as builder
RUN mkdir -p /app
WORKDIR /app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /app/
RUN npm install && npm cache clean --force
COPY . /app

FROM node:6-alpine
COPY --from=builder /app /
CMD ["npm", "start"]
