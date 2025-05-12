<?php
/* Smarty version 4.5.5, created on 2025-05-12 19:22:37
  from 'C:\xampp\htdocs\POS-APP\resources\views\product\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_68222e5d03cf61_78513873',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a0da313c21a29f484988ed5c9222cf96580bd988' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\product\\index.tpl',
      1 => 1747070553,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_68222e5d03cf61_78513873 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

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
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['products']->value, 'product');
$_smarty_tpl->tpl_vars['product']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->do_else = false;
?>
      <tr>
        <td><?php echo $_smarty_tpl->tpl_vars['product']->value['product_name'];?>
</td>
        <td>Rp <?php echo number_format($_smarty_tpl->tpl_vars['product']->value['purchase_price'],0,',','.');?>
</td>
        <td>Rp <?php echo number_format($_smarty_tpl->tpl_vars['product']->value['selling_price'],0,',','.');?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['product']->value['stock'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['product']->value['supplier_name'];?>
</td>
        <td>
          <a href="index.php?page=product_edit&id=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
">Edit</a>
          <a href="index.php?page=product_delete&id=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
"
            onclick="return confirm('Are you sure?')">Delete</a>
        </td>
      </tr>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
  </tbody>
</table>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
