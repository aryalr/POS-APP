<?php

namespace App\Controllers;

use App\Models\Laporan;
use Smarty;
use App\Middleware\AuthMiddleware;

class LaporanController
{
  private $smarty;

  public function __construct(Smarty $smarty)
  {
    AuthMiddleware::handle();
    $this->smarty = $smarty;
  }

  public function index()
  {
    $laporan = Laporan::getAllSalesReport();
    $this->smarty->assign('laporan', $laporan);
    $this->smarty->display('laporan/index.tpl');
  }

  public function detail()
  {
    $id = $_GET['id'] ?? null;
    if ($id) {
      $details = Laporan::getSaleDetails($id);
      $this->smarty->assign('details', $details);
      $this->smarty->display('laporan/detail.tpl');
    }
  }

  public function print()
  {
    $id = $_GET['id'] ?? null;
    if ($id) {
      $nota = Laporan::getSaleDetails($id);

      // Pastikan data nota ada sebelum melanjutkan
      if (empty($nota)) {
        echo "Nota dengan ID '$id' tidak ditemukan.";
        return; // Hentikan eksekusi jika nota kosong
      }

      // Hitung total penjualan
      $total = 0;
      foreach ($nota as $item) {
        $total += $item['subtotal'];
      }

      // --- BAGIAN BARU/MODIFIKASI UNTUK QR CODE ---
      // Data yang akan di-encode ke QR code.
      // Contoh: URL ke detail transaksi di aplikasi Anda.
      // Ganti "http://pos-app.test/transaction-details?id=" dengan URL asli Anda.
      // Pastikan URL ini bisa diakses dari luar jika QR code akan di-scan oleh pelanggan.
      $qr_data_content = "http://pos-app.test/transaction-details?id=" . $nota[0]['id_sale'];

      // Penting: URL encode data agar aman dalam URL QR code generator
      $qr_data_encoded = urlencode($qr_data_content);

      $this->smarty->assign('nota', $nota);
      $this->smarty->assign('total', $total);
      $this->smarty->assign('qr_code_data', $qr_data_encoded); // Kirim data QR ke template

      $this->smarty->display('laporan/print.tpl');
    } else {
      echo "ID tidak ditemukan.";
    }
  }
}
