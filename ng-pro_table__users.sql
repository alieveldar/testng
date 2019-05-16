
-- --------------------------------------------------------

--
-- Структура таблицы `_users`
--

CREATE TABLE `_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(15) NOT NULL,
  `role` varchar(2) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL DEFAULT '',
  `nick` varchar(255) NOT NULL COMMENT 'ник',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `vkontakte` varchar(255) NOT NULL,
  `mailru` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `odnoklas` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `yandex` varchar(255) NOT NULL,
  `mail` varchar(320) DEFAULT '',
  `spectitle` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  `karma` int(11) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
