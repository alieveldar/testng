
--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `add_cats`
--
ALTER TABLE `add_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `adverting_lenta1`
--
ALTER TABLE `adverting_lenta1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `adverting_lenta222`
--
ALTER TABLE `adverting_lenta222`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`);

--
-- Индексы таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`);

--
-- Индексы таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `afisha_stat_onind` (`stat`,`data`,`onind`);

--
-- Индексы таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `brandsbattle_lenta`
--
ALTER TABLE `brandsbattle_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `business_cats`
--
ALTER TABLE `business_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business_lenta`
--
ALTER TABLE `business_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `category150_lenta`
--
ALTER TABLE `category150_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `category1829_cats`
--
ALTER TABLE `category1829_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category1829_lenta`
--
ALTER TABLE `category1829_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`);

--
-- Индексы таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_items`
--
ALTER TABLE `companies_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `economy_cats`
--
ALTER TABLE `economy_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `economy_lenta`
--
ALTER TABLE `economy_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `livestream_cats`
--
ALTER TABLE `livestream_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `livestream_lenta`
--
ALTER TABLE `livestream_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`);

--
-- Индексы таблицы `live_cat`
--
ALTER TABLE `live_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate` (`rate`,`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `update` (`update`),
  ADD KEY `stat` (`stat`),
  ADD KEY `update_2` (`update`);

--
-- Индексы таблицы `live_forum`
--
ALTER TABLE `live_forum`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`,`fid`,`stat`,`update`),
  ADD KEY `uid` (`uid`),
  ADD KEY `lock` (`lock`),
  ADD KEY `tags` (`tags`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `ls_cats`
--
ALTER TABLE `ls_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ls_lenta`
--
ALTER TABLE `ls_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `news_cats`
--
ALTER TABLE `news_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `realestatenews_cats`
--
ALTER TABLE `realestatenews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestatenews_lenta`
--
ALTER TABLE `realestatenews_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `realestate_cats`
--
ALTER TABLE `realestate_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestate_contacts`
--
ALTER TABLE `realestate_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__realestate_lenta__realestate_cats` (`cat`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `sport_cats`
--
ALTER TABLE `sport_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sport_lenta`
--
ALTER TABLE `sport_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `wiki_cats`
--
ALTER TABLE `wiki_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__wiki_lenta__wiki_cats` (`cat`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `world_cats`
--
ALTER TABLE `world_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `world_lenta`
--
ALTER TABLE `world_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `stat` (`stat`,`pid`,`datafrom`,`datato`),
  ADD KEY `did` (`did`);

--
-- Индексы таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_banners_stat`
--
ALTER TABLE `_banners_stat`
  ADD UNIQUE KEY `bid` (`bid`,`data`);

--
-- Индексы таблицы `_captions`
--
ALTER TABLE `_captions`
  ADD PRIMARY KEY (`page`);

--
-- Индексы таблицы `_commentf`
--
ALTER TABLE `_commentf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_comments`
--
ALTER TABLE `_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_cron`
--
ALTER TABLE `_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stat` (`stat`);

--
-- Индексы таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_designs`
--
ALTER TABLE `_designs`
  ADD PRIMARY KEY (`folder`);

--
-- Индексы таблицы `_domains`
--
ALTER TABLE `_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix` (`prefix`);

--
-- Индексы таблицы `_editors`
--
ALTER TABLE `_editors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_imports`
--
ALTER TABLE `_imports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_lentalog`
--
ALTER TABLE `_lentalog`
  ADD KEY `link` (`link`,`id`);

--
-- Индексы таблицы `_likes`
--
ALTER TABLE `_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `link` (`link`,`data`,`ip`);

--
-- Индексы таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nid` (`nid`);

--
-- Индексы таблицы `_menulist`
--
ALTER TABLE `_menulist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_modules`
--
ALTER TABLE `_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_pages`
--
ALTER TABLE `_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_planes`
--
ALTER TABLE `_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `_rss`
--
ALTER TABLE `_rss`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_search`
--
ALTER TABLE `_search`
  ADD UNIQUE KEY `id` (`id`,`link`);

--
-- Индексы таблицы `_settings`
--
ALTER TABLE `_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_shared`
--
ALTER TABLE `_shared`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`,`network`,`uid`,`ip`);

--
-- Индексы таблицы `_tags`
--
ALTER TABLE `_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_tracker`
--
ALTER TABLE `_tracker`
  ADD UNIQUE KEY `uid` (`uid`,`link`,`pid`);

--
-- Индексы таблицы `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `mail` (`mail`(255));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `add_cats`
--
ALTER TABLE `add_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31429;

--
-- AUTO_INCREMENT для таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2503;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta1`
--
ALTER TABLE `adverting_lenta1`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta222`
--
ALTER TABLE `adverting_lenta222`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT для таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19662;

--
-- AUTO_INCREMENT для таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29370;

--
-- AUTO_INCREMENT для таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1744;

--
-- AUTO_INCREMENT для таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT для таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79825;

--
-- AUTO_INCREMENT для таблицы `brandsbattle_lenta`
--
ALTER TABLE `brandsbattle_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT для таблицы `business_cats`
--
ALTER TABLE `business_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `business_lenta`
--
ALTER TABLE `business_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72107;

--
-- AUTO_INCREMENT для таблицы `category150_lenta`
--
ALTER TABLE `category150_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1866;

--
-- AUTO_INCREMENT для таблицы `category1829_cats`
--
ALTER TABLE `category1829_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category1829_lenta`
--
ALTER TABLE `category1829_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT для таблицы `companies_items`
--
ALTER TABLE `companies_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT для таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1635;

--
-- AUTO_INCREMENT для таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `economy_cats`
--
ALTER TABLE `economy_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `economy_lenta`
--
ALTER TABLE `economy_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `livestream_cats`
--
ALTER TABLE `livestream_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `livestream_lenta`
--
ALTER TABLE `livestream_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `live_cat`
--
ALTER TABLE `live_cat`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `live_forum`
--
ALTER TABLE `live_forum`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ls_cats`
--
ALTER TABLE `ls_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `ls_lenta`
--
ALTER TABLE `ls_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3072;

--
-- AUTO_INCREMENT для таблицы `news_cats`
--
ALTER TABLE `news_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131508;

--
-- AUTO_INCREMENT для таблицы `realestatenews_cats`
--
ALTER TABLE `realestatenews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `realestatenews_lenta`
--
ALTER TABLE `realestatenews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `realestate_cats`
--
ALTER TABLE `realestate_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики', AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `sport_cats`
--
ALTER TABLE `sport_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `sport_lenta`
--
ALTER TABLE `sport_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75354;

--
-- AUTO_INCREMENT для таблицы `wiki_cats`
--
ALTER TABLE `wiki_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `world_cats`
--
ALTER TABLE `world_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `world_lenta`
--
ALTER TABLE `world_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2512;

--
-- AUTO_INCREMENT для таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2577;

--
-- AUTO_INCREMENT для таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2351;

--
-- AUTO_INCREMENT для таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `_commentf`
--
ALTER TABLE `_commentf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12559;

--
-- AUTO_INCREMENT для таблицы `_comments`
--
ALTER TABLE `_comments`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183888;

--
-- AUTO_INCREMENT для таблицы `_cron`
--
ALTER TABLE `_cron`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_domains`
--
ALTER TABLE `_domains`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `_editors`
--
ALTER TABLE `_editors`
  MODIFY `id` bigint(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `_imports`
--
ALTER TABLE `_imports`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_likes`
--
ALTER TABLE `_likes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8388607;

--
-- AUTO_INCREMENT для таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT для таблицы `_menulist`
--
ALTER TABLE `_menulist`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'это nid в элементах меню', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3449;

--
-- AUTO_INCREMENT для таблицы `_modules`
--
ALTER TABLE `_modules`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `_pages`
--
ALTER TABLE `_pages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1830;

--
-- AUTO_INCREMENT для таблицы `_planes`
--
ALTER TABLE `_planes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT для таблицы `_rss`
--
ALTER TABLE `_rss`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `_settings`
--
ALTER TABLE `_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `_shared`
--
ALTER TABLE `_shared`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4573;

--
-- AUTO_INCREMENT для таблицы `_tags`
--
ALTER TABLE `_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT для таблицы `_users`
--
ALTER TABLE `_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31046;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `realestate_contacts`
--
ALTER TABLE `realestate_contacts`
  ADD CONSTRAINT `FK__realestate_contacts__realestate_lenta` FOREIGN KEY (`id`) REFERENCES `realestate_lenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  ADD CONSTRAINT `FK__realestate_lenta__realestate_cats` FOREIGN KEY (`cat`) REFERENCES `realestate_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  ADD CONSTRAINT `FK__wiki_lenta__wiki_cats` FOREIGN KEY (`cat`) REFERENCES `wiki_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
