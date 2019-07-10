
{if strlen($fields.orderid_c.value) <= 0}
{assign var="value" value=$fields.orderid_c.default_value }
{else}
{assign var="value" value=$fields.orderid_c.value }
{/if}  
<input type='text' name='{$fields.orderid_c.name}' 
    id='{$fields.orderid_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >