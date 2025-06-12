<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <title>Nota Penjualan</title>
  <style>
    /*
         * GLOBAL STYLES
         * Pengaturan dasar untuk seluruh dokumen
         */
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      color: #000;
      font-size: 9.5px;
      /* Sedikit lebih kecil lagi */
      line-height: 1.2;
      /* Jarak antar baris lebih rapat */
      width: 58mm;
      box-sizing: border-box;
    }

    .container {
      width: 100%;
      padding: 4mm 2mm;
      /* Padding samping dikurangi, atas/bawah sesuai */
      box-sizing: border-box;
    }

    /*
         * HEADER SECTION
         * Styling untuk logo/ikon dan judul nota
         */
    .header {
      text-align: center;
      margin-bottom: 5px;
      padding-bottom: 3px;
      border-bottom: 1px dashed #000;
    }

    /* Jika menggunakan gambar logo, aktifkan kembali CSS ini */
    /* .header img {
            max-width: 35mm;
            height: auto;
            margin-bottom: 3px;
        } */

    .header .app-info {
      /* Styling untuk ikon dan teks "POS App" */
      font-size: 14px;
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
    }

    .header .app-info i {
      font-size: 16px;
      vertical-align: middle;
      margin-right: 3px;
    }

    .header h2 {
      margin: 0;
      font-size: 13px;
      /* Judul sedikit lebih kecil */
      text-transform: uppercase;
    }

    /*
         * TRANSACTION INFO SECTION
         * Styling untuk ID Transaksi, Tanggal, dan Kasir
         */
    .info-nota {
      margin-bottom: 4px;
      /* Dikurangi */
      font-size: 9.5px;
    }

    .info-nota p {
      margin: 1px 0;
      /* Jarak antar paragraf sangat rapat */
    }

    /*
         * PRODUCT TABLE SECTION
         * Styling untuk tabel daftar produk
         */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 4px;
      /* Dikurangi */
      margin-bottom: 8px;
      /* Sedikit dikurangi */
      font-size: 9.5px;
    }

    th,
    td {
      border: none;
      padding: 2px 0;
      /* Padding sangat kecil */
      text-align: left;
      vertical-align: top;
    }

    th {
      font-weight: bold;
      border-bottom: 1px dashed #000;
      padding-bottom: 3px;
      /* Dikurangi */
    }

    /* Mengoptimalkan lebar kolom tabel */
    th:nth-child(1),
    td:nth-child(1) {
      width: 45%;
      /* Produk */
    }

    th:nth-child(2),
    td:nth-child(2) {
      width: 15%;
      /* Jumlah */
      text-align: right;
    }

    th:nth-child(3),
    td:nth-child(3) {
      width: 20%;
      /* Harga */
      text-align: right;
    }

    th:nth-child(4),
    td:nth-child(4) {
      width: 20%;
      /* Subtotal */
      text-align: right;
    }

    /*
         * TOTAL SECTION
         * Styling untuk bagian total pembayaran
         */
    .total-section {
      text-align: right;
      margin-top: 6px;
      /* Dikurangi */
      font-size: 11.5px;
      /* Ukuran total sedikit lebih kecil dari sebelumnya */
      font-weight: bold;
      padding-top: 4px;
      /* Dikurangi */
      border-top: 1px dashed #000;
    }

    /*
         * QR CODE SECTION
         * Styling untuk kode QR dan pesan di bawahnya
         */
    .qr-code-section {
      text-align: center;
      margin-top: 10px;
      /* Dikurangi */
      padding-top: 8px;
      /* Dikurangi */
      border-top: 1px dashed #000;
    }

    .qr-code-section img {
      max-width: 28mm;
      /* QR code sedikit lebih kecil */
      height: auto;
      margin-bottom: 4px;
      /* Dikurangi */
    }

    .qr-code-section p {
      margin-top: 3px;
      /* Dikurangi */
      font-size: 8.5px;
      /* Teks QR sangat kecil */
      line-height: 1.1;
      /* Lebih rapat */
    }

    /*
         * PRINT MEDIA QUERIES
         * Pengaturan khusus saat mencetak dokumen
         */
    @media print {
      body {
        -webkit-print-color-adjust: exact;
        print-color-adjust: exact;
        width: 58mm;
        margin: 0;
        padding: 0;
      }

      .container {
        box-shadow: none;
        border-radius: 0;
        padding: 4mm 2mm;
        /* Sesuaikan padding agar pas saat cetak */
      }

      .header img {
        max-width: 35mm;
      }

      .qr-code-section img {
        max-width: 28mm;
      }
    }
  </style>
</head>

<body onload="window.print()">
  <div class="container">
    <div class="header">
      <div class="app-info">
        <i class="bi bi-cart-dash"></i> Berkah Jaya
      </div>
      <h2>Nota Transaksi</h2>
    </div>

    <div class="info-nota">
      <p><strong>ID Transaksi:</strong> {$nota[0].id_sale}</p>
      <p><strong>Tanggal:</strong> {$nota[0].sale_date}</p>
      <p><strong>Kasir:</strong> {$nota[0].username}</p>
    </div>

    <table>
      <thead>
        <tr>
          <th style="width: 45%;">Produk</th>
          <th style="width: 15%; text-align: right;">Jumlah</th>
          <th style="width: 20%; text-align: right;">Harga</th>
          <th style="width: 20%; text-align: right;">Subtotal</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$nota item=item}
          <tr>
            <td>{$item.product_name}</td>
            <td>{$item.quantity}</td>
            <td>Rp {$item.selling_price|number_format:0:',':'.'}</td>
            <td>Rp {$item.subtotal|number_format:0:',':'.'}</td>
          </tr>
        {/foreach}
      </tbody>
    </table>

    <div class="total-section">
      Total: Rp {$total|number_format:0:',':'.'}
    </div>

    <div class="qr-code-section">
      <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data={$qr_code_data}"
        alt="Scan untuk detail transaksi">
      <p>Terima kasih telah berbelanja!<br>Scan kode QR ini untuk detail transaksi atau info lainnya.</p>
    </div>
  </div>
</body>

</html>