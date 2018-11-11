FROM nginx:alpine
COPY dist/My1Angular /usr/share/nginx/html

# ng build --delete-output-path=false
# docker build -t my1angular.prod -f my1angular.prod.dockerfile .
# docker container run -d --rm -p 4200:80 my1angular.prod