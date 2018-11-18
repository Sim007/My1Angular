##### My1angular without multistage build
FROM node:10.13-alpine as Angular
LABEL author="Johannes Sim modified workshop"
WORKDIR /app
COPY package.json package.json
RUN npm install
RUN npm audit fix
COPY . .
EXPOSE 4200
CMD ["npm", "start", "--", "--host", "0.0.0.0", "--poll", "500"]

# docker commands:
# docker build -t my1angular.prodbig -f my1angular.prodbig.dockerfile .
# docker container run -d --rm --name my1angularbigdocker -p 4300:80 my1angular.prodbig