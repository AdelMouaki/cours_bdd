# Paramétrage de Git
Après avoir installé Git, il est nécessaire de configurer certaines informations de base afin de ne pas avoir à les saisir à chaque utilisation.

## Informations à enregistrer
 - Nom d’utilisateur
 - Adresse e‑mail  
Ces données seront associées aux modifications que vous apporterez aux projets.

## La commande git config
La commande git config permet de consulter et modifier les variables de configuration de Git. Ces variables influencent le comportement et l’apparence du logiciel.

Pour définir vos informations personnelles, on utilise l’option --global.

Cette option indique à Git que les paramètres doivent s’appliquer à tous les projets sur votre machine.

Exemple :

```bash
git config --global user.name "Jean Dupont"
git config --global user.email jean.dupont@gmail.com
```
Remplacez bien sûr par votre propre nom et votre adresse e‑mail.

## Vérification de la configuration
Pour vérifier que vos informations ont été correctement enregistrées :

```bash
git config user.name
git config user.email
```
Git doit alors afficher les valeurs que vous avez définies.

## À savoir
Certaines commandes Git ouvrent un éditeur de texte pour saisir des informations (par exemple lors d’un message de commit).

Par défaut, Git utilise l’éditeur système, généralement Vi ou Vim.
