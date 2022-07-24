FROM nginx
WORKDIR /usr/share/nginx/html/
COPY ./index.html ./index.html
COPY ./manifest.json ./manifest.json
ADD ./img ./img/
