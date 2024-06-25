#!/bin/bash

if ! [[ -f fisier.csv ]]
then
    echo "Fisierul nu exista!"
    exit
fi

while true
do
    read -p "Introdu email-ul contului de pe care vrei sa te delogezi: " email

    if grep -q "$email" logged_in_users.sh
    then
         sed -i "/$email/d" logged_in_users.sh
         echo "Te-ai delogat cu succes!"
         break
    else
         read -p "Nu este logat acest cont. Apasati tasta 1 pentru reintroducere sau orice alta tasta pentru anulare " alegere
         if [[ $alegere -ne 1 ]]
         then
                exit
         fi
    fi
done

exit








