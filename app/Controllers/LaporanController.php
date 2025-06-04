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

      // Hitung total penjualan
      $total = 0;
      foreach ($nota as $item) {
        $total += $item['subtotal'];
      }

      $this->smarty->assign('nota', $nota);
      $this->smarty->assign('total', $total); // kirim total ke template
      $this->smarty->display('laporan/print.tpl');
    } else {
      echo "ID tidak ditemukan.";
    }
  }
}
