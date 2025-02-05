<style>
/* Styles de base pour le document Markdown */
body {
    font-family: 'Open Sans', sans-serif;
    line-height: 1.6;
    max-width: 900px;
    padding: 2rem;
    color: #333;
    word-wrap: balance;
    background-color: #f9f9f9;
}


/* Titres */
h1, h2, h3, h4, h5, h6 {
    font-family: 'Poppins', sans-serif;
    color: #2c3e50;
    margin-top: 1rem;
    font-weight: 600;
}
h1 { font-size: 2rem; solid #3498db; }
h2 { font-size: 1.75rem;  solid #2ecc71; }
h3 { font-size: 1.25rem; color:#301d87; }
h4 { font-size: 1rem; color: #9b59b6; }

/* Liens */
a {
    color: #3498db;
    text-decoration: none;
    transition: all 0.3s ease;
}

a:hover {
    color: #2980b9;
}

/* Paragraphes et texte */
p {
    text-align: justify;
}

/* Listes */
ul, ol {
    padding-left: 2rem;
    margin-bottom: 1rem;
}

li {
    margin-bottom: 0.5rem;
}

/* Code */
code {
    background-color: #f8f9fa;
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
    font-family: 'Fira Code', monospace;
    font-size: 0.9em;
    color: #e83e8c;
}

pre {
    background-color: #2c3e50;
    color: #ecf0f1;
    padding: 1rem;
    border-radius: 8px;
    overflow-x: auto;
    margin: 1.5rem 0;
}

pre code {
    background-color: transparent;
    color: inherit;
    padding: 0;
}

/* Blockquotes */
blockquote {
    border-left: 4px solid #3498db;
    margin: 1.5rem 0;
    padding: 1rem;
    background-color: #ecf0f1;
    font-style: italic;
}

/* Tables */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 1.5rem 0;
}

th, td {
    padding: 0.75rem;
  border:1px solid lightgrey !important;
}

td{
}

th {
    background-color: #3498db;
    color: white;
}

tr:nth-child(even) {
    background-color: #f8f9fa;
}

/* Images */
img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin: 1.5rem 0;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Séparateur horizontal */
hr {
    border: 0;
    height: 2px;
    background: linear-gradient(to right, #3498db, #2ecc71);
    margin: 2rem 0;
}

/* Mise en évidence */
mark {
    background-color: #ffd700;
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
}

/* Animations de transition */
* {
    transition: all 0.3s ease;
}

/* Media Queries pour la responsivité */
@media (max-width: 768px) {
    body {
        padding: 1rem;
    }
    
    h1 { font-size: 2rem; }
    h2 { font-size: 1.75rem; }
    h3 { font-size: 1.5rem; }
    h4 { font-size: 1.25rem; }
}

.module {
    font-size: 2.5rem;
    color: #f8f9fa;
    background-color: #3498db;
    text-align: center;
    padding: 0.5rem;
    margin: 1rem;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
</style>




# **Système d’Information pour la Gestion des Salariés et des Performances d’Entreprise**  

## 📋 **Contexte et Besoin**  
Une entreprise souhaite développer un **système d'information** afin d’améliorer la gestion de ses ressources humaines et le suivi de ses performances financières. Ce système devra centraliser les informations relatives aux **salariés**, aux **postes** qu'ils occupent, aux **grades** qu'ils obtiennent au cours de leur carrière, ainsi qu’à la gestion des **bulletins de salaire** et des **résultats financiers** de l’entreprise.  

L’objectif est de disposer d’un outil fiable et efficace, capable d'assurer la **traçabilité des données**, de faciliter l’administration des ressources humaines, et de générer des documents essentiels tels que les **bulletins de salaire**, en s’appuyant sur les performances de l’entreprise.  

---

## 🗂️ **Description des Données et Règles de Gestion**  

L’entreprise est identifiée par son **SIRET**, accompagné de sa **désignation commerciale** et de son **adresse**. Elle est implantée dans une **ville** caractérisée par un **nom** et un **code postal**. Chaque entreprise peut **employer plusieurs salariés**, mais un salarié ne peut être rattaché qu’à **une seule entreprise** à la fois.  

Chaque **salarié** possède un **matricule** propre qui permet de l’identifier de manière unique. En plus de ce matricule, des informations telles que le **nom**, le **prénom**, l’**adresse personnelle**, ainsi que la **date d’entrée** dans l’entreprise sont enregistrées. Les salariés **résident dans des villes spécifiques**, ce qui permet de lier des informations géographiques aux données personnelles.  

Au sein de l’entreprise, chaque salarié **occupe un poste** défini par un intitulé précis. Ce poste peut comporter une **majoration salariale** spécifique, selon les responsabilités associées. Un poste peut être **occupé par plusieurs salariés**, mais un salarié n’occupe **qu’un poste à la fois**.  

Tout au long de sa carrière, un salarié peut obtenir **plusieurs grades successifs**. Chaque grade est défini par une **lettre** et un **salaire associé**. Il est essentiel de conserver la **date d’obtention de chaque grade** afin de suivre avec précision l’évolution de la carrière du salarié.  

Les salariés reçoivent des **bulletins de salaire** de manière mensuelle. Ces bulletins, propres à chaque salarié, comportent des informations clés telles que la **date d’émission**, des **primes de résultat**, et éventuellement des **primes exceptionnelles**. La génération de ces bulletins est directement liée aux **résultats financiers** de l’entreprise, permettant ainsi d'ajuster certaines composantes de la rémunération en fonction des performances réalisées.  

Les **résultats financiers de l’entreprise** sont enregistrés chaque mois. Ils comprennent des informations sur le **chiffre d’affaires réalisé** ainsi que la **période concernée**. Ces résultats servent de base pour l’analyse des performances de l’entreprise et l’élaboration des bulletins de salaire.  

---

## 🎯 **Fonctionnalités Attendues du Système d’Information**  
Le système d'information devra permettre de :  
- Gérer de manière centralisée les informations relatives aux **entreprises**, aux **villes**, aux **salariés**, aux **postes**, aux **grades** et aux **résultats financiers**.  
- Assurer le **suivi de l’évolution des grades des salariés**, en conservant l’historique des dates d’obtention.  
- **Générer automatiquement les bulletins de salaire**, en prenant en compte les performances financières de l’entreprise et les spécificités de chaque salarié.  
- Permettre la **consultation et l’analyse des résultats financiers mensuels** de l’entreprise, afin de faciliter la prise de décisions stratégiques.  

Ce système devra garantir la **cohérence des données**, la **sécurité des informations sensibles**, ainsi qu’une **interface intuitive** pour les utilisateurs en charge de la gestion des ressources humaines et des finances de l’entreprise.  

---

## 📝 **Travail à Réaliser**  

Pour concevoir ce système d'information, vous devez réaliser les livrables suivants :  

1. **Modèle Conceptuel de Données (MCD)**  
   - Représentez les différentes entités (entreprise, salarié, poste, grade, etc.) et les associations entre elles.  
   - Assurez-vous d’identifier correctement les clés primaires et les cardinalités des relations.  

2. **Dictionnaire des Données**  
   - Décrivez chaque entité et chaque attribut du MCD de manière détaillée.  
   - Précisez la nature des données (texte, date, numérique, etc.) ainsi que les éventuelles contraintes (unicité, non-nullité, etc.).  

3. **Modèle Logique de Données (MLD)**  
   - Transformez le MCD en un modèle relationnel prêt à être implémenté dans un Système de Gestion de Base de Données (SGBD).  
   - Définissez les tables, les clés primaires et étrangères, ainsi que les relations entre les tables.  

4. **Modèle Physique de Données (MPD)**  
   - Décrivez la structure finale de la base de données en tenant compte des spécificités du SGBD choisi.  
   - Incluez les types de données, les index éventuels, les contraintes d’intégrité, et les optimisations nécessaires pour les performances.  
 
