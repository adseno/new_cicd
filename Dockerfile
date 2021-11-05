FROM centos
RUN yum install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir /app
COPY index.html /app/index.html
CMD nginx start
