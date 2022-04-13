FROM node:16.14.0-alpine3.15

RUN ["apk", "update"]
RUN ["apk", "add", "git"]

WORKDIR /nft-collection-api

COPY ["package.json", "./"]

RUN ["npm", "install", "--verbose"]

COPY ["./scripts", "./scripts/"]
COPY ["./tasks", "./tasks/"]

EXPOSE 3000

CMD ["npm", "start"]
