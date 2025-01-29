<style>
    body {
        font-family: 'Avenir', 'Arial', sans-serif;
        line-height: 1.6;
        color: #333;
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        background: #fff;
    }

    h1 {
        color: #2c3e50;
        border-bottom: 2px solid #3498db;
        padding-bottom: 10px;
    }

    h3 {
        color: #2980b9;
        margin-top: 30px;
    }

    strong {
        color:#122823;
    }

    ul, ol {
        padding-left: 20px;
    }

    li {
        margin-bottom: 8px;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin: 20px 0;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }

    th {
        background-color: #f8f9fa;
        color: #2c3e50;
    }

    tr:nth-child(even) {
        background-color: #f8f9fa;
    }

    code {
        background: #f8f9fa;
        padding: 2px 6px;
        border-radius: 3px;
        font-family: 'Courier New', monospace;
    }

    pre {
        background: #f8f9fa;
        padding: 15px;
        border-radius: 5px;
        overflow-x: auto;
    }

    hr {
        border: none;
        border-top: 2px solid #eee;
        margin: 30px 0;
    }

    img {
        max-width: 100%;
        height: auto;
        display: block;
        margin: 20px auto;
    }
    .markdown-body code {
        background-color: #f3f4f6;
        padding: 0.2em 0.4em;
        border-radius: 3px;
        font-size: 85%;
        color: #24292e;
        font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, Courier, monospace;
    }

</style>



# Introduction au SI(Système d'information)

## 1.Définition

Un SI est un ensemble organisé de ressources (personnel, matériel, logiciel, données, procédures) qui permet de collecter, stocker, traiter et diffuser de l'information dans une entreprise.

## 2.Composants

- Données : informations élémentaires non structurées
- Matériel & logiciel : matériel et logiciels utilisés dans le SI
- Ressources humaines : personnel , administration et support
- Procédures : méthodes et outils utilisés dans le SI

## 3.Exemples bibliothèques
**données** : livres, articles, etc.
**matériel et logiciel** : ordinateurs, imprimantes,logiciels, etc.
**ressources humaines** : personnel, administration, support, etc.
**procédures** : processus d'emprunt et de retour , etc...


**Exercice : Organisation de Voyages**

Une agence de voyages souhaite créer une base de données pour gérer ses activités. Son activité principale consiste à vendre des voyages à ses clients. Pour chaque vente, il est nécessaire de savoir :
- Quel client a acheté
- Quel voyage est concerné 
- Quel conseiller a effectué la vente

**Contraintes métier :**
- Un client peut acheter plusieurs voyages
- Un conseiller peut vendre plusieurs voyages
- Un voyage peut être vendu à plusieurs clients
- Pour chaque vente, il faut enregistrer la date et le prix de vente
- Un conseiller ne peut vendre qu'une seule fois le même voyage au même client
- Les conseillers travaillent à temps partiel et ne peuvent pas faire plus de 20 ventes par mois

**Questions :**

1. Identifiez les entités nécessaires pour ce système

2. Proposez un MCD avec une relation ternaire

3. Analysez si cette relation ternaire est optimale en étudiant les cardinalités

4. Si nécessaire, proposez une décomposition en relations binaires plus efficace

5. Justifiez votre choix final (garder la relation ternaire ou la décomposer)

**Note** : Ne donnez pas votre réponse tout de suite. Prenez le temps d'analyser les contraintes métier et leur impact sur la modélisation.



**EXERCICE : École de Musique**

Une école de musique souhaite mettre en place une base de données pour gérer son fonctionnement. Voici les règles métier :

**Contraintes de gestion :**
1. Chaque professeur est identifié par un numéro unique et peut enseigner plusieurs instruments
2. Un élève peut suivre des cours avec différents professeurs pour différents instruments
3. Un professeur ne peut pas être son propre superviseur
4. Les professeurs expérimentés supervisent les nouveaux professeurs
5. Un professeur débutant doit obligatoirement avoir un superviseur
6. Un élève ne peut pas suivre deux cours du même instrument avec des professeurs différents
7. Pour chaque cours, on doit garder une trace des évaluations trimestrielles
8. Le niveau d'un élève pour un instrument détermine automatiquement son groupe de cours
9. Un professeur ne peut pas évaluer un élève qu'il ne forme pas

**Questions :**

1. Identifiez les entités nécessaires

2. Identifiez :
   - Les dépendances fonctionnelles (DF)
   - Les contraintes d'intégrité fonctionnelle (CIF)
   - Les contraintes d'intégrité multiple (CIM)
   - Les associations réflexives si nécessaire

3. Proposez un MCD qui respecte toutes ces contraintes en indiquant :
   - Les cardinalités
   - Les CIF (avec les flèches en pointillés)
   - Les associations nécessaires

4. Justifiez vos choix de modélisation, particulièrement pour :
   - La gestion des superviseurs
   - La gestion des évaluations
   - La gestion des niveaux et groupes


