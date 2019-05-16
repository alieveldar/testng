
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_votes`
--

CREATE TABLE `_widget_votes` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL COMMENT 'раздел сайта',
  `vid` mediumint(9) NOT NULL COMMENT 'id ответа',
  `uid` mediumint(9) NOT NULL COMMENT 'id пользователя или 0',
  `data` varchar(20) NOT NULL COMMENT 'дата: 20120115',
  `ip` varchar(20) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'id вопроса'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
