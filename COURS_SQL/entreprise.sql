-- Toutes les commandes mysql finies par un point-virgule sont exécutées dans la console mysql.Elle doivent êtr écritesn en majuscules(par convention).

-- Pour accéder à la console mysql : 

mysql -u root -p

-- Pour créer la base de données :

CREATE DATABASE entreprise_db;

--OU

CREATE DATABASE IF NOT EXISTS entreprise_db;

-- Afficher la liste des bases de données :

SHOW DATABASES;

-- Pour utiliser la base de données :

USE entreprise_db;

-- Pour afficher les tables de la base de données :

SHOW TABLES;

-- Pour vider la base de données :

TRUNCATE TABLE entreprise_db;

-- Pour supprimer la base de données :

DROP DATABASE entreprise_db;

-- Pour créer une table :

CREATE TABLE users(
    id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    civility ENUM('M', 'F', 'U') NOT NULL,
    birth_date DATE
)ENGINE=InnoDB;

-- Pour afficher la structure de la table :

DESC users;

-- ALTER TABLE permet de modifier la structure de la table

ALTER TABLE users ADD COLUMN email VARCHAR(50) NOT NULL;

-- Pour supprimer une colonne :

ALTER TABLE users DROP COLUMN civility;

-- REQUÊTES D'AFFICHAGE

-- SELECT permet de récupérer des données il faut préciser les colonnes à récupérer puis dans FROM la table à récupérer les données

-- * Permet de récupérer toutes les colonnes de la table


-- Récupérer toutes les données de la table employes
SELECT id_employes,prenom,nom,sexe,service,date_embauche,salaire FROM employes;

-- OU

SELECT * FROM employes;

-- Affichez les nom et prénom des employés

SELECT nom,prenom FROM employes;

-- Affichez les différents services des employés

SELECT service FROM employes;

-- DISTINCT permet d'éliminer les doublons

SELECT DISTINCT service FROM employes;

--WHERE permet de filtrer les données(condition)

--Affichez les employés du service informatique

SELECT * FROM employes WHERE service='informatique';

-- Affichez le nom et prénom des employés du service commercial

SELECT nom,prenom FROM employes WHERE service='commercial';

-- BETWEEN permet de filtrer les données entre deux valeurs (condition) On l'utilise avec AND

--Affichez les employés qui ont été embauchés entre le 1er janvier 2000 et aujourd'hui

SELECT nom,prenom, sexe
FROM employes
WHERE date_embauche
BETWEEN '2000-01-01' AND '2025-02-12';

SELECT CURDATE();

SELECT nom,prenom, date_embauche
FROM employes
WHERE date_embauche
BETWEEN '2000-01-01' AND CURDATE();


-- Liste des employés ayant été embauchés entre le 1er janvier 2015 et 31 décembre 2017

SELECT * FROM employes WHERE date_embauche BETWEEN '2015-01-01' AND '2017-12-31';

--LIKE Permet de faire des requêtes sur une valeur approchante. Pour cela on utilise le caractère % 

-- %a correspond à tout chaine quelque soit le debut mais qui finissent par a

-- a% correspond à tout chaine qui commence par a mais qui finissent par quelque chose

-- %a% correspond à tout chaine quelque soit le debut et la fin mais qui contiennent a

-- Liste des employés ayant le prénom commençant par s

SELECT * FROM employes WHERE prenom LIKE 's%';

-- Liste des employés ayant le prénom fini par a

SELECT * FROM employes WHERE prenom LIKE '%a';

-- Liste des employés ayant le prénom qui contient r

SELECT * FROM employes WHERE prenom LIKE '%r%';

-- LES OPERATEURS COURANTS(< , > , <= , >= , = , !=)

--Affichez les employés qui ne sont pas dans le service informatique

SELECT * FROM employes WHERE service !='informatique';


--Liste des employés ayant un salaire supérieur à 3000

SELECT * FROM employes WHERE salaire > 3000;


-- ORDER BY permet de trier les données(ASC pour ascendant, DESC pour descendant)

--liste des employés triés par nom alphabétique

SELECT * FROM employes ORDER BY nom ASC;

--Liste des employés triés par ordre décroissant sur le salaire et croissant sur le nom

SELECT * FROM employes ORDER BY salaire DESC, nom ASC;

-- LIMIT permet de limiter le nombre de résultats retournés.On lui donne un nombre entier qui représente le nombre de lignes à retourner

SELECT prenom FROM employes LIMIT 0 , 3; --0 signifie que le premier élément est le 0 et 3 signifie que 3 éléments sont retournés

SELECT prenom FROM employes LIMIT 3 , 3;

--Partir du 3e élément et afficher les 6 suivants

SELECT prenom FROM employes LIMIT 3 , 6;

-- ALIAS(AS) permet de renommer une colonne

--Affichage du salaire annuel des employés
SELECT prenom, salaire*12 FROM employes;

SELECT prenom, salaire*12 AS "Salaire annuel" FROM employes;

--NB si dans mon alias j'ai des espaces je dois les mettre entre guillemets

