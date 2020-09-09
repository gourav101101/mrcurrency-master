import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consttants.dart';
import '../demo.dart';

class SouthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Colors.green;
    title = 'South America';
    imageurl = 'assets/images/south.png';

    name = [
      'Argentina',
      'Bolivia',
      'Brazil',
      'Chile',
      'Colombia',
      'Ecuador',
      'Falkland Islands',
      'Guyana',
      'Paraguay',
      'Peru',
      'Suriname',
      'Uruguay',
      'Venezuela',
    ];

    nickname = [
      'Argentina Peso',
      'Bolivian Boliviano',
      'Brazilian real',
      'Chilean peso',
      'Colombian peso',
      'United States dollar',
      'Falkland Islands pound',
      'Guyanese dollar',
      'Paraguayan guaraní',
      'Peruvian sol',
      'Surinamese dollar',
      'Uruguayan peso',
      'Venezuelan bolívar, bolo(s), luca(s), real(es)',
    ];
    symbol = [
      '\$',
      'Bs, c(centavo)',
      'R\$',
      '\$',
      '\$',
      '\$',
      '£, penny	(p) ',
      '\$, G\$, GY\$',
      '₲',
      'S/',
      '\$',
      '\$ or \$U',
      'Bs.S. or Bs.',
    ];
    coins = [
      '\$1, \$2, \$5, \$10, \$25, \$50',
      'c10, c20, c50; Bs1, Bs2, Bs5', '1, 5, 10, 25, 50 centavos, R\$1',
      '1, 5, 10, 50, 100, 500 pesos', '\$50, \$100, \$200, \$500, \$1000',
      '1¢, 5¢, 10¢, 25¢', '1p, 2p, 5p, 10p, 20p, 50p, £1, £2',
      '\$1, \$5, \$10', '50, 100, 500 & 1,000 guaraníes',
      '10, 20, 50 céntimos, 1, 2, 5 soles', '1, 5, 10, 25, 100, 250 cents',
      '\$1, \$2, \$5, \$10, \$50', '50 céntimos, Bs.S. 1',
    ];
    banknotes = [
      '\$2, \$5, \$10, \$20, \$50, \$100', 'Bs10, Bs20, Bs50, Bs100, Bs200',
      'R\$2, R\$5, R\$10, R\$20, R\$50, R\$100',
      '1000, 2000, 5000, 10,000, 20,000 pesos',
      '\$1000, \$2000, \$5000, \$10,000, \$20,000, \$50,000, \$100,000',
      '\$1, \$5, \$10, \$20, \$50, \$100', '£5, £10, £20, £50',
      '\$20, \$50, \$100, \$500, \$1000, \$5000',
      '2,000, 5,000, 10,000, 20,000, 50,000 & 100,000 PYG',
      '10, 20, 50, 100, 200 soles', '5, 10, 20, 50, 100 dollars',
      '\$20, \$50, \$100, \$200, \$500, \$1000, \$2000',
      'Bs.S. 2, 5, 10, 20, 50, 100, 200, 500,[1] 10,000, 20,000, 50,000',
    ];
    code = [
      'ARS', 'BOB', 'BRL', 'CLP', 'COP', 'USD', 'FKP', 'GYD', 'PYG', 'PEN', 'SRD',
      'UYU', 'VES',
    ];
    leading = ['A', 'B', '', 'C', '', 'E', 'F', 'G', 'P', '', 'S', 'U', 'V'];

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

