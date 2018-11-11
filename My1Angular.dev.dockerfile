FROM nginx:alpine
COPY /dist/My1Angular /usr/share/nginx/html

# docker build -t My1Angular-prod -f My1Angular.prod.dockerfile.yml .
# docker container run -d --rm -p 4200:80 -v ${pwd}/dist/MyFirst1Angular:/usr/share/nginx/html nginx-angular My1Angular-prod