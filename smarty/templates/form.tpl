{*  form.tpl  *}
<h1>���₢���킹�t�H�[��</h1>
{if true == $error.address_empty}
    �A����͕K�{���͂ł��B<br>
{/if}
{if true == $error.body_empty}
    �₢���킹���e�͕K�{���͂ł��B<br>
{/if}
{if true == $error.csrf_error}
    ��ʑJ�ڂɕs��������܂�(CSRF)�B<br>
{/if}

<form action="./input.php" method="post">
<input type="hidden" name="csrf" value="{$csrf_token}">

�����O:<input name="name" value="{$input_data.name}"><br>
�A����(email):<input name="address"
    value="{$input_data.address}"><br>
�₢���킹���e
<textarea name="body">{$input_data.body}</textarea><br>
<button type="submit">�₢���킹��</button>
</form>