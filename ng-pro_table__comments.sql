
-- --------------------------------------------------------

--
-- Структура таблицы `_comments`
--

CREATE TABLE `_comments` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `from` varchar(5) NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` varchar(1) NOT NULL,
  `toid` mediumint(9) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Записи комментариев';
