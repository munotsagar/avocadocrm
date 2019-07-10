<?php


require_once('include/MVC/Controller/SugarController.php');

class AOS_InvoicesController extends SugarController
{
    public function action_Popup()
    {
        //echo "Great..00";exit;
        global $mod_string;
        $this->view = 'popup';
    }

    public function action_goodbye()
    {
        $this->view = 'list';
        $this->view_object_map['message'] = 'Goodbye World!';                
    }

    public function action_invoices()
    {
        $this->view = 'invoices';
    }
}

?>