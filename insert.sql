USE db_mspr;

-- Insertion dans T_Instance
INSERT INTO T_Instance(Num_serie, Version_instance, Version_OS, Script_installe, Etat, Date_peremption) VALUES 
('EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Instance1.1', 'V1', 'Script2.3', 'Bon', '2025-04-17'),
('EF0C4B81-D326-42F0-9B90-888CC5C917F9', 'Instance1.2', 'V3', 'Script2.3', 'Bon', '2050-04-17'),
('EF0C4B81-D326-43F0-9B90-888CC5C917F8', 'Instance1.3.2', 'V1', 'Script4.3', 'Bon', '2065-04-17'),
('EF0C4B81-G326-42F0-9B90-888CC5C917F8', 'Instance1.3.4', 'V3', 'Script8.3', 'Bon', '2075-04-17');

-- Insertion dans T_Client
INSERT INTO T_Client(Id_Client, Nom, Prenom, Adresse, Siret, Contact_principal) VALUES 
('Client1-1', 'Nom1', 'Prenom1', 'Adresse1', 55327987900672, '0695271613'),
('Client1-2', 'Nom2', 'Prenom2', 'Adresse2', 55327987900673, '0695271623'), 
('Client1-3', 'Nom3', 'Prenom3', 'Adresse3', 55327987900674, '0695271615');  -- Correction de l'ID Client pour éviter les doublons

-- Insertion dans T_Prestataire
INSERT INTO T_Prestataire (Id_Prestataire, Nom_Prestataire, Adresse, Siret, Contact_principal) VALUES
('EF0C4B81', 'Presta1', 'Adresse1', 123456789, 'Contact1'),
('EF0C4B82', 'Presta2', 'Adresse2', 223456789, 'Contact2'),
('EF0C4B83', 'Presta3', 'Adresse3', 323456789, 'Contact3'),
('EF0C4B84', 'Presta4', 'Adresse4', 423456789, 'Contact4'),
('EF0C4B85', 'Presta5', 'Adresse5', 523456789, 'Contact5'),
('EF0C4B86', 'NFL IT', 'Adresse6', 623456789, 'Contact6');

-- Insertion dans T_Technicien
INSERT INTO T_Technicien(Id_Technicien, Nom, Prenom, Role) VALUES 
('Technicien-D321', 'NomTechnicien1', 'PrenomTechnicien1', ''),
('Technicien-D322', 'NomTechnicien2', 'PrenomTechnicien2', ''),
('Technicien-D323', 'NomTechnicien3', 'PrenomTechnicien3', ''),
('Technicien-D324', 'NomTechnicien4', 'PrenomTechnicien4', ''),
('Technicien-D325', 'NomTechnicien5', 'PrenomTechnicien5', '');

-- Insertion dans T_Evenement
INSERT INTO T_Evenement(Id_Evenement, Date_Evenement, Type_Evenement, Description) VALUES 
('Evenement-42F0', '2023-05-08', 'Présentation', ''),
('Evenement-42F1', '2023-06-08', 'Présentation', ''),
('Evenement-42F2', '2023-07-08', 'Présentation', ''),
('Evenement-42F3', '2024-03-18', 'Présentation', '');

-- Insertion dans T_Historique_Demarrage
INSERT INTO T_Historique_Demarrage(Date_Redemarrage) VALUES 
('2023-06-08'), ('2024-06-08'), ('2024-07-08'), ('2024-06-08'), ('2024-06-08');

-- Insertion dans T_Licence
INSERT INTO T_Licence(Id_Licence, Id_INSTANCE, Date_Debut, Date_Fin, Etat) VALUES 
('Licence-888CC5C917F8', 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', '2023-06-08', '2025-04-17', 'Stable'), 
('Licence-888CC5C917G8', 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', '2024-06-08', '2023-04-17', 'Développement');

-- Insertion dans T_Avoir
INSERT INTO T_Avoir(Id_Instance, Id, Id_Evenement, Date_Fin) VALUES 
('EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Evenement-42F0', '2023-06-08'), 
('EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Evenement-42F1', '2023-07-08');

-- Insertion dans T_Realiser_Redemarrage
INSERT INTO T_Realiser_Redemarrage(Id_Historique, Id_INSTANCE, Raison) VALUES 
(1, 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Interruption du service mysql'),
(2, 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Interruption du service corosync'),
(3, 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Interruption de toutes les services');

-- Insertion dans T_Intervenir
INSERT INTO T_Intervenir(Id_Instance, Technicien, Motif_Tntervention, Date_Intervention) VALUES 
('EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Technicien-D321', 'Panne réseau', '2024-06-08'), 
('EF0C4B81-D326-42F0-9B90-888CC5C917F9', 'Technicien-D321', 'Monté de version', '2024-06-08'), 
('EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Technicien-D324', 'Panne réseau', '2024-06-08');

-- Insertion dans T_Affecter
INSERT INTO T_Affecter(Client, Technicien, Date_Affectation, Id_Prestataire) VALUES 
('Client1-1', 'Technicien-D321', '2024-06-08', 'EF0C4B81'), 
('Client1-1', 'Technicien-D322', '2024-06-08', 'EF0C4B81');

-- Insertion dans T_Deployer
INSERT INTO T_Deployer(Ip_Deploiement, Id_Instance, Id_Client, Date_Deploiement, Id_Prestataire) VALUES 
('192.168.0.30', 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Client1-1', '2023-01-05', 'EF0C4B81'), 
('80.168.20.30', 'EF0C4B81-D326-42F0-9B90-888CC5C917F8', 'Client1-2', '2023-01-05', 'EF0C4B81');
