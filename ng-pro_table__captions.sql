
-- --------------------------------------------------------

--
-- Структура таблицы `_captions`
--

CREATE TABLE `_captions` (
  `page` varchar(255) NOT NULL COMMENT 'Адрес кэш страницы',
  `name` varchar(255) NOT NULL COMMENT 'Заголовок страницы',
  `data` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
