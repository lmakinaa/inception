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
 * * Localized language
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
define( 'DB_USER', 'ismail' );

/** Database password */
define( 'DB_PASSWORD', 'admin' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          ']C#oG(YD3[&KzBvVJfYmGA;L_98P=fT3{p%uX{-joy&@pC{va>tCOEUwe:?E]mY1' );
define( 'SECURE_AUTH_KEY',   'b{#Xq[:oEnXXu,Z6fa$6BWb1=/p0>Fr,Qq>#R.;t<84SgJa3[MTOH<;H/uMZ[%1*' );
define( 'LOGGED_IN_KEY',     '@G[8 vaR4_wuC)lv=B!nZqV^92qRbld`i`-I,sk*O4>E39J!O%IEi7tI)>j8eQz^' );
define( 'NONCE_KEY',         'P*YS@sj-ue}L8dy#EbNFx:1D^3aHVvTJ4keirz?5qDK<u=VGn@K;BA]J7jm3s}c:' );
define( 'AUTH_SALT',         'J;*x)7XP>(eM>icukl^)z4&r{Q{_[/XP,F;d?wD$v><DL]O:[=A,=@tyG*{Bz?? ' );
define( 'SECURE_AUTH_SALT',  'KX U?<4v)=YQ2bU]aMDMP}jIwjSFEgJr.0yK77dHqVP 1*sRD|h(R,v<t*%a_}TU' );
define( 'LOGGED_IN_SALT',    '3Rg{$D5%1^@ ,!MC84ili@7D)6k7{bz;KQLd4V0k$,V*9~yE*;-<ZBB{M@]hMnJ8' );
define( 'NONCE_SALT',        ' </P@Bkf] v{JGNzR1+n2;[FyR{S]_R@$MzkZt)QKs(`(@VDVdw+h!IDYY?uao<G' );
define( 'WP_CACHE_KEY_SALT', '42-inception' );

define( 'WP_CACHE', true);
define( 'WP_REDIS_HOST', 'redis');
define( 'WP_REDIS_PORT', 6379);
define( 'WP_REDIS_DATABASE', 0 );

define( 'FS_METHOD', 'direct');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
