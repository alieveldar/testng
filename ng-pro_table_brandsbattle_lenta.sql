
-- --------------------------------------------------------

--
-- Структура таблицы `brandsbattle_lenta`
--

CREATE TABLE `brandsbattle_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `domain` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL COMMENT 'дата создания',
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'дата автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL COMMENT 'заголовок материала',
  `lid` text NOT NULL COMMENT 'лид материала',
  `text` text NOT NULL COMMENT 'основное содержание',
  `alttext` text NOT NULL COMMENT 'альтернативное содержание',
  `endtext` text NOT NULL COMMENT 'заключительный текст',
  `pic` varchar(255) NOT NULL COMMENT 'основная картинка',
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL COMMENT 'координаты кропа основной картинки',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL COMMENT 'информационный источник',
  `cens` varchar(255) NOT NULL COMMENT 'возрастное ограничение',
  `comments` int(1) NOT NULL DEFAULT '0' COMMENT 'статус комментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `voting` int(1) NOT NULL DEFAULT '0' COMMENT 'статус голосования',
  `votingend` varchar(15) NOT NULL COMMENT 'дата окончания голосования',
  `votingmode` int(1) NOT NULL DEFAULT '1' COMMENT 'Режим голосования',
  `winnerscount` int(1) NOT NULL DEFAULT '1' COMMENT 'количество победителей',
  `tags` text NOT NULL COMMENT 'теги материала',
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `galka` int(1) NOT NULL DEFAULT '0' COMMENT 'Просто калка',
  `zenyandex` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
