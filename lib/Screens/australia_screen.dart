import 'package:flutter/material.dart';

import '../consttants.dart';
import '../demo.dart';


class AustraliaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Color(0xffB30C2D);
    title = 'Australia';
    imageurl = 'assets/images/australia.png';

    name=['Australia', 'Fiji', 'Kiribati', 'Marshall Islands',
      'Micronesia', 'Nauru', 'New Zealand', 'Palau', 'Papua New Guinea',
      'Samoa', 'Solomon Islands', 'Tonga', 'Tuvalu', 'Vanuatu'
    ];
    nickname=['Australian dollar', 'Fijian dollar', 'Kiribati dollar',
      'United States dollar', 'United States dollar', 'Australian dollar',
      'New Zealand dollar', 'United States dollar', 'Papua New Guinean kina',
      'Samoan tālā', 'Solomon Islands dollar', 'Tongan paʻanga', 'Tuvaluan dollar',
      'Vanuatu vatu'
    ];
    coins=['5c, 10c, 20c, 50c, \$1, \$2', '5c, 10c, 20c, 50c, \$1, \$2',
      '5¢, 10¢, 20¢, 50¢, \$1, \$2', '1¢, 5¢, 10¢, 25¢', '1¢, 5¢, 10¢, 25¢',
      '5c, 10c, 20c, 50c, \$1, \$2', '10c, 20c, 50c, \$1, \$2',
      '1¢, 5¢, 10¢, 25¢', '5t, 10t, 20t, 50t, K1', '10, 20, 50 sene, 1 and 2 tālā',
      '10, 20, 50 cents, \$1, \$2', '5¢, 10¢, 20¢, 50¢, T\$1', '¢5, ¢10, ¢20, ¢50, \$1',
      '	1VT, 2VT, 5VT, 10VT, 20VT, 50VT, 100VT'
    ];
    banknotes=['\$5, \$10, \$20, \$50, \$100', '\$5, \$10, \$20, \$50, \$100',
      '(Australian notes circulate) \$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$20, \$50, \$100', '\$1, \$5, \$10, \$20, \$50, \$100',
      '\$5, \$10, \$20, \$50, \$100', '\$5, \$10, \$20, \$50, \$100',
      '\$1, \$5, \$10, \$20, \$50, \$100', 'K2, K5, K10, K20, K50, K100',
      '2, 5, 10, 20, 50, 100 tālā', '\$5, \$10, \$20, \$50, \$100',
      'T\$1, T\$2, T\$5, T\$10, T\$20','\$5, \$10, \$20, \$50, \$100',
      '200VT, 500VT, 1,000VT, 2,000VT, 5,000VT, 10,000VT'
    ];
    symbol=['\$ or cent c', 'FJ\$ or FJD or cent c', '\$ or cent ¢',
      '\$ or cent ¢', '\$ or cent ¢', '\$ or cent	c', '\$ or cent	c',
      '\$ or cent	c', 'K or toea t', 'WS\$, SAT, ST or T', '\$',
      'T\$, PT or seniti	¢', '\$ (\$T, TV\$) or cent	¢', 'VT'
    ];
    code=['AUD', 'FJD', 'KID', 'USD', 'USD','AUD', 'NZD', 'USD', 'PGK', 'WST',
      'SBD', 'TOP', 'TVD', 'VUV'
    ];
    leading=['A', 'F', 'K', 'M','', 'N','', 'P','', 'S', '', 'T','', 'V'];

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

