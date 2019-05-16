
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_voting`
--

CREATE TABLE `_widget_voting` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'id записи',
  `link` varchar(255) NOT NULL COMMENT 'раздел записи',
  `vid` mediumint(9) NOT NULL COMMENT '0 - для вопроса, id_вопроса для ответа',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `sets` text NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
