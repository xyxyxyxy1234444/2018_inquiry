<html>
{*  admin_list.tpl  *}
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>

<body>

<div class="container">
<h1>�₢���킹�ꗗ</h1>
{* $data|var_dump *}

<h2>����</h2>
<form action="admin_list.php" method="get">
<input type="hidden" name="sort" value="{$sort}">
<label><input name="find_no_response" type="checkbox" {if $find_no_response == true}checked{/if}>�u�ԐM���Ă��Ȃ��v����</label><br>
���O�F<input name="find_name" value="{$find_name}" ><br>
�A����F<input name="find_address" value="{$find_address}"><br>
�쐬���F<input type="date" name="find_created_from" value="{$find_created_from}">�`<input type="date" name="find_created_to" value="{$find_created_to}"><br>
<br>
<button>��������</button>
</form>

<form action="admin_list.php" method="get">
<button>sort/���������̃��Z�b�g</button>
</form>

<h2>�ꗗ</h2>
<table class="table table-hover">
<tr>
  <th>ID<a href="./admin_list.php?sort=id_d&{$find_query}">��</a>
        <a href="./admin_list.php?sort=id&{$find_query}">��</a>
  <th>���O<a href="./admin_list.php?sort=name_d&{$find_query}">��</a>
          <a href="./admin_list.php?sort=name&{$find_query}">��</a>
  <th>�쐬��<a href="./admin_list.php?sort=created_d&{$find_query}">��</a>
            <a href="./admin_list.php?sort=created&{$find_query}">��</a>
  <th>�ԐM��<a href="./admin_list.php?sort=response_d&{$find_query}">��</a>
            <a href="./admin_list.php?sort=response&{$find_query}">��</a>
{foreach from=$data item=i}
<tr>
  <td><a href="./admin_detail.php?id={$i.id}">{$i.id}</a>
  <td>{$i.name}
  <td>{$i.created_at}
  <td>{$i.response_at}
  <td><a href="./admin_detail.php?id={$i.id}">�ڍ׉{��</a>
{/foreach}

</table>
</div>

</body>
</html>