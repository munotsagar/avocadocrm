<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


class fyn_locationsViewEdit extends ViewEdit 
{
	function display()
	{
		?>
		<script type="text/javascript">
	  		$(document).ready(function()
	 	  	{
	 	  		$("#fyn_vlzs_fyn_locations_1_name").attr('readonly','true');
		        $("#fyn_vlzs_fyn_locations_1_name").css('background','#aeb4bf');
		        $("#fyn_vlzs_fyn_locations_1_name").css('color','#4f4005');

		        $("#btn_fyn_vlzs_fyn_locations_1_name").attr('disabled','true');
		        $("#btn_clr_fyn_vlzs_fyn_locations_1_name").attr('disabled','true');
	 	  	});
	 	</script>

	 	<?php
	 	parent::display();
	}
}


