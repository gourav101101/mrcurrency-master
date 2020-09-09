import 'package:flutter/material.dart';

import '../consttants.dart';
import '../demo.dart';

class EuropeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Color(0xff3F48CC);
    title = 'Europe';
    imageurl = 'assets/images/europe.png';

    name = ['Albania', 'Andorra', 'Armenia', 'Austria', 'Azerbaijan', 'Belarus',
      'Belgium', 'Bosnia and Herzegovina', 'Bulgaria', 'Croatia', 'Cyprus',
      'Czechia', 'Denmark', 'Estonia', 'Finland', 'France', 'Georgia',
      'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland', 'Italy',
      'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania', 'Luxembourg',
      'Malta', 'Moldova', 'Monaco', 'Montenegro','Netherlands', 'North Macedonia',
      'Norway', 'Poland', 'Portugal', 'Romania','Russia','San Marino', 'Serbia',
      'Slovakia', 'Slovenia', 'Spain', 'Sweden', 'Switzerland', 'Turkey',
      'Ukraine', 'United Kingdom', 'Vatican City'

    ];
    nickname = [
      'Albanian lek', 'Euro', 'Armenian dram', 'Euro', 'Azerbaijani manat',
      'Belarusian ruble', 'Euro', 'mark (marka)', 'kint', 'Croatian kuna',
      'Euro', 'Czech koruna', 'Danish krone', 'Euro', 'Euro', 'Euro',
      'Georgian lari', 'Euro', 'Euro', 'Hungarian forint', 'Icelandic krona',
      'Euro', 'Euro','Kazakhstani tenge', 'Euro', 'Euro', 'Swiss franc', 'Euro',
      'Euro', 'Euro', 'Moldovan leu', 'Euro', 'Euro', 'Euro', 'Macedonian denar',
      'Norwegian krone', 'Polish złoty', 'Euro', 'Romanian leu','Russian ruble',
      'Euro', 'Serbian dinar', 'Euro', 'Euro', 'Euro', 'Swedish krona', 'Swiss franc',
      'Turkish lira', 'Ukrainian hryvnia', 'Pound sterling', 'Euro'
    ];
    coins = [
      '5 L, 10 L, 20 L, 50 L, 100 L', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '10֏, 20֏, 50֏, 100֏, 200֏, 500֏', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 3, 5, 10, 20, 50 qəpik', '1, 2, 5, 10, 20, 50 kapiejkas, 1, 2 rubles',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '5, 10, 20 and 50 fenings/pfenigs; 1, 2 and 5 marks',
      '1, 2, 5, 10, 20, 50 stotinki, 1, 2 leva', '10, 20, 50 lipa, 1, 2, 5 kn',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1, 2, 5, 10, 20, 50 Kč',
      '50-øre, 1, 2, 5, 10, 20 kroner', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 2, 5, 10, 20, 50 tetri, 1, 2 lari', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '5 Ft, 10 Ft, 20 Ft, 50 Ft, 100 Ft, 200 Ft', '1, 5, 10, 50, 100 krona',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '5, 10, 20, 50, 100, 200 tenge', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '5, 10 & 20 centimes, ​1⁄2, 1, 2 & 5 francs',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '5, 10, 25, 50 bani, 1 leu, 2 lei, 5 lei, 10 lei',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1, 2, 5, 10, 50 denari', '1, 5, 10, 20 kr',
      '1 gr, 2 gr, 5 gr, 10 gr, 20 gr, 50 gr, 1 zł, 2 zł, 5 zł', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '5, 10, 50 bani', '1₽, 2₽, 5₽, 10₽','1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 2, 5, 20 dinars', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1 kr, 2 kr, 5 kr, 10 kr',
      '	5, 10 & 20 centimes, ​1⁄2, 1, 2 & 5 francs', '1kr, 5kr, 10kr, 25kr, 50kr, ₺1',
      '10, 25, 50 kopiyok; ₴1, ₴2, ₴5', '1p, 2p, 5p, 10p, 20p, 50p, £1, £2',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2'

    ];
    banknotes = [
      '200 L, 500 L, 1000 L, 2000 L, 5000 L', '€5, €10, €20, €50, €100',
      '1000֏, 5000֏, 10,000֏, 20,000֏, 50,000֏, 100,000֏',
      '€5, €10, €20, €50, €100',
      '1, 5, 10, 20, 50, 100, 200 manat', '5, 10, 20, 50, 100, 200 rubles',
      '€5, €10, €20, €50, €100', '10, 20, 50, 100 and 200 marks',
      '5, 10, 20, 50, 100 leva', '10, 20, 50, 100, 200, 500 kn',
      '€5, €10, €20, €50, €100', '100, 200, 500, 1000, 2000 Kč',
      '50, 100, 200, 500, 1000 kroner', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100',
      '5, 10, 20, 50, 100 lari', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100',
      '500 Ft, 1000 Ft, 2000 Ft, 5000 Ft, 10,000 Ft, 20,000 Ft',
      '500, 1000, 2000, 5000, 10,000 krona', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100','	200, 500, 1,000, 2,000, 5,000, 10,000, 20,000 tenge',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100',
      '10, 20, 50, 100, 200 & 1,000 francs', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100',
      '1, 5, 10, 20, 50, 100, 200, 500, 1000 lei', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100','10, 50, 100, 200, 500, 1000 denari',
      '50 kr, 100 kr, 200 kr, 500 kr', '10 zł, 20 zł, 50 zł, 100 zł, 200 zł, 500 zł',
      '€5, €10, €20, €50, €100', '1 leu, 5, 10, 50, 100, 200 lei',
      '50₽, 100₽, 200₽, 500₽, 1,000₽, 2,000₽, 5,000₽','€5, €10, €20, €50, €100',
      '10, 20, 50, 100, 200, 500, 1000, 2000 dinars', '€5, €10, €20, €50, €100',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100', '20 kr, 50 kr, 100 kr, 200 kr, 500 kr',
      '10, 20, 50, 100, 200 & 1,000 francs', '₺5, ₺10, ₺20, ₺50, ₺100, ₺200',
      '₴1, ₴2, ₴5, ₴10, ₴20, ₴50, ₴100, ₴200, ₴500', '£5, £10, £20, £50',
      '€5, €10, €20, €50, €100'


    ];
    symbol = ['L', '€', '֏ (֏) or դր.', '€ or cent c', '₼', 'Br', '€ or cent	c',
      'KM','', 'kn or lipa lp', '€ or cent	c', 'Kč or h', 'kr', '€ or cent	c',
      '€ or cent c', '€ or cent c', '₾ , ლ , GEL', '€ or cent c', '€ or cent c',
      'Ft', 'kr', '€ or cent c', '€ or cent c','₸', '€ or cent c','€ or cent c',
      'Fr', '€ or cent c', '€ or cent c', '€ or cent c','','€ or cent	c',
      '€ or cent	c', '€ or cent	c', 'den / ден', 'kr', 'zł or Grosz	gr',
      '€ or cent	c', 'L', '₽, руб / р', '€ or cent	c', 'din / дин',
      '€ or cent	c', '€ or cent	c', '€ or cent	c', 'kr', 'Fr', '₺ or TL',
      '₴ or грн', '£', '€ or cent	c'
    ];
    code = ['ALL', 'EUR', 'AMD', 'EUR', 'AZN', 'BYN', 'EUR', 'BAM', 'BGN', 'HRK',
      'EUR', 'CZK', 'DKK', 'EUR', 'EUR', 'EUR', 'GEL', 'EUR', 'EUR', 'HUF',
      'ISK', 'EUR', 'EUR','KZT', 'EUR', 'EUR', 'CHF', 'EUR', 'EUR','EUR','MDL',
      'EUR', 'EUR', 'EUR', 'MKD', 'NOK', 'PLN', 'EUR', 'RON', 'RUB', 'EUR', 'RSD',
      'EUR', 'EUR', 'EUR', 'SEK', 'CHF', 'TRY', 'UAH', 'GBP', 'EUR'
    ];
    leading = ['A', '', '', '', '', 'B', '', '', '', 'C', '','', 'D', 'E', 'F',
      '', 'G', '','', 'H', 'I','','','K','','L','','','','M','','','','N','','',
      'P','','R','', 'S','','','','','','','T','U','','V'
    ];

    return Demo(
      name: name,
      nickname: nickname,
      coins: coins,
      banknotes: banknotes,
      symbol: symbol,
      code: code,
      color: co,
      leading: leading,
      title: title,
      imageurl: imageurl,
    );
  }
}
