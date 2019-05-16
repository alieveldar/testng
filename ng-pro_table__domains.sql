
-- --------------------------------------------------------

--
-- Структура таблицы `_domains`
--

CREATE TABLE `_domains` (
  `id` mediumint(9) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'название',
  `design` varchar(255) NOT NULL COMMENT 'сопоставленный дизайн из _design'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
