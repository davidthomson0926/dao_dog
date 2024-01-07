
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

    <header>

    <a href="<?=get_site_url()?>"> <div id="logo">  </div></a>

        <p id="alter">YONI ALTER</p>



        
        <div id="burger"><div></div><div></div><div></div></div>
        <nav id="main-nav">  <?php wp_nav_menu( array( 'theme_location' => 'main' ) ); ?><a id="x">X</a></nav>


    </header>

