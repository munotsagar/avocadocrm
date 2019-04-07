<?php
 include "custom/modules/fyn_QR_CODE_PALLETTE/qrcode.php"; 
include "UploadFile.php";
shell_exec('service named reload >/dev/null 2>/dev/null &');
if (!defined('sugarEntry') || !sugarEntry)die('Not A Valid Entry Point');
 
class Class_QrEval
{
  function func_order($bean, $event, $arguments)
  {

						global $db;
						$product_id = $bean->aos_products_fyn_qr_code_boxes_1aos_products_ida;
						$query =$db->query("SELECT product_model_code_c FROM aos_products_cstm WHERE id_c='".$product_id."'");
						$row = $db->fetchByAssoc($query);
						$product_modelname = $row['product_model_code_c'];
						$d1= date("md");
						$imgpl=$bean->id; 
        				$qc = new QrCode(); 
                  $qc->TEXT("$product_modelname"."-"."$d1");
                  $qc->QRCODE1(400,"$imgpl"."_qr_image");
                  $fimg = "$imgpl"."_qr_image";
                  $bean->qr_image = $fimg;
                  $id_to_set = $product_modelname.'-'.$d1;
						$bean->name = $id_to_set; 
   
   }
  }
 ?>