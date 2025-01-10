#!/bin/bash

# Créer un répertoire temporaire
mkdir tempdir

# Créer un fichier vide
touch tempdir/dummy.txt

# Créer un fichier .zip avec le fichier vide
zip swanos.zip tempdir/dummy.txt

# Supprimer le répertoire temporaire
rm -r tempdir

# Initialiser un repository Git s'il n'existe pas déjà
if [ ! -d .git ]; then
  git init
fi

# Ajouter le fichier .zip au repository
git add swanos.zip

# Effectuer un commit du fichier .zip
git commit -m "Ajouter swanos.zip avec un fichier vide"

# Ajouter le remote pour GitHub
git remote add origin https://github.com/ton-nom-utilisateur/ton-repository.git

# Pousser le commit vers GitHub
git push -u origin master