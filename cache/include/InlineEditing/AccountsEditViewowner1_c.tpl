
{if strlen($fields.owner1_c.value) <= 0}
{assign var="value" value=$fields.owner1_c.default_value }
{else}
{assign var="value" value=$fields.owner1_c.value }
{/if}  
<input type='text' name='{$fields.owner1_c.name}' 
    id='{$fields.owner1_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >