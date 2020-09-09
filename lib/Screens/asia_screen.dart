import 'package:flutter/material.dart';

import '../consttants.dart';
import '../demo.dart';


class AsiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Colors.redAccent;
    title = 'Asia';
    imageurl = 'assets/images/asia1.png';

    name = ['Afghanistan', 'Armenia', 'Azerbaijan', 'Bahrain', 'Bangladesh', 'Bhutan',
      'Brunei', 'Cambodia', 'China', 'Cyprus', 'Georgia', 'India', 'Indonesia', 'Iran',
      'Iraq', 'Israel', 'Japan', 'Jordan', 'Kazakhstan', 'Kuwait', 'Kyrgyzstan', 'Laos',
      'Lebanon', 'Malaysia', 'Maldives', 'Mongolia', 'Myanmar', 'Nepal', 'North Korea',
      'Oman', 'Pakistan', 'Palestine', 'Philippines', 'Qatar', 'Russia', 'Saudi Arabia',
      'Singapore', 'South Korea', 'Sri Lanka', 'Syria', 'Taiwan(Republic of China)',
      'Tajikistan', 'Thailand', 'Timor-Leste(East Timor)', 'Turkey', 'Turkmenistan',
      'United Arab Emirates', 'Uzbekistan', 'Vietnam', 'Yemen'
    ];
    nickname = ['Afghan afghani', 'Armenian dram', 'Azerbaijani manat', 'Bahraini dinar',
      'Bangladeshi taka', 'Bhutanese ngultrum', 'Brunei dollar', 'Cambodian riel',
      'Renminbi', 'Euro', 'Georgian lari', 'Indian rupee', 'Indonesian rupiah',
      'Iranian rial', 'Iraqi dinar', 'Israeli new shekel', 'Japanese yen', 'Jordanian dinar',
      'Kazakhstani tenge', 'Kuwaiti dinar', 'Kyrgyzstani som', 'Lao kip', 'Lebanese pound',
      'Malaysian ringgit', 'Maldivian rufiyaa', 'Mongolian tögrög', 'Burmese kyat', 'Nepalese rupee',
      'North Korean won', 'Omani rial', 'Pakistani rupee', 'Egyptian pound', 'Philippine peso',
      'Qatari riyal', 'Russian ruble', 'Saudi riyal', 'Singapore dollar, Sing-dollar, Sing',
      'South Korean won', 'Sri Lankan rupee', 'Syrian pound', 'New Taiwan dollar',
      'Tajikistani somoni', 'Thai baht', 'United States dollar', 'Turkish lira', 'Turkmenistan manat',
      'UAE dirham', 'Uzbekistani soʻm', 'Vietnamese đồng', 'Yemeni rial'
    ];
    coins = ['1 Af, 1, 2, 5 Afs', '10֏, 20֏, 50֏, 100֏, 200֏, 500֏',
      '1, 3, 5, 10, 20, 50 qəpik', '5, 10, 25, 50, 100, BD ​1⁄2 (500 fils)',
      '৳2, ৳5', 'Ch.20, Ch.25, Ch.50, Nu.1', '5, 10, 20, 50 sen', '50, 100, 200, 500 riels',
      'RMB 0.1, RMB 0.5, RMB 1 (1, 5 角; 1 元)', '1c, 2c, 5c, 10c, 20c, 50c, €1, €2',
      '1, 2, 5, 10, 20, 50 tetri, 1, 2 lari', '₹1, ₹2, ₹5, ₹10', 'Rp100, Rp200, Rp500, Rp1,000',
      '1,000, 2,000, 5,000','', '10 agorot, ₪​1⁄2, ₪1, ₪2, ₪5, ₪10', '¥1, ¥5, ¥10, ¥50, ¥100, ¥500',
      '​1⁄2, 1, ​2 1⁄2, 5, 10 piastres/qirsh, ​1⁄4, ​1⁄2, 1 dinar', '5, 10, 20, 50, 100, 200 tenge',
      '1, 5, 10, 20, 50, 100', '1, 3, 5, 10 som', '10, 20, 50 att', '250, 500 pounds',
      '5, 10, 20, 50 sen', '1 laari, 2 laari, 5 laari, 10 laari, 25 laari, 50 laari, Rf 1, Rf 2',
      '20, 50, 100, 200, 500 tögrög', 'K1, K5, K10, K50, K100', '	रू1, रू2',
      '1, 5, 10, 50 chon, ₩1', '5, 10, 20, 50', '1, 2, 5, 10 Rupees', '25pt, 50pt, £1',
      '₱1, ₱5, ₱10', '1, 5, 10, 25, 50 dirhams', '1₽, 2₽, 5₽, 10₽', '1, 5, 10, 25, 50 halalas, 1 riyal, 2 riyals',
      '5, 10, 20, 50 cents, \$1', '₩10, ₩50, ₩100, ₩500', 'රු.1, රු.2, රු.5, රු.10',
      '5, 10, 25, 50 pounds', 'NT\$1, NT\$5, NT\$10, NT\$50', '1, 5, 10, 20, 25, 50 diram, 1, 3, 5 somoni',
      '฿1, ฿2, ฿5, ฿10', '1¢, 5¢, 10¢, 25¢', '1kr, 5kr, 10kr, 25kr, 50kr, ₺1', '1, 2, 5, 10, 20, 50 tenge, 1, 2 manat',
      '25 fils, 50 fils, 1 dirham', '50, 100, 200, 500 soʻm', '200, 500, 1000, 2000, 5000₫',
      '1, 5, 10, 20 rials'
    ];
    banknotes = ['1 Af, 2, 5, 10, 20, 50, 100, 500, 1000 Afs',
      '1000֏, 5000֏, 10,000֏, 20,000֏, 50,000֏, 100,000֏', '1, 5, 10, 20, 50, 100, 200 manat',
      'BD ​1⁄2, BD 1, BD 5, BD 10, BD 20', '৳10, ৳20, ৳50, ৳100, ৳200, ৳500 and ৳1000',
      'Nu.1, Nu.5, Nu.10, Nu.20, Nu.50, Nu.100, Nu.500, Nu.1000', '\$1, \$5, \$10, \$50, \$100',
      '50, 100, 200, 500, 1,000, 2,000, 5,000, 10,000, 15,000, 20,000, 50,000 riels',
      'RMB 0.1, RMB 0.5, RMB 1, RMB 5, RMB 10, RMB 20, RMB 50, RMB 100',
      '€5, €10, €20, €50, €100', '5, 10, 20, 50, 100 lari', '₹10, ₹20, ₹50, ₹100, ₹200, ₹500, ₹2,000',
      'Rp1,000, Rp2,000, Rp5,000, Rp10,000, Rp20,000, Rp50,000, Rp100,000',
      '5,000, 10,000, 20,000, 50,000, 100,000, 500,000, 1,000,000', '1,000, 5,000, 10,000, 25,000, 50,000 dinars',
      '₪20, ₪50, ₪100, ₪200', '¥1,000, ¥5,000, ¥10,000', '1, 5, 10, 20, 50 dinars',
      '200, 500, 1,000, 2,000, 5,000, 10,000, 20,000 tenge', '​1⁄4, ​1⁄2, 1, 5, 10, 20 dinars',
      '20, 50, 100, 200, 500, 1000, 5000 som', '500, 1000, 2000, 5000, 10,000, 20,000, 50,000, 100,000 kip',
      '1,000, 5,000, 10,000, 20,000, 50,000, 100,000 pounds', 'RM1, RM5, RM10, RM20, RM50, RM100',
      'Rf 5, Rf 10, Rf 20, Rf 50, Rf 100, Rf 500, Rf 1000, Rf 5000',
      '10, 20, 50, 100, 500, 1,000, 5,000, 10,000, 20,000 tögrög', 'K50, K100, K200, K500, K1000, K5000, K10,000',
      'रू5, रू10, रू20, रू50, रू100, रू500, रू1000', '₩100, ₩200, ₩500, ₩1000, ₩2000, ₩5000',
      '100 baisa, ​1⁄2, 1, 5, 10, 20, 50 rials', '10, 20, 50, 100, 500, 1000 Rupees',
      '£1, £5, £10, £20, £50, £100, £200', '₱20, ₱50, ₱100, ₱500, ₱1000', '1, 5, 10, 50, 100, 500 riyals',
      '50₽, 100₽, 200₽, 500₽, 1,000₽, 2,000₽, 5,000₽', '1, 5, 10, 50, 100, 500 riyals',
      '\$2, \$5, \$10, \$50, \$100, \$1,000', '₩1,000, ₩5,000, ₩10,000, ₩50,000',
      'රු.20, රු.50, රු.100, රු.500, රු.1000, රු.5000', '50, 100, 200, 500, 1000, 2000 pounds',
      'NT\$100, NT\$500, NT\$1000', '1, 5, 20, 50 diram, 1, 3, 5, 10, 20, 50, 100, 200, 500 somoni',
      '฿20, ฿50, ฿100, ฿500, ฿1000', '\$1, \$5, \$10, \$20, \$50, \$100',
      '₺5, ₺10, ₺20, ₺50, ₺100, ₺200', '1, 5, 10, 20, 50, 100, 500 manat',
      '5, 10, 50, 100, 500 dirhams', '1000, 5000, 10,000, 50,000, 100,000 soʻm',
      '100, 200, 500, 1,000, 2,000, 5,000, 10,000, 20,000, 50,000, 100,000, 200,000, 500,000₫',
      '50, 100, 200, 250, 500, 1000 rials'
    ];
    symbol = ['Af or Afs', '֏ or դր', '₼', 'BD (Latin)', '৳ or poysha	p', 'Nu or chhertum	Ch',
      'B\$', '៛', '元 / ¥', '€ or cent c', '₾, ლ, GEL', '₹ (₨), Paisa (p)', 'Rp', '﷼','د.ع',
      '₪', 'sen(錢 or 銭) or rin(厘)', 'د.أ', '₸', 'KD or د.ك ', '', '₭ or ₭N', 'ل.ل.', 'RM',
      'Rf, MRf, MVR, .ރ or /-', '₮', 'K', 'रू', '₩', 'R.O.', '₨', 'E£ or L.E.', '₱', 'QR',
      '₽, руб / р', 'SِAR', 'S\$ or \$', '₩', 'රු, Rs', 'LS or £S', 'NT\$, 圓, \$', 'SM',
      '฿', '\$ or cent ¢', '₺ or TL', 'T', 'د.إ','', '₫/đ', 'ر.ي'
    ];
    code = ['AFN', 'AMD', 'AZN', 'BHD', 'BDT', 'BTN', 'BND', 'KHR', 'CNY', 'EUR',
      'GEL', 'INR', 'IDR', 'IRR','IQD', 'ILS', 'JPY', 'JOD', 'KZT', 'KWD', 'KGS',
      'LAK', 'LBP', 'MYR', 'MVR', 'MNT', 'MMK', 'NPR', 'KPW','OMR', 'PKR', 'EGP',
      'PHP', 'QAR', 'RUB', 'SAR', 'SGD', 'KRW', 'LKR', 'SYP', 'TWD', 'TJS', 'THB',
      'USD', 'TRY', 'TMT', 'AED', 'UZS', 'VND', 'YER'
    ];
    leading = ['A','','', 'B','','','', 'C','','', 'G','I','','','','', 'J',
      '', 'K','','', 'L','', 'M','','','', 'N','', 'O', 'P','','','Q', 'R',
      'S','','','','','T','','','','','','U','', 'V', 'Y'
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

