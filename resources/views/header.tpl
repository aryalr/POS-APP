<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title|default:"POS App"}</title>
    <link rel="icon" href="favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="icon" href="favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <style>
        .navbar-brand {
            font-weight: 700;
            letter-spacing: 1px;
        }

        .navbar {
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Nav-link standar (jika ada yang tidak dijadikan tombol) */
        .nav-link {
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #0d6efd !important;
            /* Bootstrap primary blue */
        }

        /* Navbar Toggler */
        .navbar-toggler {
            border: none;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        /* CSS untuk Tombol Logout */
        .logout-btn {
            color: #f8f9fa !important;
            /* Warna teks putih untuk outline light */
            border-color: #f8f9fa !important;
            /* Warna border putih untuk outline light */
            /* Overwrite hover dari .nav-link */
            background-color: transparent !important;
        }

        .logout-btn:hover {
            color: #212529 !important;
            /* Warna teks gelap saat hover */
            background-color: #f8f9fa !important;
            /* Background putih saat hover */
            border-color: #f8f9fa !important;
        }

        /* CSS untuk Nav-links yang dijadikan Tombol */
        .navbar-nav .nav-item {
            margin-right: 0.5rem;
            /* Memberi jarak antar tombol */
        }

        .navbar-nav .nav-item:last-child {
            margin-right: 0;
            /* Tidak ada margin kanan untuk item terakhir */
        }

        .navbar-nav .nav-item .nav-link.btn {
            /* Menyesuaikan padding agar mirip tombol Bootstrap sm */
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
            /* Font size untuk btn-sm */
            line-height: 1.5;
            border-radius: 0.25rem;
            /* Border radius untuk btn */
            display: inline-flex;
            /* Agar ikon dan teks sejajar dan rapi */
            align-items: center;
            /* Sejajarkan vertikal */
            justify-content: center;
            /* Pusatkan horizontal jika perlu */
            text-align: center;
            white-space: nowrap;
            /* Mencegah teks putus baris */
            /* Mengatur warna default dan hover agar sesuai dengan btn-outline-light */
            color: #f8f9fa;
            /* Light color */
            border: 1px solid #f8f9fa;
            /* Light border */
            transition: all 0.15s ease-in-out;
            /* Transisi untuk hover */
        }

        /* Hover state untuk nav-link yang dijadikan tombol */
        .navbar-nav .nav-item .nav-link.btn:hover {
            color: #0d6efd !important;
            /* Warna teks biru saat hover */
            background-color: transparent !important;
            /* Pastikan background tetap transparan */
            border-color: #0d6efd !important;
            /* Warna border biru saat hover */
        }

        /* Active state untuk nav-link yang dijadikan tombol */
        .navbar-nav .nav-item .nav-link.btn.active {
            color: #fff !important;
            /* Teks putih untuk active state */
            background-color: #0d6efd !important;
            /* Background biru untuk active state */
            border-color: #0d6efd !important;
            /* Border biru untuk active state */
        }

        /* Gaya untuk ikon di nav-link */
        .nav-link i {
            margin-right: 0.3rem;
            /* Memberi sedikit jarak antara ikon dan teks */
            vertical-align: middle;
            /* Memastikan ikon sejajar dengan teks */
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/pos-app/public"><i class="bi bi-cart-dash"></i> Toko Berkah Jaya</a>
                <nav class="navbar navbar-dark bg-dark">
                    <span class="navbar-text d-flex align-items-center">
                        {if isset($smarty.session.user)}
                            Anda login sebagai, {$smarty.session.user.name|default:"admin"}
                            <span class="mx-2">|</span>
                            <a class="btn btn-outline-light btn-sm logout-btn" href="?page=logout&action=logout">
                                Logout
                            </a>
                        {/if}
                    </span>
                </nav>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link btn btn-outline-light btn-sm {if isset($page) && $page == 'supplier'}active{/if}"
                                href="?page=supplier"><i class="bi bi-truck"></i> Supplier</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-outline-light btn-sm {if isset($page) && $page == 'product'}active{/if}"
                                href="?page=product"><i class="bi bi-box-seam"></i> Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-outline-light btn-sm {if isset($page) && $page == 'transaction'}active{/if}"
                                href="?page=transaction"><i class="bi bi-cart-check"></i> Transaksi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-outline-light btn-sm {if isset($page) && $page == 'report'}active{/if}"
                                href="?page=report"><i class="bi bi-graph-up"></i> Laporan</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-4">

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>