
-- --------------------------------------------------------

--
-- Структура таблицы `_designs`
--

CREATE TABLE `_designs` (
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `folder` varchar(255) NOT NULL COMMENT 'Название папки',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Основной или нет'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
