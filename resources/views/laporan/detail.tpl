{include file="../header.tpl"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-receipt me-2"></i>Detail Transaksi Laporan</h2>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead class="table-dark">
            <tr>
              <th>Nama Produk</th>
              <th>Jumlah</th>
              <th>Harga Jual</th>
              <th>Subtotal</th>
            </tr>
          </thead>
          <tbody>
            {assign var="grandTotal" value=0}
            {foreach from=$details item=detail}
              <tr>
                <td class="align-middle">{$detail.product_name}</td>
                <td class="align-middle">{$detail.quantity}</td>
                <td class="align-middle">Rp {number_format($detail.selling_price, 0, ',', '.')}</td>
                <td class="align-middle">Rp {number_format($detail.subtotal, 0, ',', '.')}</td>
                {assign var="grandTotal" value=$grandTotal + $detail.subtotal}
              </tr>
            {foreachelse}
              <tr>
                <td colspan="4" class="text-center py-3">Tidak ada detail produk untuk laporan transaksi ini.</td>
              </tr>
            {/foreach}
          </tbody>
          <tfoot>
            <tr class="table-light">
              <td colspan="3" class="text-end"><strong>Total Keseluruhan:</strong></td>
              <td class="fw-bold"><strong>Rp {number_format($grandTotal, 0, ',', '.')}</strong></td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
    <div class="card-footer">
      <a href="index.php?page=report" class="btn btn-secondary">
        <i class="bi bi-arrow-left"></i> Kembali
      </a>
    </div>
  </div>
</div>

{include file="../footer.tpl"}