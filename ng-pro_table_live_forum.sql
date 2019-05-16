
-- --------------------------------------------------------

--
-- Структура таблицы `live_forum`
--

CREATE TABLE `live_forum` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL,
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить создавать темы пользователям'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список форумов';
