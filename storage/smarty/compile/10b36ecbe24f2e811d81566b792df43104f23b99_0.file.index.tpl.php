<?php
/* Smarty version 4.5.5, created on 2025-05-12 16:56:33
  from 'C:\xampp\htdocs\POS-APP\resources\views\supplier\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_68220c213769d4_88331349',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10b36ecbe24f2e811d81566b792df43104f23b99' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\supplier\\index.tpl',
      1 => 1747060500,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_68220c213769d4_88331349 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\xampp\\htdocs\\POS-APP\\vendor\\smarty\\smarty\\libs\\plugins\\modifier.count.php','function'=>'smarty_modifier_count',),));
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('title'=>"Manajemen Supplier"), 0, false);
?>

<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Supplier</h2>
    <a href="?page=supplier&action=create" class="btn btn-primary">+ Tambah Supplier</a>
</div>

<?php if (smarty_modifier_count($_smarty_tpl->tpl_vars['suppliers']->value) > 0) {?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>No.</th>
                <th>Nama Supplier</th>
                <th>Kontak</th>
                <th>Aksi</th>
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
                    <td><?php echo $_smarty_tpl->tpl_vars['index']->value+1;?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['supplier']->value['supplier_name'];?>
</td>
                    <td><?php echo $_smarty_tpl->tpl_vars['supplier']->value['contact_info'];?>
</td>
                    <td>
                        <a href="?page=supplier&action=edit&id=<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
" class="btn btn-sm btn-warning">Edit</a>
                        <a href="?page=supplier&action=delete&id=<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
" class="btn btn-sm btn-danger" onclick="return confirm('Hapus supplier ini?')">Hapus</a>
                    </td>
                </tr>
            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </tbody>
    </table>
<?php } else { ?>
    <div class="alert alert-info">Belum ada data supplier.</div>
<?php }?>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
