#!/bin/bash
#Liste de tous les périphériques de stockage
#echo "Liste de tous les périphériques de stockage"
#fdisk -l

#Vérification des arguments passés en paramètre
echo "Vérification de l'argument passé en paramètre..."
if [ $# -eq 0 ]; then
  echo "Vous n'avez pas spécifié le support de stockage !"
  exit 1
fi
echo "Vérification de l'argument passé en paramètre - ok"

#Création du point de montage
echo "Création du point de montage..."
mkdir usb
echo "Création du point de montage - ok"

#Copie de la clé
echo "Copie du support de stockage $1 passé en paramètre..." #6 minutes pour la copie
dd if=$1 of=cle.dd status=progress
echo "Copie du support de stockage $1 passé en paramètre - ok"

#Montage de la copie du support de stockage
echo "Montage de la copie du support de stockage..."
mount -o loop cle usb
echo "Montage de la copie du support de stockage - ok"

#Affichage des informations sur le support de stockage
echo "Information sur la copie du support de stockage"
df -h usb