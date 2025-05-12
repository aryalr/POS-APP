{include file="../header.tpl"}

<h2>Edit Produk</h2>

<form method="POST" action="index.php?page=product_update">
  <input type="hidden" name="id_product" value="{$product.id_product}">

  <div>
    <label>Nama Produk</label>
    <input type="text" name="product_name" value="{$product.product_name}" required>
  </div>

  <div>
    <label>Harga Beli</label>
    <input type="number" name="purchase_price" value="{$product.purchase_price}" required>
  </div>

  <div>
    <label>Harga Jual</label>
    <input type="number" name="selling_price" value="{$product.selling_price}" required>
  </div>

  <div>
    <label>Stok</label>
    <input type="number" name="stock" value="{$product.stock}" required>
  </div>

  <div>
    <label>Supplier</label>
    <select name="id_supplier" required>
      {foreach $suppliers as $supplier}
        <option value="{$supplier.id_supplier}" {if $supplier.id_supplier == $product.id_supplier}selected{/if}>
          {$supplier.supplier_name}
        </option>
      {/foreach}
    </select>
  </div>

  <div>
    <button type="submit">Update</button>
    <a href="index.php?page=product">Batal</a>
  </div>
</form>

{include file="../footer.tpl"}