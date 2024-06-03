# Hive API

API déployée sur Scalingo : [https://hive-api.osc-fr1.scalingo.io](https://hive-api.osc-fr1.scalingo.io)

Le front est déployé sur Github pages : [https://ruff9.github.io/hive_front/](https://ruff9.github.io/hive_front/)

et le code du front est disponible ici : [https://github.com/Ruff9/hive_front](https://github.com/Ruff9/hive_front)

## Setup développement local

1. Installer les dépendances

```
$ bundle install
```
2. Mettre en place les variables d'environnement

Créer un fichier `.env` à la racine du projet en reproduisant le fichier `.env.sample`.
Préciser le nom de l'utilisateur et le mot de passe qui seront utilisés pour la base de données locale.

3. Setup base de données locale

Example avec `psql`

```
$ sudo -u postgres psql
```
puis

```
create role name_of_db_user with createdb login password 'password_of_db_user';
```
En reprenant les valeurs du fichier `.env`

4. Création de la base de données

```
$ rake db:setup
```

5. Vérification

```
$ rspec --format documentation
```