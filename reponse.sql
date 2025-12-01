-- SELECT nom, date_inscription FROM clients WHERE date_inscription > '2025-01-01';
-- SELECT nom, email from clients WHERE nom like '%e%';
-- SELECT nom, email FROM clients WHERE email is NULL;
-- SELECT client_id, nom, email FROM clients WHERE client_id >= 5 and client_id <= 10
-- SELECT nom, email from clients WHERE nom NOT like 'M%';
-- SELECT nom, email, date_inscription from clients WHERE date_inscription < '2023-01-01' OR nom like '%ad%';
-- SELECT * from clients where email IN ('emma.caron@example.com' , 'karim.haddad@example.com')
-- SELECT nom, email, date_inscription from clients WHERE date_inscription BETWEEN '2024-01-01' AND '2024-03-01';
-- SELECT * from clients WHERE nom NOT LIKE '%Dupont%';

---------------

--SELECT c.nom, co.commande_id FROM clients c 
--LEFT  JOIN commandes co ON c.client_id = co.client_id;

--SELECT co.commande_id, c.nom, co.statut FROM commandes co 
--JOIN clients c ON c.client_id = co.client_id;

--SELECT c.nom, co.commande_id, co.date_commande, co.statut FROM commandes co
--JOIN clients c ON co.client_id = c.client_id
--JOIN lignes_commandes lc ON co.commande_id = lc.commande_id
--JOIN produits p ON lc.produit_id = p.produit_id
--WHERE c.nom LIKE 'Alice%';

--SELECT c.nom, co.commande_id, co.date_commande, co.statut FROM clients c
--JOIN commandes co ON c.client_id = co.client_id 
--WHERE co.commande_id is NULL;

--SELECT co.commande_id, p.nom, co.statut, lc.quantite FROM commandes co 
--JOIN lignes_commandes lc ON co.commande_id = lc.commande_id
--JOIN produits p ON p.produit_id = lc.produit_id

--SELECT c.nom, p.nom, lc.quantite FROM clients c
--JOIN commandes co ON c.client_id = co.client_id
--JOIN lignes_commandes lc ON lc.commande_id = co.commande_id
--JOIN produits p ON p.produit_id = lc.produit_id;

--SELECT DISTINCT COUNT(*) FROM produits;

--SELECT categorie, Round(AVG(prix),2) FROM produits
--GROUP BY categorie;

--SELECT co.commande_id, p.nom, prix_unitaire, quantite, prix_unitaire * quantite AS Prix_total from commandes co
--JOIN lignes_commandes lc ON lc.commande_id = co.commande_id
--JOIN produits p ON p.produit_id = lc.produit_id;


--Afficher le client qui a passé le plus de commandes.

--SELECT  commandes.client_id, COUNT(commandes.client_id) AS nb_commandes FROM commandes
--GROUP BY  commandes.client_id
--ORDER BY nb_commandes DESC
--LIMIT 1;

--Calculer la somme des stocks disponibles par famille de produits.

--SELECT famille, SUM(stock) AS Stock_total FROM produits
--GROUP BY famille;

--Afficher l’écart-type des prix des produits
--pour analyser la dispersion.

--SELECT categorie, STDDEV(prix) AS dispersion_prix FROM produits
--GROUP BY categorie;


--Calculer le montant total des ventes par client.

--SELECT c.nom , sum(lc.quantite * lc.prix_unitaire) AS Mtn_total FROM clients c
--JOIN commandes co ON c.client_id = co.client_id
--JOIN lignes_commandes lc ON lc.commande_id = co.commande_id
--GROUP BY c.nom;

--Afficher les commandes passées en 2025 et leur nombre

SELECT EXTRACT(YEAR FROM date_commande) AS annee, COUNT(*) AS nb_commandes
FROM commandes
WHERE EXTRACT(YEAR FROM date_commande) = '2025'
GROUP BY annee;

--Calculer le prix minimum, maximum et moyen des produits commandés.

