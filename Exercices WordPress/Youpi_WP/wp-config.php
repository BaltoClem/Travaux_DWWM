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
define( 'AUTH_KEY',         '5x]Y2/xAO=]wWNzzJF[njN:XCxb_a.Ee{2=K`Qm6D75QQqChr[`bj4iSHI7).};:' );
define( 'SECURE_AUTH_KEY',  'Jw=O*JT^(pL*z^@607;^DI>qAZ{F)l6TYM-.FA5k1EoUK5Z({ d~U%L=VYy1hjA/' );
define( 'LOGGED_IN_KEY',    '8sE9573FgfAfzbc*ecL:yl8(1sA(>`k2@lYtZH!*qqiLF-GhxF#v*C=C_G?ET(h>' );
define( 'NONCE_KEY',        'E+|`rqtR9V6|zPe^>>j>{/5I~rQuX_{92<gF`!qblBJqfDPZYi;l@N H/0J&^*Jz' );
define( 'AUTH_SALT',        '-2AZK+ ]qnJ]@PRy6A4BV5WgO4ME+A0stfeR1a1 JY4~9U0V)M>qE@~ysqK/Vl?W' );
define( 'SECURE_AUTH_SALT', ';S?{d%`)CkdB^OJq#_MYYxf3ovl^Ff?[d%&EP[d2i)*BxJY&{r->`a7!_d,VPtuy' );
define( 'LOGGED_IN_SALT',   'YsF[iH)s6K~m`;^e!.K{<XD[]MEyozNBt5n|&5Mo}>yBdS/S[L~+E>Zzy6~|];so' );
define( 'NONCE_SALT',       '{^41%VCU;{-7See2!vfg7AB&1U0{4Vx?I/a^$[.cjvu0y=}KEV<BdL`R<l/;;$>7' );
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
