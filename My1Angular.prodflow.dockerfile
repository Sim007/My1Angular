##### Stage 1 - build app
FROM node:10.13-alpine as Angular
LABEL author="Johannes Sim"
WORKDIR /app
COPY package.json package.json
RUN npm install
RUN npm audit fix
COPY . .
RUN npm run build --prod

##### Stage 2 - run
FROM nginx:alpine
#VOLUME /var/cache/nginx - nginx config
COPY --from=Angular /app/dist/My1Angular /usr/share/nginx/html
#COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf - nginx

# docker build -t my1angular.prod -f my1angular.prodflow.dockerfile .
# docker container run -d --rm --name my1angular -p 4200:80 my1angular.prodflow