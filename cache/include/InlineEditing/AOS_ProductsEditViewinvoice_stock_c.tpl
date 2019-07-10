
{if strlen($fields.invoice_stock_c.value) <= 0}
{assign var="value" value=$fields.invoice_stock_c.default_value }
{else}
{assign var="value" value=$fields.invoice_stock_c.value }
{/if}  
<input type='text' name='{$fields.invoice_stock_c.name}' 
    id='{$fields.invoice_stock_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title='Invoice Stock'  tabindex='1'      >