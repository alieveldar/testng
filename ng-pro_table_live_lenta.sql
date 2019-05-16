
-- --------------------------------------------------------

--
-- Структура таблицы `live_lenta`
--

CREATE TABLE `live_lenta` (
  `id` mediumint(9) NOT NULL,
  `cid` mediumint(9) NOT NULL COMMENT 'id категории',
  `fid` mediumint(9) NOT NULL COMMENT 'id форума',
  `uid` mediumint(9) NOT NULL COMMENT 'id пользователя',
  `lock` int(1) NOT NULL DEFAULT '0',
  `stat` int(1) NOT NULL,
  `seen` mediumint(9) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить комментарии',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `comcount` mediumint(9) NOT NULL COMMENT 'количество комментариев',
  `comments` mediumint(9) NOT NULL COMMENT 'количество комментариев',
  `clast` mediumint(9) NOT NULL COMMENT 'id последнего комментария',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список тем пользователей';
