
-- --------------------------------------------------------

--
-- Структура таблицы `_menuitem`
--

CREATE TABLE `_menuitem` (
  `id` int(11) NOT NULL,
  `nid` mediumint(9) NOT NULL COMMENT 'номер списка меню',
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `link` varchar(255) NOT NULL COMMENT 'Ссылка',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Родитель (id)',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Вкл или Выкл',
  `class` varchar(255) NOT NULL COMMENT 'Класс добавка к DIV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
