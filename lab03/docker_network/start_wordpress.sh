docker run -d --name wp -p 80:80 --network=wp_db -e WORDPRESS_DB_HOST=db:3306 -e WORDPRESS_DB_PASSWORD=wordpress wordpress
