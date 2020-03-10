<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'jarditouwp' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Y6jatI0>h1:#TZ=w?(ZPb+!$jfsU~l7<S@kmk?=TOxwIkymP*1yUO/gb:K3, oDP' );
define( 'SECURE_AUTH_KEY',  '>xIP$f2@0*m}VhY(<Z>fYx8WvV&xTCa**o5RxE<ED.iZoSCIrte$ =yl)e.Z;]j[' );
define( 'LOGGED_IN_KEY',    'g~CqcqmKdrRp;2I(z.lfyjl|?8$1kxx<6l)jYF_~}k 8ys/;grE3n2Z//H`^?K.]' );
define( 'NONCE_KEY',        '**vsTzw.~KlH5MqBvN`qO3)w4`QyG=.A4RPq(E,]4Ftu-vmq|Qt+-tdk:b]7TM8}' );
define( 'AUTH_SALT',        'Ak7N9Hhtdi%^(<A407~DAD;z^EU7b5&Pw(84+(,#+Nrc7t.dp({>a`~U6}Lc=fIt' );
define( 'SECURE_AUTH_SALT', '?ZT7l28;9x_TZ?82H:W<M.qLk++pJ|f|QqxnyRXe)nyF I7V[(ux -h3kg$^{4;O' );
define( 'LOGGED_IN_SALT',   'vk5]*BZt^{Sxj6f_vZ%6lP=$,62$R(=z .nH|^ZT5c7vre?(fDy%{pS&HjyIE3Q&' );
define( 'NONCE_SALT',       '3vad}TqKAh 4NK<wm7Wk_tLKM#0C#l<($rZKGzsv_1%+v6Y7%&mtUs3cgZv]+Y]M' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
