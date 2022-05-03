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
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wp_user' );

/** Database password */
define( 'DB_PASSWORD', 'lolo' );

/** Database hostname */
define( 'DB_HOST', 'db' );

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
define( 'AUTH_KEY',         'DXj{;U;j!BWrm92P`$YEAS~rgS{=% nck.:ME4JmK&m|bgIT%)`[5w(x)PU)so4^' );
define( 'SECURE_AUTH_KEY',  't#pYjTOJBp3{=$oxS$9SI4gl1-HXiuVy0h_@t.s%>gOnO=q}kUY~-%@oUwf!_%qf' );
define( 'LOGGED_IN_KEY',    '2[XOgRN<.d1mB2sb2!#^uY%V3m|3cbq;%})JVUDBDM-Q?25(XmbvO2Y:KMGO.,6M' );
define( 'NONCE_KEY',        'ldxss$% /7c_pO e@wdM3G|9zXdV22,l5ZZRWO$r&v16G+mn~<R%IG!O=FiLj<8q' );
define( 'AUTH_SALT',        'Z:/[v]PKSc<xe|dasW>P|4uB),5Q/YAm(1!@FHH -NGQ#mxnLd3M-}>i*H.@?56y' );
define( 'SECURE_AUTH_SALT', 'Gf(F8.U;-Ji9Iilqr.S[E!:Hvq)JcDEm]+yrt}X=iO^BW:)iIRv_TRG-HA134Z.*' );
define( 'LOGGED_IN_SALT',   'T=^mL34``a-3*dzqq9+p3>7T~TasUUsFpr$vgDjgtkviK ~2>.wL+!LAC>b=xYlV' );
define( 'NONCE_SALT',       '7&r&ua|iN~O/7K5D-I9NJc?Rg(OHeZNQA%MAk/ogXAB@ gCI=Vnb&%rqm8~TXB2]' );

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
