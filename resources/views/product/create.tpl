{include file="../header.tpl"}

<h2>Tambah Produk</h2>

<form method="POST" action="index.php?page=product_store">
  <div>
    <label>Nama Produk</label>
    <input type="text" name="product_name" required>
  </div>

  <div>
    <label>Harga Beli</label>
    <input type="number" name="purchase_price" required>
  </div>

  <div>
    <label>Harga Jual</label>
    <input type="number" name="selling_price" required>
  </div>

  <div>
    <label>Stok</label>
    <input type="number" name="stock" required>
  </div>

  <div>
    <label>Supplier</label>
    <select name="id_supplier" required>
      {foreach $suppliers as $supplier}
        <option value="{$supplier.id_supplier}">{$supplier.supplier_name}</option>
      {/foreach}
    </select>
  </div>

  <div>
    <button type="submit">Tambah</button>
    <a href="index.php?page=product">Batal</a>
  </div>
</form>

{include file="../footer.tpl"}