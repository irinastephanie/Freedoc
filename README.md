# README


* bundle install

FreeDoc - Réserve ton docteur
2.1.1. Le pitch
Allez, on va implémenter pour de vrai ce concurrent de Doctolib dont on te parle à longueur de ressource ! À toi d'être chirurgical 👩‍⚕️

2.1.2. Les models
Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

un model Doctor, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un specialty, qui est un string
un zip_code, qui est un string
un model Patient, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un model Appointment, qui a comme attributs :
un date, qui est un datetime
Une fois les attributs fixés, on s'attaque aux relations :

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.
Je t'invite à créer les models et les migrations puis à les passer.
Petit coup de boost
Ta startup de docteurs marche à merveille, tellement que tu aimerais ajouter plusieurs tables :

city. Chaque docteur, patient, et rendez-vous est lié à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.
*(pas pu faire ceci: il est 1h00 quand même) tu voudrais virer la ligne specialty de ta table doctor et la remplacer par un model à part entière : tu vas donc créer un model specialty. Un docteur aurait plusieurs specialty (DEAL_WITH_IT), et une specialty pourrait concerner plusieurs doctor.
Comme d'hab tu vas tester et tu compléteras le seeds.rb pour prendre en compte ces changements.

Et voilà pour FreeDoc ! Doctolib est en PLS.
