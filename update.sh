docker-compose down
git pull
cd API
git pull
rm bruno
rm coverage
cd ../front-end
git pull
rm .vscode
cd ../
docker build --network=host -t astro/api ./API/
docker build --network=host -t astro/front ./front-end/
docker-compose up -d
