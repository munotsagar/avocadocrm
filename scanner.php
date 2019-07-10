<html>
<head>
	<style>
	.button{
		padding: 10px;
		padding-left: 25px;
		padding-right: 25px;
		background-color: crimson;
		color: white;
		border:0;
	}
	.button:hover{
		color:grey;
		background-color: orange;
	}
	.centered{
		display: block;
		width: 60%;
		margin: auto;
	}
	.scanner{
		width:100%;
		height:400px;
		/*display:none;*/
	}
	</style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
	<script>
		$(document).ready(function(){
			//scan button
			var code;
			var invoiceid = "<?php echo $_GET['record']; ?>";
			let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
            $('#butt').on('click',function(){
                $('#preview').css('display','');
                //let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
                scanner.addListener('scan', function (content) {
                    code = content;
                    codetext = code.split('-')[0];
                    var avocadoclass = codetext.split('BX')[0];
                    var avocadoboxof = codetext.split('BX')[1];
                    $('#code').html('Avocado class '+avocadoclass+' box of '+avocadoboxof);
                    $('#preview').css('display','none');
                    scanner.stop();
                });
                Instascan.Camera.getCameras().then(function (cameras) {
                    console.log(cameras);
                    console.log(cameras.length);
                if(cameras.length > 1){
                    scanner.start(cameras[1]);
                }
                else if(cameras.length > 0){
                    scanner.start(cameras[0]);
                }
                else {
                    alert('No cameras found.');
                }
                }).catch(function (e) {
                console.error(e);
                });
            });

            $('#confirm').on('click',function(){         	
            	if(code == undefined){
            		$('#code').html("No scan found!!");
            	}
            	else{            		
            		//call a file here.
		        	if(code!="" && code!=undefined){
						$.ajax({
					        url: "insertqr.php",
					        type: "POST",
					        data: {'qrcode':code,'invoiceid':invoiceid},
					        success: function (response) {
					        	if(response)
					        	$('#code').html("Success!");
					        	else
					        	$('#code').html("error occured in db operations");
					        },
					        error: function(jqXHR, textStatus, errorThrown) {
					           $('#code').html(textStatus, errorThrown);
					        }
				    	});
					}
            	}
            });

            //cancel button 
             $('#cancel').on('click',function(){
             	scanner.stop();
             })           
        }) ; 
	</script>
	<title>
		scan your QR
	</title>
</head>
<body>
	<div class="centered">
		<input type="button" value="Scan" class="button" id="butt"/>
		<input type="button" value="Cancel" class="button" id="cancel"/>
		<input type="button" value="Confirm" class="button" id="confirm"/>
	</div>
	<table>
		<tr>
			<td id="code">
			</td>
		</tr>
	</table>
	<div>
	  <video id="preview" class="scanner"></video>
	</div>
</body>
</html>