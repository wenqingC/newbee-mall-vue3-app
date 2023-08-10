FROM node:16.13.0

RUN mkdir -p /home/nodejs/app

WORKDIR /home/nodejs/app
COPY . .

RUN npm config set strict-ssl false \
    && npm install \
    && npm run build

EXPOSE 8090
CMD ["npm", "run", "serve"]
