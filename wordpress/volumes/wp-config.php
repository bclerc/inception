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
define( 'AUTH_KEY',         '/!T11RH>Jfrq=>*GqHn $ekYb@ZoE$;;):i3qATz_d%:e1($5:C%x1*;zrhCxBc#' );
define( 'SECURE_AUTH_KEY',  'su}LJ&Vd9bN{RU3FOy-+q-Qh;j>5kO+UbFOmI>5LF4u6qe,X.OWTA;h[7Pt{P-(A' );
define( 'LOGGED_IN_KEY',    'zhc%NTtkh&y+j^eBvX+ES-b>EH~%R*>ECTKZG|W):I -z`{IJVgY$z3W(;/D+=!y' );
define( 'NONCE_KEY',        'PnR#n41rQq?^g;mE_Db,F[R?i3p`vKCa4xwd22DMd24E=S`OMf84.Y(p_%%r=Ds:' );
define( 'AUTH_SALT',        '>V*-Z(ar,L$3yyDWUdccC%Z9`ptxTSDEK3X)K$#nkxopTDj^tsTZuCZxN|dy^1JD' );
define( 'SECURE_AUTH_SALT', 'L;gy&#/n@O;^n|mQ?)[bC=,PdZ{-ROO?_GA4OPLnB|lO,n/_Y??,d`$/YuqY^s*E' );
define( 'LOGGED_IN_SALT',   '[43w++yY(V]#& |a;4W(1&{8.K2.LzosX8i|{)Nk54VlmjG]mpn3>x;+K5IDpBoK' );
define( 'NONCE_SALT',       'T1k~>K4[%HOKoTApjjqk~}%sf^*L&W*.#gPRZzw%$e.78MPC8CPt)|5(V4^Zqt$]' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'test2_';

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
