<?php  // admin_index.php
//
require_once('init.php');
// �G���[�Ȃ�\������
if (true === @$_SESSION['admin_login_error']) {
    unset($_SESSION['admin_login_error']);
    $smarty_obj->assign('error', true);
}
// �o��
$tmp_filename = 'admin_index.tpl';
require_once('./fin.php');