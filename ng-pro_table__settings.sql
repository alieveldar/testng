
-- --------------------------------------------------------

--
-- Структура таблицы `_settings`
--

CREATE TABLE `_settings` (
  `id` mediumint(9) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'users-0, main-1, cache-2, 3 -socials',
  `type` varchar(5) NOT NULL DEFAULT 'var' COMMENT 'var - переменная, text - текст',
  `name` varchar(25) NOT NULL COMMENT 'Название переменной',
  `text` text NOT NULL,
  `value` text NOT NULL COMMENT 'Значение переменной'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
