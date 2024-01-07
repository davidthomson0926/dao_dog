<?php
namespace dgcult;

class Theme
{

	public function __construct() {

	}

	public function init(){
        $this->menus();
        add_action('wp_enqueue_scripts', array($this,'enqueue_script'));
        add_filter('use_block_editor_for_post', '__return_false', 10);
    }

    public function menus(){

        register_nav_menu( 'main', __( 'main' ) );
    }

    public function enqueue_script(){

        wp_enqueue_script( "fancybox", "https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js", array('jquery'), null, true );
        wp_enqueue_script( "main", get_stylesheet_directory_uri() ."/dist/main.js", array('jquery'), filemtime(DIST_DIR ."main.js"), true );
        wp_enqueue_style( "reset", "https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" , "", null);
        wp_enqueue_style( "main_style", get_stylesheet_directory_uri() ."/dist/style.css" , "", filemtime(DIST_DIR ."style.css"));
        wp_enqueue_style( "fancy-style","https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.css" , "", null);
    }
}
