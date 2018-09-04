<?php // form.php
//
require_once('init.php');
// ���̓f�[�^���擾
$input_data = [];
if (isset($_SESSION['input'])) {
    $input_data = $_SESSION['input'];
    unset($_SESSION['input']);
}
// error�f�[�^���擾
$error = [];
if (isset($_SESSION['error'])) {
    $error = $_SESSION['error'];
    unset($_SESSION['error']);
}
//var_dump($input_data, $error);
// XSS�΍�
function h($s) {
    return htmlspecialchars($s, ENT_QUOTES);
}
// CSRF�̖��ߍ���
// TODO: token�̎����A�^�u�ŊJ������NG
$csrf_token = get_csrf_token();
$_SESSION['csrf'] = $csrf_token;
// smarty�ւ̒l�n��
$smarty_obj->assign('input_data', $input_data);
$smarty_obj->assign('error', $error);
$smarty_obj->assign('csrf_token', $csrf_token);
// �o��
$tmp_filename = 'form.tpl';
require_once('./fin.php');