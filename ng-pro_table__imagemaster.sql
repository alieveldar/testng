
-- --------------------------------------------------------

--
-- Структура таблицы `_imagemaster`
--

CREATE TABLE `_imagemaster` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `podlogpic` varchar(255) NOT NULL,
  `typepic` varchar(25) NOT NULL,
  `typeform` varchar(25) NOT NULL,
  `posit` varchar(1) NOT NULL,
  `posx` mediumint(9) NOT NULL DEFAULT '0',
  `posy` mediumint(9) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL DEFAULT '0',
  `fontsize` mediumint(9) NOT NULL DEFAULT '20',
  `fontcolor` varchar(25) NOT NULL DEFAULT '000000',
  `fontfamily` varchar(255) NOT NULL DEFAULT 'Arial',
  `fontchars` mediumint(9) NOT NULL DEFAULT '21'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
