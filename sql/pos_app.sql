-- 1. Buat dan pilih database
CREATE DATABASE IF NOT EXISTS pos_app;
USE pos_app;

-- 2. Tabel users
CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'kasir') DEFAULT 'kasir'
);

-- 3. Tabel suppliers
CREATE TABLE suppliers (
    id_supplier INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_info TEXT
);

-- 4. Tabel products
CREATE TABLE products (
    id_product INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    stock INT DEFAULT 0,
    purchase_price DECIMAL(10,2) NOT NULL,
    selling_price DECIMAL(10,2) NOT NULL,
    id_supplier INT,
    FOREIGN KEY (id_supplier) REFERENCES suppliers(id_supplier)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- 5. Tabel sales
CREATE TABLE sales (
    id_sale INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(12,2),
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES users(id_user)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- 6. Tabel sale_details
CREATE TABLE sale_details (
    id_sale_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_sale INT NOT NULL,
    id_product INT NOT NULL,
    quantity INT NOT NULL,
    selling_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_sale) REFERENCES sales(id_sale)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_product) REFERENCES products(id_product)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- 7. Tabel purchase_logs
CREATE TABLE purchase_logs (
    id_purchase INT AUTO_INCREMENT PRIMARY KEY,
    id_product INT NOT NULL,
    id_supplier INT NOT NULL,
    quantity INT NOT NULL,
    purchase_price DECIMAL(10,2) NOT NULL,
    purchase_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_product) REFERENCES products(id_product)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_supplier) REFERENCES suppliers(id_supplier)
        ON DELETE CASCADE ON UPDATE CASCADE
);


-- Insert users
INSERT INTO users (username, password, role) VALUES
('admin', MD5('admin123'), 'admin'),
('kasir1', MD5('kasir123'), 'kasir');

-- Insert suppliers
INSERT INTO suppliers (supplier_name, contact_info) VALUES
('PT Sumber Makmur', 'Jl. Merdeka No. 10, Jakarta'),
('CV Amanah Sejahtera', 'Jl. Raya Bandung No. 25, Bandung');

-- Insert products
INSERT INTO products (product_name, stock, purchase_price, selling_price, id_supplier) VALUES
('Beras Premium 5kg', 50, 50000.00, 65000.00, 1),
('Minyak Goreng 2L', 30, 25000.00, 32000.00, 2),
('Gula Pasir 1kg', 40, 10000.00, 13000.00, 1);

-- Insert sales
INSERT INTO sales (sale_date, total_amount, id_user) VALUES
(NOW(), 130000.00, 2);

-- Insert sale_details
INSERT INTO sale_details (id_sale, id_product, quantity, selling_price) VALUES
(1, 1, 1, 65000.00),
(1, 3, 2, 13000.00);

-- Insert purchase_logs
INSERT INTO purchase_logs (id_product, id_supplier, quantity, purchase_price) VALUES
(1, 1, 100, 50000.00),
(2, 2, 80, 25000.00),
(3, 1, 60, 10000.00);
