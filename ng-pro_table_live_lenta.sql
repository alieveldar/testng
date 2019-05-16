
-- --------------------------------------------------------

--
-- Структура таблицы `live_lenta`
--

CREATE TABLE `live_lenta` (
  `id` mediumint(9) NOT NULL,
  `cid` mediumint(9) NOT NULL COMMENT 'id категории',
  `fid` mediumint(9) NOT NULL COMMENT 'id форума',
  `uid` mediumint(9) NOT NULL COMMENT 'id пользователя',
  `uname` varchar(64) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `lock` int(1) NOT NULL DEFAULT '0' COMMENT 'закрепить тему',
  `comments` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить комментарии',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `clast` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'id последнего комментария',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список тем пользователей';
