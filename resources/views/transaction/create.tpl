{include file="../header.tpl"}

<h2 class="mt-4">Transaksi Baru</h2>

<form method="POST" action="index.php?page=transaction_store">
  <div class="mb-3">
    <label>Produk</label>
    <select name="id_product" class="form-control" required>
      <option value="">-- Pilih Produk --</option>
      {foreach from=$products item=product}
        <option value="{$product.id_product}">
          {$product.product_name} - Rp {number_format($product.selling_price, 0, ',', '.')}
        </option>
      {/foreach}
    </select>
  </div>

  <div class="mb-3">
    <label>Jumlah</label>
    <input type="number" name="quantity" class="form-control" required min="1">
  </div>

  <button type="submit" class="btn btn-success">Simpan</button>
  <a href="index.php?page=transaction" class="btn btn-secondary">Kembali</a>
</form>

{include file="../footer.tpl"}