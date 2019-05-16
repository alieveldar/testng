
-- --------------------------------------------------------

--
-- Структура таблицы `_tracker`
--

CREATE TABLE `_tracker` (
  `uid` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
