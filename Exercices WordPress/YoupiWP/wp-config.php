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
define( 'DB_NAME', 'youpi' );

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
define( 'AUTH_KEY',         '}Hv^5r-=wNRIO{7t7!^I451=,!T&GNUd9:o0gJJ?c]7zu9E]I:ZYN8|mF2u|(*q/' );
define( 'SECURE_AUTH_KEY',  'XA.CDl?er)dQ(ChVv$%F)$x6hjAA7ym/1t67:h<EV~$9-%0-@lV_-kZ!{e4 *;wc' );
define( 'LOGGED_IN_KEY',    'nVd]Y>IO6{x!aI$3}`Es|oKwbwW9Vj5<&xMO37Y/gUDHI!x~Gis7K@hwep=KZEvZ' );
define( 'NONCE_KEY',        'G:%d`T#15d@>mm_ci6n4N.Lqb$U6u~vG(xaV7@qCl+$L$c-k5:@gPUr%!cx{jOl8' );
define( 'AUTH_SALT',        'z@QU;&(>:U9CB=CFGEu?I0x16n<Tte~2c*$jU=*HJ%e,Y7^GD@q`M}Rn(nKpyDS*' );
define( 'SECURE_AUTH_SALT', '~zAaTSi><<ts$BH|D%xW.tR]+k[?@0R~V+.@P6uVilvTp.]3+C%HAmJwJmI@q$Tf' );
define( 'LOGGED_IN_SALT',   'NxP $qMd8X4|_$P);O~@1^e>n!H= /_-u%V)a.T!g2bP(A{O/`%eH*9r{]H)tdC3' );
define( 'NONCE_SALT',       'MJi$!Js w<58GM!pyUGZpgkpW77$[KX+Qx!.FD]FN}$|y!7Rt}mgZ&&@alr_ja7J' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'yo_';

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
