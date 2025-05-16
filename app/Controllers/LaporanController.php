<?php

namespace App\Controllers;

use App\Models\Laporan;
use Smarty;

class LaporanController
{
  private $smarty;

  public function __construct(Smarty $smarty)
  {
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
}
