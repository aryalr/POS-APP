{include file="../header.tpl"}

<h2 class="mt-4">Transaksi Baru</h2>

<form method="POST" action="?page=transaction&action=store" id="transactionForm">
  <div id="product-wrapper">
    <div class="product-group mb-3">
      <label>Produk</label>
      <select name="id_product[]" class="form-control" required>
        <option value="">-- Pilih Produk --</option>
        {foreach from=$products item=product}
          <option value="{$product.id_product}">
            {$product.product_name} - Rp {number_format($product.selling_price, 0, ',', '.')}
          </option>
        {/foreach}
      </select>

      <label class="mt-2">Jumlah</label>
      <input type="number" name="quantity[]" class="form-control" required min="1">

      <button type="button" class="btn btn-danger btn-sm mt-2 remove-product" style="display:none;">Hapus</button>
    </div>
  </div>

  <button type="button" class="btn btn-primary btn-sm mb-3" id="addProduct">+ Tambah Produk</button>
  <br>

  <button type="submit" class="btn btn-success">Simpan</button>
  <a href="index.php?page=transaction" class="btn btn-secondary">Kembali</a>
</form>

<script>
  document.getElementById('addProduct').addEventListener('click', function() {
    const wrapper = document.getElementById('product-wrapper');
    const group = wrapper.querySelector('.product-group');
    const clone = group.cloneNode(true);

    clone.querySelector('select').value = "";
    clone.querySelector('input').value = "";
    clone.querySelector('.remove-product').style.display = "inline-block";

    wrapper.appendChild(clone);
  });

  document.getElementById('product-wrapper').addEventListener('click', function(e) {
    if (e.target.classList.contains('remove-product')) {
      e.target.parentElement.remove();
    }
  });
</script>

{include file="../footer.tpl"}