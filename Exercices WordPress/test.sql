CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(143, 'action_scheduler/migration_hook', 'complete', '2020-03-11 14:42:45', '2020-03-11 15:42:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1583937765;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1583937765;}', 1, 1, '2020-03-11 14:42:46', '2020-03-11 15:42:46', 0, NULL),
(144, 'action_scheduler/migration_hook', 'complete', '2020-03-12 10:39:45', '2020-03-12 11:39:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584009585;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584009585;}', 1, 1, '2020-03-12 10:41:41', '2020-03-12 11:41:41', 0, NULL),
(145, 'action_scheduler/migration_hook', 'complete', '2020-03-12 10:41:41', '2020-03-12 11:41:41', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584009701;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584009701;}', 1, 1, '2020-03-12 10:41:41', '2020-03-12 11:41:41', 0, NULL);