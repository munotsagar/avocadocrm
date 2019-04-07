


<script type="text/javascript">
    {literal}
        $( document ).ready(function() {
        $( "form#EditView" )
        .attr( "enctype", "multipart/form-data" )
        .attr( "encoding", "multipart/form-data" );
    });
{/literal}
</script>
<script type="text/javascript" src='include/SugarFields/Fields/Image/SugarFieldFile.js?v=QS_lw-5w-iZQZjiNEcbgoQ'></script>

{if !empty($fields.qrimage.value) }
    {assign var=showRemove value=true}
{else}
    {assign var=showRemove value=false}
{/if}

{assign var=noChange value=false}

<input type="hidden" name="deleteAttachment" value="0">
<input type="hidden" name="{$fields.qrimage.name}" id="{$fields.qrimage.name}" value="{$fields.qrimage.value}">
<input type="hidden" name="{$fields.qrimage.name}_record_id" id="{$fields.qrimage.name}_record_id" value="{$fields.id.value}">
<span id="{$fields.qrimage.name}_old" style="display:{if !$showRemove}none;{/if}">
  <a href="index.php?entryPoint=download&id={$fields.id.value}_{$fields.qrimage.name}&type={$module}&time={$fields.date_modified.value}" class="tabDetailViewDFLink">{$fields.qrimage.value}</a>

        {if !$noChange}
        <input type='button' class='button' id='remove_button' value='{$APP.LBL_REMOVE}' onclick='SUGAR.field.file.deleteAttachment("{$fields.qrimage.name}","",this);'>
    {/if}
</span>
{if !$noChange}
<span id="{$fields.qrimage.name}_new" style="display:{if $showRemove}none;{/if}">
<input type="hidden" name="{$fields.qrimage.name}_escaped">
<input id="{$fields.qrimage.name}_file" name="{$fields.qrimage.name}_file"
       type="file" title='' size="30"
                       maxlength='255'
                >

    {else}



{/if}

<script type="text/javascript">
$( "#{$fields.qrimage.name}_file{literal} " ).change(function() {
        $("#{/literal}{$fields.qrimage.name}{literal}").val($("#{/literal}{$fields.qrimage.name}_file{literal}").val());
});{/literal}
        </script>


</span>