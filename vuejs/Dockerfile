FROM nginx:alpine

ARG API_URI='http://localhost:5000'

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY dist/ /usr/share/nginx/html/

RUN envsubst '${API_URI}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g daemon off;"]
