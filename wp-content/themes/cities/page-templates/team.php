<?php
/**
 * Template Name: Team
 */

$fields = get_fields();
get_header();
?>

<section id="members">
    <?php
        foreach($fields["team"] as $member){
    ?>
    <div class="member">
       <div class="member-image" style='background-image:url(<?=$member["image"]?>)'></div>
       <p class='name'><?=$member["name"]?></p>
       <p class='title'><?=$member["title"]?></p>
    </div>
    <?php
        }
    ?>
</section>

<?php get_footer();?>
