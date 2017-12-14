DROP TABLE IF EXISTS `hospitales`.`paises`;
CREATE TABLE IF NOT EXISTS `hospitales`.`paises` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(255) COLLATE utf8_bin NOT NULL,
  `alpha2_code` varchar(2) COLLATE utf8_bin NOT NULL,
  `alpha3_code` varchar(3) COLLATE utf8_bin NOT NULL,
  `tld_extension` varchar(3) COLLATE utf8_bin NOT NULL,
  `numeric_code` smallint(6) NOT NULL,
  `alpha2_year` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=250 ;

DROP TABLE IF EXISTS `hospitales`.`paises`;
CREATE TABLE `hospitales`.`paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoNumerico` int(4) NOT NULL DEFAULT '0',
  `codigo2` char(2) NOT NULL DEFAULT '',
  `codigo3` char(3) NOT NULL DEFAULT '',
  `nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `codigoNumericoCodigo2Codigo3` (`codigoNumerico`,`codigo2`,`codigo3`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

/*
INSERT INTO `paises` (`id`, `nombre_pais`, `alpha2_code`, `alpha3_code`, `tld_extension`, `numeric_code`, `alpha2_year`) VALUES
(1, 'Andorra', 'AD', 'AND', '.ad', 20, 1974),
(2, 'Afghanistan', 'AF', 'AFG', '.af', 4, 1974),
(3, 'Åland Islands', 'AX', 'ALA', '.ax', 248, 2004),
(4, 'Albania', 'AL', 'ALB', '.al', 8, 1974),
(5, 'Algeria', 'DZ', 'DZA', '.dz', 12, 1974),
(6, 'American Samoa', 'AS', 'ASM', '.as', 16, 1974),
(7, 'Angola', 'AO', 'AGO', '.ao', 24, 1974),
(8, 'Anguilla', 'AI', 'AIA', '.ai', 660, 1983),
(9, 'Antarctica', 'AQ', 'ATA', '.aq', 10, 1974),
(10, 'Antigua and Barbuda', 'AG', 'ATG', '.ag', 28, 1974),
(11, 'Argentina', 'AR', 'ARG', '.ar', 32, 1974),
(12, 'Armenia', 'AM', 'ARM', '.am', 51, 1992),
(13, 'Aruba', 'AW', 'ABW', '.aw', 533, 1986),
(14, 'Australia', 'AU', 'AUS', '.au', 36, 1974),
(15, 'Austria', 'AT', 'AUT', '.at', 40, 1974),
(16, 'Azerbaijan', 'AZ', 'AZE', '.az', 31, 1992),
(17, 'Bahamas', 'BS', 'BHS', '.bs', 44, 1974),
(18, 'Bahrain', 'BH', 'BHR', '.bh', 48, 1974),
(19, 'Bangladesh', 'BD', 'BGD', '.bd', 50, 1974),
(20, 'Barbados', 'BB', 'BRB', '.bb', 52, 1974),
(21, 'Belarus', 'BY', 'BLR', '.by', 112, 1974),
(22, 'Belgium', 'BE', 'BEL', '.be', 56, 1974),
(23, 'Belize', 'BZ', 'BLZ', '.bz', 84, 1974),
(24, 'Benin', 'BJ', 'BEN', '.bj', 204, 1977),
(25, 'Bermuda', 'BM', 'BMU', '.bm', 60, 1974),
(26, 'Bhutan', 'BT', 'BTN', '.bt', 64, 1974),
(27, 'Bolivia (Plurinational State of)', 'BO', 'BOL', '.bo', 68, 1974),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '.bq', 535, 2010),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH', '.ba', 70, 1992),
(30, 'Botswana', 'BW', 'BWA', '.bw', 72, 1974),
(31, 'Bouvet Island', 'BV', 'BVT', '.bv', 74, 1974),
(32, 'Brazil', 'BR', 'BRA', '.br', 76, 1974),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', '.io', 86, 1974),
(34, 'Brunei Darussalam', 'BN', 'BRN', '.bn', 96, 1974),
(35, 'Bulgaria', 'BG', 'BGR', '.bg', 100, 1974),
(36, 'Burkina Faso', 'BF', 'BFA', '.bf', 854, 1984),
(37, 'Burundi', 'BI', 'BDI', '.bi', 108, 1974),
(38, 'Cabo Verde', 'CV', 'CPV', '.cv', 132, 1974),
(39, 'Cambodia', 'KH', 'KHM', '.kh', 116, 1974),
(40, 'Cameroon', 'CM', 'CMR', '.cm', 120, 1974),
(41, 'Canada', 'CA', 'CAN', '.ca', 124, 1974),
(42, 'Cayman Islands', 'KY', 'CYM', '.ky', 136, 1974),
(43, 'Central African Republic', 'CF', 'CAF', '.cf', 140, 1974),
(44, 'Chad', 'TD', 'TCD', '.td', 148, 1974),
(45, 'Chile', 'CL', 'CHL', '.cl', 152, 1974),
(46, 'China', 'CN', 'CHN', '.cn', 156, 1974),
(47, 'Christmas Island', 'CX', 'CXR', '.cx', 162, 1974),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK', '.cc', 166, 1974),
(49, 'Colombia', 'CO', 'COL', '.co', 170, 1974),
(50, 'Comoros', 'KM', 'COM', '.km', 174, 1974),
(51, 'Congo', 'CG', 'COG', '.cg', 178, 1974),
(52, 'Congo (Democratic Republic of the)', 'CD', 'COD', '.cd', 180, 1997),
(53, 'Cook Islands', 'CK', 'COK', '.ck', 184, 1974),
(54, 'Costa Rica', 'CR', 'CRI', '.cr', 188, 1974),
(55, 'Côte d''Ivoire', 'CI', 'CIV', '.ci', 384, 1974),
(56, 'Croatia', 'HR', 'HRV', '.hr', 191, 1992),
(57, 'Cuba', 'CU', 'CUB', '.cu', 192, 1974),
(58, 'Curaçao', 'CW', 'CUW', '.cw', 531, 2010),
(59, 'Cyprus', 'CY', 'CYP', '.cy', 196, 1974),
(60, 'Czech Republic', 'CZ', 'CZE', '.cz', 203, 1993),
(61, 'Denmark', 'DK', 'DNK', '.dk', 208, 1974),
(62, 'Djibouti', 'DJ', 'DJI', '.dj', 262, 1977),
(63, 'Dominica', 'DM', 'DMA', '.dm', 212, 1974),
(64, 'Dominican Republic', 'DO', 'DOM', '.do', 214, 1974),
(65, 'Ecuador', 'EC', 'ECU', '.ec', 218, 1974),
(66, 'Egypt', 'EG', 'EGY', '.eg', 818, 1974),
(67, 'El Salvador', 'SV', 'SLV', '.sv', 222, 1974),
(68, 'Equatorial Guinea', 'GQ', 'GNQ', '.gq', 226, 1974),
(69, 'Eritrea', 'ER', 'ERI', '.er', 232, 1993),
(70, 'Estonia', 'EE', 'EST', '.ee', 233, 1992),
(71, 'Ethiopia', 'ET', 'ETH', '.et', 231, 1974),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '.fk', 238, 1974),
(73, 'Faroe Islands', 'FO', 'FRO', '.fo', 234, 1974),
(74, 'Fiji', 'FJ', 'FJI', '.fj', 242, 1974),
(75, 'Finland', 'FI', 'FIN', '.fi', 246, 1974),
(76, 'France', 'FR', 'FRA', '.fr', 250, 1974),
(77, 'French Guiana', 'GF', 'GUF', '.gf', 254, 1974),
(78, 'French Polynesia', 'PF', 'PYF', '.pf', 258, 1974),
(79, 'French Southern Territories', 'TF', 'ATF', '.tf', 260, 1979),
(80, 'Gabon', 'GA', 'GAB', '.ga', 266, 1974),
(81, 'Gambia', 'GM', 'GMB', '.gm', 270, 1974),
(82, 'Georgia', 'GE', 'GEO', '.ge', 268, 1992),
(83, 'Germany', 'DE', 'DEU', '.de', 276, 1974),
(84, 'Ghana', 'GH', 'GHA', '.gh', 288, 1974),
(85, 'Gibraltar', 'GI', 'GIB', '.gi', 292, 1974),
(86, 'Greece', 'GR', 'GRC', '.gr', 300, 1974),
(87, 'Greenland', 'GL', 'GRL', '.gl', 304, 1974),
(88, 'Grenada', 'GD', 'GRD', '.gd', 308, 1974),
(89, 'Guadeloupe', 'GP', 'GLP', '.gp', 312, 1974),
(90, 'Guam', 'GU', 'GUM', '.gu', 316, 1974),
(91, 'Guatemala', 'GT', 'GTM', '.gt', 320, 1974),
(92, 'Guernsey', 'GG', 'GGY', '.gg', 831, 2006),
(93, 'Guinea', 'GN', 'GIN', '.gn', 324, 1974),
(94, 'Guinea-Bissau', 'GW', 'GNB', '.gw', 624, 1974),
(95, 'Guyana', 'GY', 'GUY', '.gy', 328, 1974),
(96, 'Haiti', 'HT', 'HTI', '.ht', 332, 1974),
(97, 'Heard Island and McDonald Islands', 'HM', 'HMD', '.hm', 334, 1974),
(98, 'Holy See', 'VA', 'VAT', '.va', 336, 1974),
(99, 'Honduras', 'HN', 'HND', '.hn', 340, 1974),
(100, 'Hong Kong', 'HK', 'HKG', '.hk', 344, 1974),
(101, 'Hungary', 'HU', 'HUN', '.hu', 348, 1974),
(102, 'Iceland', 'IS', 'ISL', '.is', 352, 1974),
(103, 'India', 'IN', 'IND', '.in', 356, 1974),
(104, 'Indonesia', 'ID', 'IDN', '.id', 360, 1974),
(105, 'Iran (Islamic Republic of)', 'IR', 'IRN', '.ir', 364, 1974),
(106, 'Iraq', 'IQ', 'IRQ', '.iq', 368, 1974),
(107, 'Ireland', 'IE', 'IRL', '.ie', 372, 1974),
(108, 'Isle of Man', 'IM', 'IMN', '.im', 833, 2006),
(109, 'Israel', 'IL', 'ISR', '.il', 376, 1974),
(110, 'Italy', 'IT', 'ITA', '.it', 380, 1974),
(111, 'Jamaica', 'JM', 'JAM', '.jm', 388, 1974),
(112, 'Japan', 'JP', 'JPN', '.jp', 392, 1974),
(113, 'Jersey', 'JE', 'JEY', '.je', 832, 2006),
(114, 'Jordan', 'JO', 'JOR', '.jo', 400, 1974),
(115, 'Kazakhstan', 'KZ', 'KAZ', '.kz', 398, 1992),
(116, 'Kenya', 'KE', 'KEN', '.ke', 404, 1974),
(117, 'Kiribati', 'KI', 'KIR', '.ki', 296, 1979),
(118, 'Korea (Democratic People''s Republic of)', 'KP', 'PRK', '.kp', 408, 1974),
(119, 'Korea (Republic of)', 'KR', 'KOR', '.kr', 410, 1974),
(120, 'Kuwait', 'KW', 'KWT', '.kw', 414, 1974),
(121, 'Kyrgyzstan', 'KG', 'KGZ', '.kg', 417, 1992),
(122, 'Lao People''s Democratic Republic', 'LA', 'LAO', '.la', 418, 1974),
(123, 'Latvia', 'LV', 'LVA', '.lv', 428, 1992),
(124, 'Lebanon', 'LB', 'LBN', '.lb', 422, 1974),
(125, 'Lesotho', 'LS', 'LSO', '.ls', 426, 1974),
(126, 'Liberia', 'LR', 'LBR', '.lr', 430, 1974),
(127, 'Libya', 'LY', 'LBY', '.ly', 434, 1974),
(128, 'Liechtenstein', 'LI', 'LIE', '.li', 438, 1974),
(129, 'Lithuania', 'LT', 'LTU', '.lt', 440, 1992),
(130, 'Luxembourg', 'LU', 'LUX', '.lu', 442, 1974),
(131, 'Macao', 'MO', 'MAC', '.mo', 446, 1974),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', 'MKD', '.mk', 807, 1993),
(133, 'Madagascar', 'MG', 'MDG', '.mg', 450, 1974),
(134, 'Malawi', 'MW', 'MWI', '.mw', 454, 1974),
(135, 'Malaysia', 'MY', 'MYS', '.my', 458, 1974),
(136, 'Maldives', 'MV', 'MDV', '.mv', 462, 1974),
(137, 'Mali', 'ML', 'MLI', '.ml', 466, 1974),
(138, 'Malta', 'MT', 'MLT', '.mt', 470, 1974),
(139, 'Marshall Islands', 'MH', 'MHL', '.mh', 584, 1986),
(140, 'Martinique', 'MQ', 'MTQ', '.mq', 474, 1974),
(141, 'Mauritania', 'MR', 'MRT', '.mr', 478, 1974),
(142, 'Mauritius', 'MU', 'MUS', '.mu', 480, 1974),
(143, 'Mayotte', 'YT', 'MYT', '.yt', 175, 1993),
(144, 'Mexico', 'MX', 'MEX', '.mx', 484, 1974),
(145, 'Micronesia (Federated States of)', 'FM', 'FSM', '.fm', 583, 1986),
(146, 'Moldova (Republic of)', 'MD', 'MDA', '.md', 498, 1992),
(147, 'Monaco', 'MC', 'MCO', '.mc', 492, 1974),
(148, 'Mongolia', 'MN', 'MNG', '.mn', 496, 1974),
(149, 'Montenegro', 'ME', 'MNE', '.me', 499, 2006),
(150, 'Montserrat', 'MS', 'MSR', '.ms', 500, 1974),
(151, 'Morocco', 'MA', 'MAR', '.ma', 504, 1974),
(152, 'Mozambique', 'MZ', 'MOZ', '.mz', 508, 1974),
(153, 'Myanmar', 'MM', 'MMR', '.mm', 104, 1989),
(154, 'Namibia', 'NA', 'NAM', '.na', 516, 1974),
(155, 'Nauru', 'NR', 'NRU', '.nr', 520, 1974),
(156, 'Nepal', 'NP', 'NPL', '.np', 524, 1974),
(157, 'Netherlands', 'NL', 'NLD', '.nl', 528, 1974),
(158, 'New Caledonia', 'NC', 'NCL', '.nc', 540, 1974),
(159, 'New Zealand', 'NZ', 'NZL', '.nz', 554, 1974),
(160, 'Nicaragua', 'NI', 'NIC', '.ni', 558, 1974),
(161, 'Niger', 'NE', 'NER', '.ne', 562, 1974),
(162, 'Nigeria', 'NG', 'NGA', '.ng', 566, 1974),
(163, 'Niue', 'NU', 'NIU', '.nu', 570, 1974),
(164, 'Norfolk Island', 'NF', 'NFK', '.nf', 574, 1974),
(165, 'Northern Mariana Islands', 'MP', 'MNP', '.mp', 580, 1986),
(166, 'Norway', 'NO', 'NOR', '.no', 578, 1974),
(167, 'Oman', 'OM', 'OMN', '.om', 512, 1974),
(168, 'Pakistan', 'PK', 'PAK', '.pk', 586, 1974),
(169, 'Palau', 'PW', 'PLW', '.pw', 585, 1986),
(170, 'Palestine, State of', 'PS', 'PSE', '.ps', 275, 1999),
(171, 'Panama', 'PA', 'PAN', '.pa', 591, 1974),
(172, 'Papua New Guinea', 'PG', 'PNG', '.pg', 598, 1974),
(173, 'Paraguay', 'PY', 'PRY', '.py', 600, 1974),
(174, 'Peru', 'PE', 'PER', '.pe', 604, 1974),
(175, 'Philippines', 'PH', 'PHL', '.ph', 608, 1974),
(176, 'Pitcairn', 'PN', 'PCN', '.pn', 612, 1974),
(177, 'Poland', 'PL', 'POL', '.pl', 616, 1974),
(178, 'Portugal', 'PT', 'PRT', '.pt', 620, 1974),
(179, 'Puerto Rico', 'PR', 'PRI', '.pr', 630, 1974),
(180, 'Qatar', 'QA', 'QAT', '.qa', 634, 1974),
(181, 'Réunion', 'RE', 'REU', '.re', 638, 1974),
(182, 'Romania', 'RO', 'ROU', '.ro', 642, 1974),
(183, 'Russian Federation', 'RU', 'RUS', '.ru', 643, 1992),
(184, 'Rwanda', 'RW', 'RWA', '.rw', 646, 1974),
(185, 'Saint Barthélemy', 'BL', 'BLM', '.bl', 652, 2007),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', '.sh', 654, 1974),
(187, 'Saint Kitts and Nevis', 'KN', 'KNA', '.kn', 659, 1974),
(188, 'Saint Lucia', 'LC', 'LCA', '.lc', 662, 1974),
(189, 'Saint Martin (French part)', 'MF', 'MAF', '.mf', 663, 2007),
(190, 'Saint Pierre and Miquelon', 'PM', 'SPM', '.pm', 666, 1974),
(191, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '.vc', 670, 1974),
(192, 'Samoa', 'WS', 'WSM', '.ws', 882, 1974),
(193, 'San Marino', 'SM', 'SMR', '.sm', 674, 1974),
(194, 'Sao Tome and Principe', 'ST', 'STP', '.st', 678, 1974),
(195, 'Saudi Arabia', 'SA', 'SAU', '.sa', 682, 1974),
(196, 'Senegal', 'SN', 'SEN', '.sn', 686, 1974),
(197, 'Serbia', 'RS', 'SRB', '.rs', 688, 2006),
(198, 'Seychelles', 'SC', 'SYC', '.sc', 690, 1974),
(199, 'Sierra Leone', 'SL', 'SLE', '.sl', 694, 1974),
(200, 'Singapore', 'SG', 'SGP', '.sg', 702, 1974),
(201, 'Sint Maarten (Dutch part)', 'SX', 'SXM', '.sx', 534, 2010),
(202, 'Slovakia', 'SK', 'SVK', '.sk', 703, 1993),
(203, 'Slovenia', 'SI', 'SVN', '.si', 705, 1992),
(204, 'Solomon Islands', 'SB', 'SLB', '.sb', 90, 1974),
(205, 'Somalia', 'SO', 'SOM', '.so', 706, 1974),
(206, 'South Africa', 'ZA', 'ZAF', '.za', 710, 1974),
(207, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '.gs', 239, 1993),
(208, 'South Sudan', 'SS', 'SSD', '.ss', 728, 2011),
(209, 'Spain', 'ES', 'ESP', '.es', 724, 1974),
(210, 'Sri Lanka', 'LK', 'LKA', '.lk', 144, 1974),
(211, 'Sudan', 'SD', 'SDN', '.sd', 729, 1974),
(212, 'Suriname', 'SR', 'SUR', '.sr', 740, 1974),
(213, 'Svalbard and Jan Mayen', 'SJ', 'SJM', '.sj', 744, 1974),
(214, 'Swaziland', 'SZ', 'SWZ', '.sz', 748, 1974),
(215, 'Sweden', 'SE', 'SWE', '.se', 752, 1974),
(216, 'Switzerland', 'CH', 'CHE', '.ch', 756, 1974),
(217, 'Syrian Arab Republic', 'SY', 'SYR', '.sy', 760, 1974),
(218, 'Taiwan, Province of China', 'TW', 'TWN', '.tw', 158, 1974),
(219, 'Tajikistan', 'TJ', 'TJK', '.tj', 762, 1992),
(220, 'Tanzania, United Republic of', 'TZ', 'TZA', '.tz', 834, 1974),
(221, 'Thailand', 'TH', 'THA', '.th', 764, 1974),
(222, 'Timor-Leste', 'TL', 'TLS', '.tl', 626, 2002),
(223, 'Togo', 'TG', 'TGO', '.tg', 768, 1974),
(224, 'Tokelau', 'TK', 'TKL', '.tk', 772, 1974),
(225, 'Tonga', 'TO', 'TON', '.to', 776, 1974),
(226, 'Trinidad and Tobago', 'TT', 'TTO', '.tt', 780, 1974),
(227, 'Tunisia', 'TN', 'TUN', '.tn', 788, 1974),
(228, 'Turkey', 'TR', 'TUR', '.tr', 792, 1974),
(229, 'Turkmenistan', 'TM', 'TKM', '.tm', 795, 1992),
(230, 'Turks and Caicos Islands', 'TC', 'TCA', '.tc', 796, 1974),
(231, 'Tuvalu', 'TV', 'TUV', '.tv', 798, 1979),
(232, 'Uganda', 'UG', 'UGA', '.ug', 800, 1974),
(233, 'Ukraine', 'UA', 'UKR', '.ua', 804, 1974),
(234, 'United Arab Emirates', 'AE', 'ARE', '.ae', 784, 1974),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', '.uk', 826, 1974),
(236, 'United States Minor Outlying Islands', 'UM', 'UMI', '.um', 581, 1986),
(237, 'United States of America', 'US', 'USA', '.us', 840, 1974),
(238, 'Uruguay', 'UY', 'URY', '.uy', 858, 1974),
(239, 'Uzbekistan', 'UZ', 'UZB', '.uz', 860, 1992),
(240, 'Vanuatu', 'VU', 'VUT', '.vu', 548, 1980),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', 'VEN', '.ve', 862, 1974),
(242, 'Viet Nam', 'VN', 'VNM', '.vn', 704, 1974),
(243, 'Virgin Islands (British)', 'VG', 'VGB', '.vg', 92, 1974),
(244, 'Virgin Islands (U.S.)', 'VI', 'VIR', '.vi', 850, 1974),
(245, 'Wallis and Futuna', 'WF', 'WLF', '.wf', 876, 1974),
(246, 'Western Sahara', 'EH', 'ESH', '.eh', 732, 1974),
(247, 'Yemen', 'YE', 'YEM', '.ye', 887, 1974),
(248, 'Zambia', 'ZM', 'ZMB', '.zm', 894, 1974),
(249, 'Zimbabwe', 'ZW', 'ZWE', '.zw', 716, 1980);
*/
INSERT INTO `hospitales`.`paises` VALUES (1,4,'AF','AFG','Afganistán'),(2,248,'AX','ALA','Åland'),(3,8,'AL','ALB','Albania'),(4,276,'DE','DEU','Alemania'),(5,20,'AD','AND','Andorra'),(6,24,'AO','AGO','Angola'),(7,660,'AI','AIA','Anguila'),(8,10,'AQ','ATA','Antártida'),(9,28,'AG','ATG','Antigua y Barbuda'),(10,530,'AN','ANT','Antillas Neerlandesas'),(11,682,'SA','SAU','Arabia Saudita'),(12,12,'DZ','DZA','Argelia'),(13,32,'AR','ARG','Argentina'),(14,51,'AM','ARM','Armenia'),(15,533,'AW','ABW','Aruba'),(16,36,'AU','AUS','Australia'),(17,40,'AT','AUT','Austria'),(18,31,'AZ','AZE','Azerbaiyán'),(19,44,'BS','BHS','Bahamas'),(20,48,'BH','BHR','Bahréin'),(21,50,'BD','BGD','Bangladesh'),(22,52,'BB','BRB','Barbados'),(23,112,'BY','BLR','Bielorrusia'),(24,56,'BE','BEL','Bélgica'),(25,84,'BZ','BLZ','Belice'),(26,204,'BJ','BEN','Benín'),(27,60,'BM','BMU','Bermudas'),(28,64,'BT','BTN','Bután'),(29,68,'BO','BOL','Bolivia'),(30,70,'BA','BIH','Bosnia y Herzegovina'),(31,72,'BW','BWA','Botsuana'),(32,74,'BV','BVT','Isla Bouvet'),(33,76,'BR','BRA','Brasil'),(34,96,'BN','BRN','Brunéi'),(35,100,'BG','BGR','Bulgaria'),(36,854,'BF','BFA','Burkina Faso'),(37,108,'BI','BDI','Burundi'),(38,132,'CV','CPV','Cabo Verde'),(39,136,'KY','CYM','Islas Caimán'),(40,116,'KH','KHM','Camboya'),(41,120,'CM','CMR','Camerún'),(42,124,'CA','CAN','Canadá'),(43,140,'CF','CAF','República Centroafricana'),(44,148,'TD','TCD','Chad'),(45,203,'CZ','CZE','República Checa'),(46,152,'CL','CHL','Chile'),(47,156,'CN','CHN','China'),(48,196,'CY','CYP','Chipre'),(49,166,'CC','CCK','Islas Cocos'),(50,170,'CO','COL','Colombia'),(51,174,'KM','COM','Comoras'),(52,178,'CG','COG','República del Congo'),(53,180,'CD','COD','República Democrática del Congo'),(54,184,'CK','COK','Islas Cook'),(55,408,'KP','PRK','Corea del Norte'),(56,410,'KR','KOR','Corea del Sur'),(57,384,'CI','CIV','Costa de Marfil'),(58,188,'CR','CRI','Costa Rica'),(59,191,'HR','HRV','Croacia'),(60,192,'CU','CUB','Cuba'),(61,208,'DK','DNK','Dinamarca'),(62,212,'DM','DMA','Dominica'),(63,214,'DO','DOM','República Dominicana'),(64,218,'EC','ECU','Ecuador'),(65,818,'EG','EGY','Egipto'),(66,222,'SV','SLV','El Salvador'),(67,784,'AE','ARE','Emiratos Árabes Unidos'),(68,232,'ER','ERI','Eritrea'),(69,703,'SK','SVK','Eslovaquia'),(70,705,'SI','SVN','Eslovenia'),(71,724,'ES','ESP','España'),(73,840,'US','USA','Estados Unidos'),(74,581,'UM','UMI','Islas ultramarinas de Estados Unidos'),(75,233,'EE','EST','Estonia'),(76,231,'ET','ETH','Etiopía'),(77,234,'FO','FRO','Islas Feroe'),(78,608,'PH','PHL','Filipinas'),(79,246,'FI','FIN','Finlandia'),(80,242,'FJ','FJI','Fiyi'),(81,250,'FR','FRA','Francia'),(82,266,'GA','GAB','Gabón'),(83,270,'GM','GMB','Gambia'),(84,268,'GE','GEO','Georgia'),(85,239,'GS','SGS','Islas Georgias del Sur y Sandwich del Sur'),(86,288,'GH','GHA','Ghana'),(87,292,'GI','GIB','Gibraltar'),(88,308,'GD','GRD','Granada'),(89,300,'GR','GRC','Grecia'),(90,304,'GL','GRL','Groenlandia'),(91,312,'GP','GLP','Guadalupe'),(92,316,'GU','GUM','Guam'),(93,320,'GT','GTM','Guatemala'),(94,254,'GF','GUF','Guayana Francesa'),(95,831,'GG','GGY','Guernsey'),(96,324,'GN','GIN','Guinea'),(97,226,'GQ','GNQ','Guinea Ecuatorial'),(98,624,'GW','GNB','Guinea-Bissau'),(99,328,'GY','GUY','Guyana'),(100,332,'HT','HTI','Haití'),(101,334,'HM','HMD','Islas Heard y McDonald'),(102,340,'HN','HND','Honduras'),(103,344,'HK','HKG','Hong Kong'),(104,348,'HU','HUN','Hungría'),(105,356,'IN','IND','India'),(106,360,'ID','IDN','Indonesia'),(107,364,'IR','IRN','Irán'),(108,368,'IQ','IRQ','Iraq'),(109,372,'IE','IRL','Irlanda'),(110,352,'IS','ISL','Islandia'),(111,376,'IL','ISR','Israel'),(112,380,'IT','ITA','Italia'),(113,388,'JM','JAM','Jamaica'),(114,392,'JP','JPN','Japón'),(115,832,'JE','JEY','Jersey'),(116,400,'JO','JOR','Jordania'),(117,398,'KZ','KAZ','Kazajistán'),(118,404,'KE','KEN','Kenia'),(119,417,'KG','KGZ','Kirguistán'),(120,296,'KI','KIR','Kiribati'),(121,414,'KW','KWT','Kuwait'),(122,418,'LA','LAO','Laos'),(123,426,'LS','LSO','Lesoto'),(124,428,'LV','LVA','Letonia'),(125,422,'LB','LBN','Líbano'),(126,430,'LR','LBR','Liberia'),(127,434,'LY','LBY','Libia'),(128,438,'LI','LIE','Liechtenstein'),(129,440,'LT','LTU','Lituania'),(130,442,'LU','LUX','Luxemburgo'),(131,446,'MO','MAC','Macao'),(132,807,'MK','MKD','ARY Macedonia'),(133,450,'MG','MDG','Madagascar'),(134,458,'MY','MYS','Malasia'),(135,454,'MW','MWI','Malawi'),(136,462,'MV','MDV','Maldivas'),(137,466,'ML','MLI','Malí'),(138,470,'MT','MLT','Malta'),(139,238,'FK','FLK','Islas Malvinas'),(140,833,'IM','IMN','Isla de Man'),(141,580,'MP','MNP','Islas Marianas del Norte'),(142,504,'MA','MAR','Marruecos'),(143,584,'MH','MHL','Islas Marshall'),(144,474,'MQ','MTQ','Martinica'),(145,480,'MU','MUS','Mauricio'),(146,478,'MR','MRT','Mauritania'),(147,175,'YT','MYT','Mayotte'),(148,484,'MX','MEX','México'),(149,583,'FM','FSM','Micronesia'),(150,498,'MD','MDA','Moldavia'),(151,492,'MC','MCO','Mónaco'),(152,496,'MN','MNG','Mongolia'),(153,499,'ME','MNE','Montenegro'),(154,500,'MS','MSR','Montserrat'),(155,508,'MZ','MOZ','Mozambique'),(156,104,'MM','MMR','Myanmar'),(157,516,'NA','NAM','Namibia'),(158,520,'NR','NRU','Nauru'),(159,162,'CX','CXR','Isla de Navidad'),(160,524,'NP','NPL','Nepal'),(161,558,'NI','NIC','Nicaragua'),(162,562,'NE','NER','Níger'),(163,566,'NG','NGA','Nigeria'),(164,570,'NU','NIU','Niue'),(165,574,'NF','NFK','Norfolk'),(166,578,'NO','NOR','Noruega'),(167,540,'NC','NCL','Nueva Caledonia'),(168,554,'NZ','NZL','Nueva Zelanda'),(169,512,'OM','OMN','Omán'),(170,528,'NL','NLD','Países Bajos'),(171,586,'PK','PAK','Pakistán'),(172,585,'PW','PLW','Palaos'),(173,275,'PS','PSE','Palestina (ANP)'),(174,591,'PA','PAN','Panamá'),(175,598,'PG','PNG','Papúa Nueva Guinea'),(176,600,'PY','PRY','Paraguay'),(177,604,'PE','PER','Perú'),(178,612,'PN','PCN','Islas Pitcairn'),(179,258,'PF','PYF','Polinesia Francesa'),(180,616,'PL','POL','Polonia'),(181,620,'PT','PRT','Portugal'),(182,630,'PR','PRI','Puerto Rico'),(183,634,'QA','QAT','Qatar'),(184,826,'GB','GBR','Reino Unido'),(185,638,'RE','REU','Reunión'),(186,646,'RW','RWA','Ruanda'),(187,642,'RO','ROU','Rumania'),(188,643,'RU','RUS','Rusia'),(189,732,'EH','ESH','Sahara Occidental'),(190,90,'SB','SLB','Islas Salomón'),(191,882,'WS','WSM','Samoa'),(192,16,'AS','ASM','Samoa Americana'),(193,659,'KN','KNA','San Cristóbal y Nieves'),(194,674,'SM','SMR','San Marino'),(195,666,'PM','SPM','San Pedro y Miquelón'),(196,670,'VC','VCT','San Vicente y las Granadinas'),(197,654,'SH','SHN','Santa Helena'),(198,662,'LC','LCA','Santa Lucía'),(199,678,'ST','STP','Santo Tomé y Príncipe'),(200,686,'SN','SEN','Senegal'),(201,688,'RS','SRB','Serbia'),(202,690,'SC','SYC','Seychelles'),(203,694,'SL','SLE','Sierra Leona'),(204,702,'SG','SGP','Singapur'),(205,760,'SY','SYR','Siria'),(206,706,'SO','SOM','Somalia'),(207,144,'LK','LKA','Sri Lanka5'),(208,748,'SZ','SWZ','Suazilandia'),(209,710,'ZA','ZAF','Sudáfrica'),(210,736,'SD','SDN','Sudán'),(211,752,'SE','SWE','Suecia'),(212,756,'CH','CHE','Suiza'),(213,740,'SR','SUR','Surinam'),(214,744,'SJ','SJM','Svalbard y Jan Mayen'),(215,764,'TH','THA','Tailandia'),(216,158,'TW','TWN','Taiwán'),(217,834,'TZ','TZA','Tanzania'),(218,762,'TJ','TJK','Tayikistán'),(219,86,'IO','IOT','Territorio Británico del Océano Índico'),(220,260,'TF','ATF','Territorios Australes Franceses'),(221,626,'TL','TLS','Timor Oriental'),(222,768,'TG','TGO','Togo'),(223,772,'TK','TKL','Tokelau'),(224,776,'TO','TON','Tonga'),(225,780,'TT','TTO','Trinidad y Tobago'),(226,788,'TN','TUN','Túnez'),(227,796,'TC','TCA','Islas Turcas y Caicos'),(228,795,'TM','TKM','Turkmenistán'),(229,792,'TR','TUR','Turquía'),(230,798,'TV','TUV','Tuvalu'),(231,804,'UA','UKR','Ucrania'),(232,800,'UG','UGA','Uganda'),(233,858,'UY','URY','Uruguay'),(234,860,'UZ','UZB','Uzbekistán'),(235,548,'VU','VUT','Vanuatu'),(236,336,'VA','VAT','Ciudad del Vaticano'),(237,862,'VE','VEN','Venezuela'),(238,704,'VN','VNM','Vietnam'),(239,92,'VG','VGB','Islas Vírgenes Británicas'),(240,850,'VI','VIR','Islas Vírgenes Estadounidenses'),(241,876,'WF','WLF','Wallis y Futuna'),(242,887,'YE','YEM','Yemen'),(243,262,'DJ','DJI','Yibuti'),(244,894,'ZM','ZMB','Zambia'),(245,716,'ZW','ZWE','Zimbabue');
select * from paises order by nombre