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

    public function preDisplay()
    {
        parent::preDisplay();

        $this->lv->actionsMenuExtraItems[] = $this->buildMyMenuItem();
    }
    

    /**
     * @return string HTML
     */
    protected function buildMyMenuItem()
    {
        global $app_strings;
    
        return <<<EOHTML
<a class="menuItem" style="width: 150px;" href="#" onmouseover='hiliteItem(this,"yes");' 
        onmouseout='unhiliteItem(this);' 
        onclick="sugarListView.get_checks();
        if(sugarListView.get_checks_count() &lt; 1) {
            alert('{$app_strings['LBL_LISTVIEW_NO_SELECTED']}');
            return false;
        }
        document.MassUpdate.action.value='printpdf';
        document.MassUpdate.submit();">Print Overdue Invoices</a>
EOHTML;
    }

}
?>