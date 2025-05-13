<?php
/* Smarty version 4.5.5, created on 2025-05-13 15:12:15
  from 'C:\xampp\htdocs\POS-APP\resources\views\product\edit.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_6823452f098766_41179254',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '06716f8ae8c1c328bee7758e74c8d2b00e4ccc26' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\product\\edit.tpl',
      1 => 1747141912,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_6823452f098766_41179254 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-warning text-dark d-flex align-items-center">
      <i class="bi bi-pencil-square me-2 fs-4"></i>
      <h2 class="mb-0 fs-4">Edit Produk</h2>
    </div>
    <div class="card-body">
      <form method="POST" action="index.php?page=product_update" class="needs-validation" novalidate>
        <input type="hidden" name="id_product" value="<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
">

        <div class="row mb-3">
          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="product_name" class="form-label fw-bold">Nama Produk</label>
              <input type="text" class="form-control" id="product_name" name="product_name"
                value="<?php echo $_smarty_tpl->tpl_vars['product']->value['product_name'];?>
" required>
              <div class="invalid-feedback">Harap masukkan nama produk</div>
            </div>

            <div class="form-group mb-3">
              <label for="purchase_price" class="form-label fw-bold">Harga Beli (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="purchase_price" name="purchase_price"
                  value="<?php echo $_smarty_tpl->tpl_vars['product']->value['purchase_price'];?>
" required min="0">
                <div class="invalid-feedback">Harap masukkan harga beli yang valid</div>
              </div>
            </div>

            <div class="form-group mb-3">
              <label for="selling_price" class="form-label fw-bold">Harga Jual (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="selling_price" name="selling_price"
                  value="<?php echo $_smarty_tpl->tpl_vars['product']->value['selling_price'];?>
" required min="0">
                <div class="invalid-feedback">Harap masukkan harga jual yang valid</div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="stock" class="form-label fw-bold">Stok</label>
              <input type="number" class="form-control" id="stock" name="stock" value="<?php echo $_smarty_tpl->tpl_vars['product']->value['stock'];?>
" required
                min="0">
              <div class="invalid-feedback">Harap masukkan jumlah stok yang valid</div>
            </div>

            <div class="form-group mb-3">
              <label for="id_supplier" class="form-label fw-bold">Supplier</label>
              <select class="form-select" id="id_supplier" name="id_supplier" required>
                <option value="" disabled>Pilih supplier</option>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['suppliers']->value, 'supplier');
$_smarty_tpl->tpl_vars['supplier']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['supplier']->value) {
$_smarty_tpl->tpl_vars['supplier']->do_else = false;
?>
                  <option value="<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
" <?php if ($_smarty_tpl->tpl_vars['supplier']->value['id_supplier'] == $_smarty_tpl->tpl_vars['product']->value['id_supplier']) {?>selected<?php }?>>
                    <?php echo $_smarty_tpl->tpl_vars['supplier']->value['supplier_name'];?>

                  </option>
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
              </select>
              <div class="invalid-feedback">Harap pilih supplier</div>
            </div>
          </div>
        </div>

        <div class="border-top pt-3 d-flex justify-content-between">
          <a href="index.php?page=product" class="btn btn-secondary">
            <i class="bi bi-arrow-left me-1"></i> Kembali
          </a>
          <button type="submit" class="btn btn-success">
            <i class="bi bi-save me-1"></i> Simpan Perubahan
          </button>
        </div>
      </form>
    </div>
  </div>
</div>

<?php echo '<script'; ?>
>
  // Bootstrap form validation
  (function() {
    'use strict';
    window.addEventListener('load', function() {
      var forms = document.getElementsByClassName('needs-validation');
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();
<?php echo '</script'; ?>
>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
