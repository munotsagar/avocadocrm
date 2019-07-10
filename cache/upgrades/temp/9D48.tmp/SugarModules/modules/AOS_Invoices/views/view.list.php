<?php
    require_once('include/MVC/View/views/view.list.php');
    class AOS_InvoicesViewList extends ViewList {
        //public $type ='list';
        public function listViewProcess() {
            global $current_user;
            //echo "Sagar Munot";
            //$this->params['custom_where'] = ' AND module_name.name = "test" ';
            //print_r($_SESSION['zipCodes']);
            parent::listViewProcess();
    }
    
    }
?>