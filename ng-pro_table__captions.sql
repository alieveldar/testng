
-- --------------------------------------------------------

--
-- Структура таблицы `_captions`
--

CREATE TABLE `_captions` (
  `page` varchar(255) NOT NULL COMMENT 'Адрес кэш страницы',
  `name` varchar(255) NOT NULL COMMENT 'Заголовок страницы',
  `title` varchar(255) NOT NULL,
  `kw` varchar(255) NOT NULL COMMENT 'ключевые слова страницы',
  `ds` varchar(255) NOT NULL COMMENT 'описание страницы',
  `data` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
