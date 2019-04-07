
{if strlen($fields.owner2_c.value) <= 0}
{assign var="value" value=$fields.owner2_c.default_value }
{else}
{assign var="value" value=$fields.owner2_c.value }
{/if}  
<input type='text' name='{$fields.owner2_c.name}' 
    id='{$fields.owner2_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title=''  tabindex='1'      >