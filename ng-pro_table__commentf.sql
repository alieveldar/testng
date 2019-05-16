
-- --------------------------------------------------------

--
-- Структура таблицы `_commentf`
--

CREATE TABLE `_commentf` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Файлы комментариев';
