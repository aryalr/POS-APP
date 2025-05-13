<?php
/* Smarty version 4.5.5, created on 2025-05-13 15:23:58
  from 'C:\xampp\htdocs\POS-APP\resources\views\supplier\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_682347eec5df18_74066510',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10b36ecbe24f2e811d81566b792df43104f23b99' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\supplier\\index.tpl',
      1 => 1747142493,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_682347eec5df18_74066510 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\POS-APP\\vendor\\smarty\\smarty\\libs\\plugins\\modifier.count.php','function'=>'smarty_modifier_count',),));
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('title'=>"Manajemen Supplier"), 0, false);
?>

<div class="container mt-4">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h2 class="mb-0 fs-4"><i class="bi bi-building me-2"></i>Daftar Supplier</h2>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <?php if (smarty_modifier_count($_smarty_tpl->tpl_vars['suppliers']->value) > 0) {?>
                    <table class="table table-striped table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th width="60">No.</th>
                                <th>Nama Supplier</th>
                                <th>Kontak / Alamat</th>
                                <th class="text-center" width="180">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['suppliers']->value, 'supplier', false, 'index');
$_smarty_tpl->tpl_vars['supplier']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['index']->value => $_smarty_tpl->tpl_vars['supplier']->value) {
$_smarty_tpl->tpl_vars['supplier']->do_else = false;
?>
                                <tr>
                                    <td class="align-middle"><?php echo $_smarty_tpl->tpl_vars['index']->value+1;?>
</td>
                                    <td class="align-middle fw-bold"><?php echo $_smarty_tpl->tpl_vars['supplier']->value['supplier_name'];?>
</td>
                                    <td class="align-middle">
                                        <div style="white-space: pre-line;"><?php echo $_smarty_tpl->tpl_vars['supplier']->value['contact_info'];?>
</div>
                                    </td>
                                    <td class="text-center align-middle">
                                        <div class="btn-group" role="group">
                                            <a href="?page=supplier&action=edit&id=<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
"
                                                class="btn btn-sm btn-warning">
                                                <i class="bi bi-pencil-square"></i> Edit
                                            </a>
                                            <a href="?page=supplier&action=delete&id=<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
"
                                                class="btn btn-sm btn-danger"
                                                onclick="return confirm('Apakah Anda yakin ingin menghapus supplier ini? Tindakan ini tidak dapat dibatalkan.')">
                                                <i class="bi bi-trash"></i> Hapus
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </tbody>
                    </table>
                <?php } else { ?>
                    <div class="alert alert-info d-flex align-items-center">
                        <i class="bi bi-info-circle-fill me-2 fs-4"></i>
                        <div>Belum ada data supplier. Silakan tambahkan supplier baru.</div>
                    </div>
                <?php }?>
            </div>
        </div>
        <div class="card-footer">
            <a href="?page=supplier&action=create" class="btn btn-success">
                <i class="bi bi-plus-circle"></i> Tambah Supplier Baru
            </a>
        </div>
    </div>
</div>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
