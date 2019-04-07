

{if strlen($fields.phone_alternate.value) <= 0}
{assign var="value" value=$fields.phone_alternate.default_value }
{else}
{assign var="value" value=$fields.phone_alternate.value }
{/if}  

<input type='text' name='{$fields.phone_alternate.name}' id='{$fields.phone_alternate.name}' size='30' maxlength='100' value='{$value}' title='' tabindex='1'	  class="phone" >
