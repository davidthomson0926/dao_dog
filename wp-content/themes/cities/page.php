<?php
get_header();



    if ( have_posts() ) : while ( have_posts() ) : the_post();
    ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
        <h1><?=get_the_title()?></h1>
        <?php
        the_content();
?>
        </div>
    </div>

</div>
<?php
    endwhile; endif;
?>

<?php

get_footer();
