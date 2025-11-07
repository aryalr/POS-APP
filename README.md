# Aplikasi POS (Point of Sale)

Aplikasi Point of Sale (POS) sederhana yang dibangun menggunakan PHP native dengan struktur MVC-like dan template engine Smarty.

## Fitur Utama

-   **Autentikasi Pengguna**: Sistem login untuk mengamankan akses.
-   **Manajemen Produk**: Operasi CRUD (Create, Read, Update, Delete) untuk produk.
-   **Manajemen Supplier**: Operasi CRUD untuk data supplier.
-   **Transaksi Penjualan**: Mencatat transaksi penjualan produk.
-   **Laporan**: Melihat laporan penjualan dan detail transaksi.
-   **Cetak Struk**: Kemampuan untuk mencetak bukti transaksi.

## Teknologi yang Digunakan

-   **Backend**: PHP Native
-   **Template Engine**: Smarty
-   **Database**: MySQL / MariaDB
-   **Dependency Manager**: Composer
-   **Web Server**: Apache, Nginx, atau sejenisnya.

## Prasyarat

Sebelum memulai, pastikan Anda telah menginstal perangkat lunak berikut:
-   PHP (disarankan versi 7.4 atau lebih baru)
-   Composer
-   Web Server (contoh: XAMPP, Laragon, Nginx)
-   Database Server (MySQL atau MariaDB)

## Panduan Instalasi

1.  **Clone Repositori**
    Clone repositori ini ke mesin lokal Anda.
    ```bash
    git clone https://github.com/aryalr/POS-APP.git
    cd POS-APP
    ```

2.  **Install Dependensi**
    Install semua dependensi PHP menggunakan Composer.
    ```bash
    composer install
    ```

3.  **Setup Database**
    -   Buat sebuah database baru di server MySQL/MariaDB Anda (misalnya dengan nama `pos_app`).
    -   Import skema dan data awal dari file `sql/pos_app.sql` ke dalam database yang baru Anda buat.
      ```sh
      mysql -u <username> -p pos_app < sql/pos_app.sql
      ```

4.  **Konfigurasi Koneksi Database**
    Buka file `app/Config/Database.php` dan sesuaikan kredensial database (host, username, password, dan nama database) sesuai dengan pengaturan lokal Anda.
    ```php
    <?php

    namespace App\Config;

    class Database
    {
        public static function getConfig(): array
        {
            return [
                'driver'   => 'mysql',
                'host'     => 'localhost', // Sesuaikan dengan host Anda
                'port'     => '3306',
                'database' => 'pos_app',   // Sesuaikan dengan nama database Anda
                'username' => 'root',      // Sesuaikan dengan username Anda
                'password' => '',          // Sesuaikan dengan password Anda
                'charset'  => 'utf8mb4',
                'collation'=> 'utf8mb4_unicode_ci',
                'prefix'   => '',
            ];
        }
    }
    ```

5.  **Konfigurasi Web Server**
    Arahkan *document root* dari web server Anda ke direktori `public/` pada proyek ini.

6.  **Jalankan Aplikasi**
    Buka browser dan akses URL yang telah Anda konfigurasikan (misalnya `http://localhost/POS-APP/public` atau `http://pos-app.test`). Anda akan diarahkan ke halaman login.

## Struktur Folder

```
POS-APP/
├── app/                # Logika inti aplikasi (Models, Controllers, Middleware)
├── public/             # Document root, titik masuk aplikasi (index.php)
├── resources/          # Template views (.tpl) dan aset lainnya
├── routes/             # Definisi rute URL (web.php)
├── sql/                # File dump skema database
├── vendor/             # Dependensi dari Composer
└── composer.json       # File konfigurasi Composer
```
