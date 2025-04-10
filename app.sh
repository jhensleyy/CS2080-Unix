apt-get update && apt-get install nginx -y
service nginx start
sed -i 's/Welcome to nginx!/Welcome to Jacobs page/g' /var/www/html/index.nginx-debian.html
sed -i 's/nginx/nginx \(pronounced as EngineX\)/g' /var/www/html/index.nginx-debian.html
service nginx restart
nginx -g 'daemon off;'