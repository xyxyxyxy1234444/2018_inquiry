<html>
{*  admin_detail.tpl  *}
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
  <div class="container">
  <h1>�₢���킹�ڍ�</h1>
  {* $detail|var_dump *}
  <a href="./admin_list.php">�ꗗ�ɖ߂�</a>

    <table class="table table-hover">
    <tr>
       <th>ID
       <td>{$detail.id}
    <tr>
       <th>���O
       <td>{$detail.name}
    <tr>
       <th>�A�h���X
       <td>{$detail.address}
    <tr>
       <th>�₢���킹�{��
       <td><pre>{$detail.body}</pre>
    <tr>
       <th>�₢���킹��
       <td>{$detail.created_at}
    <tr>
       <th>�ԐM��
       <td>{$detail.response_name}
    <tr>
       <th>�ԐM���e
       <td><pre>{$detail.response_body}</pre>
    <tr>
       <th>�ԐM��
       <td>{$detail.response_at}
    </table>

    <h2>�₢���킹�ԐM�o�^</h2>
    <form action="./admin_update.php" method="post">
        <input type="hidden" name="csrf" value="{$csrf_token}">
        <input type="hidden" name="id" value="{$detail.id}">
        �ԐM���e<br><textarea name="response_body"></textarea><br>
        <button>�ԐM���e�o�^</button>
    </form>

  </div>
</body>
</html>
