
-- --------------------------------------------------------

--
-- Структура таблицы `_pages`
--

CREATE TABLE `_pages` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-Вкл, 0-Выкл',
  `main` varchar(1) NOT NULL COMMENT '1-стандарт, 0-пользовательский',
  `pid` mediumint(9) NOT NULL COMMENT 'Родитель ID',
  `rate` mediumint(9) NOT NULL COMMENT 'Rate sort',
  `domain` mediumint(9) NOT NULL COMMENT 'Домен 3 уровня',
  `design` varchar(50) NOT NULL COMMENT 'Дизайн',
  `module` varchar(255) NOT NULL COMMENT 'Тип модуля',
  `orderby` varchar(255) NOT NULL DEFAULT '0',
  `onpage` varchar(3) NOT NULL DEFAULT '30',
  `sets` text NOT NULL COMMENT 'Настройки модуля',
  `lvl` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Уровень',
  `link` varchar(255) NOT NULL COMMENT 'Ссылка',
  `inmap` varchar(1) NOT NULL DEFAULT '1' COMMENT 'Добавить в карту сайта',
  `hidden` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Спрятать модуль',
  `isindex` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Является ли главной страницей сайта',
  `data` varchar(25) NOT NULL COMMENT 'Дата создания',
  `name` varchar(255) NOT NULL COMMENT 'Полное имя',
  `shortname` varchar(255) NOT NULL COMMENT 'Короткое имя',
  `pretext` text NOT NULL,
  `text` text NOT NULL COMMENT 'Содержание',
  `tags` text NOT NULL,
  `kw` varchar(255) NOT NULL COMMENT 'Ключевые слова',
  `ds` varchar(255) NOT NULL COMMENT 'Дескрипшн'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Основная таблица страниц и разделов';
