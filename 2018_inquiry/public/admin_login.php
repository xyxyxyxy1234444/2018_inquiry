<?php  // admin_login.php
//
require_once('init.php');
/* authentication */
// form����ID�ƃp�X���[�h���擾
$id = (string)@$_POST['id'];
$pw = (string)@$_POST['pw'];
// validate
if ( ('' === $id)||('' === $pw) ) {
    // validation error
    $_SESSION['admin_login_error'] = true;
    // index�ɔ�΂�
    header('Location: ./admin_index.php');
    exit;
}
/* DB����uhash�����ꂽ�p�X���[�h�v���擾 */
// DB�n���h���̎擾
$dbh = db_connect($config);
// �������ꂽ��(�v���y�A�h�X�e�[�g�����g)���쐬
$sql = 'SELECT * FROM admin_users WHERE id = :id ;';
$pre = $dbh->prepare($sql);
// �v���[�X�z���_�ɒl��bind
$pre->bindValue(':id', $id);
// SQL�𔭍s
$r = $pre->execute();
$data = $pre->fetch();
//var_dump($data); exit;
// ID�����݂��Ȃ��ꍇ�̏���
if (false === $data) {
    // validation error
    $_SESSION['admin_login_error'] = true;
    // index�ɔ�΂�
    header('Location: ./admin_index.php');
    exit;
}
// �p�X���[�h���r
if (false === password_verify($pw, $data['pass'])) {
    // validation error
    $_SESSION['admin_login_error'] = true;
    // index�ɔ�΂�
    header('Location: ./admin_index.php');
    exit;
}
/* ���O�C������ */
// �u���O�C���ɐ��������v�f�[�^(authorization)��ۑ����Ă���
session_regenerate_id(true); // �Z�L�����e�B�΍�
$_SESSION['admin_auth']['id'] = $id;
// TopPage�ɑJ��
header('Location: ./admin_top.php');
