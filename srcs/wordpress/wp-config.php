<?php
// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');
/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'admin');
/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'admin');
/** Adresse de l’hébergement MySQL. */
define('DB_HOST', '10.99.99.99');
/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');
/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');
define('WP_HOME', 'http://192.168.49.231:5050' );
define('WP_SITEURL', 'http://192.168.49.231:5050' );
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );