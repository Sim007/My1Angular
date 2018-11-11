##### Stage 1 - build app
FROM node:10.13-alpine as Angular
LABEL author="Johannes Sim"
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build --prod

##### Stage 2 - run
FROM nginx:alpine
#VOLUME /var/cache/nginx
COPY --from=Angular /app/dist/MyFirstAngularApp /usr/share/nginx/html
#COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

# docker build -t My1Angular-prodflow -f My1Angular.prodflow.dockerfile.yml .
# docker container run -d --rm -p 8080:80 My1Angelar-prodflow