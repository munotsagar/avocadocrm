<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}
/**
 * Advanced OpenSales, Advanced, robust set of sales modules.
 * @package Advanced OpenSales for SugarCRM
 * @copyright SalesAgility Ltd http://www.salesagility.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with this program; if not, see http://www.gnu.org/licenses
 * or write to the Free Software Foundation,Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301  USA
 *
 * @author SalesAgility <info@salesagility.com>
 */


require_once('include/MVC/View/views/view.edit.php');

class AOS_QuotesViewEdit extends ViewEdit
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @deprecated deprecated since version 7.6, PHP4 Style Constructors are deprecated and will be remove in 7.8, please update your code, use __construct instead
     */
    public function AOS_QuotesViewEdit()
    {
        $deprecatedMessage = 'PHP4 Style Constructors are deprecated and will be remove in 7.8, please update your code';
        if (isset($GLOBALS['log'])) {
            $GLOBALS['log']->deprecated($deprecatedMessage);
        } else {
            trigger_error($deprecatedMessage, E_USER_DEPRECATED);
        }
        self::__construct();
    }


    public function display()
    {
        // $query3 = $db->query("SELECT commision_rate_c FROM users_cstm WHERE id_c = '".$sales_commission_user_c."'");
        // $row3 = $query3->fetch_assoc(); 
        // // print_r($row3);
        // $cusm_rate = $row3['commision_rate_c'];
        // echo "";
        // // print_r($bean->$sales_commission_user_c);
        // print_r($cusm_rate);
        // echo $bean->commission_amount_c = $cusm_rate; exit;
        // $bean->save;
/*echo $js=<<<EOF
 <script>$(document).ready(function() {
 $("#customerid_c").attr('disabled','disabled');
 });
 </script>
EOF;
if($this->bean->id != "")
{
echo $js=<<<EOF
 <script>
 $(document).ready(function() {
 $("#customerid_c").attr('disabled','disabled');
 $("#name").attr('disabled','disabled');
 $("#expiration").attr('disabled','disabled');
 $("#billing_account").attr('disabled','disabled');
 $("#btn_billing_account").attr('disabled','disabled');
 $("#btn_clr_billing_account").attr('disabled','disabled');
 $("#balanceamount_c").attr('disabled','disabled');
 $("#addGroup").attr('disabled','disabled');
 $("#total_amt").attr('disabled','disabled');
 $("#discount_amount").attr('disabled','disabled');
 $("#tax_amount").attr('disabled','disabled');
 $("#total_amount").attr('disabled','disabled');
 });
 </script>
EOF;
}*/
echo $js=<<<EOF
<script>
//$(document).ready(function() {
$("#sales_commission_user_c").click(function() {
	var id_us = $('#user_id_c').val();
	var total = $('#total_amount').val();
	//alert(total);
	$.ajax({ 
	url: 'index.php?entryPoint=Ajax_User',
	type: 'GET',
	//dataType: 'json',
	data: {id:id_us, total_price:total},
	success: 
 	function(data){
 	//alert (data);
  document.getElementById('commission_amount_c').value = data;
 
  }
    });
return false;	
    });
    
 //});
 </script>
EOF;

        $this->populateQuoteTemplates();
        parent::display();
        //echo $js;
    }

    public function populateQuoteTemplates()
    {
        global $app_list_strings;

        $sql = "SELECT id, name FROM aos_pdf_templates WHERE deleted='0' AND type='AOS_Quotes'";
        $res = $this->bean->db->query($sql);

        $app_list_strings['template_ddown_c_list'] = array();
        while ($row = $this->bean->db->fetchByAssoc($res)) {
            $app_list_strings['template_ddown_c_list'][$row['id']] = $row['name'];
        }
    }
}
?>
