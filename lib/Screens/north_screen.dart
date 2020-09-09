import 'package:mrcurrency/demo.dart';
import 'package:flutter/material.dart';

import 'package:mrcurrency/consttants.dart';

// ignore: must_be_immutable
class NorthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Color(0xfff67ca3);
    title = 'Nourth America';
    imageurl = 'assets/images/north.png';

    name = ['Anguilla (UK)', 'Antigua and Barbuda', 'Bahamas', 'Barbados',
      'Belize', 'Bermuda (UK)', 'British Virgin Islands (UK)', 'Canada',
      'Caribbean Netherlands', 'Cayman Islands (UK)', 'Costa Rica', 'Cuba',
      'Dominica', 'Dominican Republic', 'El Salvador', 'Greenland (Denmark)',
      'Grenada', 'Guadeloupe (France)', 'Guatemala', 'Haiti', 'Honduras',
      'Jamaica', 'Martinique (France)', 'Mexico', 'Montserrat (UK)', 'Nicaragua',
      'Panama', 'Puerto Rico', 'Saint Barthélemy (France)', 'Saint Kitts and Nevis',
      'Saint Lucia', 'Saint Martin (France)', 'Saint Pierre and Miquelon (France)',
      'Saint Vincent and the Grenadines', 'Sint Maarten (Netherlands)',
      'Trinidad and Tobago', 'Turks and Caicos Islands (UK)', 'United States',
      'United States Virgin Islands',
    ];
    symbol = ['\$', '\$', '\$', '\$', '\$', '\$', '\$ or cent ¢',
      '\$, Can\$, C\$, CA\$ or cent ¢', '\$', '\$', '₡',
      '\$, \$MN, or ₱ ; centavo ¢ or c', '\$', '\$ or RD\$', '\$', 'kr', '\$',
      'F or FF', 'Q', 'G', 'L', '\$', '€', '\$ or Mex\$', '\$', 'C\$', 'B/', '\$',
      '€ or cent	c', '\$', '\$', '€ or cent	c', '€ or cent	c', '\$',
      'NAƒ, NAf, ƒ or f', '\$ or TT\$, ¢ or TT¢ ', '\$ or cent ¢', '\$ or cent ¢',
      '\$ or cent ¢',
    ];
    nickname = ['Eastern Caribbean dollar', 'Eastern Caribbean dollar',
      'Bahamian dollar', 'Barbadian dollar', 'Belize dollar', 'Bermudian dollar',
      'United States dollar', 'Canadian dollar, Loonie, buck, Huard, piastre',
      'United States dollar', 'Cayman Islands dollar', 'Costa Rican colón',
      'Cuban peso', 'Eastern Caribbean dollar', 'Dominican peso',
      'United States dolla', 'Danish krone', 'Eastern Caribbean dollar',
      'French franc', 'Guatemalan quetzal', 'Haitian gourde', 'Honduran lempira',
      'Jamaican dollar', 'Euro', 'Mexican peso', 'Eastern Caribbean dollar',
      'Nicaraguan córdoba', 'Panamanian balboa', 'United States dollar', 'Euro',
      'Eastern Caribbean dollar', 'Eastern Caribbean dollar', 'Euro', 'Euro',
      'Eastern Caribbean dollar', 'Netherlands Antillean guilder',
      'Trinidad and Tobago dollar', 'United States dollar', 'United States dollar',
      'United States dollar',
    ];
    coins = ['1, 2, 5, 10, 25 cents, 1 dollar',
      '1, 2, 5, 10, 25 cents, 1 dollar',
      '1, 5, 10, 15 cents, 25 cents, 50 cents, \$1', '5, 10, 25 cents, \$1',
      '1, 5, 10, 25, 50 cents, \$1', '1, 5, 10, 25 cents, \$1', '1¢, 5¢, 10¢, 25¢',
      '5¢, 10¢, 25¢, \$1, \$2', '1¢, 5¢, 10¢, 25¢', '1, 5, 10, 25 cents',
      '5, 10, 25, 50, 100 and 500 colones', '20¢, \$1, \$3, \$5',
      '1, 2, 5, 10, 25 cents, 1 dollar', '1, 5, 10, 25 pesos dominicanos',
      '1¢, 5¢, 10¢, 25¢', '50-øre, 1, 2, 5, 10, 20 kroner',
      '1, 2, 5, 10, 25 cents, 1 dollar',
      '5, 10, 20 centimes, ​1⁄2 F, 1 F, 2 F, 5 F, 10 F',
      '1, 5, 10, 25, 50 centavos, 1 quetzal',
      '5, 10, 20, 50 centimes, 1, 5 gourdes', '5, 10, 20, 50 centavos',
      '\$1, \$5, \$10, \$20', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '10¢, 20¢, 50¢, \$1, \$2, \$5, \$10, \$20', '1, 2, 5, 10, 25 cents, 1 dollar',
      '5, 10, 25, 50 centavos, C\$1, C\$5',
      '1 and 5 centésimos, ​1⁄10, ​1⁄4, ​1⁄2, and 1 balboas',
      '1¢, 5¢, 10¢, 25¢', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 2, 5, 10, 25 cents, 1 dollar', '1, 2, 5, 10, 25 cents, 1 dollar',
      '1c, 2c, 5c, 10c, 20c, 50c, €1, €2', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 2, 5, 10, 25 cents, 1 dollar', '1, 5, 10, 25, 50 cent, ƒ1, ​ƒ2 1⁄2, ƒ5',
      '5¢, 10¢, 25¢', '1¢, 5¢, 10¢, 25¢', '1¢, 5¢, 10¢, 25¢',  '1¢, 5¢, 10¢, 25¢',
    ];
    banknotes = ['5, 10, 20, 50, 100 dollars', '5, 10, 20, 50, 100 dollars',
      '\$1, \$5, \$10, \$20, \$50, \$100', '\$2, \$5, \$10, \$20, \$50, \$100',
      '\$2, \$5, \$10, \$20, \$50, \$100', '\$2, \$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$20, \$50, \$100', '\$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$25, \$40, \$50, \$100',
      '1,000, 2,000, 5,000, 10,000, 20,000, 50,000 colones',
      '\$1, \$3, \$5, \$10, \$20, \$50, \$100, \$200, \$500',
      '5, 10, 20, 50, 100 dollars',
      '50, 100, 200, 500, 1000, 2000 pesos dominicanos',
      '\$1, \$5, \$10, \$20, \$50, \$100', '50, 100, 200, 500, 1000 kroner',
      '5, 10, 20, 50, 100 dollars', '20 F, 50 F, 100 F, 200 F, 500 F',
      '1 quetzal, 5, 10, 20, 50, 100, 200 quetzales',
      '10, 25, 50, 100, 250, 500, 1000 gourdes',
      'L1, L2, L5, L10, L20, L50, L100, L500',
      '\$50, \$100, \$500, \$1000', '€5, €10, €20, €50, €100',
      '\$20, \$50, \$100, \$200, \$500', '5, 10, 20, 50, 100 dollars',
      'C\$10, C\$20, C\$50, C\$100, C\$200, C\$500, C\$1,000',
      'None (U.S. banknotes are employed instead, although denominated in balboas)',
      '\$1, \$5, \$10, \$20, \$50, \$100', '€5, €10, €20, €50, €100',
      '5, 10, 20, 50, 100 dollars', '5, 10, 20, 50, 100 dollars',
      '€5, €10, €20, €50, €100', '€5, €10, €20, €50, €100',
      '5, 10, 20, 50, 100 dollars', 'ƒ10, ƒ25, ƒ50, ƒ100',
      '\$1, \$5, \$10, \$20, \$50, \$100', '\$1, \$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$20, \$50, \$100', '\$1, \$5, \$10, \$20, \$50, \$100',
    ];
    code = ['XCD', 'XCD', 'BSD', 'BBD', 'BZD', 'BMD', 'USD', 'CAD', 'USD',
      'KYD', 'CRC', 'CUP', 'XCD', 'DOP', 'USD', 'DKK', 'XCD', 'EUR', 'GTQ', 'HTG',
      'HNL', 'JMD', 'EUR', 'MXN ', 'XCD', 'NIO', 'PAB', 'USD', 'EUR', 'XCD', 'XCD',
      'EUR', 'EUR', 'XCD', 'ANG', 'TTD', 'USD', 'USD', 'USD',
    ];
    leading = ['A', '', 'B','','','','','C','','','','','D','', 'E','G','','',
      '','H', '', 'J', 'M', '','', 'N','P','','S','','','','','','','T','','U',''
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




