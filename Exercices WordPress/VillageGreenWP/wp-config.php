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
define( 'DB_NAME', 'wordpress' );

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
define( 'AUTH_KEY',         'b) WK{KCqV1KCYE+j]1j-rLq8Kpkuu.k[l@^d%a?u4AsGFR(#?k[Xbi{i52gxR!w' );
define( 'SECURE_AUTH_KEY',  ',Z~~iCbv=sk]H?l`c{uhfh_Y}W!M:[<DN>UC:x>rVy2@225}p2w?nfoe XIS5Wk{' );
define( 'LOGGED_IN_KEY',    'YWgViMvacFw_,~93<Jd6g-8>q9&E`YE$G54GWd|L$]UeEG#Z/<|/@3)Lo9&i;q</' );
define( 'NONCE_KEY',        'K8VCk7K3dribD2[zc]cB3_jVi_C:sc%iR-bwz?R%(LnNdOl=dP{TK+Ag0GRXZ:{W' );
define( 'AUTH_SALT',        'a>U.GUpqKg~Di>xB&V<[tceOyZO|V[Qkt6-USZXh}?6SR@/0=41MNA~s7pGzj,_?' );
define( 'SECURE_AUTH_SALT', 'cH`(QuK+UO1<7sh/`;+6JAipk;VpVzhg?G`y!xeV;:#S#C]xh0ypd]e2<v_EMF._' );
define( 'LOGGED_IN_SALT',   '~(!p<,<Xy^2@#vA|hof>R!kO~7>_%*cAEk$z Hg(DG?I;|n67Sw>|`$0iej`:?9f' );
define( 'NONCE_SALT',       'S,UKO`;RmpSQ]8.pmm-:L>Y:F*rC19Dd]amB5XI`UKEC=;vk_A/PU7 4QXwrMXRJ' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'vg_';

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
