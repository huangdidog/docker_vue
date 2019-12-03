echo Deploy Project
git pull
docker-compose down
docker-compose up -d --force-recreate --build