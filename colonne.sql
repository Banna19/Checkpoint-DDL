ALTER TABLE PRODUIT
ADD CATEGORIE VARCHAR2(20);

ALTER TABLE ORDERS
ADD ORDERDATE DATE DEFAULT SYSDATE;