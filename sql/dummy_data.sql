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
