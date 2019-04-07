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
$hook_array['after_save'][] = Array(90, 'Relate Orders with Locations', 'custom/modules/AOS_Invoices/relatewithlocations.php','Relate', 'relateLocation'); 
$hook_array['after_save'][] = Array(99, 'Updateorder_status', 'custom/modules/AOS_Invoices/cart_update.php','Order_Status1', 'order_method');
// $hook_array['after_save'][] = Array(89, 'Relationship1', 'custom/modules/AOS_Quotes/cart_items.php','Class_Order_item', 'Order_method');
//$hook_array['after_save'][] = Array(119, 'Name(Locations Not related)', 'custom/modules/AOS_Quotes/order_update.php','Order_Status', 'order_method');
$hook_array['after_save'][] = Array(120, 'Add_order', 'custom/modules/AOS_Invoices/add_order.php','Add_orderclass', 'addorder_method');
//$hook_array['after_save'][] = Array(89, 'Add_balance', 'custom/modules/AOS_Invoices/add_balance.php','Add_balanceclass', 'addbalance_method');
?>