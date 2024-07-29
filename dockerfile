FROM nginx:alpine

COPY . /usr/share/nginx/html
EXPOSE 8081

RUN sed -i 's/listen	80;/listen8081;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "deamon off;"]
