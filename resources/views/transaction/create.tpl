{include file="../header.tpl"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-cart-plus me-2"></i>Transaksi Baru</h2>
    </div>
    <div class="card-body">
      <form method="POST" action="?page=transaction&action=store" id="transactionForm">
        <div id="product-wrapper">
          <div class="product-group mb-3 p-3 border rounded bg-light">
            <div class="mb-2">
              <label for="product_select" class="form-label">Produk</label>
              <select name="id_product[]" class="form-select" required>
                <option value="">-- Pilih Produk --</option>
                {foreach from=$products item=product}
                  <option value="{$product.id_product}">
                    {$product.product_name} - Rp {number_format($product.selling_price, 0, ',', '.')}
                  </option>
                {/foreach}
              </select>
            </div>
            <div class="mb-2">
              <label for="quantity_input" class="form-label">Jumlah</label>
              <input type="number" name="quantity[]" class="form-control" required min="1" value="1">
            </div>
            <button type="button" class="btn btn-danger btn-sm mt-2 remove-product" style="display:none;">
              <i class="bi bi-trash"></i> Hapus Produk Ini
            </button>
          </div>
        </div>

        <button type="button" class="btn btn-primary mb-3" id="addProduct">
          <i class="bi bi-plus-circle me-2"></i>Tambah Produk
        </button>

        <hr>

        <button type="submit" class="btn btn-success me-2">
          <i class="bi bi-check-circle"></i> Simpan Transaksi
        </button>
        <a href="index.php?page=transaction" class="btn btn-secondary">
          <i class="bi bi-arrow-left"></i> Kembali
        </a>
      </form>
    </div>
  </div>
</div>

<script>
  document.getElementById('addProduct').addEventListener('click', function() {
    const wrapper = document.getElementById('product-wrapper');
    const firstGroup = wrapper.querySelector('.product-group'); // Get the first group to clone its structure
    const clone = firstGroup.cloneNode(true); // Clone the entire group

    // Clear values for the cloned elements
    clone.querySelector('select').value = "";
    clone.querySelector('input[type="number"]').value = "1"; // Reset quantity to 1

    // Show the remove button for the cloned element
    clone.querySelector('.remove-product').style.display = "inline-block";

    wrapper.appendChild(clone);
  });

  document.getElementById('product-wrapper').addEventListener('click', function(e) {
    if (e.target.classList.contains('remove-product')) {
      // Find the closest parent with the 'product-group' class and remove it
      e.target.closest('.product-group').remove();
    }
  });
</script>

{include file="../footer.tpl"}