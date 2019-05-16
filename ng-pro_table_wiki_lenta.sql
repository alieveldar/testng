
-- --------------------------------------------------------

--
-- Структура таблицы `wiki_lenta`
--

CREATE TABLE `wiki_lenta` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор рубрики',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Id родительской рубрики',
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `import` varchar(255) DEFAULT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `cat` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL COMMENT 'Дата',
  `astat` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL COMMENT 'Название',
  `lid` text NOT NULL,
  `text` text NOT NULL COMMENT 'Основной текст',
  `alttext` varchar(255) NOT NULL COMMENT 'Краткое описание',
  `endtext` text COMMENT 'Полное описание',
  `pic` varchar(255) DEFAULT NULL COMMENT 'Путь к изображению',
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id пользователя',
  `adv` text,
  `pay` text,
  `kw` varchar(255) NOT NULL COMMENT 'Meta keyword',
  `ds` varchar(255) NOT NULL COMMENT 'Mets description',
  `picxy` text COMMENT 'Опции изображения',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL COMMENT 'Цензор',
  `comments` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Опции коментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL COMMENT 'Связка тегов',
  `yarss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `redak` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='wiki-рубрики разделов';
