/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2023-02-07 14:01:09 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `ctwp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfblocks7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `expiration` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parameters` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `IP` (`IP`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL,
  PRIMARY KEY (`filenameHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfhoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfknownfilelist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`identifier`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wflogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfls_2fa_secrets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `vtime` int(10) unsigned NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfpendingissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfsnipcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wfstatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_wftrafficrates` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`,`hitType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ctwp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ctwp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `ctwp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/***** TABLE CREATION END *****/


/* INSERT TABLE DATA: ctwp_comments */
INSERT INTO `ctwp_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2023-02-06 10:21:45", "2023-02-06 10:21:45", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.", "0", "post-trashed", "", "comment", "0", "0");

/* INSERT TABLE DATA: ctwp_duplicator_packages */
INSERT INTO `ctwp_duplicator_packages` VALUES("1", "20230207_shapesofcities", "9afe26b5dc7690c51490_20230207140106", "21", "2023-02-07 14:01:09", "gil", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-02-07 14:01:06\";s:7:\"Version\";s:7:\"1.5.2.1\";s:9:\"VersionWP\";s:5:\"6.1.1\";s:9:\"VersionDB\";s:6:\"5.7.39\";s:10:\"VersionPHP\";s:6:\"7.4.33\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:1;s:4:\"Name\";s:23:\"20230207_shapesofcities\";s:4:\"Hash\";s:35:\"9afe26b5dc7690c51490_20230207140106\";s:8:\"NameHash\";s:59:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:69:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"20.5\";s:6:\"WPUser\";s:3:\"gil\";s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:71:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:32:\"/Applications/MAMP/htdocs/cities\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:797;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:5852;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-02-07 14:01:06\";s:7:\"Version\";s:7:\"1.5.2.1\";s:9:\"VersionWP\";s:5:\"6.1.1\";s:9:\"VersionDB\";s:6:\"5.7.39\";s:10:\"VersionPHP\";s:6:\"7.4.33\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20230207_shapesofcities\";s:4:\"Hash\";s:35:\"9afe26b5dc7690c51490_20230207140106\";s:8:\"NameHash\";s:59:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";s:77:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_installer.php.bak\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:46:\"/Applications/MAMP/htdocs/cities/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:72:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:18:\"varLowerCaseTables\";i:0;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:137:\"/Applications/MAMP/htdocs/cities/wp-content/backups-dup-lite/tmp/20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:41:\"/Applications/MAMP/htdocs/cities/wp-admin\";i:1;s:44:\"/Applications/MAMP/htdocs/cities/wp-includes\";i:2;s:53:\"/Applications/MAMP/htdocs/cities/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:32:\"/Applications/MAMP/htdocs/cities\";i:1;s:32:\"/Applications/MAMP/htdocs/cities\";i:2;s:43:\"/Applications/MAMP/htdocs/cities/wp-content\";i:3;s:51:\"/Applications/MAMP/htdocs/cities/wp-content/uploads\";i:4;s:51:\"/Applications/MAMP/htdocs/cities/wp-content/plugins\";i:5;s:54:\"/Applications/MAMP/htdocs/cities/wp-content/mu-plugins\";i:6;s:50:\"/Applications/MAMP/htdocs/cities/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:64:\"/Applications/MAMP/htdocs/cities/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:144;}");

/* INSERT TABLE DATA: ctwp_options */
INSERT INTO `ctwp_options` VALUES("1", "siteurl", "http://localhost:8888/cities", "yes");
INSERT INTO `ctwp_options` VALUES("2", "home", "http://localhost:8888/cities", "yes");
INSERT INTO `ctwp_options` VALUES("3", "blogname", "Shapes of Cities", "yes");
INSERT INTO `ctwp_options` VALUES("4", "blogdescription", "", "yes");
INSERT INTO `ctwp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `ctwp_options` VALUES("6", "admin_email", "gilalter@gmail.com", "yes");
INSERT INTO `ctwp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `ctwp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `ctwp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `ctwp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `ctwp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `ctwp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `ctwp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `ctwp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `ctwp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `ctwp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `ctwp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `ctwp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `ctwp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `ctwp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `ctwp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `ctwp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `ctwp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `ctwp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `ctwp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `ctwp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `ctwp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `ctwp_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `ctwp_options` VALUES("29", "rewrite_rules", "a:98:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `ctwp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `ctwp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `ctwp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `ctwp_options` VALUES("33", "active_plugins", "a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:25:\"duplicator/duplicator.php\";i:3;s:23:\"wordfence/wordfence.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}", "yes");
INSERT INTO `ctwp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `ctwp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `ctwp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `ctwp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `ctwp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `ctwp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `ctwp_options` VALUES("40", "template", "cities", "yes");
INSERT INTO `ctwp_options` VALUES("41", "stylesheet", "cities", "yes");
INSERT INTO `ctwp_options` VALUES("42", "comment_registration", "0", "yes");
INSERT INTO `ctwp_options` VALUES("43", "html_type", "text/html", "yes");
INSERT INTO `ctwp_options` VALUES("44", "use_trackback", "0", "yes");
INSERT INTO `ctwp_options` VALUES("45", "default_role", "subscriber", "yes");
INSERT INTO `ctwp_options` VALUES("46", "db_version", "53496", "yes");
INSERT INTO `ctwp_options` VALUES("47", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `ctwp_options` VALUES("48", "upload_path", "", "yes");
INSERT INTO `ctwp_options` VALUES("49", "blog_public", "1", "yes");
INSERT INTO `ctwp_options` VALUES("50", "default_link_category", "2", "yes");
INSERT INTO `ctwp_options` VALUES("51", "show_on_front", "page", "yes");
INSERT INTO `ctwp_options` VALUES("52", "tag_base", "", "yes");
INSERT INTO `ctwp_options` VALUES("53", "show_avatars", "1", "yes");
INSERT INTO `ctwp_options` VALUES("54", "avatar_rating", "G", "yes");
INSERT INTO `ctwp_options` VALUES("55", "upload_url_path", "", "yes");
INSERT INTO `ctwp_options` VALUES("56", "thumbnail_size_w", "150", "yes");
INSERT INTO `ctwp_options` VALUES("57", "thumbnail_size_h", "150", "yes");
INSERT INTO `ctwp_options` VALUES("58", "thumbnail_crop", "1", "yes");
INSERT INTO `ctwp_options` VALUES("59", "medium_size_w", "300", "yes");
INSERT INTO `ctwp_options` VALUES("60", "medium_size_h", "300", "yes");
INSERT INTO `ctwp_options` VALUES("61", "avatar_default", "mystery", "yes");
INSERT INTO `ctwp_options` VALUES("62", "large_size_w", "1024", "yes");
INSERT INTO `ctwp_options` VALUES("63", "large_size_h", "1024", "yes");
INSERT INTO `ctwp_options` VALUES("64", "image_default_link_type", "none", "yes");
INSERT INTO `ctwp_options` VALUES("65", "image_default_size", "", "yes");
INSERT INTO `ctwp_options` VALUES("66", "image_default_align", "", "yes");
INSERT INTO `ctwp_options` VALUES("67", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `ctwp_options` VALUES("68", "close_comments_days_old", "14", "yes");
INSERT INTO `ctwp_options` VALUES("69", "thread_comments", "1", "yes");
INSERT INTO `ctwp_options` VALUES("70", "thread_comments_depth", "5", "yes");
INSERT INTO `ctwp_options` VALUES("71", "page_comments", "0", "yes");
INSERT INTO `ctwp_options` VALUES("72", "comments_per_page", "50", "yes");
INSERT INTO `ctwp_options` VALUES("73", "default_comments_page", "newest", "yes");
INSERT INTO `ctwp_options` VALUES("74", "comment_order", "asc", "yes");
INSERT INTO `ctwp_options` VALUES("75", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("76", "widget_categories", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("77", "widget_text", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("78", "widget_rss", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("79", "uninstall_plugins", "a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}", "no");
INSERT INTO `ctwp_options` VALUES("80", "timezone_string", "", "yes");
INSERT INTO `ctwp_options` VALUES("81", "page_for_posts", "0", "yes");
INSERT INTO `ctwp_options` VALUES("82", "page_on_front", "6", "yes");
INSERT INTO `ctwp_options` VALUES("83", "default_post_format", "0", "yes");
INSERT INTO `ctwp_options` VALUES("84", "link_manager_enabled", "0", "yes");
INSERT INTO `ctwp_options` VALUES("85", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `ctwp_options` VALUES("86", "site_icon", "0", "yes");
INSERT INTO `ctwp_options` VALUES("87", "medium_large_size_w", "768", "yes");
INSERT INTO `ctwp_options` VALUES("88", "medium_large_size_h", "0", "yes");
INSERT INTO `ctwp_options` VALUES("89", "wp_page_for_privacy_policy", "3", "yes");
INSERT INTO `ctwp_options` VALUES("90", "show_comments_cookies_opt_in", "1", "yes");
INSERT INTO `ctwp_options` VALUES("91", "admin_email_lifespan", "1691230905", "yes");
INSERT INTO `ctwp_options` VALUES("92", "disallowed_keys", "", "no");
INSERT INTO `ctwp_options` VALUES("93", "comment_previously_approved", "1", "yes");
INSERT INTO `ctwp_options` VALUES("94", "auto_plugin_theme_update_emails", "a:0:{}", "no");
INSERT INTO `ctwp_options` VALUES("95", "auto_update_core_dev", "enabled", "yes");
INSERT INTO `ctwp_options` VALUES("96", "auto_update_core_minor", "enabled", "yes");
INSERT INTO `ctwp_options` VALUES("97", "auto_update_core_major", "enabled", "yes");
INSERT INTO `ctwp_options` VALUES("98", "wp_force_deactivated_plugins", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("99", "initial_db_version", "53496", "yes");
INSERT INTO `ctwp_options` VALUES("100", "ctwp_user_roles", "a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}", "yes");
INSERT INTO `ctwp_options` VALUES("101", "fresh_site", "0", "yes");
INSERT INTO `ctwp_options` VALUES("102", "user_count", "2", "no");
INSERT INTO `ctwp_options` VALUES("103", "widget_block", "a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("104", "sidebars_widgets", "a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `ctwp_options` VALUES("105", "cron", "a:16:{i:1675779705;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1675781822;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1675781919;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1675808505;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675808521;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675851705;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675851721;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675851723;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675853744;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675853919;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675912800;a:1:{s:30:\"wordfence_start_scheduled_scan\";a:1:{s:32:\"eec68d2410caa6138f1f361eed9c11be\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1675912800;}}}}i:1676172000;a:1:{s:30:\"wordfence_start_scheduled_scan\";a:1:{s:32:\"a215ba37e1c89f0f739ee9a5cba4f3f4\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1676172000;}}}}i:1676304000;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1676370105;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1676431200;a:1:{s:30:\"wordfence_start_scheduled_scan\";a:1:{s:32:\"9ae1b6712e7f08903ae1d04753b974b5\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1676431200;}}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `ctwp_options` VALUES("106", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("107", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("108", "widget_archives", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("109", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("110", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("111", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("112", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("113", "widget_meta", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("114", "widget_search", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("115", "widget_recent-posts", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("116", "widget_recent-comments", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("117", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("118", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("119", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("121", "recovery_keys", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("122", "https_detection_errors", "a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}", "yes");
INSERT INTO `ctwp_options` VALUES("123", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1675776917;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `ctwp_options` VALUES("128", "theme_mods_twentytwentythree", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1675679114;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}", "yes");
INSERT INTO `ctwp_options` VALUES("133", "_site_transient_update_themes", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675776920;s:7:\"checked\";a:1:{s:6:\"cities\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `ctwp_options` VALUES("135", "_site_transient_timeout_browser_894dc60a4e148f4652615ed246d3e298", "1676283722", "no");
INSERT INTO `ctwp_options` VALUES("136", "_site_transient_browser_894dc60a4e148f4652615ed246d3e298", "a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"109.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}", "no");
INSERT INTO `ctwp_options` VALUES("137", "_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447", "1676283723", "no");
INSERT INTO `ctwp_options` VALUES("138", "_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447", "a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}", "no");
INSERT INTO `ctwp_options` VALUES("140", "can_compress_scripts", "1", "no");
INSERT INTO `ctwp_options` VALUES("155", "finished_updating_comment_type", "1", "yes");
INSERT INTO `ctwp_options` VALUES("156", "current_theme", "shape of Cities", "yes");
INSERT INTO `ctwp_options` VALUES("157", "theme_mods_cities", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"main\";i:2;}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `ctwp_options` VALUES("158", "theme_switched", "", "yes");
INSERT INTO `ctwp_options` VALUES("159", "recently_activated", "a:0:{}", "yes");
INSERT INTO `ctwp_options` VALUES("163", "acf_version", "6.0.7", "yes");
INSERT INTO `ctwp_options` VALUES("165", "_transient_timeout_acf_plugin_updates", "1675852005", "no");
INSERT INTO `ctwp_options` VALUES("166", "_transient_acf_plugin_updates", "a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}", "no");
INSERT INTO `ctwp_options` VALUES("167", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `ctwp_options` VALUES("170", "yoast_migrations_free", "a:1:{s:7:\"version\";s:4:\"20.0\";}", "yes");
INSERT INTO `ctwp_options` VALUES("171", "wpseo", "a:100:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.0\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1675680944;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:28:\"http://localhost:8888/cities\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:26:\"dismiss_old_premium_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1675680944;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}}", "yes");
INSERT INTO `ctwp_options` VALUES("172", "wpseo_titles", "a:110:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}", "yes");
INSERT INTO `ctwp_options` VALUES("173", "wpseo_social", "a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}", "yes");
INSERT INTO `ctwp_options` VALUES("205", "wordfence_ls_version", "1.0.12", "yes");
INSERT INTO `ctwp_options` VALUES("206", "wfls_last_role_change", "1675681012", "no");
INSERT INTO `ctwp_options` VALUES("207", "wordfence_version", "7.8.2", "yes");
INSERT INTO `ctwp_options` VALUES("208", "wordfence_case", "1", "yes");
INSERT INTO `ctwp_options` VALUES("209", "wordfence_installed", "1", "yes");
INSERT INTO `ctwp_options` VALUES("210", "wordfenceActivated", "1", "yes");
INSERT INTO `ctwp_options` VALUES("211", "wf_plugin_act_error", "", "yes");
INSERT INTO `ctwp_options` VALUES("229", "widget_akismet_widget", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("521", "_site_transient_timeout_theme_roots", "1675778718", "no");
INSERT INTO `ctwp_options` VALUES("522", "_site_transient_theme_roots", "a:1:{s:6:\"cities\";s:7:\"/themes\";}", "no");
INSERT INTO `ctwp_options` VALUES("523", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675776922;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:7:\"1.5.2.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicator.1.5.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2605836\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2605835\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.8.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.8.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=2070855\";s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}}s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:25:\"duplicator/duplicator.php\";s:7:\"1.5.2.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"wordfence/wordfence.php\";s:5:\"7.8.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"20.0\";}}", "no");
INSERT INTO `ctwp_options` VALUES("524", "_transient_health-check-site-status-result", "{\"good\":13,\"recommended\":7,\"critical\":1}", "yes");
INSERT INTO `ctwp_options` VALUES("531", "_transient_timeout_wpseo_total_unindexed_post_type_archives", "1675864834", "no");
INSERT INTO `ctwp_options` VALUES("532", "_transient_wpseo_total_unindexed_post_type_archives", "0", "no");
INSERT INTO `ctwp_options` VALUES("533", "_transient_timeout_wpseo_total_unindexed_general_items", "1675864834", "no");
INSERT INTO `ctwp_options` VALUES("534", "_transient_wpseo_total_unindexed_general_items", "0", "no");
INSERT INTO `ctwp_options` VALUES("535", "_transient_timeout_wpseo_unindexed_post_link_count", "1675864834", "no");
INSERT INTO `ctwp_options` VALUES("536", "_transient_wpseo_unindexed_post_link_count", "0", "no");
INSERT INTO `ctwp_options` VALUES("537", "_transient_timeout_wpseo_unindexed_term_link_count", "1675864834", "no");
INSERT INTO `ctwp_options` VALUES("538", "_transient_wpseo_unindexed_term_link_count", "0", "no");
INSERT INTO `ctwp_options` VALUES("543", "_transient_timeout_wpseo_total_unindexed_posts_limited", "1675779356", "no");
INSERT INTO `ctwp_options` VALUES("544", "_transient_wpseo_total_unindexed_posts_limited", "0", "no");
INSERT INTO `ctwp_options` VALUES("545", "_transient_timeout_wpseo_total_unindexed_terms_limited", "1675779356", "no");
INSERT INTO `ctwp_options` VALUES("546", "_transient_wpseo_total_unindexed_terms_limited", "0", "no");
INSERT INTO `ctwp_options` VALUES("547", "duplicator_settings", "a:17:{s:7:\"version\";s:7:\"1.5.2.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}", "yes");
INSERT INTO `ctwp_options` VALUES("548", "duplicator_version_plugin", "1.5.2.1", "yes");
INSERT INTO `ctwp_options` VALUES("549", "duplicator_activated", "a:1:{s:4:\"lite\";i:1675778456;}", "yes");
INSERT INTO `ctwp_options` VALUES("550", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-02-07 14:01:06\";s:7:\"Version\";s:7:\"1.5.2.1\";s:9:\"VersionWP\";s:5:\"6.1.1\";s:9:\"VersionDB\";s:6:\"5.7.39\";s:10:\"VersionPHP\";s:6:\"7.4.33\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20230207_shapesofcities\";s:4:\"Hash\";s:35:\"9afe26b5dc7690c51490_20230207140106\";s:8:\"NameHash\";s:59:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:69:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:32:\"/Applications/MAMP/htdocs/cities\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:797;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:5852;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-02-07 14:01:06\";s:7:\"Version\";s:7:\"1.5.2.1\";s:9:\"VersionWP\";s:5:\"6.1.1\";s:9:\"VersionDB\";s:6:\"5.7.39\";s:10:\"VersionPHP\";s:6:\"7.4.33\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20230207_shapesofcities\";s:4:\"Hash\";s:35:\"9afe26b5dc7690c51490_20230207140106\";s:8:\"NameHash\";s:59:\"20230207_shapesofcities_9afe26b5dc7690c51490_20230207140106\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:46:\"/Applications/MAMP/htdocs/cities/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:18:\"varLowerCaseTables\";i:0;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:65;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:41:\"/Applications/MAMP/htdocs/cities/wp-admin\";i:1;s:44:\"/Applications/MAMP/htdocs/cities/wp-includes\";i:2;s:53:\"/Applications/MAMP/htdocs/cities/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:32:\"/Applications/MAMP/htdocs/cities\";i:1;s:32:\"/Applications/MAMP/htdocs/cities\";i:2;s:43:\"/Applications/MAMP/htdocs/cities/wp-content\";i:3;s:51:\"/Applications/MAMP/htdocs/cities/wp-content/uploads\";i:4;s:51:\"/Applications/MAMP/htdocs/cities/wp-content/plugins\";i:5;s:54:\"/Applications/MAMP/htdocs/cities/wp-content/mu-plugins\";i:6;s:50:\"/Applications/MAMP/htdocs/cities/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:64:\"/Applications/MAMP/htdocs/cities/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:143;}", "yes");

/* INSERT TABLE DATA: ctwp_postmeta */
INSERT INTO `ctwp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `ctwp_postmeta` VALUES("2", "3", "_wp_page_template", "default");
INSERT INTO `ctwp_postmeta` VALUES("5", "6", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("6", "6", "_wp_page_template", "default");
INSERT INTO `ctwp_postmeta` VALUES("7", "6", "_edit_lock", "1675705075:1");
INSERT INTO `ctwp_postmeta` VALUES("8", "8", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("9", "8", "_wp_page_template", "page-templates/minted.php");
INSERT INTO `ctwp_postmeta` VALUES("10", "8", "_edit_lock", "1675693937:1");
INSERT INTO `ctwp_postmeta` VALUES("11", "10", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("12", "10", "_wp_page_template", "page-templates/about.php");
INSERT INTO `ctwp_postmeta` VALUES("13", "10", "_edit_lock", "1675706569:1");
INSERT INTO `ctwp_postmeta` VALUES("14", "12", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("15", "12", "_edit_lock", "1675703182:1");
INSERT INTO `ctwp_postmeta` VALUES("16", "19", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("17", "19", "_edit_lock", "1675703428:1");
INSERT INTO `ctwp_postmeta` VALUES("18", "25", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("19", "25", "_edit_lock", "1675694794:1");
INSERT INTO `ctwp_postmeta` VALUES("20", "3", "_edit_lock", "1675679732:1");
INSERT INTO `ctwp_postmeta` VALUES("21", "3", "_wp_trash_meta_status", "draft");
INSERT INTO `ctwp_postmeta` VALUES("22", "3", "_wp_trash_meta_time", "1675679879");
INSERT INTO `ctwp_postmeta` VALUES("23", "3", "_wp_desired_post_slug", "privacy-policy");
INSERT INTO `ctwp_postmeta` VALUES("24", "2", "_wp_trash_meta_status", "publish");
INSERT INTO `ctwp_postmeta` VALUES("25", "2", "_wp_trash_meta_time", "1675679880");
INSERT INTO `ctwp_postmeta` VALUES("26", "2", "_wp_desired_post_slug", "sample-page");
INSERT INTO `ctwp_postmeta` VALUES("27", "1", "_wp_trash_meta_status", "publish");
INSERT INTO `ctwp_postmeta` VALUES("28", "1", "_wp_trash_meta_time", "1675679886");
INSERT INTO `ctwp_postmeta` VALUES("29", "1", "_wp_desired_post_slug", "hello-world");
INSERT INTO `ctwp_postmeta` VALUES("30", "1", "_wp_trash_meta_comments_status", "a:1:{i:1;s:1:\"1\";}");
INSERT INTO `ctwp_postmeta` VALUES("31", "6", "text_before_countdown", "Auction ends in");
INSERT INTO `ctwp_postmeta` VALUES("32", "6", "_text_before_countdown", "field_63e0d68dae68a");
INSERT INTO `ctwp_postmeta` VALUES("33", "6", "countdown_end", "2023-04-06 00:00:00");
INSERT INTO `ctwp_postmeta` VALUES("34", "6", "_countdown_end", "field_63e0d6b6ae68b");
INSERT INTO `ctwp_postmeta` VALUES("35", "6", "button_link", "https://cities.yoniishappy.com/");
INSERT INTO `ctwp_postmeta` VALUES("36", "6", "_button_link", "field_63e0d721ae68d");
INSERT INTO `ctwp_postmeta` VALUES("37", "6", "button_text", "BID ON A CITY");
INSERT INTO `ctwp_postmeta` VALUES("38", "6", "_button_text", "field_63e0d72eae68e");
INSERT INTO `ctwp_postmeta` VALUES("39", "6", "quote", "Cities have always been the fireplaces of civilization,\r\nwhence light and heat radiated out.");
INSERT INTO `ctwp_postmeta` VALUES("40", "6", "_quote", "field_63e0d73eae68f");
INSERT INTO `ctwp_postmeta` VALUES("41", "6", "quote_by", "Freidrich Engels");
INSERT INTO `ctwp_postmeta` VALUES("42", "6", "_quote_by", "field_63e0d74fae690");
INSERT INTO `ctwp_postmeta` VALUES("43", "32", "text_before_countdown", "Auction ends in");
INSERT INTO `ctwp_postmeta` VALUES("44", "32", "_text_before_countdown", "field_63e0d68dae68a");
INSERT INTO `ctwp_postmeta` VALUES("45", "32", "countdown_end", "2023-04-06 00:00:00");
INSERT INTO `ctwp_postmeta` VALUES("46", "32", "_countdown_end", "field_63e0d6b6ae68b");
INSERT INTO `ctwp_postmeta` VALUES("47", "32", "button_link", "https://cities.yoniishappy.com/");
INSERT INTO `ctwp_postmeta` VALUES("48", "32", "_button_link", "field_63e0d721ae68d");
INSERT INTO `ctwp_postmeta` VALUES("49", "32", "button_text", "BID ON A CITY");
INSERT INTO `ctwp_postmeta` VALUES("50", "32", "_button_text", "field_63e0d72eae68e");
INSERT INTO `ctwp_postmeta` VALUES("51", "32", "quote", "Cities have always been the fireplaces of civilization,\r\nwhence light and heat radiated out.");
INSERT INTO `ctwp_postmeta` VALUES("52", "32", "_quote", "field_63e0d73eae68f");
INSERT INTO `ctwp_postmeta` VALUES("53", "32", "quote_by", "Freidrich Engels");
INSERT INTO `ctwp_postmeta` VALUES("54", "32", "_quote_by", "field_63e0d74fae690");
INSERT INTO `ctwp_postmeta` VALUES("55", "33", "_wp_attached_file", "2023/02/YoniAlter_London.gif");
INSERT INTO `ctwp_postmeta` VALUES("56", "33", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:520;s:6:\"height\";i:743;s:4:\"file\";s:28:\"2023/02/YoniAlter_London.gif\";s:8:\"filesize\";i:24122;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"YoniAlter_London-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:15957;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"YoniAlter_London-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:7761;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("57", "34", "_wp_attached_file", "2023/02/YoniAlter_NewYork.gif");
INSERT INTO `ctwp_postmeta` VALUES("58", "34", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:520;s:6:\"height\";i:743;s:4:\"file\";s:29:\"2023/02/YoniAlter_NewYork.gif\";s:8:\"filesize\";i:27158;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"YoniAlter_NewYork-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:16415;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"YoniAlter_NewYork-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:8217;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("59", "35", "_wp_attached_file", "2023/02/YoniAlter_Toronto.gif");
INSERT INTO `ctwp_postmeta` VALUES("60", "35", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:506;s:6:\"height\";i:723;s:4:\"file\";s:29:\"2023/02/YoniAlter_Toronto.gif\";s:8:\"filesize\";i:16596;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"YoniAlter_Toronto-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:15665;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"YoniAlter_Toronto-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:5118;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("61", "36", "_wp_attached_file", "2023/02/YoniAlter_kuala.gif");
INSERT INTO `ctwp_postmeta` VALUES("62", "36", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:506;s:6:\"height\";i:723;s:4:\"file\";s:27:\"2023/02/YoniAlter_kuala.gif\";s:8:\"filesize\";i:27323;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"YoniAlter_kuala-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:18989;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"YoniAlter_kuala-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:7728;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("63", "37", "_wp_attached_file", "2023/02/YoniAlter_Shanghai.gif");
INSERT INTO `ctwp_postmeta` VALUES("64", "37", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:520;s:6:\"height\";i:743;s:4:\"file\";s:30:\"2023/02/YoniAlter_Shanghai.gif\";s:8:\"filesize\";i:29074;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"YoniAlter_Shanghai-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:17682;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"YoniAlter_Shanghai-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:8288;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("65", "38", "_wp_attached_file", "2023/02/YoniAlter_SanFrancisco.gif");
INSERT INTO `ctwp_postmeta` VALUES("66", "38", "_wp_attachment_metadata", "a:6:{s:5:\"width\";i:506;s:6:\"height\";i:723;s:4:\"file\";s:34:\"2023/02/YoniAlter_SanFrancisco.gif\";s:8:\"filesize\";i:45235;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"YoniAlter_SanFrancisco-210x300.gif\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:15897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"YoniAlter_SanFrancisco-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:8507;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `ctwp_postmeta` VALUES("67", "10", "about_section_0_title", "THE COLLECTION:");
INSERT INTO `ctwp_postmeta` VALUES("68", "10", "_about_section_0_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("69", "10", "about_section_0_content", "London-based artist Yoni Alter developed this colourful series titled Shapes of Cities. Each\r\nunique creation features a particular city\'s key buildings and landmarks, clustered together\r\nand depicted in an accurate comparative scale. To develop the rainbow palette, Alter\r\ncombined simple vector shapes with basic colour theory. The artist overlapped the\r\ntransparent layers to successfully achieve a colourful and vibrant display–a series that will\r\nadd a great deal of style to your life.");
INSERT INTO `ctwp_postmeta` VALUES("70", "10", "_about_section_0_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("71", "10", "about_section_0_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("72", "10", "_about_section_0_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("73", "10", "about_section_0_image_alt", "London");
INSERT INTO `ctwp_postmeta` VALUES("74", "10", "_about_section_0_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("75", "10", "about_section_1_title", "");
INSERT INTO `ctwp_postmeta` VALUES("76", "10", "_about_section_1_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("77", "10", "about_section_1_content", "The collection includes 61 cities around the world, including places like Shanghai, New York,\r\nLondon, Paris, Sydney, and Tokyo. Each design was researched and thoroughly planned\r\nout, as evidenced by the system of measurements that runs along the right side of each\r\nimage. Thanks to Alter\'s calculations, it\'s easy to grasp an understanding of how tall each\r\npoint of interest towers in comparison to the rest. From the Eiffel Tower to the Statue of\r\nLiberty, viewing the series is like taking a quick tour around the world.");
INSERT INTO `ctwp_postmeta` VALUES("78", "10", "_about_section_1_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("79", "10", "about_section_1_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("80", "10", "_about_section_1_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("81", "10", "about_section_1_image_alt", "New York");
INSERT INTO `ctwp_postmeta` VALUES("82", "10", "_about_section_1_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("83", "10", "about_section_2_title", "");
INSERT INTO `ctwp_postmeta` VALUES("84", "10", "_about_section_2_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("85", "10", "about_section_2_content", "It was while walking in Hyde Park in London that the idea for Shapes of Cities came to me.\r\nI saw the triangular \'Shard\' building intersecting with the round London Eye, both very simple\r\ngeometrical shapes. I decided to explore what shapes characterise different cities and\r\ncombined it with my love for colour and composition.\r\nI keep true to the buildings and landmarks\' scales and shapes to represent the cities in a\r\nway which has both an accurate dimension and an artistic merit.");
INSERT INTO `ctwp_postmeta` VALUES("86", "10", "_about_section_2_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("87", "10", "about_section_2_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("88", "10", "_about_section_2_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("89", "10", "about_section_2_image_alt", "Toronto");
INSERT INTO `ctwp_postmeta` VALUES("90", "10", "_about_section_2_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("91", "10", "about_section_3_title", "ABOUT:");
INSERT INTO `ctwp_postmeta` VALUES("92", "10", "_about_section_3_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("93", "10", "about_section_3_content", "Yoni Alter is a multimedia artist exploring the threshold between art and design. His vibrantly\r\ncoloured works segue between the figurative, the abstract, form, and space, always\r\nchallenging viewers to look twice. Guided by experimentation and semiotics, Yoni\r\npassionately seeks new ways of creating visual representations, working across sculpture,\r\npainting, print, and digital media.");
INSERT INTO `ctwp_postmeta` VALUES("94", "10", "_about_section_3_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("95", "10", "about_section_3_image", "37");
INSERT INTO `ctwp_postmeta` VALUES("96", "10", "_about_section_3_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("97", "10", "about_section_3_image_alt", "shanghai");
INSERT INTO `ctwp_postmeta` VALUES("98", "10", "_about_section_3_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("99", "10", "about_section_4_title", "YONI ALTER‘S EARLY CAREER AND INFLUENCES");
INSERT INTO `ctwp_postmeta` VALUES("100", "10", "_about_section_4_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("101", "10", "about_section_4_content", "Alter studied Art and Design in Jerusalem before completing his MA in Graphic Design at the\r\nUniversity of the Arts London. London ceaselessly functions as a source of inspiration for the\r\n\r\nartist. For example, his debut London show at Kemistry Gallery creatively abstracted London\r\narchitecture and the surrounding urban landscape. Yoni synthesises sharp silhouettes, bold\r\ncolouring, and Pop Art iconography, reflecting the seductive creative vibe of London city.");
INSERT INTO `ctwp_postmeta` VALUES("102", "10", "_about_section_4_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("103", "10", "about_section_4_image", "36");
INSERT INTO `ctwp_postmeta` VALUES("104", "10", "_about_section_4_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("105", "10", "about_section_4_image_alt", "Kuala Lampur");
INSERT INTO `ctwp_postmeta` VALUES("106", "10", "_about_section_4_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("107", "10", "about_section_5_title", "COLLABORATIONS AND DESIGN");
INSERT INTO `ctwp_postmeta` VALUES("108", "10", "_about_section_5_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("109", "10", "about_section_5_content", "Yoni also designs graphic works for iconic brands, with past collaborations including projects\r\nwith Karl Lagerfeld and Hermes. He is also behind a best-selling merchandise range for\r\nTate. You may have seen his work covering double-decker buses; on a 25m long banner in\r\nShoreditch and on a 25m tall LED tree in Wembley. His art was part of the acclaimed 100\r\nYears of Graphic Design exhibition. Press features include The Guardian, Phaidon,\r\nCampaign, The Atlantic, and My Modern Met, to name a few.");
INSERT INTO `ctwp_postmeta` VALUES("110", "10", "_about_section_5_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("111", "10", "about_section_5_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("112", "10", "_about_section_5_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("113", "10", "about_section_5_image_alt", "San Fransisco");
INSERT INTO `ctwp_postmeta` VALUES("114", "10", "_about_section_5_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("115", "10", "about_section", "6");
INSERT INTO `ctwp_postmeta` VALUES("116", "10", "_about_section", "field_63e0d7643e346");
INSERT INTO `ctwp_postmeta` VALUES("117", "39", "about_section_0_title", "THE COLLECTION:");
INSERT INTO `ctwp_postmeta` VALUES("118", "39", "_about_section_0_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("119", "39", "about_section_0_content", "London-based artist Yoni Alter developed this colourful series titled Shapes of Cities. Each\r\nunique creation features a particular city\'s key buildings and landmarks, clustered together\r\nand depicted in an accurate comparative scale. To develop the rainbow palette, Alter\r\ncombined simple vector shapes with basic colour theory. The artist overlapped the\r\ntransparent layers to successfully achieve a colourful and vibrant display–a series that will\r\nadd a great deal of style to your life.");
INSERT INTO `ctwp_postmeta` VALUES("120", "39", "_about_section_0_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("121", "39", "about_section_0_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("122", "39", "_about_section_0_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("123", "39", "about_section_0_image_alt", "London");
INSERT INTO `ctwp_postmeta` VALUES("124", "39", "_about_section_0_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("125", "39", "about_section_1_title", "");
INSERT INTO `ctwp_postmeta` VALUES("126", "39", "_about_section_1_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("127", "39", "about_section_1_content", "The collection includes 61 cities around the world, including places like Shanghai, New York,\r\nLondon, Paris, Sydney, and Tokyo. Each design was researched and thoroughly planned\r\nout, as evidenced by the system of measurements that runs along the right side of each\r\nimage. Thanks to Alter\'s calculations, it\'s easy to grasp an understanding of how tall each\r\npoint of interest towers in comparison to the rest. From the Eiffel Tower to the Statue of\r\nLiberty, viewing the series is like taking a quick tour around the world.");
INSERT INTO `ctwp_postmeta` VALUES("128", "39", "_about_section_1_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("129", "39", "about_section_1_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("130", "39", "_about_section_1_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("131", "39", "about_section_1_image_alt", "New York");
INSERT INTO `ctwp_postmeta` VALUES("132", "39", "_about_section_1_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("133", "39", "about_section_2_title", "");
INSERT INTO `ctwp_postmeta` VALUES("134", "39", "_about_section_2_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("135", "39", "about_section_2_content", "It was while walking in Hyde Park in London that the idea for Shapes of Cities came to me.\r\nI saw the triangular \'Shard\' building intersecting with the round London Eye, both very simple\r\ngeometrical shapes. I decided to explore what shapes characterise different cities and\r\ncombined it with my love for colour and composition.\r\nI keep true to the buildings and landmarks\' scales and shapes to represent the cities in a\r\nway which has both an accurate dimension and an artistic merit.");
INSERT INTO `ctwp_postmeta` VALUES("136", "39", "_about_section_2_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("137", "39", "about_section_2_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("138", "39", "_about_section_2_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("139", "39", "about_section_2_image_alt", "Toronto");
INSERT INTO `ctwp_postmeta` VALUES("140", "39", "_about_section_2_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("141", "39", "about_section_3_title", "ABOUT:");
INSERT INTO `ctwp_postmeta` VALUES("142", "39", "_about_section_3_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("143", "39", "about_section_3_content", "Yoni Alter is a multimedia artist exploring the threshold between art and design. His vibrantly\r\ncoloured works segue between the figurative, the abstract, form, and space, always\r\nchallenging viewers to look twice. Guided by experimentation and semiotics, Yoni\r\npassionately seeks new ways of creating visual representations, working across sculpture,\r\npainting, print, and digital media.");
INSERT INTO `ctwp_postmeta` VALUES("144", "39", "_about_section_3_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("145", "39", "about_section_3_image", "37");
INSERT INTO `ctwp_postmeta` VALUES("146", "39", "_about_section_3_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("147", "39", "about_section_3_image_alt", "shanghai");
INSERT INTO `ctwp_postmeta` VALUES("148", "39", "_about_section_3_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("149", "39", "about_section_4_title", "YONI ALTER‘S EARLY CAREER AND INFLUENCES");
INSERT INTO `ctwp_postmeta` VALUES("150", "39", "_about_section_4_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("151", "39", "about_section_4_content", "Alter studied Art and Design in Jerusalem before completing his MA in Graphic Design at the\r\nUniversity of the Arts London. London ceaselessly functions as a source of inspiration for the\r\n\r\nartist. For example, his debut London show at Kemistry Gallery creatively abstracted London\r\narchitecture and the surrounding urban landscape. Yoni synthesises sharp silhouettes, bold\r\ncolouring, and Pop Art iconography, reflecting the seductive creative vibe of London city.");
INSERT INTO `ctwp_postmeta` VALUES("152", "39", "_about_section_4_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("153", "39", "about_section_4_image", "36");
INSERT INTO `ctwp_postmeta` VALUES("154", "39", "_about_section_4_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("155", "39", "about_section_4_image_alt", "Kuala Lampur");
INSERT INTO `ctwp_postmeta` VALUES("156", "39", "_about_section_4_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("157", "39", "about_section_5_title", "COLLABORATIONS AND DESIGN");
INSERT INTO `ctwp_postmeta` VALUES("158", "39", "_about_section_5_title", "field_63e0d7bd3e347");
INSERT INTO `ctwp_postmeta` VALUES("159", "39", "about_section_5_content", "Yoni also designs graphic works for iconic brands, with past collaborations including projects\r\nwith Karl Lagerfeld and Hermes. He is also behind a best-selling merchandise range for\r\nTate. You may have seen his work covering double-decker buses; on a 25m long banner in\r\nShoreditch and on a 25m tall LED tree in Wembley. His art was part of the acclaimed 100\r\nYears of Graphic Design exhibition. Press features include The Guardian, Phaidon,\r\nCampaign, The Atlantic, and My Modern Met, to name a few.");
INSERT INTO `ctwp_postmeta` VALUES("160", "39", "_about_section_5_content", "field_63e0d7d03e348");
INSERT INTO `ctwp_postmeta` VALUES("161", "39", "about_section_5_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("162", "39", "_about_section_5_image", "field_63e0d7de3e349");
INSERT INTO `ctwp_postmeta` VALUES("163", "39", "about_section_5_image_alt", "San Fransisco");
INSERT INTO `ctwp_postmeta` VALUES("164", "39", "_about_section_5_image_alt", "field_63e0d7f43e34a");
INSERT INTO `ctwp_postmeta` VALUES("165", "39", "about_section", "6");
INSERT INTO `ctwp_postmeta` VALUES("166", "39", "_about_section", "field_63e0d7643e346");
INSERT INTO `ctwp_postmeta` VALUES("167", "8", "minted_0_title", "London");
INSERT INTO `ctwp_postmeta` VALUES("168", "8", "_minted_0_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("169", "8", "minted_0_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("170", "8", "_minted_0_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("171", "8", "minted_1_title", "Kuala Lampur");
INSERT INTO `ctwp_postmeta` VALUES("172", "8", "_minted_1_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("173", "8", "minted_1_image", "36");
INSERT INTO `ctwp_postmeta` VALUES("174", "8", "_minted_1_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("175", "8", "minted_2_title", "New York");
INSERT INTO `ctwp_postmeta` VALUES("176", "8", "_minted_2_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("177", "8", "minted_2_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("178", "8", "_minted_2_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("179", "8", "minted_3_title", "Shanghai");
INSERT INTO `ctwp_postmeta` VALUES("180", "8", "_minted_3_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("181", "8", "minted_3_image", "37");
INSERT INTO `ctwp_postmeta` VALUES("182", "8", "_minted_3_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("183", "8", "minted_4_title", "toronto");
INSERT INTO `ctwp_postmeta` VALUES("184", "8", "_minted_4_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("185", "8", "minted_4_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("186", "8", "_minted_4_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("187", "8", "minted", "5");
INSERT INTO `ctwp_postmeta` VALUES("188", "8", "_minted", "field_63e0d82e48ca2");
INSERT INTO `ctwp_postmeta` VALUES("189", "40", "minted_0_title", "London");
INSERT INTO `ctwp_postmeta` VALUES("190", "40", "_minted_0_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("191", "40", "minted_0_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("192", "40", "_minted_0_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("193", "40", "minted_1_title", "Kuala Lampur");
INSERT INTO `ctwp_postmeta` VALUES("194", "40", "_minted_1_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("195", "40", "minted_1_image", "36");
INSERT INTO `ctwp_postmeta` VALUES("196", "40", "_minted_1_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("197", "40", "minted_2_title", "New York");
INSERT INTO `ctwp_postmeta` VALUES("198", "40", "_minted_2_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("199", "40", "minted_2_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("200", "40", "_minted_2_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("201", "40", "minted_3_title", "Shanghai");
INSERT INTO `ctwp_postmeta` VALUES("202", "40", "_minted_3_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("203", "40", "minted_3_image", "37");
INSERT INTO `ctwp_postmeta` VALUES("204", "40", "_minted_3_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("205", "40", "minted_4_title", "toronto");
INSERT INTO `ctwp_postmeta` VALUES("206", "40", "_minted_4_title", "field_63e0d84748ca3");
INSERT INTO `ctwp_postmeta` VALUES("207", "40", "minted_4_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("208", "40", "_minted_4_image", "field_63e0d84f48ca4");
INSERT INTO `ctwp_postmeta` VALUES("209", "40", "minted", "5");
INSERT INTO `ctwp_postmeta` VALUES("210", "40", "_minted", "field_63e0d82e48ca2");
INSERT INTO `ctwp_postmeta` VALUES("211", "41", "_menu_item_type", "custom");
INSERT INTO `ctwp_postmeta` VALUES("212", "41", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("213", "41", "_menu_item_object_id", "41");
INSERT INTO `ctwp_postmeta` VALUES("214", "41", "_menu_item_object", "custom");
INSERT INTO `ctwp_postmeta` VALUES("215", "41", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("216", "41", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("217", "41", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("218", "41", "_menu_item_url", "http://localhost:8888/cities/");
INSERT INTO `ctwp_postmeta` VALUES("219", "41", "_menu_item_orphaned", "1675680745");
INSERT INTO `ctwp_postmeta` VALUES("220", "42", "_menu_item_type", "post_type");
INSERT INTO `ctwp_postmeta` VALUES("221", "42", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("222", "42", "_menu_item_object_id", "10");
INSERT INTO `ctwp_postmeta` VALUES("223", "42", "_menu_item_object", "page");
INSERT INTO `ctwp_postmeta` VALUES("224", "42", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("225", "42", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("226", "42", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("227", "42", "_menu_item_url", "");
INSERT INTO `ctwp_postmeta` VALUES("229", "43", "_menu_item_type", "post_type");
INSERT INTO `ctwp_postmeta` VALUES("230", "43", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("231", "43", "_menu_item_object_id", "6");
INSERT INTO `ctwp_postmeta` VALUES("232", "43", "_menu_item_object", "page");
INSERT INTO `ctwp_postmeta` VALUES("233", "43", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("234", "43", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("235", "43", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("236", "43", "_menu_item_url", "");
INSERT INTO `ctwp_postmeta` VALUES("237", "43", "_menu_item_orphaned", "1675680745");
INSERT INTO `ctwp_postmeta` VALUES("238", "44", "_menu_item_type", "post_type");
INSERT INTO `ctwp_postmeta` VALUES("239", "44", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("240", "44", "_menu_item_object_id", "8");
INSERT INTO `ctwp_postmeta` VALUES("241", "44", "_menu_item_object", "page");
INSERT INTO `ctwp_postmeta` VALUES("242", "44", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("243", "44", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("244", "44", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("245", "44", "_menu_item_url", "");
INSERT INTO `ctwp_postmeta` VALUES("247", "45", "_menu_item_type", "custom");
INSERT INTO `ctwp_postmeta` VALUES("248", "45", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("249", "45", "_menu_item_object_id", "45");
INSERT INTO `ctwp_postmeta` VALUES("250", "45", "_menu_item_object", "custom");
INSERT INTO `ctwp_postmeta` VALUES("251", "45", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("252", "45", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("253", "45", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("254", "45", "_menu_item_url", "#");
INSERT INTO `ctwp_postmeta` VALUES("256", "46", "_menu_item_type", "custom");
INSERT INTO `ctwp_postmeta` VALUES("257", "46", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("258", "46", "_menu_item_object_id", "46");
INSERT INTO `ctwp_postmeta` VALUES("259", "46", "_menu_item_object", "custom");
INSERT INTO `ctwp_postmeta` VALUES("260", "46", "_menu_item_target", "_blank");
INSERT INTO `ctwp_postmeta` VALUES("261", "46", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("262", "46", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("263", "46", "_menu_item_url", "https://twitter.com/yonialter");
INSERT INTO `ctwp_postmeta` VALUES("265", "47", "_menu_item_type", "custom");
INSERT INTO `ctwp_postmeta` VALUES("266", "47", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("267", "47", "_menu_item_object_id", "47");
INSERT INTO `ctwp_postmeta` VALUES("268", "47", "_menu_item_object", "custom");
INSERT INTO `ctwp_postmeta` VALUES("269", "47", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("270", "47", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("271", "47", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("272", "47", "_menu_item_url", "https://cities.yoniishappy.com/");
INSERT INTO `ctwp_postmeta` VALUES("274", "6", "_yoast_wpseo_estimated-reading-time-minutes", "0");
INSERT INTO `ctwp_postmeta` VALUES("275", "6", "_yoast_wpseo_wordproof_timestamp", "");
INSERT INTO `ctwp_postmeta` VALUES("276", "6", "quotes_0_quote", "Cities have always been the fireplaces of civilization,\r\nwhence light and heat radiated out.");
INSERT INTO `ctwp_postmeta` VALUES("277", "6", "_quotes_0_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("278", "6", "quotes_0_quote_by", "Freidrich Engles");
INSERT INTO `ctwp_postmeta` VALUES("279", "6", "_quotes_0_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("280", "6", "quotes_1_quote", "Another quote 1");
INSERT INTO `ctwp_postmeta` VALUES("281", "6", "_quotes_1_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("282", "6", "quotes_1_quote_by", "John Dow");
INSERT INTO `ctwp_postmeta` VALUES("283", "6", "_quotes_1_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("284", "6", "quotes_2_quote", "Another quote 2");
INSERT INTO `ctwp_postmeta` VALUES("285", "6", "_quotes_2_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("286", "6", "quotes_2_quote_by", "John Dow 1");
INSERT INTO `ctwp_postmeta` VALUES("287", "6", "_quotes_2_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("288", "6", "quotes", "3");
INSERT INTO `ctwp_postmeta` VALUES("289", "6", "_quotes", "field_63e0f3bc59ee8");
INSERT INTO `ctwp_postmeta` VALUES("290", "51", "text_before_countdown", "Auction ends in");
INSERT INTO `ctwp_postmeta` VALUES("291", "51", "_text_before_countdown", "field_63e0d68dae68a");
INSERT INTO `ctwp_postmeta` VALUES("292", "51", "countdown_end", "2023-04-06 00:00:00");
INSERT INTO `ctwp_postmeta` VALUES("293", "51", "_countdown_end", "field_63e0d6b6ae68b");
INSERT INTO `ctwp_postmeta` VALUES("294", "51", "button_link", "https://cities.yoniishappy.com/");
INSERT INTO `ctwp_postmeta` VALUES("295", "51", "_button_link", "field_63e0d721ae68d");
INSERT INTO `ctwp_postmeta` VALUES("296", "51", "button_text", "BID ON A CITY");
INSERT INTO `ctwp_postmeta` VALUES("297", "51", "_button_text", "field_63e0d72eae68e");
INSERT INTO `ctwp_postmeta` VALUES("298", "51", "quote", "Cities have always been the fireplaces of civilization,\r\nwhence light and heat radiated out.");
INSERT INTO `ctwp_postmeta` VALUES("299", "51", "_quote", "field_63e0d73eae68f");
INSERT INTO `ctwp_postmeta` VALUES("300", "51", "quote_by", "Freidrich Engels");
INSERT INTO `ctwp_postmeta` VALUES("301", "51", "_quote_by", "field_63e0d74fae690");
INSERT INTO `ctwp_postmeta` VALUES("302", "51", "quotes_0_quote", "Cities have always been the fireplaces of civilization,\r\nwhence light and heat radiated out.");
INSERT INTO `ctwp_postmeta` VALUES("303", "51", "_quotes_0_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("304", "51", "quotes_0_quote_by", "Freidrich Engles");
INSERT INTO `ctwp_postmeta` VALUES("305", "51", "_quotes_0_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("306", "51", "quotes_1_quote", "Another quote 1");
INSERT INTO `ctwp_postmeta` VALUES("307", "51", "_quotes_1_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("308", "51", "quotes_1_quote_by", "John Dow");
INSERT INTO `ctwp_postmeta` VALUES("309", "51", "_quotes_1_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("310", "51", "quotes_2_quote", "Another quote 2");
INSERT INTO `ctwp_postmeta` VALUES("311", "51", "_quotes_2_quote", "field_63e0f3c759ee9");
INSERT INTO `ctwp_postmeta` VALUES("312", "51", "quotes_2_quote_by", "John Dow 1");
INSERT INTO `ctwp_postmeta` VALUES("313", "51", "_quotes_2_quote_by", "field_63e0f3d459eea");
INSERT INTO `ctwp_postmeta` VALUES("314", "51", "quotes", "3");
INSERT INTO `ctwp_postmeta` VALUES("315", "51", "_quotes", "field_63e0f3bc59ee8");
INSERT INTO `ctwp_postmeta` VALUES("316", "10", "_yoast_wpseo_estimated-reading-time-minutes", "0");
INSERT INTO `ctwp_postmeta` VALUES("317", "10", "_yoast_wpseo_wordproof_timestamp", "");
INSERT INTO `ctwp_postmeta` VALUES("318", "8", "_yoast_wpseo_estimated-reading-time-minutes", "0");
INSERT INTO `ctwp_postmeta` VALUES("319", "8", "_yoast_wpseo_wordproof_timestamp", "");
INSERT INTO `ctwp_postmeta` VALUES("320", "52", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("321", "52", "_wp_page_template", "page-templates/team.php");
INSERT INTO `ctwp_postmeta` VALUES("322", "52", "_yoast_wpseo_estimated-reading-time-minutes", "0");
INSERT INTO `ctwp_postmeta` VALUES("323", "52", "_yoast_wpseo_wordproof_timestamp", "");
INSERT INTO `ctwp_postmeta` VALUES("324", "52", "_edit_lock", "1675702659:1");
INSERT INTO `ctwp_postmeta` VALUES("325", "54", "_edit_lock", "1675694868:1");
INSERT INTO `ctwp_postmeta` VALUES("326", "54", "_edit_last", "1");
INSERT INTO `ctwp_postmeta` VALUES("327", "59", "_menu_item_type", "post_type");
INSERT INTO `ctwp_postmeta` VALUES("328", "59", "_menu_item_menu_item_parent", "0");
INSERT INTO `ctwp_postmeta` VALUES("329", "59", "_menu_item_object_id", "52");
INSERT INTO `ctwp_postmeta` VALUES("330", "59", "_menu_item_object", "page");
INSERT INTO `ctwp_postmeta` VALUES("331", "59", "_menu_item_target", "");
INSERT INTO `ctwp_postmeta` VALUES("332", "59", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `ctwp_postmeta` VALUES("333", "59", "_menu_item_xfn", "");
INSERT INTO `ctwp_postmeta` VALUES("334", "59", "_menu_item_url", "");
INSERT INTO `ctwp_postmeta` VALUES("336", "52", "team_0_name", "Member 1");
INSERT INTO `ctwp_postmeta` VALUES("337", "52", "_team_0_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("338", "52", "team_0_title", "Title 1");
INSERT INTO `ctwp_postmeta` VALUES("339", "52", "_team_0_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("340", "52", "team_0_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("341", "52", "_team_0_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("342", "52", "team_1_name", "Member 2");
INSERT INTO `ctwp_postmeta` VALUES("343", "52", "_team_1_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("344", "52", "team_1_title", "Title 2");
INSERT INTO `ctwp_postmeta` VALUES("345", "52", "_team_1_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("346", "52", "team_1_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("347", "52", "_team_1_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("348", "52", "team_2_name", "Member 3");
INSERT INTO `ctwp_postmeta` VALUES("349", "52", "_team_2_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("350", "52", "team_2_title", "Title 3");
INSERT INTO `ctwp_postmeta` VALUES("351", "52", "_team_2_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("352", "52", "team_2_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("353", "52", "_team_2_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("354", "52", "team_3_name", "Member 4");
INSERT INTO `ctwp_postmeta` VALUES("355", "52", "_team_3_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("356", "52", "team_3_title", "Title 4");
INSERT INTO `ctwp_postmeta` VALUES("357", "52", "_team_3_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("358", "52", "team_3_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("359", "52", "_team_3_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("360", "52", "team_4_name", "Member 5");
INSERT INTO `ctwp_postmeta` VALUES("361", "52", "_team_4_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("362", "52", "team_4_title", "Title 5");
INSERT INTO `ctwp_postmeta` VALUES("363", "52", "_team_4_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("364", "52", "team_4_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("365", "52", "_team_4_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("366", "52", "team", "5");
INSERT INTO `ctwp_postmeta` VALUES("367", "52", "_team", "field_63e111fa395bd");
INSERT INTO `ctwp_postmeta` VALUES("368", "60", "team_0_name", "Member 1");
INSERT INTO `ctwp_postmeta` VALUES("369", "60", "_team_0_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("370", "60", "team_0_title", "Title 1");
INSERT INTO `ctwp_postmeta` VALUES("371", "60", "_team_0_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("372", "60", "team_0_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("373", "60", "_team_0_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("374", "60", "team_1_name", "Member 2");
INSERT INTO `ctwp_postmeta` VALUES("375", "60", "_team_1_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("376", "60", "team_1_title", "Title 2");
INSERT INTO `ctwp_postmeta` VALUES("377", "60", "_team_1_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("378", "60", "team_1_image", "34");
INSERT INTO `ctwp_postmeta` VALUES("379", "60", "_team_1_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("380", "60", "team_2_name", "Member 3");
INSERT INTO `ctwp_postmeta` VALUES("381", "60", "_team_2_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("382", "60", "team_2_title", "Title 3");
INSERT INTO `ctwp_postmeta` VALUES("383", "60", "_team_2_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("384", "60", "team_2_image", "38");
INSERT INTO `ctwp_postmeta` VALUES("385", "60", "_team_2_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("386", "60", "team_3_name", "Member 4");
INSERT INTO `ctwp_postmeta` VALUES("387", "60", "_team_3_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("388", "60", "team_3_title", "Title 4");
INSERT INTO `ctwp_postmeta` VALUES("389", "60", "_team_3_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("390", "60", "team_3_image", "33");
INSERT INTO `ctwp_postmeta` VALUES("391", "60", "_team_3_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("392", "60", "team_4_name", "Member 5");
INSERT INTO `ctwp_postmeta` VALUES("393", "60", "_team_4_name", "field_63e1120a395be");
INSERT INTO `ctwp_postmeta` VALUES("394", "60", "team_4_title", "Title 5");
INSERT INTO `ctwp_postmeta` VALUES("395", "60", "_team_4_title", "field_63e11211395bf");
INSERT INTO `ctwp_postmeta` VALUES("396", "60", "team_4_image", "35");
INSERT INTO `ctwp_postmeta` VALUES("397", "60", "_team_4_image", "field_63e11218395c0");
INSERT INTO `ctwp_postmeta` VALUES("398", "60", "team", "5");
INSERT INTO `ctwp_postmeta` VALUES("399", "60", "_team", "field_63e111fa395bd");

/* INSERT TABLE DATA: ctwp_posts */
INSERT INTO `ctwp_posts` VALUES("1", "1", "2023-02-06 10:21:45", "2023-02-06 10:21:45", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "trash", "open", "open", "", "hello-world__trashed", "", "", "2023-02-06 10:38:06", "2023-02-06 10:38:06", "", "0", "http://localhost:8888/cities/?p=1", "0", "post", "", "1");
INSERT INTO `ctwp_posts` VALUES("2", "1", "2023-02-06 10:21:45", "2023-02-06 10:21:45", "<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/cities/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->", "Sample Page", "", "trash", "closed", "open", "", "sample-page__trashed", "", "", "2023-02-06 10:38:00", "2023-02-06 10:38:00", "", "0", "http://localhost:8888/cities/?page_id=2", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("3", "1", "2023-02-06 10:21:45", "2023-02-06 10:21:45", "<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/cities.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->", "Privacy Policy", "", "trash", "closed", "open", "", "privacy-policy__trashed", "", "", "2023-02-06 10:37:59", "2023-02-06 10:37:59", "", "0", "http://localhost:8888/cities/?page_id=3", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("4", "1", "2023-02-06 10:22:03", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2023-02-06 10:22:03", "0000-00-00 00:00:00", "", "0", "http://localhost:8888/cities/?p=4", "0", "post", "", "0");
INSERT INTO `ctwp_posts` VALUES("6", "1", "2023-02-06 10:27:23", "2023-02-06 10:27:23", "", "Home Page", "", "publish", "closed", "closed", "", "home-page", "", "", "2023-02-06 12:36:31", "2023-02-06 12:36:31", "", "0", "http://localhost:8888/cities/?page_id=6", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("7", "1", "2023-02-06 10:27:23", "2023-02-06 10:27:23", "", "Home Page", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2023-02-06 10:27:23", "2023-02-06 10:27:23", "", "6", "http://localhost:8888/cities/?p=7", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("8", "1", "2023-02-06 10:28:01", "2023-02-06 10:28:01", "", "Minted", "", "publish", "closed", "closed", "", "minted", "", "", "2023-02-06 14:24:07", "2023-02-06 14:24:07", "", "0", "http://localhost:8888/cities/?page_id=8", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("9", "1", "2023-02-06 10:28:01", "2023-02-06 10:28:01", "", "Minted", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2023-02-06 10:28:01", "2023-02-06 10:28:01", "", "8", "http://localhost:8888/cities/?p=9", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("10", "1", "2023-02-06 10:29:29", "2023-02-06 10:29:29", "", "About", "", "publish", "closed", "closed", "", "about", "", "", "2023-02-06 14:01:05", "2023-02-06 14:01:05", "", "0", "http://localhost:8888/cities/?page_id=10", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("11", "1", "2023-02-06 10:29:29", "2023-02-06 10:29:29", "", "About", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2023-02-06 10:29:29", "2023-02-06 10:29:29", "", "10", "http://localhost:8888/cities/?p=11", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("12", "1", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}", "Home Page", "home-page", "publish", "closed", "closed", "", "group_63e0d68db27bf", "", "", "2023-02-06 17:08:42", "2023-02-06 17:08:42", "", "0", "http://localhost:8888/cities/?post_type=acf-field-group&#038;p=12", "0", "acf-field-group", "", "0");
INSERT INTO `ctwp_posts` VALUES("13", "1", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "text before countdown", "text_before_countdown", "publish", "closed", "closed", "", "field_63e0d68dae68a", "", "", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "", "12", "http://localhost:8888/cities/?post_type=acf-field&p=13", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("14", "1", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:12:\"MUST BE GMT!\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"Y-m-d H:i:s\";s:9:\"first_day\";i:1;}", "countdown end - MUST BE GMT!", "countdown_end", "publish", "closed", "closed", "", "field_63e0d6b6ae68b", "", "", "2023-02-06 17:08:41", "2023-02-06 17:08:41", "", "12", "http://localhost:8888/cities/?post_type=acf-field&#038;p=14", "1", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("15", "1", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}", "button link", "button_link", "publish", "closed", "closed", "", "field_63e0d721ae68d", "", "", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "", "12", "http://localhost:8888/cities/?post_type=acf-field&p=15", "2", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("16", "1", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "button text", "button_text", "publish", "closed", "closed", "", "field_63e0d72eae68e", "", "", "2023-02-06 10:33:06", "2023-02-06 10:33:06", "", "12", "http://localhost:8888/cities/?post_type=acf-field&p=16", "3", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("19", "1", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}", "About", "about", "publish", "closed", "closed", "", "group_63e0d76450169", "", "", "2023-02-06 17:09:14", "2023-02-06 17:09:14", "", "0", "http://localhost:8888/cities/?post_type=acf-field-group&#038;p=19", "0", "acf-field-group", "", "0");
INSERT INTO `ctwp_posts` VALUES("20", "1", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}", "about section", "about_section", "publish", "closed", "closed", "", "field_63e0d7643e346", "", "", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "", "19", "http://localhost:8888/cities/?post_type=acf-field&p=20", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("21", "1", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "title", "title", "publish", "closed", "closed", "", "field_63e0d7bd3e347", "", "", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "", "20", "http://localhost:8888/cities/?post_type=acf-field&p=21", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("22", "1", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}", "content", "content", "publish", "closed", "closed", "", "field_63e0d7d03e348", "", "", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "", "20", "http://localhost:8888/cities/?post_type=acf-field&p=22", "1", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("23", "1", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}", "image", "image", "publish", "closed", "closed", "", "field_63e0d7de3e349", "", "", "2023-02-06 10:36:29", "2023-02-06 10:36:29", "", "20", "http://localhost:8888/cities/?post_type=acf-field&p=23", "2", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("25", "1", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}", "Minted", "minted", "publish", "closed", "closed", "", "group_63e0d82e72275", "", "", "2023-02-06 10:39:41", "2023-02-06 10:39:41", "", "0", "http://localhost:8888/cities/?post_type=acf-field-group&#038;p=25", "0", "acf-field-group", "", "0");
INSERT INTO `ctwp_posts` VALUES("26", "1", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}", "Minted", "minted", "publish", "closed", "closed", "", "field_63e0d82e48ca2", "", "", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "", "25", "http://localhost:8888/cities/?post_type=acf-field&p=26", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("27", "1", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "title", "title", "publish", "closed", "closed", "", "field_63e0d84748ca3", "", "", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "", "26", "http://localhost:8888/cities/?post_type=acf-field&p=27", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("28", "1", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}", "image", "image", "publish", "closed", "closed", "", "field_63e0d84f48ca4", "", "", "2023-02-06 10:37:42", "2023-02-06 10:37:42", "", "26", "http://localhost:8888/cities/?post_type=acf-field&p=28", "1", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("29", "1", "2023-02-06 10:37:59", "2023-02-06 10:37:59", "<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/cities.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->", "Privacy Policy", "", "inherit", "closed", "closed", "", "3-revision-v1", "", "", "2023-02-06 10:37:59", "2023-02-06 10:37:59", "", "3", "http://localhost:8888/cities/?p=29", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("30", "1", "2023-02-06 10:38:00", "2023-02-06 10:38:00", "<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/cities/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->", "Sample Page", "", "inherit", "closed", "closed", "", "2-revision-v1", "", "", "2023-02-06 10:38:00", "2023-02-06 10:38:00", "", "2", "http://localhost:8888/cities/?p=30", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("31", "1", "2023-02-06 10:38:06", "2023-02-06 10:38:06", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "inherit", "closed", "closed", "", "1-revision-v1", "", "", "2023-02-06 10:38:06", "2023-02-06 10:38:06", "", "1", "http://localhost:8888/cities/?p=31", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("32", "1", "2023-02-06 10:42:10", "2023-02-06 10:42:10", "", "Home Page", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2023-02-06 10:42:10", "2023-02-06 10:42:10", "", "6", "http://localhost:8888/cities/?p=32", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("33", "1", "2023-02-06 10:44:12", "2023-02-06 10:44:12", "", "YoniAlter_London", "", "inherit", "open", "closed", "", "yonialter_london", "", "", "2023-02-06 10:44:12", "2023-02-06 10:44:12", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_London.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("34", "1", "2023-02-06 10:44:43", "2023-02-06 10:44:43", "", "YoniAlter_NewYork", "", "inherit", "open", "closed", "", "yonialter_newyork", "", "", "2023-02-06 10:44:43", "2023-02-06 10:44:43", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("35", "1", "2023-02-06 10:46:39", "2023-02-06 10:46:39", "", "YoniAlter_Toronto", "", "inherit", "open", "closed", "", "yonialter_toronto", "", "", "2023-02-06 10:46:39", "2023-02-06 10:46:39", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("36", "1", "2023-02-06 10:47:20", "2023-02-06 10:47:20", "", "YoniAlter_kuala", "", "inherit", "open", "closed", "", "yonialter_kuala", "", "", "2023-02-06 10:47:20", "2023-02-06 10:47:20", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("37", "1", "2023-02-06 10:48:14", "2023-02-06 10:48:14", "", "YoniAlter_Shanghai", "", "inherit", "open", "closed", "", "yonialter_shanghai", "", "", "2023-02-06 10:48:14", "2023-02-06 10:48:14", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("38", "1", "2023-02-06 10:49:11", "2023-02-06 10:49:11", "", "YoniAlter_SanFrancisco", "", "inherit", "open", "closed", "", "yonialter_sanfrancisco", "", "", "2023-02-06 10:49:11", "2023-02-06 10:49:11", "", "10", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif", "0", "attachment", "image/gif", "0");
INSERT INTO `ctwp_posts` VALUES("39", "1", "2023-02-06 10:49:24", "2023-02-06 10:49:24", "", "About", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2023-02-06 10:49:24", "2023-02-06 10:49:24", "", "10", "http://localhost:8888/cities/?p=39", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("40", "1", "2023-02-06 10:51:05", "2023-02-06 10:51:05", "", "Minted", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2023-02-06 10:51:05", "2023-02-06 10:51:05", "", "8", "http://localhost:8888/cities/?p=40", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("41", "1", "2023-02-06 10:52:25", "0000-00-00 00:00:00", "", "Home", "", "draft", "closed", "closed", "", "", "", "", "2023-02-06 10:52:25", "0000-00-00 00:00:00", "", "0", "http://localhost:8888/cities/?p=41", "1", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("42", "1", "2023-02-06 14:46:04", "2023-02-06 10:54:59", " ", "", "", "publish", "closed", "closed", "", "42", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=42", "1", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("43", "1", "2023-02-06 10:52:25", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2023-02-06 10:52:25", "0000-00-00 00:00:00", "", "0", "http://localhost:8888/cities/?p=43", "1", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("44", "1", "2023-02-06 14:46:04", "2023-02-06 10:54:59", " ", "", "", "publish", "closed", "closed", "", "44", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=44", "3", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("45", "1", "2023-02-06 14:46:04", "2023-02-06 10:54:59", "", "Gallery", "", "publish", "closed", "closed", "", "gallery", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=45", "2", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("46", "1", "2023-02-06 14:46:04", "2023-02-06 10:54:59", "", "Socials", "", "publish", "closed", "closed", "", "socials", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=46", "5", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("47", "1", "2023-02-06 14:46:04", "2023-02-06 10:54:59", "", "connect", "", "publish", "closed", "closed", "", "connect", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=47", "6", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("48", "1", "2023-02-06 12:34:49", "2023-02-06 12:34:49", "a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}", "Quotes", "quotes", "publish", "closed", "closed", "", "field_63e0f3bc59ee8", "", "", "2023-02-06 12:34:49", "2023-02-06 12:34:49", "", "12", "http://localhost:8888/cities/?post_type=acf-field&p=48", "4", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("49", "1", "2023-02-06 12:34:53", "2023-02-06 12:34:53", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}", "quote", "quote", "publish", "closed", "closed", "", "field_63e0f3c759ee9", "", "", "2023-02-06 12:34:53", "2023-02-06 12:34:53", "", "48", "http://localhost:8888/cities/?post_type=acf-field&p=49", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("50", "1", "2023-02-06 12:34:54", "2023-02-06 12:34:54", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "quote by", "quote_by", "publish", "closed", "closed", "", "field_63e0f3d459eea", "", "", "2023-02-06 12:34:54", "2023-02-06 12:34:54", "", "48", "http://localhost:8888/cities/?post_type=acf-field&p=50", "1", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("51", "1", "2023-02-06 12:36:31", "2023-02-06 12:36:31", "", "Home Page", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2023-02-06 12:36:31", "2023-02-06 12:36:31", "", "6", "http://localhost:8888/cities/?p=51", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("52", "1", "2023-02-06 14:42:48", "2023-02-06 14:42:48", "", "Team", "", "publish", "closed", "closed", "", "team", "", "", "2023-02-06 14:51:25", "2023-02-06 14:51:25", "", "0", "http://localhost:8888/cities/?page_id=52", "0", "page", "", "0");
INSERT INTO `ctwp_posts` VALUES("53", "1", "2023-02-06 14:42:48", "2023-02-06 14:42:48", "", "Team", "", "inherit", "closed", "closed", "", "52-revision-v1", "", "", "2023-02-06 14:42:48", "2023-02-06 14:42:48", "", "52", "http://localhost:8888/cities/?p=53", "0", "revision", "", "0");
INSERT INTO `ctwp_posts` VALUES("54", "1", "2023-02-06 14:44:12", "2023-02-06 14:44:12", "a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"52\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}", "Team", "team", "publish", "closed", "closed", "", "group_63e111fa9ea59", "", "", "2023-02-06 14:50:08", "2023-02-06 14:50:08", "", "0", "http://localhost:8888/cities/?post_type=acf-field-group&#038;p=54", "0", "acf-field-group", "", "0");
INSERT INTO `ctwp_posts` VALUES("55", "1", "2023-02-06 14:44:09", "2023-02-06 14:44:09", "a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}", "team", "team", "publish", "closed", "closed", "", "field_63e111fa395bd", "", "", "2023-02-06 14:44:09", "2023-02-06 14:44:09", "", "54", "http://localhost:8888/cities/?post_type=acf-field&p=55", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("56", "1", "2023-02-06 14:44:10", "2023-02-06 14:44:10", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "name", "name", "publish", "closed", "closed", "", "field_63e1120a395be", "", "", "2023-02-06 14:44:10", "2023-02-06 14:44:10", "", "55", "http://localhost:8888/cities/?post_type=acf-field&p=56", "0", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("57", "1", "2023-02-06 14:44:10", "2023-02-06 14:44:10", "a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}", "title", "title", "publish", "closed", "closed", "", "field_63e11211395bf", "", "", "2023-02-06 14:44:10", "2023-02-06 14:44:10", "", "55", "http://localhost:8888/cities/?post_type=acf-field&p=57", "1", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("58", "1", "2023-02-06 14:44:11", "2023-02-06 14:44:11", "a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}", "image", "image", "publish", "closed", "closed", "", "field_63e11218395c0", "", "", "2023-02-06 14:50:08", "2023-02-06 14:50:08", "", "55", "http://localhost:8888/cities/?post_type=acf-field&#038;p=58", "2", "acf-field", "", "0");
INSERT INTO `ctwp_posts` VALUES("59", "1", "2023-02-06 14:46:04", "2023-02-06 14:46:04", " ", "", "", "publish", "closed", "closed", "", "59", "", "", "2023-02-06 14:46:04", "2023-02-06 14:46:04", "", "0", "http://localhost:8888/cities/?p=59", "4", "nav_menu_item", "", "0");
INSERT INTO `ctwp_posts` VALUES("60", "1", "2023-02-06 14:51:25", "2023-02-06 14:51:25", "", "Team", "", "inherit", "closed", "closed", "", "52-revision-v1", "", "", "2023-02-06 14:51:25", "2023-02-06 14:51:25", "", "52", "http://localhost:8888/cities/?p=60", "0", "revision", "", "0");

/* INSERT TABLE DATA: ctwp_term_relationships */
INSERT INTO `ctwp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `ctwp_term_relationships` VALUES("42", "2", "0");
INSERT INTO `ctwp_term_relationships` VALUES("44", "2", "0");
INSERT INTO `ctwp_term_relationships` VALUES("45", "2", "0");
INSERT INTO `ctwp_term_relationships` VALUES("46", "2", "0");
INSERT INTO `ctwp_term_relationships` VALUES("47", "2", "0");
INSERT INTO `ctwp_term_relationships` VALUES("59", "2", "0");

/* INSERT TABLE DATA: ctwp_term_taxonomy */
INSERT INTO `ctwp_term_taxonomy` VALUES("1", "1", "category", "", "0", "0");
INSERT INTO `ctwp_term_taxonomy` VALUES("2", "2", "nav_menu", "", "0", "6");

/* INSERT TABLE DATA: ctwp_terms */
INSERT INTO `ctwp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `ctwp_terms` VALUES("2", "Header Menu", "header-menu", "0");

/* INSERT TABLE DATA: ctwp_usermeta */
INSERT INTO `ctwp_usermeta` VALUES("1", "1", "nickname", "gil");
INSERT INTO `ctwp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `ctwp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `ctwp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `ctwp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `ctwp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `ctwp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `ctwp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `ctwp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `ctwp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `ctwp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `ctwp_usermeta` VALUES("12", "1", "ctwp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `ctwp_usermeta` VALUES("13", "1", "ctwp_user_level", "10");
INSERT INTO `ctwp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `ctwp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `ctwp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"de4f80043cadcbc71733fcb5fa21d9c9918f02b48c4e334793b64a4783d8d4e6\";a:4:{s:10:\"expiration\";i:1675851721;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1675678921;}}");
INSERT INTO `ctwp_usermeta` VALUES("17", "1", "ctwp_dashboard_quick_press_last_post_id", "4");
INSERT INTO `ctwp_usermeta` VALUES("18", "1", "ctwp_user-settings", "libraryContent=browse");
INSERT INTO `ctwp_usermeta` VALUES("19", "1", "ctwp_user-settings-time", "1675680559");
INSERT INTO `ctwp_usermeta` VALUES("20", "1", "managenav-menuscolumnshidden", "a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}");
INSERT INTO `ctwp_usermeta` VALUES("21", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `ctwp_usermeta` VALUES("22", "1", "nav_menu_recently_edited", "2");
INSERT INTO `ctwp_usermeta` VALUES("24", "1", "meta-box-order_page", "a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,pageparentdiv,wpseo_meta\";s:6:\"normal\";s:83:\"acf-group_63e0d68db27bf,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO `ctwp_usermeta` VALUES("25", "1", "screen_layout_page", "2");
INSERT INTO `ctwp_usermeta` VALUES("26", "2", "nickname", "ekogoren");
INSERT INTO `ctwp_usermeta` VALUES("27", "2", "first_name", "Eko");
INSERT INTO `ctwp_usermeta` VALUES("28", "2", "last_name", "Goren");
INSERT INTO `ctwp_usermeta` VALUES("29", "2", "description", "");
INSERT INTO `ctwp_usermeta` VALUES("30", "2", "rich_editing", "true");
INSERT INTO `ctwp_usermeta` VALUES("31", "2", "syntax_highlighting", "true");
INSERT INTO `ctwp_usermeta` VALUES("32", "2", "comment_shortcuts", "false");
INSERT INTO `ctwp_usermeta` VALUES("33", "2", "admin_color", "fresh");
INSERT INTO `ctwp_usermeta` VALUES("34", "2", "use_ssl", "0");
INSERT INTO `ctwp_usermeta` VALUES("35", "2", "show_admin_bar_front", "true");
INSERT INTO `ctwp_usermeta` VALUES("36", "2", "locale", "");
INSERT INTO `ctwp_usermeta` VALUES("37", "2", "ctwp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `ctwp_usermeta` VALUES("38", "2", "ctwp_user_level", "10");
INSERT INTO `ctwp_usermeta` VALUES("39", "2", "wfls-allow-grace-period", "1");
INSERT INTO `ctwp_usermeta` VALUES("40", "2", "_yoast_wpseo_profile_updated", "1675693180");
INSERT INTO `ctwp_usermeta` VALUES("41", "2", "dismissed_wp_pointers", "");
INSERT INTO `ctwp_usermeta` VALUES("42", "1", "ctwp_yoast_notifications", "a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:10;s:9:\"\0*\0reason\";s:26:\"permalink_settings_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:3:\"gil\";s:9:\"user_pass\";s:34:\"$P$BzloBvT9te0kBQCOsNCudOJ6JVUhDq/\";s:13:\"user_nicename\";s:3:\"gil\";s:10:\"user_email\";s:18:\"gilalter@gmail.com\";s:8:\"user_url\";s:28:\"http://localhost:8888/cities\";s:15:\"user_registered\";s:19:\"2023-02-06 10:21:45\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:3:\"gil\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"ctwp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}");

/* INSERT TABLE DATA: ctwp_users */
INSERT INTO `ctwp_users` VALUES("1", "gil", "$P$BzloBvT9te0kBQCOsNCudOJ6JVUhDq/", "gil", "gilalter@gmail.com", "http://localhost:8888/cities", "2023-02-06 10:21:45", "", "0", "gil");
INSERT INTO `ctwp_users` VALUES("2", "ekogoren", "$P$B6AkRKEoY1GeB3Dv9tqXnCyzqxbMYU/", "ekogoren", "ekogoren@gmail.com", "", "2023-02-06 14:19:40", "", "0", "Eko Goren");

/* INSERT TABLE DATA: ctwp_wfconfig */
INSERT INTO `ctwp_wfconfig` VALUES("activatingIP", "::1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("actUpdateInterval", "2", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("addCacheComment", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("adminUserList", "a:2:{i:2;i:1;i:1;i:1;}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("advancedCommentScanning", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("ajaxWatcherDisabled_admin", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("ajaxWatcherDisabled_front", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertEmails", "2012.ep@gmail.com", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_adminLogin", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_block", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_breachLogin", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_firstAdminLoginOnly", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_firstNonAdminLoginOnly", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_loginLockout", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_lostPasswdForm", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_nonAdminLogin", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_scanIssues", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_severityLevel", "25", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_throttle", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_update", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_wafDeactivated", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alertOn_wordfenceDeactivated", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("alert_maxHourly", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allowed404s", "/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allowed404s6116Migration", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allowHTTPSCaching", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allowLegacy2FA", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allowMySQLi", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("allScansScheduled", "a:3:{i:0;a:2:{s:9:\"timestamp\";i:1675912800;s:4:\"args\";a:1:{i:0;i:1675912800;}}i:1;a:2:{s:9:\"timestamp\";i:1676172000;s:4:\"args\";a:1:{i:0;i:1676172000;}}i:2;a:2:{s:9:\"timestamp\";i:1676431200;s:4:\"args\";a:1:{i:0;i:1676431200;}}}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("apiKey", "16203e92a587cd7117833e073b0bb4f9aaf89d5ccaa5dbc16b2c4f27b166d0502f1c7ab394aad6022634c8747f9d4e1881358e6aec3b1e0318fa27231bd0dd4b", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("autoBlockScanners", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("autoUpdate", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("autoUpdateAttempts", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("autoUpdateChoice", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("bannedURLs", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("blockCustomText", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("blockedTime", "300", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("blocks702Migration", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cacheType", "disabled", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_action", "block", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_bypassRedirDest", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_bypassRedirURL", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_bypassViewURL", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_cookieVal", "63e0dcf7269de", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_loggedInBlocked", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_redirURL", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("cbl_restOfSiteBlocked", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("checkSpamIP", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("config701Migration", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("config720Migration", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("currentCronKey", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("dashboardData", "a:4:{s:9:\"generated\";i:1675776420;s:3:\"tdf\";a:3:{s:9:\"community\";i:5305;s:7:\"premium\";i:5326;s:9:\"blacklist\";i:12760;}s:10:\"attackdata\";a:3:{s:3:\"24h\";a:24:{i:0;a:2:{s:1:\"t\";i:1675688400;s:1:\"c\";i:11349305;}i:1;a:2:{s:1:\"t\";i:1675692000;s:1:\"c\";i:11864665;}i:2;a:2:{s:1:\"t\";i:1675695600;s:1:\"c\";i:14141772;}i:3;a:2:{s:1:\"t\";i:1675699200;s:1:\"c\";i:14508502;}i:4;a:2:{s:1:\"t\";i:1675702800;s:1:\"c\";i:10089860;}i:5;a:2:{s:1:\"t\";i:1675706400;s:1:\"c\";i:10067934;}i:6;a:2:{s:1:\"t\";i:1675710000;s:1:\"c\";i:9512916;}i:7;a:2:{s:1:\"t\";i:1675713600;s:1:\"c\";i:9519920;}i:8;a:2:{s:1:\"t\";i:1675717200;s:1:\"c\";i:9953747;}i:9;a:2:{s:1:\"t\";i:1675720800;s:1:\"c\";i:9530439;}i:10;a:2:{s:1:\"t\";i:1675724400;s:1:\"c\";i:9379205;}i:11;a:2:{s:1:\"t\";i:1675728000;s:1:\"c\";i:9138959;}i:12;a:2:{s:1:\"t\";i:1675731600;s:1:\"c\";i:8868034;}i:13;a:2:{s:1:\"t\";i:1675735200;s:1:\"c\";i:8217317;}i:14;a:2:{s:1:\"t\";i:1675738800;s:1:\"c\";i:8542443;}i:15;a:2:{s:1:\"t\";i:1675742400;s:1:\"c\";i:8670106;}i:16;a:2:{s:1:\"t\";i:1675746000;s:1:\"c\";i:11251343;}i:17;a:2:{s:1:\"t\";i:1675749600;s:1:\"c\";i:14123086;}i:18;a:2:{s:1:\"t\";i:1675753200;s:1:\"c\";i:13278611;}i:19;a:2:{s:1:\"t\";i:1675756800;s:1:\"c\";i:12082128;}i:20;a:2:{s:1:\"t\";i:1675760400;s:1:\"c\";i:11935483;}i:21;a:2:{s:1:\"t\";i:1675764000;s:1:\"c\";i:12419735;}i:22;a:2:{s:1:\"t\";i:1675767600;s:1:\"c\";i:11001034;}i:23;a:2:{s:1:\"t\";i:1675771200;s:1:\"c\";i:11056380;}}s:2:\"7d\";a:7:{i:0;a:2:{s:1:\"t\";i:1675123200;s:1:\"c\";i:375732837;}i:1;a:2:{s:1:\"t\";i:1675209600;s:1:\"c\";i:363219248;}i:2;a:2:{s:1:\"t\";i:1675296000;s:1:\"c\";i:103866730;}i:3;a:2:{s:1:\"t\";i:1675382400;s:1:\"c\";i:359457831;}i:4;a:2:{s:1:\"t\";i:1675468800;s:1:\"c\";i:292530385;}i:5;a:2:{s:1:\"t\";i:1675555200;s:1:\"c\";i:292049864;}i:6;a:2:{s:1:\"t\";i:1675641600;s:1:\"c\";i:289066732;}}s:3:\"30d\";a:30:{i:0;a:2:{s:1:\"t\";i:1673136000;s:1:\"c\";i:311160769;}i:1;a:2:{s:1:\"t\";i:1673222400;s:1:\"c\";i:313085440;}i:2;a:2:{s:1:\"t\";i:1673308800;s:1:\"c\";i:304143726;}i:3;a:2:{s:1:\"t\";i:1673395200;s:1:\"c\";i:267350985;}i:4;a:2:{s:1:\"t\";i:1673481600;s:1:\"c\";i:282164777;}i:5;a:2:{s:1:\"t\";i:1673568000;s:1:\"c\";i:282534690;}i:6;a:2:{s:1:\"t\";i:1673654400;s:1:\"c\";i:239532874;}i:7;a:2:{s:1:\"t\";i:1673740800;s:1:\"c\";i:451086759;}i:8;a:2:{s:1:\"t\";i:1673827200;s:1:\"c\";i:376465858;}i:9;a:2:{s:1:\"t\";i:1673913600;s:1:\"c\";i:289366174;}i:10;a:2:{s:1:\"t\";i:1674000000;s:1:\"c\";i:295252339;}i:11;a:2:{s:1:\"t\";i:1674086400;s:1:\"c\";i:205096156;}i:12;a:2:{s:1:\"t\";i:1674172800;s:1:\"c\";i:370054682;}i:13;a:2:{s:1:\"t\";i:1674259200;s:1:\"c\";i:303925352;}i:14;a:2:{s:1:\"t\";i:1674345600;s:1:\"c\";i:286761043;}i:15;a:2:{s:1:\"t\";i:1674432000;s:1:\"c\";i:359953377;}i:16;a:2:{s:1:\"t\";i:1674518400;s:1:\"c\";i:347685917;}i:17;a:2:{s:1:\"t\";i:1674604800;s:1:\"c\";i:289363947;}i:18;a:2:{s:1:\"t\";i:1674691200;s:1:\"c\";i:260237514;}i:19;a:2:{s:1:\"t\";i:1674777600;s:1:\"c\";i:287186550;}i:20;a:2:{s:1:\"t\";i:1674864000;s:1:\"c\";i:471681263;}i:21;a:2:{s:1:\"t\";i:1674950400;s:1:\"c\";i:367762892;}i:22;a:2:{s:1:\"t\";i:1675036800;s:1:\"c\";i:354260360;}i:23;a:2:{s:1:\"t\";i:1675123200;s:1:\"c\";i:375732837;}i:24;a:2:{s:1:\"t\";i:1675209600;s:1:\"c\";i:363219248;}i:25;a:2:{s:1:\"t\";i:1675296000;s:1:\"c\";i:103866730;}i:26;a:2:{s:1:\"t\";i:1675382400;s:1:\"c\";i:359457831;}i:27;a:2:{s:1:\"t\";i:1675468800;s:1:\"c\";i:292530385;}i:28;a:2:{s:1:\"t\";i:1675555200;s:1:\"c\";i:292049864;}i:29;a:2:{s:1:\"t\";i:1675641600;s:1:\"c\";i:289066732;}}}s:9:\"countries\";a:1:{s:2:\"7d\";a:10:{i:0;a:2:{s:2:\"cd\";s:2:\"US\";s:2:\"ct\";i:842085071;}i:1;a:2:{s:2:\"cd\";s:2:\"DE\";s:2:\"ct\";i:240903693;}i:2;a:2:{s:2:\"cd\";s:2:\"SG\";s:2:\"ct\";i:236596666;}i:3;a:2:{s:2:\"cd\";s:2:\"TR\";s:2:\"ct\";i:196215529;}i:4;a:2:{s:2:\"cd\";s:2:\"FR\";s:2:\"ct\";i:148164864;}i:5;a:2:{s:2:\"cd\";s:2:\"IN\";s:2:\"ct\";i:129536843;}i:6;a:2:{s:2:\"cd\";s:2:\"VN\";s:2:\"ct\";i:94108532;}i:7;a:2:{s:2:\"cd\";s:2:\"CN\";s:2:\"ct\";i:89753002;}i:8;a:2:{s:2:\"cd\";s:2:\"NL\";s:2:\"ct\";i:84341072;}i:9;a:2:{s:2:\"cd\";s:2:\"RU\";s:2:\"ct\";i:78997603;}}}}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("dbTest", "a:1:{s:5:\"nonce\";s:64:\"4dcf77a11231888903ecd309994578b81d06f2fcc700fab1b677f8e618346d23\";}", "no");
INSERT INTO `ctwp_wfconfig` VALUES("dbVersion", "5.7.39", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("debugOn", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("deleteTablesOnDeact", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("detectProxyNextCheck", "1676285814", "no");
INSERT INTO `ctwp_wfconfig` VALUES("detectProxyNonce", "c6f225ab6117d881c1878d1dbf4312ab44c3a58c2795032406a82e0d1673ce5c", "no");
INSERT INTO `ctwp_wfconfig` VALUES("detectProxyRecommendation", "", "no");
INSERT INTO `ctwp_wfconfig` VALUES("diagnosticsWflogsRemovalHistory", "[]", "no");
INSERT INTO `ctwp_wfconfig` VALUES("disableCodeExecutionUploads", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("disableConfigCaching", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("disableWAFIPBlocking", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("disclosureStates", "a:1:{s:33:\"wf-unified-waf-options-bruteforce\";b:0;}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("dismissAutoPrependNotice", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("displayAutomaticBlocks", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("displayTopLevelBlocking", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("displayTopLevelLiveTraffic", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("displayTopLevelOptions", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("emailedIssuesList", "a:2:{i:0;a:2:{s:7:\"ignoreC\";s:32:\"9b1bc8af7e100dcba1ec392a5dd6ad91\";s:7:\"ignoreP\";s:32:\"9b1bc8af7e100dcba1ec392a5dd6ad91\";}i:1;a:2:{s:7:\"ignoreC\";s:32:\"9d7d08acc36909479bfa0b7a46c2fbe9\";s:7:\"ignoreP\";s:32:\"9d7d08acc36909479bfa0b7a46c2fbe9\";}}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("email_summary_dashboard_widget_enabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("email_summary_enabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("email_summary_excluded_directories", "wp-content/cache,wp-content/wflogs", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("email_summary_interval", "weekly", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("enableRemoteIpLookup", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("encKey", "b1a572d0e6ede47f", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("fileContentsGSB6315Migration", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("firewallEnabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("hasKeyConflict", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("howGetIPs", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("howGetIPs_trusted_proxies", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("isPaid", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("keyType", "free", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastBlockAggregation", "1675776933", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastDailyCron", "1675776931", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastDashboardCheck", "1675776933", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastNotificationID", "8", "no");
INSERT INTO `ctwp_wfconfig` VALUES("lastPermissionsTemplateCheck", "1675777031", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastScanCompleted", "ok", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lastScanFailureType", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveActivityPauseEnabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTrafficEnabled", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_displayExpandedRecords", "0", "no");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_ignoreIPs", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_ignorePublishers", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_ignoreUA", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_ignoreUsers", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_maxAge", "30", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("liveTraf_maxRows", "2000", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSecurityEnabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_blockAdminReg", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_breachPasswds", "admins", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_breachPasswds_enabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_countFailMins", "240", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_disableApplicationPasswords", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_disableAuthorScan", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_disableOEmbedAuthor", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_enableSeparateTwoFactor", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_lockInvalidUsers", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_lockoutMins", "240", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_maskLoginErrors", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_maxFailures", "20", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_maxForgotPasswd", "20", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_requireAdminTwoFactor", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_strongPasswds", "pubs", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_strongPasswds_enabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("loginSec_userBlacklist", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("longEncKey", "c9ad5de96fe3e7990eaf1965457a1d8773253e093c629695f4ba493a77815503", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lowResourceScansEnabled", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("lowResourceScanWaitStep", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("manualScanType", "onceDaily", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("max404Crawlers", "DISABLED", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("max404Crawlers_action", "throttle", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("max404Humans", "DISABLED", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("max404Humans_action", "throttle", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxExecutionTime", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxGlobalRequests", "DISABLED", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxGlobalRequests_action", "throttle", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxMem", "256", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxRequestsCrawlers", "DISABLED", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxRequestsCrawlers_action", "throttle", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxRequestsHumans", "DISABLED", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("maxRequestsHumans_action", "throttle", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("migration636_email_summary_excluded_directories", "1", "no");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_blocking", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_dashboard", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_firewall", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_livetraffic", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_loginsecurity", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsNewTour_scan", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_blocking", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_dashboard", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_firewall", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_livetraffic", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_loginsecurity", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("needsUpgradeTour_scan", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("neverBlockBG", "neverBlockVerified", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("noc1ScanSchedule", "a:3:{i:0;i:1675912800;i:1;i:1676172000;i:2;i:1676431200;}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_blogHighlights", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_productUpdates", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_promotions", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_scanStatus", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_securityAlerts", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("notification_updatesNeeded", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("onboardingAttempt1", "skipped", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("onboardingAttempt2", "", "no");
INSERT INTO `ctwp_wfconfig` VALUES("onboardingAttempt3", "", "no");
INSERT INTO `ctwp_wfconfig` VALUES("onboardingAttempt3Initial", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("onboardingDelayedAt", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_blockBadPOST", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_bypassLitespeedNoabort", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_hideWPVersion", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_pwStrengthOnUpdate", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_scanComments", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_scanOutside", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("other_WFNet", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("previousWflogsFileList", "[\"attack-data.php\",\"rules.php\",\"config-livewaf.php\",\"config-synced.php\",\"config.php\",\"config-transient.php\",\"GeoLite2-Country.mmdb\",\"template.php\",\"ips.php\",\".htaccess\"]", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanAjaxTestSuccessful", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanMonitorLastAttempt", "1675776935", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanMonitorLastAttemptMode", "quick", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanMonitorLastAttemptWasFork", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanMonitorLastSuccess", "1675776937", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanMonitorRemainingResumeAttempts", "2", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_checkGSB", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_checkHowGetIPs", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_checkReadableConfig", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_comments", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_core", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_coreUnknown", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_diskSpace", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_fileContents", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_fileContentsGSB", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_geoipSupport", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_highSense", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_malware", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_oldVersions", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_options", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_passwds", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_plugins", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_posts", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_scanImages", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_suspectedFiles", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_suspiciousAdminUsers", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_suspiciousOptions", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_themes", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_wafStatus", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_wpscan_directoryListingEnabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scansEnabled_wpscan_fullPathDisclosure", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanTime", "1675776937.5455", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scanType", "standard", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_exclude", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_force_ipv4_start", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_include_extra", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_maxDuration", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_maxIssues", "1000", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scan_max_resume_attempts", "2", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("schedMode", "auto", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("schedStartHour", "10", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("scheduledScansEnabled", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("showAdminBarMenu", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("showWfCentralUI", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("spamvertizeCheck", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("ssl_verify", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("startScansRemotely", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("supportContent", "{\"top\":[{\"title\":\"Blocking Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/troubleshooting\\/\",\"order\":0},{\"title\":\"Optimizing The Firewall\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/optimizing-the-firewall\\/\",\"order\":1},{\"title\":\"Wordfence Web Application Firewall (WAF)\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/\",\"order\":2},{\"title\":\"Scan Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/troubleshooting\\/\",\"order\":3},{\"title\":\"Wordfence and LiteSpeed\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/system-requirements\\/litespeed\\/\",\"order\":4},{\"title\":\"Two-Factor Authentication\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/two-factor-authentication\\/\",\"order\":5},{\"title\":\"Firewall Learning Mode\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/learning-mode\\/\",\"order\":6},{\"title\":\"Scan Results\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scan-results\\/\",\"order\":7},{\"title\":\"I am locked out of my site\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/#i-am-locked-out-of-my-site\",\"order\":8},{\"title\":\"PHP Fatal error: Failed opening required wordfence-waf.php\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/#php-fatal-error-failed-opening-required-wordfence-waf-php\",\"order\":9}],\"all\":[{\"title\":\"Wordfence Free\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/wordfence-free\\/\",\"excerpt\":\"Wordfence Free is an all-in-one security solution for WordPress websites that includes an endpoint firewall, security scanner, login security, alerts, centralized management, and more.\",\"order\":0},{\"title\":\"Wordfence Premium\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/wordfence-premium\\/\",\"excerpt\":\"Wordfence Premium comes with real-time firewall protection, real-time scan signatures, an IP address blocklist, country blocking, and Premium support.\",\"order\":1},{\"title\":\"Wordfence Care\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/wordfence-care\\/\",\"excerpt\":\"Wordfence Care is for business owners who place a premium on their time. Our team installs, configures, optimizes, and maintains your WordPress site security.\",\"order\":2},{\"title\":\"Wordfence Response\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/wordfence-response\\/\",\"excerpt\":\"Wordfence Response is for mission-critical WordPress websites that require 24\\/7\\/365 security monitoring with a 1-hour response time and 24-hour remediation.\",\"order\":3},{\"title\":\"Incident Response Services\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/incident-response-services\\/\",\"excerpt\":\"Let one of our Security Analysts help you clean your infected site or inspect it for vulnerabilities.\",\"order\":4},{\"title\":\"License Key\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/api-key\\/\",\"excerpt\":\"All Wordfence installations need a license key, also known as an API-key. The key can be a free key or a Premium key. \",\"order\":5},{\"title\":\"Account and Billing History\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/account\\/\",\"excerpt\":\"How to navigate and use your Wordfence account.\",\"order\":6},{\"title\":\"Wordfence Central\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/\",\"excerpt\":\"Wordfence Central provides a powerful and efficient way to manage the security of many WordPress sites via a single interface.\",\"children\":[{\"title\":\"Connecting your sites to Wordfence Central\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/connect\\/\",\"order\":0},{\"title\":\"Setting up two-factor authentication\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/2fa\\/\",\"order\":1},{\"title\":\"Using the Dashboard page\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/central\\/\",\"order\":2},{\"title\":\"Using the Configuration page\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/configuration\\/\",\"order\":3},{\"title\":\"Using Wordfence plugin options Templates\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/templates\\/\",\"order\":4},{\"title\":\"Using the Settings page\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/settings\\/\",\"order\":5},{\"title\":\"Using Wordfence Central Teams\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/teams\\/\",\"order\":6},{\"title\":\"Viewing scan Findings\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/central\\/findings\\/\",\"order\":7}],\"order\":7},{\"title\":\"Dashboard\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/\",\"excerpt\":\"The Wordfence Dashboard provides insight into the current state of your site’s security.\",\"children\":[{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/options\\/\",\"order\":0},{\"title\":\"Alerts\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/dashboard\\/alerts\\/\",\"order\":1}],\"order\":8},{\"title\":\"Firewall\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/\",\"excerpt\":\"The Wordfence Web Application Firewall is a PHP based, application level firewall that filters out malicious requests to your site. \",\"children\":[{\"title\":\"Optimizing\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/optimizing-the-firewall\\/\",\"order\":0},{\"title\":\"Learning Mode\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/learning-mode\\/\",\"order\":1},{\"title\":\"Statistics\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/statistics\\/\",\"order\":2},{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/options\\/\",\"order\":3},{\"title\":\"MySQLi storage engine\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/mysqli-storage-engine\\/\",\"order\":4},{\"title\":\"Brute Force Protection\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/brute-force\\/\",\"order\":5},{\"title\":\"Rate Limiting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/rate-limiting\\/\",\"order\":6},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/firewall\\/troubleshooting\\/\",\"order\":7}],\"order\":9},{\"title\":\"Blocking\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/\",\"excerpt\":\"Aside from the firewall rules that protect against various attacks, Wordfence also has custom features for additional blocking. \",\"children\":[{\"title\":\"Country Blocking\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/country-blocking\\/\",\"order\":0},{\"title\":\"Blocking Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/blocking\\/troubleshooting\\/\",\"order\":1}],\"order\":10},{\"title\":\"Scan\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/\",\"excerpt\":\"A Wordfence scan examines all files on your WordPress website looking for malicious code, backdoors, and shells that hackers have installed. It also scans for known malicious URLs and known patterns of infections.\",\"children\":[{\"title\":\"Options\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/options\\/\",\"order\":0},{\"title\":\"Results\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scan-results\\/\",\"order\":1},{\"title\":\"Scheduling\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/scheduling\\/\",\"order\":2},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/scan\\/troubleshooting\\/\",\"order\":3}],\"order\":11},{\"title\":\"Tools\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/\",\"excerpt\":\"Wordfence Tools include Live Traffic analysis, WHOIS Lookup, Import\\/Export Options, and Diagnostics.\",\"children\":[{\"title\":\"Live Traffic\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/live-traffic\\/\",\"order\":0},{\"title\":\"WHOIS Lookup\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/whois-lookup\\/\",\"order\":1},{\"title\":\"Import\\/Export\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/import-export\\/\",\"order\":2},{\"title\":\"Diagnostics\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/diagnostics\\/\",\"order\":3},{\"title\":\"Legacy Two-Factor Authentication\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/legacy-two-factor-authentication\\/\",\"order\":4},{\"title\":\"Two-Factor Authentication\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/tools\\/two-factor-authentication\\/\",\"order\":5}],\"order\":12},{\"title\":\"Login Security\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/login-security\\/\",\"excerpt\":\"The Login Security page currently contains settings for two-factor authentication (2FA) and reCAPTCHA. In a future Wordfence version, existing login-related features will also move to the same page.\",\"order\":13},{\"title\":\"Advanced\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/\",\"excerpt\":\"If you want to know more about the technical details of Wordfence, you will find the answers in this section.\",\"children\":[{\"title\":\"System requirements\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/system-requirements\\/\",\"order\":0},{\"title\":\"Changelog\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/changelog\\/\",\"order\":1},{\"title\":\"Remove or Reset\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/remove-or-reset\\/\",\"order\":2},{\"title\":\"Technical Details\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/technical-details\\/\",\"order\":3},{\"title\":\"Constants\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/constants\\/\",\"order\":4},{\"title\":\"Wordfence API\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/wordfence-api\\/\",\"order\":5},{\"title\":\"Troubleshooting\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/troubleshooting\\/\",\"order\":6},{\"title\":\"Plugin \\/ Theme Conflicts\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/advanced\\/plugin-theme-conflicts\\/\",\"order\":7}],\"order\":14},{\"title\":\"Wordfence and GDPR - General Data Protection Regulation\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/general-data-protection-regulation\\/\",\"excerpt\":\"Defiant, the company behind Wordfence, has updated its terms of use, privacy policies and software, as well as made available standard contractual clauses to meet GDPR compliance. Customers must review and agree to updated terms in order to continue using our products and services.\",\"children\":[{\"title\":\"Sub-Processors List\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/general-data-protection-regulation\\/sub-processors-list\\/\",\"order\":0}],\"order\":15},{\"title\":\"Login Security Plugin\",\"permalink\":\"https:\\/\\/www.wordfence.com\\/help\\/login-security-plugin\\/\",\"excerpt\":\"The Wordfence Login Security plugin contains a subset of the features found in the full Wordfence plugin: Two-factor Authentication, XML-RPC Protection and Login Page CAPTCHA. It is ideal for sites that need login security functionality but either can’t or don’t want to run the full Wordfence plugin.\",\"order\":16}]}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("supportHash", "b9a5e3270c767a1d17907b99082ec09327dc3822964570eacae8033d846446d4", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("timeoffset_wf", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("timeoffset_wf_updated", "1675776933", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("tldlist", "|com|org|net|edu|aaa|abb|abc|aco|ads|aeg|afl|aig|anz|aol|app|art|aws|axa|bar|bbc|bbt|bcg|bcn|bet|bid|bio|biz|bms|bmw|bom|boo|bot|box|buy|bzh|cab|cal|cam|car|cat|cba|cbn|cbs|ceo|cfa|cfd|cpa|crs|dad|day|dds|dev|dhl|diy|dnp|dog|dot|dtv|dvr|eat|eco|esq|eus|fan|fit|fly|foo|fox|frl|ftr|fun|fyi|gal|gap|gay|gdn|gea|gle|gmo|gmx|goo|gop|got|gov|hbo|hiv|hkt|hot|how|ibm|ice|icu|ifm|inc|ing|ink|int|ist|itv|jcb|jio|jll|jmp|jnj|jot|joy|kfh|kia|kim|kpn|krd|lat|law|lds|llc|llp|lol|lpl|ltd|man|map|mba|med|men|mil|mit|mlb|mls|mma|moe|moi|mom|mov|msd|mtn|mtr|nab|nba|nec|new|nfl|ngo|nhk|now|nra|nrw|ntt|nyc|obi|one|ong|onl|ooo|ott|ovh|pay|pet|phd|pid|pin|pnc|pro|pru|pub|pwc|red|ren|ril|rio|rip|run|rwe|sap|sas|sbi|sbs|sca|scb|sew|sex|sfr|ski|sky|soy|spa|srl|stc|tab|tax|tci|tdk|tel|thd|tjx|top|trv|tui|tvs|ubs|uno|uol|ups|vet|vig|vin|vip|wed|win|wme|wow|wtc|wtf|xin|xxx|xyz|you|yun|zip|ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|ss|st|su|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw|aarp|able|aero|akdn|ally|amex|arab|army|arpa|arte|asda|asia|audi|auto|baby|band|bank|bbva|beer|best|bike|bing|blog|blue|boats|boehringer|bofa|book|buzz|cafe|bnpparibas|bond|bradesco|call|camp|case|canon|casa|cash|boston|cars|bostik|care|cbre|cern|citi|city|coop|cards|cool|bosch|club|booking|build|chat|crown|cymru|cyou|boutique|coach|dclk|fast|cloud|deal|cisco|citic|codes|dell|erni|fiat|fido|film|fire|food|ford|dabur|dvag|flir|dance|diet|dish|docs|fans|farm|fish|blockbuster|data|date|desi|fage|fail|deals|free|cheap|fund|game|itau|java|jeep|jobs|jprs|kddi|kids|kiwi|kpmg|kred|land|lego|life|like|limo|link|live|delta|love|ltda|luxe|room|bloomberg|loan|rsvp|ruhr|safe|chase|sale|sarl|save|saxo|scot|seat|seek|sexy|shaw|shia|shop|show|silk|sina|site|skin|sncf|sohu|games|bridgestone|caravan|career|gbiz|careers|casino|gent|ggee|gift|catering|catholic|center|chanel|channel|gmbh|charity|gold|chintai|guge|hair|haus|chrome|church|guru|circle|claims|citadel|cityeats|golf|cipriani|cleaning|christmas|goog|broadway|hdfc|help|here|hgtv|host|hsbc|info|brussels|icbc|ieee|lgbt|garden|imdb|immo|lidl|brother|nico|nike|reit|lipsy|broker|lilly|read|rent|rest|linde|loans|rich|locus|ollo|qpon|lotte|builders|business|capital|capetown|capitalone|open|page|pars|pccw|pohl|post|prod|prof|camera|pics|lotto|calvinklein|ping|pink|play|plus|porn|song|vote|accountant|voto|wang|weir|wien|wiki|wine|academy|accenture|work|accountants|xbox|actor|abogado|yoga|abudhabi|adult|aetna|apple|airtel|archi|abbott|amfam|amica|abarth|apartments|audio|abbvie|agency|anquan|author|aquarelle|aramco|autos|africa|azure|baidu|bingo|airbus|alstom|alfaromeo|alibaba|alipay|allfinanz|allstate|green|alsace|zone|amazon|bible|gallo|gripe|gucci|guide|airforce|amsterdam|black|analytics|group|android|bayern|agakhan|globo|zara|athleta|gifts|gives|bauhaus|beats|beauty|glass|zero|bharti|bentley|attorney|banamex|baseball|associates|auction|audible|auspost|bestbuy|basketball|forex|gmail|avianca|barclays|barefoot|bargains|barclaycard|forum|berlin|barcelona|blackfriday|click|talk|team|bananarepublic|star|surf|drive|spot|dubai|earth|sony|clinic|edeka|email|epson|jetzt|koeln|kyoto|lamer|lease|legal|taxi|tech|viva|house|vana|visa|americanexpress|faith|americanfamily|fedex|final|homes|honda|horse|hyatt|lexus|teva|tiaa|tube|ikano|tips|town|toys|irish|vivo|macys|clinique|coupons|sharp|shell|shoes|skype|sling|smart|smile|solar|space|corsica|country|nexus|coupon|sport|courses|stada|store|study|style|comsec|cooking|sucks|swiss|contact|tatar|tires|tirol|tmall|today|credit|cricket|tokyo|tools|toray|total|tours|trade|trust|tunes|tushu|ubank|vegas|video|vodka|condos|volvo|coffee|wales|cruise|dating|dealer|dental|clubmed|datsun|degree|design|cruises|doctor|dunlop|dupont|durban|college|cologne|comcast|direct|emerck|energy|dentist|digital|engineer|express|fashion|ferrero|directory|ferrari|world|domains|discount|download|farmers|discover|family|xerox|ericsson|works|education|equipment|yahoo|engineering|enterprises|estate|etisalat|extraspace|fidelity|eurovision|events|exchange|expert|exposed|feedback|fairwinds|flickr|fishing|flights|frontdoor|giving|fitness|frogans|global|gratis|hangout|health|hermes|hockey|hotels|insure|intuit|jaguar|joburg|kaufen|grocery|juegos|stream|studio|supply|suzuki|swatch|sydney|taipei|frontier|gallup|google|hotmail|hughes|fujitsu|watch|futbol|gallery|shouji|helsinki|lancia|guardian|guitars|furniture|hamburg|kosher|genting|george|hdfcbank|healthcare|imamat|kinder|kindle|soccer|social|weber|weibo|hiphop|taobao|target|toyota|travel|zappos|company|compare|tkmaxx|voting|finance|unicom|voyage|webcam|florist|flowers|hitachi|goodyear|foodnetwork|vuelos|football|forsale|godaddy|goldpoint|grainger|graphics|fresenius|holdings|holiday|viajes|viking|walter|hoteles|tennis|firestone|hosting|firmdale|homesense|hyundai|hospital|financial|homedepot|homegoods|tattoo|hisamitsu|infiniti|villas|institute|ipiranga|insurance|tienda|virgin|yachts|international|vision|yandex|foundation|immobilien|xihuan|industries|tjmaxx|investments|ismaili|latino|meme|mini|computer|community|contractors|meet|creditcard|media|commbank|creditunion|maif|menu|mint|mobi|moda|moto|cuisinella|miami|jewelry|markets|merckmsd|marketing|money|mattel|clothing|istanbul|memorial|mobile|marriott|marshalls|maserati|mitsubishi|monash|mckinsey|monster|microsoft|mormon|mortgage|moscow|melbourne|motorcycles|movie|construction|consulting|mango|museum|music|mutual|nagoya|name|market|navy|news|next|norton|network|neustar|nextdirect|nikon|ninja|nissan|nissay|netbank|netflix|nokia|northwesternmutual|nowtv|natura|nowruz|online|cookingchannel|latrobe|observer|office|okinawa|olayan|olayangroup|oldnavy|omega|oracle|orange|organic|origins|osaka|phone|poker|living|paris|parts|party|lefrak|quest|radio|democrat|juniper|photo|limited|kerryhotels|kerrylogistics|pizza|promo|jpmorgan|place|praxi|press|prime|kerryproperties|lawyer|lincoln|locker|diamonds|makeup|lasalle|london|madrid|lacaixa|lanxess|maison|lamborghini|lighting|kuokgroup|sener|luxury|landrover|lplfinancial|otsuka|seven|lancaster|pfizer|kitchen|komatsu|management|partners|lifestyle|panasonic|passagens|photos|photography|physio|philips|pictet|sanofi|schule|plumbing|playstation|quebec|racing|search|leclerc|school|secure|pioneer|politie|pictures|lifeinsurance|pharmacy|select|realtor|recipes|repair|redstone|rehab|reise|reisen|reliance|richardli|ricoh|rodeo|realty|rocks|rentals|rugby|report|rocher|ryukyu|restaurant|review|rogers|rexroth|safety|sakura|salon|reviews|samsung|sandvik|schmidt|schwarz|schaeffler|science|security|services|shiksha|shopping|showtime|singles|software|staples|solutions|republican|softbank|storage|lundbeck|theater|zuerich|properties|systems|temasek|xfinity|deloitte|theatre|delivery|property|saarland|samsclub|stcgroup|ventures|verisign|xn--90ae|xn--node|statebank|vanguard|xn--p1ai|yamaxun|xn--qxam|pramerica|statefarm|realestate|shangrila|yokohama|stockholm|support|surgery|tickets|tiffany|toshiba|trading|walmart|wanggou|tatamotors|watches|technology|weather|supplies|university|youtube|training|travelers|woodside|vacations|vlaanderen|website|wedding|whoswho|windows|winners|xn--d1alf|xn--e1a4c|xn--90a3ac|xn--c1avg|protection|xn--90ais|xn--9dbq2a|xn--fhbei|xn--9et52u|xn--j1aef|xn--j1amh|xn--l1acc|xn--c2br7g|xn--cg4bki|xn--ngbrx|xn--nqv7f|xn--30rr7y|xn--80aswg|xn--p1acf|volkswagen|xn--qxa6a|xn--55qx5d|xn--5tzm5g|xn--tckwe|xn--vhquv|prudential|xn--3pxu8k|xn--45q11c|xn--czrs0t|yodobashi|xn--4gbrim|xn--czru2d|productions|progressive|redumbrella|williamhill|xn--11b4c3d|xn--1ck2e1b|xn--1qqw23a|xn--2scrj9c|xn--mxtq1m|xn--y9a3aq|xn--3bst00m|xn--wgbl6a|xn--3ds443g|xn--o3cw4h|xn--pssy2u|xn--q7ce6a|xn--unup4y|xn--wgbh1c|xn--3hcrj9c|xn--42c2d9a|xn--3e0b707e|xn--54b7fta0cc|sandvikcoromant|xn--45brj9c|versicherung|wolterskluwer|travelersinsurance|xn--55qw42g|travelchannel|weatherchannel|xn--9krt00a|scholarships|xn--45br5cyl|xn--5su34j936bgsg|xn--6frz82g|xn--4dbrk0ce|xn--6qq986b3xl|xn--80adxhks|xn--80ao21a|xn--cck2b3b|xn--80aqecdr1a|xn--80asehdb|xn--clchc0ea0b2g2a9gcd|xn--czr694b|xn--fiq64b|xn--fiqs8s|xn--fiqz9s|xn--fjq720a|xn--flw351e|xn--h2brj9c|xn--imr513n|xn--io0a7i|xn--d1acj3b|xn--kpry57d|xn--kput3i|xn--efvy88h|xn--fct429k|xn--g2xx48c|xn--hxt814e|xn--jvr189m|xn--kprw13d|xn--nyqy26a|xn--pgbs0dh|xn--q9jyb4c|xn--b4w605ferd|xn--otu796d|xn--rhqv96g|xn--rovu88b|xn--gckr3f0f|xn--fpcrj9c3d|xn--fzc2c9e2c|xn--gecrj9c|xn--gk3at1e|xn--cckwcxetd|xn--eckvdtc9d|xn--mgbbh1a|xn--bck1b9a5dre4c|xn--fiq228c5hs|xn--h2breg3eve|xn--mgbtx2b|xn--h2brj9c8c|xn--mix891f|xn--fzys8d69uvgm|xn--j6w193g|xn--i1b6b1a6a2e|xn--mgbaakc7dvf|xn--s9brj9c|xn--mgbaam7a8h|xn--zfr164b|xn--8y0a063a|xn--mgb9awbf|xn--mgbab2bd|xn--mgba3a3ejt|xn--kcrx77d1x4a|xn--mgbgu82a|xn--mgbpl2fh|xn--mgbi4ecexp|xn--mgbt3dhd|xn--mgbca7dzdo|xn--mgbx4cd0ab|xn--mk1bu44c|xn--ngbe9e0a|xn--jlq480n2rg|xn--mgbayh7gpa|xn--mgbbh1a71e|xn--ses554g|xn--lgbbat1ad8j|xn--ngbc5azd|xn--t60b56a|xn--vuq861b|xn--mgbah1a3hjkrd|xn--mgbai9azgqp6j|xn--mgbc0a9azcg|xn--mgbcpq6gpa1a|xn--mgberp4a5d4ar|xn--ogbpf8fl|xn--nqv7fs00ema|xn--qcka1pmc|xn--w4r85el8fhu5dnra|xn--w4rs40l|xn--mgba3a4f16a|xn--mgba7c0bbn0a|xn--vermgensberater-ctb|xn--vermgensberatung-pwb|xn--xhq521b|xn--tiq49xqyj|xn--rvc1e0am3e|xn--xkc2al3hye2a|xn--xkc2dl3a5ee0h|xn--yfro4i67o|xn--ygbi2ammx|", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("tldlistHash", "981d1427d47efe5bc083fd2318c2bca85172debf5fb2c673faacebc7e1d43643", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("totalScansRun", "2", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("touppBypassNextCheck", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("touppPromptNeeded", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("vulnerabilities_plugin", "a:6:{i:0;a:5:{s:4:\"slug\";s:7:\"akismet\";s:11:\"fromVersion\";s:5:\"5.0.1\";s:10:\"vulnerable\";b:0;s:9:\"toVersion\";s:5:\"5.0.2\";s:4:\"link\";b:0;}i:1;a:5:{s:4:\"slug\";s:13:\"wordpress-seo\";s:11:\"fromVersion\";s:4:\"20.0\";s:10:\"vulnerable\";b:0;s:9:\"toVersion\";s:4:\"20.1\";s:4:\"link\";b:0;}i:2;a:4:{s:4:\"slug\";s:10:\"duplicator\";s:11:\"fromVersion\";s:7:\"1.5.2.1\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:3;a:4:{s:4:\"slug\";s:11:\"hello-dolly\";s:11:\"fromVersion\";s:5:\"1.7.2\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:4;a:4:{s:4:\"slug\";s:9:\"wordfence\";s:11:\"fromVersion\";s:5:\"7.8.2\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}i:5;a:4:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:11:\"fromVersion\";s:5:\"6.0.7\";s:10:\"vulnerable\";b:0;s:4:\"link\";b:0;}}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wafAlertInterval", "600", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wafAlertOnAttacks", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wafAlertThreshold", "100", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wafAlertWhitelist", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("waf_status", "learning-mode", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wfKillRequested", "0", "no");
INSERT INTO `ctwp_wfconfig` VALUES("wfPeakMemory", "12582912", "no");
INSERT INTO `ctwp_wfconfig` VALUES("wfScanStartVersion", "6.1.1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wfStatusStartMsgs", "a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wf_scanLastStatusTime", "0", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wf_scanRunning", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wf_summaryItems", "a:8:{s:12:\"scannedPosts\";i:0;s:15:\"scannedComments\";i:0;s:12:\"scannedFiles\";i:0;s:14:\"scannedPlugins\";i:0;s:13:\"scannedThemes\";i:0;s:12:\"scannedUsers\";i:0;s:11:\"scannedURLs\";i:0;s:10:\"lastUpdate\";i:1675776937;}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("whitelisted", "", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("whitelistedServices", "{}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("whitelistHash", "bf3d76dc05caf8623cb3fe01c1fc9e308e2f2ea37b826937d850fde361cdefd4", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("whitelistPresets", "{\"wordfence\":{\"n\":\"Wordfence\",\"h\":true,\"d\":true,\"f\":true,\"r\":[\"54.68.32.247\",\"69.46.36.0\\/27\",\"2605:2400:0104:0100::\\/56\"]},\"sucuri\":{\"n\":\"Sucuri\",\"d\":true,\"r\":[\"97.74.127.171\",\"69.164.203.172\",\"173.230.128.135\",\"66.228.34.49\",\"66.228.40.185\",\"50.116.36.92\",\"50.116.36.93\",\"50.116.3.171\",\"198.58.96.212\",\"50.116.63.221\",\"192.155.92.112\",\"192.81.128.31\",\"198.58.106.244\",\"192.155.95.139\",\"23.239.9.227\",\"198.58.112.103\",\"192.155.94.43\",\"162.216.16.33\",\"173.255.233.124\",\"173.255.233.124\",\"192.155.90.179\",\"50.116.41.217\",\"192.81.129.227\",\"198.58.111.80\",\"162.216.19.183\"]},\"facebook\":{\"n\":\"Facebook\",\"d\":true,\"r\":[\"69.63.176.0\\/20\",\"66.220.144.0\\/20\",\"66.220.144.0\\/21\",\"69.63.184.0\\/21\",\"69.63.176.0\\/21\",\"74.119.76.0\\/22\",\"69.171.255.0\\/24\",\"173.252.64.0\\/18\",\"69.171.224.0\\/19\",\"69.171.224.0\\/20\",\"103.4.96.0\\/22\",\"69.63.176.0\\/24\",\"173.252.64.0\\/19\",\"173.252.70.0\\/24\",\"31.13.64.0\\/18\",\"31.13.24.0\\/21\",\"66.220.152.0\\/21\",\"66.220.159.0\\/24\",\"69.171.239.0\\/24\",\"69.171.240.0\\/20\",\"31.13.64.0\\/19\",\"31.13.64.0\\/24\",\"31.13.65.0\\/24\",\"31.13.67.0\\/24\",\"31.13.68.0\\/24\",\"31.13.69.0\\/24\",\"31.13.70.0\\/24\",\"31.13.71.0\\/24\",\"31.13.72.0\\/24\",\"31.13.73.0\\/24\",\"31.13.74.0\\/24\",\"31.13.75.0\\/24\",\"31.13.76.0\\/24\",\"31.13.77.0\\/24\",\"31.13.96.0\\/19\",\"31.13.66.0\\/24\",\"173.252.96.0\\/19\",\"69.63.178.0\\/24\",\"31.13.78.0\\/24\",\"31.13.79.0\\/24\",\"31.13.80.0\\/24\",\"31.13.82.0\\/24\",\"31.13.83.0\\/24\",\"31.13.84.0\\/24\",\"31.13.85.0\\/24\",\"31.13.86.0\\/24\",\"31.13.87.0\\/24\",\"31.13.88.0\\/24\",\"31.13.89.0\\/24\",\"31.13.90.0\\/24\",\"31.13.91.0\\/24\",\"31.13.92.0\\/24\",\"31.13.93.0\\/24\",\"31.13.94.0\\/24\",\"31.13.95.0\\/24\",\"69.171.253.0\\/24\",\"69.63.186.0\\/24\",\"31.13.81.0\\/24\",\"179.60.192.0\\/22\",\"179.60.192.0\\/24\",\"179.60.193.0\\/24\",\"179.60.194.0\\/24\",\"179.60.195.0\\/24\",\"185.60.216.0\\/22\",\"45.64.40.0\\/22\",\"185.60.216.0\\/24\",\"185.60.217.0\\/24\",\"185.60.218.0\\/24\",\"185.60.219.0\\/24\",\"129.134.0.0\\/16\",\"157.240.0.0\\/16\",\"157.240.8.0\\/24\",\"157.240.0.0\\/24\",\"157.240.1.0\\/24\",\"157.240.2.0\\/24\",\"157.240.3.0\\/24\",\"157.240.4.0\\/24\",\"157.240.5.0\\/24\",\"157.240.6.0\\/24\",\"157.240.7.0\\/24\",\"157.240.9.0\\/24\",\"157.240.10.0\\/24\",\"157.240.16.0\\/24\",\"157.240.19.0\\/24\",\"157.240.11.0\\/24\",\"157.240.12.0\\/24\",\"157.240.13.0\\/24\",\"157.240.14.0\\/24\",\"157.240.15.0\\/24\",\"157.240.17.0\\/24\",\"157.240.18.0\\/24\",\"157.240.20.0\\/24\",\"157.240.21.0\\/24\",\"157.240.22.0\\/24\",\"157.240.23.0\\/24\",\"157.240.0.0\\/17\",\"69.171.250.0\\/24\",\"157.240.24.0\\/24\",\"157.240.25.0\\/24\",\"199.201.64.0\\/24\",\"199.201.65.0\\/24\",\"199.201.64.0\\/22\",\"204.15.20.0\\/22\",\"157.240.192.0\\/24\",\"129.134.0.0\\/17\",\"204.15.20.0\\/22\",\"69.63.176.0\\/20\",\"69.63.176.0\\/21\",\"69.63.184.0\\/21\",\"66.220.144.0\\/20\",\"69.63.176.0\\/20\",\"2620:0:1c00::\\/40\",\"2a03:2880::\\/32\",\"2a03:2880:fffe::\\/48\",\"2a03:2880:ffff::\\/48\",\"2620:0:1cff::\\/48\",\"2a03:2880:f000::\\/48\",\"2a03:2880:f001::\\/48\",\"2a03:2880:f002::\\/48\",\"2a03:2880:f003::\\/48\",\"2a03:2880:f004::\\/48\",\"2a03:2880:f005::\\/48\",\"2a03:2880:f006::\\/48\",\"2a03:2880:f007::\\/48\",\"2a03:2880:f008::\\/48\",\"2a03:2880:f009::\\/48\",\"2a03:2880:f00a::\\/48\",\"2a03:2880:f00b::\\/48\",\"2a03:2880:f00c::\\/48\",\"2a03:2880:f00d::\\/48\",\"2a03:2880:f00e::\\/48\",\"2a03:2880:f00f::\\/48\",\"2a03:2880:f010::\\/48\",\"2a03:2880:f011::\\/48\",\"2a03:2880:f012::\\/48\",\"2a03:2880:f013::\\/48\",\"2a03:2880:f014::\\/48\",\"2a03:2880:f015::\\/48\",\"2a03:2880:f016::\\/48\",\"2a03:2880:f017::\\/48\",\"2a03:2880:f018::\\/48\",\"2a03:2880:f019::\\/48\",\"2a03:2880:f01a::\\/48\",\"2a03:2880:f01b::\\/48\",\"2a03:2880:f01c::\\/48\",\"2a03:2880:f01d::\\/48\",\"2a03:2880:f01e::\\/48\",\"2a03:2880:f01f::\\/48\",\"2a03:2880:1000::\\/36\",\"2a03:2880:2000::\\/36\",\"2a03:2880:3000::\\/36\",\"2a03:2880:4000::\\/36\",\"2a03:2880:5000::\\/36\",\"2a03:2880:6000::\\/36\",\"2a03:2880:7000::\\/36\",\"2a03:2880:f020::\\/48\",\"2a03:2880:f021::\\/48\",\"2a03:2880:f022::\\/48\",\"2a03:2880:f023::\\/48\",\"2a03:2880:f024::\\/48\",\"2a03:2880:f025::\\/48\",\"2a03:2880:f026::\\/48\",\"2a03:2880:f027::\\/48\",\"2a03:2880:f028::\\/48\",\"2a03:2880:f029::\\/48\",\"2a03:2880:f02b::\\/48\",\"2a03:2880:f02c::\\/48\",\"2a03:2880:f02d::\\/48\",\"2a03:2880:f02e::\\/48\",\"2a03:2880:f02f::\\/48\",\"2a03:2880:f030::\\/48\",\"2a03:2880:f031::\\/48\",\"2a03:2880:f032::\\/48\",\"2a03:2880:f033::\\/48\",\"2a03:2880:f034::\\/48\",\"2a03:2880:f035::\\/48\",\"2a03:2880:f036::\\/48\",\"2a03:2880:f037::\\/48\",\"2a03:2880:f038::\\/48\",\"2a03:2880:f039::\\/48\",\"2a03:2880:f03a::\\/48\",\"2a03:2880:f03b::\\/48\",\"2a03:2880:f03c::\\/48\",\"2a03:2880:f03d::\\/48\",\"2a03:2880:f03e::\\/48\",\"2a03:2880:f03f::\\/48\",\"2401:db00::\\/32\",\"2a03:2880::\\/36\",\"2803:6080::\\/32\",\"2a03:2880:f100::\\/48\",\"2a03:2880:f200::\\/48\",\"2a03:2880:f101::\\/48\",\"2a03:2880:f201::\\/48\",\"2a03:2880:f102::\\/48\",\"2a03:2880:f202::\\/48\",\"2a03:2880:f103::\\/48\",\"2a03:2880:f203::\\/48\",\"2a03:2880:f104::\\/48\",\"2a03:2880:f204::\\/48\",\"2a03:2880:f107::\\/48\",\"2a03:2880:f207::\\/48\",\"2a03:2880:f108::\\/48\",\"2a03:2880:f208::\\/48\",\"2a03:2880:f109::\\/48\",\"2a03:2880:f209::\\/48\",\"2a03:2880:f10a::\\/48\",\"2a03:2880:f20a::\\/48\",\"2a03:2880:f10b::\\/48\",\"2a03:2880:f20b::\\/48\",\"2a03:2880:f10d::\\/48\",\"2a03:2880:f20d::\\/48\",\"2a03:2880:f10e::\\/48\",\"2a03:2880:f20e::\\/48\",\"2a03:2880:f10f::\\/48\",\"2a03:2880:f20f::\\/48\",\"2a03:2880:f110::\\/48\",\"2a03:2880:f210::\\/48\",\"2a03:2880:f111::\\/48\",\"2a03:2880:f211::\\/48\",\"2a03:2880:f112::\\/48\",\"2a03:2880:f212::\\/48\",\"2a03:2880:f114::\\/48\",\"2a03:2880:f214::\\/48\",\"2a03:2880:f115::\\/48\",\"2a03:2880:f215::\\/48\",\"2a03:2880:f116::\\/48\",\"2a03:2880:f216::\\/48\",\"2a03:2880:f117::\\/48\",\"2a03:2880:f217::\\/48\",\"2a03:2880:f118::\\/48\",\"2a03:2880:f218::\\/48\",\"2a03:2880:f119::\\/48\",\"2a03:2880:f219::\\/48\",\"2a03:2880:f11a::\\/48\",\"2a03:2880:f21a::\\/48\",\"2a03:2880:f11f::\\/48\",\"2a03:2880:f21f::\\/48\",\"2a03:2880:f121::\\/48\",\"2a03:2880:f221::\\/48\",\"2a03:2880:f122::\\/48\",\"2a03:2880:f222::\\/48\",\"2a03:2880:f123::\\/48\",\"2a03:2880:f223::\\/48\",\"2a03:2880:f10c::\\/48\",\"2a03:2880:f20c::\\/48\",\"2a03:2880:f126::\\/48\",\"2a03:2880:f226::\\/48\",\"2a03:2880:f105::\\/48\",\"2a03:2880:f205::\\/48\",\"2a03:2880:f125::\\/48\",\"2a03:2880:f225::\\/48\",\"2a03:2880:f106::\\/48\",\"2a03:2880:f206::\\/48\",\"2a03:2880:f11b::\\/48\",\"2a03:2880:f21b::\\/48\",\"2a03:2880:f113::\\/48\",\"2a03:2880:f213::\\/48\",\"2a03:2880:f11c::\\/48\",\"2a03:2880:f21c::\\/48\",\"2a03:2880:f128::\\/48\",\"2a03:2880:f228::\\/48\",\"2a03:2880:f02a::\\/48\",\"2a03:2880:f12a::\\/48\",\"2a03:2880:f22a::\\/48\",\"2a03:2880:f12f::\\/48\",\"2a03:2880:f22f::\\/48\",\"2a03:2880:f11d::\\/48\",\"2a03:2880:f11e::\\/48\",\"2a03:2880:f120::\\/48\",\"2a03:2880:f124::\\/48\",\"2a03:2880:f127::\\/48\",\"2a03:2880:f129::\\/48\",\"2a03:2880:f12b::\\/48\",\"2a03:2880:f12c::\\/48\",\"2a03:2880:f12d::\\/48\",\"2a03:2880:f12e::\\/48\",\"2a03:2880:f130::\\/48\",\"2a03:2880:f131::\\/48\",\"2a03:2880:f132::\\/48\",\"2a03:2880:f133::\\/48\",\"2a03:2880:f134::\\/48\",\"2a03:2880:f135::\\/48\",\"2a03:2880:f136::\\/48\",\"2a03:2880:f137::\\/48\",\"2a03:2880:f138::\\/48\",\"2a03:2880:f139::\\/48\",\"2a03:2880:f13a::\\/48\",\"2a03:2880:f13b::\\/48\",\"2a03:2880:f13c::\\/48\",\"2a03:2880:f13d::\\/48\",\"2a03:2880:f13e::\\/48\",\"2a03:2880:f13f::\\/48\",\"2a03:2880:f21d::\\/48\",\"2a03:2880:f21e::\\/48\",\"2a03:2880:f220::\\/48\",\"2a03:2880:f224::\\/48\",\"2a03:2880:f227::\\/48\",\"2a03:2880:f229::\\/48\",\"2a03:2880:f22b::\\/48\",\"2a03:2880:f22c::\\/48\",\"2a03:2880:f22d::\\/48\",\"2a03:2880:f22e::\\/48\",\"2a03:2880:f230::\\/48\",\"2a03:2880:f231::\\/48\",\"2a03:2880:f232::\\/48\",\"2a03:2880:f233::\\/48\",\"2a03:2880:f234::\\/48\",\"2a03:2880:f235::\\/48\",\"2a03:2880:f236::\\/48\",\"2a03:2880:f237::\\/48\",\"2a03:2880:f238::\\/48\",\"2a03:2880:f239::\\/48\",\"2a03:2880:f23a::\\/48\",\"2a03:2880:f23b::\\/48\",\"2a03:2880:f23c::\\/48\",\"2a03:2880:f23d::\\/48\",\"2a03:2880:f23e::\\/48\",\"2a03:2880:f23f::\\/48\",\"2a03:2880:f0ff::\\/48\",\"2a03:2880:f1ff::\\/48\",\"2a03:2880:f2ff::\\/48\",\"2c0f:ef78:0003::\\/48\"]},\"uptimerobot\":{\"n\":\"Uptime Robot\",\"d\":true,\"r\":[\"69.162.124.224\\/28\",\"63.143.42.240\\/28\"]},\"statuscake\":{\"n\":\"StatusCake\",\"d\":true,\"r\":[\"103.194.112.70\",\"104.131.247.151\",\"104.131.248.65\",\"104.131.248.78\",\"104.156.229.24\",\"104.156.255.184\",\"104.206.168.26\",\"104.238.164.105\",\"107.150.1.135\",\"107.155.104.182\",\"107.155.108.234\",\"107.155.125.29\",\"107.161.28.219\",\"107.170.197.248\",\"107.170.219.46\",\"107.170.227.23\",\"107.170.227.24\",\"107.170.240.141\",\"107.170.53.191\",\"107.191.47.131\",\"107.191.57.237\",\"108.61.119.153\",\"108.61.162.214\",\"108.61.205.201\",\"108.61.212.141\",\"108.61.215.179\",\"125.63.48.239\",\"128.199.222.65\",\"138.197.130.232\",\"138.197.130.235\",\"138.197.140.243\",\"138.204.171.136\",\"138.68.24.115\",\"138.68.24.136\",\"138.68.24.207\",\"138.68.24.60\",\"138.68.80.10\",\"138.68.80.173\",\"139.59.15.79\",\"139.59.155.26\",\"139.59.190.241\",\"139.59.22.109\",\"139.59.26.85\",\"139.59.29.167\",\"149.154.157.61\",\"149.255.59.100\",\"151.236.10.238\",\"151.236.18.80\",\"151.80.175.223\",\"151.80.175.226\",\"154.127.60.23\",\"154.127.60.59\",\"158.255.208.76\",\"159.203.182.22\",\"159.203.182.60\",\"159.203.186.225\",\"159.203.31.18\",\"162.243.247.163\",\"162.243.71.56\",\"162.248.97.72\",\"162.253.64.104\",\"162.253.64.87\",\"176.56.230.110\",\"178.62.101.57\",\"178.62.104.137\",\"178.62.106.84\",\"178.62.109.7\",\"178.62.40.233\",\"178.62.41.44\",\"178.62.41.49\",\"178.62.41.52\",\"178.62.65.162\",\"178.62.71.227\",\"178.62.78.199\",\"178.62.80.93\",\"178.62.86.69\",\"178.73.210.99\",\"181.41.201.117\",\"181.41.214.137\",\"185.112.157.185\",\"185.12.45.70\",\"185.47.129.168\",\"185.60.135.86\",\"188.166.158.224\",\"188.166.253.148\",\"188.226.139.158\",\"188.226.158.160\",\"188.226.169.228\",\"188.226.171.58\",\"188.226.184.152\",\"188.226.185.106\",\"188.226.186.199\",\"188.226.203.84\",\"188.226.247.184\",\"188.68.238.79\",\"192.241.221.11\",\"193.124.178.54\",\"193.124.178.61\",\"193.182.144.105\",\"193.182.144.147\",\"199.167.128.80\",\"209.222.30.242\",\"213.183.56.107\",\"217.148.43.188\",\"217.148.43.202\",\"31.220.7.237\",\"37.157.246.146\",\"37.235.48.42\",\"37.235.52.25\",\"37.235.53.240\",\"37.235.55.205\",\"37.97.188.103\",\"45.32.128.80\",\"45.32.145.79\",\"45.32.151.21\",\"45.32.160.172\",\"45.32.166.195\",\"45.32.171.24\",\"45.32.192.198\",\"45.32.195.186\",\"45.32.195.93\",\"45.32.212.56\",\"45.32.36.158\",\"45.32.7.22\",\"45.63.121.159\",\"45.63.26.78\",\"45.63.51.63\",\"45.63.61.213\",\"45.63.76.68\",\"45.63.78.84\",\"45.63.86.120\",\"45.63.88.213\",\"45.76.1.44\",\"45.76.192.50\",\"45.76.3.112\",\"46.101.0.24\",\"46.101.110.32\",\"46.101.110.43\",\"46.101.110.45\",\"46.101.20.96\",\"46.101.238.182\",\"46.101.238.189\",\"46.101.240.208\",\"46.101.27.186\",\"46.101.61.83\",\"46.101.74.251\",\"5.45.179.103\",\"50.2.139.16\",\"82.221.95.161\",\"91.236.116.163\"]},\"managewp\":{\"n\":\"ManageWP\",\"d\":false,\"r\":[\"34.211.180.66\",\"54.70.65.107\",\"34.210.224.7\",\"52.41.5.108\",\"52.35.72.129\",\"54.191.137.17\",\"35.162.254.253\",\"52.11.12.231\",\"52.11.29.70\",\"52.11.54.161\",\"52.24.142.159\",\"52.25.191.255\",\"52.27.181.126\",\"52.34.126.117\",\"52.34.254.47\",\"52.35.82.99\",\"52.36.28.80\",\"52.38.106.97\",\"52.39.177.152\",\"52.41.230.148\",\"52.41.237.12\",\"52.42.126.166\",\"52.43.13.71\",\"52.43.76.224\",\"52.88.96.110\",\"52.89.155.51\",\"54.148.73.118\",\"54.186.37.105\",\"54.187.92.57\",\"54.191.32.65\",\"54.191.67.23\",\"54.191.80.119\",\"54.191.135.209\",\"54.191.136.176\",\"54.191.148.85\",\"54.191.149.8\",\"52.26.122.21\",\"52.24.187.29\",\"52.89.85.107\",\"54.186.128.167\",\"54.191.40.136\",\"52.24.62.11\",\"52.88.119.122\",\"54.191.148.225\",\"54.191.151.18\",\"52.89.94.121\",\"52.25.116.116\",\"52.88.215.225\",\"54.186.143.184\",\"52.88.197.180\",\"52.27.171.126\"]},\"seznam\":{\"n\":\"Seznam Search Engine\",\"d\":true,\"r\":[\"77.75.74.0\\/24\",\"77.75.76.0\\/24\",\"77.75.77.0\\/24\",\"77.75.78.0\\/24\",\"77.75.79.0\\/24\",\"2a02:598:a::78:0\\/112\",\"2a02:598:a::79:0\\/112\",\"2a02:598:2::0\\/96\"]}}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wordfenceI18n", "1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wordpressPluginVersions", "a:6:{s:26:\"advanced-custom-fields-pro\";s:5:\"6.0.7\";s:7:\"akismet\";s:5:\"5.0.1\";s:10:\"duplicator\";s:7:\"1.5.2.1\";s:5:\"hello\";s:5:\"1.7.2\";s:9:\"wordfence\";s:5:\"7.8.2\";s:13:\"wordpress-seo\";s:4:\"20.0\";}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wordpressThemeVersions", "a:1:{s:6:\"cities\";s:3:\"1.0\";}", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wordpressVersion", "6.1.1", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wp_home_url", "http://localhost:8888/cities", "yes");
INSERT INTO `ctwp_wfconfig` VALUES("wp_site_url", "http://localhost:8888/cities", "yes");

/* INSERT TABLE DATA: ctwp_wfissues */
INSERT INTO `ctwp_wfissues` VALUES("2", "1675776937", "1675776937", "new", "wfPluginUpgrade", "50", "9b1bc8af7e100dcba1ec392a5dd6ad91", "9b1bc8af7e100dcba1ec392a5dd6ad91", "The Plugin \"Akismet Anti-Spam\" needs an upgrade (5.0.1 -> 5.0.2).", "You need to upgrade \"Akismet Anti-Spam\" to the newest version to ensure you have any security fixes the developer has released.", "a:20:{s:4:\"Name\";s:17:\"Akismet Anti-Spam\";s:9:\"PluginURI\";s:20:\"https://akismet.com/\";s:7:\"Version\";s:5:\"5.0.1\";s:11:\"Description\";s:279:\"Used by millions, Akismet is quite possibly the best way in the world to <strong>protect your blog from spam</strong>. It keeps your site protected even while you sleep. To get started: activate the Akismet plugin and then go to your Akismet Settings page to set up your API key.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:41:\"https://automattic.com/wordpress-plugins/\";s:10:\"TextDomain\";s:7:\"akismet\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:3:\"5.0\";s:11:\"RequiresPHP\";s:3:\"5.2\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:17:\"Akismet Anti-Spam\";s:10:\"AuthorName\";s:10:\"Automattic\";s:10:\"pluginFile\";s:71:\"/Applications/MAMP/htdocs/cities/wp-content/plugins/akismet/akismet.php\";s:4:\"slug\";s:7:\"akismet\";s:10:\"newVersion\";s:5:\"5.0.2\";s:5:\"wpURL\";s:37:\"https://wordpress.org/plugins/akismet\";s:15:\"updateAvailable\";b:1;s:10:\"vulnerable\";b:0;}");
INSERT INTO `ctwp_wfissues` VALUES("3", "1675776937", "1675776937", "new", "wfPluginUpgrade", "50", "9d7d08acc36909479bfa0b7a46c2fbe9", "9d7d08acc36909479bfa0b7a46c2fbe9", "The Plugin \"Yoast SEO\" needs an upgrade (20.0 -> 20.1).", "You need to upgrade \"Yoast SEO\" to the newest version to ensure you have any security fixes the developer has released.", "a:20:{s:4:\"Name\";s:9:\"Yoast SEO\";s:9:\"PluginURI\";s:18:\"https://yoa.st/1uj\";s:7:\"Version\";s:4:\"20.0\";s:11:\"Description\";s:117:\"The first true all-in-one SEO solution for WordPress, including on-page content analysis, XML sitemaps and much more.\";s:6:\"Author\";s:10:\"Team Yoast\";s:9:\"AuthorURI\";s:18:\"https://yoa.st/1uk\";s:10:\"TextDomain\";s:13:\"wordpress-seo\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:3:\"6.0\";s:11:\"RequiresPHP\";s:6:\"5.6.20\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:9:\"Yoast SEO\";s:10:\"AuthorName\";s:10:\"Team Yoast\";s:10:\"pluginFile\";s:76:\"/Applications/MAMP/htdocs/cities/wp-content/plugins/wordpress-seo/wp-seo.php\";s:4:\"slug\";s:13:\"wordpress-seo\";s:10:\"newVersion\";s:4:\"20.1\";s:5:\"wpURL\";s:43:\"https://wordpress.org/plugins/wordpress-seo\";s:15:\"updateAvailable\";b:1;s:10:\"vulnerable\";b:0;}");

/* INSERT TABLE DATA: ctwp_wfls_settings */
INSERT INTO `ctwp_wfls_settings` VALUES("2fa-user-grace-period", "10", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("allow-disabling-ntp", "1", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("allow-xml-rpc", "1", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("captcha-stats", "{\"counts\":[0,0,0,0,0,0,0,0,0,0,0],\"avg\":0}", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("delete-deactivation", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("enable-auth-captcha", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("enable-login-history-columns", "1", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("enable-woocommerce-integration", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("global-notices", "[]", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("ip-source", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("ip-trusted-proxies", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("last-secret-refresh", "1675681012", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("ntp-failure-count", "0", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("ntp-offset", "0.4536828994751", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("recaptcha-threshold", "0.5", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("remember-device", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("remember-device-duration", "2592000", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("require-2fa-grace-period-enabled", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("require-2fa.administrator", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("shared-hash-secret", "7f87c0841c7df67c6f1ee85a171da591a47924311f9b59f1c93d37d5d63890e5", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("shared-symmetric-secret", "e6315182f159107defd4e3e6426aa6dc9992206190d58fa280937eda4d059322", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("use-ntp", "1", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("whitelisted", "", "yes");
INSERT INTO `ctwp_wfls_settings` VALUES("xmlrpc-enabled", "1", "yes");

/* INSERT TABLE DATA: ctwp_wfnotifications */
INSERT INTO `ctwp_wfnotifications` VALUES("network-GQ2TGNZW", "1", "toupp-20220714", "100", "1675776933", "<p><strong>Wordfence Terms of Service and UK IDTA</strong></p>\n<p>Please review the updated Terms of Service with the new UK IDTA.\n</p>\n<p><a href=\"https://www.wordfence.com/terms-of-service/?utm_source=plugin&amp;utm_medium=pluginalert&amp;utm_campaign=toupp20220714\" class=\"wf-btn wf-btn-callout wf-btn-primary\" target=\"_blank\">Terms of Service</a> <a href=\"https://www.wordfence.com/uk-international-data-transfer-addendum/?utm_source=plugin&amp;utm_medium=pluginalert&amp;utm_campaign=toupp20220714\" class=\"wf-btn wf-btn-callout wf-btn-primary\" target=\"_blank\">UK IDTA</a></p>\n", "[]");
INSERT INTO `ctwp_wfnotifications` VALUES("site-AEAAAAA", "1", "wfplugin_updates", "502", "1675776935", "<a href=\"http://localhost:8888/cities/wp-admin/update-core.php\">An update is available for 2 plugins</a>", "[]");
INSERT INTO `ctwp_wfnotifications` VALUES("site-AMAAAAA", "1", "wfplugin_scan", "502", "1675776937", "<a href=\"http://localhost:8888/cities/wp-admin/admin.php?page=WordfenceScan\">2 issues found in most recent scan</a>", "[]");

/* INSERT TABLE DATA: ctwp_wfstatus */
INSERT INTO `ctwp_wfstatus` VALUES("1", "1675681122.487765", "10", "info", "SUM_PREP:Preparing a new scan.");
INSERT INTO `ctwp_wfstatus` VALUES("2", "1675681122.488622", "1", "info", "Initiating quick scan");
INSERT INTO `ctwp_wfstatus` VALUES("3", "1675681122.490464", "10", "info", "SUM_START:Checking Web Application Firewall status");
INSERT INTO `ctwp_wfstatus` VALUES("4", "1675681122.490916", "10", "info", "SUM_ENDOK:Checking Web Application Firewall status");
INSERT INTO `ctwp_wfstatus` VALUES("5", "1675681122.493533", "10", "info", "SUM_START:Scanning for old themes, plugins and core files");
INSERT INTO `ctwp_wfstatus` VALUES("6", "1675681122.495658", "10", "info", "SUM_ENDBAD:Scanning for old themes, plugins and core files");
INSERT INTO `ctwp_wfstatus` VALUES("7", "1675681122.497785", "1", "info", "-------------------");
INSERT INTO `ctwp_wfstatus` VALUES("8", "1675681122.498614", "2", "info", "Wordfence used 0 B of memory for scan. Server peak memory usage was: 8 MB");
INSERT INTO `ctwp_wfstatus` VALUES("9", "1675681122.500011", "1", "info", "Quick Scan Complete. Scanned in less than 1 second.");
INSERT INTO `ctwp_wfstatus` VALUES("10", "1675681122.500440", "10", "info", "SUM_FINAL:Scan complete. You have 1 new issue to fix. See below.");
INSERT INTO `ctwp_wfstatus` VALUES("11", "1675776937.534681", "10", "info", "SUM_PREP:Preparing a new scan.");
INSERT INTO `ctwp_wfstatus` VALUES("12", "1675776937.535830", "1", "info", "Initiating quick scan");
INSERT INTO `ctwp_wfstatus` VALUES("13", "1675776937.537728", "10", "info", "SUM_START:Checking Web Application Firewall status");
INSERT INTO `ctwp_wfstatus` VALUES("14", "1675776937.538025", "10", "info", "SUM_ENDOK:Checking Web Application Firewall status");
INSERT INTO `ctwp_wfstatus` VALUES("15", "1675776937.540157", "10", "info", "SUM_START:Scanning for old themes, plugins and core files");
INSERT INTO `ctwp_wfstatus` VALUES("16", "1675776937.542672", "10", "info", "SUM_ENDBAD:Scanning for old themes, plugins and core files");
INSERT INTO `ctwp_wfstatus` VALUES("17", "1675776937.543788", "1", "info", "-------------------");
INSERT INTO `ctwp_wfstatus` VALUES("18", "1675776937.544095", "2", "info", "Wordfence used 0 B of memory for scan. Server peak memory usage was: 12 MB");
INSERT INTO `ctwp_wfstatus` VALUES("19", "1675776937.545063", "1", "info", "Quick Scan Complete. Scanned in less than 1 second.");
INSERT INTO `ctwp_wfstatus` VALUES("20", "1675776937.545178", "10", "info", "SUM_FINAL:Scan complete. You have 2 new issues to fix. See below.");

/* INSERT TABLE DATA: ctwp_yoast_indexable */
INSERT INTO `ctwp_yoast_indexable` VALUES("1", "http://localhost:8888/cities/about/", "35:23e26b8a4e96c6e1aa9ef7d419028c23", "10", "post", "page", "1", "0", NULL, NULL, "About", "publish", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 13:59:51", "1", NULL, NULL, NULL, NULL, "0", "0", "2", "2023-02-06 14:01:05", "2023-02-06 10:29:29");
INSERT INTO `ctwp_yoast_indexable` VALUES("2", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_London.gif", "76:ad7e26a5861d3e8be3e9ccee141454ff", "33", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_London", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_London.gif", NULL, "33", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_London.gif", "33", "attachment-image", "{\n    \"width\": 520,\n    \"height\": 743,\n    \"filesize\": 24122,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_London.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_London.gif\",\n    \"size\": \"full\",\n    \"id\": 33,\n    \"alt\": \"\",\n    \"pixels\": 386360,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:44:12", "2023-02-06 10:44:12");
INSERT INTO `ctwp_yoast_indexable` VALUES("3", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif", "77:aa9efb47be05ded9cf3bfc140d910c4d", "34", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_NewYork", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif", NULL, "34", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif", "34", "attachment-image", "{\n    \"width\": 520,\n    \"height\": 743,\n    \"filesize\": 27158,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_NewYork.gif\",\n    \"size\": \"full\",\n    \"id\": 34,\n    \"alt\": \"\",\n    \"pixels\": 386360,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:44:43", "2023-02-06 10:44:43");
INSERT INTO `ctwp_yoast_indexable` VALUES("4", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif", "77:0f23403dffeeb0ed3cc89219d52aaedc", "35", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_Toronto", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif", NULL, "35", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif", "35", "attachment-image", "{\n    \"width\": 506,\n    \"height\": 723,\n    \"filesize\": 16596,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_Toronto.gif\",\n    \"size\": \"full\",\n    \"id\": 35,\n    \"alt\": \"\",\n    \"pixels\": 365838,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:46:39", "2023-02-06 10:46:39");
INSERT INTO `ctwp_yoast_indexable` VALUES("5", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif", "75:d3de7a298efa74dd9a335cce1d146b45", "36", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_kuala", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif", NULL, "36", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif", "36", "attachment-image", "{\n    \"width\": 506,\n    \"height\": 723,\n    \"filesize\": 27323,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_kuala.gif\",\n    \"size\": \"full\",\n    \"id\": 36,\n    \"alt\": \"\",\n    \"pixels\": 365838,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:47:20", "2023-02-06 10:47:20");
INSERT INTO `ctwp_yoast_indexable` VALUES("6", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif", "78:c796d154e62207bd2be714abc4ace916", "37", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_Shanghai", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif", NULL, "37", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif", "37", "attachment-image", "{\n    \"width\": 520,\n    \"height\": 743,\n    \"filesize\": 29074,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_Shanghai.gif\",\n    \"size\": \"full\",\n    \"id\": 37,\n    \"alt\": \"\",\n    \"pixels\": 386360,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:48:14", "2023-02-06 10:48:14");
INSERT INTO `ctwp_yoast_indexable` VALUES("7", "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif", "82:1b203beab72e1ddc7cff5547897de320", "38", "post", "attachment", "1", "10", NULL, NULL, "YoniAlter_SanFrancisco", "inherit", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif", NULL, "38", "attachment-image", NULL, NULL, "http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif", "38", "attachment-image", "{\n    \"width\": 506,\n    \"height\": 723,\n    \"filesize\": 45235,\n    \"url\": \"http://localhost:8888/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif\",\n    \"path\": \"/Applications/MAMP/htdocs/cities/wp-content/uploads/2023/02/YoniAlter_SanFrancisco.gif\",\n    \"size\": \"full\",\n    \"id\": 38,\n    \"alt\": \"\",\n    \"pixels\": 365838,\n    \"type\": \"image/gif\"\n}", NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:49:11", "2023-02-06 10:49:11");
INSERT INTO `ctwp_yoast_indexable` VALUES("8", "http://localhost:8888/cities/", "29:b8c70280fa52e5fd3afd70f2a36678b3", "6", "post", "page", "1", "0", NULL, NULL, "Home Page", "publish", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 13:41:02", "1", NULL, NULL, NULL, NULL, "0", "0", "2", "2023-02-06 12:36:31", "2023-02-06 10:27:23");
INSERT INTO `ctwp_yoast_indexable` VALUES("9", "http://localhost:8888/cities/minted/", "36:ac46446d818a66dc22d84cb6fba1ee51", "8", "post", "page", "1", "0", NULL, NULL, "Minted", "publish", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 13:51:30", "1", NULL, NULL, NULL, NULL, "0", "0", "2", "2023-02-06 14:24:07", "2023-02-06 10:28:01");
INSERT INTO `ctwp_yoast_indexable` VALUES("10", "http://localhost:8888/cities/?page_id=2", "39:0b972c7c9b6350bc8063d3df688f0f95", "2", "post", "page", "1", "0", NULL, NULL, "Sample Page", "trash", "0", "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:38:00", "2023-02-06 10:21:45");
INSERT INTO `ctwp_yoast_indexable` VALUES("11", "http://localhost:8888/cities/?page_id=3", "39:0c463d2042e29dd63c795a87523a82d8", "3", "post", "page", "1", "0", NULL, NULL, "Privacy Policy", "trash", "0", "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:37:59", "2023-02-06 10:21:45");
INSERT INTO `ctwp_yoast_indexable` VALUES("12", "http://localhost:8888/cities/?p=1", "33:28f62da74a7b5ae53ae093c021011b95", "1", "post", "post", "1", "0", NULL, NULL, "Hello world!", "trash", "0", "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", "2023-02-06 10:38:06", "2023-02-06 10:21:45");
INSERT INTO `ctwp_yoast_indexable` VALUES("13", "http://localhost:8888/cities/category/uncategorized/", "52:9de40b54ad7503ba1a1b3bc7e150ac56", "1", "term", "category", NULL, NULL, NULL, NULL, "Uncategorized", NULL, NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", NULL, NULL);
INSERT INTO `ctwp_yoast_indexable` VALUES("14", NULL, NULL, NULL, "system-page", "404", NULL, NULL, "Page not found %%sep%% %%sitename%%", NULL, "Error 404: Page not found", NULL, NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, "0", "1", "0", "0", "0", "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "1", NULL, NULL);
INSERT INTO `ctwp_yoast_indexable` VALUES("15", NULL, NULL, NULL, "system-page", "search-result", NULL, NULL, "You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%", NULL, NULL, NULL, NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, "0", "1", "0", "0", "0", "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "1", NULL, NULL);
INSERT INTO `ctwp_yoast_indexable` VALUES("16", NULL, NULL, NULL, "date-archive", NULL, NULL, NULL, "%%date%% %%page%% %%sep%% %%sitename%%", "", NULL, NULL, "0", "0", NULL, NULL, NULL, NULL, NULL, NULL, "0", "1", "0", "0", "0", "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 14:00:34", "1", NULL, NULL, NULL, NULL, "0", NULL, "1", NULL, NULL);
INSERT INTO `ctwp_yoast_indexable` VALUES("17", "http://localhost:8888/cities/", "29:b8c70280fa52e5fd3afd70f2a36678b3", NULL, "home-page", NULL, NULL, NULL, "%%sitename%% %%page%% %%sep%% %%sitedesc%%", "", "Home", NULL, NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, "0", "0", "0", "0", "0", "0", NULL, NULL, NULL, NULL, NULL, "%%sitename%%", "", "", "0", NULL, NULL, NULL, NULL, NULL, "2023-02-06 10:55:44", "2023-02-07 13:41:02", "1", NULL, NULL, NULL, NULL, "0", NULL, "2", NULL, NULL);
INSERT INTO `ctwp_yoast_indexable` VALUES("18", "http://localhost:8888/cities/team/", "34:2bb47f667084de2c677a2268795c8e82", "52", "post", "page", "1", "0", NULL, NULL, "Team", "publish", NULL, "0", NULL, NULL, NULL, NULL, NULL, "0", "0", NULL, "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "0", NULL, NULL, "2023-02-06 14:42:48", "2023-02-07 13:52:06", "1", NULL, NULL, NULL, NULL, "0", "0", "2", "2023-02-06 14:51:25", "2023-02-06 14:42:48");

/* INSERT TABLE DATA: ctwp_yoast_indexable_hierarchy */
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("1", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("2", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("3", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("4", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("5", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("6", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("7", "1", "1", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("8", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("9", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("10", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("11", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("12", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("13", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("17", "0", "0", "1");
INSERT INTO `ctwp_yoast_indexable_hierarchy` VALUES("18", "0", "0", "1");

/* INSERT TABLE DATA: ctwp_yoast_migrations */
INSERT INTO `ctwp_yoast_migrations` VALUES("1", "20171228151840");
INSERT INTO `ctwp_yoast_migrations` VALUES("2", "20171228151841");
INSERT INTO `ctwp_yoast_migrations` VALUES("3", "20190529075038");
INSERT INTO `ctwp_yoast_migrations` VALUES("4", "20191011111109");
INSERT INTO `ctwp_yoast_migrations` VALUES("5", "20200408101900");
INSERT INTO `ctwp_yoast_migrations` VALUES("6", "20200420073606");
INSERT INTO `ctwp_yoast_migrations` VALUES("7", "20200428123747");
INSERT INTO `ctwp_yoast_migrations` VALUES("8", "20200428194858");
INSERT INTO `ctwp_yoast_migrations` VALUES("9", "20200429105310");
INSERT INTO `ctwp_yoast_migrations` VALUES("10", "20200430075614");
INSERT INTO `ctwp_yoast_migrations` VALUES("11", "20200430150130");
INSERT INTO `ctwp_yoast_migrations` VALUES("12", "20200507054848");
INSERT INTO `ctwp_yoast_migrations` VALUES("13", "20200513133401");
INSERT INTO `ctwp_yoast_migrations` VALUES("14", "20200609154515");
INSERT INTO `ctwp_yoast_migrations` VALUES("15", "20200616130143");
INSERT INTO `ctwp_yoast_migrations` VALUES("16", "20200617122511");
INSERT INTO `ctwp_yoast_migrations` VALUES("17", "20200702141921");
INSERT INTO `ctwp_yoast_migrations` VALUES("18", "20200728095334");
INSERT INTO `ctwp_yoast_migrations` VALUES("19", "20201202144329");
INSERT INTO `ctwp_yoast_migrations` VALUES("20", "20201216124002");
INSERT INTO `ctwp_yoast_migrations` VALUES("21", "20201216141134");
INSERT INTO `ctwp_yoast_migrations` VALUES("22", "20210817092415");
INSERT INTO `ctwp_yoast_migrations` VALUES("23", "20211020091404");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2023-02-07 14:01:09*/
/* DUPLICATOR_MYSQLDUMP_EOF */
