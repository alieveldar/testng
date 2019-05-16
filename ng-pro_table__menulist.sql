
-- --------------------------------------------------------

--
-- Структура таблицы `_menulist`
--

CREATE TABLE `_menulist` (
  `id` mediumint(9) NOT NULL COMMENT 'это nid в элементах меню',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT '1 - вкл, 0 - выкл',
  `name` varchar(255) NOT NULL,
  `link` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
