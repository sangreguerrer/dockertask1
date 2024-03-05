FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY static-html-directory /usr/share/nginx/html

CMD ["sudo", "docker", "run", "--name", "my-ngix-server", "-d", "-p", "8081:80", "nginx-im"]