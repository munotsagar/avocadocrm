<?php
 
 $hook_version = 1; 
$hook_array = Array(); 
// position, file, function 
$hook_array['before_save'] = Array(); 
$hook_array['after_retrieve'] = Array(); 
$hook_array['after_save'] = Array(); 

$hook_array['before_save'][] = Array(88, 'Relationship', 'custom/modules/AOS_Invoices/services.php','Relationshipss1', 'calsRelation');
// $hook_array['after_save'][] = Array(89, 'Relationship1', 'custom/modules/AOS_Invoices/cart_items.php','Class_Order_item', 'Order_method');

$hook_array['before_save'][] = Array(1, 'Validate Addres with Google API', 'custom/modules/AOS_Invoices/validateaddress.php','Geocode', 'validateAddress');

$hook_array['before_save'][] = Array(2, 'Update Product Quantity Before', 'custom/modules/AOS_Invoices/updateProductQty.php','UpdateProductQty', 'updateProductQuantityBefore');

//$hook_array['after_save'][] = Array(2, 'Update Product Quantity After', 'custom/modules/AOS_Invoices/updateProductQty.php','UpdateProductQty', 'updateProductQuantityAfter');

//$hook_array['after_save'][] = Array(90, 'Relate Orders with Locations', 'custom/modules/AOS_Invoices/relatewithlocations.php','Relate', 'relateLocation'); 

?>