--SUM(x) permet de calculer la somme de toutes les valeurs de x

--Masse salariale des employés

SELECT SUM(salaire*12) AS "Masse salariale" FROM employes;

--AVG(x) permet de calculer la moyenne de toutes les valeurs de x

--Moyenne salariale des employés
SELECT AVG(salaire) AS "salaire moyen" FROM employes;


--ROUND permet de arrondir une valeur

SELECT ROUND(AVG(salaire)) AS "salaire moyen arrondi" FROM employes;

SELECT ROUND(AVG(salaire),2) AS "salaire moyen arrondi" FROM employes; --2 signifie que le nombre de chiffres après la virgule est de 2

--COUNT permet de compter le nombre de lignes

SELECT COUNT(*) FROM employes WHERE sexe='F';


--MIN(x) permet de trouver la valeur minimale de x
-- MAX(x) permet de trouver la valeur maximale de x

SELECT MIN(salaire) AS "Salaire minimal" FROM employes;
SELECT MAX(salaire) AS "Salaire maximal" FROM employes;

SELECT prenom,salaire FROM employes WHERE salaire =
                        (SELECT MIN(salaire) FROM employes);


-- IN et NOT IN permettent de filtrer les données selon une valeur présente ou non dans une liste

--Liste des employés du service informatique et comptabilité

SELECT * FROM employes WHERE service IN ('informatique','comptabilite');

--Liste des employés n'étant pas dans le service informatique et comptabilité

SELECT * FROM employes WHERE service NOT IN ('informatique','comptabilite');

--Liste des employés n'étant pas dans le service informatique et comptabilité triés par ordre croissant sur le service

SELECT * FROM employes WHERE service NOT IN ('informatique','comptabilite') ORDER BY service;


-- AND permet de combiner deux conditions

-- Liste des employés du service informatique  ayant un salaire supérieur à 3000

SELECT * FROM employes WHERE service='informatique' AND salaire > 3000;

-- OR permet de combiner deux conditions

-- Liste des employés du service commercial ayant un saaire de 1900 ou 2300

SELECT * FROM employes WHERE service='commercial' AND salaire = 1900 OR salaire = 2300;

SELECT * FROM employes WHERE service='commercial' AND (salaire = 1900 OR salaire = 2300);

-- GROUP BY permet de regrouper les données selon une colonne

--Liste des employés par service

SELECT service, COUNT(*) FROM employes GROUP BY service;

--HAVING permet de filtrer les données après un GROUP BY

--Les des services ayant plus de 2 employés

SELECT service, COUNT(*) FROM employes GROUP BY service HAVING COUNT(*) > 2;




-- 1 -- Afficher la profession de l'employé 547.
SELECT service FROM employes WHERE id_employes = 547;

	/*
	+------------+
	| service    |
	+------------+
	| commercial |
	+------------+
	*/

-- 2 -- Afficher la date d'embauche d'Amandine.
SELECT date_embauche FROM employes WHERE prenom = 'Amandine';
	
	/* 
	+---------------+
	| date_embauche |
	+---------------+
	| 2014-01-23    |
	+---------------+
	 */

-- 3 -- Afficher le nom de famille de Guillaume
	SELECT nom FROM employes WHERE prenom = 'Guillaume';
	/* 
	+--------+
	| nom    |
	+--------+
	| Miller |
	+--------+
	 */
		
-- 4 -- Afficher le nombre de personne ayant un n° id_employes commençant par le chiffre 5.

SELECT COUNT(*) FROM employes WHERE id_employes LIKE '5%';
	
	/* 
	+----------+
	| COUNT(*) |
	+----------+
	|        3 |
	+----------+
	 */
		
-- 5 -- Afficher le nombre de commerciaux.
	
    SELECT COUNT(*) FROM employes WHERE service = 'commercial';

	/* 
	+--------+
	| nombre |
	+--------+
	|      6 |
	 */

-- 6 -- Afficher le salaire moyen des informaticiens (+arrondie).

SELECT round(AVG(salaire)) FROM employes WHERE service = 'informatique';
	
	/* 
	+-----------------------+
	| round(AVG( salaire )) |
	+-----------------------+
	|                  2617 |
	+-----------------------+
	 */
		
-- 7 -- Afficher les 5 premiers employés après avoir classer leur nom de famille par ordre alphabétique.

SELECT * FROM employes ORDER BY nom ASC LIMIT 0,5;
	
	/* 
	+-------------+---------+----------+------+--------------+---------------+---------+
	| id_employes | prenom  | nom      | sexe | service      | date_embauche | salaire |
	+-------------+---------+----------+------+--------------+---------------+---------+
	|         592 | Laura   | Blanchet | f    | direction    | 2012-05-09    |    4500 |
	|         854 | Daniel  | Chevel   | m    | informatique | 2015-09-28    |    3100 |
	|         547 | Melanie | Collier  | f    | commercial   | 2012-01-08    |    3100 |
	|         699 | Julien  | Cottet   | m    | secretariat  | 2013-01-05    |    1390 |
	|         739 | Thierry | Desprez  | m    | secretariat  | 2013-07-17    |    1500 |
	+-------------+---------+----------+------+--------------+---------------+---------+
	 */
		
