
-- --------------------------------------------------------

--
-- Структура таблицы `companies_items`
--

CREATE TABLE `companies_items` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0',
  `cats` varchar(255) NOT NULL COMMENT 'категория',
  `consultscats` varchar(255) NOT NULL COMMENT 'категория в консультациях',
  `data` varchar(15) NOT NULL,
  `todata` varchar(15) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `anonce` text NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `vip` int(1) NOT NULL DEFAULT '0',
  `urik` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
