import 'package:flutter/material.dart';

import '../consttants.dart';
import '../demo.dart';


class AfricaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    co = Color(0xffF1CE2F);
    title = 'Africa';
    imageurl = 'assets/images/africa.png';

    name =['Algeria', 'Angola', 'Benin', 'Botswana', 'Burkina Faso', 'Burundi', 'Cameroon',
      'Cape Verde', 'Central African Republic', 'Chad', 'Comoros',
      'Democratic Republic of the Congo', 'Djibouti', 'Egypt', 'Equatorial Guinea',
      'Eritrea', 'Eswatini', 'Ethiopia', 'Gabon', 'Gambia', 'Ghana', 'Guinea',
      'Guinea-Bissau', 'Ivory Coast', 'Kenya', 'Lesotho', 'Liberia', 'Libya', 'Madagascar',
      'Malawi', 'Mali', 'Mauritania', 'Mauritius', 'Morocco', 'Mozambique', 'Namibia',
      'Niger','Nigeria', 'Republic of the Congo', 'Rwanda', 'São Tomé and Príncipe',
      'Senegal', 'Seychelles', 'Sierra Leone', 'Somalia', 'South Africa', 'South Sudan',
      'Sudan', 'Tanzania', 'Togo', 'Tunisia', 'Uganda', 'Zambia', 'Zimbabwe'
    ];
    nickname =['Algerian dinar', 'Angolan kwanza', 'West African CFA (céfa, franc)',
      'Botswana pula', 'West African CFA (céfa, franc)', 'Burundian franc',
      'Central African CFA franc(céfa, franc)', 'Cape Verdean escudo',
      'Central African CFA franc(céfa, franc)', 'Central African CFA franc(céfa, franc)',
      'Comorian franc', 'Congolese franc', 'Djiboutian franc', 'Egyptian pound',
      'Central African CFA franc(céfa, franc)', 'Eritrean nakfa', 'Swazi lilangeni',
      'Ethiopian birr', 'Central African CFA franc(céfa, franc)', 'Gambian dalasi', 'Ghanaian cedi',
      'Guinean franc', 'West African CFA franc(céfa, franc)', 'West African CFA franc',
      'Kenyan shilling', 'Lesotho loti', 'Liberian dollar', 'Libyan dinar', 'Malagasy ariary',
      'Malawian kwacha', 'West African CFA franc(céfa, franc)', 'Mauritanian ouguiya',
      'Mauritian rupee', 'Moroccan dirham', 'Mozambican metical', 'Namibian dollar',
      'West African CFA franc(céfa, franc)', 'Nigerian naira',
      'Central African CFA franc(céfa, franc)', 'Rwandan franc', 'São Tomé and Príncipe dobra',
      'West African CFA franc(céfa, franc)', 'Seychellois rupee', 'Sierra Leonean leone',
      'Somali shilling', 'South African rand', 'South Sudanese pound', 'Sudanese pound',
      'Tanzanian shilling', 'West African CFA franc(céfa, franc)', 'Tunisian dinar',
      'Ugandan shilling', 'Zambian kwacha', 'Zimbabwean dollar'
    ];
    coins =['5, 10, 20, 50, 100, 200 dinars', '1, 2, 5, 10, 20, 50, 100 kwanzas',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA', '5, 10, 25, 50 thebe, 1, 2, 5 pula',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA', '1, 5, 10, 50 francs',
      '1, 2, 5, 10, 25, 100, 500 francs', '1, 5, 10, 20, 50, 100',
      '1, 2, 5, 10, 25, 100, 500 francs', '1, 2, 5, 10, 25, 100, 500 francs',
      '25, 50, 100, 250 francs','', '1, 2, 5, 10, 20, 50, 100, 250, 500 Fdj',
      '25pt, 50pt, £1', '1, 2, 5, 10, 25, 100, 500 francs', '1, 5, 10, 25, 50 cents, 1 nakfa',
      '10, 20, 50 cents, L1, E2, E5', '1, 5, 10, 25, 50 santim; 1 Birr',
      '1, 2, 5, 10, 25, 100, 500 francs', '1, 5, 10, 25, 50 bututs, 1 dalasi',
      '1, 5, 10, 20, 50Gp, GH₵1, GH₵2', '1, 5, 10, 25, 50 francs',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA',
      '1, 5, 10 , 20 shillings', '1, 2, 5, 10, 20, 50 lisente, L1, M2, M5',
      '5¢, 10¢, 25¢, 50¢, \$1', '50, 100 dirhams, ¼, ½ dinar',
      '1, 2 iraimbilanja; 1, 2, 4, 5, 10, 20, 50 Ar', '1, 5, 10 kwacha',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA', '1, 2, 5, 10, 20 ouguiya',
      '5¢, 20¢, 50¢, ₨ 1, ₨ 5, ₨ 10, ₨ 20', '1⁄2, 1, 5 & 10 dirhams',
      '50 centavos, 1, 2, 5, 10 meticais obsolete: 1, 5, 10, 20 centavos',
      '5, 10, 50 cents, N\$1, N\$5, N\$10', '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA',
      '50 kobo, ₦1, ₦2', '1, 2, 5, 10, 25, 100, 500 francs',
      '1, 2, 5, 10, 20, 50 and 100 [1] francs', '10, 20, and 50 cêntimos; 1 and 2 new dobras',
      '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA', '1, 5, 10, 25 cents or 1, 5, 10 rupees',
      '10, 50, 100, 500 leones','', '5c, 10c, 20c, 50c, R 1, R 2, R 5, Krugerrand',
      '10, 20, 50 piasters, 1, 2 pounds', '1, 5, 10, 20, 50 piasters, 1 pound',
      '50, 100, 200, 500 shilingi', '1, 5, 10, 25, 50, 100, 200, 250, 500 francs CFA',
      '10, 20, 50, 100, 200 millimes; ​1⁄2, 1, 2, 5 dinars', '100, 200, 500 shillings',
      '5, 10, 50 ngwee and 1 kwacha', '1, 5, 10, 20, 50 cents, 1, 2, 5, 10, and 25 dollars'
    ];
    banknotes =['200, 500, 1000 dinars', '1, 5, 10, 50, 100, 200, 500, 1,000, 2,000, 5,000 kwanzas',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA', '10, 20, 50, 100 and 200 pula',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA', '100, 500, 1,000, 2,000, 5,000, 10,000 francs',
      '500, 1000, 2000, 5000, 10,000 francs', '200, 500, 1000, 2000, 2500, 5000',
      '500, 1000, 2000, 5000, 10,000 francs', '500, 1000, 2000, 5000, 10,000 francs',
      '500, 1000, 2000, 5000, 10,000 francs',
      '1, 5, 10, 20, 50 centimes, 1, 5, 10, 20, 50, 100, 200, 500, 1,000, 2,000, 5,000, 10,000, 20,000 francs',
      '40 (commemorative), 1000, 2000, 5000, 10,000 Fdj', '£1, £5, £10, £20, £50, £100, £200',
      '500, 1000, 2000, 5000, 10,000 francs', '1, 5, 10, 20, 50, 100 nakfa',
      'E10, E20, E50, E100, E200', '1, 5, 10, 50, 100 birr',
      '500, 1000, 2000, 5000, 10,000 francs', '5, 10, 20, 25, 50, 100, 200 dalasis',
      'GH₵1, 2, 5, 10, 20, 50, 100, 200', '100, 500, 1,000, 2,000, 5,000, 10,000, 20,000 francs',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA','500, 1,000, 2,000, 5,000, 10,000 francs CFA',
      '50, 100, 200, 500 and 1000 shillings', 'M10, M20, M50, M100, M200',
      '\$5, \$10, \$20, \$50, \$100, \$500', '1, 5, 10, 20, 50 dinars',
      '100, 200, 500, 1000, 2000, 5000, 10,000, 20,000 Ar', '20, 50, 100, 200, 500, 1,000, 2,000 kwacha',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA', '50, 100, 200, 500, 1000 ouguiya',
      '₨ 25, ₨ 50, ₨ 100, ₨ 200, ₨ 500, ₨ 1000, ₨ 2000',
      '20, 50, 100 & 200 dirhams', '20, 50, 100, 200, 500 meticais',
      'N\$10, N\$20, N\$30 (to be introduced), N\$50, N\$100, N\$200',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA', '₦5, ₦10, ₦20, ₦50, ₦100, ₦200, ₦500, ₦1000',
      '500, 1000, 2000, 5000, 10,000 francs', '500, 1000, 2000, 5000 francs',
      '5, 10, 20, 50, 100, 200 dobras (new dobra)', '500, 1,000, 2,000, 5,000, 10,000 francs CFA',
      '10, 25, 50, 100, 500 rupees', '1,000, 2,000, 5,000, 10,000 leones',
      '1000 shillings', 'R 10, R 20, R 50, R 100, R 200',
      '5, 10, 25 piasters, 1, 5, 10, 20, 25, 50, 100, 500 pounds',
      '2, 5, 10, 20, 50, 100, 200, 500 pounds', '500, 1000, 2000, 5000, 10,000 shilingi',
      '500, 1,000, 2,000, 5,000, 10,000 francs CFA', '5, 10, 20 dinars',
      '1,000, 2,000, 5,000, 10,000, 20,000, 50,000 shillings',
      '2, 5, 10, 20, 50, 100 kwacha', '\$1, \$5, \$10, \$20, \$50, \$100, \$500, \$1 000, \$1,000,000,000,000'
    ];
    symbol =['DA (Latin)', 'Kz', 'CFA or centime c', 'P', 'CFA or centime	c', 'FBu',
      'FCFA or centime c', 'Cifrão, \$, or Esc', 'FCFA or centime	c', 'FCFA or centime	c',
      'CF', 'FC', 'Fdj', 'L.E. or E£', 'FCFA or centime	c', 'Nkf or ናቕፋ',
      'L or E (pl.)', 'Br or ብር', 'FCFA or centime	c', 'D', 'GH₵', 'FG or Fr or GFr',
      'CFA or centime c', 'CFA or centime c', 'KSh, /=, /-, K', 'L or M (pl.)', 'L\$',
      'LD', 'Ar', 'K', 'CFA or centime c', 'UM', '₨ or cent	¢ or MU¢', 'DH',
      'MT, MTn', 'N\$', 'CFA or centime	c', '₦', 'FCFA or centime	c', 'FRw, RF, R₣',
      'Db', 'CFA or centime c', 'SR or SRe', 'Le', 'Sh.So.', 'R or Cent	c', 'SS£',
      'SDG', 'TSh', 'CFA or centime	c', 'DT', 'USh', 'K', '\$'
    ];
    code =['DZD', 'AOA', 'XOF', 'BWP', 'XOF', 'BIF', 'XAF', 'CVE', 'XAF', 'XAF', 'KMF',
    'CDF', 'DJF', 'EGP', 'XAF','ERN', 'SZL', 'ETB', 'XAF', 'GMD', 'GHS', 'GNF', 'XOF',
      'XOF', 'KES', 'LSL', 'LRD', 'LYD', 'MGA', 'MWK', 'XOF', 'MRU', 'MUR', 'MAD', 'MZN',
      'NAD', 'XOF', 'NGN', 'XAF', 'RWF', 'STN', 'XOF', 'SCR', 'SLL', 'SOS', 'ZAR', 'SSP',
      'SDG', 'TZS', 'XOF', 'TND', 'UGX', 'ZMW', 'ZWL'
    ];
    leading =['A','', 'B','','','', 'C','','','','', 'D','','E','','','','', 'G','','','',
      '', 'I', 'K','L','','', 'M','','','','','','', 'N','','','R','','S','','','','','','',
      '', 'T','','', 'U', 'Z',''
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

