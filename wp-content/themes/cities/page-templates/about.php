<?php
/**
 * Template Name: About
 */

$fields = get_fields();
get_header();
?>

<section id="about">
    <?php
        foreach($fields["about_section"] as $section){
    ?>
    <div class="about-row">
       <div class="about-row-image" style="background-image:url(<?=$section["image"]?>)"></div>
       <div class="about-content">
           <h2><?=$section["title"]?></h2>
           <div><?=$section["content"]?></div>
        </div>
    </div>
    <?php
        }
    ?>
</section>



<?php get_footer();?>
