<?php
/*
 * Template Name: Blog
 */

get_header();

$util = new \dgcult\Util();

?>
    <div class="container-fluid">
        <div class="row blog-block">
            <div class="col-md-8 blog-left">


                <?php
                if ( have_posts() ) : while ( have_posts() ) : the_post();
                    $image = $util->wp_get_thumbnail_url(get_the_id());

                    ?>
                    <div class="article">
                        <img src="<?=$image?>">
                        <a href="<?=get_the_permalink()?>"> <h1><?=get_the_title()?></h1></a>
                        <p class="the_date"><?=get_the_date()?></p>
                        <?php
                       the_content();

                        ?>
                    </div>
                    <?php
                endwhile;
                endif;

                ?>
            </div>

            <div class="col-md-4">


                <?php if ( is_active_sidebar( 'blog' ) ) : ?>
                    <div id="primary-sidebar" class="primary-sidebar widget-area" role="complementary">
                        <?php dynamic_sidebar( 'blog' ); ?>
                    </div><!-- #primary-sidebar -->
                <?php endif; ?>

            </div>
        </div>

    </div>
<?php

?>

<?php

get_footer();
