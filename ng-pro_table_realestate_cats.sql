
-- --------------------------------------------------------

--
-- Структура таблицы `realestate_cats`
--

CREATE TABLE `realestate_cats` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Идентификатор категории',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `stat` int(1) NOT NULL DEFAULT '1' COMMENT '??',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `text` text NOT NULL COMMENT 'Текст'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Идентификатор категории';
