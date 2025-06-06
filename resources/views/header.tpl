<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title|default:"POS App"}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons CSS -->
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

        .nav-link {
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #0d6efd !important;
        }

        .navbar-toggler {
            border: none;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/pos-app/public"><i class="bi bi-cart-dash"></i> POS App</a>
                <nav class="navbar navbar-dark bg-dark">
                    <span class="navbar-text">
                        {if isset($smarty.session.user)}
                            Selamat datang, {$smarty.session.user.name|default:"admin"} | <a
                                href="?page=logout&action=logout">Logout</a>
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
                            <a class="nav-link {if isset($page) && $page == 'supplier'}active{/if}"
                                href="?page=supplier">Supplier</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {if isset($page) && $page == 'product'}active{/if}"
                                href="?page=product">Produk</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {if isset($page) && $page == 'transaction'}active{/if}"
                                href="?page=transaction">Transaksi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {if isset($page) && $page == 'report'}active{/if}"
                                href="?page=report">Laporan</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-4">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>