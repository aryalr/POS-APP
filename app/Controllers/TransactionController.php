<?php

namespace App\Controllers;

use App\Models\Product;
use App\Models\Sale;
use Smarty;

class TransactionController
{
  private $smarty;

  public function __construct(Smarty $smarty)
  {
    $this->smarty = $smarty;
  }

  public function index()
  {
    $sales = Sale::getAll() ?? [];
    $this->smarty->assign('transactions', $sales);
    $this->smarty->display('transaction/index.tpl');
  }

  public function create()
  {
    $products = Product::getAll();
    $this->smarty->assign('products', $products);
    $this->smarty->display('transaction/create.tpl');
  }

  public function store()
  {
    $productIds = $_POST['id_product'];  // array
    $quantities = $_POST['quantity'];   // array
    $userId = 2; // hardcoded sementara

    $total = 0;
    $details = [];

    foreach ($productIds as $index => $productId) {
      $product = Product::find($productId);
      $price = $product['selling_price'];
      $qty = $quantities[$index];
      $subtotal = $price * $qty;

      $total += $subtotal;

      $details[] = [
        'product_id' => $productId,
        'quantity' => $qty,
        'price' => $price,
      ];
    }

    $saleId = Sale::insert($total, $userId);

    foreach ($details as $item) {
      Sale::insertDetail($saleId, $item['product_id'], $item['quantity'], $item['price']);
    }

    header('Location: index.php?page=transaction');
  }

  public function detail()
  {
    $id = $_GET['id'] ?? null;
    if ($id) {
      $sale = Sale::getById($id);
      $details = Sale::getDetails($id);
      $this->smarty->assign('transaction', $sale);
      $this->smarty->assign('details', $details);
      $this->smarty->display('transaction/detail.tpl');
    }
  }
}
