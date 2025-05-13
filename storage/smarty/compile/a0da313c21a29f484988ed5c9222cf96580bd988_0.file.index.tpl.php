<?php
/* Smarty version 4.5.5, created on 2025-05-13 15:19:08
  from 'C:\xampp\htdocs\POS-APP\resources\views\product\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_682346cc2de308_02025732',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a0da313c21a29f484988ed5c9222cf96580bd988' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\product\\index.tpl',
      1 => 1747142321,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_682346cc2de308_02025732 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-box-seam me-2"></i>Daftar Produk</h2>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead class="table-dark">
            <tr>
              <th>Nama Produk</th>
              <th>Harga Beli</th>
              <th>Harga Jual</th>
              <th>Stok</th>
              <th>Supplier</th>
              <th class="text-center">Actions</th>
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
                <td class="align-middle"><?php echo $_smarty_tpl->tpl_vars['product']->value['product_name'];?>
</td>
                <td class="align-middle">Rp <?php echo number_format($_smarty_tpl->tpl_vars['product']->value['purchase_price'],0,',','.');?>
</td>
                <td class="align-middle">Rp <?php echo number_format($_smarty_tpl->tpl_vars['product']->value['selling_price'],0,',','.');?>
</td>
                <td class="align-middle">
                  <?php if ($_smarty_tpl->tpl_vars['product']->value['stock'] <= 5) {?>
                    <span class="badge bg-danger"><?php echo $_smarty_tpl->tpl_vars['product']->value['stock'];?>
</span>
                  <?php } elseif ($_smarty_tpl->tpl_vars['product']->value['stock'] <= 10) {?>
                    <span class="badge bg-warning text-dark"><?php echo $_smarty_tpl->tpl_vars['product']->value['stock'];?>
</span>
                  <?php } else { ?>
                    <span class="badge bg-success"><?php echo $_smarty_tpl->tpl_vars['product']->value['stock'];?>
</span>
                  <?php }?>
                </td>
                <td class="align-middle"><?php echo $_smarty_tpl->tpl_vars['product']->value['supplier_name'];?>
</td>
                <td class="text-center align-middle">
                  <div class="btn-group" role="group">
                    <a href="?page=product&action=edit&id=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" class="btn btn-sm btn-warning">
                      <i class="bi bi-pencil-square"></i> Edit
                    </a>
                    <a href="?page=product&action=delete&id=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" class="btn btn-sm btn-danger"
                      onclick="return confirm('Yakin ingin menghapus produk ini?')">
                      <i class="bi bi-trash"></i> Delete
                    </a>
                  </div>
                </td>
              </tr>
            <?php
}
if ($_smarty_tpl->tpl_vars['product']->do_else) {
?>
              <tr>
                <td colspan="6" class="text-center py-3">Tidak ada produk yang tersedia</td>
              </tr>
            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
          </tbody>
        </table>
      </div>
    </div>
    <div class="card-footer">
      <a href="?page=product&action=create" class="btn btn-success">
        <i class="bi bi-plus-circle"></i> Tambah Produk Baru
      </a>
    </div>
  </div>
</div>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
