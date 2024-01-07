<?php
namespace dgcult;

    define("DIST_DIR", __DIR__."/dist/");
    define("SITE", \get_stylesheet_directory_uri());

    // Load all classes in lib
	foreach( glob(__DIR__ . '/lib/*.php') as $class_path ){
		require_once( $class_path );
	}

    $theme = new Theme();

    $theme->init();
