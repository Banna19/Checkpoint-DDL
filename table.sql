CREATE TABLE CLIENT (
    ID_CLIENT INT PRIMARY KEY,
    NOM VARCHAR2(50),
    PRENOM VARCHAR2(50),
    EMAIL VARCHAR2(100),
    TELEPHONE VARCHAR2(15)
);

CREATE TABLE PRODUIT (
    ID_PRODUIT INT PRIMARY KEY,
    NOM VARCHAR2(100),
    PRIX DECIMAL(10, 2),
    QUANTITE INT,
    CONTRAINTE CHECK (QUANTITE >= 0)
);

CREATE TABLE ORDERS (
    ID_ORDER INT PRIMARY KEY,
    ID_CLIENT INT,
    FOREIGN KEY (ID_CLIENT) REFERENCES CLIENT(ID_CLIENT),
    DATE_COMMANDE DATE,
    CONSTRAINT CHECK (DATE_COMMANDE <= SYSDATE)
);

CREATE TABLE LIGNE_COMMANDE (
    ID_LIGNE INT PRIMARY KEY,
    ID_ORDER INT,
    ID_PRODUIT INT,
    QUANTITE INT,
    FOREIGN KEY (ID_ORDER) REFERENCES ORDERS(ID_ORDER),
    FOREIGN KEY (ID_PRODUIT) REFERENCES PRODUIT(ID_PRODUIT)
);