-- 8 -- Afficher le coût des commerciaux sur 1 année.
SELECT SUM(salaire*12) FROM employes WHERE service = 'commercial';
	
	/* 
	+-----------------+
	| SUM(salaire*12) |
	+-----------------+
	|          184200 |
	+-----------------+
	 */

-- 9 -- Afficher le salaire moyen par service. (service + salaire moyen)

SELECT service, round(AVG(salaire)) FROM employes GROUP BY service;
	
	/* 
	+---------------+-----------------------+
	| service       | round(AVG( salaire )) |
	+---------------+-----------------------+
	| assistant     |                  1775 |
	| commercial    |                  2558 |
	| communication |                  2100 |
	| comptabilite  |                  2900 |
	| direction     |                  4750 |
	| informatique  |                  2617 |
	| juridique     |                  3550 |
	| production    |                  2225 |
	| secretariat   |                  1497 |
	+---------------+-----------------------+
	 */
		
-- 10 -- Afficher le nombre de recrutement sur l'année 2010 (+alias).
	SELECT COUNT(*) AS "nb de recrutement" FROM employes WHERE date_embauche BETWEEN '2010-01-01' AND '2010-12-31';

	/* 
	+-------------------+
	| nb de recrutement |
	+-------------------+
	|                 2 |
	+-------------------+
	 */
		
-- 11 -- Afficher le salaire moyen appliqué lors des recrutements sur la période allant de 2012 a 2014
	
	/* 
	+--------------+
	| AVG(salaire) |
	+--------------+
	|    2437.7778 |
	+--------------+
	 */

-- 12 -- Afficher le nombre de service différent

	/* 
	+--------------------------+
	| COUNT(DISTINCT(service)) |
	+--------------------------+
	|                        9 |
	+--------------------------+
	 */

-- 13 -- Afficher tous les employés (sauf ceux du service production et secrétariat)
	

	/* 
	+----------+-------------+
	| nom      | prenom      |
	+----------+-------------+
	| Laborde  | Jean-pierre |
	| Gallet   | Clement     |
	| Winter   | Thomas      |
	| Grand    | Fabrice     |
	| Collier  | Melanie     |
	| Blanchet | Laura       |
	| Miller   | Guillaume   |
	| Perrin   | Celine      |
	| Vignal   | Mathieu     |
	| Thoyer   | Amandine    |
	| Durand   | Damien      |
	| Chevel   | Daniel      |
	| Martin   | Nathalie    |
	| Sennard  | Emilie      |
	| Lafaye   | Stephanie   |
	+----------+-------------+
	 */

-- 14 -- Afficher conjoitement le nombre d'homme et de femme dans l'entreprise


	/* 
	+------+----------+
	| sexe | COUNT(*) |
	+------+----------+
	| m    |       11 |
	| f    |        9 |
	+------+----------+
	 */

-- 15 -- Afficher les commerciaux ayant été recrutés avant 2015 de sexe masculin et gagnant un salaire supérieur a 2500 €

	
	/* 
	+--------+--------+
	| nom    | prenom |
	+--------+--------+
	| Winter | Thomas |
	+--------+--------+
	 */


-- 16 -- Qui a été embauché en dernier

	
	/* 
	+-------------+-----------+--------+------+-----------+---------------+---------+
	| id_employes | prenom    | nom    | sexe | service   | date_embauche | salaire |
	+-------------+-----------+--------+------+-----------+---------------+---------+
	|         990 | Stephanie | Lafaye | f    | assistant | 2017-03-01    |    1775 |
	+-------------+-----------+--------+------+-----------+---------------+---------+
	 */

-- 17 -- Afficher les informations sur l'employé du service commercial gagnant le salaire le plus élevé

	
	/* 
	+-------------+--------+--------+------+------------+---------------+---------+
	| id_employes | prenom | nom    | sexe | service    | date_embauche | salaire |
	+-------------+--------+--------+------+------------+---------------+---------+
	|         415 | Thomas | Winter | m    | commercial | 2011-05-03    |    3550 |
	+-------------+--------+--------+------+------------+---------------+---------+
	 */


-- 18 -- Afficher le prénom du comptable gagnant le meilleur salaire

		/* 
	+---------+
	| prenom  |
	+---------+
	| Fabrice |
	+---------+
	 */

-- 19 -- Afficher le prénom de l'informaticien ayant été recruté en premier


	/* 
	+-------------+---------+--------+------+--------------+---------------+---------+
	| id_employes | prenom  | nom    | sexe | service      | date_embauche | salaire |
	+-------------+---------+--------+------+--------------+---------------+---------+
	|         701 | Mathieu | Vignal | m    | informatique | 2013-04-03    |    2500 |
	+-------------+---------+--------+------+--------------+---------------+---------+
	 */

-- 20 -- Augmenter chaque employé de 100 €
	

-- 21 -- Supprimer les employés du service secrétariat
	