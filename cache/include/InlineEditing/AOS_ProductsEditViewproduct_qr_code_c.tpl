
{if strlen($fields.product_qr_code_c.value) <= 0}
{assign var="value" value=$fields.product_qr_code_c.default_value }
{else}
{assign var="value" value=$fields.product_qr_code_c.value }
{/if}  
<input type='text' name='{$fields.product_qr_code_c.name}' 
    id='{$fields.product_qr_code_c.name}' size='30' 
    maxlength='255' 
    value='{$value}' title='Product QR Code'  tabindex='1'      >