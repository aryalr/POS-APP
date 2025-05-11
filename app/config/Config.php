<?php
// Konfigurasi dasar
define('DB_HOST', 'localhost');
define('DB_NAME', 'pos_app');
define('DB_USER', 'root');
define('DB_PASS', ''); // kosongkan jika default XAMPP

define('BASE_URL', 'http://localhost/pos-app/public/');

// Lokasi folder template Smarty
define('SMARTY_TEMPLATE_DIR', __DIR__ . '/../views/templates/');
define('SMARTY_COMPILE_DIR', __DIR__ . '/../views/templates_c/');
