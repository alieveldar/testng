
-- --------------------------------------------------------

--
-- Структура таблицы `live_cat`
--

CREATE TABLE `live_cat` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `fid` mediumint(9) NOT NULL COMMENT 'Номер форума в _forum',
  `tcnt` mediumint(9) NOT NULL COMMENT 'количество тем в категории',
  `uid` mediumint(9) NOT NULL,
  `comcount` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `lock` int(1) NOT NULL DEFAULT '0',
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить темы пользователей',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Категории форума';
