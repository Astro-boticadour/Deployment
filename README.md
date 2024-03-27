# ASTRO Deployment

Ce dépôt contient les fichiers de déploiement nécessaires pour l'application astro. Ces fichiers permettent de déployer l'application de manière automatisée ou manuelle sur une machine debian avec docker-ompose,pour la production.

## Contenu

Le dépôt comprend les éléments suivants :

- **Dossiers :**
  - `reverseproxy/` : Fichiers de configuration de nginx pour l'acces au diffrent conteneur de l'application.
  - `mysql/` : (Crée garce à deploy.sh) | Fichiers d'enviroment et de donnée de mysql.
  - `API/` : (Crée garce à deploy.sh) | Code source de l'api.
  - `front-end/` : (Crée garce à deploy.sh) | Code source du front-end de l'application
- **Scripts :**
  - `deploy.sh` : Script de déploiement permettant de déployer l'application sur l'environnement cible.
  - `update.sh` : Script de mise à jours permettant de relancer l'application en applicant les nouveaux changments
- **Configuration :**
  - `docker-compose.yml` : Fichier de configuration contenant les paramètres nécessaires au déploiement de l'application avec docker-compose.
  - `reverseproxy/default.conf` : Fichier de configuration du routage de l'application avec nginx
  - `reverseproxy/ssl.conf` : Fichier de configuration du ssl avec nginx
  - `API/.env` : (Crée garce à deploy.sh) | Fichier environement de l'api
  - `mysql/.env` : (Crée garce à deploy.sh) | Fichier environement de mysql

## Prérequis

Avant de procéder au déploiement de l'application, assurez-vous que les éléments suivants sont installés et configurés correctement :

- docker-compose

## Instructions de Déploiement

Suivez les instructions ci-dessous pour déployer l'application sur l'environnement cible :

1. **Clonage du dépôt :**

- git clone https://github.com/Astro-boticadour/Deployment.git
- cd Deployment

2. **Déploiement :**
Exécutez le script de déploiement correspondant à l'environnement cible :
- sudo bash deploy.sh
