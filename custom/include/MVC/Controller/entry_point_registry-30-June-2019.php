<?php
    $entry_point_registry['transferInventory'] = array(
        'file' => 'custom/modules/AOS_Products/transferInventory.php',
        'auth' => true
    );

    $entry_point_registry['generateVansForProducts'] = array(
        'file' => 'custom/modules/AOS_Products/generateVans.php',
        'auth' => true
    );

    $entry_point_registry['saveInvoiceRoute'] = array(
        'file' => 'custom/modules/AOS_Invoices/saveInvoiceRoute.php',
        'auth' => true
    );

    $entry_point_registry['saveInvoiceRoutevan'] = array(
        'file' => 'custom/modules/AOS_Invoices/saveInvoiceRoutevan.php',
        'auth' => true
    );

    $entry_point_registry['generatePdf_For_Route'] = array('file' => 'custom/modules/AOS_PDF_Templates/generatePdf_For_Route.php' , 'auth' => true);
?>