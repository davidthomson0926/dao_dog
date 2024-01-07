<?php
/**
 * Template Name: Minted
 */

$fields = get_fields();
get_header();
?>

<section id="minted">
    <?php
        foreach($fields["minted"] as $item){
    ?>
    <div class="minted-item">
       <a class="minted-image" href='<?=$item["image"]?>'><img src='<?=$item["image"]?>' alt='<?=$item["title"]?>'  /></a>
       <p><?=$item["title"]?></p>
    </div>
    <?php
        }
    ?>
</section>



<?php get_footer();?>
