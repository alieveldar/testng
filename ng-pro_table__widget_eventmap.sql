
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventmap`
--

CREATE TABLE `_widget_eventmap` (
  `id` mediumint(9) NOT NULL COMMENT 'ID события',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'ID родительской записи',
  `tid` mediumint(9) NOT NULL COMMENT 'тип события',
  `link` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Ссылка на модуль-родитель записи',
  `period` int(3) NOT NULL,
  `data` varchar(15) CHARACTER SET cp1251 NOT NULL COMMENT 'Дата создания',
  `stat` int(1) NOT NULL COMMENT 'Статус события',
  `promo` int(1) NOT NULL COMMENT 'Закреплённое событие',
  `name` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Название события',
  `text` text CHARACTER SET cp1251 NOT NULL COMMENT 'Описание события',
  `maps` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Координаты',
  `pic` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Фотография события',
  `icon` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Иконка события'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
