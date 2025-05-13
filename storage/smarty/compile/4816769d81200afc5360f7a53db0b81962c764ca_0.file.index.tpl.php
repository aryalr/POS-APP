<?php
/* Smarty version 4.5.5, created on 2025-05-13 16:34:07
  from 'C:\xampp\htdocs\POS-APP\resources\views\transaction\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_6823585f1fe229_97901957',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4816769d81200afc5360f7a53db0b81962c764ca' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\transaction\\index.tpl',
      1 => 1747146834,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_6823585f1fe229_97901957 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<h2 class="mt-4">Daftar Transaksi</h2>

<a href="index.php?page=transaction_create" class="btn btn-primary mb-3">+ Transaksi Baru</a>

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th>#</th>
      <th>Tanggal</th>
      <th>Total</th>
      <th>Kasir</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['transactions']->value, 'trx');
$_smarty_tpl->tpl_vars['trx']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['trx']->value) {
$_smarty_tpl->tpl_vars['trx']->do_else = false;
?>
      <tr>
        <td><?php echo $_smarty_tpl->tpl_vars['trx']->value['id_sale'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['trx']->value['sale_date'];?>
</td>
        <td>Rp <?php echo number_format($_smarty_tpl->tpl_vars['trx']->value['total_amount'],0,',','.');?>
</td>
        <td><?php echo (($tmp = $_smarty_tpl->tpl_vars['trx']->value['username'] ?? null)===null||$tmp==='' ? '-' ?? null : $tmp);?>
</td>
        <td>
          <a href="?page=transaction&action=detail&id=<?php echo $_smarty_tpl->tpl_vars['trx']->value['id_sale'];?>
" class="btn btn-info btn-sm">Detail</a>
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
