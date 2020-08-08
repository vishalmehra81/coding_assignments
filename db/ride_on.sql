DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS stocks;

CREATE TABLE brands (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT
);

CREATE TABLE stocks (
    id SERIAL PRIMARY KEY,
    qty INT
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    brand_id INT REFERENCES brands(id) ON DELETE CASCADE,
    stock_id INT REFERENCES stocks(id) ON DELETE CASCADE,
    description TEXT,
    size VARCHAR(255),
    cost_price FLOAT(20),
    selling_price FLOAT(20
);

