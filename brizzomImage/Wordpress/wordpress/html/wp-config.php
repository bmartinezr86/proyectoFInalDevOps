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
define( 'DB_NAME', 'db_brizzom' );

/** Database username */
define( 'DB_USER', 'brizzomUser' );

/** Database password */
define( 'DB_PASSWORD', 'brizzom2022@' );

/** Database hostname */
define( 'DB_HOST', '172.20.0.2' );

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
define( 'AUTH_KEY',         'eLjhe?OuZ<$wh:fhPTE*r.~aB=aw:(LL*qIQZ^(p75Y1c^98ZyErS~JHT=~k<Z1o' );
define( 'SECURE_AUTH_KEY',  ']ye !VV-s32p7+-+%4Dv4e$p*Q>Anck7b|MXolW~+:@..*gG1C6y3U28Y88<:LwG' );
define( 'LOGGED_IN_KEY',    'cS6XvMp3K6))]pfh;iG JPZ[G!>;&|j*ycvg#u)_*,KpqHtPh+V}>6=?G!zZBBlC' );
define( 'NONCE_KEY',        '8jz^ %x>kn~zps{/}I~Mx1z&Mgxa~UA<;($o~ObGqn0]b~]F%07Pn{l+$ivgIM.?' );
define( 'AUTH_SALT',        'g-[#64,AM2&1-K%7DUsW}3~`;~k&s~<iU]Moegv;>-43SsRGhaE#dXC/V-9A5;p&' );
define( 'SECURE_AUTH_SALT', 'h/eLvU<.6uRcg9K|=eJn3Y:OfF=ruY@yl@rc6t3ZFy)v.;11`!*+OHmWtT8VakOv' );
define( 'LOGGED_IN_SALT',   'OST-aYE:gcO+a@wyGH;=2?LzO^/{#(@h/OxtXK8vc-*d!bp]ub3{7PD&yIgc2z[I' );
define( 'NONCE_SALT',       'KGzn7{Qu4.{s(j7;^d!LAzD;/.96JeipVR*r9~-5L@pgKXUqC+rMzn=<[gaHAlH[' );

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
