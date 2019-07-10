<?php


require_once('include/MVC/Controller/SugarController.php');

class AOS_InvoicesController extends SugarController
{
    /*public function action_Popup()
    {
        //echo "Great..00";exit;
        global $mod_string;
        $this->view = 'popup';
    }*/

    public function action_invoices()
    {
        $this->view = 'invoices';
    }

    public function action_printpdf() {
        require('pdf/phpToPDF/phpToPDF.php');


        $my_html="<HTML>
<h2>Invoice Report</h2><br><br>
<table border='1'><tr>
<th>Inv Num</th>
<th>Title</th>
<th>Payment Status</th>
<th>Days Overdue</th>
<th>Account Name</th>
<th>Grand Total</th>
<th>User</th>
<th>	
Date Created</th>
</tr>";



        //print_r($_REQUEST);exit;
        if ( !empty($_REQUEST['uid']) ) {
            $recordIds = explode(',',$_REQUEST['uid']);
            foreach ( $recordIds as $recordId ) {
                $bean = SugarModule::get($_REQUEST['module'])->loadBean();
                $bean->retrieve($recordId);
                $my_html.="<tr>";
                $my_html.="<td>".$bean->number."</td>";
                $my_html.="<td>".$bean->name."</td>";
                $my_html.="<td>".$bean->status."</td>";
                $my_html.="<td>".$bean->days_overdue_c."</td>";
                $my_html.="<td>".$bean->billing_account."</td>";
                $my_html.="<td>".$bean->total_amount."</td>";
                $my_html.="<td>".$bean->assigned_user_name."</td>";
                $my_html.="<td>".$bean->date_entered."</td>";
                $my_html.="</tr>";

            }
            $my_html.="</table>
            </HTML>";
            $pdf_options = array(
                "source_type" => 'html',
                "source" => $my_html,
                "action" => 'download',
                "color" => 'monochrome',
                "page_orientation" => 'landscape');
              
              // CALL THE phpToPDF FUNCTION WITH THE OPTIONS SET ABOVE
              phptopdf($pdf_options);
        }
        sugar_die('');
    }
}

?>