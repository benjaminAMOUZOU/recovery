//
// Created by benjamin on 29/03/2022.
//

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    char *arg[1];
    /*
     * 1- Mounter le support de stockage - ok
     * 2- Faire une copie du support de stockage - ok
     * 3- Vérifier le système de fichier sur la clé - ok
     * 4- Repérez la table d'allocation
     * 5- Parcourir les blocs de données à la recherche de l'entête de l'image
     * 6- Reconstituer l'image
     * 7- Remettre l'image sur la clé
     */
    arg[1] = "sudo ./main.sh /dev/sdb";
    execve("./", arg, NULL);
    perror("execve"); /* execve() ne retourne qu'en cas d'erreur */
    return (EXIT_FAILURE);
    return 0;
}