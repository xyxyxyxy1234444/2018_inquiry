{* admin_index.tpl *}
<h1>�Ǘ���� ���O�C��</h1>
{if true == $error}
<span style="color: #f00">
    ���O�C���ŃG���[������܂����B<br>
</span>
{/if}

<form  method="post"  action="./admin_login.php">
ID: <input  name="id"><br>
password:<input  type="password"  name="pw"><br>
<br>
<button>���O�C��</button>
</form>