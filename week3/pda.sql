DROP TABLE bikes;
DROP TABLE shops;


CREATE TABLE shops(
id SERIAL PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE bikes(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
sold BOOLEAN,
shop_id int8 REFERENCES shops(id)
);

INSERT INTO shops(name) VALUES('A star');
INSERT INTO shops(name) VALUES('Fast and Furious');

INSERT INTO bikes(name, sold, shop_id) VALUES('Honda', false, 1);
INSERT INTO bikes(name, sold, shop_id) VALUES('Virago', false, 2);
INSERT INTO bikes(name, sold, shop_id) VALUES('Katana', false, 1);
INSERT INTO bikes(name, sold, shop_id) VALUES('Ninja', true, 2);

 SELECT * FROM bikes ORDER BY sold;

UPDATE bikes SET sold = true WHERE id = 1;
UPDATE bikes SET sold = true WHERE id = 3;

DELETE FROM bikes WHERE id = 3;

SELECT * FROM shops;
SELECT * FROM bikes;
SELECT * FROM bikes WHERE shop_id = 1;
SELECT * FROM bikes WHERE sold = true;
SELECT * FROM bikes ORDER BY name,sold;
