FROM node:16

WORKDIR /src

COPY package.json ./

RUN npm install

RUN npm install -g @angular/cli 

COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD ["ng", "serve"]

