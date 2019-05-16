
-- --------------------------------------------------------

--
-- Структура таблицы `category129_contacts`
--

CREATE TABLE `category129_contacts` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор ленты',
  `forum_theme` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'id темы на форуме',
  `site_url` varchar(255) DEFAULT NULL COMMENT 'Сайт',
  `phone` varchar(20) DEFAULT '' COMMENT 'Телефон',
  `email` varchar(255) DEFAULT NULL COMMENT 'Электронная почта',
  `address` varchar(255) DEFAULT NULL COMMENT 'Адрес жилищного комплекса',
  `soc_net_link1` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 1',
  `soc_net_link2` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 2',
  `soc_net_link3` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 3',
  `price_list` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Прайс-лист'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
