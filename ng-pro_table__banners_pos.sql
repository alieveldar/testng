
-- --------------------------------------------------------

--
-- Структура таблицы `_banners_pos`
--

CREATE TABLE `_banners_pos` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'название',
  `stat` int(1) NOT NULL COMMENT 'статус',
  `width` varchar(10) NOT NULL COMMENT 'ширина',
  `height` varchar(10) NOT NULL COMMENT 'высота',
  `rotate` int(5) NOT NULL COMMENT 'в ротации',
  `rate` mediumint(9) NOT NULL COMMENT 'порядок'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
