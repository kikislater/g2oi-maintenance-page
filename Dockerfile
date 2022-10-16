FROM nginx
COPY ./index.html ./index.html
COPY ./manifest.json ./manifest.json
ADD ./img ./img/
