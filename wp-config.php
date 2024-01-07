<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'test' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{)x$Zjj4j),jve2XW+{xB(:1G4cvsZ/e|=9,$#&w_>w-nF_hEjBp+~!yx3`b}2~B' );
define( 'SECURE_AUTH_KEY',  'd&Dlf_hzRT0L>AXhSD@#hH`pO*FE@sou5WImQ+N]^IQ4:rCmb{EMs=5BYM]nl,[(' );
define( 'LOGGED_IN_KEY',    'j+PRonweda7M?0_BxA;]/*7i|8KQ^M,pvCY)}wdU5sl6MsRNFuBjq>|SCbTOo7(m' );
define( 'NONCE_KEY',        '~iRiNYp n5HUH<ILKhpZ{;{hM_w}wi!n(gt:T8:bbdaUtIvTx1{PE0jm/Nd`7:A|' );
define( 'AUTH_SALT',        'Q3&kYhx!HXqG77 $p+PR/aEu[ZgKs0gD <NFMl4@*v>J}<C@$X|?e9pN*CKgG lj' );
define( 'SECURE_AUTH_SALT', '%]^~RaB1+%)?F0b[X:!fYPD]x2=kk;ejzMy$|eaUHY9vH4N{r$iF>_%,kWAtHYBb' );
define( 'LOGGED_IN_SALT',   '~qaV+cp7T7NU[ide6nK??^dA<Yp@[xTTWBXRDX!cC~TkL3[Vz%;59n2@:;)lDm`.' );
define( 'NONCE_SALT',       '8N`Re0At-6!+L0phA=](=_ u;7Wc%(8*^!U#Q]dZU0h8i~7/`%c[0@LP3!4m1mq2' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
