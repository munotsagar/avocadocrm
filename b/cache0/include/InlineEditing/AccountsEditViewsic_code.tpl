
{if strlen($fields.sic_code.value) <= 0}
{assign var="value" value=$fields.sic_code.default_value }
{else}
{assign var="value" value=$fields.sic_code.value }
{/if}  
<input type='text' name='{$fields.sic_code.name}' 
    id='{$fields.sic_code.name}' size='30' 
    maxlength='10' 
    value='{$value}' title=''  tabindex='1'      >