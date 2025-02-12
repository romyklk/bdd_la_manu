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

a{
    text-decoration: underline !important;
}
</style>


# Dictionnaire des données


### 1. **Salarie**

| Nom de la colonne | Type de donnée | Description                                                        |
| ----------------- | -------------- | ------------------------------------------------------------------ |
| **num_matricule** | Integer        | Identifiant unique du salarié.                                     |
| **nom**           | Varchar(255)   | Nom du salarié.                                                    |
| **prenom**        | Varchar(255)   | Prénom du salarié.                                                 |
| **adresse**       | Varchar(255)   | Adresse du salarié.                                                |
| **date_entree**   | Date           | Date d'entrée dans l'entreprise.                                   |
| **id_poste**      | Integer        | Clé étrangère vers la table `poste` (poste occupé).                |
| **id_ville**      | Integer        | Clé étrangère vers la table `ville` (lieu de résidence).           |
| **siret**         | Integer        | Clé étrangère vers la table `entreprise` (siret de l'entreprise).  |
| **ville**         | Varchar(255)   | Ville du salarié (optionnel, peut être redondant avec `id_ville`). |

---

### 2. **Poste**

| Nom de la colonne        | Type de donnée | Description                         |
| ------------------------ | -------------- | ----------------------------------- |
| **id_poste**             | Integer        | Identifiant unique du poste.        |
| **titre_poste**          | Varchar(255)   | Titre du poste occupé.              |
| **majoration_salariale** | Decimal(10,2)  | Montant de la majoration salariale. |

---

### 3. **Ville**

| Nom de la colonne | Type de donnée | Description                     |
| ----------------- | -------------- | ------------------------------- |
| **id_ville**      | Integer        | Identifiant unique de la ville. |
| **nom_ville**     | Varchar(255)   | Nom de la ville.                |
| **code_postal**   | Varchar(10)    | Code postal de la ville.        |

---

### 4. **Entreprise**

| Nom de la colonne           | Type de donnée | Description                                                 |
| --------------------------- | -------------- | ----------------------------------------------------------- |
| **siret**                   | Integer        | Identifiant unique de l'entreprise.                         |
| **designation_commerciale** | Varchar(255)   | Dénomination commerciale de l'entreprise.                   |
| **adresse**                 | Varchar(255)   | Adresse de l'entreprise.                                    |
| **date_creation**           | Date           | Date de création de l'entreprise.                           |
| **id_ville**                | Integer        | Clé étrangère vers la table `ville` (lieu de l'entreprise). |

---

### 5. **Resultat_financier**

| Nom de la colonne   | Type de donnée | Description                                                       |
| ------------------- | -------------- | ----------------------------------------------------------------- |
| **id_resultat**     | Integer        | Identifiant unique du résultat financier.                         |
| **chiffre_affaire** | Decimal(15,2)  | Montant du chiffre d'affaires.                                    |
| **periode**         | Date           | Période du résultat financier.                                    |
| **siret**           | Integer        | Clé étrangère vers la table `entreprise` (siret de l'entreprise). |

---

### 6. **Bulletin**

| Nom de la colonne        | Type de donnée | Description                                                             |
| ------------------------ | -------------- | ----------------------------------------------------------------------- |
| **id_bulletin**          | Integer        | Identifiant unique du bulletin de salaire.                              |
| **date_emission**        | Date           | Date d'émission du bulletin.                                            |
| **prime_resultat**       | Decimal(10,2)  | Montant de la prime liée au résultat financier.                         |
| **prime_exceptionnelle** | Decimal(10,2)  | Montant de la prime exceptionnelle.                                     |
| **siret**                | Integer        | Clé étrangère vers la table `entreprise` (siret de l'entreprise).       |
| **num_matricule**        | Integer        | Clé étrangère vers la table `salarie` (numéro de matricule du salarié). |

---

### 7. **Grade**

| Nom de la colonne | Type de donnée | Description                  |
| ----------------- | -------------- | ---------------------------- |
| **id_grade**      | Integer        | Identifiant unique du grade. |
| **intitule**      | Varchar(255)   | Intitulé du grade.           |
| **salaire**       | Decimal(15,2)  | Salaire associé au grade.    |

---

### 8. **Obtient**

| Nom de la colonne  | Type de donnée | Description                                                             |
| ------------------ | -------------- | ----------------------------------------------------------------------- |
| **id_grade**       | Integer        | Clé étrangère vers la table `grade` (grade obtenu).                     |
| **num_matricule**  | Integer        | Clé étrangère vers la table `salarie` (numéro de matricule du salarié). |
| **date_obtention** | Date           | Date d'obtention du grade.                                              |

