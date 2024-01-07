<?php
$qrcheck = (isset($userMeta["qr"][0]) && $userMeta["qr"][0])? "checked" : "";


update_post_meta($post_id, 'qr', $_POST["qr"]);
?>
<div class="field-container">
                <lable><?=_e("Hide QR", "bestcard");?></lable>
<input type="checkbox" name="qr" id="qr" <?=$qrcheck;?>>

</div>