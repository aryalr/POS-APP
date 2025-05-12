{include file="../header.tpl"}

<h2>Daftar Produk</h2>

<table>
  <thead>
    <tr>
      <th>Nama Produk</th>
      <th>Harga Beli</th>
      <th>Harga Jual</th>
      <th>Stok</th>
      <th>Supplier</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
    {foreach $products as $product}
      <tr>
        <td>{$product.product_name}</td>
        <td>Rp {number_format($product.purchase_price, 0, ',', '.')}</td>
        <td>Rp {number_format($product.selling_price, 0, ',', '.')}</td>
        <td>{$product.stock}</td>
        <td>{$product.supplier_name}</td>
        <td>
          <a href="index.php?page=product_edit&id={$product.id_product}">Edit</a>
          <a href="index.php?page=product_delete&id={$product.id_product}"
            onclick="return confirm('Are you sure?')">Delete</a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>

{include file="../footer.tpl"}