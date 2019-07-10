
{if strlen($fields.stock_in_from_farm_c.value) <= 0}
{assign var="value" value=$fields.stock_in_from_farm_c.default_value }
{else}
{assign var="value" value=$fields.stock_in_from_farm_c.value }
{/if}  
<input type='text' name='{$fields.stock_in_from_farm_c.name}' 
    id='{$fields.stock_in_from_farm_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title='Last Transaction Stock In From Farm'  tabindex='1'      >