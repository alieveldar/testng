
-- --------------------------------------------------------

--
-- Структура таблицы `_modules`
--

CREATE TABLE `_modules` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `lvl` varchar(1) NOT NULL COMMENT 'Уровень модуля',
  `module` varchar(255) NOT NULL COMMENT 'Папка и модуль ',
  `sql` text NOT NULL COMMENT 'SQL Запрос',
  `source` text NOT NULL COMMENT 'используемые таблицы',
  `text` text NOT NULL COMMENT 'Описание',
  `sets` text NOT NULL COMMENT 'Настройки по умолчанию'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список доступных модулей';
