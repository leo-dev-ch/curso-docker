docker run -d -v db_data:/var/lib/mysql --name=db_wp  --env MYSQL_DATABASE=wordpress  --env  MYSQL_ROOT_PASSWORD=somewordpress --env  MYSQL_DATABASE=wordpress   --env  MYSQL_USER=wordpress  --env  MYSQL_PASSWORD=wordpress   -p 3307:3306 mysql:5.7


docker run -d -v www:/var/www/html --name=wp --link=db_wp --env WORDPRESS_DB_HOST=db_wp:3306 --env WORDPRESS_DB_USER=wordpress --env WORDPRESS_DB_PASSWORD=wordpress --env WORDPRESS_DB_NAME=wordpress   -p 81:80 wordpress:latest
