<?php
/* Smarty version 4.5.5, created on 2025-05-13 16:41:43
  from 'C:\xampp\htdocs\POS-APP\resources\views\transaction\detail.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_68235a276c8075_49687775',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c0a9fe62c2955ccca55d161f5059150419bc8367' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\transaction\\detail.tpl',
      1 => 1747147210,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_68235a276c8075_49687775 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<h2 class="mt-4">Detail Transaksi #<?php echo $_smarty_tpl->tpl_vars['transaction']->value['id_sale'];?>
</h2>

<p><strong>Tanggal:</strong> <?php echo $_smarty_tpl->tpl_vars['transaction']->value['sale_date'];?>
</p>
<p><strong>Kasir:</strong> <?php echo $_smarty_tpl->tpl_vars['transaction']->value['username'];?>
</p>
<p><strong>Total:</strong> Rp <?php echo number_format($_smarty_tpl->tpl_vars['transaction']->value['total_amount'],0,',','.');?>
</p>

<table class="table table-bordered mt-3">
  <thead>
    <tr>
      <th>Produk</th>
      <th>Jumlah</th>
      <th>Harga Satuan</th>
      <th>Subtotal</th>
    </tr>
  </thead>
  <tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['details']->value, 'detail');
$_smarty_tpl->tpl_vars['detail']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['detail']->value) {
$_smarty_tpl->tpl_vars['detail']->do_else = false;
?>
      <tr>
        <td><?php echo $_smarty_tpl->tpl_vars['detail']->value['product_name'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['detail']->value['quantity'];?>
</td>
        <td>Rp <?php echo number_format($_smarty_tpl->tpl_vars['detail']->value['selling_price'],0,',','.');?>
</td>
        <td>Rp <?php echo number_format($_smarty_tpl->tpl_vars['detail']->value['quantity']*$_smarty_tpl->tpl_vars['detail']->value['selling_price'],0,',','.');?>
</td>
      </tr>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
  </tbody>
</table>

<a href="index.php?page=transaction" class="btn btn-secondary">Kembali</a>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
