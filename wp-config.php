<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'usbw');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '*|f Zx$o21)Z{w<%ct$&i-=+!(r}tg=oeU%BOg {o`hq.AziF4juqJ1u.yG1Nd:}');
define('SECURE_AUTH_KEY',  '>}7EolZ5:[gQR8v)mt]Gs<WqfO~)Ali RP2!+8Obnu@wu&%C8$(hVe7.+vwd /m3');
define('LOGGED_IN_KEY',    'Gv{Rqt6T-V?}2Q-e@N^cHmbdSX4IZ`~Tsc$Etn+q9ompiHAUB6]+~f!c`$gHq<l3');
define('NONCE_KEY',        '1L*;>Yy$*xK6L2R:IvN]hi],]Q _8d&@sO*!^J:5CjK *pWJ.&PyuXHi;O< Wldy');
define('AUTH_SALT',        '8@_1ei0qj.iP>F|p*<a>MsOn<*,O!oaZjOnGUevmej4{F2co,kO==8k8=X.bO#d8');
define('SECURE_AUTH_SALT', 'Gayj.HPv`Ovc?rK}vKtbO$ %:x.bW9yC82PPoPZ~])8o+t2y:.gActz]:yvisw=T');
define('LOGGED_IN_SALT',   'aZ6i{,@.=)oi4@jmup&!0Tm=QPsVcWp~BJ]O/Ezj#?HD~d/?|^Gw%FQ0f9]3FeDm');
define('NONCE_SALT',       '<moR}lj&+#~NAI*&|+=!)tfc9lL~yyz;UG:02~O/a[Ut5O@=|?%i7;w}SAw0JE_5');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
