FROM nginx:alpine
COPY /app/dist/My1Angular /usr/share/nginx/html

# docker build -t My1Angular-prod -f My1Angular.prod.dockerfile.yml .
# docker container run -d --rm -p 4200:80 My1Angular-prod