docker run -d --name db --network=wp_db -e MYSQL_ROOT_PASSWORD=wordpress -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=wordpress -v composewp_db_data:/var/lib/mysql mysql:5.7
