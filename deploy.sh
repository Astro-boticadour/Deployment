echo "Deploiment[1/4] -> Configuration de la BD"
mkdir -p mysql/data
touch mysql/.env
echo "#Saisir ci dessous les varriable d'environment de mysql" > ./mysql/.env
nano mysql/.env
echo "Deploiment[2/4] -> Installation et configuration de l'API"
git clone https://github.com/Astro-boticadour/API.git
rm API/.bruno
rm API/.coverage
touch API/.env
echo "#Saisir ci dessous les varriable d'environment de l'API" > ./API/.env
nano API/.env
echo "Deploiment[3/4] -> Installation du client web"
git clone https://github.com/Astro-boticadour/front-end.git
rm front-end/.vscode
echo "Deploiment[4/4] -> Lancement de l'application"
docker-compose up -d
echo "Deploiment Terminé !"