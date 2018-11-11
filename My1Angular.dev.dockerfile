FROM nginx:alpine
COPY /dist/My1Angular /usr/share/nginx/html

# directory /dist/My1Angular must exist
# docker build -t my1angular.dev -f my1angular.dev.dockerfile .
# docker container run -d --rm -p 4200:80 -v ${pwd}/dist/My1Angular:/usr/share/nginx/html my1angular.dev
# ng build --watch --delete-output-path=false