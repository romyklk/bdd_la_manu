# MLD (Modèle Logique de Données)

CLIENT(id_client(PK), nom, prenom, email, password)

ADRESSE(id_adresse(PK),label, rue_numero, ville, code_postal, pays, #id_client)	

ARTICLE(reference(PK), description, prix_unitaire, titre,stock)

COMMANDE(id_commande(PK), date, etat,montant,#id_client)

DETAIL_COMMANDE(quantite,#reference,#id_commande)