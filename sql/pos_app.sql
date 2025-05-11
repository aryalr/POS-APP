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