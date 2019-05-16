
-- --------------------------------------------------------

--
-- Структура таблицы `advertise_razdels`
--

CREATE TABLE `advertise_razdels` (
  `id` int(11) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Родитель (id)',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Вкл или Выкл',
  `price` varchar(255) NOT NULL COMMENT 'стоимость'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
