DROP DATABASE IF EXISTS shop;

CREATE DATABASE shop;

USE shop;

DROP TABLE IF EXISTS purchase_product;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS purchase;

CREATE TABLE product (
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(200),
    price DECIMAL(5,2),
    PRIMARY KEY (id)
);

CREATE TABLE purchase (
    id INTEGER AUTO_INCREMENT,
    day DATE,
    PRIMARY KEY (id)
);

CREATE TABLE purchase_product (
    id_purchase INTEGER,
    id_product INTEGER,
    unidades INTEGER,
    FOREIGN KEY (id_purchase) REFERENCES purchase(id)
    	ON UPDATE CASCADE
    	ON DELETE CASCADE,
    FOREIGN KEY (id_product) REFERENCES product(id)
    	ON UPDATE CASCADE
    	ON DELETE CASCADE,
    PRIMARY KEY (id_purchase, id_product)
);

INSERT INTO product VALUES (NULL, "T-shirt", 15.55);
INSERT INTO product VALUES (NULL, "Jeans", 35.92);
INSERT INTO product VALUES (NULL, "Jacket", 67.04);

INSERT INTO purchase VALUES (NULL, "2024-01-03");
INSERT INTO purchase VALUES (NULL, "2024-01-04");
INSERT INTO purchase VALUES (NULL, "2024-01-05");

INSERT INTO purchase_product VALUES (1, 1, 2);
INSERT INTO purchase_product VALUES (1, 2, 1);
INSERT INTO purchase_product VALUES (2, 1, 1);
INSERT INTO purchase_product VALUES (2, 2, 1);
INSERT INTO purchase_product VALUES (3, 3, 2);