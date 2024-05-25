#!/bin/bash

# Step 1: Access the Docker container
# Laugh LOL
echo -e "\e[32m"
docker-compose up -d --build
cd docker
cat doh.txt
docker exec -it binews-frontend-1 sh -c "cd /var/www/html/ && php artisan migrate:fresh --seed"
echo "done"
read -p "Press [Enter] key to continue..."
