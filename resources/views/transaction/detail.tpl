{include file="../header.tpl"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-receipt me-2"></i>Detail Transaksi #{$transaction.id_sale}</h2>
    </div>
    <div class="card-body">
      <div class="mb-3">
        <p class="mb-1"><strong>Tanggal:</strong> {$transaction.sale_date}</p>
        <p class="mb-1"><strong>Kasir:</strong> {$transaction.username}</p>
        <p class="mb-0"><strong>Total:</strong> Rp {number_format($transaction.total_amount, 0, ',', '.')}</p>
      </div>

      <h4 class="mt-4 mb-3">Detail Produk:</h4>
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead class="table-dark">
            <tr>
              <th>Produk</th>
              <th>Jumlah</th>
              <th>Harga Satuan</th>
              <th>Subtotal</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$details item=detail}
              <tr>
                <td class="align-middle">{$detail.product_name}</td>
                <td class="align-middle">{$detail.quantity}</td>
                <td class="align-middle">Rp {number_format($detail.selling_price, 0, ',', '.')}</td>
                <td class="align-middle">Rp {number_format($detail.quantity * $detail.selling_price, 0, ',', '.')}</td>
              </tr>
            {foreachelse}
              <tr>
                <td colspan="4" class="text-center py-3">Tidak ada detail produk untuk transaksi ini.</td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
    <div class="card-footer">
      <a href="index.php?page=transaction" class="btn btn-secondary">
        <i class="bi bi-arrow-left"></i> Kembali
      </a>
    </div>
  </div>
</div>

{include file="../footer.tpl"}